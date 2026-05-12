/* ==================================================================================================================== */
/* sm_interp.sc — Snocone SM interpreter, self-hosting SCRIP.                                                            */
/*                                                                                                                       */
/* Field names parallel one4all/src/runtime/x86/sm_interp.c so the two files read side-by-side.                           */
/* SM_State struct from the C side is collapsed to module globals here — there is only ever one interpreter,              */
/* so the struct indirection has no use.                                                                                  */
/*                                                                                                                       */
/* C side                              .sc side                                                                           */
/* ---------------------------------   ------------------------------------                                               */
/* SM_State st_inst;                   (no struct; module globals)                                                        */
/* st->stack, st->sp, ...              stack, sp, ...                                                                     */
/* prog->instrs[i]                     g_instr_tbl[i]    (TODO: lower.sc still owns this name)                            */
/* prog->count                         g_count           (same TODO)                                                      */
/* sm_push(st, d)                      sm_push(d)                                                                         */
/* sm_pop(st)                          sm_pop()                                                                           */
/* sm_interp_run(prog, st)             sm_interp_run()                                                                    */
/* return 0  (from main loop)          pc = g_count  (push pc past end; while-cond exits)                                 */
/* ==================================================================================================================== */
stack     = TABLE();
sp        = 0;
stack_cap = 0;
last_ok   = 1;
pc        = 0;
si_cap_tmp = '';   /* SI-8: holder for SM_PAT_CAPTURE child pattern; EVAL'd capture expression refs this name */
/* ==================================================================================================================== */
function sm_state_init() {
    stack     = TABLE();
    sp        = 0;
    stack_cap = 0;
    last_ok   = 1;
    pc        = 0;
    return;
}
/* ==================================================================================================================== */
function sm_push(d) {
    stack[sp] = d;
    sp = sp + 1;
    return;
}
/* ==================================================================================================================== */
function sm_pop(d) {
    sp = sp - 1;
    d = stack[sp];
    sm_pop = d;
    return;
}
/* ==================================================================================================================== */
/* sm_interp_step — execute one SM instruction at pc.  Advances pc before dispatching,                                    */
/* matching C convention (ins = &prog->instrs[pc]; pc++; switch (ins->op)).                                              */
/* ==================================================================================================================== */
function sm_interp_step(ins, opc, nm, a, b, repl_v, subj_v, pat_v, sname_v, has_repl_v) {
    ins = g_instr_tbl[pc];
    pc = pc + 1;
    opc = op(ins);
    if (IDENT(opc, 'SM_LABEL'))   return;
    if (IDENT(opc, 'SM_HALT'))    { pc = g_count; return; }
    /* SI-2: STNO + literals + variables + VOID_POP                                                                       */
    if (IDENT(opc, 'SM_STNO'))    { sp = 0; return; }
    if (IDENT(opc, 'SM_PUSH_LIT_S')) { sm_push(a0(ins));           last_ok = 1; return; }
    if (IDENT(opc, 'SM_PUSH_LIT_I')) { sm_push(a0(ins) + 0);       last_ok = 1; return; }
    if (IDENT(opc, 'SM_PUSH_LIT_F')) { sm_push(a0(ins) + 0.0);     last_ok = 1; return; }
    if (IDENT(opc, 'SM_PUSH_NULL'))  { sm_push('');                last_ok = 1; return; }
    if (IDENT(opc, 'SM_PUSH_VAR'))   { nm = a0(ins); sm_push($nm); last_ok = 1; return; }
    if (IDENT(opc, 'SM_STORE_VAR'))  { nm = a0(ins); $nm = sm_pop();            return; }
    if (IDENT(opc, 'SM_VOID_POP'))   { sm_pop();                                return; }
    /* SI-3: jumps                                                                                                        */
    if (IDENT(opc, 'SM_JUMP'))   { pc = a0(ins) + 0;                                return; }
    if (IDENT(opc, 'SM_JUMP_S')) { if (IDENT(last_ok, 1)) pc = a0(ins) + 0;         return; }
    if (IDENT(opc, 'SM_JUMP_F')) { if (IDENT(last_ok, 0)) pc = a0(ins) + 0;         return; }
    /* SI-4: arithmetic + COERCE + CONCAT                                                                                 */
    if (IDENT(opc, 'SM_ADD'))    { b = sm_pop(); a = sm_pop(); sm_push((a + 0) + (b + 0));   last_ok = 1; return; }
    if (IDENT(opc, 'SM_SUB'))    { b = sm_pop(); a = sm_pop(); sm_push((a + 0) - (b + 0));   last_ok = 1; return; }
    if (IDENT(opc, 'SM_MUL'))    { b = sm_pop(); a = sm_pop(); sm_push((a + 0) * (b + 0));   last_ok = 1; return; }
    if (IDENT(opc, 'SM_DIV'))    { b = sm_pop(); a = sm_pop(); sm_push((a + 0) / (b + 0));   last_ok = 1; return; }
    if (IDENT(opc, 'SM_MOD'))    { b = sm_pop(); a = sm_pop(); sm_push(REMDR(a + 0, b + 0)); last_ok = 1; return; }
    if (IDENT(opc, 'SM_NEG'))    { a = sm_pop(); sm_push(0 - (a + 0));                       last_ok = 1; return; }
    if (IDENT(opc, 'SM_EXP'))    { b = sm_pop(); a = sm_pop(); sm_push((a + 0) ^ (b + 0));   last_ok = 1; return; }
    if (IDENT(opc, 'SM_CONCAT')) { b = sm_pop(); a = sm_pop(); sm_push(a b);                 last_ok = 1; return; }
    if (IDENT(opc, 'SM_COERCE_NUM')) { a = sm_pop(); sm_push(a + 0);                         last_ok = 1; return; }
    /* SI-7: pattern matching statement                                                                                   */
    /* SM_PAT_LIT — string literal used as pattern (string IS a pattern in SPITBOL).                                      */
    if (IDENT(opc, 'SM_PAT_LIT'))    { sm_push(a0(ins));                                     last_ok = 1; return; }
    /* SM_PAT_DEREF — TOS is string/pattern/var: if string or pattern, push as-is; else treat as name and look up.       */
    if (IDENT(opc, 'SM_PAT_DEREF'))  { a = sm_pop(); sm_push(a);                             last_ok = 1; return; }
    /* SM_PAT_REFNAME — a0 is a variable name; push a deferred-ref pattern via *name mechanism (host pat_ref).           */
    /* In host Snocone, a bare variable name used as a pattern performs pattern-ref; we use $name to get its value.      */
    if (IDENT(opc, 'SM_PAT_REFNAME')) { nm = a0(ins); sm_push($nm);                          last_ok = 1; return; }
    /* SM_PUSH_EXPR — deferred-expression stub: deferred to Ph2.                                                          */
    if (IDENT(opc, 'SM_PUSH_EXPR'))  { sm_push('');                                          last_ok = 1; return; }
    /* SM_EXEC_STMT — invoke host pattern matcher.                                                                        */
    /* Stack push order from lower: pat, subj, repl_or_zero.  Pop order: repl, subj, pat.                                */
    /* a0(ins)=subject-var-name (string), a1(ins)=has_repl (0 or 1).                                                     */
    /* Strategy: use Snocone host '?' operator. $sname ? pat succeeds/fails natively.                                    */
    if (IDENT(opc, 'SM_EXEC_STMT')) {
        repl_v     = sm_pop();
        subj_v     = sm_pop();
        pat_v      = sm_pop();
        sname_v    = a0(ins);
        has_repl_v = a1(ins) + 0;
        last_ok    = 0;
        if (DIFFER(sname_v, '')) {
            /* named subject — match $sname and write back mutated value */
            if (EQ(has_repl_v, 1)) {
                if ($sname_v ? pat_v = repl_v) last_ok = 1;
            } else {
                if ($sname_v ? pat_v) last_ok = 1;
            }
        } else {
            /* anonymous subject — match against the value directly, no write-back */
            if (EQ(has_repl_v, 1)) {
                if (subj_v ? pat_v = repl_v) last_ok = 1;
            } else {
                if (subj_v ? pat_v) last_ok = 1;
            }
        }
        return;
    }
    /* SI-8: primitive patterns — each pushes a host pattern primitive value.                                            */
    /* These are bound as global pattern values by the host runtime (snobol4.c NV_SET_fn at init).                       */
    if (IDENT(opc, 'SM_PAT_ABORT'))   { sm_push(ABORT);   last_ok = 1; return; }
    if (IDENT(opc, 'SM_PAT_ARB'))     { sm_push(ARB);     last_ok = 1; return; }
    if (IDENT(opc, 'SM_PAT_BAL'))     { sm_push(BAL);     last_ok = 1; return; }
    if (IDENT(opc, 'SM_PAT_FAIL'))    { sm_push(FAIL);    last_ok = 1; return; }
    if (IDENT(opc, 'SM_PAT_REM'))     { sm_push(REM);     last_ok = 1; return; }
    if (IDENT(opc, 'SM_PAT_SUCCEED')) { sm_push(SUCCEED); last_ok = 1; return; }
    /* SM_PAT_FENCE0 — nullary fence (FENCE as value).  SM_PAT_FENCE1 — unary FENCE(p), pops child.                      */
    if (IDENT(opc, 'SM_PAT_FENCE0'))  { sm_push(FENCE);                 last_ok = 1; return; }
    if (IDENT(opc, 'SM_PAT_FENCE1'))  { a = sm_pop(); sm_push(FENCE(a)); last_ok = 1; return; }
    /* SI-8 also adds SM_PAT_CAPTURE — pattern capture via `.` (cond) or `$` (imm).                                       */
    /* a0=variable name, a1=kind (0=cond '.', 1=imm '$', 2=cursor '@').                                                   */
    /* Strategy: host Snocone's `.`/`$` capture operators need a literal name token at parse time.  At runtime we have    */
    /* only a string for the name, so we stash the child pattern in a known global (si_cap_tmp) and use EVAL to build     */
    /* `si_cap_tmp . X` at the call site, where X is the literal name from the operand.  This threads the runtime-       */
    /* determined name through host syntax via dynamic compilation.                                                       */
    if (IDENT(opc, 'SM_PAT_CAPTURE')) {
        nm           = a0(ins);
        si_cap_tmp   = sm_pop();      /* child pattern → known global slot */
        b            = a1(ins) + 0;   /* kind */
        if      (EQ(b, 1)) sm_push(EVAL('si_cap_tmp $ ' nm));   /* immediate */
        else if (EQ(b, 2)) sm_push(EVAL('si_cap_tmp @ ' nm));   /* cursor */
        else               sm_push(EVAL('si_cap_tmp . ' nm));   /* conditional (default) */
        last_ok = 1;
        return;
    }
    /* SI-9: pattern function calls — each pops one arg, applies host constructor, pushes result.                         */
    if (IDENT(opc, 'SM_PAT_LEN'))    { a = sm_pop(); sm_push(LEN(a + 0));    last_ok = 1; return; }
    if (IDENT(opc, 'SM_PAT_POS'))    { a = sm_pop(); sm_push(POS(a + 0));    last_ok = 1; return; }
    if (IDENT(opc, 'SM_PAT_RPOS'))   { a = sm_pop(); sm_push(RPOS(a + 0));   last_ok = 1; return; }
    if (IDENT(opc, 'SM_PAT_TAB'))    { a = sm_pop(); sm_push(TAB(a + 0));    last_ok = 1; return; }
    if (IDENT(opc, 'SM_PAT_RTAB'))   { a = sm_pop(); sm_push(RTAB(a + 0));   last_ok = 1; return; }
    if (IDENT(opc, 'SM_PAT_ANY'))    { a = sm_pop(); sm_push(ANY(a));        last_ok = 1; return; }
    if (IDENT(opc, 'SM_PAT_NOTANY')) { a = sm_pop(); sm_push(NOTANY(a));     last_ok = 1; return; }
    if (IDENT(opc, 'SM_PAT_SPAN'))   { a = sm_pop(); sm_push(SPAN(a));       last_ok = 1; return; }
    if (IDENT(opc, 'SM_PAT_BREAK'))  { a = sm_pop(); sm_push(BREAK(a));      last_ok = 1; return; }
    if (IDENT(opc, 'SM_PAT_ARBNO'))  { a = sm_pop(); sm_push(ARBNO(a));      last_ok = 1; return; }
    if (IDENT(opc, 'SM_PAT_EPS'))    { sm_push('');                          last_ok = 1; return; }
    /* SI-10 (pulled forward to SI-8 — needed for any useful primitive-pattern test): pattern combinators.                 */
    /* SM_PAT_CAT and SM_PAT_ALT are BINARY in the actual codebase (sm_interp.c lines 648-660 + lower.sc emit_pat_nary).   */
    /* The Goal file's SI-10 prose says "n-ary" but emit_pat_nary pushes all children, then emits SM_PAT_CAT (n-1) times.  */
    if (IDENT(opc, 'SM_PAT_CAT')) { b = sm_pop(); a = sm_pop(); sm_push(a b);     last_ok = 1; return; }
    if (IDENT(opc, 'SM_PAT_ALT')) { b = sm_pop(); a = sm_pop(); sm_push(a | b);   last_ok = 1; return; }
    /* SI-11: comparisons.  Snocone lower emits the kind string in a0 (see lower.sc lower_comp).                          */
    /* Icon-style relops: on success push RIGHT operand, last_ok=1; on failure last_ok=0 (no push needed by sm_lower).    */
    if (IDENT(opc, 'SM_ACOMP')) {
        b = sm_pop(); a = sm_pop(); nm = a0(ins);
        last_ok = 0;
        if      (IDENT(nm, 'TT_EQ')) { if (EQ(a + 0, b + 0)) last_ok = 1; }
        else if (IDENT(nm, 'TT_NE')) { if (NE(a + 0, b + 0)) last_ok = 1; }
        else if (IDENT(nm, 'TT_LT')) { if (LT(a + 0, b + 0)) last_ok = 1; }
        else if (IDENT(nm, 'TT_LE')) { if (LE(a + 0, b + 0)) last_ok = 1; }
        else if (IDENT(nm, 'TT_GT')) { if (GT(a + 0, b + 0)) last_ok = 1; }
        else if (IDENT(nm, 'TT_GE')) { if (GE(a + 0, b + 0)) last_ok = 1; }
        else                         { if (EQ(a + 0, b + 0)) last_ok = 1; }   /* legacy fallback */
        if (IDENT(last_ok, 1)) sm_push(b); else sm_push('');
        return;
    }
    if (IDENT(opc, 'SM_LCOMP')) {
        b = sm_pop(); a = sm_pop(); nm = a0(ins);
        last_ok = 0;
        if      (IDENT(nm, 'TT_LEQ')) { if (LEQ(a, b)) last_ok = 1; }
        else if (IDENT(nm, 'TT_LNE')) { if (LNE(a, b)) last_ok = 1; }
        else if (IDENT(nm, 'TT_LLT')) { if (LLT(a, b)) last_ok = 1; }
        else if (IDENT(nm, 'TT_LLE')) { if (LLE(a, b)) last_ok = 1; }
        else if (IDENT(nm, 'TT_LGT')) { if (LGT(a, b)) last_ok = 1; }
        else if (IDENT(nm, 'TT_LGE')) { if (LGE(a, b)) last_ok = 1; }
        else                          { if (LEQ(a, b)) last_ok = 1; }
        if (IDENT(last_ok, 1)) sm_push(b); else sm_push('');
        return;
    }
    /* Until later rungs an unknown opcode halts cleanly with a stderr note.                                              */
    TERMINAL = 'sm_interp: unimpl ' opc ' at pc=' (pc - 1);
    pc = g_count;
    return;
}
/* ==================================================================================================================== */
function sm_interp_run() {
    sm_state_init();
    while (LT(pc, g_count)) sm_interp_step();
    return;
}
