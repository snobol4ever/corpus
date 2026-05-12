/* ================================================================================================================================ */
/* sm_interp.sc — Snocone SM interpreter, self-hosting SCRIP.                                                                      */
/*                                                                                                                                  */
/* Field names parallel one4all/src/runtime/x86/sm_interp.c so the two files read side-by-side.                                    */
/* SM_State struct from the C side is collapsed to module globals — there is only ever one interpreter instance.                    */
/*                                                                                                                                  */
/* C side                              .sc side                                                                                     */
/* ---------------------------------   -----------------------------------------------------------------------------------          */
/* SM_State st_inst;                   (no struct; module globals)                                                                  */
/* st->stack, st->sp, ...              stack, sp, ...                                                                               */
/* prog->instrs[i]                     g_instr_tbl[i]    (TODO: lower.sc still owns this name)                                      */
/* prog->count                         g_count           (same TODO)                                                                */
/* sm_push(st, d)                      sm_push(d)                                                                                   */
/* sm_pop(st)                          sm_pop()                                                                                     */
/* sm_interp_run(prog, st)             sm_interp_run()                                                                              */
/* return 0  (from main loop)          pc = g_count  (push pc past end; while-cond exits)                                          */
/*                                                                                                                                  */
/* Dispatch — switch(opc) in sm_interp_step.  Snocone switch is a linear IDENT chain today;                                        */
/* a future rung replaces it with O(1) indirect-goto table per beauty.sno $('pp_' t) pattern.                                      */
/* ================================================================================================================================ */
stack         = TABLE();
sp            = 0;
stack_cap     = 0;
last_ok       = 1;
pc            = 0;
si_cap_tmp    = '';       /* SI-8:  SM_PAT_CAPTURE child holder; EVAL'd capture expression refs this name        */
si_args       = TABLE();  /* SI-12: arg scratch for SM_CALL_FN; si_args[1..nargs] left-to-right                  */
si_call_stack = TABLE();  /* SI-13: call frame stack; si_call_stack[csp] = TABLE of frame fields                 */
si_csp        = 0;        /* SI-13: call stack pointer (depth)                                                   */
si_glocals    = TABLE();  /* SI-16: generator-local slot scratch for SM_LOAD/STORE_GLOCAL (Ph3 stub backing)     */
/* ================================================================================================================================ */
function sm_state_init() {
    stack = TABLE();   sp = 0;   stack_cap = 0;   last_ok = 1;   pc = 0;
    si_call_stack = TABLE();   si_csp = 0;
    return;
}
/* ================================================================================================================================ */
function sm_push(d) {
    stack[sp] = d;   sp = sp + 1;
    return;
}
/* ================================================================================================================================ */
function sm_pop(d) {
    sp = sp - 1;   d = stack[sp];   sm_pop = d;
    return;
}
/* ================================================================================================================================ */
/* SI-13: push a call frame.  Snapshots caller value stack; callee starts with sp=0.                                                */
/* frame fields: ret_pc, retval_name ('' = thunk/use TOS), caller_sp, caller_stack TABLE.                                          */
/* ================================================================================================================================ */
function si_push_frame(ret_pc_v, retval_name_v, fr, k) {
    fr = TABLE();
    fr['ret_pc']       = ret_pc_v;
    fr['retval_name']  = retval_name_v;
    fr['caller_sp']    = sp;
    fr['caller_stack'] = TABLE();
    k = 0;   while (LT(k, sp)) { fr['caller_stack'][k] = stack[k];   k = k + 1; }
    si_call_stack[si_csp] = fr;   si_csp = si_csp + 1;
    sp = 0;
    return;
}
/* ================================================================================================================================ */
/* SI-13: pop a call frame, restore caller stack, push return value.                                                                */
/* is_fret=1 → push '' (FAIL), last_ok=0.   is_nret=1 → name-return (Ph1: same as normal return).                                 */
/* ================================================================================================================================ */
function si_pop_frame(is_fret, is_nret, fr, retval, k) {
    si_csp = si_csp - 1;   fr = si_call_stack[si_csp];
    if (DIFFER(fr['retval_name'], '')) { retval = $(fr['retval_name']); }
    else                               { retval = (GT(sp, 0) stack[sp - 1], ''); }
    sp = fr['caller_sp'];
    k = 0;   while (LT(k, sp)) { stack[k] = fr['caller_stack'][k];   k = k + 1; }
    pc = fr['ret_pc'];
    if (IDENT(is_fret, 1)) { sm_push('');     last_ok = 0; }
    else                   { sm_push(retval); last_ok = 1; }
    return;
}
/* ================================================================================================================================ */
/* sm_interp_step — fetch instruction at pc, advance pc, dispatch on opcode.                                                        */
/* Matches C convention: ins = &prog->instrs[pc]; pc++; switch(ins->op).                                                            */
/* One-liner cases stay inline; multi-line cases use goto to a labeled block below.                                                 */
/* ================================================================================================================================ */
function sm_interp_step(ins, opc, nm, a, b, repl_v, subj_v, pat_v, sname_v, has_repl_v) {
    ins = g_instr_tbl[pc];   pc = pc + 1;   opc = op(ins);
    switch (opc) {
        /* SI-1 */
        case 'SM_LABEL':           return;
        case 'SM_HALT':            pc = g_count; return;
        /* SI-2: STNO + literals + variables + VOID_POP */
        case 'SM_STNO':            sp = 0; return;
        case 'SM_PUSH_LIT_S':      sm_push(a0(ins));          last_ok = 1; return;
        case 'SM_PUSH_LIT_I':      sm_push(+a0(ins));         last_ok = 1; return;
        case 'SM_PUSH_LIT_F':      sm_push(a0(ins) + 0.0);    last_ok = 1; return;
        case 'SM_PUSH_NULL':       sm_push('');                last_ok = 1; return;
        case 'SM_PUSH_VAR':        nm = a0(ins); sm_push($nm); last_ok = 1; return;
        case 'SM_STORE_VAR':       nm = a0(ins); $nm = sm_pop(); return;
        case 'SM_VOID_POP':        sm_pop(); return;
        /* SI-3: jumps */
        case 'SM_JUMP':            pc = +a0(ins); return;
        case 'SM_JUMP_S':          if (IDENT(last_ok, 1)) pc = +a0(ins); return;
        case 'SM_JUMP_F':          if (IDENT(last_ok, 0)) pc = +a0(ins); return;
        /* SI-14: SM_JUMP_INDIR — pop label name from stack, look up pc in g_labtab, jump. */
        case 'SM_JUMP_INDIR':      nm = sm_pop(); pc = g_labtab[nm]; return;
        /* SI-4: arithmetic + coerce + concat.  +X = unary numeric coercion. */
        case 'SM_ADD':             b = sm_pop(); a = sm_pop(); sm_push((+a) + (+b));   last_ok = 1; return;
        case 'SM_SUB':             b = sm_pop(); a = sm_pop(); sm_push((+a) - (+b));   last_ok = 1; return;
        case 'SM_MUL':             b = sm_pop(); a = sm_pop(); sm_push((+a) * (+b));   last_ok = 1; return;
        case 'SM_DIV':             b = sm_pop(); a = sm_pop(); sm_push((+a) / (+b));   last_ok = 1; return;
        case 'SM_MOD':             b = sm_pop(); a = sm_pop(); sm_push(REMDR(+a, +b)); last_ok = 1; return;
        case 'SM_NEG':             a = sm_pop(); sm_push(0 - (+a));                    last_ok = 1; return;
        case 'SM_EXP':             b = sm_pop(); a = sm_pop(); sm_push((+a) ^ (+b));   last_ok = 1; return;
        case 'SM_CONCAT':          b = sm_pop(); a = sm_pop(); sm_push(a b);           last_ok = 1; return;
        case 'SM_COERCE_NUM':      a = sm_pop(); sm_push(+a);                          last_ok = 1; return;
        /* SI-7: pattern matching statement */
        case 'SM_PAT_LIT':         sm_push(a0(ins));           last_ok = 1; return;
        case 'SM_PAT_DEREF':       a = sm_pop(); sm_push(a);   last_ok = 1; return;
        case 'SM_PAT_REFNAME':     nm = a0(ins); sm_push($nm); last_ok = 1; return;
        case 'SM_PUSH_EXPR':       sm_push('');                last_ok = 1; return;
        case 'SM_EXEC_STMT':       goto exec_stmt;
        /* SI-8: primitive patterns */
        case 'SM_PAT_ABORT':       sm_push(ABORT);             last_ok = 1; return;
        case 'SM_PAT_ARB':         sm_push(ARB);               last_ok = 1; return;
        case 'SM_PAT_BAL':         sm_push(BAL);               last_ok = 1; return;
        case 'SM_PAT_FAIL':        sm_push(FAIL);              last_ok = 1; return;
        case 'SM_PAT_REM':         sm_push(REM);               last_ok = 1; return;
        case 'SM_PAT_SUCCEED':     sm_push(SUCCEED);           last_ok = 1; return;
        case 'SM_PAT_FENCE0':      sm_push(FENCE);             last_ok = 1; return;
        case 'SM_PAT_FENCE1':      a = sm_pop(); sm_push(FENCE(a));  last_ok = 1; return;
        case 'SM_PAT_CAPTURE':     goto pat_capture;
        /* SI-9: pattern function calls — integer-arg ops coerce with +a */
        case 'SM_PAT_LEN':         a = sm_pop(); sm_push(LEN(+a));    last_ok = 1; return;
        case 'SM_PAT_POS':         a = sm_pop(); sm_push(POS(+a));    last_ok = 1; return;
        case 'SM_PAT_RPOS':        a = sm_pop(); sm_push(RPOS(+a));   last_ok = 1; return;
        case 'SM_PAT_TAB':         a = sm_pop(); sm_push(TAB(+a));    last_ok = 1; return;
        case 'SM_PAT_RTAB':        a = sm_pop(); sm_push(RTAB(+a));   last_ok = 1; return;
        case 'SM_PAT_ANY':         a = sm_pop(); sm_push(ANY(a));      last_ok = 1; return;
        case 'SM_PAT_NOTANY':      a = sm_pop(); sm_push(NOTANY(a));  last_ok = 1; return;
        case 'SM_PAT_SPAN':        a = sm_pop(); sm_push(SPAN(a));    last_ok = 1; return;
        case 'SM_PAT_BREAK':       a = sm_pop(); sm_push(BREAK(a));   last_ok = 1; return;
        case 'SM_PAT_ARBNO':       a = sm_pop(); sm_push(ARBNO(a));   last_ok = 1; return;
        case 'SM_PAT_EPS':         sm_push('');                        last_ok = 1; return;
        /* SI-10: pattern combinators — binary (emit_pat_nary emits n-1 CAT/ALT ops) */
        case 'SM_PAT_CAT':         b = sm_pop(); a = sm_pop(); sm_push(a b);   last_ok = 1; return;
        case 'SM_PAT_ALT':         b = sm_pop(); a = sm_pop(); sm_push(a | b); last_ok = 1; return;
        /* SI-11: comparisons */
        case 'SM_ACOMP':           goto acomp;
        case 'SM_LCOMP':           goto lcomp;
        /* SI-12: indirect function call */
        case 'SM_CALL_FN':         goto call_fn;
        /* SI-13: expression thunks and function returns */
        case 'SM_PUSH_EXPRESSION': goto push_expr_desc;
        case 'SM_CALL_EXPRESSION': goto call_expr;
        case 'SM_RETURN':          goto si_return;
        case 'SM_FRETURN':         goto si_freturn;
        case 'SM_NRETURN':         goto si_nreturn;
        /* SI-16 (one-shot Phase 3 lite): remaining SM opcodes — simple inline, complex via goto blocks below. */
        /* Conditional returns: _S fires only if last_ok=1; _F fires only if last_ok=0. */
        case 'SM_RETURN_S':        if (IDENT(last_ok, 1)) goto si_return;  return;
        case 'SM_RETURN_F':        if (IDENT(last_ok, 0)) goto si_return;  return;
        case 'SM_FRETURN_S':       if (IDENT(last_ok, 1)) goto si_freturn; return;
        case 'SM_FRETURN_F':       if (IDENT(last_ok, 0)) goto si_freturn; return;
        case 'SM_NRETURN_S':       if (IDENT(last_ok, 1)) goto si_nreturn; return;
        case 'SM_NRETURN_F':       if (IDENT(last_ok, 0)) goto si_nreturn; return;
        /* Push-null variants and define markers */
        case 'SM_PUSH_NULL_NOFLIP': sm_push('');  return;   /* preserve last_ok */
        case 'SM_DEFINE':           return;                  /* no-op (function def handled at lower-time) */
        case 'SM_DEFINE_ENTRY':     return;                  /* no-op in mode-2 */
        /* Integer compare opcodes — pop r, l; set last_ok = (l OP r); no push. */
        case 'SM_ICMP_GT':          b = sm_pop(); a = sm_pop(); last_ok = (GT(+a, +b) 1, 0); return;
        case 'SM_ICMP_LT':          b = sm_pop(); a = sm_pop(); last_ok = (LT(+a, +b) 1, 0); return;
        /* Increment/decrement TOS by a0(ins) integer. */
        case 'SM_INCR':             a = sm_pop(); sm_push((+a) + (+a0(ins))); return;
        case 'SM_DECR':             a = sm_pop(); sm_push((+a) - (+a0(ins))); return;
        /* Pattern callback opcodes — need host pattern-engine hooks not exposed in .sc.  Ph3 stubs. */
        case 'SM_PAT_CAPTURE_FN':
        case 'SM_PAT_CAPTURE_FN_ARGS':
        case 'SM_PAT_USERCALL':
        case 'SM_PAT_USERCALL_ARGS':
            TERMINAL = 'sm_interp: ' opc ' (pat callback, Ph3 stub) at pc=' (pc - 1);
            sm_push(''); last_ok = 0; return;
        /* Frame-local slot opcodes (Icon param/local frame env) — silent no-op.  Host frame_env isn't exposed   */
        /* to Snocone, so Icon programs running through this interp won't behave correctly, but they don't       */
        /* spam stderr either.  Real wiring requires either an icn_frame_env_load/store host helper or full      */
        /* Icon frame infrastructure in .sc (Phase 4).                                                           */
        case 'SM_LOAD_FRAME':       sm_push(''); last_ok = 0; return;
        case 'SM_STORE_FRAME':      a = sm_pop(); sm_push(a); last_ok = 0; return;
        /* Generator-local slot opcodes (Icon SmGenState.locals).  Use si_glocals TABLE as single-generator      */
        /* substitute — works for non-nested gens; Phase 4 wires per-SmGenState locals.                          */
        case 'SM_LOAD_GLOCAL':      nm = a0(ins); sm_push(si_glocals[nm]); last_ok = 1; return;
        case 'SM_STORE_GLOCAL':     nm = a0(ins); a = sm_pop(); si_glocals[nm] = a; sm_push(a); last_ok = 1; return;
        /* Generator coroutine opcodes — need swapcontext-style yield/resume not available in Snocone.           */
        /* Silent no-ops: SM_SUSPEND_VALUE leaves arg on stack (degraded yield = return); SM_RESUME no-op;       */
        /* SM_GEN_TICK / SM_SUSPEND signal fail.  Icon programs needing real generators won't work but won't     */
        /* crash either.                                                                                          */
        case 'SM_SUSPEND':          sm_push(''); last_ok = 0; return;
        case 'SM_SUSPEND_VALUE':    return;   /* leave value on stack as degraded yield-return */
        case 'SM_RESUME':           return;   /* no-op */
        case 'SM_GEN_TICK':         sm_push(''); last_ok = 0; return;
        /* Byrd-box broker opcodes — Icon/Prolog scheduler.  Silent no-ops: pop expected args, push '' or 0.    */
        case 'SM_BB_PUMP':          a = sm_pop(); sm_push(0); last_ok = 1; return;
        case 'SM_BB_ONCE':          a = sm_pop(); last_ok = 0; return;
        case 'SM_BB_ONCE_PROC':     last_ok = 0; return;
        case 'SM_BB_PUMP_PROC':     goto bb_pump_proc;
        case 'SM_BB_PUMP_CASE':     goto bb_pump_case;
        case 'SM_BB_PUMP_SM':       a = sm_pop(); sm_push(0); last_ok = 1; return;
        case 'SM_BB_PUMP_EVERY':    sm_push(''); return;   /* DT_NUL placeholder for trailing SM_VOID_POP */
        /* Unknown opcode — report on TERMINAL and halt cleanly */
        default:
            TERMINAL = 'sm_interp: unimpl ' opc ' at pc=' (pc - 1);   pc = g_count;   return;
    }

exec_stmt:
    /* SM_EXEC_STMT — invoke host pattern matcher.                                                                                   */
    /* Lower pushes: pat, subject, repl_or_zero.  Pop in reverse: repl, subj, pat.                                                  */
    /* a0(ins) = subject-variable name ('' = anonymous); a1(ins) = has_repl flag.                                                   */
    /* Named-subject case: copy $name into local subj_v, mutate via host '?', write $name back.                                     */
    /* The naive form `$sname_v ? pat_v = repl_v` does NOT propagate the mutation through dollar-indirection.                       */
    repl_v = sm_pop();   subj_v = sm_pop();   pat_v = sm_pop();
    sname_v = a0(ins);   has_repl_v = +a1(ins);   last_ok = 0;
    if (DIFFER(sname_v, '')) {
        subj_v = $sname_v;   /* fetch current value of named subject */
        if (EQ(has_repl_v, 1)) { if (subj_v ? pat_v = repl_v) last_ok = 1; }
        else                   { if (subj_v ? pat_v)           last_ok = 1; }
        $sname_v = subj_v;   /* write back (possibly mutated) value */
    } else {
        if (EQ(has_repl_v, 1)) { if (subj_v ? pat_v = repl_v) last_ok = 1; }
        else                   { if (subj_v ? pat_v)           last_ok = 1; }
    }
    return;

pat_capture:
    /* SM_PAT_CAPTURE — '.' (cond, kind=0) / '$' (imm, kind=1) / '@' (cursor, kind=2).                                             */
    /* EVAL trick: stash child in si_cap_tmp; EVAL('si_cap_tmp OP name') threads runtime name via dynamic host compile.             */
    nm = a0(ins);   si_cap_tmp = sm_pop();   b = +a1(ins);
    if      (EQ(b, 1)) sm_push(EVAL('si_cap_tmp $ ' nm));
    else if (EQ(b, 2)) sm_push(EVAL('si_cap_tmp @ ' nm));
    else               sm_push(EVAL('si_cap_tmp . ' nm));
    last_ok = 1;   return;

acomp:
    /* SM_ACOMP — arithmetic comparison (EQ/NE/LT/LE/GT/GE).                                                                        */
    /* a0(ins) = kind string.  Icon-style: on success push right operand; on failure push ''.                                        */
    b = sm_pop();   a = sm_pop();   nm = a0(ins);   last_ok = 0;
    switch (nm) {
        case 'TT_EQ': if (EQ(+a, +b)) last_ok = 1; goto acomp_done;
        case 'TT_NE': if (NE(+a, +b)) last_ok = 1; goto acomp_done;
        case 'TT_LT': if (LT(+a, +b)) last_ok = 1; goto acomp_done;
        case 'TT_LE': if (LE(+a, +b)) last_ok = 1; goto acomp_done;
        case 'TT_GT': if (GT(+a, +b)) last_ok = 1; goto acomp_done;
        case 'TT_GE': if (GE(+a, +b)) last_ok = 1; goto acomp_done;
        default:      if (EQ(+a, +b)) last_ok = 1; goto acomp_done;
    }
acomp_done:
    if (IDENT(last_ok, 1)) sm_push(b); else sm_push('');   return;

lcomp:
    /* SM_LCOMP — lexical comparison (LEQ/LNE/LLT/LLE/LGT/LGE).  Same Icon-style convention as ACOMP.                             */
    b = sm_pop();   a = sm_pop();   nm = a0(ins);   last_ok = 0;
    switch (nm) {
        case 'TT_LEQ': if (LEQ(a, b)) last_ok = 1; goto lcomp_done;
        case 'TT_LNE': if (LNE(a, b)) last_ok = 1; goto lcomp_done;
        case 'TT_LLT': if (LLT(a, b)) last_ok = 1; goto lcomp_done;
        case 'TT_LLE': if (LLE(a, b)) last_ok = 1; goto lcomp_done;
        case 'TT_LGT': if (LGT(a, b)) last_ok = 1; goto lcomp_done;
        case 'TT_LGE': if (LGE(a, b)) last_ok = 1; goto lcomp_done;
        default:       if (LEQ(a, b)) last_ok = 1; goto lcomp_done;
    }
lcomp_done:
    if (IDENT(last_ok, 1)) sm_push(b); else sm_push('');   return;

call_fn:
    /* SM_CALL_FN — a0(ins)=function name, a1(ins)=nargs.                                                                           */
    /* lower_fnc pushes args left-to-right so TOS=last arg; pop into si_args[nargs..1] to restore natural order.                    */
    nm = a0(ins);   b = +a1(ins);   a = b;
    while (GT(a, 0)) { si_args[a] = sm_pop();   a = a - 1; }
    switch (nm) {
        case 'INDIR_GET':    case 'NAME_PUSH':    case 'ASGN_INDIR':   case 'NRETURN_ASGN':
        case 'IDX_SET':      case 'IDX':          case 'ITEM_SET':      case 'FIELD_SET':
        case 'FIELD_GET':    case 'ASGN':         case 'SWAP':          case 'AUGOP':
        case 'MAKELIST':     case 'RECORD_MAKE':  case 'ICN_SCAN_PUSH': case 'ICN_SCAN_POP':
        case 'ICN_CASE_EQ':  case 'ICN_NULL':     case 'ICN_RANDOM':    case 'NONNULL':
        case 'IDENTICAL':    case 'FAIL':
            TERMINAL = 'sm_interp: SM_CALL_FN ' nm ' (pseudo/Ph3) at pc=' (pc - 1);
            sm_push('');   last_ok = 0;   return;
        default: goto call_fn_apply;
    }
call_fn_apply:
    /* General builtin or user-defined function via host APPLY().  Arity 0..5. */
    switch (b) {
        case 0: sm_push(APPLY(nm)); last_ok = 1; return;
        case 1: sm_push(APPLY(nm, si_args[1])); last_ok = 1; return;
        case 2: sm_push(APPLY(nm, si_args[1], si_args[2])); last_ok = 1; return;
        case 3: sm_push(APPLY(nm, si_args[1], si_args[2], si_args[3])); last_ok = 1; return;
        case 4: sm_push(APPLY(nm, si_args[1], si_args[2], si_args[3], si_args[4])); last_ok = 1; return;
        case 5: sm_push(APPLY(nm, si_args[1], si_args[2], si_args[3], si_args[4], si_args[5])); last_ok = 1; return;
        default:
            TERMINAL = 'sm_interp: SM_CALL_FN ' nm ' nargs=' b ' (>5 unsupported) at pc=' (pc - 1);
            sm_push('');   last_ok = 0;   return;
    }

push_expr_desc:
    /* SM_PUSH_EXPRESSION a0=entry_pc — push DT_E descriptor TABLE {type:'EXPR', entry_pc:N}.                                       */
    a = TABLE();   a['type'] = 'EXPR';   a['entry_pc'] = +a0(ins);
    sm_push(a);   last_ok = 1;   return;

call_expr:
    /* SM_CALL_EXPRESSION a0=entry_pc — jump to thunk body, saving caller frame.                                                    */
    /* No params/locals/retval NV slot; thunk result = TOS at SM_RETURN time.                                                       */
    /* Note: emit_thunk patches SM_PUSH_EXPRESSION → SM_CALL_EXPRESSION in-place, so a0 holds the entry_pc directly.               */
    b = +a0(ins);   si_push_frame(pc, '');   pc = b;   return;

si_return:
    /* SM_RETURN — normal return: pop frame, push TOS or NV retval.                                                                  */
    if (EQ(si_csp, 0)) { pc = g_count; return; }
    si_pop_frame(0, 0);   return;

si_freturn:
    /* SM_FRETURN — failure return: pop frame, push '' (FAIL marker), last_ok=0.                                                     */
    if (EQ(si_csp, 0)) { pc = g_count; return; }
    si_pop_frame(1, 0);   return;

si_nreturn:
    /* SM_NRETURN — name return: Ph1 treated same as SM_RETURN (thunks always use TOS).                                              */
    if (EQ(si_csp, 0)) { pc = g_count; return; }
    si_pop_frame(0, 1);   return;

bb_pump_proc:
    /* SM_BB_PUMP_PROC a0=proc_name, a1=nargs — pop nargs args, drive proc as generator (silent Ph3 stub).                            */
    /* Real impl: bb_broker drives coroutine for the proc.  Stub: pop args, push '' as the "no values yielded" sentinel.            */
    b = +a1(ins);   a = b;
    while (GT(a, 0)) { si_args[a] = sm_pop();   a = a - 1; }
    sm_push(''); last_ok = 0; return;

bb_pump_case:
    /* SM_BB_PUMP_CASE a0=ncases, a1=has_default — Raku CASE dispatch (silent Ph3 stub).                                              */
    /* Real impl: pop topic + ncases triples + optional default, evaluate via DT_E descriptors.  Stub: pop expected count, push ''. */
    /* Stack at entry (deepest first): topic, then ncases × {cmp_kind, val, body} triples, then optional default body.              */
    a = +a0(ins);   b = +a1(ins);   /* a=ncases, b=has_default */
    nm = b + a + a + a + 1;        /* total items to pop: default? + ncases*3 + topic */
    while (GT(nm, 0)) { sm_pop(); nm = nm - 1; }
    sm_push(''); last_ok = 0; return;
}
/* ================================================================================================================================ */
function sm_interp_run() {
    sm_state_init();
    while (LT(pc, g_count)) sm_interp_step();
    return;
}
