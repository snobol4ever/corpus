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
si_args    = TABLE();  /* SI-12: scratch TABLE for SM_CALL_FN arg collection; si_args[1..nargs] = args left-to-right */
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
    pc  = pc + 1;
    opc = op(ins);
    /* O(1) dispatch via Snocone switch — compiled to indirect-goto table by the parser,                                  */
    /* mirroring the beauty.sno label-dispatch pattern: $('prefix_' token) indirect goto.                                 */
    /* Each case is a one-liner; multi-line cases (EXEC_STMT, ACOMP, LCOMP, CALL_FN) use goto to a block below.         */
    switch (opc) {
        /* SI-1 */
        case 'SM_LABEL':        return;
        case 'SM_HALT':         pc = g_count; return;
        /* SI-2 */
        case 'SM_STNO':         sp = 0; return;
        case 'SM_PUSH_LIT_S':   sm_push(a0(ins));         last_ok = 1; return;
        case 'SM_PUSH_LIT_I':   sm_push(+a0(ins));        last_ok = 1; return;
        case 'SM_PUSH_LIT_F':   sm_push(a0(ins) + 0.0);   last_ok = 1; return;
        case 'SM_PUSH_NULL':    sm_push('');               last_ok = 1; return;
        case 'SM_PUSH_VAR':     nm = a0(ins); sm_push($nm); last_ok = 1; return;
        case 'SM_STORE_VAR':    nm = a0(ins); $nm = sm_pop(); return;
        case 'SM_VOID_POP':     sm_pop(); return;
        /* SI-3 */
        case 'SM_JUMP':         pc = +a0(ins); return;
        case 'SM_JUMP_S':       if (IDENT(last_ok, 1)) pc = +a0(ins); return;
        case 'SM_JUMP_F':       if (IDENT(last_ok, 0)) pc = +a0(ins); return;
        /* SI-4 */
        case 'SM_ADD':          b = sm_pop(); a = sm_pop(); sm_push((+a) + (+b));    last_ok = 1; return;
        case 'SM_SUB':          b = sm_pop(); a = sm_pop(); sm_push((+a) - (+b));    last_ok = 1; return;
        case 'SM_MUL':          b = sm_pop(); a = sm_pop(); sm_push((+a) * (+b));    last_ok = 1; return;
        case 'SM_DIV':          b = sm_pop(); a = sm_pop(); sm_push((+a) / (+b));    last_ok = 1; return;
        case 'SM_MOD':          b = sm_pop(); a = sm_pop(); sm_push(REMDR(+a, +b));  last_ok = 1; return;
        case 'SM_NEG':          a = sm_pop(); sm_push(0 - (+a));                     last_ok = 1; return;
        case 'SM_EXP':          b = sm_pop(); a = sm_pop(); sm_push((+a) ^ (+b));    last_ok = 1; return;
        case 'SM_CONCAT':       b = sm_pop(); a = sm_pop(); sm_push(a b);            last_ok = 1; return;
        case 'SM_COERCE_NUM':   a = sm_pop(); sm_push(+a);                           last_ok = 1; return;
        /* SI-7 */
        case 'SM_PAT_LIT':      sm_push(a0(ins));          last_ok = 1; return;
        case 'SM_PAT_DEREF':    a = sm_pop(); sm_push(a);  last_ok = 1; return;
        case 'SM_PAT_REFNAME':  nm = a0(ins); sm_push($nm); last_ok = 1; return;
        case 'SM_PUSH_EXPR':    sm_push('');                last_ok = 1; return;
        case 'SM_EXEC_STMT':    goto exec_stmt;
        /* SI-8 */
        case 'SM_PAT_ABORT':    sm_push(ABORT);            last_ok = 1; return;
        case 'SM_PAT_ARB':      sm_push(ARB);              last_ok = 1; return;
        case 'SM_PAT_BAL':      sm_push(BAL);              last_ok = 1; return;
        case 'SM_PAT_FAIL':     sm_push(FAIL);             last_ok = 1; return;
        case 'SM_PAT_REM':      sm_push(REM);              last_ok = 1; return;
        case 'SM_PAT_SUCCEED':  sm_push(SUCCEED);          last_ok = 1; return;
        case 'SM_PAT_FENCE0':   sm_push(FENCE);            last_ok = 1; return;
        case 'SM_PAT_FENCE1':   a = sm_pop(); sm_push(FENCE(a)); last_ok = 1; return;
        case 'SM_PAT_CAPTURE':  goto pat_capture;
        /* SI-9 — pattern functions; integer-arg ops use +a for coercion */
        case 'SM_PAT_LEN':      a = sm_pop(); sm_push(LEN(+a));    last_ok = 1; return;
        case 'SM_PAT_POS':      a = sm_pop(); sm_push(POS(+a));    last_ok = 1; return;
        case 'SM_PAT_RPOS':     a = sm_pop(); sm_push(RPOS(+a));   last_ok = 1; return;
        case 'SM_PAT_TAB':      a = sm_pop(); sm_push(TAB(+a));    last_ok = 1; return;
        case 'SM_PAT_RTAB':     a = sm_pop(); sm_push(RTAB(+a));   last_ok = 1; return;
        case 'SM_PAT_ANY':      a = sm_pop(); sm_push(ANY(a));      last_ok = 1; return;
        case 'SM_PAT_NOTANY':   a = sm_pop(); sm_push(NOTANY(a));   last_ok = 1; return;
        case 'SM_PAT_SPAN':     a = sm_pop(); sm_push(SPAN(a));     last_ok = 1; return;
        case 'SM_PAT_BREAK':    a = sm_pop(); sm_push(BREAK(a));    last_ok = 1; return;
        case 'SM_PAT_ARBNO':    a = sm_pop(); sm_push(ARBNO(a));    last_ok = 1; return;
        case 'SM_PAT_EPS':      sm_push('');                        last_ok = 1; return;
        /* SI-10 — pattern combinators (binary; emit_pat_nary emits n-1 SM_PAT_CAT/ALT) */
        case 'SM_PAT_CAT':      b = sm_pop(); a = sm_pop(); sm_push(a b);    last_ok = 1; return;
        case 'SM_PAT_ALT':      b = sm_pop(); a = sm_pop(); sm_push(a | b);  last_ok = 1; return;
        /* SI-11 — comparisons */
        case 'SM_ACOMP':        goto acomp;
        case 'SM_LCOMP':        goto lcomp;
        /* SI-12 — indirect function call */
        case 'SM_CALL_FN':      goto call_fn;
        /* Unknown opcode — halt cleanly */
        default:
            TERMINAL = 'sm_interp: unimpl ' opc ' at pc=' (pc - 1);
            pc = g_count;
            return;
    }

exec_stmt:
    /* SM_EXEC_STMT — invoke host pattern matcher.                                                                        */
    /* Stack push order from lower: pat, subj, repl_or_zero.  Pop order: repl, subj, pat.                                */
    /* a0(ins)=subject-var-name (string), a1(ins)=has_repl (0 or 1).                                                     */
    repl_v     = sm_pop();
    subj_v     = sm_pop();
    pat_v      = sm_pop();
    sname_v    = a0(ins);
    has_repl_v = +a1(ins);
    last_ok    = 0;
    if (DIFFER(sname_v, '')) {
        /* named subject — match in-place via $sname indirection, write back mutated value */
        if (EQ(has_repl_v, 1)) { if ($sname_v ? pat_v = repl_v) last_ok = 1; }
        else                   { if ($sname_v ? pat_v)           last_ok = 1; }
    } else {
        /* anonymous subject — value-match only, no write-back */
        if (EQ(has_repl_v, 1)) { if (subj_v ? pat_v = repl_v) last_ok = 1; }
        else                   { if (subj_v ? pat_v)           last_ok = 1; }
    }
    return;

pat_capture:
    /* SM_PAT_CAPTURE — pattern capture via `.` (cond) or `$` (imm) or `@` (cursor).                                     */
    /* a0=variable name, a1=kind (0=cond '.', 1=imm '$', 2=cursor '@').                                                   */
    /* EVAL trick: stash child in si_cap_tmp, build `si_cap_tmp OP name` via EVAL so the literal name appears at         */
    /* parse time.  See SI-8 implementation note for full rationale.                                                      */
    nm         = a0(ins);
    si_cap_tmp = sm_pop();
    b          = +a1(ins);
    if      (EQ(b, 1)) sm_push(EVAL('si_cap_tmp $ ' nm));
    else if (EQ(b, 2)) sm_push(EVAL('si_cap_tmp @ ' nm));
    else               sm_push(EVAL('si_cap_tmp . ' nm));
    last_ok = 1;
    return;

acomp:
    /* SM_ACOMP — arithmetic comparison: LT/LE/GT/GE/EQ/NE.                                                              */
    /* a0(ins) = kind string (e.g. 'TT_LT').  Icon-style: on success push right operand; on failure push ''.             */
    b = sm_pop(); a = sm_pop(); nm = a0(ins);
    last_ok = 0;
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
    if (IDENT(last_ok, 1)) sm_push(b); else sm_push('');
    return;

lcomp:
    /* SM_LCOMP — lexical comparison: LLT/LLE/LGT/LGE/LEQ/LNE.                                                          */
    /* a0(ins) = kind string (e.g. 'TT_LGT').  Same Icon-style push convention as ACOMP.                                 */
    b = sm_pop(); a = sm_pop(); nm = a0(ins);
    last_ok = 0;
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
    if (IDENT(last_ok, 1)) sm_push(b); else sm_push('');
    return;

call_fn:
    /* SM_CALL_FN — indirect function call via host APPLY().                                                              */
    /* a0(ins) = function name string; a1(ins) = nargs integer.                                                           */
    /* lower_fnc pushes args left-to-right so TOS = last arg.  Restore left-to-right in si_args[1..nargs].               */
    /* Pseudo-calls (INDIR_GET, ASGN, etc.) require C name-pointer machinery — stub to '' for now (Ph3).                 */
    nm = a0(ins);
    b  = +a1(ins);
    a  = b;
    while (GT(a, 0)) { si_args[a] = sm_pop(); a = a - 1; }
    switch (nm) {
        case 'INDIR_GET':
        case 'NAME_PUSH':
        case 'ASGN_INDIR':
        case 'NRETURN_ASGN':
        case 'IDX_SET':
        case 'IDX':
        case 'ITEM_SET':
        case 'FIELD_SET':
        case 'FIELD_GET':
        case 'ASGN':
        case 'SWAP':
        case 'AUGOP':
        case 'MAKELIST':
        case 'RECORD_MAKE':
        case 'ICN_SCAN_PUSH':
        case 'ICN_SCAN_POP':
        case 'ICN_CASE_EQ':
        case 'ICN_NULL':
        case 'ICN_RANDOM':
        case 'NONNULL':
        case 'IDENTICAL':
        case 'FAIL':
            TERMINAL = 'sm_interp: SM_CALL_FN ' nm ' (pseudo/Ph3) at pc=' (pc - 1);
            sm_push(''); last_ok = 0; return;
        default:
            goto call_fn_apply;
    }
call_fn_apply:
    /* General builtin / user-defined function via host APPLY().  Arity 0..5 covers all standard cases. */
    switch (b) {
        case 0: sm_push(APPLY(nm));                                                                   last_ok = 1; return;
        case 1: sm_push(APPLY(nm, si_args[1]));                                                       last_ok = 1; return;
        case 2: sm_push(APPLY(nm, si_args[1], si_args[2]));                                           last_ok = 1; return;
        case 3: sm_push(APPLY(nm, si_args[1], si_args[2], si_args[3]));                               last_ok = 1; return;
        case 4: sm_push(APPLY(nm, si_args[1], si_args[2], si_args[3], si_args[4]));                   last_ok = 1; return;
        case 5: sm_push(APPLY(nm, si_args[1], si_args[2], si_args[3], si_args[4], si_args[5]));       last_ok = 1; return;
        default:
            TERMINAL = 'sm_interp: SM_CALL_FN ' nm ' nargs=' b ' (>5 not supported) at pc=' (pc - 1);
            sm_push(''); last_ok = 0; return;
    }
}
/* ==================================================================================================================== */
function sm_interp_run() {
    sm_state_init();
    while (LT(pc, g_count)) sm_interp_step();
    return;
}
