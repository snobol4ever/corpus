/*====================================================================================================================*/
// parser_raku.sc — PARSER-RK: Raku frontend in Snocone.
//
// Reads whole Raku source from stdin into Src, then runs the canonical
// `Compiland` PATTERN once over Src to build the IR tree on the shared
// stack via Shift/Reduce, then dumps each tree via TDump.  After
// whitespace normalization the dumped form is byte-identical to scrip's
// existing Raku-frontend `--dump-ir` output — that is the PARSER-RK gate.
//
// Naming policy (per RULES.md "Snocone parser style", canonical at
// GOAL-PARSER-SNOBOL4.md ## Style Guidelines for parser_*.sc §1):
//   token classifiers — UpperCamel mirroring raku.l TK_* (VarScalar, LitInt, ...)
//   non-terminals     — UpperCamel mirroring raku.y (Stmt, Expr, Block, IfStmt, ...)
//   IR node tags      — mirror ir.h E_* (E_VAR, E_ILIT, E_FNC, E_ASSIGN, ...)
//   cross-PARSER spine — Compiland / nPush / nInc / nTop / nPop / reduce
//
// Style — beauty.sno / parser_icon.sc:
//   $' '     = Gray          (invisible optional whitespace)
//   $'  '    = White         (required-single-space lexical separator)
//   $'tok'   = punctuation pattern, $' '-padded both sides.
//   $'kw'    = keyword pattern, $' '-padded leading; trailing $'  '
//              required at call site where lexical separation matters.
//
// Reduce-tag constants follow parser_icon.sc convention: sq-quoted form
// so they are EVAL-able strings inside reduce().
//
// PARSER-RK-4.5-e: function-plumbing scaffold removed.  shift()/reduce()
// operate directly inside the grammar patterns.  Minimal helpers retained
// for tree-building operations not expressible via shift/reduce alone
// (guideline §4a retained-for-<reason>):
//
//   Rk_Push_Var()    — sigil-stripped variable push (uses rk_capvf/rk_capvr).
//                      Retained: shift() captures full matched text (sigil
//                      included); oracle requires bare name in E_VAR value.
//   Rk_Push_Param()  — sigil-stripped param push (uses rk_cappf/rk_cappr).
//                      Retained: same reason as Rk_Push_Var.
//   Rk_Push_Qlit()   — string-body push (uses rk_capstr).
//                      Retained: same reason as ic_push_qlit in parser_icon.sc
//                      (shift() would include the surrounding quotes).
//   Rk_Say_Done()    — say → write name remap.
//                      Retained: reduce() sets value=''; E_FNC write requires
//                      value='write' to match oracle.
//   Rk_Stash_For()   — stash for-loopvar name from rk_capff/rk_capfr captures.
//                      Retained: rk_for_iter must be set before Block is
//                      parsed; no other mechanism to carry a name across.
//   Rk_Finish_For()  — for-loop tree build (pops block+array, builds
//                      E_ITERATE+E_EVERY from rk_for_iter stash).
//                      Retained: E_ITERATE carries loopvar name as value;
//                      reduce() cannot supply a non-empty value field.
//   Rk_Finish_Sub()  — sub decomposition (pops counter frame, builds STMT).
//                      Retained: sub name in E_FNC value from rk_capsnf/rk_capsnr;
//                      same structural role as ic_decompose_proc in parser_icon.sc.
//   Rk_Finish_Call() — function call decomposition (pops counter frame,
//                      builds E_FNC with fname from rk_capfnf/rk_capfnr).
//                      Retained: same reason as Rk_Finish_Sub.
//   Rk_Finish_Main() — main wrapper (same role as Rk_Finish_Sub for top-level).
//                      Retained: same structural reason.
//
// Rung PARSER-RK-4.5-e.
/*====================================================================================================================*/
// IR tag constants — name IS the tag; self-quoted for reduce(), bare for shift().
/*====================================================================================================================*/
E_ASSIGN    = "'E_ASSIGN'";  E_SEQ_EXPR = "'E_SEQ_EXPR'";
E_ADD       = "'E_ADD'";      E_SUB      = "'E_SUB'";
E_MUL       = "'E_MUL'";      E_DIV      = "'E_DIV'";
E_EQ        = "'E_EQ'";       E_NE       = "'E_NE'";
E_LT        = "'E_LT'";       E_LE       = "'E_LE'";
E_GT        = "'E_GT'";       E_GE       = "'E_GE'";
E_IF        = "'E_IF'";       E_WHILE    = "'E_WHILE'";
E_RETURN    = "'E_RETURN'";
E_Parse     = "'Parse'";
/*====================================================================================================================*/
// Whitespace primitives.  White / Gray are the cross-parser canonical names;
// the grammar refers to $' ' / $'  ' invisible-whitespace tokens.
// nl_one = ANY(nl) — the correct cross-PARSER idiom; SPAN(...nl) fails.
/*====================================================================================================================*/
White    = (  SPAN(' ' tab) FENCE('#' BREAK(nl) | epsilon)
           |  '#' BREAK(nl)
           );
Gray     = White | epsilon;
nl_one   = ANY(nl);
/*====================================================================================================================*/
// Invisible-whitespace tokens — beauty.sno style taken further.
// $' ' (one space) names optional whitespace; $'  ' (two spaces) names
// the required-single-space lexical separator.
/*====================================================================================================================*/
$' '     = Gray;
$'  '    = White;
/*====================================================================================================================*/
// Keyword tokens — leading optional whitespace only (next token supplies its own left-ws as effective suffix).
/*====================================================================================================================*/
$'my'     = $' ' 'my'    ;  $'say'    = $' ' 'say'   ;
$'if'     = $' ' 'if'    ;  $'else'   = $' ' 'else'  ;
$'while'  = $' ' 'while' ;  $'for'    = $' ' 'for'   ;
$'sub'    = $' ' 'sub'   ;  $'return' = $' ' 'return';
/*====================================================================================================================*/
// Operator tokens — optional whitespace both sides.  Open brackets: ws after only.  Close: ws before only.
/*====================================================================================================================*/
$'->'  = $' ' '->' $' ';  $'=='  = $' ' '==' $' ';
$'!='  = $' ' '!=' $' ';  $'<='  = $' ' '<=' $' ';
$'>='  = $' ' '>=' $' ';  $'='   = $' ' '='  $' ';
$'+'   = $' ' '+'  $' ';  $'-'   = $' ' '-'  $' ';
$'*'   = $' ' '*'  $' ';  $'/'   = $' ' '/'  $' ';
$';'   = $' ' ';'  $' ';  $','   = $' ' ','  $' ';
$'('   = $' ' '(' $' ';  $')'   = $' ' ')';
$'{'   = $' ' '{' $' ';  $'}'   = $' ' '}';
$'<'   = $' ' '<' $' ';  $'>'   = $' ' '>';
/*====================================================================================================================*/
// Token classifiers — mirror raku.l names.
// Each classifier bakes $' ' (optional leading whitespace) into its
// definition so the grammar uses bare names.
/*====================================================================================================================*/
ident_first = ANY(&UCASE &LCASE '_');
ident_rest  = SPAN(digits &UCASE &LCASE '_');
Ident   = ($' ' ident_first (ident_rest | epsilon));

// Sigiled variables: capture bare name (strip sigil) into rk_capvf/rk_capvr.
// Rk_Push_Var() uses the captures — see retained-for-<reason> note above.
rk_vf    = ANY(&UCASE &LCASE '_');
rk_vr    = SPAN(digits &UCASE &LCASE '_');
rk_vro   = (rk_vr | epsilon);

VarScalar = ($' ' '$' rk_vf . rk_capvf rk_vro . rk_capvr);
VarArray  = ($' ' '@' rk_vf . rk_capvf rk_vro . rk_capvr);
VarHash   = ($' ' '%' rk_vf . rk_capvf rk_vro . rk_capvr);

// Literals.
LitInt    = ($' ' SPAN(digits));
LitStrDQ  = ($' ' '"' BREAK('"') . rk_capstr '"');
LitStrSQ  = ($' ' "'" BREAK("'") . rk_capstr "'");
/*====================================================================================================================*/
// Per-construct identifier captures.  Distinct globals keep recursive Expr
// calls from clobbering an in-flight for-loopvar / sub-name capture.
/*====================================================================================================================*/
// For-loopvar.
rk_ff   = ANY(&UCASE &LCASE '_');
rk_fr   = SPAN(digits &UCASE &LCASE '_');
rk_fro  = (rk_fr | epsilon);
ForLoopvar = ($' ' '$' rk_ff . rk_capff rk_fro . rk_capfr);

// Sub name.
rk_snf  = ANY(&UCASE &LCASE '_');
rk_snr  = SPAN(digits &UCASE &LCASE '_');
rk_snro = (rk_snr | epsilon);
SubName = ($' ' rk_snf . rk_capsnf rk_snro . rk_capsnr);

// Sub param (scalar only at RK-4).
rk_pf   = ANY(&UCASE &LCASE '_');
rk_pr   = SPAN(digits &UCASE &LCASE '_');
rk_pro  = (rk_pr | epsilon);
SubParam = ($' ' '$' rk_pf . rk_cappf rk_pro . rk_cappr);

// Function-call name.
rk_fnf  = ANY(&UCASE &LCASE '_');
rk_fnr  = SPAN(digits &UCASE &LCASE '_');
rk_fnro = (rk_fnr | epsilon);
CallName = ($' ' rk_fnf . rk_capfnf rk_fnro . rk_capfnr);
/*====================================================================================================================*/
// Retained globals — minimal set after 4.5-e.
/*====================================================================================================================*/
rk_capvf         = '';
rk_capvr         = '';
rk_capstr    = '';
rk_capff         = '';
rk_capfr         = '';
rk_for_iter   = '';
rk_capsnf        = '';
rk_capsnr        = '';
rk_cappf         = '';
rk_cappr         = '';
rk_sub_list   = '';

struct rk_slink { snext, sval }
/*====================================================================================================================*/
// Minimal helper functions — tree-building / semantic only.
// None is called from inside a parsing pattern except via named action
// patterns below.  Retained-for-<reason> notes in file header.
/*====================================================================================================================*/
/*--------------------------------------------------------------------------------------------------------------------*/
// Rk_Push_Var — push tree('E_VAR', bare_name) using rk_capvf/rk_capvr.
/*--------------------------------------------------------------------------------------------------------------------*/
function Rk_Push_Var() {
    Push(tree('E_VAR', rk_capvf rk_capvr));
    Rk_Push_Var = .dummy;
    nreturn;
}
var_done   = (epsilon . *Rk_Push_Var());
/*--------------------------------------------------------------------------------------------------------------------*/
// Rk_Push_Param — push tree('E_VAR', bare_name) using rk_cappf/rk_cappr.
/*--------------------------------------------------------------------------------------------------------------------*/
function Rk_Push_Param() {
    Push(tree('E_VAR', rk_cappf rk_cappr));
    Rk_Push_Param = .dummy;
    nreturn;
}
param_done = (epsilon . *Rk_Push_Param());
/*--------------------------------------------------------------------------------------------------------------------*/
// Rk_Push_Qlit — push tree('E_QLIT', body) using rk_capstr.
/*--------------------------------------------------------------------------------------------------------------------*/
function Rk_Push_Qlit() {
    Push(tree('E_QLIT', rk_capstr));
    Rk_Push_Qlit = .dummy;
    nreturn;
}
qlit_done  = (epsilon . *Rk_Push_Qlit());
/*--------------------------------------------------------------------------------------------------------------------*/
// Rk_Say_Done — say → write name remap.  Pops arg, builds E_FNC write.
/*--------------------------------------------------------------------------------------------------------------------*/
function Rk_Say_Done(arg, fn, node) {
    arg  = Pop();
    fn   = tree('E_VAR', 'write');
    node = tree('E_FNC', 'write');
    Append(node, fn);
    Append(node, arg);
    Push(node);
    Rk_Say_Done = .dummy;
    nreturn;
}
say_done   = (epsilon . *Rk_Say_Done());
/*--------------------------------------------------------------------------------------------------------------------*/
// Rk_Stash_For — stash for-loopvar name from rk_capff/rk_capfr.
/*--------------------------------------------------------------------------------------------------------------------*/
function Rk_Stash_For(vf, vr) {
    rk_for_iter = vf vr;
    Rk_Stash_For = .dummy;
    nreturn;
}
stash_for  = (epsilon . *Rk_Stash_For(rk_capff, rk_capfr));
/*--------------------------------------------------------------------------------------------------------------------*/
// Rk_Finish_For — pops block+array from stack, builds E_EVERY.
/*--------------------------------------------------------------------------------------------------------------------*/
function Rk_Finish_For(block, iter_arr, iter_node, node) {
    block     = Pop();
    iter_arr  = Pop();
    iter_node = tree('E_ITERATE', rk_for_iter);
    Append(iter_node, iter_arr);
    node = tree('E_EVERY', '');
    Append(node, iter_node);
    Append(node, block);
    Push(node);
    Rk_Finish_For = .dummy;
    nreturn;
}
for_done   = (epsilon . *Rk_Finish_For());
/*--------------------------------------------------------------------------------------------------------------------*/
// Rk_Finish_Sub — pops counter frame, builds (STMT :subj (E_FNC sname ...)).
/*--------------------------------------------------------------------------------------------------------------------*/
function Rk_Finish_Sub(n_kids, kids, sname, efnc, subj, stmt, i) {
    n_kids = TopCounter();
    kids   = GT(n_kids, 0) ARRAY('1:' n_kids);
    i = n_kids;
    while (GT(i, 0)) {
        kids[i] = Pop();
        i = i - 1;
    }
    sname = rk_capsnf rk_capsnr;
    efnc  = tree('E_FNC', sname);
    Append(efnc, tree('E_VAR', sname));
    i = 1;
    while (LE(i, n_kids)) {
        Append(efnc, kids[i]);
        i = i + 1;
    }
    subj = tree(':subj', '');
    Append(subj, efnc);
    stmt = tree('STMT', '');
    Append(stmt, subj);
    rk_sub_list = rk_slink(rk_sub_list, stmt);
    Rk_Finish_Sub = .dummy;
    nreturn;
}
sub_done   = (epsilon . *Rk_Finish_Sub());
/*--------------------------------------------------------------------------------------------------------------------*/
// Rk_Finish_Call — function call decomposition.  Reads TopCounter() for
// nTop() children (callee E_VAR + args).  Builds (E_FNC fname (E_VAR fname)
// arg1...argN) with fname from rk_capfnf/rk_capfnr captures.
// Retained: reduce() sets value=''; E_FNC requires value=fname to match oracle.
/*--------------------------------------------------------------------------------------------------------------------*/
function Rk_Finish_Call(n_kids, kids, fname, efnc, i) {
    n_kids = TopCounter();
    kids   = GT(n_kids, 0) ARRAY('1:' n_kids);
    i = n_kids;
    while (GT(i, 0)) {
        kids[i] = Pop();
        i = i - 1;
    }
    fname = rk_capfnf rk_capfnr;
    efnc  = tree('E_FNC', fname);
    i = 1;
    while (LE(i, n_kids)) {
        Append(efnc, kids[i]);
        i = i + 1;
    }
    Push(efnc);
    Rk_Finish_Call = .dummy;
    nreturn;
}
call_done  = (epsilon . *Rk_Finish_Call());
/*--------------------------------------------------------------------------------------------------------------------*/
function Rk_Finish_Main(n_kids, kids, efnc, subj, stmt, i) {
    n_kids = TopCounter();
    kids   = GT(n_kids, 0) ARRAY('1:' n_kids);
    i = n_kids;
    while (GT(i, 0)) {
        kids[i] = Pop();
        i = i - 1;
    }
    efnc = tree('E_FNC', 'main');
    Append(efnc, tree('E_VAR', 'main'));
    i = 1;
    while (LE(i, n_kids)) {
        Append(efnc, kids[i]);
        i = i + 1;
    }
    subj = tree(':subj', '');
    Append(subj, efnc);
    stmt = tree('STMT', '');
    Append(stmt, subj);
    Push(stmt);
    Rk_Finish_Main = .dummy;
    nreturn;
}
main_done  = (epsilon . *Rk_Finish_Main());
/*====================================================================================================================*/
// Expression tower — result lives on the shared stack.
//
// Named tail patterns (Expr7tail etc.) wrap operator + rhs + action so
// ARBNO fires the action reliably on each repetition.
/*====================================================================================================================*/
// CallArgTail — defined BEFORE Expr11 so the ARBNO(*CallArgTail) reference
// in Expr11 resolves at match time (deferred), not capture-time epsilon.

CallArgTail = ( $','  *Expr  nInc() );

// Expr11 — primary.

Expr11 = ( VarScalar              var_done
         | VarArray               var_done
         | VarHash                var_done
         | shift(LitInt, 'E_ILIT')
         | LitStrDQ               qlit_done
         | LitStrSQ               qlit_done
         | $'(' *Expr $')'
         | ( nPush()
             shift(CallName, 'E_VAR')  nInc()
             $'('
             ( *Expr              nInc()
               ARBNO( *CallArgTail )
             | epsilon
             )
             $')'                 call_done
             nPop()
           )
         );

// Expr7 — multiplicative (* /).
Expr7tail = ( $'*'  *Expr11  (E_MUL & 2)
            | $'/'  *Expr11  (E_DIV & 2)
            );
Expr7     = ( Expr11 ARBNO(Expr7tail) );

// Expr6 — additive (+ -).
Expr6tail = ( $'+'  *Expr7  (E_ADD & 2)
            | $'-'  *Expr7  (E_SUB & 2)
            );
Expr6     = ( Expr7  ARBNO(Expr6tail) );

// Expr4 — comparison ops.  Two-char ops tried first (longest match).
Expr4tail = ( $'=='  *Expr6  (E_EQ & 2)
            | $'!='  *Expr6  (E_NE & 2)
            | $'<='  *Expr6  (E_LE & 2)
            | $'>='  *Expr6  (E_GE & 2)
            | $'<'   *Expr6  (E_LT & 2)
            | $'>'   *Expr6  (E_GT & 2)
            );
Expr4     = ( Expr6  ARBNO(Expr4tail) );

// Expr — top of expression tower.
Expr      = Expr4;
/*====================================================================================================================*/
// Block — `{ BlockStmt* }` — produces E_SEQ_EXPR pushed on stack.
/*====================================================================================================================*/
nl_opt = (nl_one | epsilon);

BlockStmt = epsilon;

Block_body = ( nl_opt
               *BlockStmt
               nl_opt
               nInc()
             );

Block = ( $'{' nl_opt
          nPush()
          ARBNO( Block_body )
          nl_opt $'}'
          (E_SEQ_EXPR & 'nTop()')
          nPop()
        );
/*====================================================================================================================*/
// SubBlock — `{ SubBlockStmt* }` — each stmt increments sub counter frame.
/*====================================================================================================================*/
SubBlockStmt = epsilon;

SubBlock_body = ( nl_opt  *SubBlockStmt  nl_opt  nInc() );

SubBlock = ( $'{' nl_opt
             ARBNO( SubBlock_body )
             nl_opt $'}'
           );
/*====================================================================================================================*/
// Statements.
/*====================================================================================================================*/
IfStmt = ( $'if'  $'(' Expr $')'
           Block
           ( $'else'  Block  (E_IF & 3)
           | (E_IF & 2)
           )
         );

WhileStmt = ( $'while'  $'(' Expr $')'
              Block
              (E_WHILE & 2)
            );

ForStmt = ( $'for' $'  '  Expr
            $'->'
            ForLoopvar  stash_for
            Block  for_done
          );

ReturnStmt = ( $'return'
               ( $';'         (E_RETURN & 0)
               | $'  ' Expr   $';'  (E_RETURN & 1)
               )
             );

AssignStmt = ( ($'my' $'  ' | epsilon)
               ( VarScalar  var_done
               | VarArray   var_done
               | VarHash    var_done
               )
               $'='  Expr  $';'  (E_ASSIGN & 2)
             );

SayStmt = ( $'say'
            Expr  $';'  say_done
          );

BareStmt = ( Expr $';' );

Stmt = ( IfStmt
       | WhileStmt
       | ForStmt
       | ReturnStmt
       | AssignStmt
       | SayStmt
       | BareStmt
       );

// BlockStmt — final binding.
BlockStmt = ( IfStmt | WhileStmt | ForStmt | ReturnStmt | AssignStmt | SayStmt | BareStmt );

// SubBlockStmt — SubBlock_body handles nInc per stmt.
SubBlockStmt = ( IfStmt | WhileStmt | ForStmt | ReturnStmt | AssignStmt | SayStmt | BareStmt );
/*====================================================================================================================*/
// Sub parameter list — each param shifts (E_VAR name) onto sub counter frame.
/*====================================================================================================================*/
SubParamTail = ( $','
                 SubParam  param_done  nInc()
               );

SubParams = ( SubParam  param_done  nInc()
              ARBNO( SubParamTail )
            | epsilon
            );

SubStmt = ( $'sub' $'  '
            SubName
            nPush()
            $'(' SubParams $')'
            SubBlock  sub_done
            nPop()
          );
/*====================================================================================================================*/
// Compiland — canonical cross-PARSER spine.
// Outer frame: holds exactly 1 item (the main STMT) for reduce('Parse',1).
// Inner frame: counts main body stmts for Rk_Finish_Main().
/*====================================================================================================================*/
Compiland = nPush()
            nPush()
            ARBNO( (SubStmt | (Stmt nInc())) nl_opt )
            main_done
            nPop()
            nInc()
            (E_Parse & 1)
            nPop();
/*====================================================================================================================*/
// Driver — read stdin into Src, run one ? match, emit sub STMTs then main.
/*====================================================================================================================*/
InitCounter();
InitStack();

Src = '';
while ((Line = INPUT)) Src = Src Line nl;

ok = (Src ? Compiland);

if (ok) {
    ptree = Pop();
    if (DIFFER(ptree)) {
        // Reverse the sub_list (cons'd in forward order, need reverse for emit).
        rk_sub_rev = '';
        rk_sl = rk_sub_list;
        while (DIFFER(rk_sl)) {
            rk_sub_rev = rk_slink(rk_sub_rev, sval(rk_sl));
            rk_sl = snext(rk_sl);
        }
        // Emit sub STMTs.
        rk_sl = rk_sub_rev;
        while (DIFFER(rk_sl)) {
            TDump(sval(rk_sl));
            rk_sl = snext(rk_sl);
        }
        // Emit main STMT only if it has body stmts beyond the initial E_VAR main child.
        i = 1;
        n_kids = n(ptree);
        while (LE(i, n_kids)) {
            main_stmt = c(ptree)[i];
            subj_node = c(main_stmt)[1];
            efnc_node = c(subj_node)[1];
            if (GT(n(efnc_node), 1)) TDump(main_stmt);
            i = i + 1;
        }
    }
}

parser_rk_done = '';
