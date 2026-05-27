.macro HALT
 call rt_halt_tos@PLT
.endm
.macro CONCAT
 call rt_concat@PLT
.endm
.macro NEGATE
 call rt_neg@PLT
.endm
.macro COERCE_NUM
 call rt_coerce_num@PLT
.endm
.macro EXP_NUM
 call rt_exp@PLT
.endm
.macro PUSH_NULL
 call rt_push_null@PLT
.endm
.macro PUSH_NULL_NOFLIP
 call rt_push_null_noflip@PLT
.endm
.macro VOID_POP
 call rt_pop_void@PLT
.endm
.macro ADD_NUM n=0
 mov edi, 17
 call rt_arith@PLT
.endm
.macro SUB_NUM n=0
 mov edi, 18
 call rt_arith@PLT
.endm
.macro MUL_NUM n=0
 mov edi, 19
 call rt_arith@PLT
.endm
.macro DIV_NUM n=0
 mov edi, 20
 call rt_arith@PLT
.endm
.macro MOD_NUM n=0
 mov edi, 22
 call rt_arith@PLT
.endm
.macro ACOMP n=0
 mov edi, \n
 call rt_acomp@PLT
.endm
.macro LCOMP n=0
 mov edi, \n
 call rt_lcomp@PLT
.endm
.macro PAT_ARB
 call rt_pat_arb@PLT
.endm
.macro PAT_ARBNO
 call rt_pat_arbno@PLT
.endm
.macro PAT_REM
 call rt_pat_rem@PLT
.endm
.macro PAT_FENCE
 call rt_pat_fence@PLT
.endm
.macro PAT_FENCE1
 call rt_pat_fence1@PLT
.endm
.macro PAT_FAIL
 call rt_pat_fail@PLT
.endm
.macro PAT_SUCCEED
 call rt_pat_succeed@PLT
.endm
.macro PAT_ABORT
 call rt_pat_abort@PLT
.endm
.macro PAT_BAL
 call rt_pat_bal@PLT
.endm
.macro PAT_EPS
 call rt_pat_eps@PLT
.endm
.macro PAT_DEREF
 call rt_pat_deref@PLT
.endm
.macro PAT_ANY
 call rt_pat_any@PLT
.endm
.macro PAT_NOTANY
 call rt_pat_notany@PLT
.endm
.macro PAT_SPAN
 call rt_pat_span@PLT
.endm
.macro PAT_BREAK
 call rt_pat_break@PLT
.endm
.macro PAT_BREAKX
 call rt_pat_breakx@PLT
.endm
.macro PAT_LEN
 call rt_pat_len@PLT
.endm
.macro PAT_POS
 call rt_pat_pos@PLT
.endm
.macro PAT_RPOS
 call rt_pat_rpos@PLT
.endm
.macro PAT_TAB
 call rt_pat_tab@PLT
.endm
.macro PAT_RTAB
 call rt_pat_rtab@PLT
.endm
.macro PAT_CAT
 call rt_pat_cat@PLT
.endm
.macro PAT_ALT
 call rt_pat_alt@PLT
.endm
.macro JUMP tgt
 jmp \tgt
.endm
.macro JUMP_S tgt
 call rt_last_ok@PLT
 test eax, eax
 jnz \tgt
.endm
.macro JUMP_F tgt
 call rt_last_ok@PLT
 test eax, eax
 jz \tgt
.endm
.macro LABEL
.endm
.macro STNO
.endm
.macro PUSH_VAR lbl
 lea rdi, [rip + \lbl]
 call rt_nv_get@PLT
.endm
.macro STORE_VAR lbl
 lea rdi, [rip + \lbl]
 call rt_nv_set@PLT
.endm
.macro PUSH_INT val
 movabs rdi, \val
 call rt_push_int@PLT
.endm
.macro PUSH_STR lbl, n
 lea rdi, [rip + \lbl]
 mov esi, \n
 call rt_push_str@PLT
.endm
.macro PUSH_REAL val
 movabs rdi, \val
 call rt_push_real_bits@PLT
.endm
.macro PUSH_EXPRESSION entry, arity
 lea rdi, [rip + .L\entry]
 mov esi, 2
 call rt_push_expression_descr@PLT
.endm
.macro CALL_EXPRESSION tgt
 call \tgt
.endm
.macro INCR n
 movabs rdi, \n
 call rt_incr@PLT
.endm
.macro DECR n
 movabs rdi, \n
 call rt_decr@PLT
.endm
.macro CALL_FN lbl, n
 lea rdi, [rip + \lbl]
 mov esi, \n
 call rt_call@PLT
.endm
.macro BB_PUMP_PROC tgt
 call \tgt
.endm
.macro DEFINE_ENTRY
 call rt_define_entry@PLT
.endm
.macro DEFINE
 call rt_define@PLT
.endm
.macro PAT_LIT lbl
.ifnb \lbl
 lea rdi, [rip + \lbl]
.endif
 call rt_pat_lit@PLT
.endm
.macro PAT_REFNAME lbl
.ifnb \lbl
 lea rdi, [rip + \lbl]
.endif
 call rt_pat_refname@PLT
.endm
.macro PAT_USERCALL lbl
.ifnb \lbl
 lea rdi, [rip + \lbl]
.endif
 call rt_pat_usercall@PLT
.endm
.macro PAT_CAPTURE n, lbl
.ifnb \lbl
 lea rdi, [rip + \lbl]
.endif
 mov esi, \n
 call rt_pat_capture@PLT
.endm
.macro PAT_CAPTURE_FN is_imm, fname_lbl, namelist_lbl
.ifnb \fname_lbl
 lea rdi, [rip + \fname_lbl]
.endif
 mov esi, \is_imm
.ifnb \namelist_lbl
 lea rdx, [rip + \namelist_lbl]
.endif
 call rt_pat_capture_fn@PLT
.endm
.macro PAT_CAPTURE_FN_ARGS is_imm, nargs, fname_lbl
.ifnb \fname_lbl
 lea rdi, [rip + \fname_lbl]
.endif
 mov esi, \is_imm
 mov edx, \nargs
 call rt_pat_capture_fn_args@PLT
.endm
.macro PAT_USERCALL_ARGS n, lbl
.ifnb \lbl
 lea rdi, [rip + \lbl]
.endif
 mov esi, \n
 call rt_pat_usercall_args@PLT
.endm
.macro EXEC_STMT_VARIANT has_repl, subj_lbl
.ifnb \subj_lbl
 lea rdi, [rip + \subj_lbl]
.endif
 mov esi, \has_repl
 call rt_match_variant@PLT
.endm
.macro RETURN
 ret
.endm
.macro RETURN_VARIANT kind, cond, pc
 mov edi, \kind
 mov esi, \cond
 call rt_do_return@PLT
 test eax, eax
 jz .Lretskip_\pc
 mov rsp, rbp
 pop rbp
 ret
.Lretskip_\pc\():
.endm
.macro NRETURN_VAR kind, cond, pc
 mov edi, \kind
 mov esi, \cond
 call rt_do_nreturn@PLT
 test eax, eax
 jz .Lretskip_\pc
 mov rsp, rbp
 pop rbp
 ret
.Lretskip_\pc\():
.endm
.intel_syntax noprefix
.section .rodata
.S0: .string "retract_loop/0"
.S1: .string "item/1"
.S2: .string "main/0"
.S3: .string "("
.S4: .string ","
.S5: .string ")"
.S6: .string "retract_loop"
.S7: .string "retract"
.S8: .string "item"
.S9: .string "a"
.S10: .string "b"
.S11: .string "c"
.S12: .string "nl"
.S13: .string "write"
.S14: .string "empty"
.S15: .string "notempty"
.text
.intel_syntax noprefix
.globl main
.type main, @function
main: push rbp
mov rbp, rsp
call rt_gc_init@PLT
mov edi, 2
call rt_set_lang@PLT
xor edi, edi
call rt_register_expressions@PLT
call rt_init@PLT
.L0:
 JUMP .L3
 LABEL
.L2:
 RETURN
.L3:
 LABEL
 JUMP .L7
 LABEL
.L6:
 RETURN
.L7:
 LABEL
 JUMP .L11
 LABEL
.L10:
 RETURN
.L11:
 LABEL
#=======================================================================================================================
# stmt 0
#=======================================================================================================================
 mov edi, 0
 call rt_set_stno@PLT
#=======================================================================================================================
# stmt 0
#=======================================================================================================================
 mov edi, 0
 call rt_set_stno@PLT
#=======================================================================================================================
# stmt 0
#=======================================================================================================================
 mov edi, 0
 call rt_set_stno@PLT
# SM_BB_SWITCH PL_ENTRY main/0/0 (inline flat four-port)
.intel_syntax noprefix
 mov edi, 64
 call pl_bb_env_push@PLT
plseq1_g0_α:
 bb64672_α:
# BOX PL_CALL retract_loop/0 (n_args=0)
 mov edi, 16
 call pl_bb_env_save_push@PLT
 push rax
 sub rsp, 8
 call .Lplpred_retract_loop_0
 add rsp, 8
 pop rdi
 call pl_bb_env_pop@PLT
 call rt_last_ok@PLT
 test eax, eax
 jne plseq1_g1_α
 jmp .Lplent0_ω
plseq1_g0_β: jmp .Lplent0_ω
plseq1_g1_α:
 bb64336_α:
# BOX PL_CALL item/1 (n_args=1)
 mov edi, 57
 mov rsi, 0
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 17
 call pl_bb_env_save_push@PLT
 push rax
 mov rsi, [rsp + 8]
 mov edi, 0
 call pl_bb_bind_arg@PLT
 call .Lplpred_item_1
 pop rdi
 call pl_bb_env_pop@PLT
 add rsp, 8
 call rt_last_ok@PLT
 test eax, eax
 jne xite2_then_α
 jmp xite2_else_α
xite2_cond_β: jmp xite2_else_α
xite2_then_α:
 bb64112_α:
 # BOX PL_BUILTIN(write/1)
 lea rcx, [rip + .S15]
 mov rdi, rcx
 call rt_pl_write_atom@PLT
 jmp plseq1_g2_α
xite2_then_β: jmp plseq1_g2_α
xite2_else_α:
 bb63888_α:
 # BOX PL_BUILTIN(write/1)
 lea rcx, [rip + .S14]
 mov rdi, rcx
 call rt_pl_write_atom@PLT
 jmp plseq1_g2_α
xite2_else_β: jmp plseq1_g2_α
# END PL_ITE (β-tombstone via EP)
plseq1_g1_β:
 jmp plseq1_g0_β
plseq1_g2_α:
 bb63776_α:
 # BOX PL_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp .Lplent0_γ
plseq1_g2_β: jmp .Lplent0_γ
.Lplent0_β:
 jmp plseq1_g0_β
.Lplent0_γ: 
 mov rdi, 1
 call rt_set_last_ok@PLT
 jmp .Lplent0_done
.Lplent0_ω: 
 mov rdi, 0
 call rt_set_last_ok@PLT
.Lplent0_done: 
 jmp .Lplcallees3_end
# PL CALLEE BLOCK retract_loop/0/0
.intel_syntax noprefix
.Lplpred_retract_loop_0: 
# env push/pop handled by caller (bb_pl_call site)
 bb52112_α:
# BOX PL_CHOICE n=2 (mode-4 first-solution)
 jmp .Lplch5_c0_pre
 .Lplch5_c0_pre:
 call rt_pl_trail_mark_push@PLT
 jmp .Lplch5_c0_body
 .Lplch5_c1_pre:
 call rt_pl_trail_unwind_top@PLT
 jmp .Lplch5_c1_body
.Lplpb4_β: jmp .Lplpb4_ω
.Lplch5_c0_body:
plseq6_g0_α:
 bb53824_α:
 # BOX PL_BUILTIN(retract/1)
 # PL_BUILTIN: unknown 'retract' — stub
 jmp plseq6_g1_α
plseq6_g0_β: jmp plseq6_g1_α
plseq6_g1_α:
 bb53712_α:
# BOX PL_CALL retract_loop/0 (n_args=0)
 mov edi, 16
 call pl_bb_env_save_push@PLT
 push rax
 sub rsp, 8
 call .Lplpred_retract_loop_0
 add rsp, 8
 pop rdi
 call pl_bb_env_pop@PLT
 call rt_last_ok@PLT
 test eax, eax
 jne .Lplpb4_γ
 jmp .Lplch5_c1_pre
plseq6_g1_β: jmp .Lplch5_c1_pre
.Lplch5_c0_beta:
 jmp plseq6_g1_β
.Lplch5_c1_body:
 bb55664_α:
# BOX SUCCEED()
 jmp .Lplpb4_γ
.Lplch5_c1_beta:
 jmp .Lplpb4_ω
.Lplpb4_γ: 
 mov rdi, 1
 call rt_set_last_ok@PLT
 ret
.Lplpb4_ω: 
 mov rdi, 0
 call rt_set_last_ok@PLT
 ret
# PL CALLEE BLOCK item/1/1
.intel_syntax noprefix
.Lplpred_item_1: 
# env push/pop handled by caller (bb_pl_call site)
 bb56624_α:
# BOX PL_CHOICE n=3 (mode-4 first-solution)
 jmp .Lplch8_c0_pre
 .Lplch8_c0_pre:
 call rt_pl_trail_mark_push@PLT
 jmp .Lplch8_c0_body
 .Lplch8_c1_pre:
 call rt_pl_trail_unwind_top@PLT
 jmp .Lplch8_c1_body
 .Lplch8_c2_pre:
 call rt_pl_trail_unwind_top@PLT
 jmp .Lplch8_c2_body
.Lplpb7_β: jmp .Lplpb7_ω
.Lplch8_c0_body:
 bb58448_α:
# BOX PL_UNIFY
 mov edi, 57
 mov rsi, 0
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 58
 mov rsi, 0
 lea rdx, [rip + .S9]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 pop rdi
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplch8_c1_pre
 jmp .Lplpb7_γ
.Lplch8_c0_beta: jmp .Lplch8_c1_pre
.Lplch8_c1_body:
 bb60384_α:
# BOX PL_UNIFY
 mov edi, 57
 mov rsi, 0
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 58
 mov rsi, 0
 lea rdx, [rip + .S10]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 pop rdi
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplch8_c2_pre
 jmp .Lplpb7_γ
.Lplch8_c1_beta: jmp .Lplch8_c2_pre
.Lplch8_c2_body:
 bb62192_α:
# BOX PL_UNIFY
 mov edi, 57
 mov rsi, 0
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 58
 mov rsi, 0
 lea rdx, [rip + .S11]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 pop rdi
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb7_ω
 jmp .Lplpb7_γ
.Lplch8_c2_beta: jmp .Lplpb7_ω
.Lplpb7_γ: 
 mov rdi, 1
 call rt_set_last_ok@PLT
 ret
.Lplpb7_ω: 
 mov rdi, 0
 call rt_set_last_ok@PLT
 ret
.Lplcallees3_end: 
 HALT
call rt_finalize@PLT
pop rbp
ret
.size main, .-main
.section .note.GNU-stack
