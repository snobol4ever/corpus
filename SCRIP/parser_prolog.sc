
E_Parse  = "'Parse'";
white   =   (  SPAN(' ' tab nl)
            |  '%'  BREAK(nl) nl
            |  '/*' BREAKX('*') '*/'
            );
White   =   white;
Gray    =   white | epsilon;
$' '    =   Gray;
$'  '   =   White;
Atom_first = ANY(&LCASE);
Atom_rest  = SPAN(digits &UCASE &LCASE '_');
Atom       = (Atom_first (Atom_rest | epsilon));
Qatom      = ("'" BREAK("'") . q_body "'");
Var_first  = ANY(&UCASE '_');
Var_rest   = SPAN(digits &UCASE &LCASE '_');
Var        = (Var_first (Var_rest | epsilon));
Float      = (SPAN(digits) '.' SPAN(digits) FENCE('e' FENCE(ANY('+-') | epsilon) SPAN(digits) | 'E' FENCE(ANY('+-') | epsilon) SPAN(digits) | epsilon));
Char_code  = ("0'" NOTANY(nl));
Int        = SPAN(digits);
Str        = ('"' BREAK('"') . s_body '"');
$'('   =       '('  $' ';  $')'  = $' ' ')';
$'['   =       '['  $' ';  $']'  = $' ' ']';
$','   = $' '  ','  $' ';  $';'  = $' ' ';' $' ';
$'|'   = $' '  '|'  $' ';
$'.'   = $' '  '.';
$':-'  = $' '  ':-' $' ';  $':'  = $' '  ':'  . _op_name $' ';  $'='  = $' ' '='  $' ';
$'+'   = $' '  '+'  $' ';  $'-'  = $' ' '-'  $' ';
$'*'   = $' '  '*'  $' ';  $'/'  = $' ' '/'  $' ';
$'is'  = $'  ' 'is' $'  ';
$'-->' = $' ' '-->' $' ';
$'{'   = $' '  '{'  $' ';  $'}'  = $' ' '}'  $' ';
Tk_cut = $' ' '!' $' ';
$'=:=' = $' ' '=:=' $' ';  $'=\=' = $' ' '=\=' $' ';
$'=='  = $' ' '=='  $' ';  $'\==' = $' ' '\==' $' ';
$'>='  = $' ' '>='  $' ';  $'=<'  = $' ' '=<'  $' ';
$'>'   = $' ' '>'   $' ';  $'<'   = $' ' '<'   $' ';
$'\='  = $' ' '\='  $' ';
$'=..' = $' ' '=..' $' ';
$'@>=' = $' ' '@>=' . _op_name $' ';  $'@=<' = $' ' '@=<' . _op_name $' ';
$'@>'  = $' ' '@>'  . _op_name $' ';  $'@<'  = $' ' '@<'  . _op_name $' ';
$'**'  = $' ' '**'  . _op_name $' ';  $'^'   = $' '  '^'  . _op_name $' ';
$'//'  = $' ' '//'  $' ';
$'/\' = $' ' '/\' . _op_name $' ';  $'\/' = $' ' '\/' . _op_name $' ';
$'>>'  = $' ' '>>'  . _op_name $' ';  $'<<'  = $' ' '<<'  . _op_name $' ';
$'mod' = $'  ' 'mod' . _op_name $'  ';
$'rem' = $'  ' 'rem' . _op_name $'  ';
$'xor' = $'  ' 'xor' . _op_name $'  ';
$'div' = $'  ' 'div' . _op_name $'  ';
$'rdiv' = $'  ' 'rdiv' . _op_name $'  ';
$'\'   = $' ' '\' . _op_name;
$'->'  = $' ' '->' $' ';
Graphic_first = ANY('\\@#^~?=<>+\-*/:.$&`');
Graphic_rest  = SPAN('\\+\-*/^<>=~?@#&:.$`');
Graphic_atom  = (Graphic_first (Graphic_rest | epsilon));
Graphic_atom2 = (Graphic_first Graphic_first (Graphic_rest | epsilon));
var_table = TABLE();
var_next  = 0;
ascii_table = TABLE();
ascii_i = 0;
while (LE(ascii_i, 127)) {
    ascii_table[CHAR(ascii_i)] = ascii_i;
    ascii_i = ascii_i + 1;
}
/* ==================================================================================================================== */
function reset_var_scope() {
    var_table = TABLE();
    var_next  = 0;
    reset_var_scope = .dummy;
    nreturn;
}
Reset_var_scope = epsilon . *reset_var_scope();
/* ==================================================================================================================== */
function resolve_var(name, slot) {
    slot = var_table[name];
    if (~DIFFER(slot)) {
        slot = var_next;
        var_table[name] = slot;
        var_next = var_next + 1;
    }
    resolve_var = '_V' slot;
    return;
}
/* ==================================================================================================================== */
function push_var(varname, name) {
    name = $varname;
    if (IDENT(name, '_')) {
        Push(tree('TT_VAR', '_ANON'));
        push_var = .dummy;
        nreturn;
    }
    Push(tree('TT_VAR', resolve_var(name)));
    push_var = .dummy;
    nreturn;
}
/* ==================================================================================================================== */
function Push_var(varname) {
    Push_var = EVAL("epsilon . thx . *push_var('" varname "')");
    return;
}
/* ==================================================================================================================== */
function assign_anon_slots(x, i, kid) {
    if (~DIFFER(x)) { assign_anon_slots = .dummy; nreturn; }
    if (IDENT(t(x), 'TT_VAR') IDENT(v(x), '_ANON')) {
        v(x) = '_V' var_next;
        var_next = var_next + 1;
    }
    i = n(x);
    while (i > 0) {
        kid = c(x)[i];
        assign_anon_slots(kid);
        i = i - 1;
    }
    assign_anon_slots = .dummy;
    nreturn;
}
/* ==================================================================================================================== */
function unescape_q(raw, out, i, n, c, prev_was_quote) {
    out = '';  n = SIZE(raw);  i = 1;  prev_was_quote = 0;
    while (LE(i, n)) {
        c = SUBSTR(raw, i, 1);
        if (IDENT(c, "'")) {
            if (EQ(prev_was_quote, 1)) { out = out "'";  prev_was_quote = 0; }
            else                       { prev_was_quote = 1; }
        } else {
            if (EQ(prev_was_quote, 1)) { out = out "'";  prev_was_quote = 0; }
            out = out c;
        }
        i = i + 1;
    }
    unescape_q = out;
    return;
}
/* ==================================================================================================================== */
function push_atom_body(varname, raw) {
    raw = $varname;
    Push(tree('TT_FNC', unescape_q(raw)));
    push_atom_body = .dummy;
    nreturn;
}
/* ==================================================================================================================== */
function Push_atom_body(varname) {
    Push_atom_body = EVAL("epsilon . thx . *push_atom_body('" varname "')");
    return;
}
/* ==================================================================================================================== */
function push_graphic_sym_val() {
    Push(tree('TT_FNC', g_sym));
    push_graphic_sym_val = .dummy;
    nreturn;
}
Push_graphic_sym = epsilon . *push_graphic_sym_val();
/* ==================================================================================================================== */
function push_nil() {
    Push(tree('TT_FNC', '[]'));
    push_nil = .dummy;
    nreturn;
}
Push_nil = epsilon . *push_nil();
/* ==================================================================================================================== */
function push_neg_int(varname) {
    Push(tree('TT_ILIT', '-' $varname));
    push_neg_int = .dummy;
    nreturn;
}
/* ==================================================================================================================== */
function Push_neg_int(varname) {
    Push_neg_int = EVAL("epsilon . thx . *push_neg_int('" varname "')");
    return;
}
/* ==================================================================================================================== */
function push_neg_float(varname) {
    Push(tree('TT_FLIT', '-' $varname));
    push_neg_float = .dummy;
    nreturn;
}
/* ==================================================================================================================== */
function Push_neg_float(varname) {
    Push_neg_float = EVAL("epsilon . thx . *push_neg_float('" varname "')");
    return;
}
/* ==================================================================================================================== */
function push_char_code(varname, ch, val) {
    ch = $varname;
    val = ascii_table[ch];
    Push(tree('TT_ILIT', val));
    push_char_code = .dummy;
    nreturn;
}
/* ==================================================================================================================== */
function Push_char_code(varname) {
    Push_char_code = EVAL("epsilon . thx . *push_char_code('" varname "')");
    return;
}
/* ==================================================================================================================== */
function reduce_univ(rhs, lhs, fnc_node) {
    rhs = Pop();
    lhs = Pop();
    fnc_node = Tree('TT_FNC', '=..', 0);
    Append(fnc_node, lhs);
    Append(fnc_node, rhs);
    Push(fnc_node);
    reduce_univ = .dummy;
    nreturn;
}
Reduce_univ = epsilon . *reduce_univ();
/* ==================================================================================================================== */
function reduce_is(rhs, lhs, fnc_node) {
    rhs = Pop();
    lhs = Pop();
    fnc_node = Tree('TT_FNC', 'is', 0);
    Append(fnc_node, lhs);
    Append(fnc_node, rhs);
    Push(fnc_node);
    reduce_is = .dummy;
    nreturn;
}
Reduce_is = epsilon . *reduce_is();
_op_name = '';
/* ==================================================================================================================== */
function reduce_binop(rhs, lhs, f) {
    rhs = Pop();  lhs = Pop();
    f = Tree('TT_FNC', _op_name, 0);
    Append(f, lhs);  Append(f, rhs);
    Push(f);
    reduce_binop = .dummy;  nreturn;
}
Reduce_binop = epsilon . *reduce_binop();
/* ==================================================================================================================== */
function reduce_unop(operand, f) {
    operand = Pop();
    f = Tree('TT_FNC', _op_name, 0);
    Append(f, operand);
    Push(f);
    reduce_unop = .dummy;  nreturn;
}
Reduce_unop = epsilon . *reduce_unop();
/* ==================================================================================================================== */
function reduce_ifthen(then_tree, cond_tree, f, n, i) {
    then_tree = Pop();  cond_tree = Pop();
    f = Tree('TT_FNC', '->', 0);
    Append(f, cond_tree);
    if (IDENT(t(then_tree), 'TT_FNC') IDENT(v(then_tree), ',')) {
        n = n(then_tree);
        i = 1;
        while (LE(i, n)) {
            Append(f, c(then_tree)[i]);
            i = i + 1;
        }
    } else
        Append(f, then_tree);
    Push(f);
    reduce_ifthen = .dummy;  nreturn;
}
Reduce_ifthen = epsilon . *reduce_ifthen();
/* ==================================================================================================================== */
function reduce_cmp_op(op, rhs, lhs, fnc_node) {
    rhs = Pop();
    lhs = Pop();
    fnc_node = Tree('TT_FNC', op, 0);
    Append(fnc_node, lhs);
    Append(fnc_node, rhs);
    Push(fnc_node);
    reduce_cmp_op = .dummy;
    nreturn;
}
cmp_op_ge  = '>=';  cmp_op_le  = '=<';  cmp_op_gt  = '>';   cmp_op_lt  = '<';
cmp_op_eqq = '=:='; cmp_op_id  = '==';
cmp_op_ne1 = '\=';  cmp_op_ne2 = '=\='; cmp_op_ne3 = '\==';
/* ==================================================================================================================== */
function do_cmp_ge()  { rhs=Pop();lhs=Pop();f=Tree('TT_FNC',cmp_op_ge,0); Append(f,lhs);Append(f,rhs);Push(f); do_cmp_ge=.dummy;  nreturn; }
/* ==================================================================================================================== */
function do_cmp_le()  { rhs=Pop();lhs=Pop();f=Tree('TT_FNC',cmp_op_le,0); Append(f,lhs);Append(f,rhs);Push(f); do_cmp_le=.dummy;  nreturn; }
/* ==================================================================================================================== */
function do_cmp_gt()  { rhs=Pop();lhs=Pop();f=Tree('TT_FNC',cmp_op_gt,0); Append(f,lhs);Append(f,rhs);Push(f); do_cmp_gt=.dummy;  nreturn; }
/* ==================================================================================================================== */
function do_cmp_lt()  { rhs=Pop();lhs=Pop();f=Tree('TT_FNC',cmp_op_lt,0); Append(f,lhs);Append(f,rhs);Push(f); do_cmp_lt=.dummy;  nreturn; }
/* ==================================================================================================================== */
function do_cmp_eqq() { rhs=Pop();lhs=Pop();f=Tree('TT_FNC',cmp_op_eqq,0);Append(f,lhs);Append(f,rhs);Push(f); do_cmp_eqq=.dummy; nreturn; }
/* ==================================================================================================================== */
function do_cmp_id()  { rhs=Pop();lhs=Pop();f=Tree('TT_FNC',cmp_op_id,0); Append(f,lhs);Append(f,rhs);Push(f); do_cmp_id=.dummy;  nreturn; }
/* ==================================================================================================================== */
function do_cmp_ne1() { rhs=Pop();lhs=Pop();f=Tree('TT_FNC',cmp_op_ne1,0);Append(f,lhs);Append(f,rhs);Push(f); do_cmp_ne1=.dummy; nreturn; }
/* ==================================================================================================================== */
function do_cmp_ne2() { rhs=Pop();lhs=Pop();f=Tree('TT_FNC',cmp_op_ne2,0);Append(f,lhs);Append(f,rhs);Push(f); do_cmp_ne2=.dummy; nreturn; }
/* ==================================================================================================================== */
function do_cmp_ne3() { rhs=Pop();lhs=Pop();f=Tree('TT_FNC',cmp_op_ne3,0);Append(f,lhs);Append(f,rhs);Push(f); do_cmp_ne3=.dummy; nreturn; }
/* ==================================================================================================================== */
function reduce_list(n, kids, i, tail, cons_node) {
    n    = nTop();
    tail = Pop();
    kids = ARRAY(n + 1);
    i = n;
    while (i > 0) {
        kids[i] = Pop();
        i = i - 1;
    }
    i = n;
    while (i > 0) {
        cons_node = Tree('TT_FNC', '.', 0);
        Append(cons_node, kids[i]);
        Append(cons_node, tail);
        tail = cons_node;
        i = i - 1;
    }
    Push(tail);
    reduce_list = .dummy;
    nreturn;
}
Reduce_list = epsilon . *reduce_list();
/* ==================================================================================================================== */
function reduce_compound(varname, name, n, fnc_node, kids, i) {
    name = $varname;
    n = nTop();
    kids = ARRAY(n + 1);
    i = n;
    while (i > 0) {
        kids[i] = Pop();
        i = i - 1;
    }
    fnc_node = Tree('TT_FNC', name, 0);
    i = 1;
    while (LE(i, n)) {
        Append(fnc_node, kids[i]);
        i = i + 1;
    }
    Push(fnc_node);
    reduce_compound = .dummy;
    nreturn;
}
/* ==================================================================================================================== */
function Reduce_compound(varname) {
    Reduce_compound = EVAL("epsilon . thx . *reduce_compound('" varname "')");
    return;
}
/* ==================================================================================================================== */
function reduce_compound_ns(name, n, fnc_node, kids, i) {
    name = TopName();
    PopName();
    n = nTop();
    kids = ARRAY(n + 1);
    i = n;
    while (i > 0) {
        kids[i] = Pop();
        i = i - 1;
    }
    fnc_node = Tree('TT_FNC', name, 0);
    i = 1;
    while (LE(i, n)) {
        Append(fnc_node, kids[i]);
        i = i + 1;
    }
    Push(fnc_node);
    reduce_compound_ns = .dummy;
    nreturn;
}
Reduce_compound_ns = epsilon . *reduce_compound_ns();
/* ==================================================================================================================== */
function reduce_conj(n, fnc_node, kids, i) {
    n = nTop();
    if (LE(n, 1)) { reduce_conj = .dummy; nreturn; }
    kids = ARRAY(n + 1);
    i = n;
    while (i > 0) {
        kids[i] = Pop();
        i = i - 1;
    }
    fnc_node = Tree('TT_FNC', ',', 0);
    i = 1;
    while (LE(i, n)) {
        Append(fnc_node, kids[i]);
        i = i + 1;
    }
    Push(fnc_node);
    reduce_conj = .dummy;
    nreturn;
}
Reduce_conj = epsilon . *reduce_conj();
/* ==================================================================================================================== */
function reduce_disj(n, fnc_node, kids, i) {
    n = nTop();
    if (LE(n, 1)) { reduce_disj = .dummy; nreturn; }
    kids = ARRAY(n + 1);
    i = n;
    while (i > 0) {
        kids[i] = Pop();
        i = i - 1;
    }
    fnc_node = Tree('TT_FNC', ';', 0);
    i = 1;
    while (LE(i, n)) {
        Append(fnc_node, kids[i]);
        i = i + 1;
    }
    Push(fnc_node);
    reduce_disj = .dummy;
    nreturn;
}
Reduce_disj = epsilon . *reduce_disj();
head_name    = '';
head_arity   = 0;
body_present = 0;
/* ==================================================================================================================== */
function snapshot_head(varname) {
    head_name    = $varname;
    head_arity   = nTop();
    body_present = 0;
    snapshot_head = .dummy;
    nreturn;
}
/* ==================================================================================================================== */
function Snapshot_head(varname) {
    Snapshot_head = EVAL("epsilon . thx . *snapshot_head('" varname "')");
    return;
}
/* ==================================================================================================================== */
function mark_body() {
    body_present = 1;
    mark_body = .dummy;
    nreturn;
}
Mark_body = epsilon . *mark_body();
/* ==================================================================================================================== */
function flatten_conj_into(clause_node, x, ck, cn) {
    if (IDENT(t(x), 'TT_FNC') IDENT(v(x), ',')) {
        cn = n(x);
        ck = 1;
        while (LE(ck, cn)) {
            flatten_conj_into(clause_node, c(x)[ck]);
            ck = ck + 1;
        }
    } else Append(clause_node, x);
    flatten_conj_into = .dummy;
    nreturn;
}
/* ==================================================================================================================== */
function build_clause(key, parts, i, body_tree, clause_node, bk, bn) {
    key = head_name '/' head_arity;
    body_tree = ;
    if (GT(body_present, 0)) body_tree = Pop();
    parts = ARRAY(head_arity + 1);
    i = head_arity;
    while (i > 0) {
        parts[i] = Pop();
        i = i - 1;
    }
    clause_node = Tree('TT_CLAUSE', key, 0);
    i = 1;
    while (LE(i, head_arity)) {
        Append(clause_node, parts[i]);
        i = i + 1;
    }
    if (GT(body_present, 0)) flatten_conj_into(clause_node, body_tree);
    bk = head_arity;
    while (bk > 0) {
        assign_anon_slots(c(clause_node)[bk]);
        bk = bk - 1;
    }
    bn = n(clause_node);
    bk = head_arity + 1;
    while (LE(bk, bn)) {
        assign_anon_slots(c(clause_node)[bk]);
        bk = bk + 1;
    }
    Push(Tree('STMT', '', 1,
              Tree(':subj', '', 1,
                   Tree('TT_CHOICE', key, 1, clause_node))));
    build_clause = .dummy;
    nreturn;
}
Build_clause = epsilon . *build_clause();
/* ==================================================================================================================== */
function build_directive(body_tree) {
    body_tree = Pop();
    assign_anon_slots(body_tree);
    Push(Tree('STMT', '', 1,
              Tree(':subj', '', 1, body_tree)));
    build_directive = .dummy;
    nreturn;
}
Build_directive = epsilon . *build_directive();
dcg_svar_count = 0;
/* ==================================================================================================================== */
function dcg_fresh_var(slot) {
    slot = '_S' dcg_svar_count;
    dcg_svar_count = dcg_svar_count + 1;
    var_table[slot] = var_next;
    var_next = var_next + 1;
    dcg_fresh_var = '_V' var_table[slot];
    return;
}
/* ==================================================================================================================== */
function dcg_append_tail(list, tail, new_tail) {
    if (IDENT(v(list), '[]')) return tail;
    new_tail = Tree('TT_FNC', '.', 2, c(list)[1], dcg_append_tail(c(list)[2], tail));
    dcg_append_tail = new_tail;
    return;
}
/* ==================================================================================================================== */
function dcg_make_unify(a, b) {
    dcg_make_unify = Tree('TT_UNIFY', '', 2, a, b);
    return;
}
/* ==================================================================================================================== */
function dcg_var_tree(slot_name) {
    dcg_var_tree = tree('TT_VAR', slot_name);
    return;
}
/* ==================================================================================================================== */
function dcg_call_nt(body, s_in, s_out, new_node, k, nk) {
    new_node = Tree('TT_FNC', v(body), 0);
    nk = n(body);
    k = 1;
    while (LE(k, nk)) {
        Append(new_node, c(body)[k]);
        k = k + 1;
    }
    Append(new_node, dcg_var_tree(s_in));
    Append(new_node, dcg_var_tree(s_out));
    dcg_call_nt = new_node;
    return;
}
/* ==================================================================================================================== */
function dcg_build_conj(goals, ng, i, result) {
    if (LE(ng, 0)) { dcg_build_conj = ; return; }
    result = goals[1];
    i = 2;
    while (LE(i, ng)) {
        result = Tree('TT_FNC', ',', 2, result, goals[i]);
        i = i + 1;
    }
    dcg_build_conj = result;
    return;
}
/* ==================================================================================================================== */
function expand_dcg_body(body, s_in, s_out, result, n,
                         s_mid, s_a, s_b, i, nk,
                         buf_a, na, buf_b, nb, branches, nb2,
                         conj_a, conj_b) {
    if (IDENT(t(body), 'TT_FNC') IDENT(v(body), '[]')) {
        result[n] = dcg_make_unify(dcg_var_tree(s_in), dcg_var_tree(s_out));
        n = n + 1;
        expand_dcg_body = n;
        return;
    }
    if (IDENT(t(body), 'TT_FNC') IDENT(v(body), '.')) {
        result[n] = dcg_make_unify(dcg_var_tree(s_in),
                                   dcg_append_tail(body, dcg_var_tree(s_out)));
        n = n + 1;
        expand_dcg_body = n;
        return;
    }
    if (IDENT(t(body), 'TT_DCG_IL')) {
        nk = n(body);
        i = 1;
        while (LE(i, nk)) {
            result[n] = c(body)[i];
            n = n + 1;
            i = i + 1;
        }
        result[n] = dcg_make_unify(dcg_var_tree(s_in), dcg_var_tree(s_out));
        n = n + 1;
        expand_dcg_body = n;
        return;
    }
    if (IDENT(t(body), 'TT_CUT')) {
        result[n] = Tree('TT_CUT', '', 0);
        n = n + 1;
        result[n] = dcg_make_unify(dcg_var_tree(s_in), dcg_var_tree(s_out));
        n = n + 1;
        expand_dcg_body = n;
        return;
    }
    if (IDENT(t(body), 'TT_FNC') IDENT(v(body), ',')) {
        nk = n(body);
        i = 1;
        s_mid = s_in;
        while (LT(i, nk)) {
            s_a = dcg_fresh_var();
            n = expand_dcg_body(c(body)[i], s_mid, s_a, result, n);
            s_mid = s_a;
            i = i + 1;
        }
        n = expand_dcg_body(c(body)[nk], s_mid, s_out, result, n);
        expand_dcg_body = n;
        return;
    }
    if (IDENT(t(body), 'TT_FNC') IDENT(v(body), ';')) {
        nk = n(body);
        branches = ARRAY(nk + 1);
        i = 1;
        while (LE(i, nk)) {
            buf_a = ARRAY(128);
            na = expand_dcg_body(c(body)[i], s_in, s_out, buf_a, 1);
            branches[i] = dcg_build_conj(buf_a, na - 1);
            i = i + 1;
        }
        conj_a = Tree('TT_FNC', ';', 0);
        i = 1;
        while (LE(i, nk)) {
            Append(conj_a, branches[i]);
            i = i + 1;
        }
        result[n] = conj_a;
        n = n + 1;
        expand_dcg_body = n;
        return;
    }
    if (DIFFER(t(body), 'TT_FNC')) {
        result[n] = body;
        n = n + 1;
        expand_dcg_body = n;
        return;
    }
    result[n] = dcg_call_nt(body, s_in, s_out);
    n = n + 1;
    expand_dcg_body = n;
    return;
}
/* ==================================================================================================================== */
function build_dcg(s0, s1, key, goals, ng, body_tree, clause_node,
                   parts, i, bk, bn) {
    body_tree = Pop();
    parts = ARRAY(head_arity + 1);
    i = head_arity;
    while (i > 0) {
        parts[i] = Pop();
        i = i - 1;
    }
    dcg_svar_count = 0;
    s0 = dcg_fresh_var();
    s1 = dcg_fresh_var();
    key = head_name '/' (head_arity + 2);
    clause_node = Tree('TT_CLAUSE', key, 0);
    i = 1;
    while (LE(i, head_arity)) {
        Append(clause_node, parts[i]);
        i = i + 1;
    }
    Append(clause_node, dcg_var_tree(s0));
    Append(clause_node, dcg_var_tree(s1));
    goals = ARRAY(256);
    ng = expand_dcg_body(body_tree, s0, s1, goals, 1);
    bk = 1;
    while (LE(bk, ng - 1)) {
        Append(clause_node, goals[bk]);
        bk = bk + 1;
    }
    bn = head_arity + 2;
    bk = 1;
    while (LE(bk, bn)) {
        assign_anon_slots(c(clause_node)[bk]);
        bk = bk + 1;
    }
    bn = n(clause_node);
    bk = head_arity + 3;
    while (LE(bk, bn)) {
        assign_anon_slots(c(clause_node)[bk]);
        bk = bk + 1;
    }
    Push(Tree('STMT', '', 1,
              Tree(':subj', '', 1,
                   Tree('TT_CHOICE', key, 1, clause_node))));
    build_dcg = .dummy;
    nreturn;
}
Build_dcg = epsilon . *build_dcg();
/* ==================================================================================================================== */
function push_dcg_inline(body_tree, node, k, nk) {
    body_tree = Pop();
    node = Tree('TT_DCG_IL', '', 0);
    if (IDENT(t(body_tree), 'TT_FNC') IDENT(v(body_tree), ',')) {
        nk = n(body_tree);
        k = 1;
        while (LE(k, nk)) {
            Append(node, c(body_tree)[k]);
            k = k + 1;
        }
    } else Append(node, body_tree);
    Push(node);
    push_dcg_inline = .dummy;
    nreturn;
}
Push_dcg_inline = epsilon . *push_dcg_inline();
/* ==================================================================================================================== */
function push_cut() {
    Push(Tree('TT_CUT', '', 0));
    push_cut = .dummy;
    nreturn;
}
Push_cut = epsilon . *push_cut();
Mark_dcg_body = epsilon . *mark_body();
/* ==================================================================================================================== */
function merge_choices(parse_root, n_in, i, stmt, inner, key,
                       directives, n_dir,
                       choice_keys, choice_stmts, n_choice, found,
                       j, donor_choice, kept_choice, dk, dn,
                       new_kids, idx) {
    n_in = n(parse_root);
    if (LE(n_in, 1)) { merge_choices = .dummy; nreturn; }
    directives   = ARRAY('1:' n_in);
    choice_keys  = ARRAY('1:' n_in);
    choice_stmts = ARRAY('1:' n_in);
    n_dir = 0;
    n_choice = 0;
    i = 1;
    while (LE(i, n_in)) {
        stmt = c(parse_root)[i];
        inner = c(c(stmt)[1])[1];
        if (IDENT(t(inner), 'TT_CHOICE')) {
            key = v(inner);
            found = 0;
            j = 1;
            while (LE(j, n_choice)) {
                if (IDENT(choice_keys[j], key)) {
                    found = j;
                    j = n_choice;
                }
                j = j + 1;
            }
            if (GT(found, 0)) {
                kept_choice = c(c(choice_stmts[found])[1])[1];
                donor_choice = inner;
                dn = n(donor_choice);
                dk = 1;
                while (LE(dk, dn)) {
                    Append(kept_choice, c(donor_choice)[dk]);
                    dk = dk + 1;
                }
            } else {
                n_choice = n_choice + 1;
                choice_keys[n_choice] = key;
                choice_stmts[n_choice] = stmt;
            }
        } else {
            n_dir = n_dir + 1;
            directives[n_dir] = stmt;
        }
        i = i + 1;
    }
    new_kids = ARRAY('1:' n_dir + n_choice);
    idx = 1;
    i = 1;
    while (LE(i, n_dir)) {
        new_kids[idx] = directives[i];
        idx = idx + 1;
        i = i + 1;
    }
    i = 1;
    while (LE(i, n_choice)) {
        new_kids[idx] = choice_stmts[i];
        idx = idx + 1;
        i = i + 1;
    }
    n(parse_root) = n_dir + n_choice;
    c(parse_root) = new_kids;
    merge_choices = .dummy;
    nreturn;
}
args      = ( nInc() *unify_expr FENCE(*args_tail | epsilon) );
args_tail = ( $',' nInc() *unify_expr FENCE(*args_tail | epsilon) );
list_body_tail = ( $',' nInc() *unify_expr FENCE( *list_body_tail | epsilon ) );
list_body      = ( nInc() *unify_expr FENCE( *list_body_tail | epsilon ) );
list = (    $'['
            FENCE(
              $']'                    Push_nil
            | nPush()
                  list_body
                  FENCE( $'|' *unify_expr
                       | epsilon           Push_nil
                       )
                  $']'
                                       Reduce_list
              nPop()
            )
       );
/* ==================================================================================================================== */
/* SCT-pivot (2026-05-17): moved push_radix_hex/bin/oct and Push_hex/bin/oct_int/do_uminus before primary
   because primary calls Push_hex_int('p_radix') etc. at pattern-build time;
   SPITBOL must have them defined before evaluating the primary RHS. */
function push_radix_hex(varname, raw, val, s) {
    raw = $varname;
    val = EVAL('0x' raw) '';
    val SPAN('0123456789') . s;
    Push(tree('TT_ILIT', s));
    push_radix_hex = .dummy;  nreturn;
}
/* ==================================================================================================================== */
function push_radix_bin(varname, raw, n, i, len, s) {
    raw = $varname;
    n = 0;  i = 1;  len = SIZE(raw);
    while (LE(i, len)) {
        n = n * 2 + SUBSTR(raw, i, 1) + 0;
        i = i + 1;
    }
    n '' SPAN('0123456789') . s;
    Push(tree('TT_ILIT', s));
    push_radix_bin = .dummy;  nreturn;
}
/* ==================================================================================================================== */
function push_radix_oct(varname, raw, n, i, len, s) {
    raw = $varname;
    n = 0;  i = 1;  len = SIZE(raw);
    while (LE(i, len)) {
        n = n * 8 + SUBSTR(raw, i, 1) + 0;
        i = i + 1;
    }
    n '' SPAN('0123456789') . s;
    Push(tree('TT_ILIT', s));
    push_radix_oct = .dummy;  nreturn;
}
/* ==================================================================================================================== */
function Push_hex_int(varname) {
    Push_hex_int = EVAL("epsilon . thx . *push_radix_hex('" varname "')");
    return;
}
/* ==================================================================================================================== */
function Push_bin_int(varname) {
    Push_bin_int = EVAL("epsilon . thx . *push_radix_bin('" varname "')");
    return;
}
/* ==================================================================================================================== */
function Push_oct_int(varname) {
    Push_oct_int = EVAL("epsilon . thx . *push_radix_oct('" varname "')");
    return;
}
/* ==================================================================================================================== */
function do_uminus(operand, f) {
    operand = Pop();
    f = Tree('TT_FNC', '-', 0);
    Append(f, operand);
    Push(f);
    do_uminus = .dummy;  nreturn;
}
/* ==================================================================================================================== */
primary = (   Atom . p_name nPushName('p_name') $'('
                  nPush() args $')'
                                      Reduce_compound_ns
              nPop()
          |   $' ' Graphic_atom . g_name nPushName('g_name') $'('
                  nPush() args $')'
                                      Reduce_compound_ns
              nPop()
          |   shift(Graphic_atom2, 'TT_FNC')
          |   Tk_cut                  Push_cut
          |   "0'" NOTANY(nl) . p_cc    Push_char_code('p_cc')
          |   shift(Float,'TT_FLIT')
          |   '0x' SPAN(hex_digits) . p_radix   Push_hex_int('p_radix')
          |   '0b' SPAN(bin_digits) . p_radix   Push_bin_int('p_radix')
          |   '0o' SPAN(oct_digits) . p_radix   Push_oct_int('p_radix')
          |   shift(Int,  'TT_ILIT')
          |   shift(Atom, 'TT_FNC')
          |   Qatom                   Push_atom_body('q_body')
          |   Str                     Push_atom_body('s_body')
          |   Var . p_text            Push_var('p_text')
          |   $'(' *unify_expr $')'
          |   *list
          |   $' ' '-' Float . p_negf   Push_neg_float('p_negf')
          |   $' ' '-' Int . p_negi    Push_neg_int('p_negi')
          |   $'\' $' ' *primary            Reduce_unop
          |   $' ' '-' *primary        epsilon . *do_uminus()
          );
pow_expr  = (   primary
                FENCE( $'^'  *pow_expr Reduce_binop
                     | $'**' primary  Reduce_binop
                     | epsilon
                     )
            );
mul_expr  = (   pow_expr
                ARBNO(
                    FENCE( $'mod' pow_expr Reduce_binop
                         | $'rem' pow_expr Reduce_binop
                         | $'div' pow_expr Reduce_binop
                         | $'rdiv' pow_expr Reduce_binop
                         | $'>>' pow_expr  Reduce_binop
                         | $'<<' pow_expr  Reduce_binop
                         | $'*'  pow_expr  reduce("'TT_MUL'", 2)
                         | $'//' pow_expr  reduce("'TT_DIV'", 2)
                         | $'/\' pow_expr Reduce_binop
                         | $'/'  pow_expr  reduce("'TT_DIV'", 2)
                         )
                )
            );
add_expr  = (   mul_expr
                ARBNO(
                    FENCE( $'+' mul_expr  reduce("'TT_ADD'", 2)
                         | $'-' mul_expr  reduce("'TT_SUB'", 2)
                         | $'\/' mul_expr Reduce_binop
                         | $'xor' mul_expr Reduce_binop
                         )
                )
            );
colon_expr = (  add_expr
                FENCE( $':' *colon_expr  Reduce_binop
                     | epsilon
                     )
             );
is_expr   = (   colon_expr
                FENCE( $'is' colon_expr  Reduce_is
                     | epsilon
                     )
            );
Reduce_ge  = epsilon . *do_cmp_ge();   Reduce_le  = epsilon . *do_cmp_le();
Reduce_gt  = epsilon . *do_cmp_gt();   Reduce_lt  = epsilon . *do_cmp_lt();
Reduce_eqq = epsilon . *do_cmp_eqq(); Reduce_id  = epsilon . *do_cmp_id();
Reduce_ne1 = epsilon . *do_cmp_ne1();
Reduce_ne2 = epsilon . *do_cmp_ne2();
Reduce_ne3 = epsilon . *do_cmp_ne3();
cmp_expr  = (   is_expr
                FENCE( $'=:=' is_expr Reduce_eqq
                     | $'=\=' is_expr Reduce_ne2
                     | $'\==' is_expr Reduce_ne3
                     | $'@>=' is_expr Reduce_binop
                     | $'@=<' is_expr Reduce_binop
                     | $'@>'  is_expr Reduce_binop
                     | $'@<'  is_expr Reduce_binop
                     | $'>='  is_expr Reduce_ge
                     | $'=<'  is_expr Reduce_le
                     | $'>'   is_expr Reduce_gt
                     | $'<'   is_expr Reduce_lt
                     | $'\='  is_expr Reduce_ne1
                     | $'=='  is_expr Reduce_id
                     | epsilon
                     )
            );
unify_expr = (  cmp_expr
                FENCE( $'=..' cmp_expr Reduce_univ
                     | $'='   cmp_expr reduce("'TT_UNIFY'", 2)
                     | epsilon
                     )
             );
/* ==================================================================================================================== */
function reduce_pfx(kw, arg, fnc_node) {
    arg = Pop();
    fnc_node = Tree('TT_FNC', pfx_kw, 0);
    Append(fnc_node, arg);
    Push(fnc_node);
    reduce_pfx = .dummy;  nreturn;
}
Reduce_pfx = EVAL("epsilon . thx . *reduce_pfx()");
/* ==================================================================================================================== */
function reduce_naf(goal, fnc_node) {
    goal = Pop();
    fnc_node = Tree('TT_FNC', '\\+', 0);
    Append(fnc_node, goal);
    Push(fnc_node);
    reduce_naf = .dummy;  nreturn;
}
pfx_kw_name = (   "dynamic" | "discontiguous" | "meta_predicate" | "multifile"
              |   "module_transparent" | "thread_local" | "volatile"
              |   "initialization" | "thread_initialization" | "public" | "table"
              );
body_goal = (   $'(' *body $')'
            |   $' ' pfx_kw_name . pfx_kw $'  ' *unify_expr Reduce_pfx
            |   $' ' '\\+' $' ' *body_goal epsilon . *reduce_naf()
            |   unify_expr
            );
conj = (    nPush()
                nInc() body_goal
                ARBNO( $',' nInc() body_goal )
                                   Reduce_conj
            nPop()
        );
conj_arrow = ( conj FENCE( $'->' *conj_arrow Reduce_ifthen | epsilon ) );
disj_tail = ( $';' nInc() conj_arrow FENCE( *disj_tail | epsilon ) );
disj = (    nPush()
                nInc() conj_arrow
                FENCE( *disj_tail | epsilon )
                                   Reduce_disj
            nPop()
        );
body = disj;
head = (    Reset_var_scope
            nPush()
            (   Atom . h_text $'(' args $')'    Snapshot_head('h_text')
            |   Atom . h_text $'(' $')'         Snapshot_head('h_text')
            |   Atom . h_text                   Snapshot_head('h_text')
            |   Str                             Snapshot_head('s_body')
            )
            nPop()
        );
dcg_goal = (   *list
           |   $'{' body $'}'       Push_dcg_inline
           |   Tk_cut               Push_cut
           |   $'(' *dcg_body $')'
           |   unify_expr
           );
dcg_conj = (   nPush()
                   nInc() dcg_goal
                   ARBNO( $',' nInc() dcg_goal )
                                      Reduce_conj
               nPop()
           );
dcg_disj = (   nPush()
                   nInc() dcg_conj
                   ARBNO( $';' nInc() dcg_conj )
                                      Reduce_disj
               nPop()
           );
dcg_body = dcg_disj;
dcg_rule  = (   head $'-->'           Mark_body
                dcg_body $'.'
                                      Build_dcg
            );
clause    = (   head
                ( $':-' body                   Mark_body
                | epsilon
                )
                $'.'
                                               Build_clause
            );
directive = (   $':-'                          Reset_var_scope
                body $'.'
                                               Build_directive
            );
top_form  = (directive | clause | dcg_rule);
/* ==================================================================================================================== */
function push_skip() {
    Push(Tree('TT_FNC', 'skip', 0));
    push_skip = .dummy;  nreturn;
}
Push_skip = epsilon . *push_skip();
skip_to_dot = ( BREAKX('.') $'.' Push_skip );
top_form_safe = ( top_form | skip_to_dot );
/* SCT-pivot (2026-05-17): nInc() must fire AFTER top_form_safe commits, not before.
   If nInc() precedes top_form_safe and top_form_safe fails (e.g. trailing newline),
   the counter is corrupted and reduce(E_Parse, nTop()) pops the wrong number of items.
   Fix: FENCE(top_form_safe) commits, then nInc() fires; if top_form_safe fails, FENCE
   fails, ARBNO takes epsilon, nInc() never fires. */
Compiland = nPush()
            POS(0) ARBNO( $' ' FENCE(top_form_safe nInc()) $' ' ) RPOS(0)
            reduce(E_Parse, 'nTop()')
            nPop();
InitCounter();
InitStack();
Src = '';
while ((Line = INPUT)) Src = Src Line nl ;
/* SCT-pivot (2026-05-17): strip the trailing nl added by the loop. */
if (GT(SIZE(Src), 0)) Src = SUBSTR(Src, 1, SIZE(Src) - 1);
if (Src ? Compiland) {
    ptree = Pop();
    if (DIFFER(ptree)) {
        merge_choices(ptree);
        i = 1;
        n_kids = n(ptree);
        while (LE(i, n_kids)) {
            TDump(c(ptree)[i]);
            i = i + 1;
        }
    }
}
