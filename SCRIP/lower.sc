
&FULLSCAN  = 1;
&MAXLNGTH  = 16384;

TT_QLIT             = 'TT_QLIT';
TT_ILIT             = 'TT_ILIT';
TT_FLIT             = 'TT_FLIT';
TT_NUL              = 'TT_NUL';
TT_VAR              = 'TT_VAR';
TT_KEYWORD          = 'TT_KEYWORD';
TT_INDIRECT         = 'TT_INDIRECT';
TT_DEFER            = 'TT_DEFER';
TT_NAME             = 'TT_NAME';
TT_FNC              = 'TT_FNC';
TT_IDX              = 'TT_IDX';
TT_ASSIGN           = 'TT_ASSIGN';
TT_INTERROGATE      = 'TT_INTERROGATE';
TT_MNS              = 'TT_MNS';
TT_PLS              = 'TT_PLS';
TT_ADD              = 'TT_ADD';
TT_SUB              = 'TT_SUB';
TT_MUL              = 'TT_MUL';
TT_DIV              = 'TT_DIV';
TT_MOD              = 'TT_MOD';
TT_POW              = 'TT_POW';
TT_VLIST            = 'TT_VLIST';
TT_SEQ              = 'TT_SEQ';
TT_CAT              = 'TT_CAT';
TT_ALT              = 'TT_ALT';
TT_OPSYN            = 'TT_OPSYN';
TT_ARB              = 'TT_ARB';
TT_ARBNO            = 'TT_ARBNO';
TT_POS              = 'TT_POS';
TT_RPOS             = 'TT_RPOS';
TT_ANY              = 'TT_ANY';
TT_NOTANY           = 'TT_NOTANY';
TT_SPAN             = 'TT_SPAN';
TT_BREAK            = 'TT_BREAK';
TT_BREAKX           = 'TT_BREAKX';
TT_LEN              = 'TT_LEN';
TT_TAB              = 'TT_TAB';
TT_RTAB             = 'TT_RTAB';
TT_REM              = 'TT_REM';
TT_FAIL             = 'TT_FAIL';
TT_SUCCEED          = 'TT_SUCCEED';
TT_FENCE            = 'TT_FENCE';
TT_ABORT            = 'TT_ABORT';
TT_BAL              = 'TT_BAL';
TT_CAPT_COND_ASGN   = 'TT_CAPT_COND_ASGN';
TT_CAPT_IMMED_ASGN  = 'TT_CAPT_IMMED_ASGN';
TT_CAPT_CURSOR      = 'TT_CAPT_CURSOR';
TT_STMT             = 'STMT';
TT_END              = 'TT_END';
TT_PROGRAM          = 'TT_PROGRAM';
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

LANG_SNO = 0;
LANG_ICN = 1;
LANG_PL  = 2;


function _emit(op, a0, a1, a2, idx, ins) {
    idx = g_count;
    ins = sm_instr(op, a0, a1, a2);
    g_instr_tbl[idx] = ins;
    Append(g_sm, tree('INSTR', '' idx));
    g_count = g_count + 1;
    _emit = idx;
    return;
}

function emit(op)            { emit    = _emit(op, '', '', ''); return; }
function emit_i(op, i)       { emit_i  = _emit(op, '' i,  '',  ''); return; }
function emit_s(op, s)       { emit_s  = _emit(op, s,    '',  ''); return; }
function emit_f(op, f)       { emit_f  = _emit(op, '' f, '',  ''); return; }
function emit_ii(op, i1, i2) { emit_ii = _emit(op, '' i1,'' i2,''); return; }
function emit_si(op, s, i)   { emit_si = _emit(op, s,    '' i,''); return; }

function sm_label() { sm_label = g_count; return; }

function sm_patch_jump(jump_idx, target_idx, old, new) {
    old = g_instr_tbl[jump_idx];
    new = sm_instr(op(old), '' target_idx, a1(old), a2(old));
    g_instr_tbl[jump_idx] = new;
    return;
}


function labtab_define(name, idx) { g_labtab[name] = idx; return; }

function labtab_find(name, v) {
    v = g_labtab[name];
    labtab_find = (DIFFER(v) v, -1);
    return;
}

function labtab_patch_later(jump_idx, name) {
    Append(g_patch, tree('P', '' jump_idx ' ' name));
    return;
}

function labtab_resolve(i, ent, val, jidx, nm, tgt) {
    i = 1;
    while (LE(i, n(g_patch))) {
        ent = c(g_patch)[i];
        val = v(ent);
        val ? POS(0) BREAK(' ') . jidx ' ' REM . nm;
        tgt = labtab_find(nm);
        if (~LT(tgt, 0)) sm_patch_jump(jidx, tgt);
        i = i + 1;
    }
    return;
}

ret_kind_tbl = TABLE();
ret_kind_tbl['RETURN']  = 'SM_RETURN SM_RETURN_S SM_RETURN_F';
ret_kind_tbl['FRETURN'] = 'SM_FRETURN SM_FRETURN_S SM_FRETURN_F';
ret_kind_tbl['NRETURN'] = 'SM_NRETURN SM_NRETURN_S SM_NRETURN_F';

function emit_goto(op, target, upper, row, plain, succ, fail, pick, idx, res) {
    if (IDENT(target)) { emit_goto = -1; return; }
    upper = REPLACE(target, &LCASE, &UCASE);
    row = ret_kind_tbl[upper];
    if (DIFFER(row)) {
        row ? POS(0) BREAK(' ') . plain ' ' BREAK(' ') . succ ' ' REM . fail;
        pick = (IDENT(op, 'SM_JUMP_S') succ,
               (IDENT(op, 'SM_JUMP_F') fail, plain));
        emit_goto = emit(pick);
        return;
    }
    idx = emit_i(op, 0);
    res = labtab_find(target);
    if (~LT(res, 0)) sm_patch_jump(idx, res);
    else             labtab_patch_later(idx, target);
    emit_goto = idx;
    return;
}


function T0(t) { T0 = (GT(n(t), 0) c(t)[1], NULL); return; }
function T1(t) { T1 = (GT(n(t), 1) c(t)[2], NULL); return; }
function T2(t) { T2 = (GT(n(t), 2) c(t)[3], NULL); return; }


function lower_strlit(t) { emit_s('SM_PUSH_LIT_S', (DIFFER(v(t)) v(t), '')); return; }
function lower_ilit(t)   { emit_i('SM_PUSH_LIT_I', (DIFFER(v(t)) v(t), 0)); return; }
function lower_flit(t)   { emit_f('SM_PUSH_LIT_F', (DIFFER(v(t)) v(t), 0)); return; }
function lower_nul(t)    { emit('SM_PUSH_NULL'); return; }
function lower_var(t)    { emit_s('SM_PUSH_VAR',  (DIFFER(v(t)) v(t), '')); return; }
function lower_keyword(t){ emit_s('SM_PUSH_VAR',  (DIFFER(v(t)) v(t), '')); return; }


function lower_bin(t, op) {
    lower_expr(T0(t));
    lower_expr(T1(t));
    emit(op);
    return;
}
function lower_add(t) { lower_bin(t, 'SM_ADD'); return; }
function lower_sub(t) { lower_bin(t, 'SM_SUB'); return; }
function lower_mul(t) { lower_bin(t, 'SM_MUL'); return; }
function lower_div(t) { lower_bin(t, 'SM_DIV'); return; }
function lower_mod(t) { lower_bin(t, 'SM_MOD'); return; }
function lower_pow(t) { lower_bin(t, 'SM_EXP'); return; }
function lower_mns(t) { lower_expr(T0(t)); emit('SM_NEG'); return; }
function lower_pls(t) { lower_expr(T0(t)); emit('SM_COERCE_NUM'); return; }


function lower_fnc(t, i, name) {
    i = 1;
    while (LE(i, n(t))) { lower_expr(c(t)[i]); i = i + 1; }
    name = (DIFFER(v(t)) v(t), '');
    emit_si('SM_CALL_FN', name, n(t));
    return;
}

function lower_cat_seq(t, i) {
    if (IDENT(n(t), 0)) { emit('SM_PUSH_NULL'); return; }
    if (IDENT(n(t), 1)) { lower_expr(c(t)[1]); return; }
    i = 1;
    while (LE(i, n(t))) { lower_expr(c(t)[i]); i = i + 1; }
    i = 2;
    while (LE(i, n(t))) { emit('SM_CONCAT'); i = i + 1; }
    return;
}


function emit_lhs_store(lhs, i) {
    if (IDENT(lhs)) return;
    if (IDENT(t(lhs), TT_VAR))     { emit_s('SM_STORE_VAR', (DIFFER(v(lhs)) v(lhs), '')); return; }
    if (IDENT(t(lhs), TT_KEYWORD)) { emit_s('SM_STORE_VAR', v(lhs)); return; }
    if (IDENT(t(lhs), TT_IDX)) {
        i = 1;
        while (LE(i, n(lhs))) { lower_expr(c(lhs)[i]); i = i + 1; }
        emit_si('SM_CALL_FN', 'IDX_SET', n(lhs) + 1);
        return;
    }
    lower_expr(lhs);
    emit_si('SM_CALL_FN', 'ASGN', 2);
    return;
}

function lower_assign(t) {
    lower_expr(T1(t));
    emit_lhs_store(T0(t));
    return;
}


function lower_pat_nary(t, op, i) {
    i = 1;
    while (LE(i, n(t))) { lower_pat_expr(c(t)[i]); i = i + 1; }
    i = 2;
    while (LE(i, n(t))) { emit(op); i = i + 1; }
    return;
}

function lower_pat_expr(t, k) {
    if (IDENT(t)) return;
    k = t(t);
    if (IDENT(k, TT_QLIT))    { emit_s('SM_PAT_LIT', (DIFFER(v(t)) v(t), '')); return; }
    if (IDENT(k, TT_VAR))     { emit_s('SM_PUSH_VAR', v(t)); emit('SM_PAT_DEREF'); return; }
    if (IDENT(k, TT_ARB))     { emit('SM_PAT_ARB');     return; }
    if (IDENT(k, TT_REM))     { emit('SM_PAT_REM');     return; }
    if (IDENT(k, TT_FAIL))    { emit('SM_PAT_FAIL');    return; }
    if (IDENT(k, TT_SUCCEED)) { emit('SM_PAT_SUCCEED'); return; }
    if (IDENT(k, TT_ABORT))   { emit('SM_PAT_ABORT');   return; }
    if (IDENT(k, TT_BAL))     { emit('SM_PAT_BAL');     return; }
    if (IDENT(k, TT_FENCE)) {
        if (GT(n(t), 0)) { lower_pat_expr(c(t)[1]); emit('SM_PAT_FENCE1'); }
        else             { emit('SM_PAT_FENCE'); }
        return;
    }
    if (IDENT(k, TT_ANY))    { lower_expr(T0(t)); emit('SM_PAT_ANY');    return; }
    if (IDENT(k, TT_NOTANY)) { lower_expr(T0(t)); emit('SM_PAT_NOTANY'); return; }
    if (IDENT(k, TT_SPAN))   { lower_expr(T0(t)); emit('SM_PAT_SPAN');   return; }
    if (IDENT(k, TT_BREAK))  { lower_expr(T0(t)); emit('SM_PAT_BREAK');  return; }
    if (IDENT(k, TT_BREAKX)) { lower_expr(T0(t)); emit('SM_PAT_BREAK');  return; }
    if (IDENT(k, TT_LEN))    { lower_expr(T0(t)); emit('SM_PAT_LEN');    return; }
    if (IDENT(k, TT_POS))    { lower_expr(T0(t)); emit('SM_PAT_POS');    return; }
    if (IDENT(k, TT_RPOS))   { lower_expr(T0(t)); emit('SM_PAT_RPOS');   return; }
    if (IDENT(k, TT_TAB))    { lower_expr(T0(t)); emit('SM_PAT_TAB');    return; }
    if (IDENT(k, TT_RTAB))   { lower_expr(T0(t)); emit('SM_PAT_RTAB');   return; }
    if (IDENT(k, TT_ARBNO))  { lower_pat_expr(T0(t)); emit('SM_PAT_ARBNO'); return; }
    if (IDENT(k, TT_SEQ))    { lower_pat_nary(t, 'SM_PAT_CAT'); return; }
    if (IDENT(k, TT_CAT))    { lower_pat_nary(t, 'SM_PAT_CAT'); return; }
    if (IDENT(k, TT_ALT))    { lower_pat_nary(t, 'SM_PAT_ALT'); return; }
    lower_expr(t);
    emit('SM_PAT_DEREF');
    return;
}

function lower_expr(t, k) {
    if (IDENT(t)) { emit('SM_PUSH_NULL'); return; }
    k = t(t);
    if (IDENT(k, TT_QLIT)) { lower_strlit(t); return; }
    if (IDENT(k, TT_ILIT)) { lower_ilit(t);   return; }
    if (IDENT(k, TT_FLIT)) { lower_flit(t);   return; }
    if (IDENT(k, TT_NUL))  { lower_nul(t);    return; }
    if (IDENT(k, TT_VAR))     { lower_var(t);     return; }
    if (IDENT(k, TT_KEYWORD)) { lower_keyword(t); return; }
    if (IDENT(k, TT_ADD)) { lower_add(t); return; }
    if (IDENT(k, TT_SUB)) { lower_sub(t); return; }
    if (IDENT(k, TT_MUL)) { lower_mul(t); return; }
    if (IDENT(k, TT_DIV)) { lower_div(t); return; }
    if (IDENT(k, TT_MOD)) { lower_mod(t); return; }
    if (IDENT(k, TT_POW)) { lower_pow(t); return; }
    if (IDENT(k, TT_MNS)) { lower_mns(t); return; }
    if (IDENT(k, TT_PLS)) { lower_pls(t); return; }
    if (IDENT(k, TT_CAT)) { lower_cat_seq(t); return; }
    if (IDENT(k, TT_SEQ)) { lower_cat_seq(t); return; }
    if (IDENT(k, TT_ALT)) { lower_pat_expr(t); return; }
    if (IDENT(k, TT_ARB))    { lower_pat_expr(t); return; }
    if (IDENT(k, TT_ARBNO))  { lower_pat_expr(t); return; }
    if (IDENT(k, TT_POS))    { lower_pat_expr(t); return; }
    if (IDENT(k, TT_RPOS))   { lower_pat_expr(t); return; }
    if (IDENT(k, TT_ANY))    { lower_pat_expr(t); return; }
    if (IDENT(k, TT_NOTANY)) { lower_pat_expr(t); return; }
    if (IDENT(k, TT_SPAN))   { lower_pat_expr(t); return; }
    if (IDENT(k, TT_BREAK))  { lower_pat_expr(t); return; }
    if (IDENT(k, TT_BREAKX)) { lower_pat_expr(t); return; }
    if (IDENT(k, TT_LEN))    { lower_pat_expr(t); return; }
    if (IDENT(k, TT_TAB))    { lower_pat_expr(t); return; }
    if (IDENT(k, TT_RTAB))   { lower_pat_expr(t); return; }
    if (IDENT(k, TT_REM))    { lower_pat_expr(t); return; }
    if (IDENT(k, TT_FAIL))   { lower_pat_expr(t); return; }
    if (IDENT(k, TT_SUCCEED)){ lower_pat_expr(t); return; }
    if (IDENT(k, TT_FENCE))  { lower_pat_expr(t); return; }
    if (IDENT(k, TT_ABORT))  { lower_pat_expr(t); return; }
    if (IDENT(k, TT_BAL))    { lower_pat_expr(t); return; }
    if (IDENT(k, TT_FNC))    { lower_fnc(t);    return; }
    if (IDENT(k, TT_ASSIGN)) { lower_assign(t); return; }
    g_unhandled[k] = 1;
    emit('SM_PUSH_NULL');
    return;
}

function attr_find(s, tag, i, ch) {
    attr_find = NULL;
    i = 1;
    while (LE(i, n(s))) {
        ch = c(s)[i];
        if (IDENT(t(ch), tag)) { attr_find = ch; return; }
        i = i + 1;
    }
    return;
}

function attr_str(s, tag, a) {
    a = attr_find(s, tag);
    attr_str = (DIFFER(a) v(a), '');
    return;
}

function attr_int(s, tag, sv) {
    sv = attr_str(s, tag);
    attr_int = (DIFFER(sv) sv, 0);
    return;
}

function attr_expr(s, tag, a) {
    a = attr_find(s, tag);
    if (IDENT(a)) { attr_expr = NULL; return; }
    if (GT(n(a), 0)) { attr_expr = c(a)[1]; return; }
    attr_expr = NULL;
    return;
}


function lower_stmt(s, label, lang, stno, lineno, subject, pattern, has_eq,
                    replacement, goto_s, goto_f, goto_u,
                    is_end, sname) {
    is_end = (DIFFER(attr_find(s, SL_END)) 1, 0);
    if (IDENT(is_end, 1)) {
        label = attr_str(s, SL_LBL);
        if (DIFFER(label)) {
            emit_s('SM_LABEL', label);
            labtab_define(label, g_count - 1);
        }
        stno   = attr_int(s, SL_STNO);
        lineno = attr_int(s, SL_LINE);
        emit_ii('SM_STNO', stno, lineno);
        emit('SM_HALT');
        return;
    }
    label   = attr_str(s, SL_LBL);
    lang    = attr_int(s, SL_LANG);
    g_lang  = lang;
    stno    = attr_int(s, SL_STNO);
    lineno  = attr_int(s, SL_LINE);
    subject     = attr_expr(s, SL_SUBJ);
    pattern     = attr_expr(s, SL_PAT);
    has_eq      = (DIFFER(attr_find(s, SL_EQ)) 1, 0);
    replacement = attr_expr(s, SL_REPL);
    goto_s      = attr_str(s, SL_GOS);
    goto_f      = attr_str(s, SL_GOF);
    goto_u      = attr_str(s, SL_GOU);

    if (IDENT(label) IDENT(subject) IDENT(pattern) EQ(has_eq, 0)
        IDENT(goto_u) IDENT(goto_s) IDENT(goto_f)) return;

    if (DIFFER(label)) {
        emit_s('SM_LABEL', label);
        labtab_define(label, g_count - 1);
    }
    emit_ii('SM_STNO', stno, lineno);

    if (DIFFER(pattern)) {
        lower_pat_expr(pattern);
        if (DIFFER(subject)) lower_expr(subject); else emit('SM_PUSH_NULL');
        if (EQ(has_eq, 1)) {
            if (DIFFER(replacement)) lower_expr(replacement);
            else                     emit_s('SM_PUSH_LIT_S', '');
        } else {
            emit_i('SM_PUSH_LIT_I', 0);
        }
        sname = (DIFFER(subject) (IDENT(t(subject), TT_VAR) v(subject), ''), '');
        emit_si('SM_EXEC_STMT', sname, has_eq);
        goto emit_gotos;
    }

    if (DIFFER(subject)) {
        if (EQ(has_eq, 1)) {
            if (DIFFER(replacement)) lower_expr(replacement);
            else                     emit('SM_PUSH_NULL');
            emit_lhs_store(subject);
        } else {
            lower_expr(subject);
            emit('SM_VOID_POP');
        }
    }

emit_gotos:
    if (IDENT(goto_u) IDENT(goto_s) IDENT(goto_f)) return;
    if (DIFFER(goto_u)) { emit_goto('SM_JUMP',   goto_u); return; }
    if (DIFFER(goto_s))   emit_goto('SM_JUMP_S', goto_s);
    if (DIFFER(goto_f))   emit_goto('SM_JUMP_F', goto_f);
    return;
}

function Lower(prog, i, s, last_op) {
    g_sm     = tree('SM_LIST', '');
    g_count  = 0;
    g_labtab = TABLE();
    g_patch  = tree('PATCH', '');
    g_instr_tbl = TABLE();
    g_unhandled = TABLE();

    i = 1;
    while (LE(i, n(prog))) {
        s = c(prog)[i];
        if (DIFFER(s)) lower_stmt(s);
        i = i + 1;
    }
    if (EQ(g_count, 0)) {
        emit('SM_HALT');
    } else {
        last_op = op(g_instr_tbl[g_count - 1]);
        if (~IDENT(last_op, 'SM_HALT')) emit('SM_HALT');
    }
    labtab_resolve();
    return;
}

function pad_op(op, padded, room) {
    padded = op;
    room = 21 - SIZE(op);
    while (GT(room, 0)) { padded = padded ' '; room = room - 1; }
    pad_op = padded;
    return;
}

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
    fmt_instr = pad_idx(idx) '  ' pad_op(op_str);
    return;
}

function sm_dump(i) {
    OUTPUT = '; SM_Program  count=' g_count;
    i = 0;
    while (LT(i, g_count)) {
        OUTPUT = fmt_instr(i);
        i = i + 1;
    }
    return;
}

function ast_dump(prog, i, s) {
    i = 1;
    while (LE(i, n(prog))) {
        s = c(prog)[i];
        if (DIFFER(s)) OUTPUT = TLump(s, 16384);
        i = i + 1;
    }
    return;
}
