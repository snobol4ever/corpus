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
//   $'do_X'  = zero-arg side-effect.
//   $'save_X'= stash _expr_node into _X before recursive Expr clobber.
//   $'atom_X'= build a leaf node from the most-recent dot-capture.
//   $'op_X'  = save operator-tag constant for the next binop fold.
//   $'binop_X'= fold running LHS/op/RHS triple into _expr_node.
//
// Style invariants (RULES.md + GOAL-PARSER-RAKU):
//   - No goto.  Structured flow only.
//   - No functions used for parsing — only for tree building / semantics.
//   - nPush/nInc/nTop/nPop for all n-ary child counting (Compiland + Block).
//   - All IR trees are n-ary (Append-based, not binary Tree(tag,'',2,l,r)).
//   - One Compiland pattern.  One ? match against Src in the driver.
//
// Rung PARSER-RK-4: atoms + decl/assign + say + arith + if/while/for + sub def + call.
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
// the required-single-space lexical separator.  This lets keyword and
// operator-token definitions read as the literal source they match.
//======================================================================================================================
$' '     = ws_opt;
$'  '    = ws_run;
//======================================================================================================================
// Keyword tokens — leading optional whitespace baked in.  Trailing
// required-whitespace stays explicit at each call site (varies by use:
// `if cond` and `if(cond)` are both legal in Raku, so $'if' / $'while' /
// $'say' have no trailing $'  ' — the next token's leading $' ' eats
// the optional space.  $'sub' / $'for' need real lexical separation
// from the following identifier, so callers attach $'  ' after them).
// $'kw' form sidesteps Snocone's reserved-word list.
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
// Each consumes optional whitespace on both sides and produces no shift.
// Two-char ops listed before single-char ops; longest-match handled by
// alternation order at use site.
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
// Token classifiers — mirror raku.l names (lowercased).
// Each classifier bakes $' ' (optional leading whitespace) into its
// definition so the grammar uses bare names — matches the literal Raku
// source layout without scattering $' ' across every use site.
//======================================================================================================================
ident_first = ANY(&UCASE &LCASE '_');
ident_rest  = SPAN(digits &UCASE &LCASE '_');
Ident   = ($' ' ident_first (ident_rest | epsilon));

// Sigiled variables: capture bare name (strip sigil) into _rk_vf/_rk_vr.
rk_vf    = ANY(&UCASE &LCASE '_');
rk_vr    = SPAN(digits &UCASE &LCASE '_');
rk_vro   = (rk_vr | epsilon);

VarScalar = ($' ' '$' rk_vf . _rk_vf rk_vro . _rk_vr);
VarArray  = ($' ' '@' rk_vf . _rk_vf rk_vro . _rk_vr);
VarHash   = ($' ' '%' rk_vf . _rk_vf rk_vro . _rk_vr);

// Literals.
LitInt    = ($' ' SPAN(digits));
LitStrDQ   = ($' ' '"' BREAK('"') . _rk_strbody '"');
LitStrSQ   = ($' ' "'" BREAK("'") . _rk_strbody "'");
//======================================================================================================================
// Per-construct identifier captures.  Distinct globals keep recursive Expr
// calls from clobbering an in-flight LHS / for-loopvar / sub-name / param /
// call-name capture.  $' ' baked in (same pattern as the atom classifiers).
//======================================================================================================================
rk_atf  = ANY(&UCASE &LCASE '_');
rk_atr  = SPAN(digits &UCASE &LCASE '_');
rk_atro = (rk_atr | epsilon);

AssignTarget = ( $' ' ('$' rk_atf . _rk_atf rk_atro . _rk_atr)
               | $' ' ('@' rk_atf . _rk_atf rk_atro . _rk_atr)
               | $' ' ('%' rk_atf . _rk_atf rk_atro . _rk_atr)
               );

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
// Tree-building / semantic functions.
// These are the ONLY functions in this file.  No function is called from
// inside a parsing pattern except via `epsilon . *fn()` action hooks,
// which are themselves wrapped into named $'name' patterns below.
//======================================================================================================================
// _expr_node: current expression result (parallel to parser_icon.sc).
_expr_node     = '';
// _main_node: in-progress E_FNC main accumulator.
_main_node     = '';
// _rk_asgn_target: stashed LHS name for build_assign.
_rk_asgn_target = '';
// _rk_for_iter: stashed loopvar name for build_for.
_rk_for_iter   = '';
// _rk_block_stk: cons-list for block save/restore during nesting.
_rk_block_stk  = '';
// _rk_sub_node: in-progress sub E_FNC node.
_rk_sub_node   = '';
// _rk_sub_list: cons-list of completed sub STMT nodes (emitted before main).
_rk_sub_list   = '';
// _rk_call_node: in-progress call E_FNC node (top of arg-stack).
_rk_call_node  = '';
// _rk_arg_stk: cons-list of in-progress call nodes (nested calls).
_rk_arg_stk    = '';

struct rk_blink { bnext, bval }
struct rk_slink { snext, sval }
struct rk_alink { anext, aval }
//======================================================================================================================
// Main wrapper.
//======================================================================================================================
function start_main() {
    _main_node = tree('E_FNC', 'main');
    Append(_main_node, tree('E_VAR', 'main'));
    start_main = .dummy;
    nreturn;
}

function finish_main(subj, stmt) {
    subj = tree(':subj', '');
    Append(subj, _main_node);
    stmt = tree('STMT', '');
    Append(stmt, subj);
    Push(stmt);
    finish_main = .dummy;
    nreturn;
}

function append_body_stmt() {
    Append(_main_node, _expr_node);
    append_body_stmt = .dummy;
    nreturn;
}
//======================================================================================================================
// Atom / leaf builders.
//======================================================================================================================
function expr_from_var(vf, vr) {
    _expr_node = tree('E_VAR', vf vr);
    expr_from_var = .dummy;
    nreturn;
}

function expr_from_ilit(text) {
    _expr_node = tree('E_ILIT', text);
    expr_from_ilit = .dummy;
    nreturn;
}

function expr_from_qlit(text) {
    _expr_node = tree('E_QLIT', text);
    expr_from_qlit = .dummy;
    nreturn;
}
//======================================================================================================================
// Assignment.
//======================================================================================================================
function stash_assign_target(vf, vr) {
    _rk_asgn_target = vf vr;
    stash_assign_target = .dummy;
    nreturn;
}

function build_assign(rhs, lhs, node) {
    rhs  = _expr_node;
    lhs  = tree('E_VAR', _rk_asgn_target);
    node = tree('E_ASSIGN', '');
    Append(node, lhs);
    Append(node, rhs);
    _expr_node = node;
    build_assign = .dummy;
    nreturn;
}
//======================================================================================================================
// say  →  E_FNC(write, E_VAR(write), <arg>) — surface→IR remap per raku.y.
//======================================================================================================================
function build_say(arg, fn, node) {
    arg  = _expr_node;
    fn   = tree('E_VAR', 'write');
    node = tree('E_FNC', 'write');
    Append(node, fn);
    Append(node, arg);
    _expr_node = node;
    build_say = .dummy;
    nreturn;
}
//======================================================================================================================
// Binary operator fold.
//======================================================================================================================
function expr_binop(lhs, op_tag, node) {
    node = tree(op_tag, '');
    Append(node, lhs);
    Append(node, _expr_node);
    _expr_node = node;
    expr_binop = .dummy;
    nreturn;
}
//======================================================================================================================
// Block save/restore + control-flow builders (stack-based for nesting).
//======================================================================================================================
function save_block() {
    _rk_block_stk = rk_blink(_rk_block_stk, Pop());
    save_block = .dummy;
    nreturn;
}

function pop_block_to_stack(top) {
    top = bval(_rk_block_stk);
    _rk_block_stk = bnext(_rk_block_stk);
    Push(top);
    pop_block_to_stack = .dummy;
    nreturn;
}

function stash_for_iter(vf, vr) {
    _rk_for_iter = vf vr;
    stash_for_iter = .dummy;
    nreturn;
}

function build_if2(then_seq, cond, node) {
    then_seq = Pop();
    cond     = Pop();
    node = tree('E_IF', '');
    Append(node, cond);
    Append(node, then_seq);
    _expr_node = node;
    build_if2 = .dummy;
    nreturn;
}

function build_if3(else_seq, then_seq, cond, node) {
    else_seq = Pop();
    then_seq = Pop();
    cond     = Pop();
    node = tree('E_IF', '');
    Append(node, cond);
    Append(node, then_seq);
    Append(node, else_seq);
    _expr_node = node;
    build_if3 = .dummy;
    nreturn;
}

function build_while(body_seq, cond, node) {
    body_seq = Pop();
    cond     = Pop();
    node = tree('E_WHILE', '');
    Append(node, cond);
    Append(node, body_seq);
    _expr_node = node;
    build_while = .dummy;
    nreturn;
}

function build_for(body_seq, iter_arr, iter_node, node) {
    body_seq  = Pop();
    iter_arr  = Pop();
    iter_node = tree('E_ITERATE', _rk_for_iter);
    Append(iter_node, iter_arr);
    node = tree('E_EVERY', '');
    Append(node, iter_node);
    Append(node, body_seq);
    _expr_node = node;
    build_for = .dummy;
    nreturn;
}
//======================================================================================================================
// Sub definition builders.
//======================================================================================================================
function start_sub(snf, snr, sname) {
    sname = snf snr;
    _rk_sub_node = tree('E_FNC', sname);
    Append(_rk_sub_node, tree('E_VAR', sname));
    start_sub = .dummy;
    nreturn;
}

function add_param(pf, pr) {
    Append(_rk_sub_node, tree('E_VAR', pf pr));
    add_param = .dummy;
    nreturn;
}

function append_sub_stmt() {
    Append(_rk_sub_node, _expr_node);
    append_sub_stmt = .dummy;
    nreturn;
}

function finish_sub(subj, stmt) {
    subj = tree(':subj', '');
    Append(subj, _rk_sub_node);
    stmt = tree('STMT', '');
    Append(stmt, subj);
    _rk_sub_list = rk_slink(_rk_sub_list, stmt);
    finish_sub = .dummy;
    nreturn;
}
//======================================================================================================================
// return.
//======================================================================================================================
function build_return(arg, node) {
    arg  = _expr_node;
    node = tree('E_RETURN', '');
    Append(node, arg);
    _expr_node = node;
    build_return = .dummy;
    nreturn;
}

function build_return_void(node) {
    node = tree('E_RETURN', '');
    _expr_node = node;
    build_return_void = .dummy;
    nreturn;
}
//======================================================================================================================
// Function call.
//======================================================================================================================
function start_call(fnf, fnr, fname) {
    fname = fnf fnr;
    _rk_call_node = tree('E_FNC', fname);
    Append(_rk_call_node, tree('E_VAR', fname));
    _rk_arg_stk = rk_alink(_rk_arg_stk, _rk_call_node);
    start_call = .dummy;
    nreturn;
}

function add_call_arg(top) {
    top = aval(_rk_arg_stk);
    Append(top, _expr_node);
    add_call_arg = .dummy;
    nreturn;
}

function finish_call(top) {
    top = aval(_rk_arg_stk);
    _rk_arg_stk = anext(_rk_arg_stk);
    _expr_node = top;
    finish_call = .dummy;
    nreturn;
}
//======================================================================================================================
// Block-stmt push (for E_SEQ_EXPR reduce).
//======================================================================================================================
function push_expr_node() {
    Push(_expr_node);
    push_expr_node = .dummy;
    nreturn;
}
//======================================================================================================================
// Pattern-builder helpers — beauty.sno / parser_icon.sc style.
//
// Each $'name' is a side-effect-only pattern (epsilon . *fn(...))
// referenced inline in the grammar.  Folds the pattern body verbatim
// out of the parsing rules into named singletons that read like prose.
//======================================================================================================================
// --- Main wrapper ---
$'start_main'      = (epsilon . *start_main());
$'finish_main'     = (epsilon . *finish_main());
$'append_stmt'     = (epsilon . *append_body_stmt());

// --- Atom builders (use most-recent dot-capture variable) ---
$'atom_VAR'        = (epsilon . *expr_from_var(_rk_vf, _rk_vr));
$'atom_ILIT'       = (epsilon . *expr_from_ilit(_rk_itext));
$'atom_QLIT'       = (epsilon . *expr_from_qlit(_rk_strbody));

// --- Assignment ---
$'save_lhs'        = (epsilon . *stash_assign_target(_rk_atf, _rk_atr));
$'do_assign'       = (epsilon . *build_assign());

// --- say ---
$'do_say'          = (epsilon . *build_say());

// --- Per-level LHS savers (each level has its own slot) ---
$'save_e7lhs'      = (epsilon . *assign('_e7lhs', _expr_node));
$'save_e6lhs'      = (epsilon . *assign('_e6lhs', _expr_node));
$'save_e4lhs'      = (epsilon . *assign('_e4lhs', _expr_node));

// --- Operator tag savers for binary fold ---
$'op_MUL'          = (epsilon . *assign('_e7op', 'E_MUL'));
$'op_DIV'          = (epsilon . *assign('_e7op', 'E_DIV'));
$'op_ADD'          = (epsilon . *assign('_e6op', 'E_ADD'));
$'op_SUB'          = (epsilon . *assign('_e6op', 'E_SUB'));
$'op_EQ'           = (epsilon . *assign('_e4op', 'E_EQ'));
$'op_NE'           = (epsilon . *assign('_e4op', 'E_NE'));
$'op_LE'           = (epsilon . *assign('_e4op', 'E_LE'));
$'op_GE'           = (epsilon . *assign('_e4op', 'E_GE'));
$'op_LT'           = (epsilon . *assign('_e4op', 'E_LT'));
$'op_GT'           = (epsilon . *assign('_e4op', 'E_GT'));

// --- Binary fold builders (consume LHS slot + op slot + current _expr_node) ---
$'binop_mul'       = (epsilon . *expr_binop(_e7lhs, _e7op));
$'binop_add'       = (epsilon . *expr_binop(_e6lhs, _e6op));
$'binop_cmp'       = (epsilon . *expr_binop(_e4lhs, _e4op));

// --- Block save/restore ---
$'push_expr'       = (epsilon . *push_expr_node());
$'save_block'      = (epsilon . *save_block());
$'pop_block'       = (epsilon . *pop_block_to_stack());

// --- Control-flow builders ---
$'do_if2'          = (epsilon . *build_if2());
$'do_if3'          = (epsilon . *build_if3());
$'do_while'        = (epsilon . *build_while());
$'save_for_iter'   = (epsilon . *stash_for_iter(_rk_ff, _rk_fr));
$'do_for'          = (epsilon . *build_for());

// --- Sub definition ---
$'start_sub'       = (epsilon . *start_sub(_rk_snf, _rk_snr));
$'add_param'       = (epsilon . *add_param(_rk_pf, _rk_pr));
$'append_sub_stmt' = (epsilon . *append_sub_stmt());
$'finish_sub'      = (epsilon . *finish_sub());

// --- return ---
$'do_return'       = (epsilon . *build_return());
$'do_return_void'  = (epsilon . *build_return_void());

// --- Function call ---
$'start_call'      = (epsilon . *start_call(_rk_fnf, _rk_fnr));
$'add_call_arg'    = (epsilon . *add_call_arg());
$'finish_call'     = (epsilon . *finish_call());
//======================================================================================================================
// Expression tower — result lives in _expr_node.
//
// Named tail patterns (Expr7tail etc.) wrap operator + rhs + action so that
// ARBNO fires the action reliably on each repetition.  Saved LHS uses
// per-level globals (_e4lhs, _e6lhs, _e7lhs) to avoid clobbering across
// nested expression calls.
//======================================================================================================================
// CallArgTail — defined BEFORE Expr11 so the ARBNO(*CallArgTail) reference
// in Expr11 resolves at match time (deferred), not capture-time epsilon.
// Uses *Expr deferred (Expr not yet defined here, resolved at match time).

CallArgTail = ( $','  *Expr  $'add_call_arg' );

// Expr11 — primary.
// VarArray / VarHash / VarScalar / LitInt / LitStrDQ / LitStrSQ /
// CallName all bake $' ' into their definitions, so the grammar uses
// bare names — reads as the literal Raku source.

Expr11 = ( VarScalar              $'atom_VAR'
         | VarArray               $'atom_VAR'
         | VarHash                $'atom_VAR'
         | LitInt . _rk_itext     $'atom_ILIT'
         | LitStrDQ                $'atom_QLIT'
         | LitStrSQ                $'atom_QLIT'
         | $'(' *Expr $')'
         | ( CallName              $'start_call'
             $'('
             ( *Expr                $'add_call_arg'
               ARBNO( *CallArgTail )
             | epsilon
             )
             $')'                   $'finish_call'
           )
         );

// Expr7 — multiplicative (* /).
Expr7tail = ( $'save_e7lhs'
              ( $'*'  $'op_MUL'
              | $'/'  $'op_DIV'
              )
              Expr11   $'binop_mul'
            );
Expr7     = ( Expr11 ARBNO(Expr7tail) );

// Expr6 — additive (+ -).
Expr6tail = ( $'save_e6lhs'
              ( $'+'  $'op_ADD'
              | $'-'  $'op_SUB'
              )
              Expr7    $'binop_add'
            );
Expr6     = ( Expr7  ARBNO(Expr6tail) );

// Expr4 — comparison ops.  Two-char ops tried first (longest match).
Expr4tail = ( $'save_e4lhs'
              ( $'=='  $'op_EQ'
              | $'!='  $'op_NE'
              | $'<='  $'op_LE'
              | $'>='  $'op_GE'
              | $'<'   $'op_LT'
              | $'>'   $'op_GT'
              )
              Expr6    $'binop_cmp'
            );
Expr4     = ( Expr6  ARBNO(Expr4tail) );

// Expr — top of expression tower.
Expr      = Expr4;
//======================================================================================================================
// Block — `{ BlockStmt* }` — produces E_SEQ_EXPR pushed on stack.
//
// Uses nPush/ARBNO(nInc() BlockStmt)/reduce/nPop so nesting is automatic.
// $'save_block' pops the E_SEQ_EXPR off the stack into _rk_block_stk for
// use by if/while/for builders.
//
// Block_body wraps the deferred *BlockStmt + counter increment + push action
// in a NAMED sub-pattern so deferred actions inside fire reliably and the
// trailing actions outside the ARBNO survive (Snocone runtime quirk).
//
// nl_opt absorbs zero or one newline between statements; $'{' / $'}' bake
// $' ' on both sides so no extra ws_opt is needed around braces.
//======================================================================================================================
nl_opt = (nl_one | epsilon);

BlockStmt = epsilon;

Block_body = ( nl_opt
               *BlockStmt
               nl_opt
               nInc()
               $'push_expr'
             );

Block = ( $'{' nl_opt
          nPush()
          ARBNO( Block_body )
          nl_opt $'}'
          reduce("'E_SEQ_EXPR'", 'nTop()')
          nPop()
          $'save_block'
        );
//======================================================================================================================
// SubBlock — `{ SubBlockStmt* }` — appends body stmts directly onto _rk_sub_node.
// No E_SEQ_EXPR wrapper — sub body stmts are inlined as direct children of E_FNC.
//======================================================================================================================
SubBlockStmt = epsilon;

SubBlock_body = ( nl_opt  *SubBlockStmt  nl_opt );

SubBlock = ( $'{' nl_opt
             ARBNO( SubBlock_body )
             nl_opt $'}'
           );
//======================================================================================================================
// Statements.
//
// Reads as the literal Raku source: $'if' $'(' Expr $')' Block $'else' Block.
// Each $'kw' bakes leading optional whitespace; trailing required-space
// stays explicit only when needed for lexical separation ($'sub'/$'for'
// must reject `subbie` / `foreach` so $'  ' follows them; $'if' / $'while'
// can be followed by `(` without a space, so they don't need $'  ').
//======================================================================================================================
IfStmt = ( $'if'  $'(' Expr $')'
           $'push_expr'  Block  $'pop_block'
           ( $'else'  Block  $'pop_block'  $'do_if3'
           | $'do_if2'
           )
         );

WhileStmt = ( $'while'  $'(' Expr $')'
              $'push_expr'  Block  $'pop_block'
              $'do_while'
            );

ForStmt = ( $'for' $'  '  Expr  $'push_expr'
            $'->'
            ForLoopvar  $'save_for_iter'
            Block  $'pop_block'  $'do_for'
          );

ReturnStmt = ( $'return'
               ( $';'  $'do_return_void'
               | $'  ' Expr  $';'  $'do_return'
               )
             );

AssignStmt = ( ($'my' $'  ' | epsilon)
               AssignTarget  $'save_lhs'
               $'='  Expr  $';'  $'do_assign'
             );

SayStmt = ( $'say'
            Expr  $';'  $'do_say'
          );

BareStmt = ( Expr $';' );

Stmt = ( IfStmt      $'append_stmt'
       | WhileStmt   $'append_stmt'
       | ForStmt     $'append_stmt'
       | ReturnStmt  $'append_stmt'
       | AssignStmt  $'append_stmt'
       | SayStmt     $'append_stmt'
       | BareStmt    $'append_stmt'
       );

// BlockStmt — final binding.  Same alternatives but no trailing
// $'append_stmt' — Block_body's $'push_expr' feeds the reduce.
BlockStmt = ( IfStmt | WhileStmt | ForStmt | ReturnStmt | AssignStmt | SayStmt | BareStmt );

// SubBlockStmt — same alts, but each appends onto _rk_sub_node directly.
SubBlockStmt = ( IfStmt      $'append_sub_stmt'
               | WhileStmt   $'append_sub_stmt'
               | ForStmt     $'append_sub_stmt'
               | ReturnStmt  $'append_sub_stmt'
               | AssignStmt  $'append_sub_stmt'
               | SayStmt     $'append_sub_stmt'
               | BareStmt    $'append_sub_stmt'
               );
//======================================================================================================================
// Sub parameter list — `$a, $b, ...` (zero or more).
//======================================================================================================================
SubParamTail = ( $','
                 SubParam  $'add_param'
               );

SubParams = ( SubParam  $'add_param'
              ARBNO( SubParamTail )
            | epsilon
            );

SubStmt = ( $'sub' $'  '
            SubName  $'start_sub'
            $'(' SubParams $')'
            SubBlock  $'finish_sub'
          );
//======================================================================================================================
// Compiland — canonical cross-PARSER spine.
// One pattern.  One ? match against Src in the driver.
// Produces one STMT (E_FNC main wrapper) for the whole program, plus zero
// or more sub STMT nodes cons'd onto _rk_sub_list.
//======================================================================================================================
Compiland = nPush()
            $'start_main'
            ARBNO( (SubStmt | Stmt) nl_opt )
            $'finish_main'
            reduce("'Parse'", 1)
            nPop();
//======================================================================================================================
// Driver — read stdin into Src, run one ? match, emit each Parse child.
// No goto.  Structured flow only.
// Emit order: sub STMTs first (reversed from cons-list), then main STMT
// (only if main has body stmts beyond the initial E_VAR main child).
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
        // Oracle does not emit a main wrapper for programs with only sub defs.
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
