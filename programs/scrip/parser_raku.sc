//======================================================================================================================
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
//   $' '     = ws_opt        (invisible optional whitespace)
//   $'  '    = ws_run        (required-single-space lexical separator)
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
//   rk_push_var()    — sigil-stripped variable push (uses _rk_vf/_rk_vr).
//                      Retained: shift() captures full matched text (sigil
//                      included); oracle requires bare name in E_VAR value.
//   rk_push_param()  — sigil-stripped param push (uses _rk_pf/_rk_pr).
//                      Retained: same reason as rk_push_var.
//   rk_push_qlit()   — string-body push (uses _rk_strbody).
//                      Retained: same reason as ic_push_qlit in parser_icon.sc
//                      (shift() would include the surrounding quotes).
//   rk_say_done()    — say → write name remap.
//                      Retained: reduce() sets value=''; E_FNC write requires
//                      value='write' to match oracle.
//   rk_stash_for()   — stash for-loopvar name from _rk_ff/_rk_fr captures.
//                      Retained: _rk_for_iter must be set before Block is
//                      parsed; no other mechanism to carry a name across.
//   rk_finish_for()  — for-loop tree build (pops block+array, builds
//                      E_ITERATE+E_EVERY from _rk_for_iter stash).
//                      Retained: E_ITERATE carries loopvar name as value;
//                      reduce() cannot supply a non-empty value field.
//   rk_finish_sub()  — sub decomposition (pops counter frame, builds STMT).
//                      Retained: sub name in E_FNC value from _rk_snf/_rk_snr;
//                      same structural role as ic_decompose_proc in parser_icon.sc.
//   rk_finish_main() — main wrapper (same role as rk_finish_sub for top-level).
//                      Retained: same structural reason.
//
// Rung PARSER-RK-4.5-e.
//======================================================================================================================
// Reduce-tag constants (parser_icon.sc convention).
// sq-quoted so they are EVAL-able strings inside reduce().
//======================================================================================================================
sq          = "'";
r_ASSIGN    = sq 'E_ASSIGN'    sq;
r_ADD       = sq 'E_ADD'       sq;   r_SUB    = sq 'E_SUB'     sq;
r_MUL       = sq 'E_MUL'       sq;   r_DIV    = sq 'E_DIV'     sq;
r_EQ        = sq 'E_EQ'        sq;   r_NE     = sq 'E_NE'      sq;
r_LT        = sq 'E_LT'        sq;   r_LE     = sq 'E_LE'      sq;
r_GT        = sq 'E_GT'        sq;   r_GE     = sq 'E_GE'      sq;
r_IF        = sq 'E_IF'        sq;
r_WHILE     = sq 'E_WHILE'     sq;
r_RETURN    = sq 'E_RETURN'    sq;
r_SEQ_EXPR  = sq 'E_SEQ_EXPR'  sq;
r_Parse     = sq 'Parse'       sq;
s_ILIT      = 'E_ILIT';
s_VAR       = 'E_VAR';
//======================================================================================================================
// Whitespace primitives.  ws_opt / ws_run are kept as named patterns for
// internal use inside SPAN-like classifiers; the grammar refers to
// $' ' / $'  ' instead — beauty.sno style taken further.
// nl_one = ANY(nl) — the correct cross-PARSER idiom; SPAN(...nl) fails.
//======================================================================================================================
ws_opt   = (SPAN(' ' tab) | epsilon);
ws_run   = SPAN(' ' tab);
nl_one   = ANY(nl);
//======================================================================================================================
// Invisible-whitespace tokens — beauty.sno style taken further.
// $' ' (one space) names optional whitespace; $'  ' (two spaces) names
// the required-single-space lexical separator.
//======================================================================================================================
$' '     = ws_opt;
$'  '    = ws_run;
//======================================================================================================================
// Keyword tokens — leading optional whitespace baked in.
//======================================================================================================================
$'my'        = ($' ' 'my'        );
$'say'       = ($' ' 'say'       );
$'if'        = ($' ' 'if'        );
$'else'      = ($' ' 'else'      );
$'while'     = ($' ' 'while'     );
$'for'       = ($' ' 'for'       );
$'sub'       = ($' ' 'sub'       );
$'return'    = ($' ' 'return'    );
//======================================================================================================================
// Operator-token patterns — beauty.sno / parser_icon.sc style.
//======================================================================================================================
$'->'    = ($' ' '->' $' ');
$'=='    = ($' ' '==' $' ');
$'!='    = ($' ' '!=' $' ');
$'<='    = ($' ' '<=' $' ');
$'>='    = ($' ' '>=' $' ');
$'<'     = ($' ' '<'  $' ');
$'>'     = ($' ' '>'  $' ');
$'='     = ($' ' '='  $' ');
$'+'     = ($' ' '+'  $' ');
$'-'     = ($' ' '-'  $' ');
$'*'     = ($' ' '*'  $' ');
$'/'     = ($' ' '/'  $' ');
$';'     = ($' ' ';'  $' ');
$','     = ($' ' ','  $' ');
$'('     = ($' ' '('  $' ');
$')'     = ($' ' ')'  $' ');
$'{'     = ($' ' '{'  $' ');
$'}'     = ($' ' '}'  $' ');
//======================================================================================================================
// Token classifiers — mirror raku.l names.
// Each classifier bakes $' ' (optional leading whitespace) into its
// definition so the grammar uses bare names.
//======================================================================================================================
ident_first = ANY(&UCASE &LCASE '_');
ident_rest  = SPAN(digits &UCASE &LCASE '_');
Ident   = ($' ' ident_first (ident_rest | epsilon));

// Sigiled variables: capture bare name (strip sigil) into _rk_vf/_rk_vr.
// rk_push_var() uses the captures — see retained-for-<reason> note above.
rk_vf    = ANY(&UCASE &LCASE '_');
rk_vr    = SPAN(digits &UCASE &LCASE '_');
rk_vro   = (rk_vr | epsilon);

VarScalar = ($' ' '$' rk_vf . _rk_vf rk_vro . _rk_vr);
VarArray  = ($' ' '@' rk_vf . _rk_vf rk_vro . _rk_vr);
VarHash   = ($' ' '%' rk_vf . _rk_vf rk_vro . _rk_vr);

// Literals.
LitInt    = ($' ' SPAN(digits));
LitStrDQ  = ($' ' '"' BREAK('"') . _rk_strbody '"');
LitStrSQ  = ($' ' "'" BREAK("'") . _rk_strbody "'");
//======================================================================================================================
// Per-construct identifier captures.  Distinct globals keep recursive Expr
// calls from clobbering an in-flight for-loopvar / sub-name capture.
//======================================================================================================================
// For-loopvar.
rk_ff   = ANY(&UCASE &LCASE '_');
rk_fr   = SPAN(digits &UCASE &LCASE '_');
rk_fro  = (rk_fr | epsilon);
ForLoopvar = ($' ' '$' rk_ff . _rk_ff rk_fro . _rk_fr);

// Sub name.
rk_snf  = ANY(&UCASE &LCASE '_');
rk_snr  = SPAN(digits &UCASE &LCASE '_');
rk_snro = (rk_snr | epsilon);
SubName = ($' ' rk_snf . _rk_snf rk_snro . _rk_snr);

// Sub param (scalar only at RK-4).
rk_pf   = ANY(&UCASE &LCASE '_');
rk_pr   = SPAN(digits &UCASE &LCASE '_');
rk_pro  = (rk_pr | epsilon);
SubParam = ($' ' '$' rk_pf . _rk_pf rk_pro . _rk_pr);

// Function-call name.
rk_fnf  = ANY(&UCASE &LCASE '_');
rk_fnr  = SPAN(digits &UCASE &LCASE '_');
rk_fnro = (rk_fnr | epsilon);
CallName = ($' ' rk_fnf . _rk_fnf rk_fnro . _rk_fnr);
//======================================================================================================================
// Retained globals — minimal set after 4.5-e.
//======================================================================================================================
_rk_vf         = '';
_rk_vr         = '';
_rk_strbody    = '';
_rk_ff         = '';
_rk_fr         = '';
_rk_for_iter   = '';
_rk_snf        = '';
_rk_snr        = '';
_rk_pf         = '';
_rk_pr         = '';
_rk_sub_list   = '';

struct rk_slink { snext, sval }
//======================================================================================================================
// Minimal helper functions — tree-building / semantic only.
// None is called from inside a parsing pattern except via named action
// patterns below.  Retained-for-<reason> notes in file header.
//======================================================================================================================
//----------------------------------------------------------------------------------------------------------------------
// rk_push_var — push tree('E_VAR', bare_name) using _rk_vf/_rk_vr.
//----------------------------------------------------------------------------------------------------------------------
function rk_push_var() {
    Push(tree('E_VAR', _rk_vf _rk_vr));
    rk_push_var = .dummy;
    nreturn;
}
var_done   = (epsilon . *rk_push_var());
//----------------------------------------------------------------------------------------------------------------------
// rk_push_param — push tree('E_VAR', bare_name) using _rk_pf/_rk_pr.
//----------------------------------------------------------------------------------------------------------------------
function rk_push_param() {
    Push(tree('E_VAR', _rk_pf _rk_pr));
    rk_push_param = .dummy;
    nreturn;
}
param_done = (epsilon . *rk_push_param());
//----------------------------------------------------------------------------------------------------------------------
// rk_push_qlit — push tree('E_QLIT', body) using _rk_strbody.
//----------------------------------------------------------------------------------------------------------------------
function rk_push_qlit() {
    Push(tree('E_QLIT', _rk_strbody));
    rk_push_qlit = .dummy;
    nreturn;
}
qlit_done  = (epsilon . *rk_push_qlit());
//----------------------------------------------------------------------------------------------------------------------
// rk_say_done — say → write name remap.  Pops arg, builds E_FNC write.
//----------------------------------------------------------------------------------------------------------------------
function rk_say_done(arg, fn, node) {
    arg  = Pop();
    fn   = tree('E_VAR', 'write');
    node = tree('E_FNC', 'write');
    Append(node, fn);
    Append(node, arg);
    Push(node);
    rk_say_done = .dummy;
    nreturn;
}
say_done   = (epsilon . *rk_say_done());
//----------------------------------------------------------------------------------------------------------------------
// rk_stash_for — stash for-loopvar name from _rk_ff/_rk_fr.
//----------------------------------------------------------------------------------------------------------------------
function rk_stash_for(vf, vr) {
    _rk_for_iter = vf vr;
    rk_stash_for = .dummy;
    nreturn;
}
stash_for  = (epsilon . *rk_stash_for(_rk_ff, _rk_fr));
//----------------------------------------------------------------------------------------------------------------------
// rk_finish_for — pops block+array from stack, builds E_EVERY.
//----------------------------------------------------------------------------------------------------------------------
function rk_finish_for(block, iter_arr, iter_node, node) {
    block     = Pop();
    iter_arr  = Pop();
    iter_node = tree('E_ITERATE', _rk_for_iter);
    Append(iter_node, iter_arr);
    node = tree('E_EVERY', '');
    Append(node, iter_node);
    Append(node, block);
    Push(node);
    rk_finish_for = .dummy;
    nreturn;
}
for_done   = (epsilon . *rk_finish_for());
//----------------------------------------------------------------------------------------------------------------------
// rk_finish_sub — pops counter frame, builds (STMT :subj (E_FNC sname ...)).
//----------------------------------------------------------------------------------------------------------------------
function rk_finish_sub(n_kids, kids, sname, efnc, subj, stmt, i) {
    n_kids = TopCounter();
    kids   = GT(n_kids, 0) ARRAY('1:' n_kids);
    i = n_kids;
    while (GT(i, 0)) {
        kids[i] = Pop();
        i = i - 1;
    }
    sname = _rk_snf _rk_snr;
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
    _rk_sub_list = rk_slink(_rk_sub_list, stmt);
    rk_finish_sub = .dummy;
    nreturn;
}
sub_done   = (epsilon . *rk_finish_sub());
//----------------------------------------------------------------------------------------------------------------------
// rk_finish_call — function call decomposition.  Reads TopCounter() for
// nTop() children (callee E_VAR + args).  Builds (E_FNC fname (E_VAR fname)
// arg1...argN) with fname from _rk_fnf/_rk_fnr captures.
// Retained: reduce() sets value=''; E_FNC requires value=fname to match oracle.
//----------------------------------------------------------------------------------------------------------------------
function rk_finish_call(n_kids, kids, fname, efnc, i) {
    n_kids = TopCounter();
    kids   = GT(n_kids, 0) ARRAY('1:' n_kids);
    i = n_kids;
    while (GT(i, 0)) {
        kids[i] = Pop();
        i = i - 1;
    }
    fname = _rk_fnf _rk_fnr;
    efnc  = tree('E_FNC', fname);
    i = 1;
    while (LE(i, n_kids)) {
        Append(efnc, kids[i]);
        i = i + 1;
    }
    Push(efnc);
    rk_finish_call = .dummy;
    nreturn;
}
call_done  = (epsilon . *rk_finish_call());
//----------------------------------------------------------------------------------------------------------------------
function rk_finish_main(n_kids, kids, efnc, subj, stmt, i) {
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
    rk_finish_main = .dummy;
    nreturn;
}
main_done  = (epsilon . *rk_finish_main());
//======================================================================================================================
// Expression tower — result lives on the shared stack.
//
// Named tail patterns (Expr7tail etc.) wrap operator + rhs + action so
// ARBNO fires the action reliably on each repetition.
//======================================================================================================================
// CallArgTail — defined BEFORE Expr11 so the ARBNO(*CallArgTail) reference
// in Expr11 resolves at match time (deferred), not capture-time epsilon.

CallArgTail = ( $','  *Expr  nInc() );

// Expr11 — primary.

Expr11 = ( VarScalar              var_done
         | VarArray               var_done
         | VarHash                var_done
         | shift(LitInt, s_ILIT)
         | LitStrDQ               qlit_done
         | LitStrSQ               qlit_done
         | $'(' *Expr $')'
         | ( nPush()
             shift(CallName, s_VAR)  nInc()
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
Expr7tail = ( $'*'  *Expr11  (r_MUL & 2)
            | $'/'  *Expr11  (r_DIV & 2)
            );
Expr7     = ( Expr11 ARBNO(Expr7tail) );

// Expr6 — additive (+ -).
Expr6tail = ( $'+'  *Expr7  (r_ADD & 2)
            | $'-'  *Expr7  (r_SUB & 2)
            );
Expr6     = ( Expr7  ARBNO(Expr6tail) );

// Expr4 — comparison ops.  Two-char ops tried first (longest match).
Expr4tail = ( $'=='  *Expr6  (r_EQ & 2)
            | $'!='  *Expr6  (r_NE & 2)
            | $'<='  *Expr6  (r_LE & 2)
            | $'>='  *Expr6  (r_GE & 2)
            | $'<'   *Expr6  (r_LT & 2)
            | $'>'   *Expr6  (r_GT & 2)
            );
Expr4     = ( Expr6  ARBNO(Expr4tail) );

// Expr — top of expression tower.
Expr      = Expr4;
//======================================================================================================================
// Block — `{ BlockStmt* }` — produces E_SEQ_EXPR pushed on stack.
//======================================================================================================================
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
          (r_SEQ_EXPR & 'nTop()')
          nPop()
        );
//======================================================================================================================
// SubBlock — `{ SubBlockStmt* }` — each stmt increments sub counter frame.
//======================================================================================================================
SubBlockStmt = epsilon;

SubBlock_body = ( nl_opt  *SubBlockStmt  nl_opt  nInc() );

SubBlock = ( $'{' nl_opt
             ARBNO( SubBlock_body )
             nl_opt $'}'
           );
//======================================================================================================================
// Statements.
//======================================================================================================================
IfStmt = ( $'if'  $'(' Expr $')'
           Block
           ( $'else'  Block  (r_IF & 3)
           | (r_IF & 2)
           )
         );

WhileStmt = ( $'while'  $'(' Expr $')'
              Block
              (r_WHILE & 2)
            );

ForStmt = ( $'for' $'  '  Expr
            $'->'
            ForLoopvar  stash_for
            Block  for_done
          );

ReturnStmt = ( $'return'
               ( $';'         (r_RETURN & 0)
               | $'  ' Expr   $';'  (r_RETURN & 1)
               )
             );

AssignStmt = ( ($'my' $'  ' | epsilon)
               ( VarScalar  var_done
               | VarArray   var_done
               | VarHash    var_done
               )
               $'='  Expr  $';'  (r_ASSIGN & 2)
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
//======================================================================================================================
// Sub parameter list — each param shifts (E_VAR name) onto sub counter frame.
//======================================================================================================================
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
//======================================================================================================================
// Compiland — canonical cross-PARSER spine.
// Outer frame: holds exactly 1 item (the main STMT) for reduce('Parse',1).
// Inner frame: counts main body stmts for rk_finish_main().
//======================================================================================================================
Compiland = nPush()
            nPush()
            ARBNO( (SubStmt | (Stmt nInc())) nl_opt )
            main_done
            nPop()
            nInc()
            (r_Parse & 1)
            nPop();
//======================================================================================================================
// Driver — read stdin into Src, run one ? match, emit sub STMTs then main.
//======================================================================================================================
InitCounter();
InitStack();

Src = '';
while ((Line = INPUT)) {
    if (~(Line ? (POS(0) ws_opt '#' REM))) Src = Src Line nl;
}

ok = (Src ? Compiland);

if (ok) {
    ptree = Pop();
    if (DIFFER(ptree)) {
        // Reverse the sub_list (cons'd in forward order, need reverse for emit).
        _rk_sub_rev = '';
        _rk_sl = _rk_sub_list;
        while (DIFFER(_rk_sl)) {
            _rk_sub_rev = rk_slink(_rk_sub_rev, sval(_rk_sl));
            _rk_sl = snext(_rk_sl);
        }
        // Emit sub STMTs.
        _rk_sl = _rk_sub_rev;
        while (DIFFER(_rk_sl)) {
            TDump(sval(_rk_sl));
            _rk_sl = snext(_rk_sl);
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

_parser_rk_done = '';
