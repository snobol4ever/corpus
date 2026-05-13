# === BEGIN sm macro library (generated from g_sm_templates[]) ===
# EM-7c-sm-macros: one macro per opcode group; bodies and per-call
#   emissions share one renderer in sm_emit_template.c, so the
#   .s and the C dispatcher cannot drift -- they are paired by
#   shape kind in render_macro_body() / render_call_line().
                        .intel_syntax    noprefix
                        .macro           HALT
                        call             rt_halt_tos@PLT
                        .endm
                        .macro           PUSH_INT val
                        movabs           rdi, \val
                        call             rt_push_int@PLT
                        .endm
                        .macro           PUSH_STR lbl, n
                        lea              rdi, [rip + \lbl]
                        mov              esi, \n
                        call             rt_push_str@PLT
                        .endm
                        .macro           PUSH_VAR lbl
                        lea              rdi, [rip + \lbl]
                        call             rt_nv_get@PLT
                        .endm
                        .macro           STORE_VAR lbl
                        lea              rdi, [rip + \lbl]
                        call             rt_nv_set@PLT
                        .endm
                        .macro           VOID_POP
                        call             rt_pop_void@PLT
                        .endm
                        .macro           PUSH_NULL
                        call             rt_push_null@PLT
                        .endm
                        .macro           CONCAT
                        call             rt_concat@PLT
                        .endm
                        .macro           COERCE_NUM
                        call             rt_coerce_num@PLT
                        .endm
                        .macro           ADD_NUM
                        mov              edi, 17
                        call             rt_arith@PLT
                        .endm
                        .macro           SUB_NUM
                        mov              edi, 18
                        call             rt_arith@PLT
                        .endm
                        .macro           MUL_NUM
                        mov              edi, 19
                        call             rt_arith@PLT
                        .endm
                        .macro           DIV_NUM
                        mov              edi, 20
                        call             rt_arith@PLT
                        .endm
                        .macro           MOD_NUM
                        mov              edi, 22
                        call             rt_arith@PLT
                        .endm
                        .macro           JUMP tgt
                        jmp              \tgt
                        .endm
                        .macro           JUMP_S tgt
                        call             rt_last_ok@PLT
                        test             eax, eax
                        jnz              \tgt
                        .endm
                        .macro           JUMP_F tgt
                        call             rt_last_ok@PLT
                        test             eax, eax
                        jz               \tgt
                        .endm
                        .macro           PUSH_EXPRESSION entry, arity
                        movabs           rdi, \entry
                        mov              esi, \arity
                        call             rt_push_expression_descr@PLT
                        .endm
                        .macro           CALL_EXPRESSION tgt
                        call             \tgt
                        .endm
                        .macro           RETURN
                        mov              rsp, rbp
                        pop              rbp
                        ret
                        .endm
                        .macro           CALL_FN lbl, n
                        lea              rdi, [rip + \lbl]
                        mov              esi, \n
                        call             rt_call@PLT
                        .endm
                        .macro           PAT_SPAN
                        call             rt_pat_span@PLT
                        .endm
                        .macro           PAT_BREAK
                        call             rt_pat_break@PLT
                        .endm
                        .macro           PAT_ANY
                        call             rt_pat_any@PLT
                        .endm
                        .macro           PAT_NOTANY
                        call             rt_pat_notany@PLT
                        .endm
                        .macro           PAT_LEN
                        call             rt_pat_len@PLT
                        .endm
                        .macro           PAT_POS
                        call             rt_pat_pos@PLT
                        .endm
                        .macro           PAT_RPOS
                        call             rt_pat_rpos@PLT
                        .endm
                        .macro           PAT_TAB
                        call             rt_pat_tab@PLT
                        .endm
                        .macro           PAT_RTAB
                        call             rt_pat_rtab@PLT
                        .endm
                        .macro           PAT_ARB
                        call             rt_pat_arb@PLT
                        .endm
                        .macro           PAT_ARBNO
                        call             rt_pat_arbno@PLT
                        .endm
                        .macro           PAT_REM
                        call             rt_pat_rem@PLT
                        .endm
                        .macro           PAT_FENCE
                        call             rt_pat_fence@PLT
                        .endm
                        .macro           PAT_FENCE1
                        call             rt_pat_fence1@PLT
                        .endm
                        .macro           PAT_FAIL
                        call             rt_pat_fail@PLT
                        .endm
                        .macro           PAT_ABORT
                        call             rt_pat_abort@PLT
                        .endm
                        .macro           PAT_SUCCEED
                        call             rt_pat_succeed@PLT
                        .endm
                        .macro           PAT_BAL
                        call             rt_pat_bal@PLT
                        .endm
                        .macro           PAT_EPS
                        call             rt_pat_eps@PLT
                        .endm
                        .macro           PAT_CAT
                        call             rt_pat_cat@PLT
                        .endm
                        .macro           PAT_ALT
                        call             rt_pat_alt@PLT
                        .endm
                        .macro           PAT_DEREF
                        call             rt_pat_deref@PLT
                        .endm
                        .macro           PAT_LIT lbl
                        .ifnb            \lbl
                        lea              rdi, [rip + \lbl]
                        .else
                        xor              edi, edi
                        .endif
                        call             rt_pat_lit@PLT
                        .endm
                        .macro           PAT_REFNAME lbl
                        .ifnb            \lbl
                        lea              rdi, [rip + \lbl]
                        .else
                        xor              edi, edi
                        .endif
                        call             rt_pat_refname@PLT
                        .endm
                        .macro           PAT_USERCALL lbl
                        .ifnb            \lbl
                        lea              rdi, [rip + \lbl]
                        .else
                        xor              edi, edi
                        .endif
                        call             rt_pat_usercall@PLT
                        .endm
                        .macro           PAT_CAPTURE n, lbl
                        .ifnb            \lbl
                        lea              rdi, [rip + \lbl]
                        .else
                        xor              edi, edi
                        .endif
                        mov              esi, \n
                        call             rt_pat_capture@PLT
                        .endm
                        .macro           PAT_USERCALL_ARGS n, lbl
                        .ifnb            \lbl
                        lea              rdi, [rip + \lbl]
                        .else
                        xor              edi, edi
                        .endif
                        mov              esi, \n
                        call             rt_pat_usercall_args@PLT
                        .endm
                        .macro           PAT_CAPTURE_FN is_imm, fname_lbl, namelist_lbl
                        .ifnb            \fname_lbl
                        lea              rdi, [rip + \fname_lbl]
                        .else
                        xor              edi, edi
                        .endif
                        mov              esi, \is_imm
                        .ifnb            \namelist_lbl
                        lea              rdx, [rip + \namelist_lbl]
                        .else
                        xor              edx, edx
                        .endif
                        call             rt_pat_capture_fn@PLT
                        .endm
                        .macro           PAT_CAPTURE_FN_ARGS is_imm, nargs, fname_lbl
                        .ifnb            \fname_lbl
                        lea              rdi, [rip + \fname_lbl]
                        .else
                        xor              edi, edi
                        .endif
                        mov              esi, \is_imm
                        mov              edx, \nargs
                        call             rt_pat_capture_fn_args@PLT
                        .endm
                        .macro           EXEC_STMT_VARIANT has_repl, subj_lbl
                        .ifnb            \subj_lbl
                        lea              rdi, [rip + \subj_lbl]
                        .else
                        xor              edi, edi
                        .endif
                        mov              esi, \has_repl
                        call             rt_match_variant@PLT
                        .endm
                        .macro           LABEL
                        .endm
                        .macro           STNO
                        .endm
                        .macro           PUSH_NULL_NOFLIP
                        call             rt_push_null_noflip@PLT
                        .endm
                        .macro           EXP_NUM
                        call             rt_exp@PLT
                        .endm
                        .macro           NEGATE
                        call             rt_neg@PLT
                        .endm
                        .macro           DEFINE_ENTRY
                        call             rt_define_entry@PLT
                        push             rbp
                        mov              rbp, rsp
                        .endm
                        .macro           DEFINE
                        call             rt_define@PLT
                        .endm
                        .macro           SUSPEND
                        mov              edi, 82
                        call             rt_unhandled_sm@PLT
                        .endm
                        .macro           RESUME
                        mov              edi, 83
                        call             rt_unhandled_sm@PLT
                        .endm
                        .macro           SUSPEND_VALUE
                        mov              edi, 65
                        call             rt_unhandled_sm@PLT
                        .endm
                        .macro           GEN_TICK
                        mov              edi, 64
                        call             rt_unhandled_sm@PLT
                        .endm
                        .macro           BB_PUMP
                        mov              edi, 56
                        call             rt_unhandled_sm@PLT
                        .endm
                        .macro           BB_ONCE
                        mov              edi, 57
                        call             rt_unhandled_sm@PLT
                        .endm
                        .macro           BB_EVAL
                        mov              edi, 58
                        call             rt_unhandled_sm@PLT
                        .endm
                        .macro           BB_ONCE_PROC
                        mov              edi, 59
                        call             rt_unhandled_sm@PLT
                        .endm
                        .macro           BB_PUMP_PROC
                        mov              edi, 60
                        call             rt_unhandled_sm@PLT
                        .endm
                        .macro           BB_PUMP_CASE
                        mov              edi, 61
                        call             rt_unhandled_sm@PLT
                        .endm
                        .macro           BB_PUMP_SM
                        mov              edi, 62
                        call             rt_unhandled_sm@PLT
                        .endm
                        .macro           BB_PUMP_EVERY
                        mov              edi, 63
                        call             rt_unhandled_sm@PLT
                        .endm
                        .macro           LOAD_GLOCAL
                        mov              edi, 84
                        call             rt_unhandled_sm@PLT
                        .endm
                        .macro           STORE_GLOCAL
                        mov              edi, 85
                        call             rt_unhandled_sm@PLT
                        .endm
                        .macro           ICMP_GT
                        mov              edi, 86
                        call             rt_unhandled_sm@PLT
                        .endm
                        .macro           ICMP_LT
                        mov              edi, 87
                        call             rt_unhandled_sm@PLT
                        .endm
                        .macro           LOAD_FRAME
                        mov              edi, 88
                        call             rt_unhandled_sm@PLT
                        .endm
                        .macro           STORE_FRAME
                        mov              edi, 89
                        call             rt_unhandled_sm@PLT
                        .endm
                        .macro           INCR
                        mov              edi, 0
                        call             rt_incr@PLT
                        .endm
                        .macro           DECR
                        mov              edi, 0
                        call             rt_decr@PLT
                        .endm
                        .macro           ACOMP
                        mov              edi, 0
                        call             rt_acomp@PLT
                        .endm
                        .macro           LCOMP
                        mov              edi, 0
                        call             rt_lcomp@PLT
                        .endm
                        .macro           UNHANDLED op
                        mov              edi, \op
                        call             rt_unhandled_op@PLT
                        .endm
                        .macro           RETURN_VARIANT kind, cond, pc
                        mov              edi, \kind
                        mov              esi, \cond
                        call             rt_do_return@PLT
                        test             eax, eax
                        jz               .Lretskip_\pc
                        mov              rsp, rbp
                        pop              rbp
                        ret
.Lretskip_\pc\():
                        .endm
# PUSH_REAL: hand-written (SM_PUSH_LIT_F special-case; param = 64-bit bits as hex)
                        .macro           PUSH_REAL val
                        movabs           rdi, \val
                        call             rt_push_real_bits@PLT
                        .endm
# === END sm macro library ===
