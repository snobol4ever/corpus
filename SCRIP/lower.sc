&FULLSCAN  = 1;
&MAXLNGTH  = 16384;
TK_AUGPLUS          = 1001;
TK_AUGMINUS         = 1002;
TK_AUGSTAR          = 1003;
TK_AUGSLASH         = 1004;
TK_AUGMOD           = 1005;
TK_AUGCONCAT        = 1006;
TK_AUGPOW           = 1007;
SL_LBL  = ':lbl';
SL_LANG = ':lang';
SL_LINE = ':line';
SL_STNO = ':stno';
SL_SUBJ = ':subj';
SL_PAT  = ':pat';
SL_EQ   = ':eq';
SL_REPL = ':repl';
SL_GOS  = ':goS';
SL_GOF  = ':goF';
SL_GOU  = ':go';
SL_END  = ':end';
struct sm_instr { op, a0, a1, a2 }
g_sm        = tree('SM_LIST', '');
g_count     = 0;
g_labtab    = TABLE();
g_patch     = tree('PATCH', '');
g_instr_tbl = TABLE();
g_lang      = 0;
g_in_proc   = 0;
g_unhandled = TABLE();
/* PST-SC-4h: loop-label stack for break/continue resolution */
g_loop_stack = tree('LOOPSTK', '');
g_loop_sp    = 0;
LANG_SNO = 0;
LANG_ICN = 1;
LANG_PL  = 2;
/* ==================================================================================================================== */
function loop_push(cont, end) {
    Append(g_loop_stack, tree('LF', '' cont end));
    g_loop_sp = g_loop_sp + 1;
    return;
}
function loop_pop() {
    if (GT(g_loop_sp, 0)) { g_loop_sp = g_loop_sp - 1; }
    return;
}
/* ==================================================================================================================== */
function _emit(op, a0, a1, a2, idx, ins) {
    idx = g_count;
    ins = sm_instr(op, a0, a1, a2);
    g_instr_tbl[idx] = ins;
    Append(g_sm, tree('INSTR', '' idx));
    g_count = g_count + 1;
    _emit = idx;
    return;
}
/* ==================================================================================================================== */
function emit(op)            { emit    = _emit(op, '', '', ''); return; }
/* ==================================================================================================================== */
function emit_i(op, i)       { emit_i  = _emit(op, '' i,  '',  ''); return; }
/* ==================================================================================================================== */
function emit_s(op, s)       { emit_s  = _emit(op, s,    '',  ''); return; }
/* ==================================================================================================================== */
function emit_f(op, f)       { emit_f  = _emit(op, '' f, '',  ''); return; }
/* ==================================================================================================================== */
function emit_ii(op, i1, i2) { emit_ii = _emit(op, '' i1,'' i2,''); return; }
/* ==================================================================================================================== */
function emit_si(op, s, i)   { emit_si = _emit(op, s,    '' i,''); return; }
/* ==================================================================================================================== */
function sm_label() { sm_label = g_count; return; }
/* ==================================================================================================================== */
function sm_patch_jump(jump_idx, target_idx, old, new) {
    old = g_instr_tbl[jump_idx];
    new = sm_instr(op(old), '' target_idx, a1(old), a2(old));
    g_instr_tbl[jump_idx] = new;
    return;
}
/* ==================================================================================================================== */
function labtab_define(name, idx) { g_labtab[name] = idx; return; }
/* ==================================================================================================================== */
function labtab_find(name, v) {
    v = g_labtab[name];
    labtab_find = (DIFFER(v) v, -1);
    return;
}
/* ==================================================================================================================== */
function labtab_patch_later(jump_idx, name) {
    Append(g_patch, tree('P', '' jump_idx ' ' name));
    return;
}
/* ==================================================================================================================== */
function labtab_resolve(i, ent, val, jidx, nm, tgt) {
    i = 1;
    while (LE(i, n(g_patch))) {
        ent = c(g_patch)[i];
        val = v(ent);
        val ? POS(0) BREAK(' ') . jidx ' ' REM . nm;
        tgt = labtab_find(nm);
        if (GE(tgt, 0)) sm_patch_jump(jidx, tgt);
        i = i + 1;
    }
    return;
}
ret_kind_tbl = TABLE();
ret_kind_tbl['RETURN']  = 'SM_RETURN SM_RETURN_S SM_RETURN_F';
ret_kind_tbl['FRETURN'] = 'SM_FRETURN SM_FRETURN_S SM_FRETURN_F';
ret_kind_tbl['NRETURN'] = 'SM_NRETURN SM_NRETURN_S SM_NRETURN_F';
/* ==================================================================================================================== */
function emit_goto(op, target, upper, row, plain, succ, fail, pick, idx, res) {
    if (IDENT(target)) { emit_goto = -1; return; }
    upper = REPLACE(target, &LCASE, &UCASE);
    row = ret_kind_tbl[upper];
    if (DIFFER(row)) {
        row ? POS(0) BREAK(' ') . plain ' ' BREAK(' ') . succ ' ' REM . fail;
        pick = (IDENT(op, 'SM_JUMP_S') succ, (IDENT(op, 'SM_JUMP_F') fail, plain));
        emit_goto = emit(pick);
        return;
    }
    idx = emit_i(op, 0);
    res = labtab_find(target);
    if (GE(res, 0)) sm_patch_jump(idx, res);
    else            labtab_patch_later(idx, target);
    emit_goto = idx;
    return;
}
/* ==================================================================================================================== */
function T0(t) { T0 = (GT(n(t), 0) c(t)[1], NULL); return; }
/* ==================================================================================================================== */
function T1(t) { T1 = (GT(n(t), 1) c(t)[2], NULL); return; }
/* ==================================================================================================================== */
function T2(t) { T2 = (GT(n(t), 2) c(t)[3], NULL); return; }
/* ==================================================================================================================== */
function lower_strlit(t) { emit_s('SM_PUSH_LIT_S', (DIFFER(v(t)) v(t), '')); return; }
/* ==================================================================================================================== */
function lower_ilit(t)   { emit_i('SM_PUSH_LIT_I', (DIFFER(v(t)) v(t), 0)); return; }
/* ==================================================================================================================== */
function lower_flit(t)   { emit_f('SM_PUSH_LIT_F', (DIFFER(v(t)) v(t), 0)); return; }
/* ==================================================================================================================== */
function lower_nul(t)    { emit('SM_PUSH_NULL'); return; }
/* ==================================================================================================================== */
function lower_var(t)    { emit_s('SM_PUSH_VAR',  (DIFFER(v(t)) v(t), '')); return; }
/* ==================================================================================================================== */
function lower_keyword(t){ emit_s('SM_PUSH_VAR',  (DIFFER(v(t)) v(t), '')); return; }
/* ==================================================================================================================== */
function lower_bin(t, op) {
    lower_expr(T0(t));
    lower_expr(T1(t));
    emit(op);
    return;
}
/* ==================================================================================================================== */
function lower_add(t) { lower_bin(t, 'SM_ADD'); return; }
/* ==================================================================================================================== */
function lower_sub(t) { lower_bin(t, 'SM_SUB'); return; }
/* ==================================================================================================================== */
function lower_mul(t) { lower_bin(t, 'SM_MUL'); return; }
/* ==================================================================================================================== */
function lower_div(t) { lower_bin(t, 'SM_DIV'); return; }
/* ==================================================================================================================== */
function lower_mod(t) { lower_bin(t, 'SM_MOD'); return; }
/* ==================================================================================================================== */
function lower_pow(t) { lower_bin(t, 'SM_EXP'); return; }
/* ==================================================================================================================== */
function lower_mns(t) { lower_expr(T0(t)); emit('SM_NEG'); return; }
/* ==================================================================================================================== */
function lower_pls(t) { lower_expr(T0(t)); emit('SM_COERCE_NUM'); return; }
/* ==================================================================================================================== */
function lower_fnc(t, i, name, callee, fn, arg0, last) {
    /* EVAL(*expr) — thunk the deferred child, call immediately via SM_CALL_EXPRESSION */
    if (IDENT(v(t), 'EVAL') IDENT(n(t), 1) DIFFER(c(t)[1])) {
        arg0 = c(t)[1];
        if (IDENT(t(arg0), 'TT_DEFER')) {
            emit_thunk(T0(arg0));
            last = g_count - 1;
            g_instr_tbl[last] = sm_instr('SM_CALL_EXPRESSION', a0(g_instr_tbl[last]), '', '');
            return;
        }
    }
    if (IDENT(v(t)) GE(n(t), 1) DIFFER(c(t)[1])) {
        callee = c(t)[1];
        if (DIFFER(v(callee))) {
            fn = v(callee);
            i = 2;
            while (LE(i, n(t))) { lower_expr(c(t)[i]); i = i + 1; }
            emit_si('SM_CALL_FN', fn, n(t) - 1);
            return;
        }
    }
    i = 1;
    while (LE(i, n(t))) { lower_expr(c(t)[i]); i = i + 1; }
    name = (DIFFER(v(t)) v(t), '');
    emit_si('SM_CALL_FN', name, n(t));
    return;
}
/* ==================================================================================================================== */
function lower_cat_seq(t, i) {
    if (IDENT(n(t), 0)) { emit('SM_PUSH_NULL'); return; }
    if (IDENT(n(t), 1)) { lower_expr(c(t)[1]); return; }
    i = 1;
    while (LE(i, n(t))) { lower_expr(c(t)[i]); i = i + 1; }
    i = 2;
    while (LE(i, n(t))) { emit('SM_CONCAT'); i = i + 1; }
    return;
}
/* ==================================================================================================================== */
function emit_lhs_store(lhs, i, fn, set_name) {
    if (IDENT(lhs)) return;
    if (IDENT(t(lhs), 'TT_VAR'))     { emit_s('SM_STORE_VAR', (DIFFER(v(lhs)) v(lhs), '')); return; }
    if (IDENT(t(lhs), 'TT_KEYWORD')) { emit_s('SM_STORE_VAR', v(lhs)); return; }
    if (IDENT(t(lhs), 'TT_INDIRECT')) {
        lower_expr(T0(lhs));
        emit_si('SM_CALL_FN', 'ASGN_INDIR', 2);
        return;
    }
    if (IDENT(t(lhs), 'TT_IDX')) {
        i = 1;
        while (LE(i, n(lhs))) { lower_expr(c(lhs)[i]); i = i + 1; }
        emit_si('SM_CALL_FN', 'IDX_SET', n(lhs) + 1);
        return;
    }
    if (IDENT(t(lhs), 'TT_FNC') DIFFER(v(lhs))) {
        fn = v(lhs);
        if (EQ(n(lhs), 0)) {
            emit_si('SM_CALL_FN', 'NRETURN_ASGN', 1);
            return;
        }
        if (IDENT(REPLACE(fn, &LCASE, &UCASE), 'ITEM')) {
            i = 1;
            while (LE(i, n(lhs))) { lower_expr(c(lhs)[i]); i = i + 1; }
            emit_si('SM_CALL_FN', 'ITEM_SET', n(lhs) + 1);
            return;
        }
        lower_expr(T0(lhs));
        set_name = fn '_SET';
        emit_si('SM_CALL_FN', set_name, 2);
        return;
    }
    if (IDENT(t(lhs), 'TT_FIELD')) {
        lower_expr(T0(lhs));
        emit_s('SM_PUSH_LIT_S', (DIFFER(v(lhs)) v(lhs), ''));
        emit_si('SM_CALL_FN', 'FIELD_SET', 3);
        return;
    }
    lower_expr(lhs);
    emit_si('SM_CALL_FN', 'ASGN', 2);
    return;
}
/* ==================================================================================================================== */
function lower_assign(t) {
    lower_expr(T1(t));
    emit_lhs_store(T0(t));
    return;
}
/* ==================================================================================================================== */
function lower_indirect(t, ch, inner, idx_var, i) {
    ch = T0(t);
    if (DIFFER(ch) IDENT(t(ch), 'TT_NAME') IDENT(n(ch), 1)) {
        inner = c(ch)[1];
        if (DIFFER(inner) IDENT(t(inner), 'TT_IDX') GE(n(inner), 2)) {
            idx_var = c(inner)[1];
            if (DIFFER(idx_var) IDENT(t(idx_var), 'TT_VAR') DIFFER(v(idx_var))) {
                emit_s('SM_PUSH_VAR', v(idx_var));
                i = 2;
                while (LE(i, n(inner))) { lower_expr(c(inner)[i]); i = i + 1; }
                emit_si('SM_CALL_FN', 'IDX', n(inner));
                return;
            }
        }
    }
    lower_expr(ch);
    emit_si('SM_CALL_FN', 'INDIR_GET', 1);
    return;
}
/* ==================================================================================================================== */
/* emit_thunk: inline body as a callable sub-program, push a DT_E descriptor.
 * SM_JUMP(skip) | entry: body | SM_RETURN | after: SM_PUSH_EXPRESSION(entry,0) */
function emit_thunk(body, skip, entry) {
    skip  = emit_i('SM_JUMP', 0);
    entry = sm_label();
    if (DIFFER(body)) { lower_expr(body); }
    else              { emit('SM_PUSH_NULL'); }
    emit('SM_RETURN');
    sm_patch_jump(skip, sm_label());
    emit_ii('SM_PUSH_EXPRESSION', entry, 0);
    return;
}
/* ==================================================================================================================== */
function lower_defer(t) {
    emit_thunk(T0(t));
    return;
}
/* ==================================================================================================================== */
function lower_interrogate(t) { lower_expr(T0(t)); return; }
/* ==================================================================================================================== */
function lower_name(t, vname) {
    vname = (DIFFER(T0(t)) (DIFFER(v(T0(t))) v(T0(t)), ''), '');
    emit_s('SM_PUSH_LIT_S', vname);
    emit_si('SM_CALL_FN', 'NAME_PUSH', 1);
    return;
}
/* ==================================================================================================================== */
function lower_vlist(t, i, jumps, last, done) {
    if (IDENT(n(t), 0)) { emit('SM_PUSH_NULL'); return; }
    if (IDENT(n(t), 1)) { lower_expr(c(t)[1]); return; }
    jumps = tree('JUMPS', '');
    last = n(t);
    i = 1;
    while (LE(i, last)) {
        lower_expr(c(t)[i]);
        if (LT(i, last)) {
            Append(jumps, tree('J', '' emit_i('SM_JUMP_S', 0)));
            emit('SM_VOID_POP');
        }
        i = i + 1;
    }
    done = sm_label();
    i = 1;
    while (LE(i, n(jumps))) { sm_patch_jump(v(c(jumps)[i]), done); i = i + 1; }
    return;
}
/* ==================================================================================================================== */
function lower_opsyn(t, i, raw, op, sz, p) {
    raw = (DIFFER(v(t)) v(t), '&');
    op = raw;
    sz = SIZE(raw);
    /* "...(X)" form: extract the single char between '(' and ')' if matched at end */
    if (GT(sz, 2)) {
        p = SUBSTR(raw, sz - 2, 1);
        if (IDENT(p, '(') IDENT(SUBSTR(raw, sz, 1), ')')) op = SUBSTR(raw, sz - 1, 1);
    }
    if (IDENT(op, raw)) {
        if (IDENT(raw, 'BARFN'))       op = '|';
        else if (IDENT(raw, 'AROWFN')) op = '^';
    }
    i = 1;
    while (LE(i, n(t))) { lower_expr(c(t)[i]); i = i + 1; }
    emit_si('SM_CALL_FN', op, n(t));
    return;
}
/* ==================================================================================================================== */
function lower_idx(t, i) {
    i = 1;
    while (LE(i, n(t))) { lower_expr(c(t)[i]); i = i + 1; }
    emit_si('SM_CALL_FN', 'IDX', n(t));
    return;
}
/* ==================================================================================================================== */
function lower_scan(t) {
    if (LT(n(t), 1)) { emit('SM_PUSH_NULL'); return; }
    lower_expr(c(t)[1]);
    emit_si('SM_CALL_FN', 'ICN_SCAN_PUSH', 1);
    emit('SM_VOID_POP');
    if (GT(n(t), 1)) lower_expr(c(t)[2]); else emit('SM_PUSH_NULL');
    emit_si('SM_CALL_FN', 'ICN_SCAN_POP', 1);
    return;
}
/* ==================================================================================================================== */
function lower_swap(t, ln, rn) {
    if (GE(n(t), 2) DIFFER(T0(t)) DIFFER(T1(t))
            IDENT(t(T0(t)), 'TT_VAR') IDENT(t(T1(t)), 'TT_VAR')) {
        ln = (DIFFER(v(T0(t))) v(T0(t)), '');
        rn = (DIFFER(v(T1(t))) v(T1(t)), '');
        emit_s('SM_PUSH_VAR', ln); emit_s('SM_STORE_VAR', '__icn_swap_tmp__'); emit('SM_VOID_POP');
        emit_s('SM_PUSH_VAR', rn); emit_s('SM_STORE_VAR', ln);
        emit_s('SM_PUSH_VAR', '__icn_swap_tmp__'); emit_s('SM_STORE_VAR', rn);
        emit('SM_VOID_POP');
        return;
    }
    lower_expr(T0(t)); lower_expr(T1(t));
    emit_si('SM_CALL_FN', 'SWAP', 2);
    return;
}
/* ==================================================================================================================== */
/* Comparisons: C passes t->t (kind enum) as the int operand; in Snocone we
 * pass the kind string verbatim — sm_interp / sm_codegen branch on
 * the encoded value regardless of representation. */
function lower_comp(t, op) {
    lower_expr(T0(t)); lower_expr(T1(t));
    emit_si(op, t(t), 0);
    return;
}
/* ==================================================================================================================== */
function lower_acomp(t) { lower_comp(t, 'SM_ACOMP'); return; }
/* ==================================================================================================================== */
function lower_lcomp(t) { lower_comp(t, 'SM_LCOMP'); return; }
/* ==================================================================================================================== */
/* Phase-1 stub: skip the is_suspendable scan; emit plain concat path.
 * Generator-bearing lists fall back to SM_PUSH_EXPR via the dispatcher
 * unhandled tail when Ph2 ports is_suspendable + ast_pump_table_register. */
function lower_lconcat(t, i) {
    if (LT(n(t), 1)) { emit('SM_PUSH_NULL'); return; }
    i = 1;
    while (LE(i, n(t))) { lower_expr(c(t)[i]); i = i + 1; }
    i = 2;
    while (LE(i, n(t))) { emit('SM_CONCAT'); i = i + 1; }
    return;
}
/* ==================================================================================================================== */
function lower_nonnull(t) { lower_expr(T0(t)); emit_si('SM_CALL_FN', 'NONNULL',   1); return; }
/* ==================================================================================================================== */
function lower_null(t) { lower_expr(T0(t)); emit_si('SM_CALL_FN', 'ICN_NULL',  1); return; }
/* ==================================================================================================================== */
function lower_size(t) { lower_expr(T0(t)); emit_si('SM_CALL_FN', 'SIZE',      1); return; }
/* ==================================================================================================================== */
function lower_identical(t){ lower_expr(T0(t)); lower_expr(T1(t)); emit_si('SM_CALL_FN', 'IDENTICAL', 2); return; }
/* ==================================================================================================================== */
function lower_random(t) {
    if (GE(n(t), 1)) { lower_expr(T0(t)); emit_si('SM_CALL_FN', 'ICN_RANDOM', 1); }
    else             { emit('SM_PUSH_NULL'); }
    return;
}
/* ==================================================================================================================== */
function lower_not(t, js, jend, flbl) {
    lower_expr(T0(t));
    js = emit_i('SM_JUMP_S', 0);
    emit('SM_VOID_POP'); emit('SM_PUSH_NULL');
    jend = emit_i('SM_JUMP', 0);
    flbl = sm_label(); sm_patch_jump(js, flbl);
    emit('SM_VOID_POP'); emit_si('SM_CALL_FN', 'FAIL', 0);
    sm_patch_jump(jend, sm_label());
    return;
}
/* ==================================================================================================================== */
/* Augmented assignment fast-path: VAR or KEYWORD lhs only.
 * Other lhs shapes fall through to the generic AUGOP call. */
function lower_augop(t, lhs, rhs, opcode, lname, is_kw) {
    lhs = T0(t); rhs = T1(t);
    opcode = (DIFFER(v(t)) v(t), 0);
    lname = ''; is_kw = 0;
    if (DIFFER(lhs) IDENT(t(lhs), 'TT_VAR') DIFFER(v(lhs)))         lname = v(lhs);
    if (DIFFER(lhs) IDENT(t(lhs), 'TT_KEYWORD') DIFFER(v(lhs))) { lname = v(lhs); is_kw = 1; }
    if (DIFFER(lname)) {
        emit_s('SM_PUSH_VAR', lname);
        lower_expr(rhs);
        if (IDENT('' opcode, '' TK_AUGPLUS))   { emit('SM_ADD');    emit_s('SM_STORE_VAR', lname); return; }
        if (IDENT('' opcode, '' TK_AUGMINUS))  { emit('SM_SUB');    emit_s('SM_STORE_VAR', lname); return; }
        if (IDENT('' opcode, '' TK_AUGSTAR))   { emit('SM_MUL');    emit_s('SM_STORE_VAR', lname); return; }
        if (IDENT('' opcode, '' TK_AUGSLASH))  { emit('SM_DIV');    emit_s('SM_STORE_VAR', lname); return; }
        if (IDENT('' opcode, '' TK_AUGMOD))    { emit('SM_MOD');    emit_s('SM_STORE_VAR', lname); return; }
        if (IDENT('' opcode, '' TK_AUGCONCAT)) { emit('SM_CONCAT'); emit_s('SM_STORE_VAR', lname); return; }
        emit_i('SM_PUSH_LIT_I', opcode);
        emit_si('SM_CALL_FN', 'AUGOP', 3);
        return;
    }
    lower_expr(lhs); lower_expr(rhs);
    emit_i('SM_PUSH_LIT_I', opcode);
    emit_si('SM_CALL_FN', 'AUGOP', 3);
    return;
}
/* ==================================================================================================================== */
function lower_seq_expr(t, i) {
    if (IDENT(n(t), 0)) { emit('SM_PUSH_NULL'); return; }
    i = 1;
    while (LE(i, n(t))) {
        lower_expr(c(t)[i]);
        if (LT(i, n(t))) emit('SM_VOID_POP');
        i = i + 1;
    }
    return;
}
/* ==================================================================================================================== */
/* PST-SC-4b (2026-05-16): lower a TT_PROGRAM block body (then/else of TT_IF).
 * Each child is a TT_STMT; lower each for effect, push null as block result value.
 * Mirror of C lower.c case TT_PROGRAM in lower_expr_inner. */
function lower_program_block(t, i) {
    i = 1;
    while (LE(i, n(t))) {
        if (DIFFER(c(t)[i])) { lower_stmt(c(t)[i]); }
        i = i + 1;
    }
    emit('SM_PUSH_NULL');
    return;
}
/* ==================================================================================================================== */
function lower_if(t, jf, jend) {
    if (LT(n(t), 1)) { emit('SM_PUSH_NULL'); return; }
    lower_expr(c(t)[1]);
    jf = emit_i('SM_JUMP_F', 0);
    emit('SM_VOID_POP');
    if (GT(n(t), 1)) lower_expr(c(t)[2]); else emit('SM_PUSH_NULL');
    jend = emit_i('SM_JUMP', 0);
    sm_patch_jump(jf, sm_label());
    emit('SM_VOID_POP');
    if (GT(n(t), 2)) lower_expr(c(t)[3]); else emit('SM_PUSH_NULL');
    sm_patch_jump(jend, sm_label());
    return;
}
/* ==================================================================================================================== */
/* PST-SC-4c (2026-05-16): lower_if_stmt handles TT_IF(cond, TT_PROGRAM(then), TT_PROGRAM(else?)).
 * Bodies executed for effect via lower_stmt iteration; break inside body jumps to enclosing
 * while's exit label, bypassing the if entirely — no stack value left behind.
 * Mirror of C lower.c lower_if_stmt. */
function lower_if_stmt(t, jf, jend, then_b, else_b, i) {
    if (LT(n(t), 1)) { return; }
    lower_expr(c(t)[1]);
    jf = emit_i('SM_JUMP_F', 0);
    emit('SM_VOID_POP');
    then_b = (GT(n(t), 1)) c(t)[2] ;
    if (DIFFER(then_b) IDENT(t(then_b), 'TT_PROGRAM')) {
        i = 1; while (LE(i, n(then_b))) { if (DIFFER(c(then_b)[i])) lower_stmt(c(then_b)[i]); i = i + 1; }
    } else if (DIFFER(then_b)) { lower_expr(then_b); emit('SM_VOID_POP'); }
    jend = emit_i('SM_JUMP', 0);
    sm_patch_jump(jf, sm_label());
    emit('SM_VOID_POP');
    else_b = (GT(n(t), 2)) c(t)[3] ;
    if (DIFFER(else_b) IDENT(t(else_b), 'TT_PROGRAM')) {
        i = 1; while (LE(i, n(else_b))) { if (DIFFER(c(else_b)[i])) lower_stmt(c(else_b)[i]); i = i + 1; }
    } else if (DIFFER(else_b)) { lower_expr(else_b); emit('SM_VOID_POP'); }
    sm_patch_jump(jend, sm_label());
    emit('SM_PUSH_NULL');
    return;
}
/* ==================================================================================================================== */
/* PST-SC-4c (2026-05-16): updated lower_while_until handles TT_WHILE(cond, TT_PROGRAM(body), QLIT(cont), QLIT(end)).
 * TT_PROGRAM body: iterate via lower_stmt so break mid-body doesn't strand SM_VOID_POP at exit.
 * QLIT children 2/3 carry label strings; labtab_define places them at the right instruction positions.
 * Mirror of C lower.c lower_while_until. */
function lower_while_until(t, exit_on_success, top, jx, body, exit_pos, lbl_cont, lbl_end, i) {
    lbl_cont = (GT(n(t), 2) DIFFER(c(t)[3])) c(t)[3].sval ;
    lbl_end  = (GT(n(t), 3) DIFFER(c(t)[4])) c(t)[4].sval ;
    top = g_count;
    if (DIFFER(lbl_cont) NE(SIZE(lbl_cont), 0)) labtab_define(lbl_cont, top);
    if (LT(n(t), 1)) { emit('SM_PUSH_NULL'); return; }
    lower_expr(c(t)[1]);
    if (IDENT(exit_on_success, 1)) jx = emit_i('SM_JUMP_S', 0);
    else                            jx = emit_i('SM_JUMP_F', 0);
    emit('SM_VOID_POP');
    loop_push(lbl_cont, lbl_end);
    body = (GT(n(t), 1)) c(t)[2] ;
    if (DIFFER(body) IDENT(t(body), 'TT_PROGRAM')) {
        i = 1; while (LE(i, n(body))) { if (DIFFER(c(body)[i])) lower_stmt(c(body)[i]); i = i + 1; }
    } else if (DIFFER(body)) { lower_expr(body); emit('SM_VOID_POP'); }
    loop_pop();
    emit_i('SM_JUMP', top);
    exit_pos = g_count;
    sm_patch_jump(jx, exit_pos);
    if (DIFFER(lbl_end) NE(SIZE(lbl_end), 0)) labtab_define(lbl_end, exit_pos);
    if (~ (DIFFER(body) IDENT(t(body), 'TT_PROGRAM'))) { emit('SM_VOID_POP'); }
    emit('SM_PUSH_NULL');
    return;
}
/* ==================================================================================================================== */
function lower_while(t) { lower_while_until(t, 0); return; }
/* ==================================================================================================================== */
function lower_until(t) { lower_while_until(t, 1); return; }
/* ==================================================================================================================== */
/* PST-SC-4d (2026-05-16): lower TT_DO_WHILE(TT_PROGRAM(body), cond, QLIT(cont), QLIT(end)).
 * Body executed first (lower_stmt iteration), then cond tested — jump back to top if true.
 * cont label defined before cond; end label defined at exit. Mirror of C lower.c lower_do_while. */
function lower_do_while(t, top, body, lbl_cont, lbl_end, jback, exit_pos, i) {
    lbl_cont = (GT(n(t), 2) DIFFER(c(t)[3])) c(t)[3].sval ;
    lbl_end  = (GT(n(t), 3) DIFFER(c(t)[4])) c(t)[4].sval ;
    top = g_count;
    loop_push(lbl_cont, lbl_end);
    body = (GT(n(t), 0)) c(t)[1] ;
    if (DIFFER(body) IDENT(t(body), 'TT_PROGRAM')) {
        i = 1; while (LE(i, n(body))) { if (DIFFER(c(body)[i])) lower_stmt(c(body)[i]); i = i + 1; }
    } else if (DIFFER(body)) { lower_expr(body); emit('SM_VOID_POP'); }
    loop_pop();
    if (DIFFER(lbl_cont) NE(SIZE(lbl_cont), 0)) labtab_define(lbl_cont, g_count);
    if (GT(n(t), 1) DIFFER(c(t)[2])) {
        lower_expr(c(t)[2]);
        jback = emit_i('SM_JUMP_S', 0);
        emit('SM_VOID_POP');
        sm_patch_jump(jback, top);
    }
    exit_pos = g_count;
    if (DIFFER(lbl_end) NE(SIZE(lbl_end), 0)) labtab_define(lbl_end, exit_pos);
    emit('SM_PUSH_NULL');
    return;
}
/* ==================================================================================================================== */
/* PST-SC-4e (2026-05-16): lower TT_FOR(cond, step, TT_PROGRAM(body), QLIT(cont), QLIT(end)).
 * Init already lowered as preceding statement. Structure:
 *   top: test cond → exit on fail; body (stmt iter); cont: step; jump back to top; end.
 * Mirror of C lower.c lower_for. */
function lower_for(t, lbl_cont, lbl_end, top, jf, body, i, exit_pos) {
    lbl_cont = (GT(n(t), 3) DIFFER(c(t)[4])) c(t)[4].sval ;
    lbl_end  = (GT(n(t), 4) DIFFER(c(t)[5])) c(t)[5].sval ;
    top = g_count;
    if (~ (GT(n(t), 0) DIFFER(c(t)[1]))) { emit('SM_PUSH_NULL'); return; }
    lower_expr(c(t)[1]);
    jf = emit_i('SM_JUMP_F', 0);
    emit('SM_VOID_POP');
    loop_push(lbl_cont, lbl_end);
    body = (GT(n(t), 2)) c(t)[3] ;
    if (DIFFER(body) IDENT(t(body), 'TT_PROGRAM')) {
        i = 1; while (LE(i, n(body))) { if (DIFFER(c(body)[i])) lower_stmt(c(body)[i]); i = i + 1; }
    } else if (DIFFER(body)) { lower_expr(body); emit('SM_VOID_POP'); }
    loop_pop();
    if (DIFFER(lbl_cont) NE(SIZE(lbl_cont), 0)) labtab_define(lbl_cont, g_count);
    if (GT(n(t), 1) DIFFER(c(t)[2])) { lower_expr(c(t)[2]); emit('SM_VOID_POP'); }
    emit_i('SM_JUMP', top);
    exit_pos = g_count;
    sm_patch_jump(jf, exit_pos);
    emit('SM_VOID_POP');
    if (DIFFER(lbl_end) NE(SIZE(lbl_end), 0)) labtab_define(lbl_end, exit_pos);
    emit('SM_PUSH_NULL');
    return;
}
/* ==================================================================================================================== */
function lower_repeat(t, top) {
    top = sm_label();
    if (GT(n(t), 0)) { lower_expr(c(t)[1]); emit('SM_VOID_POP'); }
    emit_i('SM_JUMP', top);
    emit('SM_PUSH_NULL');
    return;
}
/* ==================================================================================================================== */
/* PST-SC-4h: TT_LOOP_BREAK([QLIT(user_label)]). Snocone: resolve via g_loop_stack. */
function lower_loop_break(t, user_lbl, end_lbl) {
    user_lbl = (GT(n(t), 0) DIFFER(c(t)[1]) IDENT(t(c(t)[1]), 'TT_QLIT')) c(t)[1].sval ;
    if (GT(g_loop_sp, 0)) {
        end_lbl = (DIFFER(user_lbl)) user_lbl :f v(c(g_loop_stack)[g_loop_sp])[2] ;
        if (DIFFER(end_lbl) NE(SIZE(end_lbl), 0)) { emit_goto('SM_JUMP', end_lbl); return; }
    }
    if (GT(n(t), 0)) lower_expr(c(t)[1]); else emit('SM_PUSH_NULL');
    emit_i('SM_JUMP', g_count + 1);
    return;
}
/* ==================================================================================================================== */
/* PST-SC-4h: TT_LOOP_NEXT([QLIT(user_label)]). Snocone: jump to cont label. */
function lower_loop_next(t, user_lbl, cont_lbl) {
    user_lbl = (GT(n(t), 0) DIFFER(c(t)[1]) IDENT(t(c(t)[1]), 'TT_QLIT')) c(t)[1].sval ;
    if (GT(g_loop_sp, 0)) {
        cont_lbl = (DIFFER(user_lbl)) user_lbl :f v(c(g_loop_stack)[g_loop_sp])[1] ;
        if (DIFFER(cont_lbl) NE(SIZE(cont_lbl), 0)) { emit_goto('SM_JUMP', cont_lbl); return; }
    }
    emit('SM_PUSH_NULL');
    return;
}
/* ==================================================================================================================== */
function lower_return(t) {
    if (GT(n(t), 0)) lower_expr(c(t)[1]); else emit('SM_PUSH_NULL');
    emit('SM_RETURN');
    return;
}
/* ==================================================================================================================== */
function lower_proc_fail(t) { emit('SM_PUSH_NULL'); emit('SM_FRETURN'); return; }
/* ==================================================================================================================== */
/* Case: Icon pair layout — topic + (val,body)* + [default].
 * Raku triple layout uses emit_thunk; Ph1 stubbed via SM_PUSH_EXPR fallback. */
/* PST-SC-4f: lower_case handles both Snocone TT_CASE (QLIT last child, TT_PROGRAM bodies)
 * and Icon/Raku TT_CASE (numeric shape). Detect by TT_QLIT as last child. */
function lower_case(t, last_idx, is_snocone, nc, has_def, npairs, jumps, jf, end_lbl, lbl_end,
                    i, base, end, narms, arm_entries, end_jumps, val, body, ji, jdefault, exit_pos) {
    if (LT(n(t), 1)) { emit('SM_PUSH_NULL'); return; }
    last_idx = n(t);
    is_snocone = (GE(last_idx, 2) DIFFER(c(t)[last_idx]) IDENT(t(c(t)[last_idx]), 'TT_QLIT'));
    if (is_snocone) {
        lbl_end = c(t)[last_idx].sval;
        narms = (last_idx - 2) / 2;
        lower_expr(c(t)[1]);
        emit_s('SM_STORE_VAR', '__case_topic__'); emit('SM_VOID_POP');
        arm_entries = tree('ARMS', '');
        end_jumps   = tree('ENDS', '');
        jdefault = -1;
        i = 0;
        while (LT(i, narms)) {
            val = c(t)[2 + i * 2];
            if (~ IDENT(t(val), 'TT_NUL')) {
                emit_s('SM_PUSH_VAR', '__case_topic__');
                lower_expr(val);
                emit_si('SM_CALL_FN', 'ICN_CASE_EQ', 2);
                Append(arm_entries, tree('J', '' emit_i('SM_JUMP_S', 0)));
                emit('SM_VOID_POP');
            }
            i = i + 1;
        }
        jdefault = emit_i('SM_JUMP', 0);
        i = 0; ji = 1;
        while (LT(i, narms)) {
            val  = c(t)[2 + i * 2];
            body = c(t)[3 + i * 2];
            if (IDENT(t(val), 'TT_NUL')) {
                sm_patch_jump(jdefault, g_count); jdefault = -1;
            } else {
                sm_patch_jump(v(c(arm_entries)[ji]), g_count); ji = ji + 1;
                emit('SM_VOID_POP');
            }
            if (DIFFER(body) IDENT(t(body), 'TT_PROGRAM')) {
                i = 1; while (LE(i, n(body))) { if (DIFFER(c(body)[i])) lower_stmt(c(body)[i]); i = i + 1; }
                i = i;
            } else if (DIFFER(body)) { lower_expr(body); emit('SM_VOID_POP'); }
            Append(end_jumps, tree('J', '' emit_i('SM_JUMP', 0)));
            i = i + 1;
        }
        exit_pos = g_count;
        if (NE(jdefault, -1)) sm_patch_jump(jdefault, exit_pos);
        i = 1; while (LE(i, n(end_jumps))) { sm_patch_jump(v(c(end_jumps)[i]), exit_pos); i = i + 1; }
        if (DIFFER(lbl_end) NE(SIZE(lbl_end), 0)) labtab_define(lbl_end, exit_pos);
        emit('SM_PUSH_NULL');
        return;
    }
    nc = n(t) - 1;
    has_def = REMDR(nc, 2);
    npairs  = (nc - has_def) / 2;
    lower_expr(c(t)[1]);
    emit_s('SM_STORE_VAR', '__case_topic__'); emit('SM_VOID_POP');
    jumps = tree('JUMPS', '');
    i = 0;
    while (LT(i, npairs)) {
        base = 2 + i * 2;
        emit_s('SM_PUSH_VAR', '__case_topic__');
        lower_expr(c(t)[base]);
        emit_si('SM_CALL_FN', 'ICN_CASE_EQ', 2);
        jf = emit_i('SM_JUMP_F', 0);
        emit('SM_VOID_POP');
        lower_expr(c(t)[base + 1]);
        Append(jumps, tree('J', '' emit_i('SM_JUMP', 0)));
        sm_patch_jump(jf, sm_label()); emit('SM_VOID_POP');
        i = i + 1;
    }
    if (IDENT(has_def, 1)) lower_expr(c(t)[n(t)]); else emit('SM_PUSH_NULL');
    end = sm_label();
    i = 1;
    while (LE(i, n(jumps))) { sm_patch_jump(v(c(jumps)[i]), end); i = i + 1; }
    return;
}
/* ==================================================================================================================== */
function lower_makelist(t, i) {
    i = 1;
    while (LE(i, n(t))) { lower_expr(c(t)[i]); i = i + 1; }
    emit_si('SM_CALL_FN', 'MAKELIST', n(t));
    return;
}
/* ==================================================================================================================== */
function lower_record(t, i) {
    emit_s('SM_PUSH_LIT_S', (DIFFER(v(t)) v(t), ''));
    i = 1;
    while (LE(i, n(t))) { lower_expr(c(t)[i]); i = i + 1; }
    emit_si('SM_CALL_FN', 'RECORD_MAKE', n(t) + 1);
    return;
}
/* ==================================================================================================================== */
function lower_field(t) {
    lower_expr(T0(t));
    emit_s('SM_PUSH_LIT_S', (DIFFER(v(t)) v(t), ''));
    emit_si('SM_CALL_FN', 'FIELD_GET', 2);
    return;
}
/* ==================================================================================================================== */
function lower_global(t) { emit('SM_PUSH_NULL'); return; }
/* ==================================================================================================================== */
function lower_initial(t, sentinel, skip, done, i) {
    sentinel = '__initial_' g_count '__';
    emit_s('SM_PUSH_VAR', sentinel);
    emit_si('SM_CALL_FN', 'NONNULL', 1);
    skip = emit_i('SM_JUMP_S', 0);
    emit('SM_VOID_POP');
    i = 1;
    while (LE(i, n(t))) {
        if (DIFFER(c(t)[i])) { lower_expr(c(t)[i]); emit('SM_VOID_POP'); }
        i = i + 1;
    }
    emit_i('SM_PUSH_LIT_I', 1);
    emit_s('SM_STORE_VAR', sentinel); emit('SM_VOID_POP');
    done = emit_i('SM_JUMP', 0);
    sm_patch_jump(skip, sm_label()); emit('SM_VOID_POP');
    sm_patch_jump(done, sm_label()); emit('SM_PUSH_NULL');
    return;
}
/* ==================================================================================================================== */
function lower_section_3(t, fn) {
    if (GE(n(t), 3)) {
        lower_expr(c(t)[1]); lower_expr(c(t)[2]); lower_expr(c(t)[3]);
        emit_si('SM_CALL_FN', fn, 3);
    } else { emit('SM_PUSH_NULL'); }
    return;
}
/* ==================================================================================================================== */
function lower_section(t)       { lower_section_3(t, 'ICN_SECTION_RANGE'); return; }
/* ==================================================================================================================== */
function lower_section_plus(t)  { lower_section_3(t, 'ICN_SECTION_PLUS');  return; }
/* ==================================================================================================================== */
function lower_section_minus(t) { lower_section_3(t, 'ICN_SECTION_MINUS'); return; }
/* ==================================================================================================================== */
/* Generator coroutines: full range-coroutine emission requires SM_PUSH_EXPRESSION
 * + GLOCAL slots + BB_PUMP_SM infrastructure not yet wired into the .sc port.
 * Ph1 emits SM_PUSH_EXPR stub; Ph3 will translate emit_range_coroutine. */
function lower_bang_binary(t) { emit('SM_PUSH_EXPR'); emit('SM_BB_PUMP'); return; }
/* ==================================================================================================================== */
function lower_to(t)         { emit('SM_PUSH_EXPR'); emit('SM_BB_PUMP_SM'); return; }
/* ==================================================================================================================== */
function lower_to_by(t)      { emit('SM_PUSH_EXPR'); emit('SM_BB_PUMP_SM'); return; }
/* ==================================================================================================================== */
function lower_every(t)      { emit('SM_PUSH_EXPR'); emit('SM_BB_PUMP_EVERY'); return; }
/* ==================================================================================================================== */
function lower_limit(t)      { emit('SM_PUSH_EXPR'); emit('SM_BB_PUMP'); return; }
/* ==================================================================================================================== */
function lower_bb_pump_ast(t){ emit('SM_PUSH_EXPR'); emit('SM_BB_PUMP_AST'); return; }
/* ==================================================================================================================== */
function lower_suspend(t, jf, jdone) {
    if (GT(n(t), 0) DIFFER(c(t)[1])) lower_expr(c(t)[1]);
    else                              emit('SM_PUSH_NULL');
    jf = emit_i('SM_JUMP_F', 0);
    emit('SM_SUSPEND_VALUE');
    if (GT(n(t), 1) DIFFER(c(t)[2])) { lower_expr(c(t)[2]); emit('SM_VOID_POP'); }
    emit('SM_PUSH_NULL');
    jdone = emit_i('SM_JUMP', 0);
    sm_patch_jump(jf, sm_label());
    sm_patch_jump(jdone, sm_label());
    return;
}
/* ==================================================================================================================== */
/* Prolog: emit BB_ONCE_PROC for named predicate calls, BB_ONCE for inline goals.
 * Mirrors C `strrchr(sval, '/')` — split on the RIGHTMOST '/'. */
function emit_prolog_call(sval, name, arity, sz, i, ch, last_slash) {
    name = sval;
    arity = '0';
    sz = SIZE(sval);
    last_slash = 0;
    i = 1;
    while (LE(i, sz)) {
        if (IDENT(SUBSTR(sval, i, 1), '/')) last_slash = i;
        i = i + 1;
    }
    if (GT(last_slash, 0)) {
        name  = SUBSTR(sval, 1, last_slash - 1);
        arity = SUBSTR(sval, last_slash + 1, sz - last_slash);
        if (IDENT(arity)) arity = '0';
    }
    emit_si('SM_BB_ONCE_PROC', name, arity);
    return;
}
/* ==================================================================================================================== */
function lower_choice(t) {
    if (DIFFER(v(t))) emit_prolog_call(v(t));
    else              { emit('SM_PUSH_EXPR'); emit('SM_BB_ONCE'); }
    return;
}
/* ==================================================================================================================== */
function lower_prolog_child(t) { emit('SM_PUSH_EXPR'); emit('SM_BB_ONCE'); return; }
/* ==================================================================================================================== */
function emit_sii(op, s, i1, i2) { emit_sii = _emit(op, s, '' i1, '' i2); return; }
/* ==================================================================================================================== */
function emit_pat_fn_args(fnc, i, arg) {
    i = 1;
    while (LE(i, n(fnc))) {
        arg = c(fnc)[i];
        if (IDENT(t(arg), 'TT_QLIT')) { lower_expr(arg); }
        else                          { emit_thunk(arg); }
        i = i + 1;
    }
    return;
}
/* ==================================================================================================================== */
function emit_pat_capture(var_node, mode, fnc, names, all_plain, i, arg) {
    if (DIFFER(var_node) IDENT(t(var_node), 'TT_DEFER') GT(n(var_node), 0)) {
        fnc = c(var_node)[1];
        if (DIFFER(fnc) IDENT(t(fnc), 'TT_FNC') DIFFER(v(fnc))) {
            all_plain = 1;
            names = '';
            i = 1;
            while (LE(i, n(fnc))) {
                arg = c(fnc)[i];
                if (DIFFER(arg) IDENT(t(arg), 'TT_VAR') DIFFER(v(arg))) {
                    if (GT(SIZE(names), 0)) { names = names TAB v(arg); }
                    else                    { names = v(arg); }
                } else { all_plain = 0; }
                i = i + 1;
            }
            if (IDENT(all_plain, 1)) {
                emit_sii('SM_PAT_CAPTURE_FN', v(fnc), mode, 0);
                return;
            }
            if (IDENT(n(fnc), 0)) {
                emit_sii('SM_PAT_CAPTURE_FN', v(fnc), mode, 0);
                return;
            }
            emit_pat_fn_args(fnc);
            emit_sii('SM_PAT_CAPTURE_FN_ARGS', v(fnc), mode, n(fnc));
            return;
        }
    }
    emit_si('SM_PAT_CAPTURE', (DIFFER(var_node) v(var_node), ''), mode);
    return;
}
/* ==================================================================================================================== */
function emit_pat_nary(t, op, i) {
    i = 1;
    while (LE(i, n(t))) { lower_pat_expr(c(t)[i]); i = i + 1; }
    i = 2;
    while (LE(i, n(t))) { emit(op); i = i + 1; }
    return;
}
/* ==================================================================================================================== */
function lower_pat_expr(t, k, ch) {
    if (IDENT(t)) return;
    k = t(t);
    if (IDENT(k, 'TT_QLIT'))    { emit_s('SM_PAT_LIT', (DIFFER(v(t)) v(t), '')); return; }
    if (IDENT(k, 'TT_VAR'))     { emit_s('SM_PUSH_VAR', v(t)); emit('SM_PAT_DEREF'); return; }
    if (IDENT(k, 'TT_ARB'))     { emit('SM_PAT_ARB');     return; }
    if (IDENT(k, 'TT_REM'))     { emit('SM_PAT_REM');     return; }
    if (IDENT(k, 'TT_FAIL'))    { emit('SM_PAT_FAIL');    return; }
    if (IDENT(k, 'TT_SUCCEED')) { emit('SM_PAT_SUCCEED'); return; }
    if (IDENT(k, 'TT_ABORT'))   { emit('SM_PAT_ABORT');   return; }
    if (IDENT(k, 'TT_BAL'))     { emit('SM_PAT_BAL');     return; }
    if (IDENT(k, 'TT_FENCE')) {
        if (GT(n(t), 0)) { lower_pat_expr(c(t)[1]); emit('SM_PAT_FENCE1'); }
        else             { emit('SM_PAT_FENCE'); }
        return;
    }
    if (IDENT(k, 'TT_ANY'))    { lower_expr(T0(t)); emit('SM_PAT_ANY');    return; }
    if (IDENT(k, 'TT_NOTANY')) { lower_expr(T0(t)); emit('SM_PAT_NOTANY'); return; }
    if (IDENT(k, 'TT_SPAN'))   { lower_expr(T0(t)); emit('SM_PAT_SPAN');   return; }
    if (IDENT(k, 'TT_BREAK'))  { lower_expr(T0(t)); emit('SM_PAT_BREAK');  return; }
    if (IDENT(k, 'TT_BREAKX')) { lower_expr(T0(t)); emit('SM_PAT_BREAK');  return; }
    if (IDENT(k, 'TT_LEN'))    { lower_expr(T0(t)); emit('SM_PAT_LEN');    return; }
    if (IDENT(k, 'TT_POS'))    { lower_expr(T0(t)); emit('SM_PAT_POS');    return; }
    if (IDENT(k, 'TT_RPOS'))   { lower_expr(T0(t)); emit('SM_PAT_RPOS');   return; }
    if (IDENT(k, 'TT_TAB'))    { lower_expr(T0(t)); emit('SM_PAT_TAB');    return; }
    if (IDENT(k, 'TT_RTAB'))   { lower_expr(T0(t)); emit('SM_PAT_RTAB');   return; }
    if (IDENT(k, 'TT_ARBNO'))  { lower_pat_expr(T0(t)); emit('SM_PAT_ARBNO'); return; }
    if (IDENT(k, 'TT_SEQ'))    { emit_pat_nary(t, 'SM_PAT_CAT'); return; }
    if (IDENT(k, 'TT_CAT'))    { emit_pat_nary(t, 'SM_PAT_CAT'); return; }
    if (IDENT(k, 'TT_ALT'))    { emit_pat_nary(t, 'SM_PAT_ALT'); return; }
    if (IDENT(k, 'TT_CAPT_COND_ASGN')) {
        lower_pat_expr(T0(t));
        if (GT(n(t), 1)) { emit_pat_capture(c(t)[2], 0); }
        return;
    }
    if (IDENT(k, 'TT_CAPT_IMMED_ASGN')) {
        lower_pat_expr(T0(t));
        if (GT(n(t), 1)) { emit_pat_capture(c(t)[2], 1); }
        return;
    }
    if (IDENT(k, 'TT_CAPT_CURSOR')) {
        if (IDENT(n(t), 1)) {
            emit('SM_PAT_EPS');
            emit_pat_capture(c(t)[1], 2);
        } else {
            lower_pat_expr(T0(t));
            if (GT(n(t), 1)) { emit_pat_capture(c(t)[2], 2); }
        }
        return;
    }
    if (IDENT(k, 'TT_DEFER')) {
        ch = c(t)[1];
        if (DIFFER(ch) IDENT(t(ch), 'TT_FNC') DIFFER(v(ch))) {
            if (IDENT(n(ch), 0)) {
                emit_s('SM_PAT_USERCALL', v(ch));
            } else {
                emit_pat_fn_args(ch);
                emit_si('SM_PAT_USERCALL_ARGS', v(ch), n(ch));
            }
            return;
        }
        if (DIFFER(ch) IDENT(t(ch), 'TT_VAR') DIFFER(v(ch))) {
            emit_s('SM_PAT_REFNAME', v(ch));
            return;
        }
        lower_expr(ch);
        emit('SM_PAT_DEREF');
        return;
    }
    lower_expr(t);
    emit('SM_PAT_DEREF');
    return;
}
/* ==================================================================================================================== */
function lower_expr(t, k) {
    if (IDENT(t)) { emit('SM_PUSH_NULL'); return; }
    k = t(t);
    if (IDENT(k, 'TT_QLIT')) { lower_strlit(t); return; }
    if (IDENT(k, 'TT_ILIT')) { lower_ilit(t);   return; }
    if (IDENT(k, 'TT_FLIT')) { lower_flit(t);   return; }
    if (IDENT(k, 'TT_NUL'))  { lower_nul(t);    return; }
    if (IDENT(k, 'TT_VAR'))     { lower_var(t);     return; }
    if (IDENT(k, 'TT_KEYWORD')) { lower_keyword(t); return; }
    if (IDENT(k, 'TT_ADD')) { lower_add(t); return; }
    if (IDENT(k, 'TT_SUB')) { lower_sub(t); return; }
    if (IDENT(k, 'TT_MUL')) { lower_mul(t); return; }
    if (IDENT(k, 'TT_DIV')) { lower_div(t); return; }
    if (IDENT(k, 'TT_MOD')) { lower_mod(t); return; }
    if (IDENT(k, 'TT_POW')) { lower_pow(t); return; }
    if (IDENT(k, 'TT_MNS')) { lower_mns(t); return; }
    if (IDENT(k, 'TT_PLS')) { lower_pls(t); return; }
    if (IDENT(k, 'TT_CAT')) { lower_cat_seq(t); return; }
    if (IDENT(k, 'TT_SEQ')) { lower_cat_seq(t); return; }
    if (IDENT(k, 'TT_ALT')) { lower_pat_expr(t); return; }
    if (IDENT(k, 'TT_ARB'))    { lower_pat_expr(t); return; }
    if (IDENT(k, 'TT_ARBNO'))  { lower_pat_expr(t); return; }
    if (IDENT(k, 'TT_POS'))    { lower_pat_expr(t); return; }
    if (IDENT(k, 'TT_RPOS'))   { lower_pat_expr(t); return; }
    if (IDENT(k, 'TT_ANY'))    { lower_pat_expr(t); return; }
    if (IDENT(k, 'TT_NOTANY')) { lower_pat_expr(t); return; }
    if (IDENT(k, 'TT_SPAN'))   { lower_pat_expr(t); return; }
    if (IDENT(k, 'TT_BREAK'))  { lower_pat_expr(t); return; }
    if (IDENT(k, 'TT_BREAKX')) { lower_pat_expr(t); return; }
    if (IDENT(k, 'TT_LEN'))    { lower_pat_expr(t); return; }
    if (IDENT(k, 'TT_TAB'))    { lower_pat_expr(t); return; }
    if (IDENT(k, 'TT_RTAB'))   { lower_pat_expr(t); return; }
    if (IDENT(k, 'TT_REM'))    { lower_pat_expr(t); return; }
    if (IDENT(k, 'TT_FAIL'))   { lower_pat_expr(t); return; }
    if (IDENT(k, 'TT_SUCCEED')){ lower_pat_expr(t); return; }
    if (IDENT(k, 'TT_FENCE'))  { lower_pat_expr(t); return; }
    if (IDENT(k, 'TT_ABORT'))  { lower_pat_expr(t); return; }
    if (IDENT(k, 'TT_BAL'))    { lower_pat_expr(t); return; }
    if (IDENT(k, 'TT_FNC'))    { lower_fnc(t);    return; }
    if (IDENT(k, 'TT_ASSIGN')) { lower_assign(t); return; }
    if (IDENT(k, 'TT_CSET'))   { lower_strlit(t); return; }
    if (IDENT(k, 'TT_INDIRECT'))    { lower_indirect(t);    return; }
    if (IDENT(k, 'TT_DEFER'))       { lower_defer(t);       return; }
    if (IDENT(k, 'TT_INTERROGATE')) { lower_interrogate(t); return; }
    if (IDENT(k, 'TT_NAME'))        { lower_name(t);        return; }
    if (IDENT(k, 'TT_VLIST'))       { lower_vlist(t);       return; }
    if (IDENT(k, 'TT_OPSYN'))       { lower_opsyn(t);       return; }
    if (IDENT(k, 'TT_IDX'))         { lower_idx(t);         return; }
    if (IDENT(k, 'TT_SCAN'))        { lower_scan(t);        return; }
    if (IDENT(k, 'TT_SWAP'))        { lower_swap(t);        return; }
    if (IDENT(k, 'TT_LT')) { lower_acomp(t); return; }
    if (IDENT(k, 'TT_LE')) { lower_acomp(t); return; }
    if (IDENT(k, 'TT_GT')) { lower_acomp(t); return; }
    if (IDENT(k, 'TT_GE')) { lower_acomp(t); return; }
    if (IDENT(k, 'TT_EQ')) { lower_acomp(t); return; }
    if (IDENT(k, 'TT_NE')) { lower_acomp(t); return; }
    if (IDENT(k, 'TT_LLT')) { lower_lcomp(t); return; }
    if (IDENT(k, 'TT_LLE')) { lower_lcomp(t); return; }
    if (IDENT(k, 'TT_LGT')) { lower_lcomp(t); return; }
    if (IDENT(k, 'TT_LGE')) { lower_lcomp(t); return; }
    if (IDENT(k, 'TT_LEQ')) { lower_lcomp(t); return; }
    if (IDENT(k, 'TT_LNE')) { lower_lcomp(t); return; }
    if (IDENT(k, 'TT_CSET_COMPL')) { emit('SM_PUSH_EXPR'); return; }
    if (IDENT(k, 'TT_CSET_UNION')) { emit('SM_PUSH_EXPR'); return; }
    if (IDENT(k, 'TT_CSET_DIFF'))  { emit('SM_PUSH_EXPR'); return; }
    if (IDENT(k, 'TT_CSET_INTER')) { emit('SM_PUSH_EXPR'); return; }
    if (IDENT(k, 'TT_LCONCAT'))    { lower_lconcat(t);    return; }
    if (IDENT(k, 'TT_NONNULL'))    { lower_nonnull(t);    return; }
    if (IDENT(k, 'TT_NULL'))       { lower_null(t);       return; }
    if (IDENT(k, 'TT_NOT'))        { lower_not(t);        return; }
    if (IDENT(k, 'TT_SIZE'))       { lower_size(t);       return; }
    if (IDENT(k, 'TT_RANDOM'))     { lower_random(t);     return; }
    if (IDENT(k, 'TT_IDENTICAL'))  { lower_identical(t);  return; }
    if (IDENT(k, 'TT_AUGOP'))      { lower_augop(t);      return; }
    if (IDENT(k, 'TT_SEQ_EXPR'))   { lower_seq_expr(t);   return; }
    /* PST-SC-4c: Snocone if bodies are TT_PROGRAM (stmt blocks); use lower_if_stmt */
    if (IDENT(k, 'TT_IF'))         { (GT(n(t), 1) DIFFER(c(t)[2]) IDENT(t(c(t)[2]), 'TT_PROGRAM')) lower_if_stmt(t) :f lower_if(t); return; }
    if (IDENT(k, 'TT_WHILE'))      { lower_while(t);      return; }
    if (IDENT(k, 'TT_DO_WHILE'))   { lower_do_while(t);   return; }
    if (IDENT(k, 'TT_FOR'))        { lower_for(t);        return; }
    /* PST-SC-4b (2026-05-16): TT_PROGRAM as a block body inside TT_IF then/else slots.
     * Lower each child statement for effect; push null as block value. */
    if (IDENT(k, 'TT_PROGRAM'))    { lower_program_block(t); return; }
    if (IDENT(k, 'TT_UNTIL'))      { lower_until(t);      return; }
    if (IDENT(k, 'TT_REPEAT'))     { lower_repeat(t);     return; }
    if (IDENT(k, 'TT_LOOP_BREAK')) { lower_loop_break(t); return; }
    if (IDENT(k, 'TT_LOOP_NEXT'))  { lower_loop_next(t);  return; }
    if (IDENT(k, 'TT_RETURN'))     { lower_return(t);     return; }
    if (IDENT(k, 'TT_PROC_FAIL'))  { lower_proc_fail(t);  return; }
    if (IDENT(k, 'TT_CASE'))       { lower_case(t);       return; }
    if (IDENT(k, 'TT_MAKELIST'))   { lower_makelist(t);   return; }
    if (IDENT(k, 'TT_RECORD'))     { lower_record(t);     return; }
    if (IDENT(k, 'TT_FIELD'))      { lower_field(t);      return; }
    if (IDENT(k, 'TT_GLOBAL'))     { lower_global(t);     return; }
    if (IDENT(k, 'TT_INITIAL'))    { lower_initial(t);    return; }
    if (IDENT(k, 'TT_SECTION'))       { lower_section(t);       return; }
    if (IDENT(k, 'TT_SECTION_PLUS'))  { lower_section_plus(t);  return; }
    if (IDENT(k, 'TT_SECTION_MINUS')) { lower_section_minus(t); return; }
    if (IDENT(k, 'TT_BANG_BINARY'))   { lower_bang_binary(t);   return; }
    if (IDENT(k, 'TT_SUSPEND'))    { lower_suspend(t);    return; }
    if (IDENT(k, 'TT_TO'))         { lower_to(t);         return; }
    if (IDENT(k, 'TT_TO_BY'))      { lower_to_by(t);      return; }
    if (IDENT(k, 'TT_LIMIT'))      { lower_limit(t);      return; }
    if (IDENT(k, 'TT_ALTERNATE'))  { lower_bb_pump_ast(t); return; }
    if (IDENT(k, 'TT_ITERATE'))    { lower_bb_pump_ast(t); return; }
    if (IDENT(k, 'TT_EVERY'))      { lower_every(t);      return; }
    if (IDENT(k, 'TT_CHOICE'))     { lower_choice(t);     return; }
    if (IDENT(k, 'TT_CLAUSE'))       { lower_prolog_child(t); return; }
    if (IDENT(k, 'TT_CUT'))          { lower_prolog_child(t); return; }
    if (IDENT(k, 'TT_UNIFY'))        { lower_prolog_child(t); return; }
    if (IDENT(k, 'TT_TRAIL_MARK'))   { lower_prolog_child(t); return; }
    if (IDENT(k, 'TT_TRAIL_UNWIND')) { lower_prolog_child(t); return; }
    if (IDENT(k, 'TT_CAPT_COND_ASGN'))  { lower_pat_expr(t); return; }
    if (IDENT(k, 'TT_CAPT_IMMED_ASGN')) { lower_pat_expr(t); return; }
    if (IDENT(k, 'TT_CAPT_CURSOR'))     { lower_pat_expr(t); return; }
    g_unhandled[k] = 1;
    emit('SM_PUSH_NULL');
    return;
}
/* ==================================================================================================================== */
/* PST-SN4-2 (2026-05-16): parser now emits TT_STMT with source-order children:
 *   TT_LABEL? subject? TT_PAT(pat)? TT_EQ(repl?)? TT_GOTO_U/S/F*
 * lower_sno_unpack walks those children by kind and populates lower_stmt's locals.
 * The old sno_pp_stmt / sno_strip_parens / sno_make_goto_slot helpers are gone. */
function lower_sno_unpack(s, i, ch, k, eq_node,
                          out_label, out_is_end, out_subject, out_pattern,
                          out_has_eq, out_replacement, out_goto_s, out_goto_f, out_goto_u) {
    out_label = ''; out_is_end = 0; out_subject = NULL; out_pattern = NULL;
    out_has_eq = 0; out_replacement = NULL;
    out_goto_s = ''; out_goto_f = ''; out_goto_u = '';
    i = 1;
    while (LE(i, n(s))) {
        ch = c(s)[i];
        k  = t(ch);
        if (IDENT(k, 'TT_LABEL')) {
            out_label  = v(ch);
            out_is_end = (IDENT(out_label, 'END') 1, 0);
        } else if (IDENT(k, 'TT_PAT')) {
            out_pattern = (GT(n(ch), 0) c(ch)[1], NULL);
        } else if (IDENT(k, 'TT_EQ')) {
            out_has_eq  = 1;
            out_replacement = (GT(n(ch), 0) c(ch)[1], NULL);
        } else if (IDENT(k, 'TT_GOTO_S')) {
            out_goto_s = (GT(n(ch), 0) v(c(ch)[1]), '');
        } else if (IDENT(k, 'TT_GOTO_F')) {
            out_goto_f = (GT(n(ch), 0) v(c(ch)[1]), '');
        } else if (IDENT(k, 'TT_GOTO_U')) {
            out_goto_u = (GT(n(ch), 0) v(c(ch)[1]), '');
        } else {
            out_subject = ch;
        }
        i = i + 1;
    }
    return;
}
/* ==================================================================================================================== */
function stmt_attr_find(s, tag, i, ch) {
    stmt_attr_find = NULL;
    i = 1;
    while (LE(i, n(s))) {
        ch = c(s)[i];
        if (IDENT(t(ch), tag)) { stmt_attr_find = ch; return; }
        i = i + 1;
    }
    return;
}
/* ==================================================================================================================== */
function stmt_attr_str(s, tag, a) {
    a = stmt_attr_find(s, tag);
    stmt_attr_str = (DIFFER(a) v(a), '');
    return;
}
/* ==================================================================================================================== */
function attr_int_of(s, tag, sv) {
    sv = stmt_attr_str(s, tag);
    attr_int_of = (DIFFER(sv) sv, 0);
    return;
}
/* ==================================================================================================================== */
function attr_expr_of(s, tag, a) {
    a = stmt_attr_find(s, tag);
    if (IDENT(a)) { attr_expr_of = NULL; return; }
    if (GT(n(a), 0)) { attr_expr_of = c(a)[1]; return; }
    attr_expr_of = NULL;
    return;
}
/* ==================================================================================================================== */
function lower_stmt(s, label, lang, stno, lineno, subject, pattern, has_eq,
                    replacement, goto_s, goto_f, goto_u,
                    goto_u_expr,
                    is_end, sname, sv_name, ts,
                    first_child, seq_n_lwr, pat_seq_lwr, i_lwr,
                    name, sig, body, skip, entry_pos, i) {
    /* PST-SC-4h: TT_LOOP_BREAK/NEXT appear directly as stmt children of TT_PROGRAM */
    if (IDENT(t(s), 'TT_LOOP_BREAK') | IDENT(t(s), 'TT_LOOP_NEXT')) {
        lower_expr(s); emit('SM_VOID_POP'); return;
    }
    /* PST-SC-4g: TT_DEFINE(QLIT(name), QLIT(sig), TT_PROGRAM(body)) */
    if (IDENT(t(s), 'TT_DEFINE')) {
        name = (GT(n(s), 0) DIFFER(c(s)[1])) c(s)[1].sval ;
        sig  = (GT(n(s), 1) DIFFER(c(s)[2])) c(s)[2].sval ;
        emit_s('SM_PUSH_LIT_S', sig); emit_si('SM_CALL_FN', 'DEFINE', 1); emit('SM_VOID_POP');
        skip = emit_i('SM_JUMP', 0);
        entry_pos = g_count;
        emit_s('SM_LABEL', name); labtab_define(name, g_count - 1);
        body = (GT(n(s), 2)) c(s)[3] ;
        if (DIFFER(body) IDENT(t(body), 'TT_PROGRAM')) {
            i = 1; while (LE(i, n(body))) { if (DIFFER(c(body)[i])) lower_stmt(c(body)[i]); i = i + 1; }
        } else if (DIFFER(body)) { lower_expr(body); emit('SM_VOID_POP'); }
        sm_patch_jump(skip, g_count);
        return;
    }
    /* PST-SN4-2: TT_STMT is the new pure-syntax-tree shape from parser_snobol4.sc.
     * lower_sno_unpack extracts fields by child kind; old attr-tag path handles
     * pre-existing STMT nodes from test harnesses and other callers. */
    if (IDENT(t(s), 'TT_STMT')) {
        lower_sno_unpack(s, , , , , label, is_end, subject, pattern, has_eq, replacement, goto_s, goto_f, goto_u);
        goto_u_expr = NULL;
        lang = LANG_SNO; g_lang = LANG_SNO; stno = 0; lineno = 0;
        if (IDENT(is_end, 1)) {
            if (DIFFER(label)) { emit_s('SM_LABEL', label); labtab_define(label, g_count - 1); }
            emit_ii('SM_STNO', stno, lineno); emit('SM_HALT'); return;
        }
    } else {
        is_end = (DIFFER(stmt_attr_find(s, SL_END)) 1, 0);
        if (IDENT(is_end, 1)) {
            label = stmt_attr_str(s, SL_LBL);
            if (DIFFER(label)) { emit_s('SM_LABEL', label); labtab_define(label, g_count - 1); }
            stno   = attr_int_of(s, SL_STNO);
            lineno = attr_int_of(s, SL_LINE);
            emit_ii('SM_STNO', stno, lineno); emit('SM_HALT'); return;
        }
        label   = stmt_attr_str(s, SL_LBL);
        lang    = attr_int_of(s, SL_LANG);
        g_lang  = lang;
        stno    = attr_int_of(s, SL_STNO);
        lineno  = attr_int_of(s, SL_LINE);
        subject     = attr_expr_of(s, SL_SUBJ);
        pattern     = attr_expr_of(s, SL_PAT);
        has_eq      = (DIFFER(stmt_attr_find(s, SL_EQ)) 1, 0);
        replacement = attr_expr_of(s, SL_REPL);
        goto_s      = stmt_attr_str(s, SL_GOS);
        goto_f      = stmt_attr_str(s, SL_GOF);
        goto_u      = stmt_attr_str(s, SL_GOU);
        goto_u_expr = attr_expr_of(s, SL_GOU);
    }
    if (IDENT(label) IDENT(subject) IDENT(pattern) EQ(has_eq, 0)
        IDENT(goto_u) IDENT(goto_s) IDENT(goto_f) IDENT(goto_u_expr)) return;
    if (DIFFER(label)) {
        emit_s('SM_LABEL', label);
        labtab_define(label, g_count - 1);
        /* SM_DEFINE_ENTRY: Ph3 will check g_proc_table[label] here and emit
         * SM_DEFINE_ENTRY when label is a procedure entry point. */
    }
    emit_ii('SM_STNO', stno, lineno);
    if (IDENT(lang, LANG_ICN)) return;
    if (IDENT(lang, LANG_PL)) {
        if (DIFFER(subject) IDENT(t(subject), 'TT_CHOICE') DIFFER(v(subject))) {
            emit_prolog_call(v(subject));
        } else {
            if (DIFFER(subject)) lower_expr(subject); else emit('SM_PUSH_NULL');
            emit('SM_BB_ONCE');
        }
        goto emit_gotos;
    }
    /* PST-SN4-1b (2026-05-16): subject/pattern split moved from pp_stmt.
     * Mirrors C lower.c: unpack TT_SCAN and split TT_SEQ(var,...) into subj/pat. */
    if (IDENT(pattern) IDENT(t(subject), 'TT_SCAN') EQ(n(subject), 2)) {
        pattern = c(subject)[2];
        subject = c(subject)[1];
    }
    if (IDENT(pattern) DIFFER(subject) IDENT(t(subject), 'TT_SEQ') GT(n(subject), 1)) {
        first_child = c(subject)[1];
        if (IDENT(t(first_child), 'TT_VAR') | IDENT(t(first_child), 'TT_KEYWORD')
            | IDENT(t(first_child), 'TT_QLIT') | IDENT(t(first_child), 'TT_INDIRECT')) {
            seq_n_lwr = n(subject);
            if (EQ(seq_n_lwr, 2)) {
                pattern = c(subject)[2];
            } else {
                pat_seq_lwr = Tree('TT_SEQ', '', 0);
                i_lwr = 2;
                while (LE(i_lwr, seq_n_lwr)) { Append(pat_seq_lwr, c(subject)[i_lwr]); i_lwr = i_lwr + 1; }
                pattern = pat_seq_lwr;
            }
            subject = first_child;
        }
    }
    if (DIFFER(pattern)) {
        lower_pat_expr(pattern);
        if (DIFFER(subject)) lower_expr(subject); else emit('SM_PUSH_NULL');
        if (EQ(has_eq, 1)) {
            if (DIFFER(replacement)) lower_expr(replacement);
            else                     emit_s('SM_PUSH_LIT_S', '');
        } else {
            emit_i('SM_PUSH_LIT_I', 0);
        }
        sname = '';
        if (DIFFER(subject)) {
            ts = t(subject);
            if (IDENT(ts, 'TT_VAR')) sname = (DIFFER(v(subject)) v(subject), '');
            if (IDENT(ts, 'TT_KEYWORD')) sname = (DIFFER(v(subject)) v(subject), '');
        }
        emit_si('SM_EXEC_STMT', sname, has_eq);
        goto emit_gotos;
    }
    if (DIFFER(subject)) {
        if (EQ(has_eq, 1)) {
            if (DIFFER(replacement)) lower_expr(replacement);
            else                     emit('SM_PUSH_NULL');
            emit_lhs_store(subject);
        } else {
            if (IDENT(t(subject), 'TT_VAR') DIFFER(v(subject))) {
                sv_name = REPLACE(v(subject), &LCASE, &UCASE);
                if (IDENT(sv_name, 'RETURN'))  { emit('SM_RETURN');  goto emit_gotos; }
                if (IDENT(sv_name, 'FRETURN')) { emit('SM_FRETURN'); goto emit_gotos; }
                if (IDENT(sv_name, 'NRETURN')) { emit('SM_NRETURN'); goto emit_gotos; }
            }
            lower_expr(subject);
            emit('SM_VOID_POP');
        }
    }
emit_gotos:
    if (IDENT(goto_u) IDENT(goto_s) IDENT(goto_f) IDENT(goto_u_expr)) return;
    if (DIFFER(goto_u)) { emit_goto('SM_JUMP',   goto_u); return; }
    if (DIFFER(goto_u_expr)) {
        lower_expr(goto_u_expr);
        emit('SM_JUMP_INDIR');
        return;
    }
    if (DIFFER(goto_s))   emit_goto('SM_JUMP_S', goto_s);
    if (DIFFER(goto_f))   emit_goto('SM_JUMP_F', goto_f);
    return;
}
/* ==================================================================================================================== */
/* ==================================================================================================================== */
/* Procedure skeleton emission.
 * The C `lower_proc_skeletons()` walks `proc_table[]` (Icon procs) and
 * `g_pl_pred_table` (Prolog predicates) to emit JUMP/label/body/RETURN/skip
 * stubs so forward references resolve before bodies land.  The .sc port
 * does not yet share those C-side global tables — Ph3 will introduce
 * `g_proc_table` / `g_pl_pred_table` Snocone equivalents.  Stub keeps
 * `lower()` structurally identical to C: empty pass, no instructions emitted. */
function lower_proc_skeletons() { return; }
/* ==================================================================================================================== */
function lower(prog, i, s, last_op, s_lang, has_icn) {
    g_sm     = tree('SM_LIST', '');
    g_count  = 0;
    g_labtab = TABLE();
    g_patch  = tree('PATCH', '');
    g_instr_tbl = TABLE();
    g_unhandled = TABLE();
    g_in_proc = 0;
    lower_proc_skeletons();
    has_icn = 0;
    i = 1;
    while (LE(i, n(prog))) {
        s = c(prog)[i];
        if (DIFFER(s)) {
            s_lang = (IDENT(t(s), 'STMT') attr_int_of(s, SL_LANG), 0);
            if (IDENT(t(s), 'STMT') IDENT(s_lang, LANG_ICN)) {
                has_icn = 1;
            } else {
                lower_stmt(s);
            }
        }
        i = i + 1;
    }
    if (IDENT(has_icn, 1)) emit_si('SM_BB_PUMP_PROC', 'main', 0);
    if (EQ(g_count, 0)) {
        emit('SM_HALT');
    } else {
        last_op = op(g_instr_tbl[g_count - 1]);
        if (~IDENT(last_op, 'SM_HALT')) emit('SM_HALT');
    }
    labtab_resolve();
    return;
}
/* ==================================================================================================================== */
function pad_op(op, padded, room) {
    padded = op;
    room = 21 - SIZE(op);
    while (GT(room, 0)) { padded = padded ' '; room = room - 1; }
    pad_op = padded;
    return;
}
/* ==================================================================================================================== */
function pad_idx(i, s, n) {
    s = '' i;
    n = 4 - SIZE(s);
    while (GT(n, 0)) { s = ' ' s; n = n - 1; }
    pad_idx = s;
    return;
}
JUMP_OPS = TABLE();
JUMP_OPS['SM_JUMP']   = 1;
JUMP_OPS['SM_JUMP_S'] = 1;
JUMP_OPS['SM_JUMP_F'] = 1;
STR_OPS = TABLE();
STR_OPS['SM_PUSH_LIT_S'] = 1;
STR_OPS['SM_PUSH_VAR']   = 1;
STR_OPS['SM_STORE_VAR']  = 1;
STR_OPS['SM_LABEL']      = 1;
STR_OPS['SM_PAT_LIT']    = 1;
STR_OPS['SM_PAT_REFNAME']= 1;
/* ==================================================================================================================== */
function fmt_instr(idx, ins, op_str) {
    ins = g_instr_tbl[idx];
    op_str = op(ins);
    if (IDENT(op_str, 'SM_CALL_FN')) {
        fmt_instr = pad_idx(idx) '  ' pad_op(op_str) ' s="' a0(ins) '" nargs=' a1(ins);
        return;
    }
    if (IDENT(op_str, 'SM_EXEC_STMT')) {
        fmt_instr = pad_idx(idx) '  ' pad_op(op_str) ' s="' a0(ins) '" nargs=' a1(ins);
        return;
    }
    if (DIFFER(JUMP_OPS[op_str])) {
        fmt_instr = pad_idx(idx) '  ' pad_op(op_str) ' -> ' a0(ins);
        return;
    }
    if (DIFFER(STR_OPS[op_str])) {
        fmt_instr = pad_idx(idx) '  ' pad_op(op_str) ' s="' a0(ins) '"';
        return;
    }
    if (IDENT(op_str, 'SM_PUSH_LIT_I')) {
        fmt_instr = pad_idx(idx) '  ' pad_op(op_str) ' i=' a0(ins);
        return;
    }
    if (IDENT(op_str, 'SM_PUSH_LIT_F')) {
        fmt_instr = pad_idx(idx) '  ' pad_op(op_str) ' f=' a0(ins);
        return;
    }
    if (IDENT(op_str, 'SM_STNO')) {
        fmt_instr = pad_idx(idx) '  ' pad_op(op_str) ' stmt=' a0(ins) ' line=' a1(ins);
        return;
    }
    if (IDENT(op_str, 'SM_PUSH_EXPRESSION')) {
        fmt_instr = pad_idx(idx) '  ' pad_op(op_str) ' entry=' a0(ins);
        return;
    }
    if (IDENT(op_str, 'SM_CALL_EXPRESSION')) {
        fmt_instr = pad_idx(idx) '  ' pad_op(op_str) ' entry=' a0(ins);
        return;
    }
    fmt_instr = pad_idx(idx) '  ' pad_op(op_str);
    return;
}
/* ==================================================================================================================== */
function sm_dump(i) {
    OUTPUT = '; SM_Program  count=' g_count;
    i = 0;
    while (LT(i, g_count)) {
        OUTPUT = fmt_instr(i);
        i = i + 1;
    }
    return;
}
/* ==================================================================================================================== */
function ast_dump(prog, i, s) {
    i = 1;
    while (LE(i, n(prog))) {
        s = c(prog)[i];
        if (DIFFER(s)) OUTPUT = TLump(s, 16384);
        i = i + 1;
    }
    return;
}
