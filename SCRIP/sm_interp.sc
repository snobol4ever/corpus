/* ==================================================================================================================== */
/* sm_interp.sc — Snocone SM interpreter.  Goal: self-host SCRIP by running lower.sc's SM output                         */
/*                under scrip itself.  SI-1 rung: skeleton + dispatch loop + HALT + LABEL.                               */
/*                                                                                                                      */
/* Reads SM_Program from module globals g_count and g_instr_tbl populated by lower.sc.                                  */
/* Maintains its own interpreter state: si_pc, si_stack[]/si_sp, si_last_ok, si_stno, si_halted.                         */
/* ==================================================================================================================== */
si_pc       = 0;
si_stack    = TABLE();
si_sp       = 0;
si_last_ok  = 1;
si_stno     = 0;
si_halted   = 0;
/* ==================================================================================================================== */
function si_reset() {
    si_pc       = 0;
    si_stack    = TABLE();
    si_sp       = 0;
    si_last_ok  = 1;
    si_stno     = 0;
    si_halted   = 0;
    return;
}
/* ==================================================================================================================== */
function si_push(v) {
    si_stack[si_sp] = v;
    si_sp = si_sp + 1;
    return;
}
/* ==================================================================================================================== */
function si_pop(v) {
    si_sp = si_sp - 1;
    v = si_stack[si_sp];
    si_pop = v;
    return;
}
/* ==================================================================================================================== */
/* sm_interp_step — execute one SM instruction at si_pc.  Advances si_pc before dispatching,                              */
/* matching C convention (ins = prog[pc]; pc++; switch (ins->op)).                                                       */
/* ==================================================================================================================== */
function sm_interp_step(ins, opc, nm, a, b) {
    ins = g_instr_tbl[si_pc];
    si_pc = si_pc + 1;
    opc = op(ins);
    if (IDENT(opc, 'SM_LABEL'))   return;
    if (IDENT(opc, 'SM_HALT'))    { si_halted = 1; return; }
    /* SI-2: STNO + literals + variables + VOID_POP                                                                       */
    if (IDENT(opc, 'SM_STNO'))    { si_stno = a0(ins) + 0; si_sp = 0; return; }
    if (IDENT(opc, 'SM_PUSH_LIT_S')) { si_push(a0(ins)); si_last_ok = 1; return; }
    if (IDENT(opc, 'SM_PUSH_LIT_I')) { si_push(a0(ins) + 0); si_last_ok = 1; return; }
    if (IDENT(opc, 'SM_PUSH_LIT_F')) { si_push(a0(ins) + 0.0); si_last_ok = 1; return; }
    if (IDENT(opc, 'SM_PUSH_NULL'))  { si_push(''); si_last_ok = 1; return; }
    if (IDENT(opc, 'SM_PUSH_VAR'))   { nm = a0(ins); si_push($nm); si_last_ok = 1; return; }
    if (IDENT(opc, 'SM_STORE_VAR'))  { nm = a0(ins); $nm = si_pop(); return; }
    if (IDENT(opc, 'SM_VOID_POP'))   { si_pop(); return; }
    /* SI-3: jumps                                                                                                        */
    if (IDENT(opc, 'SM_JUMP'))   { si_pc = a0(ins) + 0; return; }
    if (IDENT(opc, 'SM_JUMP_S')) { if (IDENT(si_last_ok, 1)) si_pc = a0(ins) + 0; return; }
    if (IDENT(opc, 'SM_JUMP_F')) { if (IDENT(si_last_ok, 0)) si_pc = a0(ins) + 0; return; }
    /* SI-4: arithmetic + COERCE + CONCAT                                                                                 */
    if (IDENT(opc, 'SM_ADD'))    { b = si_pop(); a = si_pop(); si_push((a + 0) + (b + 0)); si_last_ok = 1; return; }
    if (IDENT(opc, 'SM_SUB'))    { b = si_pop(); a = si_pop(); si_push((a + 0) - (b + 0)); si_last_ok = 1; return; }
    if (IDENT(opc, 'SM_MUL'))    { b = si_pop(); a = si_pop(); si_push((a + 0) * (b + 0)); si_last_ok = 1; return; }
    if (IDENT(opc, 'SM_DIV'))    { b = si_pop(); a = si_pop(); si_push((a + 0) / (b + 0)); si_last_ok = 1; return; }
    if (IDENT(opc, 'SM_MOD'))    { b = si_pop(); a = si_pop(); si_push(REMDR(a + 0, b + 0)); si_last_ok = 1; return; }
    if (IDENT(opc, 'SM_NEG'))    { a = si_pop(); si_push(0 - (a + 0)); si_last_ok = 1; return; }
    if (IDENT(opc, 'SM_CONCAT')) { b = si_pop(); a = si_pop(); si_push(a b); si_last_ok = 1; return; }
    if (IDENT(opc, 'SM_COERCE_NUM')) { a = si_pop(); si_push(a + 0); si_last_ok = 1; return; }
    /* Until later rungs, an unknown opcode halts the interpreter cleanly with a stderr note.                              */
    TERMINAL = 'sm_interp: unimpl ' opc ' at pc=' (si_pc - 1);
    si_halted = 1;
    return;
}
/* ==================================================================================================================== */
function sm_interp_run_sc() {
    si_reset();
    while (LT(si_pc, g_count)) {
        sm_interp_step();
        if (IDENT(si_halted, 1)) return;
    }
    return;
}
