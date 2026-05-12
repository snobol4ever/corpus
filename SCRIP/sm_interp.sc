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
function sm_interp_step(ins, opc, nm, a, b) {
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
