// parser_icon.sc — PARSER-IC: Icon frontend in Snocone.
//
// Reads whole Icon source from stdin into Src, then runs the canonical
// `Compiland` PATTERN once over Src to build the IR tree on the shared
// stack via Shift/Reduce/helpers, then dumps each tree via TDump.
// After whitespace normalization the dumped form is byte-identical to
// scrip's existing Icon-frontend `--dump-ir` output — that's the
// PARSER-IC gate.
//
// Naming convention (PARSER-IC-INFRA-1, INFRA-2):
//   Pattern names are the CamelCase form of the canonical Icon yacc
//   nonterminals from `corpus/programs/ebnf/icon-sp.ebnf` (verbatim
//   translation of upstream gtownsend/icon src/h/grammar.h, public
//   domain — see `corpus/programs/ebnf/README.md`).
//
//   Program / Decls / Decl / Proc / Prochead / Procbody / Nexpr /
//   Expr / Expr1a / Expr1 / Expr2 / Expr3 / ... / Expr11 / Literal /
//   Exprlist / Compound / ...
//
// Snocone patterns can't left-recurse, so left-recursive productions
// in the BNF become `Exprn = Expr_higher ARBNO(op Expr_higher)` per
// JCON's parse_exprN / parse_expr11suffix — see
// `corpus/programs/ebnf/icon-references/NOTES.md`.
//
// IC-3 surface (IC-2 + comparison ops + if/then/else + while/do):
//   Compiland = nPush() ARBNO( Proc ) reduce('Parse', 'nTop()') nPop();
//   Proc      = Prochead Procbody 'end';
//   Prochead  = 'procedure' main_name '(' ')';     // IC-3: only main()
//   Procbody  = ARBNO(Stmt);                       // each Stmt → emit
//   Stmt      = Expr ws_opt semi_opt (nl_one|RPOS(0))
//             | Comment | Blank;
//   Expr      = Expr1;
//   Expr1     = Expr2 ASSIGN Expr1                 // right-assoc
//             | Expr2;
//   Expr2     = Expr4;                             // IC-3 skips 3
//   Expr4     = Expr6 ARBNO(cmp_op Expr6);         // IC-3: = ~= < <= > >=
//   Expr6     = Expr7 ARBNO((PLUS|MINUS) Expr7);
//   Expr7     = Expr11 ARBNO((STAR|SLASH) Expr11); // IC-3 skips 8/9/10
//   Expr11    = if expr then expr [else expr]      // IC-3 NEW
//             | while expr do expr                 // IC-3 NEW
//             | IDENT '(' Exprlist ')'             // function invoke
//             | Literal
//             | IDENT;                             // bare var
//   Literal   = INTLIT | STRINGLIT;
//   Exprlist  = Expr (',' Expr)*;                  // IC-3: 1 arg only

&FULLSCAN = 1;

//-----------------------------------------------------------------------
// Token-class atom recognizers — Icon surface syntax.
//-----------------------------------------------------------------------

ws_opt = (SPAN(' ' tab) | epsilon);
ws_run = SPAN(' ' tab);
nl_one = ANY(nl);

id_first = ANY(&UCASE &LCASE '_');
id_rest  = SPAN(digits &UCASE &LCASE '_');
id_pat   = (id_first (id_rest | epsilon));

int_pat  = SPAN(digits);

dstr_pat = ('"' BREAK('"') . _atom_strbody '"');
str_pat  = dstr_pat;

semi_opt = (';' | epsilon);

//-----------------------------------------------------------------------
// Operator-token patterns — named like beauty.sc's $'op' variables.
// Each carries optional whitespace on both sides per the Icon surface.
//-----------------------------------------------------------------------

$'|'  = (ws_opt '|'  ws_opt);
$':=' = (ws_opt ':=' ws_opt);
$'?'  = (ws_opt '?'  ws_opt);
$','  = (ws_opt ','  ws_opt);
$'+'  = (ws_opt '+'  ws_opt);
$'-'  = (ws_opt '-'  ws_opt);
$'*'  = (ws_opt '*'  ws_opt);
$'/'  = (ws_opt '/'  ws_opt);
$'<=' = (ws_opt '<=' ws_opt);
$'>=' = (ws_opt '>=' ws_opt);
$'~=' = (ws_opt '~=' ws_opt);
$'<'  = (ws_opt '<'  ws_opt);
$'>'  = (ws_opt '>'  ws_opt);
$'='  = (ws_opt '='  ws_opt);

//-----------------------------------------------------------------------
// Tree-building helpers.  These encode the existing-frontend tree
// shape; they are correct domain logic and survive INFRA-2 unchanged.
//-----------------------------------------------------------------------

// Build an atom expression node from kind+text.  Used as the base of
// the expression tower — Expr11 sets _expr_node to this.
function expr_from_atom(kind, txt) {
    _expr_node = tree(kind, txt);
    expr_from_atom = .dummy;
    nreturn;
}

// Build a binary-op tree node combining two expression nodes.  Used
// by Expr1 (ASSIGN), Expr6 (PLUS/MINUS), Expr7 (STAR/SLASH).
function expr_binop(lop, op_tag, rop) {
    _expr_node = Tree(op_tag, '', 2, lop, rop);
    expr_binop = .dummy;
    nreturn;
}

// Build a function-invocation tree node — Expr11 's IDENT '(' arg ')'
// branch.  scrip's existing frontend wraps invocation as
// (E_FNC (E_VAR fname) arg1 arg2 ...) — same E_FNC tag the procedure
// uses.  Kept as the legacy single-arg path is removed in IC-4 in
// favor of the start/append/finish trio below; this name is reserved
// for cross-pollination with parser_snobol4.sc 's `expr_invoke` wart.

// IC-4: Variadic invocation construction.  The arg-build sequence
// inside Expr11 needs to nest (think `write(double(5))`), so the
// in-progress invocation node CANNOT live in a global slot — a nested
// `double(5)` would overwrite the outer `write(...)`'s slot.  Use a
// dedicated stack `_ic_inv_stack` (a Snocone link()-style cons list
// keyed off the global $'@II'), parallel to the shared $'@S' Push/Pop
// stack used by Compiland for STMT shifts.  Pushing on entry to '(',
// popping on exit at ')'.

struct ic_ilink { next, ival }

function ic_inv_push(node) {
    $'@II' = ic_ilink($'@II', node);
    ic_inv_push = .dummy;
    nreturn;
}

function ic_inv_top() {
    if (~DIFFER($'@II')) { freturn; }
    ic_inv_top = ival($'@II');
    return;
}

function ic_inv_replace_top(node) {
    if (~DIFFER($'@II')) { freturn; }
    ival($'@II') = node;
    ic_inv_replace_top = .dummy;
    nreturn;
}

function ic_inv_pop() {
    if (~DIFFER($'@II')) { freturn; }
    ic_inv_pop = ival($'@II');
    $'@II' = next($'@II');
    return;
}

// Seed a new in-progress invocation onto the inv-stack — `(E_FNC
// (E_VAR fname))`.  Subsequent *append calls will Append arg children
// onto the top-of-stack node.
function expr_invoke_begin(fname) {
    ic_inv_push(Tree('E_FNC', '', 1, tree('E_VAR', fname)));
    expr_invoke_begin = .dummy;
    nreturn;
}

// Append _expr_node (the just-parsed arg) onto the top-of-stack
// invocation node.  Called after each comma-separated Expr.
function expr_invoke_arg() {
    ic_inv_replace_top(Append(ic_inv_top(), _expr_node));
    expr_invoke_arg = .dummy;
    nreturn;
}

// Pop the in-progress invocation off the stack and install it as the
// current _expr_node.  Called after the closing ')'.
function expr_invoke_end() {
    _expr_node = ic_inv_pop();
    expr_invoke_end = .dummy;
    nreturn;
}

// IC-4: Build an E_RETURN node.  `return;` produces (E_RETURN) — 0
// children; `return expr;` produces (E_RETURN expr) — 1 child carrying
// the value expression.  Two helpers to keep the deferred-action call
// sites simple.
function expr_return0() {
    _expr_node = Tree('E_RETURN', '', 0);
    expr_return0 = .dummy;
    nreturn;
}

function expr_return1(val) {
    _expr_node = Tree('E_RETURN', '', 1, val);
    expr_return1 = .dummy;
    nreturn;
}

// IC-5: Alternation construction.  Like invocation, alternation can
// nest — e.g. `(1|2) + (3|4)` enters two separate E_ALTERNATE builds —
// so we use a dedicated stack `$'@AL'` (struct ic_alink), parallel to
// the invocation stack `$'@II'`.  Each Expr3 occurrence pushes a
// "build context" onto this stack at first '|' encounter; subsequent
// '|'s within the same Expr3 append to the top-of-stack node; the
// closing of the Expr3 pops the stack and installs as _expr_node.

struct ic_alink { next, aval }

function ic_alt_push(node) {
    $'@AL' = ic_alink($'@AL', node);
    ic_alt_push = .dummy;
    nreturn;
}

function ic_alt_top() {
    if (~DIFFER($'@AL')) { freturn; }
    ic_alt_top = aval($'@AL');
    return;
}

function ic_alt_replace_top(node) {
    if (~DIFFER($'@AL')) { freturn; }
    aval($'@AL') = node;
    ic_alt_replace_top = .dummy;
    nreturn;
}

function ic_alt_pop() {
    if (~DIFFER($'@AL')) { freturn; }
    ic_alt_pop = aval($'@AL');
    $'@AL' = next($'@AL');
    return;
}

// IC-5: Combined begin-or-append helper.  At the FIRST '|' in an
// Expr3 chain, _e3built is empty → begin (push fresh E_ALTERNATE).
// At later '|'s in the same chain, _e3built is '1' → append onto
// top-of-stack.  Caller passes the saved LHS (relevant only on first
// call) and the just-parsed RHS in _expr_node.
function expr_alt_step(lhs) {
    expr_alt_step = .dummy;
    if (DIFFER(_e3built)) {
        // Already building — append RHS (current _expr_node).
        ic_alt_replace_top(Append(ic_alt_top(), _expr_node));
        nreturn;
    }
    // First '|' — push (E_ALTERNATE lhs rhs) onto alt-stack.
    ic_alt_push(Tree('E_ALTERNATE', '', 2, lhs, _expr_node));
    _e3built = '1';
    nreturn;
}

// IC-5: At end of Expr3, if anything was pushed, pop and install as
// _expr_node; otherwise leave _expr_node alone (no alternation).
// Always restores _e3built to its caller's value via the saved
// _e3built_saved variable — see Expr3's enter/leave bookkeeping.
function expr_alt_finish() {
    expr_alt_finish = .dummy;
    if (DIFFER(_e3built)) {
        _expr_node = ic_alt_pop();
    }
    _e3built = _e3built_saved;
    nreturn;
}

// IC-5: Save caller's _e3built (alt-build flag) to _e3built_saved
// before entering a new Expr3 frame — restored by expr_alt_finish().
// The save/restore lets nested Expr3 calls (inside *Expr inside
// Expr11 control-flow forms) coexist with an outer alternation
// without confusing each other's "did I see a |?" flags.
function expr_alt_enter() {
    _e3built_saved = _e3built;
    _e3built = '';
    expr_alt_enter = .dummy;
    nreturn;
}

// Reset the per-procedure accumulator to (E_FNC <name> (E_VAR <name>)).
// Called from Prochead.  IC-4 generalized: arbitrary procedure name
// (was hardcoded to 'main' in IC-2/IC-3).  Parameters are appended
// onto _proc_node by *append_proc_param() during arglist parsing.
function start_proc(pname) {
    _proc_node = Tree('E_FNC', pname, 1, tree('E_VAR', pname));
    start_proc = .dummy;
    nreturn;
}

// Append a parameter E_VAR node to the current procedure's _proc_node.
// Called from Prochead during arglist parsing — each comma-separated
// IDENT in `procedure f(a, b, c)` produces one append.  Body statements
// (which call *append_body_stmt) come after the params, matching the
// existing frontend's tree shape: (E_FNC f (E_VAR f) (E_VAR a) (E_VAR b)
// <body...>).
function append_proc_param(pname) {
    _proc_node = Append(_proc_node, tree('E_VAR', pname));
    append_proc_param = .dummy;
    nreturn;
}

// Append the just-built _expr_node as a body statement under the
// current procedure.  Called from Stmt after Expr matches.
function append_body_stmt() {
    _proc_node = Append(_proc_node, _expr_node);
    append_body_stmt = .dummy;
    nreturn;
}

// Push the assembled (STMT :subj <_proc_node>) onto the shared stack.
// Called from Proc after the matching 'end'.  IC-4: renamed from
// finish_proc_main since procedures can have arbitrary names now.
function finish_proc() {
    Push(Tree('STMT', '', 1, Tree(':subj', '', 1, _proc_node)));
    finish_proc = .dummy;
    nreturn;
}

// Build an E_ASSIGN tree node from a simple-identifier LHS and an
// already-built RHS expression node.  Used by Expr1's lookahead-
// committed assign branch — we have the LHS name as text (not yet
// wrapped in an E_VAR node), so wrap it here.
function expr_assign_id(lhs_name, rhs) {
    _expr_node = Tree('E_ASSIGN', '', 2, tree('E_VAR', lhs_name), rhs);
    expr_assign_id = .dummy;
    nreturn;
}

// Build an E_IF node with 2 children (condition + then-branch).
// Called from If after `if cond then texpr` when no else follows.
function expr_if2(cond, then_e) {
    _expr_node = Tree('E_IF', '', 2, cond, then_e);
    expr_if2 = .dummy;
    nreturn;
}

// Build an E_IF node with 3 children (condition + then + else).
// Called from If when an else-branch is present.
function expr_if3(cond, then_e, else_e) {
    _expr_node = Tree('E_IF', '', 3, cond, then_e, else_e);
    expr_if3 = .dummy;
    nreturn;
}

// Build an E_WHILE node with 2 children (condition + body).
// Called from While after `while cond do body`.
function expr_while2(cond, body) {
    _expr_node = Tree('E_WHILE', '', 2, cond, body);
    expr_while2 = .dummy;
    nreturn;
}

// IC-6: Build an E_EVERY node with 1 child (no do-clause).
// Called from Expr11's every branch when no `do` follows.
function expr_every1(gen) {
    _expr_node = Tree('E_EVERY', '', 1, gen);
    expr_every1 = .dummy;
    nreturn;
}

// IC-6: Build an E_EVERY node with 2 children (generator + body).
// Called from Expr11's every branch when `do body` follows.
function expr_every2(gen, body) {
    _expr_node = Tree('E_EVERY', '', 2, gen, body);
    expr_every2 = .dummy;
    nreturn;
}

// IC-6: Build an E_SCAN node — uses a private link()-stack ($'@SC') to
// hold subject expressions across the body parse, since the body parse
// recursively re-enters Expr1a and would clobber a single global slot
// when the source has nested scans (`a ? b ? c`).  Same shape as the
// invocation stack ($'@II') and alternation stack ($'@AL').
struct ic_sclink { next, sval }

function ic_scan_push(subj) {
    $'@SC' = ic_sclink($'@SC', subj);
    ic_scan_push = .dummy;
    nreturn;
}

function ic_scan_finish(body) {
    _expr_node = Tree('E_SCAN', '', 2, sval($'@SC'), body);
    $'@SC' = next($'@SC');
    ic_scan_finish = .dummy;
    nreturn;
}

// IC-7: E_SEQ_EXPR construction for `(e1; e2; ...)` and `{ s1; s2 }`.
// The existing frontend builds E_SEQ_EXPR and unwraps single-child seqs.
// Nesting is possible (scan body can itself be a paren-seq), so we use a
// dedicated link()-stack $'@SQ' (struct ic_sqlink) parallel to $'@II'/$'@AL'.
// Each `(` or `{` pushes a fresh accumulator; each `;` or `}` appends or
// finalizes.  On finalize: if exactly 1 child → unwrap (install child as
// _expr_node directly); else → build E_SEQ_EXPR node.

struct ic_sqlink { next, sqval, sqn }

function ic_seq_push() {
    $'@SQ' = ic_sqlink($'@SQ', ARRAY('1:32'), 0);
    ic_seq_push = .dummy;
    nreturn;
}

function ic_seq_append() {
    sqn($'@SQ') = sqn($'@SQ') + 1;
    sqval($'@SQ')[sqn($'@SQ')] = _expr_node;
    ic_seq_append = .dummy;
    nreturn;
}

function ic_seq_finish(arr, n, node, i) {
    arr = sqval($'@SQ');
    n   = sqn($'@SQ');
    $'@SQ' = next($'@SQ');
    if (EQ(n, 1)) {
        _expr_node = arr[1];
        ic_seq_finish = .dummy;
        nreturn;
    }
    node = Tree('E_SEQ_EXPR', '', n);
    i = 1;
    while (LE(i, n)) {
        node = Append(node, arr[i]);
        i = i + 1;
    }
    _expr_node = node;
    ic_seq_finish = .dummy;
    nreturn;
}

//-----------------------------------------------------------------------
// Pattern builders — $'name' variables hold deferred-action patterns.
// Named like beauty.sc's $'op' tokens; used bare (no *) in patterns so
// deferred calls fire reliably inside ARBNO(NamedPattern).
//
// Convention: $'save_X' saves _expr_node into _X before it is clobbered
// by a recursive Expr call.  $'do_X' fires a zero-argument side-effect.
// $'atom_X' builds a leaf node of kind X from the most-recent capture.
// $'binop_X' folds the running LHS/op/RHS triple into _expr_node.
// $'op_X' saves the operator tag constant for the next binop fold.
//-----------------------------------------------------------------------

// --- Invoke side-effects ---
$'invoke_arg'   = (epsilon . *expr_invoke_arg());
$'invoke_end'   = (epsilon . *expr_invoke_end());
$'append_stmt'  = (epsilon . *append_body_stmt());
$'alt_enter'    = (epsilon . *expr_alt_enter());
$'alt_finish'   = (epsilon . *expr_alt_finish());
$'finish_proc'  = (epsilon . *finish_proc());

// --- Atom builders (use most-recent dot-capture variable) ---
$'atom_QLIT'    = (epsilon . *expr_from_atom('E_QLIT', _atom_strbody));
$'atom_ILIT'    = (epsilon . *expr_from_atom('E_ILIT', _atom_text));
$'atom_VAR'     = (epsilon . *expr_from_atom('E_VAR',  _atom_text));

// --- Return builders ---
$'return0'      = (epsilon . *expr_return0());
$'return1'      = (epsilon . *expr_return1(_expr_node));

// --- Per-level LHS savers (each level has its own slot) ---
$'save_e3lhs'   = (epsilon . *assign('_e3lhs_saved', _expr_node));
$'save_e4lhs'   = (epsilon . *assign('_e4lhs',       _expr_node));
$'save_e6lhs'   = (epsilon . *assign('_e6lhs',       _expr_node));
$'save_e7lhs'   = (epsilon . *assign('_e7lhs',       _expr_node));

// --- Operator tag savers for binary fold ---
$'op_EQ'        = (epsilon . *assign('_e4op', 'E_EQ'));
$'op_NE'        = (epsilon . *assign('_e4op', 'E_NE'));
$'op_LT'        = (epsilon . *assign('_e4op', 'E_LT'));
$'op_LE'        = (epsilon . *assign('_e4op', 'E_LE'));
$'op_GT'        = (epsilon . *assign('_e4op', 'E_GT'));
$'op_GE'        = (epsilon . *assign('_e4op', 'E_GE'));
$'op_ADD'       = (epsilon . *assign('_e6op', 'E_ADD'));
$'op_SUB'       = (epsilon . *assign('_e6op', 'E_SUB'));
$'op_MUL'       = (epsilon . *assign('_e7op', 'E_MUL'));
$'op_DIV'       = (epsilon . *assign('_e7op', 'E_DIV'));

// --- Binary fold builders (consume LHS slot + op slot + current _expr_node) ---
$'binop_cmp'    = (epsilon . *expr_binop(_e4lhs, _e4op, _expr_node));
$'binop_add'    = (epsilon . *expr_binop(_e6lhs, _e6op, _expr_node));
$'binop_mul'    = (epsilon . *expr_binop(_e7lhs, _e7op, _expr_node));

// --- Alternation step (saves LHS before Expr4 fires, then folds) ---
$'alt_step'     = (epsilon . *expr_alt_step(_e3lhs_saved));

// --- Control-flow node savers ---
$'save_ic_cond' = (epsilon . *assign('_ic_cond', _expr_node));
$'save_ic_then' = (epsilon . *assign('_ic_then', _expr_node));
$'save_ic_wcond'= (epsilon . *assign('_ic_wcond', _expr_node));
$'save_ic_evgen'= (epsilon . *assign('_ic_evgen', _expr_node));

// --- Control-flow node builders ---
$'if2'          = (epsilon . *expr_if2(_ic_cond, _ic_then));
$'if3'          = (epsilon . *expr_if3(_ic_cond, _ic_then, _expr_node));
$'while2'       = (epsilon . *expr_while2(_ic_wcond, _expr_node));
$'every1'       = (epsilon . *expr_every1(_ic_evgen));
$'every2'       = (epsilon . *expr_every2(_ic_evgen, _expr_node));

// --- Assign builder ---
$'assign_id'    = (epsilon . *expr_assign_id(_e1lhs_name, _expr_node));

// --- Scan builders ---
$'scan_push'    = (epsilon . *ic_scan_push(_expr_node));
$'scan_finish'  = (epsilon . *ic_scan_finish(_expr_node));

// --- Sequence / compound builders (IC-7) ---
$'seq_push'     = (epsilon . *ic_seq_push());
$'seq_append'   = (epsilon . *ic_seq_append());
$'seq_finish'   = (epsilon . *ic_seq_finish());

// --- Invocation opener (uses _ic_fname captured just before '(') ---
$'invoke_begin' = (epsilon . *expr_invoke_begin(_ic_fname));

// --- Proc helpers ---
$'start_proc'   = (epsilon . *start_proc(_ic_pname));
$'append_param' = (epsilon . *append_proc_param(_ic_pname));

//-----------------------------------------------------------------------
// Expression tower — canonical names from icon-sp.ebnf.
//
// Each Exprn pattern leaves the result tree node in _expr_node.  The
// LL(1) `Expr_higher ARBNO(op Expr_higher)` shape uses the helper
// _expr_lhs to remember the running left operand across iterations.
//-----------------------------------------------------------------------

// IC-4: Argument-list components for invocation.  Mirrors the
// procedure-definition Arglist/ParamRest pair, but each piece parses
// a full Expr (not just an identifier) and appends onto the
// top-of-stack in-progress invocation via $'invoke_arg'.
//
// A separately-named ArgFirst / ArgRest pattern is used so deferred
// actions inside ARBNO fire reliably (PARSER-IC-INFRA-2 lesson).

ArgFirst = ( ws_opt *Expr  $'invoke_arg' );
ArgRest  = ( $','   *Expr  $'invoke_arg' );

InvokeArgs = ( ArgFirst ARBNO(ArgRest) | epsilon );

// Expr11 — primary.  IC-3 adds control-flow primaries (if/while).
//
// Control-flow forms are tried first because they start with reserved
// words (`if`, `while`) that id_pat would otherwise greedily accept as
// a bare identifier.  The function-invocation alternative is tried next
// for the same reason as before.
//
// `if cond then texpr [else fexpr]`:
//   — Single pattern; `else` is optional via `(else_branch | epsilon)`.
//     When else is present, the 3-child build helper fires; otherwise
//     the 2-child build helper fires.  Saved into _ic_cond / _ic_then
//     (and _ic_else when present) to avoid clobbering from recursive
//     Expr calls within the branches.
//   — Avoids the deeper-backtrack hazard of matching the entire
//     if-expression twice (once with else, once without): backtracking
//     across deferred actions in this runtime can leave _expr_node
//     pointing at a stale subtree.
//
// `while cond do body`:
//   — Saved into _ic_wcond / _ic_wbody.
//
// IC-4 invocation: `IDENT '(' (Expr (',' Expr)*)? ')'` — variadic.
// The in-progress invocation node lives on a dedicated invocation
// stack ($'@II'), pushed at '(' and popped at ')'.  This supports
// nested calls like `write(double(5))` without clobbering the outer
// in-progress node when the inner call's $'invoke_begin' fires.
//
// IC-7 paren: `( expr )` — transparent grouping, no new tree node.
//   `( e1 ; e2 ; ... )` — E_SEQ_EXPR, single-child unwraps.
//   Committed on `(` so no backtrack hazard.  Uses $'@SQ' stack so
//   nested parens (scan bodies, call args) don't clobber each other.
//
// IC-7 compound: `{ stmt; stmt; ... }` — same E_SEQ_EXPR shape as
//   paren-seq but delimited by braces and using statement syntax (`;`
//   may be implicit at newline).  Single-child unwraps per frontend.

// SeqRest — `;` followed by another Expr in a paren-sequence.
// Separately named so ARBNO fires deferred actions reliably.
SeqRest = ( ws_opt ';' ws_opt  *Expr  $'seq_append' );

// Paren — `( expr [; expr]* )` primary.
// Push a fresh seq accumulator, parse first Expr and append it, then
// loop on `;`-separated Exprs, then finalize (unwrap if 1 child).
Paren = ( ws_opt '('  $'seq_push'
          ws_opt *Expr  $'seq_append'
          ARBNO(SeqRest)
          ws_opt ')'  $'seq_finish'
        );

// CompoundItem — one semicolon-terminated expression inside `{ }`.
// Uses Expr (full expression tower) then optional `;`.
CompoundItem = ( ws_opt *Expr ws_opt semi_opt ws_opt  $'seq_append' );

// Compound — `{ expr [; expr]* }` block.
// Same push/append/finish as Paren but brace-delimited and allows
// trailing whitespace / newlines between items.
Compound = ( ws_opt '{'  $'seq_push'
             ws_opt
             ARBNO(CompoundItem)
             ws_opt '}'  $'seq_finish'
           );

Expr11 = ( ws_opt 'if'    ws_run *Expr  $'save_ic_cond'
                          ws_opt 'then' ws_run *Expr  $'save_ic_then'
                          ( ws_opt 'else' ws_run *Expr  $'if3'
                          | $'if2'
                          )
         | ws_opt 'while' ws_run *Expr  $'save_ic_wcond'
                          ws_opt 'do'   ws_run *Expr  $'while2'
         | ws_opt 'every' ws_run *Expr  $'save_ic_evgen'
                          ( ws_opt 'do' ws_run *Expr  $'every2'
                          | $'every1'
                          )
         | id_pat . _ic_fname  ws_opt '('  $'invoke_begin'
                               InvokeArgs
                               ws_opt ')'  $'invoke_end'
         | Paren
         | Compound
         | str_pat              $'atom_QLIT'
         | int_pat . _atom_text $'atom_ILIT'
         | id_pat  . _atom_text $'atom_VAR'
         );

// Expr7 — multiplicative.  IC-2 ops: STAR (*), SLASH (/).
// LL(1) decomposition: Expr11 (op Expr11)*
//
// The (op Expr11) iteration body is a separate named pattern Expr7tail
// because deferred actions inline inside ARBNO(...) aren't reliable
// in this runtime — but ARBNO(NamedPattern) IS reliable, as long as
// NamedPattern is referenced bare (no `*` indirection).  Same pattern
// as parser_snobol4.sc's `ARBNO( ... (End | Assign | AtomStmt) ... )`.
//
// Expr7-specific saved-LHS uses _e7lhs (not a generic name) because
// SCRIP/Snocone variables are global and Expr1's recursive call must
// not have its own _expr_lhs clobbered by Expr6/Expr7 helpers.

Expr7tail = ( $'save_e7lhs'
              ws_opt  ( $'*'  $'op_MUL'
                      | $'/'  $'op_DIV'
                      )  ws_opt
              Expr11  $'binop_mul'
            );

Expr7 = ( Expr11 ARBNO(Expr7tail) );

// Expr6 — additive.  IC-2 ops: PLUS (+), MINUS (-).
// LL(1) decomposition: Expr7 (op Expr7)*

Expr6tail = ( $'save_e6lhs'
              ws_opt  ( $'+'  $'op_ADD'
                      | $'-'  $'op_SUB'
                      )  ws_opt
              Expr7   $'binop_add'
            );

Expr6 = ( Expr7 ARBNO(Expr6tail) );

// Expr4 — comparison operators.  IC-3 subset: NMEQ (=), NMNE (~=),
// NMLT (<), NMLE (<=), NMGT (>), NMGE (>=).
// LL(1) decomposition: Expr6 (op Expr6)*
//
// Note: `<=` and `>=` must be tried BEFORE `<` and `>` to avoid
// greedily consuming just the first character when the two-char form
// is present.  The alternation tries longest match first.
//
// Expr4-specific saved-LHS uses _e4lhs (distinct from _e1lhs/_e6lhs/_e7lhs).

Expr4tail = ( $'save_e4lhs'
              ws_opt  ( $'<='  $'op_LE'
                      | $'>='  $'op_GE'
                      | $'~='  $'op_NE'
                      | $'<'   $'op_LT'
                      | $'>'   $'op_GT'
                      | $'='   $'op_EQ'
                      )  ws_opt
              Expr6   $'binop_cmp'
            );

Expr4 = ( Expr6 ARBNO(Expr4tail) );

// IC-5: Expr3 — alternation `e1 | e2 | e3 | ...`.  Per the canonical
// grammar `expr3 ← expr4 | expr4 BAR expr3` (right-recursive).  The
// existing frontend flattens nested alternations into a single
// (E_ALTERNATE a b c d) node — so PAT-IC must do the same, not
// produce nested (E_ALTERNATE a (E_ALTERNATE b ...)) trees.
//
// LL(1) shape: parse one Expr4, then ARBNO('|' Expr4).  Each '|' iter
// fires $'alt_step': on first '|' it pushes a fresh
// (E_ALTERNATE LHS RHS) onto the alt-stack and flips _e3built; on
// subsequent '|'s it appends onto top-of-stack.
//
// $'alt_enter' runs once at Expr3 entry, saves the caller's
// _e3built (which may be '1' if an outer Expr3 is in progress) and
// resets ours to ''.  $'alt_finish' runs once at Expr3 exit,
// pops the alt-stack if we pushed (installing the E_ALTERNATE as
// _expr_node), and restores caller's _e3built.

Expr3tail = ( $'|'  $'save_e3lhs'  Expr4  $'alt_step' );

Expr3 = ( $'alt_enter'  Expr4  ARBNO(Expr3tail)  $'alt_finish' );

// Expr2 — generation (`to`/`by`).  IC-5: still no `to`/`by`, so
// Expr2 collapses to Expr3 (which in turn handles alternation and
// falls through to Expr4 → Expr6 → Expr7 → Expr11).
Expr2 = Expr3;

// Expr1 — assignment.  Right-associative per the canonical grammar.
// IC-3 only handles `:=` (ASSIGN), not the augmented forms.
//
// CAUTION on backtracking: the original IC-2 shape was
//
//     Expr1 = ( Expr2 ws_opt ':=' ws_opt ... *Expr1 ... | Expr2 );
//
// which works fine when the only Expr2 forms are atoms / arith — they
// either fit the assign LHS or fall straight through.  IC-3 added
// control-flow primaries (`if`, `while`) at Expr11.  When the second
// statement of a procedure begins with `if`, that shape goes:
//   1. First alt parses the *entire* if-expression as Expr2 (deferred
//      actions fire — _expr_node ends up holding the (E_IF ...) node).
//   2. The `:=` lookahead fails — there's no `:=` after the if.
//   3. First alt backtracks, but the deferred actions stay applied.
//   4. Second alt re-parses Expr2 — but the rebuilt _expr_node ends
//      up overwriting / fighting whatever was set on the first pass,
//      and the outer Stmt's $'append_stmt' sees a stale node.
//
// Same shape as parser_snobol4.sc's `Assign = Id ws_opt '=' ...`:
// commit to the assign branch *only* when an identifier is immediately
// followed by `:=`.  Otherwise fall through to plain Expr2.  This
// matches IC-3's surface (only simple-identifier LHS) and avoids the
// deferred-action pollution from a deep Expr2 backtrack.

Expr1 = ( id_pat . _e1lhs_name  $':='  *Expr1  $'assign_id'
        | Expr2
        );

// IC-6: Expr1a — scan (`?`).  Per icon-sp.ebnf `expr1a ← expr1 | expr1 ? expr`.
// Sits between Expr and Expr1.  The `?` check is committed (no backtrack hazard)
// because we parse Expr1 first (sets _expr_node), then peek for `?` — if we see
// it we consume it and parse the body expression, then build (E_SCAN subj body).
// Saved subject in _ic_scan_subj_top to avoid _expr_node clobbering from body parse.
// Uses *Expr (deferred reference) since Expr is defined below this point and
// scan bodies recurse all the way back up the tower.  _ic_scan_subj is saved
// onto a private link()-stack ($'@SC') because nested scans (`a ? b ? c`)
// must not clobber outer subjects — each frame has its own.
Expr1a = ( Expr1
           ( $'?'  $'scan_push'  *Expr  $'scan_finish'
           | epsilon
           )
         );

// Expr — top of expression tower.  IC-6: Expr → Expr1a → Expr1.
Expr = Expr1a;

//-----------------------------------------------------------------------
// Statement / procedure / program structure.
//-----------------------------------------------------------------------

Comment = ( ws_opt '#' BREAK(nl) nl_one );
Blank   = ( ws_opt nl_one );

// Stmt — one body statement followed by ; and/or newline.  Procbody
// dispatches `end` separately, so Stmt can safely match a bare
// identifier expression even when that identifier is `end`-like.
//
// IC-4: `return` and `return expr` recognized at the Stmt level (not
// Expr) — the existing frontend treats Icon's `return` as a statement
// form that builds (E_RETURN) or (E_RETURN expr) and adds it directly
// to the procedure body.  Tried before the generic Expr-as-stmt branch
// so `return` is not mistaken for a bare identifier.  ws_run after
// 'return' enforces a separator so `returnish` (a hypothetical
// identifier) wouldn't match — but bare `return;` (no expression) must
// also be allowed, so the value-form is tried first; if Expr fails,
// the no-value form catches it.

ReturnStmt = ( ws_opt 'return' ws_run *Expr ws_opt semi_opt ws_opt nl_one
                  $'return1'  $'append_stmt'
             | ws_opt 'return' ws_opt semi_opt ws_opt nl_one
                  $'return0'  $'append_stmt'
             );

Stmt = ( ReturnStmt
       | ws_opt Expr ws_opt semi_opt ws_opt nl_one  $'append_stmt'
       | Comment
       | Blank
       );

// IC-4: Parameter-list components.
//
// ProcParam — a single parameter identifier inside the arglist.  Each
// match appends one E_VAR onto _proc_node via $'append_param'.
// Used by the body of ParamRest's ARBNO loop and the head of Arglist.
ProcParam = ( id_pat . _ic_pname  $'append_param' );

// ParamRest — `, IDENT` repeated for arglist tail.  Same shift-named
// tail decomposition as Expr6tail/Expr7tail; deferred actions inside
// ARBNO(NamedPattern) fire reliably (see PARSER-IC-INFRA-2 notes).
ParamRest = ( ws_opt ',' ws_opt ProcParam );

// Arglist — empty | IDENT (',' IDENT)*.
// Empty case is the bare `()` form; head + tail handles 1+ params.
Arglist = ( ProcParam ARBNO(ParamRest) | epsilon );

// Prochead — `procedure NAME(arglist)`.  IC-4 generalized: any
// identifier as procedure name (was hardcoded 'main' under IC-2/IC-3),
// any number of comma-separated parameters.  Side-effect:
// $'start_proc' seeds _proc_node, $'append_param' appends
// each arg's E_VAR child.
Prochead = ( ws_opt 'procedure' ws_run id_pat . _ic_pname
             $'start_proc'
             ws_opt '(' ws_opt Arglist ws_opt ')' ws_opt nl_one
           );

// Procbody — one or more Stmt's followed by `end`.  The shape uses
// explicit tail-recursion rather than ARBNO(Stmt) because we need to
// preempt-match `end` before letting Stmt potentially consume `end` as
// a bare identifier expression.  Snocone-Snocone supports `*body`
// recursion with deferred actions firing reliably (verified by probe).

ProcbodyEnd = ( ws_opt 'end' ws_opt (nl_one | RPOS(0)) );

Procbody = ( ProcbodyEnd | Stmt *Procbody );

// Proc — `procedure NAME(arglist) <body> end`.  Procbody eats up to and
// including the closing `end` keyword (see Procbody above).  The
// finishing side-effect $'finish_proc' pushes the assembled
// (STMT :subj ...) tree.
//
// IC-4: any procedure name, any arity (was hardcoded 'main()').

Proc = ( Prochead  Procbody  $'finish_proc' );

//-----------------------------------------------------------------------
// Compiland — the canonical spine.  Single PATTERN match consumes the
// entire source string.  No state machine, no goto-driven dispatch.
//
// Architecture note (carried from parser_snobol4.sc): `*Q` indirection
// inside ARBNO is broken in this runtime — deferred calls inside a
// referenced pattern never fire.  We inline Proc rather than `*Proc`.
//-----------------------------------------------------------------------

Compiland = nPush()
            ARBNO( nInc() ws_opt Proc ws_opt )
            ("'Parse'" & 'nTop()')
            nPop();

//-----------------------------------------------------------------------
// Driver — read whole stdin into Src, run Src ? Compiland once, then
// emit each STMT child via TDump.  Two short counted loops use goto
// (read accumulator + emit walker); these are loops over data, not
// state-machine dispatch.  Same shape as parser_snobol4.sc.
//-----------------------------------------------------------------------

InitCounter();
InitStack();
$'@II' = ;            // IC-4: invocation in-progress stack (Expr11 calls)
$'@AL' = ;            // IC-5: alternation in-progress stack (Expr3 chains)
$'@SC' = ;            // IC-6: scan-subject stack (Expr1a `?` nesting)
$'@SQ' = ;            // IC-7: sequence accumulator stack (paren-seq / compound)

Src = '';
while (Line = INPUT) { Src = Src Line nl; }

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

_parser_ic_done = '';
