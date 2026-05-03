// parser_icon.sc — PARSER-IC: Icon frontend in Snocone (PARSER-IC-0).
//
// Reads an Icon source program from stdin via INPUT, runs the
// `Compiland` PATTERN to build an Icon IR tree on the shared stack via
// Shift/Reduce, then dumps each tree via TDump.  After whitespace
// normalization the dumped form is byte-identical to scrip's existing
// Icon-frontend `--dump-ir` output — that's the PARSER-IC gate.
//
// This file follows the shape of parser_snobol4.sc / parser_snocone.sc
// (the template for all six PARSER-* frontends).  The driver loop and
// Compiland spine are identical; only the per-language atom recognizers
// and Command body differ.
//
// Rung PARSER-IC-0: atom-as-body inside `procedure main() ... end`.
// The minimal Icon program at this rung is:
//   procedure main()
//     <atom>
//   end
// where <atom> is one identifier, one integer, or one quoted string.
// Tree shape (canonical, matches scrip's Icon `--dump-ir` after
// whitespace normalization):
//   (STMT :subj (E_FNC main (E_VAR main) (<atom-kind> <text>)))
//
// Sibling LANG rungs: IC-1..IC-3 (lexer, atom).
// The existing src/frontend/icon/ remains the read-only oracle.

//-----------------------------------------------------------------------
// Atom recognizers — Icon surface syntax.
//-----------------------------------------------------------------------

// Whitespace.
ws_one = ANY(' ' tab);
ws_run = SPAN(' ' tab);
ws_opt = (SPAN(' ' tab) | epsilon);

// Identifier — letter or underscore then letters/digits/underscore.
id_first = ANY(&UCASE &LCASE '_');
id_rest  = SPAN(digits &UCASE &LCASE '_');
id_pat   = (id_first (id_rest | epsilon));

// Integer — one-or-more decimal digits.  Signed forms reserved for IC-2.
int_pat  = SPAN(digits);

// String — double-quoted only (Icon's primary string syntax).
// Capture of the body (between delimiters) goes into _atom_strbody.
// No embedded escape handling at this rung.
dstr_pat = ('"'  BREAK('"')  . _atom_strbody '"');
str_pat  = dstr_pat;

//-----------------------------------------------------------------------
// Tree-building helper — push one full procedure-wrapped atom tree.
//
// build_proc_main_atom(kind, txt):
//   push (STMT :subj (E_FNC main (E_VAR main) (kind txt)))
// Returns .dummy per RULES.md NRETURN convention.
//-----------------------------------------------------------------------

function build_proc_main_atom(kind, txt) {
    Push(Tree('STMT', '', 1,
              Tree(':subj', '', 1,
                   Tree('E_FNC', 'main', 2,
                        tree('E_VAR', 'main'),
                        tree(kind, txt)))));
    build_proc_main_atom = .dummy;
    nreturn;
}

//-----------------------------------------------------------------------
// BodyAtom — matches one atom in expression context and captures
// kind + text into the globals _atom_kind / _atom_text.
//   id   → _atom_kind='E_VAR',  _atom_text=<identifier>
//   int  → _atom_kind='E_ILIT', _atom_text=<digits>
//   str  → _atom_kind='E_QLIT', _atom_text=<body without delimiters>
// (str must come BEFORE id/int so the leading `"` isn't consumed by id_pat.)
//-----------------------------------------------------------------------

BodyAtom = ( str_pat
               . *assign('_atom_kind', 'E_QLIT')
               . *assign('_atom_text', _atom_strbody)
           | int_pat . _atom_text
               . *assign('_atom_kind', 'E_ILIT')
           | id_pat  . _atom_text
               . *assign('_atom_kind', 'E_VAR')
           );

//-----------------------------------------------------------------------
// ProcMainAtom — matches the full minimal Icon program shape:
//   procedure main()
//     <atom>
//   end
// across three lines.  Driven by the line-at-a-time main loop below;
// state machine flag _proc_state tracks header/body/end.
//-----------------------------------------------------------------------

// Header: `procedure main()` with optional surrounding whitespace.
ProcHeader = ( POS(0) ws_opt 'procedure' ws_run 'main' ws_opt
               '(' ws_opt ')' ws_opt RPOS(0) );

// Body: optional leading whitespace, one atom, optional trailing whitespace.
ProcBody   = ( POS(0) ws_opt BodyAtom ws_opt RPOS(0) );

// End: literal `end` with optional surrounding whitespace.
ProcEnd    = ( POS(0) ws_opt 'end' ws_opt RPOS(0) );

//-----------------------------------------------------------------------
// Driver loop — three-line state machine:
//   state 0: expect ProcHeader  (set state=1)
//   state 1: expect ProcBody    (capture atom; set state=2)
//   state 2: expect ProcEnd     (push tree via build_proc_main_atom; reset)
// Blank / comment lines (Icon `#` comments) are skipped silently in any state.
// At state 2 completion the assembled tree is popped and dumped via TDump.
//-----------------------------------------------------------------------

_proc_state = 0;

main00:
if (~(Line = INPUT)) { goto mainEnd; }

// Skip blank / whitespace-only lines.
if (Line ? (POS(0) ws_opt RPOS(0))) { goto main00; }
// Skip Icon comments (`# ...` to end of line).
if (Line ? (POS(0) ws_opt '#')) { goto main00; }

// Dispatch on state.
if (IDENT(_proc_state, 0)) { goto stateHeader; }
if (IDENT(_proc_state, 1)) { goto stateBody; }
if (IDENT(_proc_state, 2)) { goto stateEnd; }
goto mainErr;

stateHeader:
if (~(Line ? ProcHeader)) { goto mainErr; }
_proc_state = 1;
goto main00;

stateBody:
if (~(Line ? ProcBody)) { goto mainErr; }
_proc_state = 2;
goto main00;

stateEnd:
if (~(Line ? ProcEnd)) { goto mainErr; }
// Build and dump the tree now that all three pieces have been seen.
dummy = build_proc_main_atom(_atom_kind, _atom_text);
icn = Pop();
if (~DIFFER(icn)) { goto mainErr; }
TDump(icn);
_proc_state = 0;
goto main00;

mainErr:
OUTPUT = 'Parse Error: ' Line;
goto main00;

mainEnd:
_parser_ic_done = '';
