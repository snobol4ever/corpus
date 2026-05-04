// parser_icon.sc — PARSER-IC: Icon frontend in Snocone.
//
// IC-8b — canonical spine rewrite.
//
// Reads whole Icon source from stdin into Src, then runs the canonical
// `Compiland` PATTERN once over Src to build the IR tree on the shared
// shift/reduce stack, then dumps each tree via TDump.  After whitespace
// normalization the dumped form is byte-identical to scrip's existing
// Icon-frontend `--dump-ir` output — that's the PARSER-IC gate.
//
// Canonical spine (parser_snocone.sc reference, IC-8a OPSYN):
//   `*P ~ T`     ≡  shift(*P, T)        push tree(T, matched_text) onto stack
//   `r_T & N`    ≡  reduce(r_T, N)      pop N, push tree(T,_,N,kids)
//   `r_T & 'nTop()'` reduces with current counter-frame's count.
//   `r_nTop`     =  '*(GT(nTop(),1) nTop())'
//                   single-child case → reduce silently fails → singleton
//                   stays on stack as-is.  This IS the unwrap for
//                   E_SEQ_EXPR (`(expr)` and `{expr}`).
//
// Pattern-builder style (post-IC-7):
//   $'op' tokens for whitespace-bracketed operator literals (beauty.sc).
//   No `epsilon . *fn()` parsing-state side-effects.
//
// Tree shape produced by this parser is byte-identical to the existing
// Icon frontend's --dump-ir output:
//   (STMT :subj (E_FNC <pname> (E_VAR <pname>) <params...> <body...>))
// The single helper `ic_decompose_proc` pops the procedure-frame's
// children and re-wraps them into the (STMT :subj E_FNC ...) shape;
// it is the ONE remaining function and is purely tree-building/semantic.
&FULLSCAN = 1;
/*====================================================================================================================*/
//  Reduce-tag constants (parser_snocone.sc convention).
//  Using sq-quoted form so they're EVAL-able strings inside reduce().
/*====================================================================================================================*/
sq          = "'";
r_ASSIGN    = sq 'E_ASSIGN'     sq;   r_SCAN      = sq 'E_SCAN'       sq;
r_ALT       = sq 'E_ALTERNATE'  sq;   r_AUGOP     = sq 'E_AUGOP'      sq;
r_ADD       = sq 'E_ADD'        sq;   r_SUB       = sq 'E_SUB'        sq;
r_MUL       = sq 'E_MUL'        sq;   r_DIV       = sq 'E_DIV'        sq;
r_EQ        = sq 'E_EQ'         sq;   r_NE        = sq 'E_NE'         sq;
r_LT        = sq 'E_LT'         sq;   r_LE        = sq 'E_LE'         sq;
r_GT        = sq 'E_GT'         sq;   r_GE        = sq 'E_GE'         sq;
r_IF        = sq 'E_IF'         sq;   r_WHILE     = sq 'E_WHILE'      sq;
r_EVERY     = sq 'E_EVERY'      sq;   r_RETURN    = sq 'E_RETURN'     sq;
r_FNC       = sq 'E_FNC'        sq;   r_SEQ_EXPR  = sq 'E_SEQ_EXPR'   sq;
r_POW       = sq 'E_POW'        sq;   r_MNS       = sq 'E_MNS'        sq;
r_PLS       = sq 'E_PLS'        sq;   r_CSET_COMPL= sq 'E_CSET_COMPL' sq;
r_NONNULL   = sq 'E_NONNULL'    sq;   r_ITERATE   = sq 'E_ITERATE'    sq;
r_SIZE      = sq 'E_SIZE'       sq;   r_RANDOM    = sq 'E_RANDOM'     sq;
r_Parse     = sq 'Parse'        sq;
r_nTop      = '*(GT(nTop(), 1) nTop())';
s_QLIT      = 'E_QLIT';   s_ILIT      = 'E_ILIT';   s_VAR       = 'E_VAR';
/*====================================================================================================================*/
//  Whitespace, atom recognizers, operator-token patterns.
/*====================================================================================================================*/
White       = SPAN(' ' tab);
Gray        = (*White | epsilon);
nl_one      = ANY(nl);
id_first    = ANY(&UCASE &LCASE '_');
id_rest     = SPAN(digits &UCASE &LCASE '_');
id_pat      = (id_first (id_rest | epsilon));
int_pat     = SPAN(digits);
//  String literal: capture the inner body (excluding quotes) for QLIT.
//  shift(*str_pat, s_QLIT) would capture quotes too; instead we use the
//  classic dot-capture + ic_push_qlit() — same exception parser_snocone.sc
//  keeps for sc_push_qlit().  This is tree-building, not parsing-state.
str_pat     = ('"' BREAK('"') . ic_strbody '"');
semi_opt    = (';' | epsilon);
/*--------------------------------------------------------------------------------------------------------------------*/
//  Keyword tokens — leading optional whitespace baked in.  Trailing
//  required-whitespace stays explicit at each call site (varies by use:
//  `if cond` needs *White so `iffy` is rejected; `end` followed by nl
//  needs no required-space).  Each keyword consumes only what its
//  surface form matches and shifts nothing.  $'kw' form (parallel to
//  $'op' for operators) sidesteps Snocone's reserved-word list.
/*--------------------------------------------------------------------------------------------------------------------*/
$'if'        = (*Gray 'if'       );  $'then'      = (*Gray 'then'     );
$'else'      = (*Gray 'else'     );  $'while'     = (*Gray 'while'    );
$'do'        = (*Gray 'do'       );  $'every'     = (*Gray 'every'    );
$'return'    = (*Gray 'return'   );  $'end'       = (*Gray 'end'      );
$'procedure' = (*Gray 'procedure');
/*--------------------------------------------------------------------------------------------------------------------*/
//  Operator-token patterns — beauty.sc / parser_snobol4.sc style.
//  Each consumes optional whitespace on both sides and produces no shift.
/*--------------------------------------------------------------------------------------------------------------------*/
$'|'        = (*Gray '|'  *Gray);   $':='       = (*Gray ':=' *Gray);
$'?'        = (*Gray '?'  *Gray);   $','        = (*Gray ','  *Gray);
$'+'        = (*Gray '+'  *Gray);   $'-'        = (*Gray '-'  *Gray);
$'*'        = (*Gray '*'  *Gray);   $'/'        = (*Gray '/'  *Gray);
$'<='       = (*Gray '<=' *Gray);   $'>='       = (*Gray '>=' *Gray);
$'~='       = (*Gray '~=' *Gray);   $'<'        = (*Gray '<'  *Gray);
$'>'        = (*Gray '>'  *Gray);   $'='        = (*Gray '='  *Gray);
$';'        = (*Gray ';'  *Gray);   $'^'        = (*Gray '^'  *Gray);
$'('        = (*Gray '('  *Gray);   $')'        = (*Gray ')'  *Gray);
$'{'        = (*Gray '{'  *Gray);   $'}'        = (*Gray '}'  *Gray);
//  Augmented-assign tokens — literal source `op:=` with whitespace each side.
//  Each lowers to E_AUGOP (operator discarded by --dump-ir; only arity 2 matters).
$'+:='      = (*Gray '+:=' *Gray);  $'-:='      = (*Gray '-:=' *Gray);
$'*:='      = (*Gray '*:=' *Gray);  $'/:='      = (*Gray '/:=' *Gray);
/*====================================================================================================================*/
//  Helpers — tree-building only.  Per IC-8b: ONE function for statement
//  decomposition (proc-frame collapse + STMT-wrap), plus the one shared
//  shift exception for QLIT (string body needs to exclude quotes).
/*====================================================================================================================*/
//  ic_push_qlit — shift a (E_QLIT <body>) onto the stack using the
//  dot-captured ic_strbody (set by str_pat's BREAK match).  Same role
//  as parser_snocone.sc's sc_push_qlit().
function ic_push_qlit() {
    Push(tree(s_QLIT, ic_strbody));
    ic_push_qlit = .dummy;
    nreturn;
}
qlit_done   = (epsilon . *ic_push_qlit());
/*--------------------------------------------------------------------------------------------------------------------*/
//  ic_decompose_proc — pop the procedure-frame's nTop() children from
//  the stack, infer pname from the first child's value (the callee
//  `(E_VAR pname)` shifted by Prochead), build a new (E_FNC pname <kids>)
//  with v=pname, and wrap it in (STMT :subj ...).  Pushes ONE tree onto
//  the stack.  This is the ONE remaining helper (per IC-8b) and is
//  purely tree-building/semantic.
/*--------------------------------------------------------------------------------------------------------------------*/
function ic_decompose_proc(n_kids, kids, pname, proc, i) {
    n_kids = TopCounter();
    kids = GT(n_kids, 0) ARRAY('1:' n_kids);
    i = n_kids;
    while (GT(i, 0)) {
        kids[i] = Pop();
        i = i - 1;
    }
    pname = v(kids[1]);                  // first child is (E_VAR pname)
    proc = Tree('E_FNC', pname, n_kids);
    i = 1;
    while (LE(i, n_kids)) {
        proc = Append(proc, kids[i]);
        i = i + 1;
    }
    Push(Tree('STMT', '', 1, Tree(':subj', '', 1, proc)));
    ic_decompose_proc = .dummy;
    nreturn;
}
proc_done   = (epsilon . *ic_decompose_proc());
/*====================================================================================================================*/
//  Expression tower — canonical names from icon-sp.ebnf.
//
//  Each Exprn pattern leaves ONE result tree on the shared stack.
//  LL(1) decomposition: Exprn = Exprn_higher ARBNO(Exprn_tail);
//  each tail iteration shifts a new RHS and does reduce(r_TAG, 2),
//  building a left-associative tree.
/*====================================================================================================================*/
//  Expr11 — primary.  Order matters: keywords first (to avoid id_pat
//  greedily consuming `if`/`while`/`every`); then function-call form
//  (id_pat followed by `(`); then paren / compound primaries; then
//  literals; then bare id.  All tries shift exactly one tree.
If    = ( $'if'    *White *Expr  $'then' *White *Expr
          (  $'else' *White *Expr  (r_IF & 3)
          |  (r_IF & 2)
          )
        );
While = ( $'while' *White *Expr  $'do' *White *Expr  (r_WHILE & 2) );
Every = ( $'every' *White *Expr
          (  $'do' *White *Expr  (r_EVERY & 2)
          |  (r_EVERY & 1)
          )
        );
/*--------------------------------------------------------------------------------------------------------------------*/
//  Call — `IDENT '(' (Expr (',' Expr)*)? ')'` variadic invocation.
//  Counter frame counts callee + args.  reduce(r_FNC, 'nTop()') yields
//  (E_FNC (E_VAR fname) arg1 ... argN) with v=''.  Single arg: nTop=2,
//  reduce fires; zero args (just callee): nTop=1, single-child unwrap
//  leaves bare (E_VAR fname) — but that's wrong for an invocation with
//  no args.  Use 'nTop()' (not r_nTop) so the reduce always fires.
/*--------------------------------------------------------------------------------------------------------------------*/
ArgFirst    = ( *Gray *Expr  nInc() );
ArgRest     = ( $','   *Expr  nInc() );
CallArgs    = ( ArgFirst ARBNO(ArgRest) | epsilon );
Call        = ( nPush()
                *Gray id_pat ~ s_VAR  nInc()
                *Gray '(' CallArgs *Gray ')'
                (r_FNC & 'nTop()')
                nPop()
              );
/*--------------------------------------------------------------------------------------------------------------------*/
//  Paren — `( expr )` transparent grouping or `( e1; e2; ... )` seq.
//  Counter frame counts items.  Single-child unwrap via r_nTop leaves
//  the lone expression on the stack as-is (transparent grouping).
//  Multi-child case builds (E_SEQ_EXPR e1 e2 ...).
/*--------------------------------------------------------------------------------------------------------------------*/
SeqRest     = ( $';' *Expr  nInc() );
Paren       = ( nPush()
                $'('  *Expr  nInc()  ARBNO(SeqRest)  $')'
                (r_SEQ_EXPR & r_nTop)
                nPop()
              );
/*--------------------------------------------------------------------------------------------------------------------*/
//  Compound — `{ expr [; expr]* }` block.  Same shape as Paren but
//  brace-delimited and allows trailing whitespace / newlines between
//  items.  Single-child unwrap matches existing frontend behavior.
/*--------------------------------------------------------------------------------------------------------------------*/
CompoundFirst = ( *Gray *Expr *Gray semi_opt *Gray nInc() );
CompoundRest  = ( *Gray *Expr *Gray semi_opt *Gray nInc() );
Compound      = ( nPush()
                  $'{'
                  ( CompoundFirst ARBNO(CompoundRest) | epsilon )
                  $'}'
                  (r_SEQ_EXPR & r_nTop)
                  nPop()
                );
/*--------------------------------------------------------------------------------------------------------------------*/
//  Expr11 — primary union.
/*--------------------------------------------------------------------------------------------------------------------*/
Expr11 = (   If
         |   While
         |   Every
         |   Call
         |   Paren
         |   Compound
         |   *Gray str_pat qlit_done
         |   *Gray int_pat ~ s_ILIT
         |   *Gray id_pat  ~ s_VAR
         );
/*--------------------------------------------------------------------------------------------------------------------*/
//  Expr10 — unary prefix operators.  Each reduces (r_TAG & 1).
//    `-` `+` `~` `\` `!` `*` `?`
//  `*` unary (size) is unambiguous in prefix position; Expr7 `*` is infix.
/*--------------------------------------------------------------------------------------------------------------------*/
Expr10    = (   *Gray '-'  *Expr10 (r_MNS         & 1)
            |   *Gray '+'  *Expr10 (r_PLS         & 1)
            |   *Gray '~'  *Expr10 (r_CSET_COMPL  & 1)
            |   *Gray '\\' *Expr10 (r_NONNULL     & 1)
            |   *Gray '!'  *Expr10 (r_ITERATE     & 1)
            |   *Gray '*'  *Expr10 (r_SIZE        & 1)
            |   *Gray '?'  *Expr10 (r_RANDOM      & 1)
            |   *Expr11
            );
/*--------------------------------------------------------------------------------------------------------------------*/
//  Expr8 — power `^` right-associative.
/*--------------------------------------------------------------------------------------------------------------------*/
Expr8     = ( *Expr10 ($'^' *Expr8 (r_POW & 2) | epsilon) );
/*--------------------------------------------------------------------------------------------------------------------*/
//  Expr7 — multiplicative `* /` left-assoc.
/*--------------------------------------------------------------------------------------------------------------------*/
Expr7tail = ( $'*' *Expr8 (r_MUL & 2)
            | $'/' *Expr8 (r_DIV & 2)
            );
Expr7     = ( *Expr8 ARBNO(Expr7tail) );
/*--------------------------------------------------------------------------------------------------------------------*/
//  Expr6 — additive `+ -` left-assoc.
/*--------------------------------------------------------------------------------------------------------------------*/
Expr6tail = ( $'+' *Expr7 (r_ADD & 2)
            | $'-' *Expr7 (r_SUB & 2)
            );
Expr6     = ( *Expr7 ARBNO(Expr6tail) );
/*--------------------------------------------------------------------------------------------------------------------*/
//  Expr4 — comparison.  Two-char ops tried first to avoid greedy single-char match.
/*--------------------------------------------------------------------------------------------------------------------*/
Expr4tail = ( $'<=' *Expr6 (r_LE & 2)
            | $'>=' *Expr6 (r_GE & 2)
            | $'~=' *Expr6 (r_NE & 2)
            | $'<'  *Expr6 (r_LT & 2)
            | $'>'  *Expr6 (r_GT & 2)
            | $'='  *Expr6 (r_EQ & 2)
            );
Expr4     = ( *Expr6 ARBNO(Expr4tail) );
/*--------------------------------------------------------------------------------------------------------------------*/
//  Expr3 — alternation `|`.  Flatten via n-ary collector; r_nTop unwraps
//  the no-bar case (single Expr4 on the stack stays as-is).
/*--------------------------------------------------------------------------------------------------------------------*/
X3        = ( nInc() *Expr4 ($'|' *X3 | epsilon) );
Expr3     = ( nPush() X3 (r_ALT & r_nTop) nPop() );
/*--------------------------------------------------------------------------------------------------------------------*/
//  Expr2 — generation (to/by). Not yet implemented; collapses to Expr3.
/*--------------------------------------------------------------------------------------------------------------------*/
Expr2     = ( *Expr3 );
/*--------------------------------------------------------------------------------------------------------------------*/
//  Expr1 — assignment + augmented assigns (right-associative).  Each
//  alternative shifts a fresh RHS via *Expr1 and reduces with arity 2;
//  the augop branch reduces to E_AUGOP (operator itself discarded —
//  matches existing-frontend --dump-ir output).
/*--------------------------------------------------------------------------------------------------------------------*/
Expr1     = ( *Expr2
              (   $':='   *Expr1 (r_ASSIGN & 2)
              |   $'+:='  *Expr1 (r_AUGOP  & 2)
              |   $'-:='  *Expr1 (r_AUGOP  & 2)
              |   $'*:='  *Expr1 (r_AUGOP  & 2)
              |   $'/:='  *Expr1 (r_AUGOP  & 2)
              |   epsilon
              )
            );
/*--------------------------------------------------------------------------------------------------------------------*/
//  Expr1a — scan `?`. Same shape as Expr1.
/*--------------------------------------------------------------------------------------------------------------------*/
Expr1a    = ( *Expr1 ($'?' *Expr (r_SCAN & 2) | epsilon) );
/*--------------------------------------------------------------------------------------------------------------------*/
//  Expr — top of the tower.
/*--------------------------------------------------------------------------------------------------------------------*/
Expr      = ( *Expr1a );
/*====================================================================================================================*/
//  Statement / procedure / program structure.
//
//  Each Stmt produces ONE tree on the stack and increments the active
//  counter frame (the procedure frame, pushed by Proc).  Comments and
//  blank lines do not produce trees and do not increment the counter.
/*====================================================================================================================*/
Comment   = ( *Gray '#' BREAK(nl) nl_one );
Blank     = ( *Gray nl_one );
ReturnStmt = ( $'return' *White *Expr *Gray semi_opt *Gray nl_one
                  (r_RETURN & 1)
             | $'return' *Gray semi_opt *Gray nl_one
                  (r_RETURN & 0)
             );
//  One body statement.  Increments the proc-frame counter for each
//  produced tree; comments/blanks pass through without counter change.
StmtBody  = ( ReturnStmt nInc()
            | *Gray *Expr *Gray semi_opt *Gray nl_one nInc()
            | Comment
            | Blank
            );
//  Param list — each parameter shifts as (E_VAR pname) and increments
//  the proc-frame counter.  Empty arglist: zero shifts, zero increments.
ParamFirst = ( *Gray id_pat ~ s_VAR  nInc() );
ParamRest  = ( $',' id_pat ~ s_VAR  nInc() );
Params     = ( ParamFirst ARBNO(ParamRest) | epsilon );
//  Prochead — `procedure NAME ( params )`.  The procedure name is
//  shifted as (E_VAR pname) — this becomes child[1] of the eventual
//  E_FNC, AND ic_decompose_proc reads pname from v(child[1]) to set
//  the E_FNC's value field.  No global parsing-state slot needed.
Prochead = ( $'procedure' *White id_pat ~ s_VAR  nInc()
             *Gray '(' Params *Gray ')' *Gray nl_one
           );
//  Procbody — repeat StmtBody until 'end'.  Tail-recursive shape (vs
//  ARBNO) so we preempt-match `end` before letting StmtBody potentially
//  consume `end` as a bare identifier expression.
ProcbodyEnd = ( $'end' *Gray (nl_one | RPOS(0)) );
Procbody    = ( ProcbodyEnd | StmtBody *Procbody );
//  Proc — push frame, parse head + body (each piece shifts trees and
//  increments the frame counter), then call ic_decompose_proc to
//  re-wrap into (STMT :subj (E_FNC pname (E_VAR pname) <kids>)).
Proc = ( nPush()  Prochead  Procbody  proc_done  nPop() );
/*====================================================================================================================*/
//  Compiland — single PATTERN match consumes the entire source string.
//  Each Proc shifts ONE (STMT :subj ...) tree onto the outer frame's
//  stack; the outer reduce builds a Parse node with all the procs.
/*====================================================================================================================*/
Compiland = ( nPush()
              ARBNO( nInc() *Gray Proc *Gray )
              (r_Parse & 'nTop()')
              nPop()
            );
/*====================================================================================================================*/
//  Driver — read whole stdin into Src, run Src ? Compiland once, then
//  emit each STMT child via TDump.
/*====================================================================================================================*/
InitCounter();
InitStack();
Src = '';
while (Line = INPUT) Src = Src Line nl;
if (Src ? Compiland) {
    ptree = Pop();
    if (DIFFER(ptree)) {
        i = 1;
        n_kids = n(ptree);
        while (LE(i, n_kids)) {
            TDump(c(ptree)[i]);
            i = i + 1;
        }
    } else {
        OUTPUT = 'Parse Error';
    }
} else {
    OUTPUT = 'Parse Error';
}
