// parser_snobol4_v2.sc — PARSER-SN: SNOBOL4 frontend in Snocone.
//
// REWRITE-0 (session 2026-05-03 PM, branch parser-sn-rewrite).
//
// SHAPE: ONE Compiland PATTERN, ONE match against entire Src.
// shift/reduce via semantic.sc. nPush/nInc/nTop/nPop for n-ary trees.
// No Snocone goto; only `while` loops over data.  Functions only for
// tree-building escape-helpers, never for parse dispatch.
//
// Architectural lesson learned this session (REWRITE-0 design note):
// nInc() / nPush() / nPop() return PATTERNS that fire IncCounter() /
// PushCounter() / PopCounter() at match time.  They must be embedded
// AS PATTERNS inside the grammar (parser_prolog.sc style:
// `ARBNO( nInc() simple_goal )`), NOT called from escape helpers as
// if they were side-effect functions.  Inside escape helpers, call
// the bare runtime functions: IncCounter(), PushCounter(), Push(),
// Pop().  This is a subtle distinction that bit the first draft.
//
// REWRITE-0 SCOPE (MVP):
//   - bare END line (`END\n` at column 0) → (STMT :lbl END :end)
//   - bare-label-only line              → (STMT :lbl L)
//   - label + atom body                 → (STMT :lbl L :subj <atom>)
//   - unlabeled atom body               → (STMT :subj <atom>)
//   atoms: Id (E_VAR), Integer (E_ILIT), String (E_QLIT, '..' or "..")
//
// Targeted fixtures: atom_id, atom_int, atom_str, cf_label_bare,
// cf_label_only, plus implicit `END` line in every fixture.
// Remaining 53 fixtures (assigns, concat, arith, patterns, fn calls,
// gotos) land in REWRITE-1..7.

//-----------------------------------------------------------------------
// Token-class atom recognizers (beauty.sno's names).
//-----------------------------------------------------------------------

White   = SPAN(' ' tab);
Gray    = (SPAN(' ' tab) | epsilon);
nl_one  = ANY(nl);

Integer = SPAN(digits);
Id      = (ANY(&UCASE &LCASE) (SPAN(digits &UCASE &LCASE '_.') | epsilon));

// String body capture goes into _strbody (single global slot is fine
// for REWRITE-0 — atoms don't nest yet).
SQ      = ("'" BREAK("'" nl) . _strbody "'");
DQ      = ('"' BREAK('"' nl) . _strbody '"');
String  = (SQ | DQ);

//-----------------------------------------------------------------------
// Tree-building escape helpers — pure node constructors.
// IMPORTANT: these call the BARE runtime side-effects (Push, Pop,
// IncCounter), NEVER nInc()/nPush()/nTop()/nPop() which return patterns.
//-----------------------------------------------------------------------

function push_atom_var(name) {
    Push(tree('E_VAR', name));
    push_atom_var = .dummy;
    nreturn;
}

function push_atom_int(text) {
    Push(tree('E_ILIT', text));
    push_atom_int = .dummy;
    nreturn;
}

function push_atom_str(body) {
    Push(tree('E_QLIT', body));
    push_atom_str = .dummy;
    nreturn;
}

//-----------------------------------------------------------------------
// STMT envelope construction.
//
// Each Stmt builds its STMT via a slot-list scratchpad: reset_stmt
// clears, add_lbl/add_subj_top/add_eq/add_repl_top append slots,
// finalize_stmt wraps them in a STMT and Pushes it.
//
// REWRITE-0 slots in use: :lbl, :subj.  :eq, :repl, :pat, :goS, :goF,
// :go land in REWRITE-1..7.
//-----------------------------------------------------------------------

stmt_slots  = ARRAY('1:32');
stmt_slot_n = 0;

function reset_stmt() {
    stmt_slot_n = 0;
    reset_stmt  = .dummy;
    nreturn;
}

function add_slot(slot_tree) {
    stmt_slot_n             = stmt_slot_n + 1;
    stmt_slots[stmt_slot_n] = slot_tree;
    add_slot                = .dummy;
    nreturn;
}

function add_lbl(name) {
    add_slot(Tree(':lbl', '', 1, tree('Name', name)));
    add_lbl = .dummy;
    nreturn;
}

function add_subj_top(body) {
    body = Pop();
    add_slot(Tree(':subj', '', 1, body));
    add_subj_top = .dummy;
    nreturn;
}

// finalize_stmt() — pack accumulated slots into one STMT, Push it,
// AND increment the n-ary counter so Compiland's reduce sees this STMT.
function finalize_stmt(node, i) {
    node = tree('STMT', '', 0);
    i = 1;
    while (LE(i, stmt_slot_n)) {
        Append(node, stmt_slots[i]);
        i = i + 1;
    }
    Push(node);
    IncCounter();
    finalize_stmt = .dummy;
    nreturn;
}

// finalize_end() — special END-line STMT, bypasses slot machinery.
function finalize_end() {
    Push(Tree('STMT', '', 2,
              Tree(':lbl', '', 1, tree('Name', 'END')),
              tree(':end', '')));
    IncCounter();
    finalize_end = .dummy;
    nreturn;
}

//-----------------------------------------------------------------------
// Atom — pushes one IR-tree node onto the stack.
// Order: Integer | String | Id (Integer first as it's narrowest).
//-----------------------------------------------------------------------

Atom = ( Integer . _int_text epsilon . *push_atom_int(_int_text)
       | String              epsilon . *push_atom_str(_strbody)
       | Id      . _id_text  epsilon . *push_atom_var(_id_text)
       );

//-----------------------------------------------------------------------
// END marker — col-0 'END' followed by ws-and-eol.
// Captured ahead of Stmt to avoid Label-as-END misclassification.
//-----------------------------------------------------------------------

EndMarker = ( 'END' Gray (nl_one | RPOS(0))
              epsilon . *finalize_end()
            );

//-----------------------------------------------------------------------
// Stmt — labeled or unlabeled, optional body, terminated by nl-or-eof.
// REWRITE-0 body grammar: optional Atom only (not assign, not pattern).
//-----------------------------------------------------------------------

Stmt = ( epsilon . *reset_stmt()
         (  // labeled with body
            POS(0) Id . _id_text epsilon . *add_lbl(_id_text)
              White Atom epsilon . *add_subj_top(.dummy)
              Gray (nl_one | RPOS(0))
              epsilon . *finalize_stmt()
            // labeled, no body
         |  POS(0) Id . _id_text epsilon . *add_lbl(_id_text)
              Gray (nl_one | RPOS(0))
              epsilon . *finalize_stmt()
            // unlabeled with body
         |  White Atom epsilon . *add_subj_top(.dummy)
              Gray (nl_one | RPOS(0))
              epsilon . *finalize_stmt()
         )
       );

//-----------------------------------------------------------------------
// Lines that contribute no STMT.  Comment, Control, blank line.
// These match-and-discard with no side effects.  REWRITE-5 may revisit
// if oracle behavior actually emits something.
//-----------------------------------------------------------------------

Comment = ( POS(0) '*' BREAK(nl) (nl_one | RPOS(0)) );
Control = ( POS(0) '-' BREAK(nl) (nl_one | RPOS(0)) );
Blank   = ( Gray (nl_one | RPOS(0)) );

//-----------------------------------------------------------------------
// Command — one source-line equivalent.  Order matters: EndMarker
// before Stmt (otherwise `END\n` would match Label without :end);
// Comment/Control before Stmt (otherwise `*foo` would match Stmt's
// White-then-... fork, but * isn't an Id-start so it'd fail; still
// cheaper to reject early); Stmt last.  Blank LAST so a Stmt with
// trailing whitespace gets through cleanly.
//-----------------------------------------------------------------------

Command = ( EndMarker
          | Comment
          | Control
          | Stmt
          | Blank
          );

//-----------------------------------------------------------------------
// Compiland — the canonical spine.  Single PATTERN match consumes the
// entire source.  finalize_stmt / finalize_end call IncCounter()
// directly, so nTop() at reduce time is the count of emitted STMTs.
//-----------------------------------------------------------------------

Compiland = nPush()
            ARBNO( Command )
            reduce("'Parse'", 'nTop()')
            nPop();

//-----------------------------------------------------------------------
// Driver.  No goto.  while loops only.
//-----------------------------------------------------------------------

InitCounter();
InitStack();

Src = '';
while ((Line = INPUT)) {
    Src = Src Line nl;
}

ok = (Src ? Compiland);

ptree = Pop();
if (DIFFER(ptree)) {
    i = 1;
    n_kids = n(ptree);
    while (LE(i, n_kids)) {
        TDump(c(ptree)[i]);
        i = i + 1;
    }
}

_parser_sn_v2_done = '';
