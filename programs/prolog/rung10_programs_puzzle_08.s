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
.S0: .string "sex/2"
.S1: .string "position/1"
.S2: .string "holder_sex/7"
.S3: .string "puzzle/0"
.S4: .string "cashier_manager_same_sex/5"
.S5: .string "all_diff5/5"
.S6: .string "clerk_cashier_opp/5"
.S7: .string "main/0"
.S8: .string "("
.S9: .string ","
.S10: .string ")"
.S11: .string "f"
.S12: .string "ames"
.S13: .string "brown"
.S14: .string "m"
.S15: .string "conroy"
.S16: .string "davis"
.S17: .string "evans"
.S18: .string "buyer"
.S19: .string "cashier"
.S20: .string "clerk"
.S21: .string "floorwalker"
.S22: .string "manager"
.S23: .string "->"
.S24: .string "="
.S25: .string "sex"
.S26: .string "write"
.S27: .string "\n"
.S28: .string " Evans="
.S29: .string " Davis="
.S30: .string " Conroy="
.S31: .string " Brown="
.S32: .string "Ames="
.S33: .string "\\+"
.S34: .string "clerk_cashier_opp"
.S35: .string "cashier_manager_same_sex"
.S36: .string "\\="
.S37: .string "all_diff5"
.S38: .string "position"
.S39: .string "holder_sex"
.S40: .string "puzzle"
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
.Lsub_sex_2:
 LABEL
.L2:
 RETURN
.L3:
 LABEL
 JUMP .L7
.Lsub_position_1:
 LABEL
.L6:
 RETURN
.L7:
 LABEL
 JUMP .L11
.Lsub_holder_sex_7:
 LABEL
.L10:
 RETURN
.L11:
 LABEL
 JUMP .L15
.Lsub_puzzle_0:
 LABEL
.L14:
 RETURN
.L15:
 LABEL
 JUMP .L19
.Lsub_cashier_manager_same_sex_5:
 LABEL
.L18:
 RETURN
.L19:
 LABEL
 JUMP .L23
.Lsub_all_diff5_5:
 LABEL
.L22:
 RETURN
.L23:
 LABEL
 JUMP .L27
.Lsub_clerk_cashier_opp_5:
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
# stmt 0  (line 4)
#=======================================================================================================================
 mov edi, 0
 call rt_set_stno@PLT
# SM_BB_PL_INVOKE main/0/0 (inline flat four-port)
.intel_syntax noprefix
 mov edi, 64
 call pl_bb_env_push@PLT
 bb24768_α:
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
 bb24656_α:
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
 je bb24656_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp .Lplent0_γ
bb24656_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp .Lplch1_c1_pre
 .Lplch1_c0_beta:
 call pl_cp_current@PLT
 test rax, rax
 je bb24656_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_puzzle_0_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb24656_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp .Lplent0_γ
bb24656_α_nosol: jmp .Lplch1_c1_pre
.Lplch1_c1_body:
 bb19152_α:
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
# PL CALLEE BLOCK sex/2/2
.intel_syntax noprefix
.Lplpred_sex_2: 
# env push/pop handled by caller (bb_pl_call site)
# redo entry: .Lplpred_sex_2_redo
 bb62976_α:
# BOX PL_CHOICE n=5 (WAM-CP-5 heap cursor, WAM-CP-9 cut)
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
 cmp edi, 5
 jge .Lplch4_exhausted
 cmp edi, 0
 je .Lplch4_c0_pre
 cmp edi, 1
 je .Lplch4_c1_pre
 cmp edi, 2
 je .Lplch4_c2_pre
 cmp edi, 3
 je .Lplch4_c3_pre
 cmp edi, 4
 je .Lplch4_c4_pre
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
 .Lplch4_c2_pre:
 call pl_cp_current@PLT
 mov edi, [rax + 16]
 call rt_pl_trail_unwind@PLT
 call pl_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch4_c2_body
 .Lplch4_c3_pre:
 call pl_cp_current@PLT
 mov edi, [rax + 16]
 call rt_pl_trail_unwind@PLT
 call pl_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch4_c3_body
 .Lplch4_c4_pre:
 call pl_cp_current@PLT
 mov edi, [rax + 16]
 call rt_pl_trail_unwind@PLT
 call pl_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch4_c4_body
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
 bb65072_α:
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
 lea rdx, [rip + .S12]
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
 bb64736_α:
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
 lea rdx, [rip + .S11]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb3_β
 jmp .Lplch4_exit_γ
plseq5_g1_β: jmp .Lplpb3_β
.Lplch4_c0_beta:
 jmp .Lplpb3_β
.Lplch4_c1_body:
plseq6_g0_α:
 bb67344_α:
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
 je .Lplpb3_β
 jmp plseq6_g1_α
plseq6_g0_β: jmp .Lplpb3_β
plseq6_g1_α:
 bb67008_α:
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
 lea rdx, [rip + .S11]
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
.Lplch4_c2_body:
plseq7_g0_α:
 bb69616_α:
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
 lea rdx, [rip + .S15]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb3_β
 jmp plseq7_g1_α
plseq7_g0_β: jmp .Lplpb3_β
plseq7_g1_α:
 bb69280_α:
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
 lea rdx, [rip + .S14]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb3_β
 jmp .Lplch4_exit_γ
plseq7_g1_β: jmp .Lplpb3_β
.Lplch4_c2_beta:
 jmp .Lplpb3_β
.Lplch4_c3_body:
plseq8_g0_α:
 bb71760_α:
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
 lea rdx, [rip + .S16]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb3_β
 jmp plseq8_g1_α
plseq8_g0_β: jmp .Lplpb3_β
plseq8_g1_α:
 bb71424_α:
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
 lea rdx, [rip + .S14]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb3_β
 jmp .Lplch4_exit_γ
plseq8_g1_β: jmp .Lplpb3_β
.Lplch4_c3_beta:
 jmp .Lplpb3_β
.Lplch4_c4_body:
plseq9_g0_α:
 bb73904_α:
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
 lea rdx, [rip + .S17]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb3_β
 jmp plseq9_g1_α
plseq9_g0_β: jmp .Lplpb3_β
plseq9_g1_α:
 bb73568_α:
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
 lea rdx, [rip + .S14]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb3_β
 jmp .Lplch4_exit_γ
plseq9_g1_β: jmp .Lplpb3_β
.Lplch4_c4_beta:
 jmp .Lplpb3_β
.Lplpb3_γ: 
 mov rdi, 1
 call rt_set_last_ok@PLT
 ret
.Lplpb3_ω: 
 mov rdi, 0
 call rt_set_last_ok@PLT
 ret
.Lplpred_sex_2_redo: jmp .Lplpb3_β
# PL CALLEE BLOCK position/1/1
.intel_syntax noprefix
.Lplpred_position_1: 
# env push/pop handled by caller (bb_pl_call site)
# redo entry: .Lplpred_position_1_redo
 bb74976_α:
# BOX PL_CHOICE n=5 (WAM-CP-5 heap cursor, WAM-CP-9 cut)
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
 .Lplch11_dispatch:
 call pl_cp_current@PLT
 mov edi, [rax + 48]
 cmp edi, 5
 jge .Lplch11_exhausted
 cmp edi, 0
 je .Lplch11_c0_pre
 cmp edi, 1
 je .Lplch11_c1_pre
 cmp edi, 2
 je .Lplch11_c2_pre
 cmp edi, 3
 je .Lplch11_c3_pre
 cmp edi, 4
 je .Lplch11_c4_pre
 jmp .Lplch11_exhausted
 .Lplch11_c0_pre:
 call pl_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch11_c0_body
 .Lplch11_c1_pre:
 call pl_cp_current@PLT
 mov edi, [rax + 16]
 call rt_pl_trail_unwind@PLT
 call pl_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch11_c1_body
 .Lplch11_c2_pre:
 call pl_cp_current@PLT
 mov edi, [rax + 16]
 call rt_pl_trail_unwind@PLT
 call pl_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch11_c2_body
 .Lplch11_c3_pre:
 call pl_cp_current@PLT
 mov edi, [rax + 16]
 call rt_pl_trail_unwind@PLT
 call pl_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch11_c3_body
 .Lplch11_c4_pre:
 call pl_cp_current@PLT
 mov edi, [rax + 16]
 call rt_pl_trail_unwind@PLT
 call pl_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch11_c4_body
 .Lplch11_exit_γ:
 call rt_pl_get_cut_flag@PLT
 test eax, eax
 jnz .Lplch11_cut_γ
 call pl_cp_current@PLT
 mov rdi, rax
 call rt_pl_choice_cut_exit@PLT
 jmp .Lplpb10_γ
 .Lplch11_cut_γ:
 call pl_cp_current@PLT
 mov rdi, rax
 call rt_pl_choice_cut_unwind@PLT
 jmp .Lplpb10_γ
 .Lplch11_cut_ω:
 call pl_cp_current@PLT
 mov rdi, rax
 call rt_pl_choice_cut_unwind@PLT
 jmp .Lplpb10_ω
 .Lplch11_exhausted:
 call pl_cp_current@PLT
 mov rdi, rax
 call rt_pl_choice_cut_exit@PLT
 call pl_cp_current@PLT
 mov edi, [rax + 16]
 call rt_pl_trail_unwind@PLT
 call pl_cp_pop@PLT
 jmp .Lplpb10_ω
 .Lplpb10_β:
 call rt_pl_get_cut_flag@PLT
 test eax, eax
 jnz .Lplch11_cut_ω
 call pl_cp_current@PLT
 test rax, rax
 je .Lplch11_β_nosol
 mov rdi, rax
 call rt_pl_choice_cut_enter@PLT
 jmp .Lplch11_dispatch
.Lplch11_β_nosol: jmp .Lplpb10_ω
.Lplch11_c0_body:
 bb76672_α:
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
 lea rdx, [rip + .S18]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb10_β
 jmp .Lplch11_exit_γ
.Lplch11_c0_beta: jmp .Lplpb10_β
.Lplch11_c1_body:
 bb78544_α:
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
 lea rdx, [rip + .S19]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb10_β
 jmp .Lplch11_exit_γ
.Lplch11_c1_beta: jmp .Lplpb10_β
.Lplch11_c2_body:
 bb80352_α:
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
 lea rdx, [rip + .S20]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb10_β
 jmp .Lplch11_exit_γ
.Lplch11_c2_beta: jmp .Lplpb10_β
.Lplch11_c3_body:
 bb82160_α:
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
 lea rdx, [rip + .S21]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb10_β
 jmp .Lplch11_exit_γ
.Lplch11_c3_beta: jmp .Lplpb10_β
.Lplch11_c4_body:
 bb83968_α:
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
 lea rdx, [rip + .S22]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb10_β
 jmp .Lplch11_exit_γ
.Lplch11_c4_beta: jmp .Lplpb10_β
.Lplpb10_γ: 
 mov rdi, 1
 call rt_set_last_ok@PLT
 ret
.Lplpb10_ω: 
 mov rdi, 0
 call rt_set_last_ok@PLT
 ret
.Lplpred_position_1_redo: jmp .Lplpb10_β
# PL CALLEE BLOCK holder_sex/7/7
.intel_syntax noprefix
.Lplpred_holder_sex_7: 
# env push/pop handled by caller (bb_pl_call site)
# redo entry: .Lplpred_holder_sex_7_redo
plseq13_g0_α:
 bb92368_α:
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
 je .Lplpb12_ω
 jmp plseq13_g1_α
plseq13_g0_β: jmp .Lplpb12_ω
plseq13_g1_α:
 bb92032_α:
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
 je .Lplpb12_ω
 jmp plseq13_g2_α
plseq13_g1_β: jmp .Lplpb12_ω
plseq13_g2_α:
 bb91696_α:
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
 je .Lplpb12_ω
 jmp plseq13_g3_α
plseq13_g2_β: jmp .Lplpb12_ω
plseq13_g3_α:
 bb91360_α:
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
 je .Lplpb12_ω
 jmp plseq13_g4_α
plseq13_g3_β: jmp .Lplpb12_ω
plseq13_g4_α:
 bb91024_α:
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
 je .Lplpb12_ω
 jmp plseq13_g5_α
plseq13_g4_β: jmp .Lplpb12_ω
plseq13_g5_α:
 bb90688_α:
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
 je .Lplpb12_ω
 jmp plseq13_g6_α
plseq13_g5_β: jmp .Lplpb12_ω
plseq13_g6_α:
 bb90352_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 6
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 6
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb12_ω
 jmp plseq13_g7_α
plseq13_g6_β: jmp .Lplpb12_ω
plseq13_g7_α:
 bb89904_α:
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
 je xite14_else_α
 jmp xite14_then_α
xite14_cond_β: jmp xite14_else_α
xite14_then_α:
 bb89344_α:
# BOX PL_CALL sex/2 (WAM-CP-5, n_args=2)
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S12]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 56
 mov rsi, 6
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
 call .Lplpred_sex_2
 add rsp, 8
 pop rdi
 add rsp, 16
 call rt_last_ok@PLT
 test eax, eax
 je bb89344_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp .Lplpb12_γ
bb89344_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp .Lplpb12_ω
 xite14_then_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb89344_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_sex_2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb89344_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp .Lplpb12_γ
bb89344_α_nosol: jmp .Lplpb12_ω
xite14_else_α:
 bb88448_α:
# BOX PL_CALL ->/2 (WAM-CP-5, n_args=2)
 sub rsp, 16
 mov edi, 56
 mov rsi, 2
 xor edx, edx
 xor ecx, ecx
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 0
 xor edx, edx
 xor ecx, ecx
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S24]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_build_n@PLT
 add rsp, 16
 push rax
 sub rsp, 16
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S13]
 xor ecx, ecx
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 6
 xor edx, edx
 xor ecx, ecx
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S25]
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
 call .Lplpred____2
 add rsp, 8
 pop rdi
 add rsp, 16
 call rt_last_ok@PLT
 test eax, eax
 je bb88448_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp .Lplpb12_γ
bb88448_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp .Lplpb12_ω
 xite14_else_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb88448_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred____2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb88448_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp .Lplpb12_γ
bb88448_α_nosol: jmp .Lplpb12_ω
# END PL_ITE (β-tombstone via EP)
plseq13_g7_β:
 jmp .Lplpb12_ω
.Lplpb12_β:
 jmp .Lplpb12_ω
.Lplpb12_γ: 
 mov rdi, 1
 call rt_set_last_ok@PLT
 ret
.Lplpb12_ω: 
 mov rdi, 0
 call rt_set_last_ok@PLT
 ret
.Lplpred_holder_sex_7_redo: jmp .Lplpb12_β
# PL CALLEE BLOCK puzzle/0/0
.intel_syntax noprefix
.Lplpred_puzzle_0: 
# env push/pop handled by caller (bb_pl_call site)
# redo entry: .Lplpred_puzzle_0_redo
plseq16_g0_α:
 bb4944_α:
# BOX PL_CALL position/1 (WAM-CP-5, n_args=1)
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
 call .Lplpred_position_1
 pop rdi
 add rsp, 8
 call rt_last_ok@PLT
 test eax, eax
 je bb4944_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq16_g1_α
bb4944_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp .Lplpb15_ω
 plseq16_g0_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb4944_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_position_1_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb4944_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq16_g1_α
bb4944_α_nosol: jmp .Lplpb15_ω
plseq16_g1_α:
 bb4720_α:
# BOX PL_CALL position/1 (WAM-CP-5, n_args=1)
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
 call .Lplpred_position_1
 pop rdi
 add rsp, 8
 call rt_last_ok@PLT
 test eax, eax
 je bb4720_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq16_g2_α
bb4720_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq16_g0_β
 plseq16_g1_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb4720_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_position_1_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb4720_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq16_g2_α
bb4720_α_nosol: jmp plseq16_g0_β
plseq16_g2_α:
 bb4496_α:
# BOX PL_CALL position/1 (WAM-CP-5, n_args=1)
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
 call .Lplpred_position_1
 pop rdi
 add rsp, 8
 call rt_last_ok@PLT
 test eax, eax
 je bb4496_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq16_g3_α
bb4496_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq16_g1_β
 plseq16_g2_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb4496_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_position_1_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb4496_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq16_g3_α
bb4496_α_nosol: jmp plseq16_g1_β
plseq16_g3_α:
 bb4272_α:
# BOX PL_CALL position/1 (WAM-CP-5, n_args=1)
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
 call .Lplpred_position_1
 pop rdi
 add rsp, 8
 call rt_last_ok@PLT
 test eax, eax
 je bb4272_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq16_g4_α
bb4272_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq16_g2_β
 plseq16_g3_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb4272_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_position_1_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb4272_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq16_g4_α
bb4272_α_nosol: jmp plseq16_g2_β
plseq16_g4_α:
 bb4048_α:
# BOX PL_CALL position/1 (WAM-CP-5, n_args=1)
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
 call .Lplpred_position_1
 pop rdi
 add rsp, 8
 call rt_last_ok@PLT
 test eax, eax
 je bb4048_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq16_g5_α
bb4048_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq16_g3_β
 plseq16_g4_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb4048_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_position_1_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb4048_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq16_g5_α
bb4048_α_nosol: jmp plseq16_g3_β
plseq16_g5_α:
 bb3376_α:
# BOX PL_CALL all_diff5/5 (WAM-CP-5, n_args=5)
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
 mov edi, 56
 mov rsi, 2
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
 mov rsi, 4
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 21
 call pl_bb_env_save_push@PLT
 push rax
 mov rsi, [rsp + 8]
 mov edi, 4
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 16]
 mov edi, 3
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 24]
 mov edi, 2
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 32]
 mov edi, 1
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 40]
 mov edi, 0
 call pl_bb_bind_arg@PLT
 call .Lplpred_all_diff5_5
 pop rdi
 add rsp, 40
 call rt_last_ok@PLT
 test eax, eax
 je bb3376_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq16_g6_α
bb3376_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq16_g4_β
 plseq16_g5_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb3376_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_all_diff5_5_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb3376_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq16_g6_α
bb3376_α_nosol: jmp plseq16_g4_β
plseq16_g6_α:
 bb3040_α:
# BOX PL_CALL \=/2 (WAM-CP-5, n_args=2)
 mov edi, 56
 mov rsi, 0
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S18]
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
 je bb3040_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq16_g7_α
bb3040_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq16_g5_β
 plseq16_g6_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb3040_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred____2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb3040_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq16_g7_α
bb3040_α_nosol: jmp plseq16_g5_β
plseq16_g7_α:
 bb2704_α:
# BOX PL_CALL \=/2 (WAM-CP-5, n_args=2)
 mov edi, 56
 mov rsi, 1
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S18]
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
 je bb2704_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq16_g8_α
bb2704_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq16_g6_β
 plseq16_g7_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb2704_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred____2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb2704_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq16_g8_α
bb2704_α_nosol: jmp plseq16_g6_β
plseq16_g8_α:
 bb2368_α:
# BOX PL_CALL \=/2 (WAM-CP-5, n_args=2)
 mov edi, 56
 mov rsi, 2
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S18]
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
 je bb2368_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq16_g9_α
bb2368_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq16_g7_β
 plseq16_g8_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb2368_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred____2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb2368_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq16_g9_α
bb2368_α_nosol: jmp plseq16_g7_β
plseq16_g9_α:
 bb2032_α:
# BOX PL_CALL \=/2 (WAM-CP-5, n_args=2)
 mov edi, 56
 mov rsi, 2
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S19]
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
 je bb2032_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq16_g10_α
bb2032_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq16_g8_β
 plseq16_g9_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb2032_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred____2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb2032_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq16_g10_α
bb2032_α_nosol: jmp plseq16_g8_β
plseq16_g10_α:
 bb1696_α:
# BOX PL_CALL \=/2 (WAM-CP-5, n_args=2)
 mov edi, 56
 mov rsi, 2
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S20]
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
 je bb1696_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq16_g11_α
bb1696_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq16_g9_β
 plseq16_g10_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb1696_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred____2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb1696_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq16_g11_α
bb1696_α_nosol: jmp plseq16_g9_β
plseq16_g11_α:
 bb1360_α:
# BOX PL_CALL \=/2 (WAM-CP-5, n_args=2)
 mov edi, 56
 mov rsi, 2
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S22]
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
 je bb1360_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq16_g12_α
bb1360_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq16_g10_β
 plseq16_g11_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb1360_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred____2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb1360_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq16_g12_α
bb1360_α_nosol: jmp plseq16_g10_β
plseq16_g12_α:
 bb1024_α:
# BOX PL_CALL \=/2 (WAM-CP-5, n_args=2)
 mov edi, 56
 mov rsi, 3
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S20]
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
 je bb1024_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq16_g13_α
bb1024_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq16_g11_β
 plseq16_g12_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb1024_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred____2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb1024_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq16_g13_α
bb1024_α_nosol: jmp plseq16_g11_β
plseq16_g13_α:
 bb688_α:
# BOX PL_CALL \=/2 (WAM-CP-5, n_args=2)
 mov edi, 56
 mov rsi, 3
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S19]
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
 je bb688_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq16_g14_α
bb688_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq16_g12_β
 plseq16_g13_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb688_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred____2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb688_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq16_g14_α
bb688_α_nosol: jmp plseq16_g12_β
plseq16_g14_α:
 bb16_α:
# BOX PL_CALL cashier_manager_same_sex/5 (WAM-CP-5, n_args=5)
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
 mov edi, 56
 mov rsi, 2
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
 mov rsi, 4
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 21
 call pl_bb_env_save_push@PLT
 push rax
 mov rsi, [rsp + 8]
 mov edi, 4
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 16]
 mov edi, 3
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 24]
 mov edi, 2
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 32]
 mov edi, 1
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 40]
 mov edi, 0
 call pl_bb_bind_arg@PLT
 call .Lplpred_cashier_manager_same_sex_5
 pop rdi
 add rsp, 40
 call rt_last_ok@PLT
 test eax, eax
 je bb16_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq16_g15_α
bb16_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq16_g13_β
 plseq16_g14_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb16_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_cashier_manager_same_sex_5_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb16_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq16_g15_α
bb16_α_nosol: jmp plseq16_g13_β
plseq16_g15_α:
 bb99344_α:
# BOX PL_CALL clerk_cashier_opp/5 (WAM-CP-5, n_args=5)
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
 mov edi, 56
 mov rsi, 2
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
 mov rsi, 4
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 21
 call pl_bb_env_save_push@PLT
 push rax
 mov rsi, [rsp + 8]
 mov edi, 4
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 16]
 mov edi, 3
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 24]
 mov edi, 2
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 32]
 mov edi, 1
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 40]
 mov edi, 0
 call pl_bb_bind_arg@PLT
 call .Lplpred_clerk_cashier_opp_5
 pop rdi
 add rsp, 40
 call rt_last_ok@PLT
 test eax, eax
 je bb99344_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq16_g16_α
bb99344_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq16_g14_β
 plseq16_g15_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb99344_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_clerk_cashier_opp_5_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb99344_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq16_g16_α
bb99344_α_nosol: jmp plseq16_g14_β
plseq16_g16_α:
 bb98448_α:
# BOX PL_CALL \+/1 (WAM-CP-5, n_args=1)
 sub rsp, 16
 sub rsp, 16
 mov edi, 56
 mov rsi, 4
 xor edx, edx
 xor ecx, ecx
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S20]
 xor ecx, ecx
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S24]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 56
 mov rsi, 0
 xor edx, edx
 xor ecx, ecx
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S19]
 xor ecx, ecx
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S24]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S9]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_build_n@PLT
 add rsp, 16
 push rax
 mov edi, 17
 call pl_bb_env_save_push@PLT
 push rax
 mov rsi, [rsp + 8]
 mov edi, 0
 call pl_bb_bind_arg@PLT
 call .Lplpred____1
 pop rdi
 add rsp, 8
 call rt_last_ok@PLT
 test eax, eax
 je bb98448_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq16_g17_α
bb98448_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq16_g15_β
 plseq16_g16_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb98448_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred____1_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb98448_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq16_g17_α
bb98448_α_nosol: jmp plseq16_g15_β
plseq16_g17_α:
 bb97552_α:
# BOX PL_CALL \+/1 (WAM-CP-5, n_args=1)
 sub rsp, 16
 sub rsp, 16
 mov edi, 56
 mov rsi, 0
 xor edx, edx
 xor ecx, ecx
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S20]
 xor ecx, ecx
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S24]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 56
 mov rsi, 4
 xor edx, edx
 xor ecx, ecx
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S19]
 xor ecx, ecx
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S24]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S9]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_build_n@PLT
 add rsp, 16
 push rax
 mov edi, 17
 call pl_bb_env_save_push@PLT
 push rax
 mov rsi, [rsp + 8]
 mov edi, 0
 call pl_bb_bind_arg@PLT
 call .Lplpred____1
 pop rdi
 add rsp, 8
 call rt_last_ok@PLT
 test eax, eax
 je bb97552_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq16_g18_α
bb97552_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq16_g16_β
 plseq16_g17_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb97552_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred____1_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb97552_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq16_g18_α
bb97552_α_nosol: jmp plseq16_g16_β
plseq16_g18_α:
 bb97328_α:
 # BOX PL_BUILTIN(write/1)
 lea rcx, [rip + .S32]
 mov rdi, rcx
 call rt_pl_write_atom@PLT
 jmp plseq16_g19_α
plseq16_g18_β: jmp plseq16_g19_α
plseq16_g19_α:
 bb97104_α:
 # BOX PL_BUILTIN(write/1)
 mov edi, 0
 call rt_pl_write_var@PLT
 jmp plseq16_g20_α
plseq16_g19_β: jmp plseq16_g20_α
plseq16_g20_α:
 bb96880_α:
 # BOX PL_BUILTIN(write/1)
 lea rcx, [rip + .S31]
 mov rdi, rcx
 call rt_pl_write_atom@PLT
 jmp plseq16_g21_α
plseq16_g20_β: jmp plseq16_g21_α
plseq16_g21_α:
 bb96656_α:
 # BOX PL_BUILTIN(write/1)
 mov edi, 1
 call rt_pl_write_var@PLT
 jmp plseq16_g22_α
plseq16_g21_β: jmp plseq16_g22_α
plseq16_g22_α:
 bb96432_α:
 # BOX PL_BUILTIN(write/1)
 lea rcx, [rip + .S30]
 mov rdi, rcx
 call rt_pl_write_atom@PLT
 jmp plseq16_g23_α
plseq16_g22_β: jmp plseq16_g23_α
plseq16_g23_α:
 bb96208_α:
 # BOX PL_BUILTIN(write/1)
 mov edi, 2
 call rt_pl_write_var@PLT
 jmp plseq16_g24_α
plseq16_g23_β: jmp plseq16_g24_α
plseq16_g24_α:
 bb95984_α:
 # BOX PL_BUILTIN(write/1)
 lea rcx, [rip + .S29]
 mov rdi, rcx
 call rt_pl_write_atom@PLT
 jmp plseq16_g25_α
plseq16_g24_β: jmp plseq16_g25_α
plseq16_g25_α:
 bb95760_α:
 # BOX PL_BUILTIN(write/1)
 mov edi, 3
 call rt_pl_write_var@PLT
 jmp plseq16_g26_α
plseq16_g25_β: jmp plseq16_g26_α
plseq16_g26_α:
 bb95536_α:
 # BOX PL_BUILTIN(write/1)
 lea rcx, [rip + .S28]
 mov rdi, rcx
 call rt_pl_write_atom@PLT
 jmp plseq16_g27_α
plseq16_g26_β: jmp plseq16_g27_α
plseq16_g27_α:
 bb95312_α:
 # BOX PL_BUILTIN(write/1)
 mov edi, 4
 call rt_pl_write_var@PLT
 jmp plseq16_g28_α
plseq16_g27_β: jmp plseq16_g28_α
plseq16_g28_α:
 bb95088_α:
 # BOX PL_BUILTIN(write/1)
 lea rcx, [rip + .S27]
 mov rdi, rcx
 call rt_pl_write_atom@PLT
 jmp plseq16_g29_α
plseq16_g28_β: jmp plseq16_g29_α
plseq16_g29_α:
 bb94976_α:
# BOX FAIL()
 jmp plseq16_g17_β
plseq16_g29_β: jmp plseq16_g17_β
.Lplpb15_β:
 jmp plseq16_g17_β
.Lplpb15_γ: 
 mov rdi, 1
 call rt_set_last_ok@PLT
 ret
.Lplpb15_ω: 
 mov rdi, 0
 call rt_set_last_ok@PLT
 ret
.Lplpred_puzzle_0_redo: jmp .Lplpb15_β
# PL CALLEE BLOCK cashier_manager_same_sex/5/5
.intel_syntax noprefix
.Lplpred_cashier_manager_same_sex_5: 
# env push/pop handled by caller (bb_pl_call site)
# redo entry: .Lplpred_cashier_manager_same_sex_5_redo
plseq18_g0_α:
 bb10656_α:
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
 je .Lplpb17_ω
 jmp plseq18_g1_α
plseq18_g0_β: jmp .Lplpb17_ω
plseq18_g1_α:
 bb10320_α:
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
 je .Lplpb17_ω
 jmp plseq18_g2_α
plseq18_g1_β: jmp .Lplpb17_ω
plseq18_g2_α:
 bb9984_α:
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
 je .Lplpb17_ω
 jmp plseq18_g3_α
plseq18_g2_β: jmp .Lplpb17_ω
plseq18_g3_α:
 bb9648_α:
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
 je .Lplpb17_ω
 jmp plseq18_g4_α
plseq18_g3_β: jmp .Lplpb17_ω
plseq18_g4_α:
 bb9312_α:
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
 je .Lplpb17_ω
 jmp plseq18_g5_α
plseq18_g4_β: jmp .Lplpb17_ω
plseq18_g5_α:
 bb8192_α:
# BOX PL_CALL holder_sex/7 (WAM-CP-5, n_args=7)
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S19]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
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
 mov edi, 56
 mov rsi, 2
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
 mov edi, 23
 call pl_bb_env_save_push@PLT
 push rax
 mov rsi, [rsp + 8]
 mov edi, 6
 call pl_bb_bind_arg@PLT
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
 call .Lplpred_holder_sex_7
 pop rdi
 add rsp, 56
 call rt_last_ok@PLT
 test eax, eax
 je bb8192_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq18_g6_α
bb8192_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp .Lplpb17_ω
 plseq18_g5_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb8192_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_holder_sex_7_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb8192_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq18_g6_α
bb8192_α_nosol: jmp .Lplpb17_ω
plseq18_g6_α:
 bb7296_α:
# BOX PL_CALL holder_sex/7 (WAM-CP-5, n_args=7)
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S22]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
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
 mov edi, 56
 mov rsi, 2
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
 mov rsi, 4
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 56
 mov rsi, 6
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 23
 call pl_bb_env_save_push@PLT
 push rax
 mov rsi, [rsp + 8]
 mov edi, 6
 call pl_bb_bind_arg@PLT
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
 call .Lplpred_holder_sex_7
 pop rdi
 add rsp, 56
 call rt_last_ok@PLT
 test eax, eax
 je bb7296_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq18_g7_α
bb7296_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq18_g5_β
 plseq18_g6_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb7296_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_holder_sex_7_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb7296_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq18_g7_α
bb7296_α_nosol: jmp plseq18_g5_β
plseq18_g7_α:
 bb7184_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 5
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 6
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je plseq18_g6_β
 jmp .Lplpb17_γ
plseq18_g7_β: jmp plseq18_g6_β
.Lplpb17_β:
 jmp plseq18_g6_β
.Lplpb17_γ: 
 mov rdi, 1
 call rt_set_last_ok@PLT
 ret
.Lplpb17_ω: 
 mov rdi, 0
 call rt_set_last_ok@PLT
 ret
.Lplpred_cashier_manager_same_sex_5_redo: jmp .Lplpb17_β
# PL CALLEE BLOCK all_diff5/5/5
.intel_syntax noprefix
.Lplpred_all_diff5_5: 
# env push/pop handled by caller (bb_pl_call site)
# redo entry: .Lplpred_all_diff5_5_redo
plseq20_g0_α:
 bb17440_α:
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
 je .Lplpb19_ω
 jmp plseq20_g1_α
plseq20_g0_β: jmp .Lplpb19_ω
plseq20_g1_α:
 bb17104_α:
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
 je .Lplpb19_ω
 jmp plseq20_g2_α
plseq20_g1_β: jmp .Lplpb19_ω
plseq20_g2_α:
 bb16768_α:
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
 je .Lplpb19_ω
 jmp plseq20_g3_α
plseq20_g2_β: jmp .Lplpb19_ω
plseq20_g3_α:
 bb16432_α:
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
 je .Lplpb19_ω
 jmp plseq20_g4_α
plseq20_g3_β: jmp .Lplpb19_ω
plseq20_g4_α:
 bb16096_α:
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
 je .Lplpb19_ω
 jmp plseq20_g5_α
plseq20_g4_β: jmp .Lplpb19_ω
plseq20_g5_α:
 bb15536_α:
# BOX PL_CALL \=/2 (WAM-CP-5, n_args=2)
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
 call .Lplpred____2
 add rsp, 8
 pop rdi
 add rsp, 16
 call rt_last_ok@PLT
 test eax, eax
 je bb15536_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq20_g6_α
bb15536_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp .Lplpb19_ω
 plseq20_g5_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb15536_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred____2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb15536_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq20_g6_α
bb15536_α_nosol: jmp .Lplpb19_ω
plseq20_g6_α:
 bb15200_α:
# BOX PL_CALL \=/2 (WAM-CP-5, n_args=2)
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
 call .Lplpred____2
 add rsp, 8
 pop rdi
 add rsp, 16
 call rt_last_ok@PLT
 test eax, eax
 je bb15200_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq20_g7_α
bb15200_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq20_g5_β
 plseq20_g6_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb15200_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred____2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb15200_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq20_g7_α
bb15200_α_nosol: jmp plseq20_g5_β
plseq20_g7_α:
 bb14864_α:
# BOX PL_CALL \=/2 (WAM-CP-5, n_args=2)
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
 call .Lplpred____2
 add rsp, 8
 pop rdi
 add rsp, 16
 call rt_last_ok@PLT
 test eax, eax
 je bb14864_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq20_g8_α
bb14864_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq20_g6_β
 plseq20_g7_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb14864_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred____2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb14864_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq20_g8_α
bb14864_α_nosol: jmp plseq20_g6_β
plseq20_g8_α:
 bb14528_α:
# BOX PL_CALL \=/2 (WAM-CP-5, n_args=2)
 mov edi, 56
 mov rsi, 0
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
 call .Lplpred____2
 add rsp, 8
 pop rdi
 add rsp, 16
 call rt_last_ok@PLT
 test eax, eax
 je bb14528_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq20_g9_α
bb14528_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq20_g7_β
 plseq20_g8_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb14528_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred____2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb14528_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq20_g9_α
bb14528_α_nosol: jmp plseq20_g7_β
plseq20_g9_α:
 bb14192_α:
# BOX PL_CALL \=/2 (WAM-CP-5, n_args=2)
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
 call .Lplpred____2
 add rsp, 8
 pop rdi
 add rsp, 16
 call rt_last_ok@PLT
 test eax, eax
 je bb14192_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq20_g10_α
bb14192_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq20_g8_β
 plseq20_g9_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb14192_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred____2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb14192_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq20_g10_α
bb14192_α_nosol: jmp plseq20_g8_β
plseq20_g10_α:
 bb13856_α:
# BOX PL_CALL \=/2 (WAM-CP-5, n_args=2)
 mov edi, 56
 mov rsi, 1
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
 call .Lplpred____2
 add rsp, 8
 pop rdi
 add rsp, 16
 call rt_last_ok@PLT
 test eax, eax
 je bb13856_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq20_g11_α
bb13856_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq20_g9_β
 plseq20_g10_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb13856_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred____2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb13856_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq20_g11_α
bb13856_α_nosol: jmp plseq20_g9_β
plseq20_g11_α:
 bb13520_α:
# BOX PL_CALL \=/2 (WAM-CP-5, n_args=2)
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
 je bb13520_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq20_g12_α
bb13520_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq20_g10_β
 plseq20_g11_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb13520_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred____2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb13520_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq20_g12_α
bb13520_α_nosol: jmp plseq20_g10_β
plseq20_g12_α:
 bb13184_α:
# BOX PL_CALL \=/2 (WAM-CP-5, n_args=2)
 mov edi, 56
 mov rsi, 2
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
 call .Lplpred____2
 add rsp, 8
 pop rdi
 add rsp, 16
 call rt_last_ok@PLT
 test eax, eax
 je bb13184_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq20_g13_α
bb13184_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq20_g11_β
 plseq20_g12_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb13184_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred____2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb13184_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq20_g13_α
bb13184_α_nosol: jmp plseq20_g11_β
plseq20_g13_α:
 bb12848_α:
# BOX PL_CALL \=/2 (WAM-CP-5, n_args=2)
 mov edi, 56
 mov rsi, 2
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
 call .Lplpred____2
 add rsp, 8
 pop rdi
 add rsp, 16
 call rt_last_ok@PLT
 test eax, eax
 je bb12848_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq20_g14_α
bb12848_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq20_g12_β
 plseq20_g13_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb12848_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred____2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb12848_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq20_g14_α
bb12848_α_nosol: jmp plseq20_g12_β
plseq20_g14_α:
 bb6848_α:
# BOX PL_CALL \=/2 (WAM-CP-5, n_args=2)
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
 call .Lplpred____2
 add rsp, 8
 pop rdi
 add rsp, 16
 call rt_last_ok@PLT
 test eax, eax
 je bb6848_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp .Lplpb19_γ
bb6848_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq20_g13_β
 plseq20_g14_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb6848_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred____2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb6848_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp .Lplpb19_γ
bb6848_α_nosol: jmp plseq20_g13_β
.Lplpb19_β:
 jmp plseq20_g14_β
.Lplpb19_γ: 
 mov rdi, 1
 call rt_set_last_ok@PLT
 ret
.Lplpb19_ω: 
 mov rdi, 0
 call rt_set_last_ok@PLT
 ret
.Lplpred_all_diff5_5_redo: jmp .Lplpb19_β
# PL CALLEE BLOCK clerk_cashier_opp/5/5
.intel_syntax noprefix
.Lplpred_clerk_cashier_opp_5: 
# env push/pop handled by caller (bb_pl_call site)
# redo entry: .Lplpred_clerk_cashier_opp_5_redo
plseq22_g0_α:
 bb23040_α:
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
 je .Lplpb21_ω
 jmp plseq22_g1_α
plseq22_g0_β: jmp .Lplpb21_ω
plseq22_g1_α:
 bb22704_α:
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
 je .Lplpb21_ω
 jmp plseq22_g2_α
plseq22_g1_β: jmp .Lplpb21_ω
plseq22_g2_α:
 bb22368_α:
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
 je .Lplpb21_ω
 jmp plseq22_g3_α
plseq22_g2_β: jmp .Lplpb21_ω
plseq22_g3_α:
 bb22032_α:
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
 je .Lplpb21_ω
 jmp plseq22_g4_α
plseq22_g3_β: jmp .Lplpb21_ω
plseq22_g4_α:
 bb21696_α:
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
 je .Lplpb21_ω
 jmp plseq22_g5_α
plseq22_g4_β: jmp .Lplpb21_ω
plseq22_g5_α:
 bb20576_α:
# BOX PL_CALL holder_sex/7 (WAM-CP-5, n_args=7)
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S20]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
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
 mov edi, 56
 mov rsi, 2
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
 mov edi, 23
 call pl_bb_env_save_push@PLT
 push rax
 mov rsi, [rsp + 8]
 mov edi, 6
 call pl_bb_bind_arg@PLT
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
 call .Lplpred_holder_sex_7
 pop rdi
 add rsp, 56
 call rt_last_ok@PLT
 test eax, eax
 je bb20576_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq22_g6_α
bb20576_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp .Lplpb21_ω
 plseq22_g5_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb20576_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_holder_sex_7_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb20576_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq22_g6_α
bb20576_α_nosol: jmp .Lplpb21_ω
plseq22_g6_α:
 bb19680_α:
# BOX PL_CALL holder_sex/7 (WAM-CP-5, n_args=7)
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S19]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
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
 mov edi, 56
 mov rsi, 2
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
 mov rsi, 4
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 56
 mov rsi, 6
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 23
 call pl_bb_env_save_push@PLT
 push rax
 mov rsi, [rsp + 8]
 mov edi, 6
 call pl_bb_bind_arg@PLT
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
 call .Lplpred_holder_sex_7
 pop rdi
 add rsp, 56
 call rt_last_ok@PLT
 test eax, eax
 je bb19680_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq22_g7_α
bb19680_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq22_g5_β
 plseq22_g6_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb19680_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_holder_sex_7_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb19680_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq22_g7_α
bb19680_α_nosol: jmp plseq22_g5_β
plseq22_g7_α:
 bb19344_α:
# BOX PL_CALL \=/2 (WAM-CP-5, n_args=2)
 mov edi, 56
 mov rsi, 5
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 56
 mov rsi, 6
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
 call .Lplpred____2
 add rsp, 8
 pop rdi
 add rsp, 16
 call rt_last_ok@PLT
 test eax, eax
 je bb19344_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp .Lplpb21_γ
bb19344_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq22_g6_β
 plseq22_g7_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb19344_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred____2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb19344_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp .Lplpb21_γ
bb19344_α_nosol: jmp plseq22_g6_β
.Lplpb21_β:
 jmp plseq22_g7_β
.Lplpb21_γ: 
 mov rdi, 1
 call rt_set_last_ok@PLT
 ret
.Lplpb21_ω: 
 mov rdi, 0
 call rt_set_last_ok@PLT
 ret
.Lplpred_clerk_cashier_opp_5_redo: jmp .Lplpb21_β
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
