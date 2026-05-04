// parser_snocone.sc — PARSER-SC: Snocone frontend in Snocone.
//
// Rung PARSER-SC-INFRA-2: canonical Compiland spine + tier ladder.
//
// shift(pat, t): semantic.sc builds EVAL("p . thx . *Shift('" t "', thx)")
//   so t must be the BARE type name (no surrounding quotes) — semantic.sc
//   adds them.  Pass e.g. 'E_VAR' (a 5-char string, not "'E_VAR'").
//
// reduce(t, n): semantic.sc builds EVAL("epsilon . *Reduce(" t ", " n ")")
//   ShiftReduce.sc's Reduce() then EVALs t if DATATYPE==EXPRESSION.
//   t must carry its own surrounding quotes so the EVALed expr is a string
//   literal: pass "'E_ASSIGN'" (9 chars including the quotes).
//   Built via sq concat since Snocone can't write "'" in a double-quoted lit.
//
// Tier ladder (snocone_parse.y 798-811):
//   Expr0  right-assoc `=` → E_ASSIGN
//   Expr1  right-assoc `?` → E_SCAN
//   Expr3  n-ary `|`       → E_ALT
//   Expr4  n-ary space     → E_SEQ
//   Expr6  left `+` `-`    → E_ADD E_SUB
//   Expr9  left `*` `/`    → E_MUL E_DIV
//   Expr17 atoms
//
// Note (session #64): FENCE removed from the tier ladder.  scrip's pattern
// engine has a defect with `*VarA FENCE(literal *VarB | epsilon)` — when the
// FENCE first alt contains a runtime *deref, the alt fails silently and
// epsilon wins.  Workaround: drop FENCE on tier patterns; the alts are
// unambiguous so backtracking is harmless.  FENCE is still used inside Id
// (no leading deref) and inside Expr17's atom-alternatives (literal-only
// alts inside FENCE are fine).
//
// String body capture: shift(*String, ...) would capture the whole match
// including outer quotes via `thx`.  Instead, SQ/DQ's BREAK(.)._sc_strbody
// captures just the body, and sc_push_qlit() pushes a tree using that
// global — bypassing thx entirely.
//
// Gate (INFRA-2): PASS=13 FAIL=0 (with FW-6 variant-B normalize() in the
// gate script: collapse whitespace runs to a single space before compare).

&FULLSCAN = 1;

//-----------------------------------------------------------------------
// Type name strings.
// s_* = bare name for shift() calls.
// r_* = quoted name for reduce() calls (reduce needs "'E_X'" not "E_X").
//-----------------------------------------------------------------------

sq      = "'";
s_QLIT  = 'E_QLIT';
s_ILIT  = 'E_ILIT';
s_VAR   = 'E_VAR';
r_ASSIGN = sq 'E_ASSIGN' sq;
r_SCAN   = sq 'E_SCAN'   sq;
r_ALT    = sq 'E_ALT'    sq;
r_SEQ    = sq 'E_SEQ'    sq;
r_ADD    = sq 'E_ADD'    sq;
r_SUB    = sq 'E_SUB'    sq;
r_MUL    = sq 'E_MUL'    sq;
r_DIV    = sq 'E_DIV'    sq;
r_Parse  = sq 'Parse'    sq;
r_nTop   = '*(GT(nTop(), 1) nTop())';

//-----------------------------------------------------------------------
// Whitespace helpers.
//-----------------------------------------------------------------------

White    = SPAN(' ' tab);
Gray     = (*White | epsilon);
nl_opt   = (nl | epsilon);

//-----------------------------------------------------------------------
// Operator wrapper patterns.
//-----------------------------------------------------------------------

op_eq    = (*Gray '=' *Gray);
op_q     = (*Gray '?' *Gray);
op_or    = (*Gray '|' *Gray);
op_pls   = (*Gray '+' *Gray);
op_mns   = (*Gray '-' *Gray);
op_mul   = (*Gray '*' *Gray);
op_div   = (*Gray '/' *Gray);

//-----------------------------------------------------------------------
// Atom recognizers (beauty.sc names).
//-----------------------------------------------------------------------

Integer  = SPAN(digits);
DQ       = ('"'  BREAK('"')  . _sc_strbody '"');
SQ       = ("'"  BREAK("'")  . _sc_strbody "'");
String   = (*SQ | *DQ);
Id       = (ANY(&UCASE &LCASE '_')
            FENCE(SPAN('.' digits &UCASE '_' &LCASE) | epsilon));
semi_opt = (';' | epsilon);

//-----------------------------------------------------------------------
// sc_decompose_stmt.
//-----------------------------------------------------------------------

function sc_decompose_stmt(top, lhs, rhs, s) {
    top = Pop();
    if (IDENT(t(top), 'E_ASSIGN')) {
        lhs = c(top)[1];
        rhs = c(top)[2];
        s = Tree('STMT', '', 3,
                 Tree(':eq',   ''),
                 Tree(':subj', '', 1, lhs),
                 Tree(':repl', '', 1, rhs));
    } else {
        s = Tree('STMT', '', 1, Tree(':subj', '', 1, top));
    }
    Push(s);
    sc_decompose_stmt = .dummy;
    nreturn;
}

//-----------------------------------------------------------------------
// shift_qlit — captures _sc_strbody (set by SQ/DQ's BREAK . _sc_strbody)
// as the leaf value, instead of thx (which would include outer quotes).
//-----------------------------------------------------------------------

function sc_push_qlit(s) {
    s = tree('E_QLIT', _sc_strbody);
    Push(s);
    sc_push_qlit = .dummy;
    nreturn;
}

//-----------------------------------------------------------------------
// Expr17 — atoms. shift() takes bare type name.
//-----------------------------------------------------------------------

Expr17 = FENCE(
             *String epsilon . *sc_push_qlit()
           | shift(*Integer, s_ILIT)
           | shift(*Id,      s_VAR)
         );

//-----------------------------------------------------------------------
// Expr9 — mul/div. reduce() takes quoted type name.
//-----------------------------------------------------------------------

Expr9 = *Expr17
        (
            *op_mul *Expr17 reduce(r_MUL, 2)
                (*op_mul *Expr17 reduce(r_MUL, 2) | epsilon)
          | *op_div *Expr17 reduce(r_DIV, 2)
                (*op_div *Expr17 reduce(r_DIV, 2) | epsilon)
          | epsilon
        );

//-----------------------------------------------------------------------
// Expr6 — add/sub.
//-----------------------------------------------------------------------

Expr6 = *Expr9
        (
            *op_pls *Expr9 reduce(r_ADD, 2)
                (*op_pls *Expr9 reduce(r_ADD, 2) | epsilon)
          | *op_mns *Expr9 reduce(r_SUB, 2)
                (*op_mns *Expr9 reduce(r_SUB, 2) | epsilon)
          | epsilon
        );

//-----------------------------------------------------------------------
// Expr4 — n-ary concat E_SEQ.
//-----------------------------------------------------------------------

Expr4 = nPush() *X4 reduce(r_SEQ, r_nTop) nPop();
X4    = nInc() *Expr6 (*White *X4 | epsilon);

//-----------------------------------------------------------------------
// Expr3 — n-ary alt E_ALT.
//-----------------------------------------------------------------------

Expr3 = nPush() *X3 reduce(r_ALT, r_nTop) nPop();
X3    = nInc() *Expr4 (*op_or *X3 | epsilon);

//-----------------------------------------------------------------------
// Expr1 — pattern match.
//-----------------------------------------------------------------------

Expr1 = *Expr3 (*op_q *Expr1 reduce(r_SCAN, 2) | epsilon);

//-----------------------------------------------------------------------
// Expr0 — assignment.
//-----------------------------------------------------------------------

Expr0 = *Expr1 (*op_eq *Expr0 reduce(r_ASSIGN, 2) | epsilon);

//-----------------------------------------------------------------------
// stmt_body — inlined into ARBNO.
//-----------------------------------------------------------------------

stmt_body = (*Gray *Expr0 *Gray semi_opt *Gray nl_opt
             epsilon . *sc_decompose_stmt());

//-----------------------------------------------------------------------
// Compiland.
//-----------------------------------------------------------------------

Compiland = nPush()
            ARBNO(nInc() stmt_body)
            reduce(r_Parse, 'nTop()')
            nPop();

//-----------------------------------------------------------------------
// Driver. Uses if/else — ~ is OPSYN'd to shift after semantic.sc loads.
//-----------------------------------------------------------------------

InitCounter();
InitStack();

Src = '';
read_loop:
if (Line = INPUT) { Src = Src Line nl; goto read_loop; }
read_done:

if (Src ? Compiland) { goto got_tree; }
goto mainErr;
got_tree:

ptree = Pop();
if (DIFFER(ptree)) { goto emit_start; }
goto mainErr;
emit_start:

i = 1;
n_kids = n(ptree);
emit_loop:
if (LE(i, n_kids)) { TDump(c(ptree)[i]); i = i + 1; goto emit_loop; }
goto mainEnd;

mainErr:
OUTPUT = 'Parse Error';
goto mainEnd;

mainEnd:
_parser_sc_done = '';
