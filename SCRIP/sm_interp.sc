/* ==================================================================================================================== */
/* sm_interp.sc — Snocone SM interpreter, self-hosting SCRIP.                                                            */
/*                                                                                                                       */
/* Field-for-field parallel to one4all/src/runtime/x86/sm_interp.c so the two files read alongside each other.            */
/*                                                                                                                       */
/* C side                              .sc side                                                                           */
/* ---------------------------------   ------------------------------------                                               */
/* typedef struct { ... } SM_State;    struct SM_State { stack, sp, stack_cap, last_ok, pc }                              */
/* SM_State st_inst;                   st = SM_State(TABLE(), 0, 0, 1, 0);                                                */
/* st->stack, st->sp, ...              stack(st), sp(st), ...                                                             */
/* prog->instrs[i]                     g_instr_tbl[i]    (TODO: rename when lower.sc adopts struct SM_Program)            */
/* prog->count                         g_count           (same TODO)                                                      */
/* sm_push(st, d)                      sm_push(d)        (st is module-global singleton; param elided)                    */
/* sm_pop(st)                          sm_pop()          (same)                                                           */
/* sm_interp_run(prog, st)             sm_interp_run()   (same)                                                           */
/* return 0  (from main loop)          pc(st) = g_count  (push pc past end; while-cond exits)                             */
/* ==================================================================================================================== */
struct SM_State { stack, sp, stack_cap, last_ok, pc }
st = SM_State(TABLE(), 0, 0, 1, 0);
/* ==================================================================================================================== */
function sm_state_init() {
    stack(st)     = TABLE();
    sp(st)        = 0;
    stack_cap(st) = 0;
    last_ok(st)   = 1;
    pc(st)        = 0;
    return;
}
/* ==================================================================================================================== */
function sm_push(d) {
    stack(st)[sp(st)] = d;
    sp(st) = sp(st) + 1;
    return;
}
/* ==================================================================================================================== */
function sm_pop(d) {
    sp(st) = sp(st) - 1;
    d = stack(st)[sp(st)];
    sm_pop = d;
    return;
}
/* ==================================================================================================================== */
/* sm_interp_step — execute one SM instruction at pc(st).  Advances pc before dispatching,                                */
/* matching C convention (ins = &prog->instrs[pc]; pc++; switch (ins->op)).                                              */
/* ==================================================================================================================== */
function sm_interp_step(ins, opc, nm, a, b) {
    ins = g_instr_tbl[pc(st)];
    pc(st) = pc(st) + 1;
    opc = op(ins);
    if (IDENT(opc, 'SM_LABEL'))   return;
    if (IDENT(opc, 'SM_HALT'))    { pc(st) = g_count; return; }
    /* SI-2: STNO + literals + variables + VOID_POP                                                                       */
    if (IDENT(opc, 'SM_STNO'))    { sp(st) = 0; return; }
    if (IDENT(opc, 'SM_PUSH_LIT_S')) { sm_push(a0(ins));           last_ok(st) = 1; return; }
    if (IDENT(opc, 'SM_PUSH_LIT_I')) { sm_push(a0(ins) + 0);       last_ok(st) = 1; return; }
    if (IDENT(opc, 'SM_PUSH_LIT_F')) { sm_push(a0(ins) + 0.0);     last_ok(st) = 1; return; }
    if (IDENT(opc, 'SM_PUSH_NULL'))  { sm_push('');                last_ok(st) = 1; return; }
    if (IDENT(opc, 'SM_PUSH_VAR'))   { nm = a0(ins); sm_push($nm); last_ok(st) = 1; return; }
    if (IDENT(opc, 'SM_STORE_VAR'))  { nm = a0(ins); $nm = sm_pop();                return; }
    if (IDENT(opc, 'SM_VOID_POP'))   { sm_pop();                                    return; }
    /* SI-3: jumps                                                                                                        */
    if (IDENT(opc, 'SM_JUMP'))   { pc(st) = a0(ins) + 0;                                    return; }
    if (IDENT(opc, 'SM_JUMP_S')) { if (IDENT(last_ok(st), 1)) pc(st) = a0(ins) + 0;         return; }
    if (IDENT(opc, 'SM_JUMP_F')) { if (IDENT(last_ok(st), 0)) pc(st) = a0(ins) + 0;         return; }
    /* SI-4: arithmetic + COERCE + CONCAT                                                                                 */
    if (IDENT(opc, 'SM_ADD'))    { b = sm_pop(); a = sm_pop(); sm_push((a + 0) + (b + 0)); last_ok(st) = 1; return; }
    if (IDENT(opc, 'SM_SUB'))    { b = sm_pop(); a = sm_pop(); sm_push((a + 0) - (b + 0)); last_ok(st) = 1; return; }
    if (IDENT(opc, 'SM_MUL'))    { b = sm_pop(); a = sm_pop(); sm_push((a + 0) * (b + 0)); last_ok(st) = 1; return; }
    if (IDENT(opc, 'SM_DIV'))    { b = sm_pop(); a = sm_pop(); sm_push((a + 0) / (b + 0)); last_ok(st) = 1; return; }
    if (IDENT(opc, 'SM_MOD'))    { b = sm_pop(); a = sm_pop(); sm_push(REMDR(a + 0, b + 0)); last_ok(st) = 1; return; }
    if (IDENT(opc, 'SM_NEG'))    { a = sm_pop(); sm_push(0 - (a + 0));                       last_ok(st) = 1; return; }
    if (IDENT(opc, 'SM_CONCAT')) { b = sm_pop(); a = sm_pop(); sm_push(a b);                 last_ok(st) = 1; return; }
    if (IDENT(opc, 'SM_COERCE_NUM')) { a = sm_pop(); sm_push(a + 0);                         last_ok(st) = 1; return; }
    /* Until later rungs an unknown opcode halts cleanly with a stderr note.                                              */
    TERMINAL = 'sm_interp: unimpl ' opc ' at pc=' (pc(st) - 1);
    pc(st) = g_count;
    return;
}
/* ==================================================================================================================== */
function sm_interp_run() {
    sm_state_init();
    while (LT(pc(st), g_count)) sm_interp_step();
    return;
}
