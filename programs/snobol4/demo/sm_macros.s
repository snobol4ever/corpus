# === BEGIN sm macro library (generated from g_sm_templates[]) ===
# EM-7c-sm-macros: one macro per opcode group; bodies and per-call
#   emissions share one renderer in sm_emit_template.c, so the
#   .s and the C dispatcher cannot drift -- they are paired by
#   shape kind in render_macro_body() / render_call_line().
                        .macro           HALT
                        call             scrip_rt_halt_tos@PLT
                        .endm            
                        .macro           PUSH_INT val
                        movabs           rdi, \val
                        call             scrip_rt_push_int@PLT
                        .endm            
                        .macro           PUSH_STR lbl, n
                        lea              rdi, [rip + \lbl]
                        mov              esi, \n
                        call             scrip_rt_push_str@PLT
                        .endm            
                        .macro           PUSH_VAR lbl
                        lea              rdi, [rip + \lbl]
                        call             scrip_rt_nv_get@PLT
                        .endm            
                        .macro           STORE_VAR lbl
                        lea              rdi, [rip + \lbl]
                        call             scrip_rt_nv_set@PLT
                        .endm            
                        .macro           VOID_POP
                        call             scrip_rt_pop_void@PLT
                        .endm            
                        .macro           PUSH_NULL
                        call             scrip_rt_push_null@PLT
                        .endm            
                        .macro           CONCAT
                        call             scrip_rt_concat@PLT
                        .endm            
                        .macro           COERCE_NUM
                        call             scrip_rt_coerce_num@PLT
                        .endm            
                        .macro           ADD_NUM
                        mov              edi, 17
                        call             scrip_rt_arith@PLT
                        .endm            
                        .macro           SUB_NUM
                        mov              edi, 18
                        call             scrip_rt_arith@PLT
                        .endm            
                        .macro           MUL_NUM
                        mov              edi, 19
                        call             scrip_rt_arith@PLT
                        .endm            
                        .macro           DIV_NUM
                        mov              edi, 20
                        call             scrip_rt_arith@PLT
                        .endm            
                        .macro           MOD_NUM
                        mov              edi, 22
                        call             scrip_rt_arith@PLT
                        .endm            
                        .macro           JUMP tgt
                        jmp              \tgt
                        .endm            
                        .macro           JUMP_S tgt
                        call             scrip_rt_last_ok@PLT
                        test             eax, eax
                        jnz              \tgt
                        .endm            
                        .macro           JUMP_F tgt
                        call             scrip_rt_last_ok@PLT
                        test             eax, eax
                        jz               \tgt
                        .endm            
                        .macro           PUSH_CHUNK entry, arity
                        movabs           rdi, \entry
                        mov              esi, \arity
                        call             scrip_rt_push_chunk_descr@PLT
                        .endm            
                        .macro           CALL_CHUNK tgt
                        call             \tgt
                        .endm            
                        .macro           RETURN
                        ret              
                        .endm            
                        .macro           CALL_FN lbl, n
                        lea              rdi, [rip + \lbl]
                        mov              esi, \n
                        call             scrip_rt_call@PLT
                        .endm            
                        .macro           PAT_SPAN
                        call             scrip_rt_pat_span@PLT
                        .endm            
                        .macro           PAT_BREAK
                        call             scrip_rt_pat_break@PLT
                        .endm            
                        .macro           PAT_ANY
                        call             scrip_rt_pat_any@PLT
                        .endm            
                        .macro           PAT_NOTANY
                        call             scrip_rt_pat_notany@PLT
                        .endm            
                        .macro           PAT_LEN
                        call             scrip_rt_pat_len@PLT
                        .endm            
                        .macro           PAT_POS
                        call             scrip_rt_pat_pos@PLT
                        .endm            
                        .macro           PAT_RPOS
                        call             scrip_rt_pat_rpos@PLT
                        .endm            
                        .macro           PAT_TAB
                        call             scrip_rt_pat_tab@PLT
                        .endm            
                        .macro           PAT_RTAB
                        call             scrip_rt_pat_rtab@PLT
                        .endm            
                        .macro           PAT_ARB
                        call             scrip_rt_pat_arb@PLT
                        .endm            
                        .macro           PAT_ARBNO
                        call             scrip_rt_pat_arbno@PLT
                        .endm            
                        .macro           PAT_REM
                        call             scrip_rt_pat_rem@PLT
                        .endm            
                        .macro           PAT_FENCE
                        call             scrip_rt_pat_fence@PLT
                        .endm            
                        .macro           PAT_FENCE1
                        call             scrip_rt_pat_fence1@PLT
                        .endm            
                        .macro           PAT_FAIL
                        call             scrip_rt_pat_fail@PLT
                        .endm            
                        .macro           PAT_ABORT
                        call             scrip_rt_pat_abort@PLT
                        .endm            
                        .macro           PAT_SUCCEED
                        call             scrip_rt_pat_succeed@PLT
                        .endm            
                        .macro           PAT_BAL
                        call             scrip_rt_pat_bal@PLT
                        .endm            
                        .macro           PAT_EPS
                        call             scrip_rt_pat_eps@PLT
                        .endm            
                        .macro           PAT_CAT
                        call             scrip_rt_pat_cat@PLT
                        .endm            
                        .macro           PAT_ALT
                        call             scrip_rt_pat_alt@PLT
                        .endm            
                        .macro           PAT_DEREF
                        call             scrip_rt_pat_deref@PLT
                        .endm            
                        .macro           PAT_BOXVAL
                        call             scrip_rt_pat_boxval@PLT
                        .endm            
                        .macro           PAT_LIT lbl
    .ifnb \lbl
        lea     rdi, [rip + \lbl]
    .else
        xor     edi, edi
    .endif
                        call             scrip_rt_pat_lit@PLT
                        .endm            
                        .macro           PAT_REFNAME lbl
    .ifnb \lbl
        lea     rdi, [rip + \lbl]
    .else
        xor     edi, edi
    .endif
                        call             scrip_rt_pat_refname@PLT
                        .endm            
                        .macro           PAT_USERCALL lbl
    .ifnb \lbl
        lea     rdi, [rip + \lbl]
    .else
        xor     edi, edi
    .endif
                        call             scrip_rt_pat_usercall@PLT
                        .endm            
                        .macro           PAT_CAPTURE n, lbl
    .ifnb \lbl
        lea     rdi, [rip + \lbl]
    .else
        xor     edi, edi
    .endif
                        mov              esi, \n
                        call             scrip_rt_pat_capture@PLT
                        .endm            
                        .macro           PAT_USERCALL_ARGS n, lbl
    .ifnb \lbl
        lea     rdi, [rip + \lbl]
    .else
        xor     edi, edi
    .endif
                        mov              esi, \n
                        call             scrip_rt_pat_usercall_args@PLT
                        .endm            
                        .macro           PAT_CAPTURE_FN is_imm, fname_lbl, namelist_lbl
    .ifnb \fname_lbl
        lea     rdi, [rip + \fname_lbl]
    .else
        xor     edi, edi
    .endif
                        mov              esi, \is_imm
    .ifnb \namelist_lbl
        lea     rdx, [rip + \namelist_lbl]
    .else
        xor     edx, edx
    .endif
                        call             scrip_rt_pat_capture_fn@PLT
                        .endm            
                        .macro           PAT_CAPTURE_FN_ARGS is_imm, nargs, fname_lbl
    .ifnb \fname_lbl
        lea     rdi, [rip + \fname_lbl]
    .else
        xor     edi, edi
    .endif
                        mov              esi, \is_imm
                        mov              edx, \nargs
                        call             scrip_rt_pat_capture_fn_args@PLT
                        .endm            
                        .macro           EXEC_STMT_VARIANT has_repl, subj_lbl
    .ifnb \subj_lbl
        lea     rdi, [rip + \subj_lbl]
    .else
        xor     edi, edi
    .endif
                        mov              esi, \has_repl
                        call             scrip_rt_match_variant@PLT
                        .endm            
                        .macro           LABEL
                        .endm            
                        .macro           STNO
                        .endm            
                        .macro           UNHANDLED op
                        mov              edi, \op
                        call             scrip_rt_unhandled_op@PLT
                        .endm            
                        .macro           RETURN_VARIANT kind, cond, pc
                        mov              edi, \kind
                        mov              esi, \cond
                        call             scrip_rt_do_return@PLT
                        test             eax, eax
                        jz               .Lretskip_\pc
                        ret              
.Lretskip_\pc\():
                        .endm            
# === END sm macro library ===

