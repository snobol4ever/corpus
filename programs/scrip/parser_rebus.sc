// parser_rebus.sc — PARSER-RB: Rebus frontend in Snocone.
//
// Reads a Rebus source program from stdin line-by-line via INPUT,
// parses each function declaration, and emits flat STMT trees via TDump
// matching scrip's existing Rebus frontend --dump-ir output byte-for-byte
// after whitespace normalization.  That match is the PARSER-RB gate.
//
// This file follows the shape of parser_snobol4.sc / parser_icon.sc.
//
// Rung PARSER-RB-0 (CURRENT): atom body only.
//   function NAME(arglist) <atom-body-stmts> end
//   Atoms: identifier (E_VAR), integer (E_ILIT), string (E_QLIT).
//
// Tree shape per function (N body stmts):
//   (STMT :subj (E_FNC DEFINE (E_QLIT "FNAME()")))
//   (STMT :go rb_K)
//   (STMT :lbl FNAME)
//   ... N body STMT trees ...
//   (STMT :go RETURN)
//   (STMT :lbl rb_K)
//   (STMT :subj (E_FNC FNAME))   <- main only
//
// Sibling LANG rungs: RB-1..RB-6.
// The existing src/frontend/rebus/ remains the read-only oracle.
//
// Architecture note (FW-3 workaround):
// Emit helpers are called as plain Snocone function calls from the goto-
// style driver, not via epsilon . *fn() pattern escapes.  Pattern escapes
// via *assign() are used only for side-effect captures inside FuncHeader /
// BodyAtomLine patterns.
//
// Tree shapes for role-slot nodes (from TLump ':'-prefix handling):
//   (STMT :go LABEL)  → Tree('STMT','',1, Tree(':go','',1, tree('Name',LABEL)))
//   (STMT :lbl LABEL) → Tree('STMT','',1, Tree(':lbl','',1, tree('Name',LABEL)))
//   tree('Name','X') renders as "X" (bare, no parens) via TValue Name branch.

//-----------------------------------------------------------------------
// Atom recognizers.
//-----------------------------------------------------------------------

ws_opt = (SPAN(' ' tab) | epsilon);
ws_run = SPAN(' ' tab);

id_first = ANY(&UCASE &LCASE '_');
id_rest  = SPAN(digits &UCASE &LCASE '_');
id_pat   = (id_first (id_rest | epsilon));

int_pat  = SPAN(digits);

sstr_pat = ("'" BREAK("'") . _rb_strbody "'");
dstr_pat = ('"' BREAK('"') . _rb_strbody '"');
str_pat  = (sstr_pat | dstr_pat);

arglist_pat = ('(' (BREAK(')') | epsilon) ')');

//-----------------------------------------------------------------------
// Helpers.
//-----------------------------------------------------------------------

function uc(s) {
    uc = REPLACE(s, &LCASE, &UCASE);
    return;
}

function next_rb_label() {
    _rb_n = _rb_n + 1;
    next_rb_label = 'rb_' _rb_n;
    return;
}

//-----------------------------------------------------------------------
// Emit helpers — called as plain function calls from the driver.
//-----------------------------------------------------------------------

function emit_func_define(fname) {
    TDump(Tree('STMT', '', 1,
               Tree(':subj', '', 1,
                    Tree('E_FNC', 'DEFINE', 1,
                         tree('E_QLIT', fname '()')))));
    return;
}

function emit_go(lbl) {
    TDump(Tree('STMT', '', 1,
               Tree(':go', '', 1, tree('Name', lbl))));
    return;
}

function emit_lbl(lbl) {
    TDump(Tree('STMT', '', 1,
               Tree(':lbl', '', 1, tree('Name', lbl))));
    return;
}

function emit_body_atom(kind, txt) {
    TDump(Tree('STMT', '', 1,
               Tree(':subj', '', 1, tree(kind, txt))));
    return;
}

function emit_func_call(fname) {
    TDump(Tree('STMT', '', 1,
               Tree(':subj', '', 1, tree('E_FNC', fname))));
    return;
}

//-----------------------------------------------------------------------
// Per-line patterns.
//-----------------------------------------------------------------------

FuncHeader = ( POS(0) ws_opt 'function' ws_run id_pat . _rb_raw_name
               ws_opt arglist_pat ws_opt RPOS(0)
               epsilon . *assign('_rb_fname', uc(_rb_raw_name))
             );

FuncEnd    = ( POS(0) ws_opt 'end' ws_opt RPOS(0) );

BodyAtomLine = ( POS(0) ws_opt
                 ( str_pat
                     . *assign('_rb_atom_kind', 'E_QLIT')
                     . *assign('_rb_atom_txt',  _rb_strbody)
                 | int_pat . _rb_atom_txt
                     . *assign('_rb_atom_kind', 'E_ILIT')
                 | id_pat  . _rb_atom_txt
                     . *assign('_rb_atom_kind', 'E_VAR')
                     . *assign('_rb_atom_txt',  uc(_rb_atom_txt))
                 )
                 ws_opt RPOS(0)
               );

//-----------------------------------------------------------------------
// Driver — line-at-a-time state machine.
//   _rb_state 0: between functions
//   _rb_state 1: inside function body
//-----------------------------------------------------------------------

_rb_state = 0;
_rb_n     = 0;

InitCounter();
InitStack();

rb_loop:
if (~(RbLine = INPUT)) { goto rb_done; }
if (RbLine ? (POS(0) ws_opt RPOS(0))) { goto rb_loop; }
if (IDENT(_rb_state, 0)) { goto rb_state0; }
if (IDENT(_rb_state, 1)) { goto rb_state1; }
goto rb_loop;

rb_state0:
if (~(RbLine ? FuncHeader)) { goto rb_loop; }
_rb_rblbl = next_rb_label();
emit_func_define(_rb_fname);
emit_go(_rb_rblbl);
emit_lbl(_rb_fname);
_rb_state = 1;
goto rb_loop;

rb_state1:
if (RbLine ? FuncEnd) { goto rb_end; }
if (~(RbLine ? BodyAtomLine)) {
    OUTPUT = 'PARSER-RB: unrecognized body: ' RbLine;
    goto rb_loop;
}
emit_body_atom(_rb_atom_kind, _rb_atom_txt);
goto rb_loop;

rb_end:
emit_go('RETURN');
emit_lbl(_rb_rblbl);
if (IDENT(_rb_fname, 'MAIN')) {
    emit_func_call(_rb_fname);
}
_rb_state = 0;
goto rb_loop;

rb_done:
_parser_rb_done = '';
