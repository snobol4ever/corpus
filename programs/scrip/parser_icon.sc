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
// IC-2 surface (atom, `:=` assign, `write(expr)`, `+ - * /`):
//   Compiland = nPush() ARBNO( Proc ) reduce('Parse', 'nTop()') nPop();
//   Proc      = Prochead Procbody 'end';
//   Prochead  = 'procedure' main_name '(' ')';     // IC-2: only main()
//   Procbody  = ARBNO(Stmt);                       // each Stmt → emit
//   Stmt      = Expr ws_opt semi_opt nl_one        // line-at-a-time
//             | Comment | Blank;
//   Expr      = Expr1;
//   Expr1     = Expr2 ASSIGN Expr1                 // right-assoc
//             | Expr2;
//   Expr2     = Expr6;                             // IC-2 skips 3/4/5
//   Expr6     = Expr7 ARBNO((PLUS|MINUS) Expr7);
//   Expr7     = Expr11 ARBNO((STAR|SLASH) Expr11); // IC-2 skips 8/9/10
//   Expr11    = IDENT '(' Exprlist ')'             // function invoke
//             | Literal
//             | IDENT;                             // bare var
//   Literal   = INTLIT | STRINGLIT;
//   Exprlist  = Expr (',' Expr)*;                  // IC-2: 1 arg only

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

//-----------------------------------------------------------------------
// Expression tower — canonical names from icon-sp.ebnf.
//
// Each Exprn pattern leaves the result tree node in _expr_node.  The
// LL(1) `Expr_higher ARBNO(op Expr_higher)` shape uses the helper
// _expr_lhs to remember the running left operand across iterations.
//-----------------------------------------------------------------------

// Expr11 — primary.  IC-2 subset: function-invocation, bare
// identifier, integer literal, string literal.
//
// Function-invocation `IDENT '(' Expr ')'` is tried first so a bare
// identifier that happens to be followed by '(' isn't greedily
// captured as an Expr11 → IDENT atom.  Recursive into Expr via *Expr.
Expr11 = ( id_pat . _ic_fname ws_opt '(' ws_opt *Expr ws_opt ')'
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

// Expr2 — generation (`to`/`by`).  IC-2 has no `to`/`by` yet, so
// Expr2 collapses to Expr6.
Expr2 = Expr6;

// Expr1 — assignment.  Right-associative per the canonical grammar.
// IC-2 only handles `:=` (ASSIGN), not the augmented forms.  Uses
// _e1lhs (not a generic name) for the same reason as Expr6/7.

Expr1 = ( Expr2
          ws_opt ':=' ws_opt
          epsilon . *assign('_e1lhs', _expr_node)
          *Expr1
          epsilon . *expr_binop(_e1lhs, 'E_ASSIGN', _expr_node)
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
