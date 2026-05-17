/* raku_helpers.sc — string-processing helpers for parser_raku.sc.
   Loaded before parser_raku.sc. No tree inspection; pure string ops. */
is_chars = &UCASE &LCASE '_';
ir_chars = digits &UCASE &LCASE '_';
bSlash   = '\';
/* ==================================================================================================================== */
function push_interp_str(raw, lit, isvf, isvr, result, newnode, i) {
    raw    = capstr;
    result = '';
    while (1) {
        if (IDENT(raw)) break;
        lit = ''; isvf = ''; isvr = '';
        if (raw ? (POS(0) BREAK('$') . lit '$' ANY(is_chars) . isvf (SPAN(ir_chars) | epsilon) . isvr) = ) {
            if (DIFFER(lit)) {
                newnode = tree('TT_QLIT', lit);
                if (DIFFER(result)) {
                    i = tree('TT_CAT', ''); Append(i, result); Append(i, newnode); result = i;
                } else { result = newnode; }
            }
            newnode = tree('TT_VAR', isvf isvr);
            if (DIFFER(result)) {
                i = tree('TT_CAT', ''); Append(i, result); Append(i, newnode); result = i;
            } else { result = newnode; }
        } else {
            if (raw ? (POS(0) REM . lit) = ) {
                if (DIFFER(lit)) {
                    newnode = tree('TT_QLIT', lit);
                    if (DIFFER(result)) {
                        i = tree('TT_CAT', ''); Append(i, result); Append(i, newnode); result = i;
                    } else { result = newnode; }
                }
            }
            break;
        }
    }
    if (~DIFFER(result)) result = tree('TT_QLIT', '');
    Push(result);
    push_interp_str = .dummy;
    nreturn;
}
Push_interp_str = (epsilon . *push_interp_str());
/* ==================================================================================================================== */
function dq_unescape(raw, result, lit, ch) {
    raw = capstr;
    result = '';
    while (1) {
        if (IDENT(raw)) break;
        if (raw ? (POS(0) BREAK(bSlash) . lit) = ) { result = result lit; }
        if (IDENT(raw)) break;
        if (raw ? (POS(0) bSlash) = ) {
            if (raw ? (POS(0) LEN(1) . ch) = ) {
                if      (IDENT(ch, 'n'))      { result = result nl;     }
                else if (IDENT(ch, 't'))      { result = result tab;    }
                else if (IDENT(ch, bSlash))   { result = result bSlash; }
                else if (IDENT(ch, '"'))      { result = result '"';    }
                else                          { result = result bSlash ch; }
            }
        } else {
            if (raw ? (POS(0) REM . lit) = ) { result = result lit; }
            break;
        }
    }
    capstr = result;
    dq_unescape = .dummy;
    nreturn;
}
Dq_unescape = (epsilon . *dq_unescape());
/* ==================================================================================================================== */
/* Variable-arity assemblers: use nPush/nInc/nPop externally in grammar;
   these handle the TopCounter collection loop which cannot be a single reduce. */
function finish_given(n_whens, def_body, kids, ec, i) {
    n_whens = TopCounter();
    if (EQ(given_has_def, 1)) def_body = Pop();
    kids = GT(n_whens, 0) ARRAY('1:' (n_whens * 2));
    i = n_whens * 2;
    while (GT(i, 0)) { kids[i] = Pop(); i = i - 1; }
    ec = tree('TT_CASE', '');
    Append(ec, Pop());
    i = 1;
    while (LE(i, n_whens)) {
        Append(ec, kids[(i - 1) * 2 + 1]);
        Append(ec, kids[(i - 1) * 2 + 2]);
        i = i + 1;
    }
    if (EQ(given_has_def, 1)) { Append(ec, tree('TT_NUL', '')); Append(ec, def_body); }
    given_has_def = 0;
    Push(ec);
    finish_given = .dummy;
    nreturn;
}
Finish_given = (epsilon . *finish_given());
/* ==================================================================================================================== */
function finish_sub_body(n_kids, kids, sname, efnc, subj, stmt, i) {
    n_kids = TopCounter();
    kids   = GT(n_kids, 0) ARRAY('1:' n_kids);
    i = n_kids;
    while (GT(i, 0)) { kids[i] = Pop(); i = i - 1; }
    sname = capsnf capsnr;
    efnc  = tree('TT_FNC', sname);
    Append(efnc, tree('TT_VAR', sname));
    i = 1;
    while (LE(i, n_kids)) { Append(efnc, kids[i]); i = i + 1; }
    subj = tree(':subj', ''); Append(subj, efnc);
    stmt = tree('STMT', '');  Append(stmt, subj);
    sub_list = slink(sub_list, stmt);
    finish_sub_body = .dummy;
    nreturn;
}
Finish_sub_body = (epsilon . *finish_sub_body());
/* ==================================================================================================================== */
function finish_method_body(n_kids, kids, mname, efnc, i) {
    n_kids = TopCounter();
    kids   = GT(n_kids, 0) ARRAY('1:' n_kids);
    i = n_kids;
    while (GT(i, 0)) { kids[i] = Pop(); i = i - 1; }
    mname = capmtf capmtr;
    efnc  = tree('TT_FNC', mname);
    Append(efnc, tree('TT_VAR', mname));
    Append(efnc, tree('TT_VAR', 'self'));
    i = 1;
    while (LE(i, n_kids)) { Append(efnc, kids[i]); i = i + 1; }
    Push(efnc);
    finish_method_body = .dummy;
    nreturn;
}
Finish_method_body = (epsilon . *finish_method_body());
/* ==================================================================================================================== */
function finish_class_body(n_items, items, cname, rec, subj, stmt, i) {
    n_items = TopCounter();
    items   = GT(n_items, 0) ARRAY('1:' n_items);
    i = n_items;
    while (GT(i, 0)) { items[i] = Pop(); i = i - 1; }
    cname = capclsf capclsr;
    rec = tree('TT_RECORD', cname);
    i = 1;
    while (LE(i, n_items)) { Append(rec, items[i]); i = i + 1; }
    subj = tree(':subj', ''); Append(subj, rec);
    stmt = tree('STMT', '');  Append(stmt, subj);
    sub_list = slink(sub_list, stmt);
    finish_class_body = .dummy;
    nreturn;
}
Finish_class_body = (epsilon . *finish_class_body());
/* ==================================================================================================================== */
function finish_gather_body(n_kids, kids, gname, def_efnc, def_subj, def_stmt, call_efnc, i) {
    n_kids = TopCounter();
    kids   = GT(n_kids, 0) ARRAY('1:' n_kids);
    i = n_kids;
    while (GT(i, 0)) { kids[i] = Pop(); i = i - 1; }
    gname = '__gather_' gather_seq;
    gather_seq = gather_seq + 1;
    def_efnc = tree('TT_FNC', gname);
    Append(def_efnc, tree('TT_VAR', gname));
    i = 1;
    while (LE(i, n_kids)) { Append(def_efnc, kids[i]); i = i + 1; }
    def_subj = tree(':subj', ''); Append(def_subj, def_efnc);
    def_stmt = tree('STMT', '');  Append(def_stmt, def_subj);
    sub_list = slink(sub_list, def_stmt);
    call_efnc = tree('TT_FNC', gname);
    Append(call_efnc, tree('TT_VAR', gname));
    Push(call_efnc);
    finish_gather_body = .dummy;
    nreturn;
}
Finish_gather_body = (epsilon . *finish_gather_body());
/* ==================================================================================================================== */
function finish_call_body(n_kids, kids, efnc, i) {
    n_kids = TopCounter();
    kids   = GT(n_kids, 0) ARRAY('1:' n_kids);
    i = n_kids;
    while (GT(i, 0)) { kids[i] = Pop(); i = i - 1; }
    efnc = tree('TT_FNC', capfnf capfnr);
    i = 1;
    while (LE(i, n_kids)) { Append(efnc, kids[i]); i = i + 1; }
    Push(efnc);
    finish_call_body = .dummy;
    nreturn;
}
Finish_call_body = (epsilon . *finish_call_body());
/* ==================================================================================================================== */
function finish_mcall_body(n_args, args, obj, efnc, i) {
    n_args = TopCounter();
    args   = GT(n_args, 0) ARRAY('1:' n_args);
    i = n_args;
    while (GT(i, 0)) { args[i] = Pop(); i = i - 1; }
    obj  = Pop();
    efnc = tree('TT_FNC', 'raku_mcall');
    Append(efnc, tree('TT_VAR', 'raku_mcall'));
    Append(efnc, obj);
    Append(efnc, tree('TT_QLIT', capmf capmr));
    i = 1;
    while (LE(i, n_args)) { Append(efnc, args[i]); i = i + 1; }
    Push(efnc);
    finish_mcall_body = .dummy;
    nreturn;
}
Finish_mcall_body = (epsilon . *finish_mcall_body());
/* ==================================================================================================================== */
function finish_main_body(n_kids, kids, efnc, subj, stmt, i) {
    n_kids = TopCounter();
    kids   = GT(n_kids, 0) ARRAY('1:' n_kids);
    i = n_kids;
    while (GT(i, 0)) { kids[i] = Pop(); i = i - 1; }
    efnc = tree('TT_FNC', 'main');
    Append(efnc, tree('TT_VAR', 'main'));
    i = 1;
    while (LE(i, n_kids)) { Append(efnc, kids[i]); i = i + 1; }
    subj = tree(':subj', ''); Append(subj, efnc);
    stmt = tree('STMT', '');  Append(stmt, subj);
    Push(stmt);
    finish_main_body = .dummy;
    nreturn;
}
Finish_main_body = (epsilon . *finish_main_body());
/* ==================================================================================================================== */
function finish_new_body(n, items, cname, efnc, i) {
    n     = TopCounter();
    items = GT(n, 0) ARRAY('1:' n);
    i = n;
    while (GT(i, 0)) { items[i] = Pop(); i = i - 1; }
    cname = capclsf capclsr;
    efnc  = tree('TT_FNC', 'raku_new');
    Append(efnc, tree('TT_VAR', 'raku_new'));
    Append(efnc, tree('TT_QLIT', cname));
    i = 1;
    while (LE(i, n)) { Append(efnc, items[i]); i = i + 1; }
    Push(efnc);
    finish_new_body = .dummy;
    nreturn;
}
Finish_new_body = (epsilon . *finish_new_body());
