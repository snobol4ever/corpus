// parser_raku.sc — PARSER-RK: Raku frontend in Snocone.
//
// Reads a Raku source program from stdin via INPUT, runs the `Compiland`
// PATTERN to build a Raku IR tree on the shared stack via Shift/Reduce,
// then dumps each tree via TDump.  After whitespace normalization the
// dumped form is byte-identical to scrip's existing Raku frontend
// `--dump-ir` output — that's the PARSER-RK gate.
//
// Naming policy (per RULES.md "Snocone parser style — names track the
// existing frontend"):
//   token classifiers — mirror src/frontend/raku/raku.l token names
//                       (lowercased: var_scalar, var_array, var_hash,
//                        lit_int, lit_str, kw_my, kw_say, etc.)
//   non-terminals     — mirror src/frontend/raku/raku.y rule names
//                       (program, stmt_list, stmt, expr, primary)
//   IR node tags      — mirror ir.h expr_e_name[] strings
//                       (E_VAR, E_ILIT, E_QLIT, E_FNC, E_ASSIGN, ...)
//   cross-PARSER spine — Compiland, Push/Pop/Top, tree/Tree/TDump/stack
//                        (the only invented names; shared across all six
//                         parser_<lang>.sc files)
//
// Style invariant (per RULES.md): no goto/labels in driver loops.
// Use Snocone structured flow.
//
// Rung PARSER-RK-3 (CURRENT): atom + decl/assign + say + arith + control flow.
//
//   $x;             → (STMT :subj (E_FNC main (E_VAR main) (E_VAR x)))
//   42;             → (STMT :subj (E_FNC main (E_VAR main) (E_ILIT 42)))
//   "hi";           → (STMT :subj (E_FNC main (E_VAR main) (E_QLIT "hi")))
//   my $x = 5;      → ...(E_ASSIGN (E_VAR x) (E_ILIT 5))...
//   $x = 5;         → same — `my` keyword is no-op in IR
//   say 5;          → ...(E_FNC write (E_VAR write) (E_ILIT 5))...
//                     N.B. `say` lowers to `write` in the IR (raku.y).
//   my $x = 1+2*3;  → ...(E_ASSIGN (E_VAR x) (E_ADD 1 (E_MUL 2 3)))
//   my $x = 1+2+3;  → ...(E_ASSIGN ... (E_ADD (E_ADD 1 2) 3))   left-assoc
//
//   if ($c) { say($c); }
//                   → (E_IF (E_VAR c) (E_SEQ_EXPR (E_FNC write ...)))
//   if ($x<3) { ... } else { ... }
//                   → (E_IF (E_LT $x 3) (E_SEQ_EXPR ...) (E_SEQ_EXPR ...))
//   while ($i<3) { ... }
//                   → (E_WHILE (E_LT $i 3) (E_SEQ_EXPR ...))
//   for @a -> $x { ... }
//                   → (E_EVERY (E_ITERATE x (E_VAR a)) (E_SEQ_EXPR ...))
//
// Precedence (matches raku.y):
//   factor   := primary
//   term     := factor ( ('*' | '/') factor )*     left-assoc
//   add_expr := term   ( ('+' | '-') term   )*     left-assoc
//   cmp_expr := add_expr ( cmp_op add_expr )*      left-assoc (looser than +/-)
//                cmp_op : '<' | '>' | '<=' | '>=' | '==' | '!='
//   expr     := cmp_expr     (top-level expression entry point)
//
// The existing raku.y program rule wraps all body stmts in a synthetic
// "main" E_FNC node: E_FNC(main, [E_VAR(main), stmt1, stmt2, ...]).
// Inside `{ ... }` blocks, raku.y wraps body stmts in E_SEQ_EXPR.
// PAT-RK reproduces both wrappers using the same body_count counter
// pushed/popped via PushCounter/PopCounter to handle nesting.
//
// Out-of-scope at RK-3 (deferred to later rungs):
//   - sub definitions             — RK-4
//   - regex / grammar primitives  — RK-5
//
// Sibling LANG rungs: RK-1..RK-3 (lexer, sigils, basic stmts).
// The existing src/frontend/raku/ remains the read-only oracle.

//-----------------------------------------------------------------------
// Whitespace / comment classifiers — Raku surface syntax.
//-----------------------------------------------------------------------

ws_one = ANY(' ' tab);
ws_run = SPAN(' ' tab);
ws_opt = (SPAN(' ' tab) | epsilon);

// Whitespace including newlines — used between top-level stmts and
// between block-body stmts (multi-line programs at RK-3+).  The
// existing ws_opt handles only intra-line whitespace; wsnl_opt also
// consumes line breaks.  Used at the start of each stmt alternative.
wsnl_opt = (SPAN(' ' tab nl) | epsilon);

// Single-line comment: # to end of line.  Matches the flex rule in raku.l.
raku_comment = ('#' REM);

//-----------------------------------------------------------------------
// Token classifiers — mirror raku.l token names (lowercased).
//
// var_scalar: '$' ALPHA ALNUM*  (raku.l: "$"{ALPHA}{ALNUM}* → VAR_SCALAR)
// var_array:  '@' ALPHA ALNUM*  (raku.l: "@"{ALPHA}{ALNUM}* → VAR_ARRAY)
// var_hash:   '%' ALPHA ALNUM*  (raku.l: "%"{ALPHA}{ALNUM}* → VAR_HASH)
// lit_int:    DIGIT+             (raku.l: {DIGIT}+ → LIT_INT)
// lit_str_dq: "..." double-quoted (raku.l: STR_DQ state → LIT_STR)
// lit_str_sq: '...' single-quoted (raku.l: STR_SQ state → LIT_STR)
//
// Sigil is consumed but not carried into the tree — raku.y's var_node()
// calls strip_sigil() so the tree holds just the bare name.  All three
// sigils map to E_VAR at RK-0 scope (the existing frontend does not
// distinguish @/@/% at the IR level for standalone atom stmts).
//-----------------------------------------------------------------------

raku_alpha      = ANY(&UCASE &LCASE '_');
raku_alnum      = SPAN(&UCASE &LCASE digits '_');
raku_alnum_opt  = (raku_alnum | epsilon);

// Sigiled variables — capture bare name (strip sigil) into _var_first + _var_rest.
var_scalar = ('$' raku_alpha . _var_first raku_alnum_opt . _var_rest);
var_array  = ('@' raku_alpha . _var_first raku_alnum_opt . _var_rest);
var_hash   = ('%' raku_alpha . _var_first raku_alnum_opt . _var_rest);

// Integer literal — capture text into _lit_text.
lit_int = (SPAN(digits) . _lit_text);

// Double-quoted string — capture body into _str_body (no interpolation at RK-0).
lit_str_dq = ('"' BREAK('"') . _str_body '"');

// Single-quoted string — capture body into _str_body.
lit_str_sq = ("'" BREAK("'") . _str_body "'");

// Semicolon terminator — mirrors raku.l ';' → ';'.
raku_semi = ';';

// Equals sign for assignment — mirrors raku.l '=' → '='.
raku_eq = '=';

// Keyword `my` — mirrors raku.l "my" → KW_MY.  Must be followed by a
// non-alnum character (whitespace or sigil); avoids matching `myfoo`.
// raku.l's flex maximal-munch handles this naturally; in Snocone we
// require ws_one (whitespace) to follow before the sigil.
kw_my = ('my' ws_one);

// Keyword `say` — mirrors raku.l "say" → KW_SAY.  Followed by ws_one
// before the argument expression.  raku.y lowers `say expr` to
// `(E_FNC write (E_VAR write) <arg>)` — the IR uses 'write' not 'say'.
kw_say = ('say' ws_one);

// Arith operators — mirrors raku.l '+', '-', '*', '/'.
op_add = '+';
op_sub = '-';
op_mul = '*';
op_div = '/';

// Comparison operators — mirrors raku.l "==", "!=", "<=", ">=", '<', '>'.
// Two-char ops first (longest-match) — both alternatives below check
// the two-char form before falling through to the single-char form.
op_eq = '==';
op_ne = '!=';
op_le = '<=';
op_ge = '>=';
op_lt = '<';
op_gt = '>';

// Control-flow keywords — mirrors raku.l KW_IF/KW_ELSE/KW_WHILE/KW_FOR.
// Each requires a non-alnum follower (whitespace or '(') to avoid
// matching `iffy`, `whilething`, etc.  ws_one handles the common case;
// for `if(`-style we accept ws_opt before the '(' but require the
// keyword itself to be at a word boundary — Snocone PATTERN's BREAK
// idiom isn't needed here because raku.y always has a delimiter
// (whitespace or '(') after the keyword.
kw_if    = ('if'    ws_one);
kw_else  = ('else'  (ws_one | ws_opt));   // 'else {' tolerates optional ws
kw_while = ('while' ws_one);
kw_for   = ('for'   ws_one);

// Arrow operator — mirrors raku.l "->" → OP_ARROW.  Used in `for @a -> $x { ... }`.
op_arrow = '->';

// Braces and parens — used by control-flow stmts and blocks.
raku_lbrace = '{';
raku_rbrace = '}';
raku_lparen = '(';
raku_rparen = ')';

//-----------------------------------------------------------------------
// Atom-level tree builders.
//
// The existing frontend's strip_sigil() removes the leading '$'/'@'/'%'
// character before producing E_VAR, so all sigiled vars map to the
// same IR kind at RK-0 scope.  build_atom_var/build_atom_int/
// build_atom_str push one IR-leaf node onto the shared stack.
//
// raku.y program rule wraps all body stmts in synthetic "main" E_FNC:
//
//   (E_FNC main (E_VAR main) stmt...)
//
// build_main_wrapper() pops the N body-stmt atoms accumulated by
// Compiland and wraps them in that E_FNC, then pushes one STMT node
// matching the oracle's `(STMT :subj ...)` shape.
//
// At RK-0, each program has exactly one body stmt (one atom), so the
// wrapper holds exactly three children: E_VAR(main), and the atom leaf.
//-----------------------------------------------------------------------

body_count = 0;

function reset_body_count() {
    body_count = 0;
    reset_body_count = .dummy;
    nreturn;
}

// push_atom_var(name) — push E_VAR leaf onto stack.
function push_atom_var(name) {
    Push(tree('E_VAR', name));
    body_count = body_count + 1;
    push_atom_var = .dummy;
    nreturn;
}

// push_atom_int(text) — push E_ILIT leaf.
function push_atom_int(text) {
    Push(tree('E_ILIT', text));
    body_count = body_count + 1;
    push_atom_int = .dummy;
    nreturn;
}

// push_atom_str(text) — push E_QLIT leaf.
function push_atom_str(text) {
    Push(tree('E_QLIT', text));
    body_count = body_count + 1;
    push_atom_str = .dummy;
    nreturn;
}

//-----------------------------------------------------------------------
// Assignment-target name register.
//
// Rather than push the target as an E_VAR onto the body stack and then
// pop it back out (which would also need body_count bookkeeping reversed),
// we stash the target's bare name in `assign_target_name` and let
// build_assign() consult it when constructing the E_ASSIGN node.  The
// RHS atom is pushed normally by primary's actions; build_assign() pops
// just the RHS and builds (E_ASSIGN (E_VAR <name>) <rhs>).
//-----------------------------------------------------------------------

assign_target_name = '';

function set_assign_target(name) {
    assign_target_name = name;
    set_assign_target = .dummy;
    nreturn;
}

// build_assign() — pop one RHS atom from stack, build E_ASSIGN with
// E_VAR(assign_target_name) as LHS, push the assign back as the body
// atom.  The RHS push already incremented body_count — the assign
// replaces it on the stack and keeps the count balanced (1 in, 1 out).
function build_assign(rhs, lhs, asgn) {
    rhs = Pop();
    body_count = body_count - 1;
    lhs = tree('E_VAR', assign_target_name);
    asgn = Tree('E_ASSIGN', '', 2, lhs, rhs);
    Push(asgn);
    body_count = body_count + 1;
    build_assign = .dummy;
    nreturn;
}

//-----------------------------------------------------------------------
// Binary-operator builder — left-associative arith chains.
//
// build_binop(kind) — pops the top two stack items (rhs then lhs in
// reverse pop order) and pushes Tree(kind, '', 2, lhs, rhs).
// Decrements body_count by 1: two operands collapse into one expr.
// Used by term-loop (mul/div) and expr-loop (add/sub) actions.
//-----------------------------------------------------------------------

function build_binop(kind, rhs, lhs, node) {
    rhs = Pop();
    lhs = Pop();
    body_count = body_count - 2;
    node = Tree(kind, '', 2, lhs, rhs);
    Push(node);
    body_count = body_count + 1;
    build_binop = .dummy;
    nreturn;
}

//-----------------------------------------------------------------------
// `say expr;` — call statement.  Mirrors raku.y stmt rule
//    KW_SAY arg ';'  →  (E_FNC write (E_VAR write) <arg>)
// 'say' is consumed but the IR carries the lowered name 'write'
// (raku.y rewrites at lower-time).
//
// Sequencing: kw_say consumed → expr pushes the arg atom → build_say
// pops the arg, wraps in E_FNC write, pushes the result.
//-----------------------------------------------------------------------

function build_say(arg, fn, node) {
    arg = Pop();
    body_count = body_count - 1;
    fn = tree('E_VAR', 'write');
    node = Tree('E_FNC', 'write', 2, fn, arg);
    Push(node);
    body_count = body_count + 1;
    build_say = .dummy;
    nreturn;
}

// build_main_wrapper() — pop body_count atoms, wrap in E_FNC main,
// then wrap the whole thing in (STMT :subj ...).
// Mirrors raku.y program rule Pass 2 exactly.
function build_main_wrapper(mf, mn, i, atoms) {
    // Collect atoms from stack (they were pushed left-to-right).
    atoms = ARRAY(body_count);
    i = body_count;
    while (i > 0) {
        atoms[i] = Pop();
        i = i - 1;
    }
    // Build E_FNC main node: first child is E_VAR(main), then body stmts.
    mf = Tree('E_FNC', 'main', 0);
    mn = tree('E_VAR', 'main');
    Append(mf, mn);
    i = 1;
    while (LE(i, body_count)) {
        Append(mf, atoms[i]);
        i = i + 1;
    }
    // Wrap in STMT :subj.
    Push(Tree('STMT', '', 1,
              Tree(':subj', '', 1, mf)));
    build_main_wrapper = .dummy;
    nreturn;
}

//-----------------------------------------------------------------------
// RK-3 builders — control-flow & block / E_SEQ_EXPR wrapper.
//
// Block-counter management
// ------------------------
// raku.y wraps `{ stmt; stmt; ... }` block bodies in E_SEQ_EXPR.  Our
// existing `body_count` counts top-level stmts to feed the main-wrapper.
// To handle nested blocks, we save the outer `body_count` on the
// counter-stack at block entry and reset it to 0; the nested stmts
// then increment a fresh body_count, which on exit tells us exactly
// how many block-body atoms to wrap in E_SEQ_EXPR.  After the wrap,
// the seq node sits as a single push in the outer scope, so we
// restore the saved outer count and increment it by 1.
//
// PushCounter / TopCounter / PopCounter come from counter.sc; we use
// them as a simple stack of saved body_count snapshots.
//
// build_block_enter() — save outer body_count, reset for inner stmts.
// build_block_exit()  — pop inner stmts, build E_SEQ_EXPR, restore.
//-----------------------------------------------------------------------

function build_block_enter() {
    PushCounter();
    // Stash outer body_count IncCounter-times, so TopCounter == outer count.
    while (GT(body_count, 0)) {
        IncCounter();
        body_count = body_count - 1;
    }
    body_count = 0;
    build_block_enter = .dummy;
    nreturn;
}

// build_block_exit() — pop body_count atoms (block body), build
// E_SEQ_EXPR, push it back, restore outer body_count + 1.
function build_block_exit(seq, atoms, i, inner_n, outer_n) {
    inner_n = body_count;
    atoms = (GT(inner_n, 0) ARRAY(inner_n), NULL);
    i = inner_n;
    while (i > 0) {
        atoms[i] = Pop();
        i = i - 1;
    }
    seq = Tree('E_SEQ_EXPR', '', 0);
    i = 1;
    while (LE(i, inner_n)) {
        Append(seq, atoms[i]);
        i = i + 1;
    }
    Push(seq);
    // Restore outer body_count from the counter-stack snapshot.
    outer_n = TopCounter();
    PopCounter();
    body_count = outer_n + 1;
    build_block_exit = .dummy;
    nreturn;
}

// build_if(has_else) — pop block(s) and condition, build E_IF.
// At call time the stack contains:
//   bottom ... cond_expr then_seq [else_seq]   top
// and body_count reflects the outer-scope count after both block_exits
// already restored (each block_exit added +1).  Each E_SEQ_EXPR push
// counted as one outer stmt, plus the cond push counted as one — so
// before this builder fires, the if has consumed (1 cond) + (1 or 2
// blocks) outer-count contributions.  build_if collapses them all
// into a single E_IF node, leaving body_count at the outer scope's
// stmt-count + 1 for the if itself.
function build_if_else(cond, then_seq, else_seq, node) {
    else_seq = Pop();
    then_seq = Pop();
    cond     = Pop();
    body_count = body_count - 3;
    node = Tree('E_IF', '', 3, cond, then_seq, else_seq);
    Push(node);
    body_count = body_count + 1;
    build_if_else = .dummy;
    nreturn;
}

function build_if_no_else(cond, then_seq, node) {
    then_seq = Pop();
    cond     = Pop();
    body_count = body_count - 2;
    node = Tree('E_IF', '', 2, cond, then_seq);
    Push(node);
    body_count = body_count + 1;
    build_if_no_else = .dummy;
    nreturn;
}

// build_while() — pop body_seq + cond, build E_WHILE.
function build_while(cond, body_seq, node) {
    body_seq = Pop();
    cond     = Pop();
    body_count = body_count - 2;
    node = Tree('E_WHILE', '', 2, cond, body_seq);
    Push(node);
    body_count = body_count + 1;
    build_while = .dummy;
    nreturn;
}

// for_iter_target — captured loopvar-name for build_for.  Distinct
// global from assign_target_name so a `for ... -> $x { $y = ... }`
// nested assign won't clobber the loopvar.
for_iter_name = '';

function set_for_iter(name) {
    for_iter_name = name;
    set_for_iter = .dummy;
    nreturn;
}

// build_for() — `for @arr -> $x { body }`
//   stack: ... iter_arr_expr body_seq    top
//   ir:    (E_EVERY (E_ITERATE <name> <iter_arr_expr>) <body_seq>)
function build_for(iter_arr, body_seq, iter_node, node) {
    body_seq = Pop();
    iter_arr = Pop();
    body_count = body_count - 2;
    iter_node = Tree('E_ITERATE', for_iter_name, 1, iter_arr);
    node = Tree('E_EVERY', '', 2, iter_node, body_seq);
    Push(node);
    body_count = body_count + 1;
    build_for = .dummy;
    nreturn;
}

//-----------------------------------------------------------------------
// `primary` — one atom expression.  Mirrors raku.y primary/expr at
// RK-0 scope.
//
// Order follows raku.l longest-match convention: multi-char sigil
// patterns (var_scalar/var_array/var_hash) before digit-only lit_int.
// Both lit_str variants share _str_body capture and call push_atom_str.
//-----------------------------------------------------------------------

primary = ( var_scalar . *push_atom_var(_var_first _var_rest)
          | var_array  . *push_atom_var(_var_first _var_rest)
          | var_hash   . *push_atom_var(_var_first _var_rest)
          | lit_int    . *push_atom_int(_lit_text)
          | lit_str_dq . *push_atom_str(_str_body)
          | lit_str_sq . *push_atom_str(_str_body)
          );

//-----------------------------------------------------------------------
// Arith expression grammar — left-assoc with standard precedence.
//
//   factor := primary
//   term   := factor ( ('*' | '/') factor . *build_binop('E_MUL'|'E_DIV') )*
//   expr   := term   ( ('+' | '-') term   . *build_binop('E_ADD'|'E_SUB') )*
//
// Each binop action fires AFTER the rhs operand has been pushed by
// the recursive factor/term call; build_binop pops both operands and
// pushes the combined node.  Left-associativity falls out of the
// linear scan: each iteration combines (top-1, top) → top.
//
// At assign / say-arg position, callers use `expr` (not `primary`).
// When no operators are present, `expr` collapses to a single
// `primary` push — atom-only programs still produce one atom on the
// stack as before.
//-----------------------------------------------------------------------

factor = primary;

//-----------------------------------------------------------------------
// Named action-bearing tail patterns.
//
// In Snocone PATTERN, an action like `. *fn()` placed directly in an
// ARBNO body does NOT fire on each iteration — the action is bound to
// the alternative as a whole and only evaluates at construction time.
// Wrapping the operator+operand+action triple in its own named pattern
// (mul_tail/div_tail/add_tail/sub_tail) hides the action inside a
// sub-pattern call, where it fires reliably on each repetition.
// (This is the same idiom parser_prolog.sc uses for argument lists:
// `args = arg ARBNO(... arg)` — the action lives inside `arg`.)
//
// The rhs of mul_tail/div_tail is `factor` (no recursive mul/div
// nesting at this level — left-assoc means we re-enter the term
// loop's ARBNO).  The rhs of add_tail/sub_tail is `term` (so that
// `+` binds looser than `*`: `1 + 2 * 3` parses as `1 + (2*3)`).
//
// `epsilon . *fn()` form is required when the action takes no
// captured argument — gives Snocone a pattern anchor at the call site.
//-----------------------------------------------------------------------

mul_tail = ( ws_opt op_mul ws_opt factor epsilon . *build_binop('E_MUL') );
div_tail = ( ws_opt op_div ws_opt factor epsilon . *build_binop('E_DIV') );

term = ( factor ARBNO( mul_tail | div_tail ) );

add_tail = ( ws_opt op_add ws_opt term epsilon . *build_binop('E_ADD') );
sub_tail = ( ws_opt op_sub ws_opt term epsilon . *build_binop('E_SUB') );

add_expr = ( term ARBNO( add_tail | sub_tail ) );

//-----------------------------------------------------------------------
// Comparison-level expression — looser than +/-, mirrors raku.y
// cmp_expr rules (E_EQ/E_NE/E_LT/E_GT/E_LE/E_GE).  Two-char ops
// (==, !=, <=, >=) listed before single-char (<, >) so longest-match
// wins via Snocone alternation.  Currently raku.y is left-assoc on
// these (declared `%left` in the prec table) — same idiom as add/mul.
//-----------------------------------------------------------------------

eq_tail = ( ws_opt op_eq ws_opt add_expr epsilon . *build_binop('E_EQ') );
ne_tail = ( ws_opt op_ne ws_opt add_expr epsilon . *build_binop('E_NE') );
le_tail = ( ws_opt op_le ws_opt add_expr epsilon . *build_binop('E_LE') );
ge_tail = ( ws_opt op_ge ws_opt add_expr epsilon . *build_binop('E_GE') );
lt_tail = ( ws_opt op_lt ws_opt add_expr epsilon . *build_binop('E_LT') );
gt_tail = ( ws_opt op_gt ws_opt add_expr epsilon . *build_binop('E_GT') );

cmp_expr = ( add_expr ARBNO( eq_tail | ne_tail | le_tail | ge_tail | lt_tail | gt_tail ) );

// Top-level expression entry point — control-flow conds, assignments,
// say-args all use `expr`.
expr = cmp_expr;

//-----------------------------------------------------------------------
// `assign_target` — left-hand side of an assignment.  Any sigiled
// variable.  Captures the bare name (post-strip-sigil) into
// _tgt_first + _tgt_rest, which is then stashed via set_assign_target.
//
// Distinct sub-capture names from `var_scalar`/`var_array`/`var_hash`
// (which capture into _var_first/_var_rest) — Snocone uses one set of
// pattern globals across the whole `?` match, so reusing _var_first
// here would clobber the RHS atom's name capture.
//-----------------------------------------------------------------------

asgn_alpha     = ANY(&UCASE &LCASE '_');
asgn_alnum     = SPAN(&UCASE &LCASE digits '_');
asgn_alnum_opt = (asgn_alnum | epsilon);

assign_target = ( ('$' asgn_alpha . _tgt_first asgn_alnum_opt . _tgt_rest)
                | ('@' asgn_alpha . _tgt_first asgn_alnum_opt . _tgt_rest)
                | ('%' asgn_alpha . _tgt_first asgn_alnum_opt . _tgt_rest)
                );

//-----------------------------------------------------------------------
// `assign_stmt` — `my $tgt = expr ;` or bare `$tgt = expr ;`.
// Mirrors raku.y stmt rule's two assign forms (KW_MY-prefixed and bare).
// raku.y discards the my-tag (no IR difference), so both forms produce
// identical (E_ASSIGN (E_VAR tgt) <expr>) output.
//
// At RK-2 the RHS is an `expr` (full arith), not just `primary` —
// supports `my $x = 1 + 2 * 3;` etc.
//-----------------------------------------------------------------------

assign_stmt = ( wsnl_opt (kw_my | epsilon)
                assign_target . *set_assign_target(_tgt_first _tgt_rest)
                ws_opt raku_eq ws_opt
                expr
                ws_opt raku_semi
                . *build_assign() );

//-----------------------------------------------------------------------
// `say_stmt` — `say expr ;` call statement.  Mirrors raku.y stmt rule
// `KW_SAY arg ';'`.  Wraps the expr atom in (E_FNC write (E_VAR write) <expr>).
//-----------------------------------------------------------------------

say_stmt = ( wsnl_opt kw_say
             expr
             ws_opt raku_semi
             . *build_say() );

//-----------------------------------------------------------------------
// `block` — `{ stmt* }` body wrapped in E_SEQ_EXPR.
//
// build_block_enter() saves the outer body_count and resets to 0 so the
// inner ARBNO(stmt) sees only its own stmts.  build_block_exit() pops
// those inner stmts, wraps in E_SEQ_EXPR, restores the outer count + 1.
//
// Forward-reference issue: stmt references block (via if/while/for)
// and block references stmt — Snocone PATTERN supports forward refs
// via DEFER-style late binding (assignment to pattern var).  Here we
// declare placeholders for the control-flow stmts up front and bind
// them after `stmt` is defined, then build `block` referencing `stmt`.
//-----------------------------------------------------------------------

//-----------------------------------------------------------------------
// Forward declaration — break the stmt → block → stmt cycle.
//
// `stmt` is defined twice: once as `epsilon` (placeholder) so that
// `block` and the control-flow stmts can reference it via `*stmt`
// deferred-eval, and once for real at the bottom after all alternatives
// are defined.  The deferred-eval `*stmt` ensures the match-time lookup
// sees the final binding.  This single-forward-ref shape is cleaner
// than declaring all three control-flow stmts forward — `block`'s
// reference to `*stmt` is the only true cycle in the grammar.
//-----------------------------------------------------------------------

stmt = epsilon;   // forward declaration — final binding at bottom of file

// `block` — wrapped statement sequence.  The action structure mirrors
// raku.y's `block: '{' stmt_list '}'  → make_seq(stmts)`:
//   * build_block_enter fires immediately after '{'
//   * each stmt inside ARBNO(*stmt) increments body_count as usual
//     (deferred *stmt lookup so `stmt` resolves to its full alternation
//      at match time, including the as-yet-undefined if/while/for).
//   * build_block_exit fires before '}'
block = ( wsnl_opt raku_lbrace wsnl_opt
          epsilon . *build_block_enter()
          ARBNO( *stmt )
          wsnl_opt raku_rbrace
          epsilon . *build_block_exit() );

//-----------------------------------------------------------------------
// Control-flow stmt definitions — defined here (after block, before the
// final stmt binding) so each control-flow stmt can reference `block`
// directly (no forward-ref needed), and so the final `stmt` alternation
// captures the real (non-epsilon) bodies.
//
// raku.y if_stmt rules:
//   KW_IF '(' expr ')' block                      → E_IF(cond, then)
//   KW_IF '(' expr ')' block KW_ELSE block        → E_IF(cond, then, else)
//   KW_IF '(' expr ')' block KW_ELSE if_stmt      → chained elsif (RK-3+ defers)
//
// Order matters: the with-else alternative must come before the
// without-else alternative so PATTERN tries the longer match first.
//-----------------------------------------------------------------------

if_stmt = ( wsnl_opt kw_if ws_opt raku_lparen ws_opt
            expr
            ws_opt raku_rparen
            block
            wsnl_opt kw_else block
            . *build_if_else()
          | wsnl_opt kw_if ws_opt raku_lparen ws_opt
            expr
            ws_opt raku_rparen
            block
            . *build_if_no_else()
          );

while_stmt = ( wsnl_opt kw_while ws_opt raku_lparen ws_opt
               expr
               ws_opt raku_rparen
               block
               . *build_while() );

// `for_stmt` — `for <iter_expr> -> $loopvar { body }`
//   iter_expr is an `expr` (typically `@arr` resolved as E_VAR(arr))
//   $loopvar's bare name → for_iter_name (used by build_for's E_ITERATE)
//
// Captures into _for_first/_for_rest (distinct from _var_*/_tgt_*) so
// the iter_expr's primary captures don't collide with the loopvar.
for_alpha     = ANY(&UCASE &LCASE '_');
for_alnum     = SPAN(&UCASE &LCASE digits '_');
for_alnum_opt = (for_alnum | epsilon);

for_loopvar = ( '$' for_alpha . _for_first for_alnum_opt . _for_rest );

for_stmt = ( wsnl_opt kw_for ws_opt
             expr
             ws_opt op_arrow ws_opt
             for_loopvar . *set_for_iter(_for_first _for_rest)
             block
             . *build_for() );

//-----------------------------------------------------------------------
// `stmt` — final binding.  Try longer-prefix forms first:
//   1. control flow: if / while / for     — keyword-prefixed
//   2. assign_stmt — has '=' after target
//   3. say_stmt    — starts with `say` keyword
//   4. bare expr;  — atom or arith expression as standalone stmt
//-----------------------------------------------------------------------

stmt = ( if_stmt
       | while_stmt
       | for_stmt
       | assign_stmt
       | say_stmt
       | (wsnl_opt expr ws_opt raku_semi)
       );

//-----------------------------------------------------------------------
// Compiland — canonical cross-PARSER spine.
//
// Accumulates all body stmts via ARBNO(*stmt), then calls
// build_main_wrapper() once to emit the oracle-matching STMT tree.
// nPush()/nPop() bracket the stack frame; reduce('Parse', 'nTop()')
// mirrors parser_prolog.sc / parser_icon.sc convention.
//-----------------------------------------------------------------------

// reduce('Parse', 1): build_main_wrapper always pushes exactly 1 STMT,
// so we pop exactly 1 item into the Parse parent.  Unlike the prolog
// parser which uses nInc()/nTop() to track per-clause count, Raku RK-0
// always produces a single STMT regardless of body-atom count.
Compiland = epsilon . *reset_body_count()
            nPush()
            ARBNO( stmt )
            wsnl_opt
            (DIFFER(body_count) . *build_main_wrapper() | epsilon)
            reduce("'Parse'", 1)
            nPop();

//-----------------------------------------------------------------------
// Driver loop — accumulate full source into Src, run Compiland once,
// then TDump each STMT child.
// No goto/labels (per RULES.md style invariant for new parser_<lang>.sc).
//-----------------------------------------------------------------------

InitCounter();
InitStack();

// Accumulate full source, skipping Raku '#' comment lines at ingestion.
Src = '';
while ((Line = INPUT)) {
    if (~(Line ? (POS(0) ws_opt raku_comment))) {
        Src = Src Line nl;
    }
}

// Single Compiland match against full source.
ok = (Src ? Compiland);

// Pop the Parse tree and emit one line per STMT child.
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
