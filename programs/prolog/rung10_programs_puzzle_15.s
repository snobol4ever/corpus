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
.macro LOAD_FRAME slot
 mov edi, \slot
 call rt_load_frame@PLT
.endm
.macro STORE_FRAME slot
 mov edi, \slot
 call rt_store_frame@PLT
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
.macro NAMED_CALL lbl, n
 mov edi, \n
 call rt_frame_enter@PLT
 call \lbl
 call rt_frame_leave@PLT
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
.S0: .string "differ/2"
.S1: .string "puzzle/0"
.S2: .string "floor/1"
.S3: .string "profession/1"
.S4: .string "secretary/1"
.S5: .string "member/2"
.S6: .string "display/6"
.S7: .string "main/0"
.S8: .string "("
.S9: .string ","
.S10: .string ")"
.S11: .string "display"
.S12: .string "=:="
.S13: .string "lawyer"
.S14: .string ">"
.S15: .string "architect"
.S16: .string "\\="
.S17: .string "coulter"
.S18: .string "ainsley"
.S19: .string "barnette"
.S20: .string "differ"
.S21: .string "floor"
.S22: .string "secretary"
.S23: .string "profession"
.S24: .string "member"
.S25: .string "[]"
.S26: .string "."
.S27: .string "doctor"
.S28: .string "write"
.S29: .string "\n"
.S30: .string " sec="
.S31: .string " Yates="
.S32: .string " Wilson="
.S33: .string "Vernon="
.S34: .string "puzzle"
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
.Lsub_differ_2:
 LABEL
.L2:
 RETURN
.L3:
 LABEL
 JUMP .L7
.Lsub_puzzle_0:
 LABEL
.L6:
 RETURN
.L7:
 LABEL
 JUMP .L11
.Lsub_floor_1:
 LABEL
.L10:
 RETURN
.L11:
 LABEL
 JUMP .L15
.Lsub_profession_1:
 LABEL
.L14:
 RETURN
.L15:
 LABEL
 JUMP .L19
.Lsub_secretary_1:
 LABEL
.L18:
 RETURN
.L19:
 LABEL
 JUMP .L23
.Lsub_member_2:
 LABEL
.L22:
 RETURN
.L23:
 LABEL
 JUMP .L27
.Lsub_display_6:
 LABEL
.L26:
 RETURN
.L27:
 LABEL
 JUMP .L31
.Lsub_main_0:
 LABEL
.L30:
 RETURN
.L31:
 LABEL
#=======================================================================================================================
# stmt 0  (line 55)
#=======================================================================================================================
 mov edi, 0
 call rt_set_stno@PLT
# SM_BB_PL_INVOKE main/0/0 (inline flat four-port)
.intel_syntax noprefix
 mov edi, 64
 call pl_bb_env_push@PLT
 bb50736_α:
# BOX PL_ALT n=2 (mode-4 first-solution)
 jmp .Lplch1_c0_pre
 .Lplch1_c0_pre:
 call rt_pl_trail_mark_push@PLT
 jmp .Lplch1_c0_body
 .Lplch1_c1_pre:
 call rt_pl_trail_unwind_top@PLT
 jmp .Lplch1_c1_body
.Lplent0_β: jmp .Lplent0_ω
.Lplch1_c0_body:
 bb50624_α:
# BOX PL_CALL puzzle/0 (WAM-CP-5, n_args=0)
 mov edi, 16
 call pl_bb_env_save_push@PLT
 push rax
 sub rsp, 8
 call .Lplpred_puzzle_0
 add rsp, 8
 pop rdi
 call rt_last_ok@PLT
 test eax, eax
 je bb50624_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp .Lplent0_γ
bb50624_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp .Lplch1_c1_pre
 .Lplch1_c0_beta:
 call pl_cp_current@PLT
 test rax, rax
 je bb50624_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_puzzle_0_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb50624_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp .Lplent0_γ
bb50624_α_nosol: jmp .Lplch1_c1_pre
.Lplch1_c1_body:
 bb50512_α:
# BOX SUCCEED()
 jmp .Lplent0_γ
.Lplch1_c1_beta:
 jmp .Lplent0_ω
.Lplent0_γ: 
 mov rdi, 1
 call rt_set_last_ok@PLT
 jmp .Lplent0_done
.Lplent0_ω: 
 mov rdi, 0
 call rt_set_last_ok@PLT
.Lplent0_done: 
 jmp .Lplcallees2_end
# PL CALLEE BLOCK differ/2/2
.intel_syntax noprefix
.Lplpred_differ_2: 
# env push/pop handled by caller (bb_pl_call site)
# redo entry: .Lplpred_differ_2_redo
 bb89280_α:
# BOX PL_CHOICE n=2 (WAM-CP-5 heap cursor, WAM-CP-9 cut)
 call rt_pl_env_current@PLT
 mov rdx, rax
 call rt_pl_trail_mark@PLT
 mov rsi, rax
 xor edi, edi
 xor ecx, ecx
 xor r8d, r8d
 call pl_cp_push@PLT
 mov rdi, rax
 call rt_pl_choice_cut_enter@PLT
 .Lplch4_dispatch:
 call pl_cp_current@PLT
 mov edi, [rax + 48]
 cmp edi, 2
 jge .Lplch4_exhausted
 cmp edi, 0
 je .Lplch4_c0_pre
 cmp edi, 1
 je .Lplch4_c1_pre
 jmp .Lplch4_exhausted
 .Lplch4_c0_pre:
 call pl_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch4_c0_body
 .Lplch4_c1_pre:
 call pl_cp_current@PLT
 mov edi, [rax + 16]
 call rt_pl_trail_unwind@PLT
 call pl_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch4_c1_body
 .Lplch4_exit_γ:
 call rt_pl_get_cut_flag@PLT
 test eax, eax
 jnz .Lplch4_cut_γ
 call pl_cp_current@PLT
 mov rdi, rax
 call rt_pl_choice_cut_exit@PLT
 jmp .Lplpb3_γ
 .Lplch4_cut_γ:
 call pl_cp_current@PLT
 mov rdi, rax
 call rt_pl_choice_cut_unwind@PLT
 jmp .Lplpb3_γ
 .Lplch4_cut_ω:
 call pl_cp_current@PLT
 mov rdi, rax
 call rt_pl_choice_cut_unwind@PLT
 jmp .Lplpb3_ω
 .Lplch4_exhausted:
 call pl_cp_current@PLT
 mov rdi, rax
 call rt_pl_choice_cut_exit@PLT
 call pl_cp_current@PLT
 mov edi, [rax + 16]
 call rt_pl_trail_unwind@PLT
 call pl_cp_pop@PLT
 jmp .Lplpb3_ω
 .Lplpb3_β:
 call rt_pl_get_cut_flag@PLT
 test eax, eax
 jnz .Lplch4_cut_ω
 call pl_cp_current@PLT
 test rax, rax
 je .Lplch4_β_nosol
 mov rdi, rax
 call rt_pl_choice_cut_enter@PLT
 jmp .Lplch4_dispatch
.Lplch4_β_nosol: jmp .Lplpb3_ω
.Lplch4_c0_body:
plseq5_g0_α:
 bb10032_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 0
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 0
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb3_β
 jmp plseq5_g1_α
plseq5_g0_β: jmp .Lplpb3_β
plseq5_g1_α:
 bb90352_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 1
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 0
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb3_β
 jmp plseq5_g2_α
plseq5_g1_β: jmp .Lplpb3_β
plseq5_g2_α:
 bb90016_α:
# BOX PL_CUT
 call rt_pl_cut_set@PLT
 jmp plseq5_g3_α
plseq5_g2_β: jmp plseq5_g3_α
plseq5_g3_α:
 bb89904_α:
# BOX FAIL()
 jmp .Lplpb3_β
plseq5_g3_β: jmp .Lplpb3_β
.Lplch4_c0_beta:
 jmp .Lplpb3_β
.Lplch4_c1_body:
plseq6_g0_α:
 bb12272_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 0
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 2
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb3_β
 jmp plseq6_g1_α
plseq6_g0_β: jmp .Lplpb3_β
plseq6_g1_α:
 bb11936_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 1
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 3
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb3_β
 jmp .Lplch4_exit_γ
plseq6_g1_β: jmp .Lplpb3_β
.Lplch4_c1_beta:
 jmp .Lplpb3_β
.Lplpb3_γ: 
 mov rdi, 1
 call rt_set_last_ok@PLT
 ret
.Lplpb3_ω: 
 mov rdi, 0
 call rt_set_last_ok@PLT
 ret
.Lplpred_differ_2_redo: jmp .Lplpb3_β
# PL CALLEE BLOCK puzzle/0/0
.intel_syntax noprefix
.Lplpred_puzzle_0: 
# env push/pop handled by caller (bb_pl_call site)
# redo entry: .Lplpred_puzzle_0_redo
plseq8_g0_α:
 bb26752_α:
# BOX PL_CALL profession/1 (WAM-CP-5, n_args=1)
 mov edi, 56
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
 call .Lplpred_profession_1
 pop rdi
 add rsp, 8
 call rt_last_ok@PLT
 test eax, eax
 je bb26752_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq8_g1_α
bb26752_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp .Lplpb7_ω
 plseq8_g0_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb26752_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_profession_1_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb26752_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq8_g1_α
bb26752_α_nosol: jmp .Lplpb7_ω
plseq8_g1_α:
 bb26528_α:
# BOX PL_CALL profession/1 (WAM-CP-5, n_args=1)
 mov edi, 56
 mov rsi, 1
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
 call .Lplpred_profession_1
 pop rdi
 add rsp, 8
 call rt_last_ok@PLT
 test eax, eax
 je bb26528_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq8_g2_α
bb26528_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq8_g0_β
 plseq8_g1_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb26528_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_profession_1_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb26528_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq8_g2_α
bb26528_α_nosol: jmp plseq8_g0_β
plseq8_g2_α:
 bb26304_α:
# BOX PL_CALL profession/1 (WAM-CP-5, n_args=1)
 mov edi, 56
 mov rsi, 2
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
 call .Lplpred_profession_1
 pop rdi
 add rsp, 8
 call rt_last_ok@PLT
 test eax, eax
 je bb26304_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq8_g3_α
bb26304_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq8_g1_β
 plseq8_g2_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb26304_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_profession_1_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb26304_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq8_g3_α
bb26304_α_nosol: jmp plseq8_g1_β
plseq8_g3_α:
 bb25968_α:
# BOX PL_CALL differ/2 (WAM-CP-5, n_args=2)
 mov edi, 56
 mov rsi, 0
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 56
 mov rsi, 1
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 18
 call pl_bb_env_save_push@PLT
 push rax
 sub rsp, 8
 mov rsi, [rsp + 16]
 mov edi, 1
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 24]
 mov edi, 0
 call pl_bb_bind_arg@PLT
 call .Lplpred_differ_2
 add rsp, 8
 pop rdi
 add rsp, 16
 call rt_last_ok@PLT
 test eax, eax
 je bb25968_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq8_g4_α
bb25968_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq8_g2_β
 plseq8_g3_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb25968_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_differ_2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb25968_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq8_g4_α
bb25968_α_nosol: jmp plseq8_g2_β
plseq8_g4_α:
 bb25632_α:
# BOX PL_CALL differ/2 (WAM-CP-5, n_args=2)
 mov edi, 56
 mov rsi, 0
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 56
 mov rsi, 2
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 18
 call pl_bb_env_save_push@PLT
 push rax
 sub rsp, 8
 mov rsi, [rsp + 16]
 mov edi, 1
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 24]
 mov edi, 0
 call pl_bb_bind_arg@PLT
 call .Lplpred_differ_2
 add rsp, 8
 pop rdi
 add rsp, 16
 call rt_last_ok@PLT
 test eax, eax
 je bb25632_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq8_g5_α
bb25632_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq8_g3_β
 plseq8_g4_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb25632_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_differ_2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb25632_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq8_g5_α
bb25632_α_nosol: jmp plseq8_g3_β
plseq8_g5_α:
 bb25296_α:
# BOX PL_CALL differ/2 (WAM-CP-5, n_args=2)
 mov edi, 56
 mov rsi, 1
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 56
 mov rsi, 2
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 18
 call pl_bb_env_save_push@PLT
 push rax
 sub rsp, 8
 mov rsi, [rsp + 16]
 mov edi, 1
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 24]
 mov edi, 0
 call pl_bb_bind_arg@PLT
 call .Lplpred_differ_2
 add rsp, 8
 pop rdi
 add rsp, 16
 call rt_last_ok@PLT
 test eax, eax
 je bb25296_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq8_g6_α
bb25296_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq8_g4_β
 plseq8_g5_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb25296_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_differ_2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb25296_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq8_g6_α
bb25296_α_nosol: jmp plseq8_g4_β
plseq8_g6_α:
 bb25072_α:
# BOX PL_CALL secretary/1 (WAM-CP-5, n_args=1)
 mov edi, 56
 mov rsi, 3
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
 call .Lplpred_secretary_1
 pop rdi
 add rsp, 8
 call rt_last_ok@PLT
 test eax, eax
 je bb25072_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq8_g7_α
bb25072_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq8_g5_β
 plseq8_g6_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb25072_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_secretary_1_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb25072_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq8_g7_α
bb25072_α_nosol: jmp plseq8_g5_β
plseq8_g7_α:
 bb24848_α:
# BOX PL_CALL secretary/1 (WAM-CP-5, n_args=1)
 mov edi, 56
 mov rsi, 4
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
 call .Lplpred_secretary_1
 pop rdi
 add rsp, 8
 call rt_last_ok@PLT
 test eax, eax
 je bb24848_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq8_g8_α
bb24848_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq8_g6_β
 plseq8_g7_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb24848_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_secretary_1_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb24848_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq8_g8_α
bb24848_α_nosol: jmp plseq8_g6_β
plseq8_g8_α:
 bb24624_α:
# BOX PL_CALL secretary/1 (WAM-CP-5, n_args=1)
 mov edi, 56
 mov rsi, 5
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
 call .Lplpred_secretary_1
 pop rdi
 add rsp, 8
 call rt_last_ok@PLT
 test eax, eax
 je bb24624_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq8_g9_α
bb24624_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq8_g7_β
 plseq8_g8_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb24624_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_secretary_1_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb24624_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq8_g9_α
bb24624_α_nosol: jmp plseq8_g7_β
plseq8_g9_α:
 bb24288_α:
# BOX PL_CALL differ/2 (WAM-CP-5, n_args=2)
 mov edi, 56
 mov rsi, 3
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 56
 mov rsi, 4
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 18
 call pl_bb_env_save_push@PLT
 push rax
 sub rsp, 8
 mov rsi, [rsp + 16]
 mov edi, 1
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 24]
 mov edi, 0
 call pl_bb_bind_arg@PLT
 call .Lplpred_differ_2
 add rsp, 8
 pop rdi
 add rsp, 16
 call rt_last_ok@PLT
 test eax, eax
 je bb24288_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq8_g10_α
bb24288_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq8_g8_β
 plseq8_g9_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb24288_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_differ_2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb24288_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq8_g10_α
bb24288_α_nosol: jmp plseq8_g8_β
plseq8_g10_α:
 bb23952_α:
# BOX PL_CALL differ/2 (WAM-CP-5, n_args=2)
 mov edi, 56
 mov rsi, 3
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 56
 mov rsi, 5
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 18
 call pl_bb_env_save_push@PLT
 push rax
 sub rsp, 8
 mov rsi, [rsp + 16]
 mov edi, 1
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 24]
 mov edi, 0
 call pl_bb_bind_arg@PLT
 call .Lplpred_differ_2
 add rsp, 8
 pop rdi
 add rsp, 16
 call rt_last_ok@PLT
 test eax, eax
 je bb23952_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq8_g11_α
bb23952_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq8_g9_β
 plseq8_g10_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb23952_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_differ_2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb23952_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq8_g11_α
bb23952_α_nosol: jmp plseq8_g9_β
plseq8_g11_α:
 bb23616_α:
# BOX PL_CALL differ/2 (WAM-CP-5, n_args=2)
 mov edi, 56
 mov rsi, 4
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 56
 mov rsi, 5
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 18
 call pl_bb_env_save_push@PLT
 push rax
 sub rsp, 8
 mov rsi, [rsp + 16]
 mov edi, 1
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 24]
 mov edi, 0
 call pl_bb_bind_arg@PLT
 call .Lplpred_differ_2
 add rsp, 8
 pop rdi
 add rsp, 16
 call rt_last_ok@PLT
 test eax, eax
 je bb23616_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq8_g12_α
bb23616_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq8_g10_β
 plseq8_g11_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb23616_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_differ_2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb23616_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq8_g12_α
bb23616_α_nosol: jmp plseq8_g10_β
plseq8_g12_α:
 bb23392_α:
# BOX PL_CALL floor/1 (WAM-CP-5, n_args=1)
 mov edi, 56
 mov rsi, 6
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
 call .Lplpred_floor_1
 pop rdi
 add rsp, 8
 call rt_last_ok@PLT
 test eax, eax
 je bb23392_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq8_g13_α
bb23392_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq8_g11_β
 plseq8_g12_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb23392_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_floor_1_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb23392_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq8_g13_α
bb23392_α_nosol: jmp plseq8_g11_β
plseq8_g13_α:
 bb23168_α:
# BOX PL_CALL floor/1 (WAM-CP-5, n_args=1)
 mov edi, 56
 mov rsi, 7
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
 call .Lplpred_floor_1
 pop rdi
 add rsp, 8
 call rt_last_ok@PLT
 test eax, eax
 je bb23168_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq8_g14_α
bb23168_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq8_g12_β
 plseq8_g13_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb23168_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_floor_1_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb23168_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq8_g14_α
bb23168_α_nosol: jmp plseq8_g12_β
plseq8_g14_α:
 bb22944_α:
# BOX PL_CALL floor/1 (WAM-CP-5, n_args=1)
 mov edi, 56
 mov rsi, 8
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
 call .Lplpred_floor_1
 pop rdi
 add rsp, 8
 call rt_last_ok@PLT
 test eax, eax
 je bb22944_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq8_g15_α
bb22944_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq8_g13_β
 plseq8_g14_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb22944_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_floor_1_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb22944_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq8_g15_α
bb22944_α_nosol: jmp plseq8_g13_β
plseq8_g15_α:
 bb22608_α:
# BOX PL_CALL differ/2 (WAM-CP-5, n_args=2)
 mov edi, 56
 mov rsi, 6
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 56
 mov rsi, 7
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 18
 call pl_bb_env_save_push@PLT
 push rax
 sub rsp, 8
 mov rsi, [rsp + 16]
 mov edi, 1
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 24]
 mov edi, 0
 call pl_bb_bind_arg@PLT
 call .Lplpred_differ_2
 add rsp, 8
 pop rdi
 add rsp, 16
 call rt_last_ok@PLT
 test eax, eax
 je bb22608_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq8_g16_α
bb22608_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq8_g14_β
 plseq8_g15_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb22608_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_differ_2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb22608_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq8_g16_α
bb22608_α_nosol: jmp plseq8_g14_β
plseq8_g16_α:
 bb22272_α:
# BOX PL_CALL differ/2 (WAM-CP-5, n_args=2)
 mov edi, 56
 mov rsi, 6
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 56
 mov rsi, 8
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 18
 call pl_bb_env_save_push@PLT
 push rax
 sub rsp, 8
 mov rsi, [rsp + 16]
 mov edi, 1
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 24]
 mov edi, 0
 call pl_bb_bind_arg@PLT
 call .Lplpred_differ_2
 add rsp, 8
 pop rdi
 add rsp, 16
 call rt_last_ok@PLT
 test eax, eax
 je bb22272_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq8_g17_α
bb22272_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq8_g15_β
 plseq8_g16_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb22272_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_differ_2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb22272_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq8_g17_α
bb22272_α_nosol: jmp plseq8_g15_β
plseq8_g17_α:
 bb21936_α:
# BOX PL_CALL differ/2 (WAM-CP-5, n_args=2)
 mov edi, 56
 mov rsi, 7
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 56
 mov rsi, 8
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 18
 call pl_bb_env_save_push@PLT
 push rax
 sub rsp, 8
 mov rsi, [rsp + 16]
 mov edi, 1
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 24]
 mov edi, 0
 call pl_bb_bind_arg@PLT
 call .Lplpred_differ_2
 add rsp, 8
 pop rdi
 add rsp, 16
 call rt_last_ok@PLT
 test eax, eax
 je bb21936_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq8_g18_α
bb21936_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq8_g16_β
 plseq8_g17_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb21936_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_differ_2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb21936_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq8_g18_α
bb21936_α_nosol: jmp plseq8_g16_β
plseq8_g18_α:
 bb21824_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 5
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S19]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je plseq8_g17_β
 jmp plseq8_g19_α
plseq8_g18_β: jmp plseq8_g17_β
plseq8_g19_α:
 bb21488_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 4
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S18]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je plseq8_g17_β
 jmp plseq8_g20_α
plseq8_g19_β: jmp plseq8_g17_β
plseq8_g20_α:
 bb21152_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 3
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S17]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je plseq8_g17_β
 jmp plseq8_g21_α
plseq8_g20_β: jmp plseq8_g17_β
plseq8_g21_α:
 bb20592_α:
 # BOX PL_BUILTIN(>/2)
 sub rsp, 16
 lea rdi, [rip + .S14]
 mov esi, 56
 mov rdx, 7
 xor ecx, ecx
 mov r8d, 0
 mov r9, 1
 xor eax, eax
 mov qword ptr [rsp + 0], rax
 call rt_pl_arith_cmp@PLT
 add rsp, 16
 test eax, eax
 je plseq8_g17_β
 jmp plseq8_g22_α
plseq8_g21_β: jmp plseq8_g17_β
plseq8_g22_α:
 bb20256_α:
# BOX PL_CALL \=/2 (WAM-CP-5, n_args=2)
 mov edi, 56
 mov rsi, 0
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S15]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 18
 call pl_bb_env_save_push@PLT
 push rax
 sub rsp, 8
 mov rsi, [rsp + 16]
 mov edi, 1
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 24]
 mov edi, 0
 call pl_bb_bind_arg@PLT
 call .Lplpred____2
 add rsp, 8
 pop rdi
 add rsp, 16
 call rt_last_ok@PLT
 test eax, eax
 je bb20256_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq8_g23_α
bb20256_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq8_g17_β
 plseq8_g22_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb20256_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred____2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb20256_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq8_g23_α
bb20256_α_nosol: jmp plseq8_g17_β
plseq8_g23_α:
 bb20032_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 1
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S15]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je xite9_else_α
 jmp xite9_then_α
xite9_cond_β: jmp xite9_else_α
xite9_then_α:
 bb19472_α:
 # BOX PL_BUILTIN(>/2)
 sub rsp, 16
 lea rdi, [rip + .S14]
 mov esi, 56
 mov rdx, 6
 xor ecx, ecx
 mov r8d, 56
 mov r9, 7
 xor eax, eax
 mov qword ptr [rsp + 0], rax
 call rt_pl_arith_cmp@PLT
 add rsp, 16
 test eax, eax
 je plseq8_g22_β
 jmp plseq8_g24_α
xite9_then_β: jmp plseq8_g22_β
xite9_else_α:
 bb19360_α:
# BOX SUCCEED()
 jmp plseq8_g24_α
xite9_else_β:
 jmp plseq8_g22_β
# END PL_ITE (β-tombstone via EP)
plseq8_g23_β:
 jmp plseq8_g22_β
plseq8_g24_α:
 bb19136_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 2
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S15]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je xite10_else_α
 jmp xite10_then_α
xite10_cond_β: jmp xite10_else_α
xite10_then_α:
 bb18576_α:
 # BOX PL_BUILTIN(>/2)
 sub rsp, 16
 lea rdi, [rip + .S14]
 mov esi, 56
 mov rdx, 6
 xor ecx, ecx
 mov r8d, 56
 mov r9, 8
 xor eax, eax
 mov qword ptr [rsp + 0], rax
 call rt_pl_arith_cmp@PLT
 add rsp, 16
 test eax, eax
 je plseq8_g22_β
 jmp plseq8_g25_α
xite10_then_β: jmp plseq8_g22_β
xite10_else_α:
 bb18464_α:
# BOX SUCCEED()
 jmp plseq8_g25_α
xite10_else_β:
 jmp plseq8_g22_β
# END PL_ITE (β-tombstone via EP)
plseq8_g24_β:
 jmp plseq8_g22_β
plseq8_g25_α:
 bb18240_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 0
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S13]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je xite11_else_α
 jmp xite11_then_α
xite11_cond_β: jmp xite11_else_α
xite11_then_α:
 bb17680_α:
 # BOX PL_BUILTIN(=:=/2)
 sub rsp, 16
 lea rdi, [rip + .S12]
 mov esi, 56
 mov rdx, 6
 xor ecx, ecx
 mov r8d, 0
 mov r9, 1
 xor eax, eax
 mov qword ptr [rsp + 0], rax
 call rt_pl_arith_cmp@PLT
 add rsp, 16
 test eax, eax
 je plseq8_g22_β
 jmp plseq8_g26_α
xite11_then_β: jmp plseq8_g22_β
xite11_else_α:
 bb17568_α:
# BOX SUCCEED()
 jmp plseq8_g26_α
xite11_else_β:
 jmp plseq8_g22_β
# END PL_ITE (β-tombstone via EP)
plseq8_g25_β:
 jmp plseq8_g22_β
plseq8_g26_α:
 bb17344_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 1
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S13]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je xite12_else_α
 jmp xite12_then_α
xite12_cond_β: jmp xite12_else_α
xite12_then_α:
 bb16784_α:
 # BOX PL_BUILTIN(=:=/2)
 sub rsp, 16
 lea rdi, [rip + .S12]
 mov esi, 56
 mov rdx, 7
 xor ecx, ecx
 mov r8d, 0
 mov r9, 1
 xor eax, eax
 mov qword ptr [rsp + 0], rax
 call rt_pl_arith_cmp@PLT
 add rsp, 16
 test eax, eax
 je plseq8_g22_β
 jmp plseq8_g27_α
xite12_then_β: jmp plseq8_g22_β
xite12_else_α:
 bb16672_α:
# BOX SUCCEED()
 jmp plseq8_g27_α
xite12_else_β:
 jmp plseq8_g22_β
# END PL_ITE (β-tombstone via EP)
plseq8_g26_β:
 jmp plseq8_g22_β
plseq8_g27_α:
 bb16448_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 2
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S13]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je xite13_else_α
 jmp xite13_then_α
xite13_cond_β: jmp xite13_else_α
xite13_then_α:
 bb15888_α:
 # BOX PL_BUILTIN(=:=/2)
 sub rsp, 16
 lea rdi, [rip + .S12]
 mov esi, 56
 mov rdx, 8
 xor ecx, ecx
 mov r8d, 0
 mov r9, 1
 xor eax, eax
 mov qword ptr [rsp + 0], rax
 call rt_pl_arith_cmp@PLT
 add rsp, 16
 test eax, eax
 je plseq8_g22_β
 jmp plseq8_g28_α
xite13_then_β: jmp plseq8_g22_β
xite13_else_α:
 bb15776_α:
# BOX SUCCEED()
 jmp plseq8_g28_α
xite13_else_β:
 jmp plseq8_g22_β
# END PL_ITE (β-tombstone via EP)
plseq8_g27_β:
 jmp plseq8_g22_β
plseq8_g28_α:
 bb14992_α:
# BOX PL_CALL display/6 (WAM-CP-5, n_args=6)
 mov edi, 56
 mov rsi, 0
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 56
 mov rsi, 3
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 56
 mov rsi, 1
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 56
 mov rsi, 4
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 56
 mov rsi, 2
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 56
 mov rsi, 5
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 22
 call pl_bb_env_save_push@PLT
 push rax
 sub rsp, 8
 mov rsi, [rsp + 16]
 mov edi, 5
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 24]
 mov edi, 4
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 32]
 mov edi, 3
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 40]
 mov edi, 2
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 48]
 mov edi, 1
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 56]
 mov edi, 0
 call pl_bb_bind_arg@PLT
 call .Lplpred_display_6
 add rsp, 8
 pop rdi
 add rsp, 48
 call rt_last_ok@PLT
 test eax, eax
 je bb14992_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq8_g29_α
bb14992_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq8_g22_β
 plseq8_g28_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb14992_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_display_6_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb14992_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq8_g29_α
bb14992_α_nosol: jmp plseq8_g22_β
plseq8_g29_α:
 bb14880_α:
# BOX FAIL()
 jmp plseq8_g28_β
plseq8_g29_β: jmp plseq8_g28_β
.Lplpb7_β:
 jmp plseq8_g28_β
.Lplpb7_γ: 
 mov rdi, 1
 call rt_set_last_ok@PLT
 ret
.Lplpb7_ω: 
 mov rdi, 0
 call rt_set_last_ok@PLT
 ret
.Lplpred_puzzle_0_redo: jmp .Lplpb7_β
# PL CALLEE BLOCK floor/1/1
.intel_syntax noprefix
.Lplpred_floor_1: 
# env push/pop handled by caller (bb_pl_call site)
# redo entry: .Lplpred_floor_1_redo
plseq15_g0_α:
 bb29808_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 0
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 0
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb14_ω
 jmp plseq15_g1_α
plseq15_g0_β: jmp .Lplpb14_ω
plseq15_g1_α:
 bb28576_α:
# BOX PL_CALL member/2 (WAM-CP-5, n_args=2)
 mov edi, 56
 mov rsi, 0
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 sub rsp, 16
 mov edi, 0
 mov rsi, 1
 xor edx, edx
 xor ecx, ecx
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 0
 mov rsi, 2
 xor edx, edx
 xor ecx, ecx
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 0
 mov rsi, 3
 xor edx, edx
 xor ecx, ecx
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S25]
 xor ecx, ecx
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S26]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S26]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S26]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_build_n@PLT
 add rsp, 16
 push rax
 mov edi, 18
 call pl_bb_env_save_push@PLT
 push rax
 sub rsp, 8
 mov rsi, [rsp + 16]
 mov edi, 1
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 24]
 mov edi, 0
 call pl_bb_bind_arg@PLT
 call .Lplpred_member_2
 add rsp, 8
 pop rdi
 add rsp, 16
 call rt_last_ok@PLT
 test eax, eax
 je bb28576_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp .Lplpb14_γ
bb28576_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp .Lplpb14_ω
 plseq15_g1_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb28576_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_member_2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb28576_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp .Lplpb14_γ
bb28576_α_nosol: jmp .Lplpb14_ω
.Lplpb14_β:
 jmp plseq15_g1_β
.Lplpb14_γ: 
 mov rdi, 1
 call rt_set_last_ok@PLT
 ret
.Lplpb14_ω: 
 mov rdi, 0
 call rt_set_last_ok@PLT
 ret
.Lplpred_floor_1_redo: jmp .Lplpb14_β
# PL CALLEE BLOCK profession/1/1
.intel_syntax noprefix
.Lplpred_profession_1: 
# env push/pop handled by caller (bb_pl_call site)
# redo entry: .Lplpred_profession_1_redo
plseq17_g0_α:
 bb32752_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 0
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 0
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb16_ω
 jmp plseq17_g1_α
plseq17_g0_β: jmp .Lplpb16_ω
plseq17_g1_α:
 bb31520_α:
# BOX PL_CALL member/2 (WAM-CP-5, n_args=2)
 mov edi, 56
 mov rsi, 0
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 sub rsp, 16
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S15]
 xor ecx, ecx
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S27]
 xor ecx, ecx
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S13]
 xor ecx, ecx
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S25]
 xor ecx, ecx
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S26]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S26]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S26]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_build_n@PLT
 add rsp, 16
 push rax
 mov edi, 18
 call pl_bb_env_save_push@PLT
 push rax
 sub rsp, 8
 mov rsi, [rsp + 16]
 mov edi, 1
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 24]
 mov edi, 0
 call pl_bb_bind_arg@PLT
 call .Lplpred_member_2
 add rsp, 8
 pop rdi
 add rsp, 16
 call rt_last_ok@PLT
 test eax, eax
 je bb31520_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp .Lplpb16_γ
bb31520_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp .Lplpb16_ω
 plseq17_g1_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb31520_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_member_2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb31520_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp .Lplpb16_γ
bb31520_α_nosol: jmp .Lplpb16_ω
.Lplpb16_β:
 jmp plseq17_g1_β
.Lplpb16_γ: 
 mov rdi, 1
 call rt_set_last_ok@PLT
 ret
.Lplpb16_ω: 
 mov rdi, 0
 call rt_set_last_ok@PLT
 ret
.Lplpred_profession_1_redo: jmp .Lplpb16_β
# PL CALLEE BLOCK secretary/1/1
.intel_syntax noprefix
.Lplpred_secretary_1: 
# env push/pop handled by caller (bb_pl_call site)
# redo entry: .Lplpred_secretary_1_redo
plseq19_g0_α:
 bb35696_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 0
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 0
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb18_ω
 jmp plseq19_g1_α
plseq19_g0_β: jmp .Lplpb18_ω
plseq19_g1_α:
 bb34464_α:
# BOX PL_CALL member/2 (WAM-CP-5, n_args=2)
 mov edi, 56
 mov rsi, 0
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 sub rsp, 16
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S18]
 xor ecx, ecx
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S19]
 xor ecx, ecx
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S17]
 xor ecx, ecx
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S25]
 xor ecx, ecx
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S26]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S26]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S26]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_build_n@PLT
 add rsp, 16
 push rax
 mov edi, 18
 call pl_bb_env_save_push@PLT
 push rax
 sub rsp, 8
 mov rsi, [rsp + 16]
 mov edi, 1
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 24]
 mov edi, 0
 call pl_bb_bind_arg@PLT
 call .Lplpred_member_2
 add rsp, 8
 pop rdi
 add rsp, 16
 call rt_last_ok@PLT
 test eax, eax
 je bb34464_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp .Lplpb18_γ
bb34464_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp .Lplpb18_ω
 plseq19_g1_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb34464_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_member_2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb34464_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp .Lplpb18_γ
bb34464_α_nosol: jmp .Lplpb18_ω
.Lplpb18_β:
 jmp plseq19_g1_β
.Lplpb18_γ: 
 mov rdi, 1
 call rt_set_last_ok@PLT
 ret
.Lplpb18_ω: 
 mov rdi, 0
 call rt_set_last_ok@PLT
 ret
.Lplpred_secretary_1_redo: jmp .Lplpb18_β
# PL CALLEE BLOCK member/2/2
.intel_syntax noprefix
.Lplpred_member_2: 
# env push/pop handled by caller (bb_pl_call site)
# redo entry: .Lplpred_member_2_redo
 bb36768_α:
# BOX PL_CHOICE n=2 (WAM-CP-5 heap cursor, WAM-CP-9 cut)
 call rt_pl_env_current@PLT
 mov rdx, rax
 call rt_pl_trail_mark@PLT
 mov rsi, rax
 xor edi, edi
 xor ecx, ecx
 xor r8d, r8d
 call pl_cp_push@PLT
 mov rdi, rax
 call rt_pl_choice_cut_enter@PLT
 .Lplch21_dispatch:
 call pl_cp_current@PLT
 mov edi, [rax + 48]
 cmp edi, 2
 jge .Lplch21_exhausted
 cmp edi, 0
 je .Lplch21_c0_pre
 cmp edi, 1
 je .Lplch21_c1_pre
 jmp .Lplch21_exhausted
 .Lplch21_c0_pre:
 call pl_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch21_c0_body
 .Lplch21_c1_pre:
 call pl_cp_current@PLT
 mov edi, [rax + 16]
 call rt_pl_trail_unwind@PLT
 call pl_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch21_c1_body
 .Lplch21_exit_γ:
 call rt_pl_get_cut_flag@PLT
 test eax, eax
 jnz .Lplch21_cut_γ
 call pl_cp_current@PLT
 mov rdi, rax
 call rt_pl_choice_cut_exit@PLT
 jmp .Lplpb20_γ
 .Lplch21_cut_γ:
 call pl_cp_current@PLT
 mov rdi, rax
 call rt_pl_choice_cut_unwind@PLT
 jmp .Lplpb20_γ
 .Lplch21_cut_ω:
 call pl_cp_current@PLT
 mov rdi, rax
 call rt_pl_choice_cut_unwind@PLT
 jmp .Lplpb20_ω
 .Lplch21_exhausted:
 call pl_cp_current@PLT
 mov rdi, rax
 call rt_pl_choice_cut_exit@PLT
 call pl_cp_current@PLT
 mov edi, [rax + 16]
 call rt_pl_trail_unwind@PLT
 call pl_cp_pop@PLT
 jmp .Lplpb20_ω
 .Lplpb20_β:
 call rt_pl_get_cut_flag@PLT
 test eax, eax
 jnz .Lplch21_cut_ω
 call pl_cp_current@PLT
 test rax, rax
 je .Lplch21_β_nosol
 mov rdi, rax
 call rt_pl_choice_cut_enter@PLT
 jmp .Lplch21_dispatch
.Lplch21_β_nosol: jmp .Lplpb20_ω
.Lplch21_c0_body:
plseq22_g0_α:
 bb39120_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 0
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 0
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb20_β
 jmp plseq22_g1_α
plseq22_g0_β: jmp .Lplpb20_β
plseq22_g1_α:
 bb38784_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 1
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 56
 mov rsi, 0
 xor edx, edx
 xor ecx, ecx
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 2
 xor edx, edx
 xor ecx, ecx
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S26]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_build_n@PLT
 add rsp, 16
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb20_β
 jmp .Lplch21_exit_γ
plseq22_g1_β: jmp .Lplpb20_β
.Lplch21_c0_beta:
 jmp .Lplpb20_β
.Lplch21_c1_body:
plseq23_g0_α:
 bb41888_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 0
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 0
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb20_β
 jmp plseq23_g1_α
plseq23_g0_β: jmp .Lplpb20_β
plseq23_g1_α:
 bb41552_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 1
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 56
 mov rsi, 2
 xor edx, edx
 xor ecx, ecx
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 3
 xor edx, edx
 xor ecx, ecx
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S26]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_build_n@PLT
 add rsp, 16
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb20_β
 jmp plseq23_g2_α
plseq23_g1_β: jmp .Lplpb20_β
plseq23_g2_α:
 bb40768_α:
# BOX PL_CALL member/2 (WAM-CP-5, n_args=2)
 mov edi, 56
 mov rsi, 0
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 56
 mov rsi, 3
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 18
 call pl_bb_env_save_push@PLT
 push rax
 sub rsp, 8
 mov rsi, [rsp + 16]
 mov edi, 1
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 24]
 mov edi, 0
 call pl_bb_bind_arg@PLT
 call .Lplpred_member_2
 add rsp, 8
 pop rdi
 add rsp, 16
 call rt_last_ok@PLT
 test eax, eax
 je bb40768_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp .Lplch21_exit_γ
bb40768_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp .Lplpb20_β
 plseq23_g2_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb40768_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_member_2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb40768_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp .Lplch21_exit_γ
bb40768_α_nosol: jmp .Lplpb20_β
.Lplch21_c1_beta:
 jmp plseq23_g2_β
.Lplpb20_γ: 
 mov rdi, 1
 call rt_set_last_ok@PLT
 ret
.Lplpb20_ω: 
 mov rdi, 0
 call rt_set_last_ok@PLT
 ret
.Lplpred_member_2_redo: jmp .Lplpb20_β
# PL CALLEE BLOCK display/6/6
.intel_syntax noprefix
.Lplpred_display_6: 
# env push/pop handled by caller (bb_pl_call site)
# redo entry: .Lplpred_display_6_redo
plseq25_g0_α:
 bb48928_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 0
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 0
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb24_ω
 jmp plseq25_g1_α
plseq25_g0_β: jmp .Lplpb24_ω
plseq25_g1_α:
 bb48592_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 1
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 1
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb24_ω
 jmp plseq25_g2_α
plseq25_g1_β: jmp .Lplpb24_ω
plseq25_g2_α:
 bb48256_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 2
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 2
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb24_ω
 jmp plseq25_g3_α
plseq25_g2_β: jmp .Lplpb24_ω
plseq25_g3_α:
 bb47920_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 3
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 3
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb24_ω
 jmp plseq25_g4_α
plseq25_g3_β: jmp .Lplpb24_ω
plseq25_g4_α:
 bb47584_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 4
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 4
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb24_ω
 jmp plseq25_g5_α
plseq25_g4_β: jmp .Lplpb24_ω
plseq25_g5_α:
 bb47248_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 5
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 5
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb24_ω
 jmp plseq25_g6_α
plseq25_g5_β: jmp .Lplpb24_ω
plseq25_g6_α:
 bb46800_α:
 # BOX PL_BUILTIN(write/1)
 lea rcx, [rip + .S33]
 mov rdi, rcx
 call rt_pl_write_atom@PLT
 jmp plseq25_g7_α
plseq25_g6_β: jmp plseq25_g7_α
plseq25_g7_α:
 bb46576_α:
 # BOX PL_BUILTIN(write/1)
 mov edi, 0
 call rt_pl_write_var@PLT
 jmp plseq25_g8_α
plseq25_g7_β: jmp plseq25_g8_α
plseq25_g8_α:
 bb46352_α:
 # BOX PL_BUILTIN(write/1)
 lea rcx, [rip + .S30]
 mov rdi, rcx
 call rt_pl_write_atom@PLT
 jmp plseq25_g9_α
plseq25_g8_β: jmp plseq25_g9_α
plseq25_g9_α:
 bb46128_α:
 # BOX PL_BUILTIN(write/1)
 mov edi, 1
 call rt_pl_write_var@PLT
 jmp plseq25_g10_α
plseq25_g9_β: jmp plseq25_g10_α
plseq25_g10_α:
 bb45904_α:
 # BOX PL_BUILTIN(write/1)
 lea rcx, [rip + .S32]
 mov rdi, rcx
 call rt_pl_write_atom@PLT
 jmp plseq25_g11_α
plseq25_g10_β: jmp plseq25_g11_α
plseq25_g11_α:
 bb45680_α:
 # BOX PL_BUILTIN(write/1)
 mov edi, 2
 call rt_pl_write_var@PLT
 jmp plseq25_g12_α
plseq25_g11_β: jmp plseq25_g12_α
plseq25_g12_α:
 bb45456_α:
 # BOX PL_BUILTIN(write/1)
 lea rcx, [rip + .S30]
 mov rdi, rcx
 call rt_pl_write_atom@PLT
 jmp plseq25_g13_α
plseq25_g12_β: jmp plseq25_g13_α
plseq25_g13_α:
 bb45232_α:
 # BOX PL_BUILTIN(write/1)
 mov edi, 3
 call rt_pl_write_var@PLT
 jmp plseq25_g14_α
plseq25_g13_β: jmp plseq25_g14_α
plseq25_g14_α:
 bb45008_α:
 # BOX PL_BUILTIN(write/1)
 lea rcx, [rip + .S31]
 mov rdi, rcx
 call rt_pl_write_atom@PLT
 jmp plseq25_g15_α
plseq25_g14_β: jmp plseq25_g15_α
plseq25_g15_α:
 bb44784_α:
 # BOX PL_BUILTIN(write/1)
 mov edi, 4
 call rt_pl_write_var@PLT
 jmp plseq25_g16_α
plseq25_g15_β: jmp plseq25_g16_α
plseq25_g16_α:
 bb44560_α:
 # BOX PL_BUILTIN(write/1)
 lea rcx, [rip + .S30]
 mov rdi, rcx
 call rt_pl_write_atom@PLT
 jmp plseq25_g17_α
plseq25_g16_β: jmp plseq25_g17_α
plseq25_g17_α:
 bb44336_α:
 # BOX PL_BUILTIN(write/1)
 mov edi, 5
 call rt_pl_write_var@PLT
 jmp plseq25_g18_α
plseq25_g17_β: jmp plseq25_g18_α
plseq25_g18_α:
 bb44112_α:
 # BOX PL_BUILTIN(write/1)
 lea rcx, [rip + .S29]
 mov rdi, rcx
 call rt_pl_write_atom@PLT
 jmp .Lplpb24_γ
plseq25_g18_β: jmp .Lplpb24_γ
.Lplpb24_β:
 jmp .Lplpb24_ω
.Lplpb24_γ: 
 mov rdi, 1
 call rt_set_last_ok@PLT
 ret
.Lplpb24_ω: 
 mov rdi, 0
 call rt_set_last_ok@PLT
 ret
.Lplpred_display_6_redo: jmp .Lplpb24_β
.Lplcallees2_end: 
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
 HALT
call rt_finalize@PLT
pop rbp
ret
.size main, .-main
.section .note.GNU-stack
