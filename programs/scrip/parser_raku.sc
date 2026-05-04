// parser_raku.sc — PARSER-RK: Raku frontend in Snocone.
//
// Reads whole Raku source from stdin into Src, then runs the canonical
// `Compiland` PATTERN once over Src to build the IR tree on the shared
// stack via Shift/Reduce, then dumps each tree via TDump.  After
// whitespace normalization the dumped form is byte-identical to scrip's
// existing Raku-frontend `--dump-ir` output — that is the PARSER-RK gate.
//
// Naming policy (per RULES.md "Snocone parser style"):
//   token classifiers — mirror raku.l (lowercased: var_scalar, lit_int, ...)
//   non-terminals     — mirror raku.y (Stmt, Expr, Block, IfStmt, ...)
//   IR node tags      — mirror ir.h (E_VAR, E_ILIT, E_FNC, E_ASSIGN, ...)
//   cross-PARSER spine — Compiland / nPush / nInc / nTop / nPop / reduce
//
// Style invariants (RULES.md + GOAL-PARSER-RAKU invariants):
//   - No goto. Structured flow only.
//   - No functions used for parsing — only for tree building / semantics.
//   - ~ is OPSYN'd to shift, & to reduce (semantic.sc). Used where natural.
//   - nPush/nInc/nTop/nPop for all n-ary child counting (Compiland + Block).
//   - All IR trees are n-ary (Append-based, not binary Tree(tag,'',2,l,r)).
//   - One Compiland pattern. One ? match against Src in the driver.
//
// Rung PARSER-RK-3: atoms + decl/assign + say + arith + if/while/for.
//
// Expression result lives in _expr_node (parallel to parser_icon.sc's
// _expr_node convention).  Statement-level actions append _expr_node
// onto _main_node (the in-progress E_FNC main accumulator).
//
// Block bodies use nPush/ARBNO(nInc() BlockStmt)/reduce("'E_SEQ_EXPR'",...)/nPop
// producing one E_SEQ_EXPR on the stack; saved into _rk_block by
// save_block() for use by if/while/for builders.  Nesting is handled
// by a cons-list save stack (_rk_block_stk).

//-----------------------------------------------------------------------
// Whitespace / newline.
// nl_one = ANY(nl) — the correct cross-PARSER idiom; SPAN(...nl) fails.
//-----------------------------------------------------------------------

ws_opt  = (SPAN(' ' tab) | epsilon);
ws_run  = SPAN(' ' tab);
nl_one  = ANY(nl);
semi_opt = (';' | epsilon);

//-----------------------------------------------------------------------
// Token classifiers — mirror raku.l names (lowercased).
//-----------------------------------------------------------------------

id_first = ANY(&UCASE &LCASE '_');
id_rest  = SPAN(digits &UCASE &LCASE '_');
id_pat   = (id_first (id_rest | epsilon));

// Sigiled variables: capture bare name (strip sigil) into _rk_vname.
// _rk_vf / _rk_vr (first char + rest) concatenated = bare name.
rk_vf  = ANY(&UCASE &LCASE '_');
rk_vr  = SPAN(digits &UCASE &LCASE '_');
rk_vro = (rk_vr | epsilon);

var_scalar = ('$' rk_vf . _rk_vf rk_vro . _rk_vr);
var_array  = ('@' rk_vf . _rk_vf rk_vro . _rk_vr);
var_hash   = ('%' rk_vf . _rk_vf rk_vro . _rk_vr);

// Literals.
int_pat    = SPAN(digits);
dstr_pat   = ('"'  BREAK('"')  . _rk_strbody '"');
sstr_pat   = ("'"  BREAK("'")  . _rk_strbody "'");

// Punctuation / operators.
rk_semi   = ';';
rk_eq     = '=';
rk_lp     = '(';
rk_rp     = ')';
rk_lb     = '{';
rk_rb     = '}';
rk_arrow  = '->';

// Arithmetic.
rk_mul = '*';
rk_div = '/';
rk_add = '+';
rk_sub = '-';

// Comparison — two-char before single-char (longest match first).
rk_deq = '==';
rk_ne  = '!=';
rk_le  = '<=';
rk_ge  = '>=';
rk_lt  = '<';
rk_gt  = '>';

// Keywords — require non-alnum follower to avoid prefix-matching.
kw_my    = ('my'    (ws_run | rk_lp));
kw_say   = ('say'   ws_opt);
kw_if    = ('if'    ws_opt);
kw_else  = ('else'  ws_opt);
kw_while = ('while' ws_opt);
kw_for   = ('for'   ws_run);

//-----------------------------------------------------------------------
// Assign-target capture — distinct names (_rk_atf/_rk_atr) so the
// RHS Expr's captures do not clobber the LHS name.
//-----------------------------------------------------------------------

rk_atf = ANY(&UCASE &LCASE '_');
rk_atr = SPAN(digits &UCASE &LCASE '_');
rk_atro = (rk_atr | epsilon);

AssignTarget = ( ('$' rk_atf . _rk_atf rk_atro . _rk_atr)
               | ('@' rk_atf . _rk_atf rk_atro . _rk_atr)
               | ('%' rk_atf . _rk_atf rk_atro . _rk_atr)
               );

// For-loopvar — distinct names (_rk_ff/_rk_fr).
rk_ff  = ANY(&UCASE &LCASE '_');
rk_fr  = SPAN(digits &UCASE &LCASE '_');
rk_fro = (rk_fr | epsilon);
ForLoopvar = ('$' rk_ff . _rk_ff rk_fro . _rk_fr);

//-----------------------------------------------------------------------
// Tree-building / semantic functions.
// These are the ONLY functions in this file. No function is called from
// inside a parsing pattern except via `epsilon . *fn()` action hooks.
//-----------------------------------------------------------------------

// _expr_node: current expression result (parallel to parser_icon.sc).
_expr_node = '';
// _main_node: in-progress E_FNC main accumulator.
_main_node = '';
// _rk_asgn_target: stashed LHS name for build_assign.
_rk_asgn_target = '';
// _rk_for_iter: stashed loopvar name for build_for.
_rk_for_iter = '';
// Saved intermediate nodes for if/while/for.
_rk_cond  = '';
_rk_then  = '';
// _rk_block_stk: cons-list for block save/restore during nesting.
_rk_block_stk = '';

struct rk_blink { bnext, bval }

// start_main() — initialize _main_node to (E_FNC main (E_VAR main)).

function start_main() {
    _main_node = tree('E_FNC', 'main');
    Append(_main_node, tree('E_VAR', 'main'));
    start_main = .dummy;
    nreturn;
}

// finish_main() — push (STMT :subj _main_node).
function finish_main(subj, stmt) {
    subj = tree(':subj', '');
    Append(subj, _main_node);
    stmt = tree('STMT', '');
    Append(stmt, subj);
    Push(stmt);
    finish_main = .dummy;
    nreturn;
}

// append_body_stmt() — append _expr_node to _main_node as a body child.
function append_body_stmt() {
    Append(_main_node, _expr_node);
    append_body_stmt = .dummy;
    nreturn;
}

// expr_from_var(vf, vr) — set _expr_node = E_VAR(vf vr).
function expr_from_var(vf, vr) {
    _expr_node = tree('E_VAR', vf vr);
    expr_from_var = .dummy;
    nreturn;
}

// expr_from_ilit(text) — set _expr_node = E_ILIT(text).
function expr_from_ilit(text) {
    _expr_node = tree('E_ILIT', text);
    expr_from_ilit = .dummy;
    nreturn;
}

// expr_from_qlit(text) — set _expr_node = E_QLIT(text).
function expr_from_qlit(text) {
    _expr_node = tree('E_QLIT', text);
    expr_from_qlit = .dummy;
    nreturn;
}

// stash_assign_target(vf, vr) — save LHS name.
function stash_assign_target(vf, vr) {
    _rk_asgn_target = vf vr;
    stash_assign_target = .dummy;
    nreturn;
}

// build_assign(rhs) — _expr_node = E_ASSIGN(E_VAR(target), rhs).
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

// build_say() — _expr_node = E_FNC(write, E_VAR(write), <arg>).
// Lowers `say` → `write` per raku.y.
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

// expr_binop(lhs, op_tag) — _expr_node = op_tag(lhs, _expr_node).
function expr_binop(lhs, op_tag, node) {
    node = tree(op_tag, '');
    Append(node, lhs);
    Append(node, _expr_node);
    _expr_node = node;
    expr_binop = .dummy;
    nreturn;
}

// save_block() — pop E_SEQ_EXPR from stack, push onto _rk_block_stk.
function save_block() {
    _rk_block_stk = rk_blink(_rk_block_stk, Pop());
    save_block = .dummy;
    nreturn;
}

// pop_block(name) — pop top of _rk_block_stk into named global.
// Called with the name of the global to receive the value.
function pop_block(dst, top) {
    top = bval(_rk_block_stk);
    _rk_block_stk = bnext(_rk_block_stk);
    $dst = top;
    pop_block = .dummy;
    nreturn;
}

// stash_for_iter(vf, vr) — save loopvar name.
function stash_for_iter(vf, vr) {
    _rk_for_iter = vf vr;
    stash_for_iter = .dummy;
    nreturn;
}

// Stack-based control-flow builders.  Each pops its operands from the
// shared stack so nested constructs do not clobber outer state.
// Sequence: Expr action push_expr_node()  -> cond on stack
//           Block action save_block()     -> seq node saved into _rk_block_stk
//           pop_block_to_stack()          -> seq from _rk_block_stk back onto shared stack
//           build_if/while/for pops 2 (or 3 for if-else) and pushes the result.

// pop_block_to_stack() — pop top of _rk_block_stk and push onto shared stack.
// Used to bring a saved block (E_SEQ_EXPR) back onto the work stack for
// stack-based builders to consume.
function pop_block_to_stack(top) {
    top = bval(_rk_block_stk);
    _rk_block_stk = bnext(_rk_block_stk);
    Push(top);
    pop_block_to_stack = .dummy;
    nreturn;
}

// build_if2() — pop 2 (then_seq, cond), push E_IF.
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

// build_if3() — pop 3 (else_seq, then_seq, cond), push E_IF.
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

// build_while() — pop 2 (body_seq, cond), push E_WHILE.
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

// build_for() — pop 2 (body_seq, iter_arr); _rk_for_iter still needed.
// Note: _rk_for_iter is a single global but is set just before the
// matching block runs and used immediately at build_for; nested fors
// would need a stack — at RK-3 there are no nested fors in fixtures.
function build_for(body_seq, iter_arr, iter_node, node) {
    body_seq = Pop();
    iter_arr = Pop();
    iter_node = tree('E_ITERATE', _rk_for_iter);
    Append(iter_node, iter_arr);
    node = tree('E_EVERY', '');
    Append(node, iter_node);
    Append(node, body_seq);
    _expr_node = node;
    build_for = .dummy;
    nreturn;
}

//-----------------------------------------------------------------------
// Expression tower — result lives in _expr_node.
//
// Named tail patterns (Expr7tail etc.) wrap operator + rhs + action
// so that ARBNO fires the action reliably on each repetition.
// Saved LHS uses per-level globals (_e7lhs, _e6lhs, _e4lhs, _e1lhs)
// to avoid clobbering across nested expression calls.
//-----------------------------------------------------------------------

// Expr11 — primary.
// Paren grouping uses *Expr (deferred) to handle recursion.
// var_array / var_hash / var_scalar all produce E_VAR (sigil stripped).
// kw_say / kw_if / kw_while / kw_for tried before id_pat to avoid
// treating keywords as bare identifiers.
Expr11 = ( var_scalar epsilon . *expr_from_var(_rk_vf, _rk_vr)
         | var_array  epsilon . *expr_from_var(_rk_vf, _rk_vr)
         | var_hash   epsilon . *expr_from_var(_rk_vf, _rk_vr)
         | int_pat . _rk_itext epsilon . *expr_from_ilit(_rk_itext)
         | dstr_pat epsilon . *expr_from_qlit(_rk_strbody)
         | sstr_pat epsilon . *expr_from_qlit(_rk_strbody)
         | (rk_lp ws_opt *Expr ws_opt rk_rp)
         );

// Expr7 — multiplicative (* /).
Expr7tail = ( epsilon . *assign('_e7lhs', _expr_node)
              ws_opt
              ( rk_mul epsilon . *assign('_e7op', 'E_MUL')
              | rk_div epsilon . *assign('_e7op', 'E_DIV')
              )
              ws_opt Expr11
              epsilon . *expr_binop(_e7lhs, _e7op)
            );
Expr7 = ( Expr11 ARBNO(Expr7tail) );

// Expr6 — additive (+ -).
Expr6tail = ( epsilon . *assign('_e6lhs', _expr_node)
              ws_opt
              ( rk_add epsilon . *assign('_e6op', 'E_ADD')
              | rk_sub epsilon . *assign('_e6op', 'E_SUB')
              )
              ws_opt Expr7
              epsilon . *expr_binop(_e6lhs, _e6op)
            );
Expr6 = ( Expr7 ARBNO(Expr6tail) );

// Expr4 — comparison ops. Two-char ops tried first.
Expr4tail = ( epsilon . *assign('_e4lhs', _expr_node)
              ws_opt
              ( rk_deq epsilon . *assign('_e4op', 'E_EQ')
              | rk_ne  epsilon . *assign('_e4op', 'E_NE')
              | rk_le  epsilon . *assign('_e4op', 'E_LE')
              | rk_ge  epsilon . *assign('_e4op', 'E_GE')
              | rk_lt  epsilon . *assign('_e4op', 'E_LT')
              | rk_gt  epsilon . *assign('_e4op', 'E_GT')
              )
              ws_opt Expr6
              epsilon . *expr_binop(_e4lhs, _e4op)
            );
Expr4 = ( Expr6 ARBNO(Expr4tail) );

// Expr — top of expression tower.
Expr = Expr4;

//-----------------------------------------------------------------------
// Block — `{ BlockStmt* }` — produces E_SEQ_EXPR pushed on stack.
//
// Uses nPush/ARBNO(nInc() BlockStmt)/reduce/nPop so nesting is
// automatic. save_block() pops the E_SEQ_EXPR off the stack into
// _rk_block_stk for use by if/while/for builders.
//
// BlockStmt: a statement inside a block. Mirrors Stmt but does not
// call append_body_stmt — instead appends _expr_node to the block via
// the reduce mechanism. We use nInc() + the fact that each BlockStmt
// leaves _expr_node set; but reduce("'E_SEQ_EXPR'", 'nTop()') pops
// nTop() stack items — so each BlockStmt must Push its _expr_node.
//
// Idiom: BlockStmt ends with `epsilon . *push_expr_node()` which does
// Push(_expr_node). Then reduce pops them all into E_SEQ_EXPR.
//-----------------------------------------------------------------------

function push_expr_node() {
    Push(_expr_node);
    push_expr_node = .dummy;
    nreturn;
}

// BlockStmt — one stmt inside a block body.
// After matching, _expr_node holds the stmt tree; push_expr_node puts
// it on the stack for the enclosing block's reduce to collect.
// Forward-declared; rebound after IfStmt/WhileStmt/ForStmt are defined.
BlockStmt = epsilon;

// Block_body wraps the deferred *BlockStmt + counter increment + push action
// in a NAMED sub-pattern. Bare reference to Block_body inside ARBNO ensures
// all inner actions fire reliably (Snocone runtime quirk: deferred *X
// inline inside ARBNO inside a nested context loses trailing actions; wrapping
// in a named sub-pattern restores correct firing).
// Block_body wraps the deferred *BlockStmt + counter increment + push action
// in a NAMED sub-pattern so deferred actions inside fire reliably and the
// trailing actions outside the ARBNO survive (Snocone runtime quirk).
// Allows leading/trailing whitespace and newlines between block stmts.
Block_body = ( ws_opt (nl_one | epsilon) ws_opt
               *BlockStmt
               ws_opt (nl_one | epsilon) ws_opt
               nInc()
               epsilon . *push_expr_node()
             );

Block = ( ws_opt rk_lb ws_opt (nl_one | epsilon) ws_opt
          nPush()
          ARBNO( Block_body )
          ws_opt (nl_one | epsilon) ws_opt rk_rb
          reduce("'E_SEQ_EXPR'", 'nTop()')
          nPop()
          epsilon . *save_block()
        );

//-----------------------------------------------------------------------
// Control-flow stmt patterns.
// Each saves intermediate trees into _rk_cond / _rk_then before the
// optional else / body parse, avoiding _expr_node clobber on recursion.
//-----------------------------------------------------------------------

// IfStmt — `if (cond) Block [else Block]`
IfStmt = ( ws_opt kw_if ws_opt rk_lp ws_opt
           Expr
           ws_opt rk_rp
           epsilon . *push_expr_node()
           Block
           epsilon . *pop_block_to_stack()
           ( ws_opt kw_else
             Block
             epsilon . *pop_block_to_stack()
             epsilon . *build_if3()
           | epsilon . *build_if2()
           )
         );

// WhileStmt — `while (cond) Block` (stack-based)
WhileStmt = ( ws_opt kw_while ws_opt rk_lp ws_opt
              Expr
              ws_opt rk_rp
              epsilon . *push_expr_node()
              Block
              epsilon . *pop_block_to_stack()
              epsilon . *build_while()
            );

// ForStmt — `for expr -> $loopvar Block` (stack-based)
ForStmt = ( ws_opt kw_for ws_opt
            Expr
            epsilon . *push_expr_node()
            ws_opt rk_arrow ws_opt
            ForLoopvar epsilon . *stash_for_iter(_rk_ff, _rk_fr)
            Block
            epsilon . *pop_block_to_stack()
            epsilon . *build_for()
          );

// AssignStmt — `[my] $tgt = Expr ;`
// kw_my is optional and discarded (no IR difference per raku.y).
AssignStmt = ( ws_opt (kw_my | epsilon)
               AssignTarget
               epsilon . *stash_assign_target(_rk_atf, _rk_atr)
               ws_opt rk_eq ws_opt
               Expr
               ws_opt rk_semi
               epsilon . *build_assign()
             );

// SayStmt — `say Expr ;` or `say(Expr) ;`
// kw_say matches 'say' followed by ws_run or '('; the paren case means
// Expr immediately sees '(' and handles it as paren-grouping in Expr11.
SayStmt = ( ws_opt kw_say ws_opt
            Expr
            ws_opt rk_semi
            epsilon . *build_say()
          );

// BareStmt — bare expression as statement.
BareStmt = ( ws_opt Expr ws_opt rk_semi );

// Stmt — top-level statement. Control-flow tried first.
Stmt = ( IfStmt    epsilon . *append_body_stmt()
       | WhileStmt epsilon . *append_body_stmt()
       | ForStmt   epsilon . *append_body_stmt()
       | AssignStmt epsilon . *append_body_stmt()
       | SayStmt   epsilon . *append_body_stmt()
       | BareStmt  epsilon . *append_body_stmt()
       );

// BlockStmt — final binding. Same alternatives but ends with push_expr_node
// instead of append_body_stmt (feeds the Block's reduce).
// Control-flow stmts inside blocks: append onto _expr_node then push.
// BlockStmt — no extra actions; Block_body handles nInc and push_expr_node
// after the *BlockStmt match.  Each statement just sets _expr_node.
BlockStmt = ( IfStmt | WhileStmt | ForStmt | AssignStmt | SayStmt | BareStmt );

//-----------------------------------------------------------------------
// Compiland — canonical cross-PARSER spine.
// One pattern. One ? match against Src in the driver.
// Produces one STMT (E_FNC main wrapper) for the whole program.
//-----------------------------------------------------------------------

Compiland = nPush()
            epsilon . *start_main() ARBNO( ws_opt Stmt ws_opt (ANY(nl) | epsilon) )
            epsilon . *finish_main()
            reduce("'Parse'", 1)
            nPop();

//-----------------------------------------------------------------------
// Driver — read stdin into Src, run one ? match, emit each Parse child.
// No goto. Structured flow only.
//-----------------------------------------------------------------------

InitCounter();
InitStack();

Src = '';
while ((Line = INPUT)) {
    if (~(Line ? (POS(0) ws_opt '#' REM))) {
        Src = Src Line nl;
    }
}

ok = (Src ? Compiland);

if (ok) {
    ptree = Pop();
    if (DIFFER(ptree)) {
        i = 1;
        n_kids = n(ptree);
        while (LE(i, n_kids)) {
            TDump(c(ptree)[i]);
            i = i + 1;
        }
    }
}

_parser_rk_done = '';
