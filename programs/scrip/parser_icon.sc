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
// (E_FNC (E_VAR fname) arg) — same E_FNC tag the procedure uses.
function expr_invoke(fname, arg) {
    _expr_node = Tree('E_FNC', '', 2, tree('E_VAR', fname), arg);
    expr_invoke = .dummy;
    nreturn;
}

// Reset the per-procedure accumulator to (E_FNC main (E_VAR main)).
// Called from Prochead.
function start_proc_main() {
    _proc_node = Tree('E_FNC', 'main', 1, tree('E_VAR', 'main'));
    start_proc_main = .dummy;
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
// Called from Proc after the matching 'end'.
function finish_proc_main() {
    Push(Tree('STMT', '', 1, Tree(':subj', '', 1, _proc_node)));
    finish_proc_main = .dummy;
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
// Function-invocation `IDENT '(' Expr ')'` is tried before bare IDENT
// so a bare identifier followed by '(' isn't greedily captured.
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
         | id_pat . _ic_fname ws_opt '(' ws_opt *Expr ws_opt ')'
              epsilon . *expr_invoke(_ic_fname, _expr_node)
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

// Expr2 — generation (`to`/`by`).  IC-3 has no `to`/`by` yet, so
// Expr2 collapses to Expr4 (which in turn handles comparisons and
// falls through to Expr6 → Expr7 → Expr11).
Expr2 = Expr4;

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

Stmt = ( ws_opt Expr ws_opt semi_opt ws_opt nl_one
         epsilon . *append_body_stmt()
       | Comment
       | Blank
       );

// Prochead — `procedure main()` (IC-2 only handles main).  Side-effect:
// reset the body accumulator via *start_proc_main().
Prochead = ( ws_opt 'procedure' ws_run 'main' ws_opt
             '(' ws_opt ')' ws_opt nl_one
             epsilon . *start_proc_main()
           );

// Procbody — one or more Stmt's followed by `end`.  The shape uses
// explicit tail-recursion rather than ARBNO(Stmt) because we need to
// preempt-match `end` before letting Stmt potentially consume `end` as
// a bare identifier expression.  Snocone-Snocone supports `*body`
// recursion with deferred actions firing reliably (verified by probe).

ProcbodyEnd = ( ws_opt 'end' ws_opt (nl_one | RPOS(0)) );

Procbody = ( ProcbodyEnd | Stmt *Procbody );

// Proc — `procedure main() <body> end`.  Procbody eats up to and
// including the closing `end` keyword (see Procbody above).  The
// finishing side-effect *finish_proc_main() pushes the assembled
// (STMT :subj ...) tree.

Proc = ( Prochead
         Procbody
         epsilon . *finish_proc_main()
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
