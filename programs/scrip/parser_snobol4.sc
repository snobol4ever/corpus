// parser_snobol4.sc — PARSER-SN: SNOBOL4 pattern-based frontend in Snocone.
//
// Canonical shape (per GOAL-PARSER-SNOBOL4.md §Invariants, SN-7 pivot):
//   - ONE Compiland PATTERN, matched once against entire Src.
//   - shift(p,t) / reduce(t,n) from semantic.sc for tree building.
//   - nPush/nInc/nTop/nPop as patterns inside grammar rules.
//   - No Snocone goto. No parse-dispatch functions.
//   - ARBNO body INLINED (FW-3: ARBNO(*Q) deferred calls don't fire).
//   - Uppercase names = build-time pattern constructors (beauty.sno style).
//   - $'op' token patterns include surrounding White/Gray (beauty.sno verbatim).
//
// Patterns cherry-picked VERBATIM from beauty.sno where possible.
//
// IR tag names match the existing SNOBOL4 frontend (--dump-parse oracle):
//   E_VAR E_ILIT E_QLIT  E_ADD E_SUB E_MUL E_DIV E_POW E_PLS E_MNS

//=======================================================================
// Quoted-tag constants (pre-quoted for reduce() EVAL).
//=======================================================================

sq       = "'";
r_Parse  = sq 'Parse'  sq;
r_E_ADD  = sq 'E_ADD'  sq;
r_E_SUB  = sq 'E_SUB'  sq;
r_E_MUL  = sq 'E_MUL'  sq;
r_E_DIV  = sq 'E_DIV'  sq;
r_E_POW  = sq 'E_POW'  sq;
r_E_PLS  = sq 'E_PLS'  sq;
r_E_MNS  = sq 'E_MNS'  sq;
r_nTop   = 'nTop()';

//=======================================================================
// Whitespace — VERBATIM from beauty.sno.
//=======================================================================

White = (  SPAN(' ' tab)
              FENCE(nl ('+' | '.') FENCE(SPAN(' ' tab) | epsilon) | epsilon)
        |  nl ('+' | '.') FENCE(SPAN(' ' tab) | epsilon)
        );
Gray  = (*White | epsilon);
nl_one = ANY(nl);

//=======================================================================
// Operator tokens — VERBATIM from beauty.sno ($'op' convention).
//=======================================================================

$'='   = (*White '=' *White);
$'+'   = (*White '+' *White);
$'-'   = (*White '-' *White);
$'*'   = (*White '*' *White);
$'/'   = (*White '/' *White);
$'^'   = (*White '^' *White);
$'!'   = (*White '!' *White);
$'**'  = (*White '**' *White);
$'('   = ('(' *Gray);
$')'   = (*Gray ')');

//=======================================================================
// Atom-class recognizers — VERBATIM from beauty.sno.
//=======================================================================

Integer = SPAN(digits);
DQ      = ('"' BREAK('"' nl) '"');
SQ      = ("'" BREAK("'" nl) "'");
String  = (*SQ | *DQ);
Real    = (  SPAN(digits)
               ('.' FENCE(SPAN(digits) | epsilon) | epsilon)
               ('E' | 'e')
               ('+' | '-' | epsilon)
               SPAN(digits)
          |  SPAN(digits) '.' FENCE(SPAN(digits) | epsilon)
          );
Id      = (  ANY(&UCASE &LCASE)
                FENCE(SPAN('.' digits &UCASE '_' &LCASE) | epsilon)
          );

//=======================================================================
// Expression tower (beauty.sno Expr0..Expr17 names, scrip IR tags).
//=======================================================================

// Expr17 — atom: parens, Id, String, Real, Integer.
Expr17 = FENCE(
              $'(' *Expr $')'
          |   shift(*Id, 'E_VAR')
          |   shift(*String, 'E_QLIT')
          |   shift(*Real, 'E_REAL')
          |   shift(*Integer, 'E_ILIT')
         );

// Expr14 — unary prefix: + → E_PLS, - → E_MNS  (beauty.sno Expr14).
Expr14 = (  '+' *Expr14 reduce(r_E_PLS, 1)
         |  '-' *Expr14 reduce(r_E_MNS, 1)
         |  *Expr17
         );

// Expr13..Expr12 pass-through.
Expr13 = *Expr14;
Expr12 = *Expr13;

// Expr11 — power: ^ ! ** → E_POW (right-assoc, beauty.sno verbatim).
Expr11 = (*Expr12
              FENCE(($'^' | $'!' | $'**') *Expr11 reduce(r_E_POW, 2) | epsilon)
         );

// Expr10 — division: / → E_DIV.
Expr10 = (*Expr11 FENCE($'/' *Expr10 reduce(r_E_DIV, 2) | epsilon));

// Expr9 — multiplication: * → E_MUL.
Expr9  = (*Expr10 FENCE($'*' *Expr9 reduce(r_E_MUL, 2) | epsilon));

// Expr8..Expr7 pass-through.
Expr8  = *Expr9;
Expr7  = *Expr8;

// Expr6 — additive: + → E_ADD, - → E_SUB (beauty.sno Expr6, verbatim).
Expr6  = (*Expr7
              FENCE(
                  $'+' *Expr6 reduce(r_E_ADD, 2)
              |   $'-' *Expr6 reduce(r_E_SUB, 2)
              |   epsilon
              )
         );

// Expr5..Expr1 pass-through.
Expr5  = *Expr6;
Expr4  = *Expr5;
Expr3  = *Expr4;
Expr2  = *Expr3;
Expr1  = *Expr2;

// Expr0 / Expr — assignment handled in Stmt, not here.
Expr0  = *Expr1;
Expr   = *Expr0;

//=======================================================================
// Tree-building escape helpers.
// Use BARE runtime (Push, Pop, IncCounter, Reduce, Tree, Append).
// NEVER nInc()/nPush()/nPop() — those return patterns, not side effects.
//=======================================================================

// push_end — build the END-line STMT and push it; increment counter.
function push_end() {
    Push(Tree('STMT', '', 2,
              Tree(':lbl', '', 1, tree('Name', 'END')),
              tree(':end', '')));
    IncCounter();
    push_end = .dummy;
    nreturn;
}

// wrap_subj — pop top expr, wrap in :subj, push back.
function wrap_subj(_e) {
    _e = Pop();
    Push(Tree(':subj', '', 1, _e));
    wrap_subj = .dummy;
    nreturn;
}

// wrap_repl — pop top expr, wrap in :repl, push back.
function wrap_repl(_e) {
    _e = Pop();
    Push(Tree(':repl', '', 1, _e));
    wrap_repl = .dummy;
    nreturn;
}

// push_lbl — push :lbl slot for captured label text.
function push_lbl(_txt) {
    Push(Tree(':lbl', '', 1, tree('Name', _txt)));
    push_lbl = .dummy;
    nreturn;
}

// push_eq — push bare :eq flag node (no children).
function push_eq() {
    Push(tree(':eq', ''));
    push_eq = .dummy;
    nreturn;
}

// emit_stmt — Reduce top n_slots into STMT, then IncCounter for Compiland.
function emit_stmt(_n) {
    Reduce('STMT', _n);
    IncCounter();
    emit_stmt = .dummy;
    nreturn;
}

//=======================================================================
// Statement grammar.
//
// Oracle shapes:
//   labeled no-body:      (STMT :lbl L)                 — 1 slot
//   labeled subj-only:    (STMT :lbl L :subj E)         — 2 slots
//   labeled assign:       (STMT :eq :lbl L :subj E :repl R)  — 4 slots
//   unlabeled subj-only:  (STMT :subj E)                — 1 slot
//   unlabeled assign:     (STMT :eq :subj E :repl R)    — 3 slots
//
// Label is VERBATIM from beauty.sno:
//   Label = BREAK(' ' tab nl ';') ~ 'Label'
// We skip the ~ 'Label' shift here — we just capture the text.
//=======================================================================

Label = BREAK(' ' tab nl ';');

Stmt = FENCE(
    // ---- labeled ----
    POS(0) Label . _lbl_text *White
    epsilon . *push_lbl(_lbl_text)
    FENCE(
        // labeled + assignment
        *Expr epsilon . *wrap_subj(.dummy)
        $'='  epsilon . *push_eq()
        *Expr epsilon . *wrap_repl(.dummy)
        *Gray nl_one  epsilon . *emit_stmt(4)
    |   // labeled + subject only
        *Expr epsilon . *wrap_subj(.dummy)
        *Gray nl_one  epsilon . *emit_stmt(2)
    |   // labeled, no body
        *Gray nl_one  epsilon . *emit_stmt(1)
    )
|   // ---- unlabeled assignment ----
    *White *Expr epsilon . *wrap_subj(.dummy)
    $'='         epsilon . *push_eq()
    *Expr        epsilon . *wrap_repl(.dummy)
    *Gray nl_one epsilon . *emit_stmt(3)
|   // ---- unlabeled subject only ----
    *White *Expr epsilon . *wrap_subj(.dummy)
    *Gray nl_one epsilon . *emit_stmt(1)
);

//=======================================================================
// Comment / Control / Blank — match-and-discard.
// VERBATIM from beauty.sno.
//=======================================================================

Comment = (POS(0) '*' BREAK(nl) nl_one);
Control = (POS(0) '-' BREAK(nl ';') (nl_one | ';'));
Blank   = (*Gray nl_one);

//=======================================================================
// EndMarker — matches `END` at column 0 (Lesson 2: POS(0) = absolute).
//=======================================================================

EndMarker = ('END' *Gray (nl_one | RPOS(0)) epsilon . *push_end());

//=======================================================================
// Command — one source line (beauty.sno order).
//=======================================================================

Command = FENCE(
    Comment
|   Control
|   EndMarker
|   Stmt
|   Blank
);

//=======================================================================
// Compiland — ONE pattern, ONE match.
// ARBNO body inlined (FW-3 workaround).
// push_end() and emit_stmt() call IncCounter() directly.
//=======================================================================

Compiland = nPush()
            ARBNO(Command)
            reduce(r_Parse, r_nTop)
            nPop();

//=======================================================================
// Driver — no goto, while loops only.
//=======================================================================

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
