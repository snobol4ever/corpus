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
// top-of-stack in-progress invocation via *expr_invoke_arg().
//
// A separately-named ArgFirst / ArgRest pattern is used so deferred
// actions inside ARBNO fire reliably (PARSER-IC-INFRA-2 lesson).

ArgFirst = ( ws_opt *Expr
             epsilon . *expr_invoke_arg()
           );

ArgRest = ( ws_opt ',' ws_opt *Expr
            epsilon . *expr_invoke_arg()
          );

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
// in-progress node when the inner call's expr_invoke_begin fires.
Expr11 = ( ws_opt 'if' ws_run *Expr
              epsilon . *assign('_ic_cond', _expr_node)
              ws_opt 'then' ws_run *Expr
              epsilon . *assign('_ic_then', _expr_node)
              ( ws_opt 'else' ws_run *Expr
                epsilon . *expr_if3(_ic_cond, _ic_then, _expr_node)
              | epsilon . *expr_if2(_ic_cond, _ic_then)
              )
         | ws_opt 'while' ws_run *Expr
              epsilon . *assign('_ic_wcond', _expr_node)
              ws_opt 'do' ws_run *Expr
              epsilon . *expr_while2(_ic_wcond, _expr_node)
         | id_pat . _ic_fname ws_opt '('
              epsilon . *expr_invoke_begin(_ic_fname)
              InvokeArgs
              ws_opt ')'
              epsilon . *expr_invoke_end()
         | str_pat
              epsilon . *expr_from_atom('E_QLIT', _atom_strbody)
         | int_pat . _atom_text
              epsilon . *expr_from_atom('E_ILIT', _atom_text)
         | id_pat  . _atom_text
              epsilon . *expr_from_atom('E_VAR', _atom_text)
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

Expr7tail = ( epsilon . *assign('_e7lhs', _expr_node)
              ws_opt
              ( '*' epsilon . *assign('_e7op', 'E_MUL')
              | '/' epsilon . *assign('_e7op', 'E_DIV')
              )
              ws_opt
              Expr11
              epsilon . *expr_binop(_e7lhs, _e7op, _expr_node)
            );

Expr7 = ( Expr11 ARBNO(Expr7tail) );

// Expr6 — additive.  IC-2 ops: PLUS (+), MINUS (-).
// LL(1) decomposition: Expr7 (op Expr7)*

Expr6tail = ( epsilon . *assign('_e6lhs', _expr_node)
              ws_opt
              ( '+' epsilon . *assign('_e6op', 'E_ADD')
              | '-' epsilon . *assign('_e6op', 'E_SUB')
              )
              ws_opt
              Expr7
              epsilon . *expr_binop(_e6lhs, _e6op, _expr_node)
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

Expr4tail = ( epsilon . *assign('_e4lhs', _expr_node)
              ws_opt
              ( '<=' epsilon . *assign('_e4op', 'E_LE')
              | '>=' epsilon . *assign('_e4op', 'E_GE')
              | '~=' epsilon . *assign('_e4op', 'E_NE')
              | '<'  epsilon . *assign('_e4op', 'E_LT')
              | '>'  epsilon . *assign('_e4op', 'E_GT')
              | '='  epsilon . *assign('_e4op', 'E_EQ')
              )
              ws_opt
              Expr6
              epsilon . *expr_binop(_e4lhs, _e4op, _expr_node)
            );

Expr4 = ( Expr6 ARBNO(Expr4tail) );

// IC-5: Expr3 — alternation `e1 | e2 | e3 | ...`.  Per the canonical
// grammar `expr3 ← expr4 | expr4 BAR expr3` (right-recursive).  The
// existing frontend flattens nested alternations into a single
// (E_ALTERNATE a b c d) node — so PAT-IC must do the same, not
// produce nested (E_ALTERNATE a (E_ALTERNATE b ...)) trees.
//
// LL(1) shape: parse one Expr4, then ARBNO('|' Expr4).  Each '|' iter
// fires *expr_alt_step(savedLHS): on first '|' it pushes a fresh
// (E_ALTERNATE LHS RHS) onto the alt-stack and flips _e3built; on
// subsequent '|'s it appends onto top-of-stack.
//
// `expr_alt_enter` runs once at Expr3 entry, saves the caller's
// _e3built (which may be '1' if an outer Expr3 is in progress) and
// resets ours to ''.  `expr_alt_finish` runs once at Expr3 exit,
// pops the alt-stack if we pushed (installing the E_ALTERNATE as
// _expr_node), and restores caller's _e3built.

Expr3tail = ( ws_opt '|' ws_opt
              epsilon . *assign('_e3lhs_saved', _expr_node)
              Expr4
              epsilon . *expr_alt_step(_e3lhs_saved)
            );

Expr3 = ( epsilon . *expr_alt_enter()
          Expr4
          ARBNO(Expr3tail)
          epsilon . *expr_alt_finish()
        );

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
//      and the outer Stmt's `*append_body_stmt()` sees a stale node.
//
// Same shape as parser_snobol4.sc's `Assign = Id ws_opt '=' ...`:
// commit to the assign branch *only* when an identifier is immediately
// followed by `:=`.  Otherwise fall through to plain Expr2.  This
// matches IC-3's surface (only simple-identifier LHS) and avoids the
// deferred-action pollution from a deep Expr2 backtrack.

Expr1 = ( id_pat . _e1lhs_name ws_opt ':=' ws_opt
          *Expr1
          epsilon . *expr_assign_id(_e1lhs_name, _expr_node)
        | Expr2
        );

// Expr — top of expression tower.  IC-2 has no AND, so Expr → Expr1a → Expr1.
Expr = Expr1;

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
                  epsilon . *expr_return1(_expr_node)
                  epsilon . *append_body_stmt()
             | ws_opt 'return' ws_opt semi_opt ws_opt nl_one
                  epsilon . *expr_return0()
                  epsilon . *append_body_stmt()
             );

Stmt = ( ReturnStmt
       | ws_opt Expr ws_opt semi_opt ws_opt nl_one
            epsilon . *append_body_stmt()
       | Comment
       | Blank
       );

// IC-4: Parameter-list components.
//
// ProcParam — a single parameter identifier inside the arglist.  Each
// match appends one E_VAR onto _proc_node via *append_proc_param().
// Used by the body of ParamRest's ARBNO loop and the head of Arglist.
ProcParam = ( id_pat . _ic_pname
              epsilon . *append_proc_param(_ic_pname)
            );

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
// *start_proc(name) seeds _proc_node, *append_proc_param() appends
// each arg's E_VAR child.
Prochead = ( ws_opt 'procedure' ws_run id_pat . _ic_pname
             epsilon . *start_proc(_ic_pname)
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
// finishing side-effect *finish_proc() pushes the assembled
// (STMT :subj ...) tree.
//
// IC-4: any procedure name, any arity (was hardcoded 'main()').

Proc = ( Prochead
         Procbody
         epsilon . *finish_proc()
       );

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
            reduce("'Parse'", 'nTop()')
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

Src = '';
read_loop:
if (~(Line = INPUT)) { goto read_done; }
Src = Src Line nl;
goto read_loop;
read_done:

if (~(Src ? Compiland)) { goto mainErr; }

ptree = Pop();
if (~DIFFER(ptree)) { goto mainErr; }

i = 1;
n_kids = n(ptree);
emit_loop:
if (~(LE(i, n_kids))) { goto mainEnd; }
TDump(c(ptree)[i]);
i = i + 1;
goto emit_loop;

mainErr:
OUTPUT = 'Parse Error';
goto mainEnd;

mainEnd:
_parser_ic_done = '';
