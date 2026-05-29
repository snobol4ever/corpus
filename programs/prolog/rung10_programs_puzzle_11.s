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
.S0: .string "position/1"
.S1: .string "puzzle/0"
.S2: .string "blood/2"
.S3: .string "age/1"
.S4: .string "all_diff5/5"
.S5: .string "blood_pair/7"
.S6: .string "main/0"
.S7: .string "ages_ok/5"
.S8: .string "pos_age/12"
.S9: .string "person_pos/7"
.S10: .string "("
.S11: .string ","
.S12: .string ")"
.S13: .string "grocer"
.S14: .string "lawyer"
.S15: .string "postmaster"
.S16: .string "preacher"
.S17: .string "teacher"
.S18: .string "write"
.S19: .string "\n"
.S20: .string " Father="
.S21: .string " Sister="
.S22: .string " Son="
.S23: .string " MrsSmith="
.S24: .string "MrSmith="
.S25: .string "ages_ok"
.S26: .string "\\+"
.S27: .string "blood_pair"
.S28: .string "all_diff5"
.S29: .string "position"
.S30: .string "son"
.S31: .string "mr_smith"
.S32: .string "sister"
.S33: .string "father"
.S34: .string "mrs_smith"
.S35: .string "\\="
.S36: .string "blood"
.S37: .string "person_pos"
.S38: .string "puzzle"
.S39: .string ">"
.S40: .string "<"
.S41: .string "pos_age"
.S42: .string "age"
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
.Lsub_position_1:
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
.Lsub_blood_2:
 LABEL
.L10:
 RETURN
.L11:
 LABEL
 JUMP .L15
.Lsub_age_1:
 LABEL
.L14:
 RETURN
.L15:
 LABEL
 JUMP .L19
.Lsub_all_diff5_5:
 LABEL
.L18:
 RETURN
.L19:
 LABEL
 JUMP .L23
.Lsub_blood_pair_7:
 LABEL
.L22:
 RETURN
.L23:
 LABEL
 JUMP .L27
.Lsub_main_0:
 LABEL
.L26:
 RETURN
.L27:
 LABEL
 JUMP .L31
.Lsub_ages_ok_5:
 LABEL
.L30:
 RETURN
.L31:
 LABEL
 JUMP .L35
.Lsub_pos_age_12:
 LABEL
.L34:
 RETURN
.L35:
 LABEL
 JUMP .L39
.Lsub_person_pos_7:
 LABEL
.L38:
 RETURN
.L39:
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
 bb24464_α:
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
 bb24352_α:
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
 je bb24352_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp .Lplent0_γ
bb24352_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp .Lplch1_c1_pre
 .Lplch1_c0_beta:
 call pl_cp_current@PLT
 test rax, rax
 je bb24352_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_puzzle_0_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb24352_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp .Lplent0_γ
bb24352_α_nosol: jmp .Lplch1_c1_pre
.Lplch1_c1_body:
 bb24240_α:
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
# PL CALLEE BLOCK position/1/1
.intel_syntax noprefix
.Lplpred_position_1: 
# env push/pop handled by caller (bb_pl_call site)
# redo entry: .Lplpred_position_1_redo
 bb58128_α:
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
 bb59952_α:
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
 jmp .Lplch4_exit_γ
.Lplch4_c0_beta: jmp .Lplpb3_β
.Lplch4_c1_body:
 bb61888_α:
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
.Lplch4_c1_beta: jmp .Lplpb3_β
.Lplch4_c2_body:
 bb63792_α:
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
 jmp .Lplch4_exit_γ
.Lplch4_c2_beta: jmp .Lplpb3_β
.Lplch4_c3_body:
 bb65600_α:
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
 jmp .Lplch4_exit_γ
.Lplch4_c3_beta: jmp .Lplpb3_β
.Lplch4_c4_body:
 bb67408_α:
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
 jmp .Lplch4_exit_γ
.Lplch4_c4_beta: jmp .Lplpb3_β
.Lplpb3_γ: 
 mov rdi, 1
 call rt_set_last_ok@PLT
 ret
.Lplpb3_ω: 
 mov rdi, 0
 call rt_set_last_ok@PLT
 ret
.Lplpred_position_1_redo: jmp .Lplpb3_β
# PL CALLEE BLOCK puzzle/0/0
.intel_syntax noprefix
.Lplpred_puzzle_0: 
# env push/pop handled by caller (bb_pl_call site)
# redo entry: .Lplpred_puzzle_0_redo
plseq6_g0_α:
 bb76592_α:
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
 je bb76592_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq6_g1_α
bb76592_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp .Lplpb5_ω
 plseq6_g0_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb76592_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_position_1_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb76592_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq6_g1_α
bb76592_α_nosol: jmp .Lplpb5_ω
plseq6_g1_α:
 bb76368_α:
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
 je bb76368_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq6_g2_α
bb76368_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq6_g0_β
 plseq6_g1_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb76368_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_position_1_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb76368_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq6_g2_α
bb76368_α_nosol: jmp plseq6_g0_β
plseq6_g2_α:
 bb76144_α:
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
 je bb76144_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq6_g3_α
bb76144_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq6_g1_β
 plseq6_g2_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb76144_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_position_1_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb76144_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq6_g3_α
bb76144_α_nosol: jmp plseq6_g1_β
plseq6_g3_α:
 bb75920_α:
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
 je bb75920_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq6_g4_α
bb75920_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq6_g2_β
 plseq6_g3_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb75920_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_position_1_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb75920_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq6_g4_α
bb75920_α_nosol: jmp plseq6_g2_β
plseq6_g4_α:
 bb75696_α:
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
 je bb75696_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq6_g5_α
bb75696_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq6_g3_β
 plseq6_g4_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb75696_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_position_1_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb75696_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq6_g5_α
bb75696_α_nosol: jmp plseq6_g3_β
plseq6_g5_α:
 bb75024_α:
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
 je bb75024_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq6_g6_α
bb75024_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq6_g4_β
 plseq6_g5_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb75024_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_all_diff5_5_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb75024_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq6_g6_α
bb75024_α_nosol: jmp plseq6_g4_β
plseq6_g6_α:
 bb74912_α:
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
 je plseq6_g5_β
 jmp plseq6_g7_α
plseq6_g6_β: jmp plseq6_g5_β
plseq6_g7_α:
 bb74576_α:
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
 lea rdx, [rip + .S16]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je plseq6_g5_β
 jmp plseq6_g8_α
plseq6_g7_β: jmp plseq6_g5_β
plseq6_g8_α:
 bb74240_α:
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
 je plseq6_g5_β
 jmp plseq6_g9_α
plseq6_g8_β: jmp plseq6_g5_β
plseq6_g9_α:
 bb73008_α:
# BOX PL_CALL \+/1 (WAM-CP-5, n_args=1)
 sub rsp, 64
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S14]
 xor ecx, ecx
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S17]
 xor ecx, ecx
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 8], rax
 mov edi, 56
 mov rsi, 0
 xor edx, edx
 xor ecx, ecx
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 16], rax
 mov edi, 56
 mov rsi, 1
 xor edx, edx
 xor ecx, ecx
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 24], rax
 mov edi, 56
 mov rsi, 2
 xor edx, edx
 xor ecx, ecx
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 32], rax
 mov edi, 56
 mov rsi, 3
 xor edx, edx
 xor ecx, ecx
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 40], rax
 mov edi, 56
 mov rsi, 4
 xor edx, edx
 xor ecx, ecx
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 48], rax
 lea rdi, [rip + .S27]
 mov esi, 7
 mov rdx, rsp
 call rt_pl_compound_build_n@PLT
 add rsp, 64
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
 je bb73008_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq6_g10_α
bb73008_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq6_g5_β
 plseq6_g9_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb73008_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred____1_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb73008_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq6_g10_α
bb73008_α_nosol: jmp plseq6_g5_β
plseq6_g10_α:
 bb72336_α:
# BOX PL_CALL ages_ok/5 (WAM-CP-5, n_args=5)
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
 call .Lplpred_ages_ok_5
 pop rdi
 add rsp, 40
 call rt_last_ok@PLT
 test eax, eax
 je bb72336_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq6_g11_α
bb72336_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq6_g9_β
 plseq6_g10_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb72336_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_ages_ok_5_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb72336_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq6_g11_α
bb72336_α_nosol: jmp plseq6_g9_β
plseq6_g11_α:
 bb72112_α:
 # BOX PL_BUILTIN(write/1)
 lea rcx, [rip + .S24]
 mov rdi, rcx
 call rt_pl_write_atom@PLT
 jmp plseq6_g12_α
plseq6_g11_β: jmp plseq6_g12_α
plseq6_g12_α:
 bb71888_α:
 # BOX PL_BUILTIN(write/1)
 mov edi, 0
 call rt_pl_write_var@PLT
 jmp plseq6_g13_α
plseq6_g12_β: jmp plseq6_g13_α
plseq6_g13_α:
 bb71664_α:
 # BOX PL_BUILTIN(write/1)
 lea rcx, [rip + .S23]
 mov rdi, rcx
 call rt_pl_write_atom@PLT
 jmp plseq6_g14_α
plseq6_g13_β: jmp plseq6_g14_α
plseq6_g14_α:
 bb71440_α:
 # BOX PL_BUILTIN(write/1)
 mov edi, 1
 call rt_pl_write_var@PLT
 jmp plseq6_g15_α
plseq6_g14_β: jmp plseq6_g15_α
plseq6_g15_α:
 bb71216_α:
 # BOX PL_BUILTIN(write/1)
 lea rcx, [rip + .S22]
 mov rdi, rcx
 call rt_pl_write_atom@PLT
 jmp plseq6_g16_α
plseq6_g15_β: jmp plseq6_g16_α
plseq6_g16_α:
 bb70992_α:
 # BOX PL_BUILTIN(write/1)
 mov edi, 2
 call rt_pl_write_var@PLT
 jmp plseq6_g17_α
plseq6_g16_β: jmp plseq6_g17_α
plseq6_g17_α:
 bb70768_α:
 # BOX PL_BUILTIN(write/1)
 lea rcx, [rip + .S21]
 mov rdi, rcx
 call rt_pl_write_atom@PLT
 jmp plseq6_g18_α
plseq6_g17_β: jmp plseq6_g18_α
plseq6_g18_α:
 bb70544_α:
 # BOX PL_BUILTIN(write/1)
 mov edi, 3
 call rt_pl_write_var@PLT
 jmp plseq6_g19_α
plseq6_g18_β: jmp plseq6_g19_α
plseq6_g19_α:
 bb70320_α:
 # BOX PL_BUILTIN(write/1)
 lea rcx, [rip + .S20]
 mov rdi, rcx
 call rt_pl_write_atom@PLT
 jmp plseq6_g20_α
plseq6_g19_β: jmp plseq6_g20_α
plseq6_g20_α:
 bb70096_α:
 # BOX PL_BUILTIN(write/1)
 mov edi, 4
 call rt_pl_write_var@PLT
 jmp plseq6_g21_α
plseq6_g20_β: jmp plseq6_g21_α
plseq6_g21_α:
 bb69872_α:
 # BOX PL_BUILTIN(write/1)
 lea rcx, [rip + .S19]
 mov rdi, rcx
 call rt_pl_write_atom@PLT
 jmp plseq6_g22_α
plseq6_g21_β: jmp plseq6_g22_α
plseq6_g22_α:
 bb69760_α:
# BOX FAIL()
 jmp plseq6_g10_β
plseq6_g22_β: jmp plseq6_g10_β
.Lplpb5_β:
 jmp plseq6_g10_β
.Lplpb5_γ: 
 mov rdi, 1
 call rt_set_last_ok@PLT
 ret
.Lplpb5_ω: 
 mov rdi, 0
 call rt_set_last_ok@PLT
 ret
.Lplpred_puzzle_0_redo: jmp .Lplpb5_β
# PL CALLEE BLOCK blood/2/2
.intel_syntax noprefix
.Lplpred_blood_2: 
# env push/pop handled by caller (bb_pl_call site)
# redo entry: .Lplpred_blood_2_redo
 bb77776_α:
# BOX PL_CHOICE n=10 (WAM-CP-5 heap cursor, WAM-CP-9 cut)
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
 .Lplch8_dispatch:
 call pl_cp_current@PLT
 mov edi, [rax + 48]
 cmp edi, 10
 jge .Lplch8_exhausted
 cmp edi, 0
 je .Lplch8_c0_pre
 cmp edi, 1
 je .Lplch8_c1_pre
 cmp edi, 2
 je .Lplch8_c2_pre
 cmp edi, 3
 je .Lplch8_c3_pre
 cmp edi, 4
 je .Lplch8_c4_pre
 cmp edi, 5
 je .Lplch8_c5_pre
 cmp edi, 6
 je .Lplch8_c6_pre
 cmp edi, 7
 je .Lplch8_c7_pre
 cmp edi, 8
 je .Lplch8_c8_pre
 cmp edi, 9
 je .Lplch8_c9_pre
 jmp .Lplch8_exhausted
 .Lplch8_c0_pre:
 call pl_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch8_c0_body
 .Lplch8_c1_pre:
 call pl_cp_current@PLT
 mov edi, [rax + 16]
 call rt_pl_trail_unwind@PLT
 call pl_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch8_c1_body
 .Lplch8_c2_pre:
 call pl_cp_current@PLT
 mov edi, [rax + 16]
 call rt_pl_trail_unwind@PLT
 call pl_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch8_c2_body
 .Lplch8_c3_pre:
 call pl_cp_current@PLT
 mov edi, [rax + 16]
 call rt_pl_trail_unwind@PLT
 call pl_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch8_c3_body
 .Lplch8_c4_pre:
 call pl_cp_current@PLT
 mov edi, [rax + 16]
 call rt_pl_trail_unwind@PLT
 call pl_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch8_c4_body
 .Lplch8_c5_pre:
 call pl_cp_current@PLT
 mov edi, [rax + 16]
 call rt_pl_trail_unwind@PLT
 call pl_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch8_c5_body
 .Lplch8_c6_pre:
 call pl_cp_current@PLT
 mov edi, [rax + 16]
 call rt_pl_trail_unwind@PLT
 call pl_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch8_c6_body
 .Lplch8_c7_pre:
 call pl_cp_current@PLT
 mov edi, [rax + 16]
 call rt_pl_trail_unwind@PLT
 call pl_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch8_c7_body
 .Lplch8_c8_pre:
 call pl_cp_current@PLT
 mov edi, [rax + 16]
 call rt_pl_trail_unwind@PLT
 call pl_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch8_c8_body
 .Lplch8_c9_pre:
 call pl_cp_current@PLT
 mov edi, [rax + 16]
 call rt_pl_trail_unwind@PLT
 call pl_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch8_c9_body
 .Lplch8_exit_γ:
 call rt_pl_get_cut_flag@PLT
 test eax, eax
 jnz .Lplch8_cut_γ
 call pl_cp_current@PLT
 mov rdi, rax
 call rt_pl_choice_cut_exit@PLT
 jmp .Lplpb7_γ
 .Lplch8_cut_γ:
 call pl_cp_current@PLT
 mov rdi, rax
 call rt_pl_choice_cut_unwind@PLT
 jmp .Lplpb7_γ
 .Lplch8_cut_ω:
 call pl_cp_current@PLT
 mov rdi, rax
 call rt_pl_choice_cut_unwind@PLT
 jmp .Lplpb7_ω
 .Lplch8_exhausted:
 call pl_cp_current@PLT
 mov rdi, rax
 call rt_pl_choice_cut_exit@PLT
 call pl_cp_current@PLT
 mov edi, [rax + 16]
 call rt_pl_trail_unwind@PLT
 call pl_cp_pop@PLT
 jmp .Lplpb7_ω
 .Lplpb7_β:
 call rt_pl_get_cut_flag@PLT
 test eax, eax
 jnz .Lplch8_cut_ω
 call pl_cp_current@PLT
 test rax, rax
 je .Lplch8_β_nosol
 mov rdi, rax
 call rt_pl_choice_cut_enter@PLT
 jmp .Lplch8_dispatch
.Lplch8_β_nosol: jmp .Lplpb7_ω
.Lplch8_c0_body:
plseq9_g0_α:
 bb79808_α:
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
 lea rdx, [rip + .S31]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb7_β
 jmp plseq9_g1_α
plseq9_g0_β: jmp .Lplpb7_β
plseq9_g1_α:
 bb79472_α:
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
 lea rdx, [rip + .S30]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb7_β
 jmp .Lplch8_exit_γ
plseq9_g1_β: jmp .Lplpb7_β
.Lplch8_c0_beta:
 jmp .Lplpb7_β
.Lplch8_c1_body:
plseq10_g0_α:
 bb82080_α:
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
 lea rdx, [rip + .S30]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb7_β
 jmp plseq10_g1_α
plseq10_g0_β: jmp .Lplpb7_β
plseq10_g1_α:
 bb81744_α:
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
 lea rdx, [rip + .S31]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb7_β
 jmp .Lplch8_exit_γ
plseq10_g1_β: jmp .Lplpb7_β
.Lplch8_c1_beta:
 jmp .Lplpb7_β
.Lplch8_c2_body:
plseq11_g0_α:
 bb84224_α:
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
 lea rdx, [rip + .S31]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb7_β
 jmp plseq11_g1_α
plseq11_g0_β: jmp .Lplpb7_β
plseq11_g1_α:
 bb83888_α:
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
 lea rdx, [rip + .S32]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb7_β
 jmp .Lplch8_exit_γ
plseq11_g1_β: jmp .Lplpb7_β
.Lplch8_c2_beta:
 jmp .Lplpb7_β
.Lplch8_c3_body:
plseq12_g0_α:
 bb86368_α:
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
 lea rdx, [rip + .S32]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb7_β
 jmp plseq12_g1_α
plseq12_g0_β: jmp .Lplpb7_β
plseq12_g1_α:
 bb86032_α:
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
 lea rdx, [rip + .S31]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb7_β
 jmp .Lplch8_exit_γ
plseq12_g1_β: jmp .Lplpb7_β
.Lplch8_c3_beta:
 jmp .Lplpb7_β
.Lplch8_c4_body:
plseq13_g0_α:
 bb88512_α:
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
 lea rdx, [rip + .S34]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb7_β
 jmp plseq13_g1_α
plseq13_g0_β: jmp .Lplpb7_β
plseq13_g1_α:
 bb88176_α:
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
 lea rdx, [rip + .S33]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb7_β
 jmp .Lplch8_exit_γ
plseq13_g1_β: jmp .Lplpb7_β
.Lplch8_c4_beta:
 jmp .Lplpb7_β
.Lplch8_c5_body:
plseq14_g0_α:
 bb90656_α:
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
 lea rdx, [rip + .S33]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb7_β
 jmp plseq14_g1_α
plseq14_g0_β: jmp .Lplpb7_β
plseq14_g1_α:
 bb90320_α:
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
 lea rdx, [rip + .S34]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb7_β
 jmp .Lplch8_exit_γ
plseq14_g1_β: jmp .Lplpb7_β
.Lplch8_c5_beta:
 jmp .Lplpb7_β
.Lplch8_c6_body:
plseq15_g0_α:
 bb92800_α:
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
 lea rdx, [rip + .S30]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb7_β
 jmp plseq15_g1_α
plseq15_g0_β: jmp .Lplpb7_β
plseq15_g1_α:
 bb92464_α:
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
 lea rdx, [rip + .S32]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb7_β
 jmp .Lplch8_exit_γ
plseq15_g1_β: jmp .Lplpb7_β
.Lplch8_c6_beta:
 jmp .Lplpb7_β
.Lplch8_c7_body:
plseq16_g0_α:
 bb94944_α:
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
 lea rdx, [rip + .S32]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb7_β
 jmp plseq16_g1_α
plseq16_g0_β: jmp .Lplpb7_β
plseq16_g1_α:
 bb94608_α:
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
 lea rdx, [rip + .S30]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb7_β
 jmp .Lplch8_exit_γ
plseq16_g1_β: jmp .Lplpb7_β
.Lplch8_c7_beta:
 jmp .Lplpb7_β
.Lplch8_c8_body:
plseq17_g0_α:
 bb97088_α:
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
 lea rdx, [rip + .S30]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb7_β
 jmp plseq17_g1_α
plseq17_g0_β: jmp .Lplpb7_β
plseq17_g1_α:
 bb96752_α:
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
 lea rdx, [rip + .S33]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb7_β
 jmp .Lplch8_exit_γ
plseq17_g1_β: jmp .Lplpb7_β
.Lplch8_c8_beta:
 jmp .Lplpb7_β
.Lplch8_c9_body:
plseq18_g0_α:
 bb99232_α:
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
 lea rdx, [rip + .S33]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb7_β
 jmp plseq18_g1_α
plseq18_g0_β: jmp .Lplpb7_β
plseq18_g1_α:
 bb98896_α:
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
 lea rdx, [rip + .S30]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb7_β
 jmp .Lplch8_exit_γ
plseq18_g1_β: jmp .Lplpb7_β
.Lplch8_c9_beta:
 jmp .Lplpb7_β
.Lplpb7_γ: 
 mov rdi, 1
 call rt_set_last_ok@PLT
 ret
.Lplpb7_ω: 
 mov rdi, 0
 call rt_set_last_ok@PLT
 ret
.Lplpred_blood_2_redo: jmp .Lplpb7_β
# PL CALLEE BLOCK age/1/1
.intel_syntax noprefix
.Lplpred_age_1: 
# env push/pop handled by caller (bb_pl_call site)
# redo entry: .Lplpred_age_1_redo
 bb304_α:
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
 .Lplch20_dispatch:
 call pl_cp_current@PLT
 mov edi, [rax + 48]
 cmp edi, 5
 jge .Lplch20_exhausted
 cmp edi, 0
 je .Lplch20_c0_pre
 cmp edi, 1
 je .Lplch20_c1_pre
 cmp edi, 2
 je .Lplch20_c2_pre
 cmp edi, 3
 je .Lplch20_c3_pre
 cmp edi, 4
 je .Lplch20_c4_pre
 jmp .Lplch20_exhausted
 .Lplch20_c0_pre:
 call pl_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch20_c0_body
 .Lplch20_c1_pre:
 call pl_cp_current@PLT
 mov edi, [rax + 16]
 call rt_pl_trail_unwind@PLT
 call pl_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch20_c1_body
 .Lplch20_c2_pre:
 call pl_cp_current@PLT
 mov edi, [rax + 16]
 call rt_pl_trail_unwind@PLT
 call pl_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch20_c2_body
 .Lplch20_c3_pre:
 call pl_cp_current@PLT
 mov edi, [rax + 16]
 call rt_pl_trail_unwind@PLT
 call pl_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch20_c3_body
 .Lplch20_c4_pre:
 call pl_cp_current@PLT
 mov edi, [rax + 16]
 call rt_pl_trail_unwind@PLT
 call pl_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch20_c4_body
 .Lplch20_exit_γ:
 call rt_pl_get_cut_flag@PLT
 test eax, eax
 jnz .Lplch20_cut_γ
 call pl_cp_current@PLT
 mov rdi, rax
 call rt_pl_choice_cut_exit@PLT
 jmp .Lplpb19_γ
 .Lplch20_cut_γ:
 call pl_cp_current@PLT
 mov rdi, rax
 call rt_pl_choice_cut_unwind@PLT
 jmp .Lplpb19_γ
 .Lplch20_cut_ω:
 call pl_cp_current@PLT
 mov rdi, rax
 call rt_pl_choice_cut_unwind@PLT
 jmp .Lplpb19_ω
 .Lplch20_exhausted:
 call pl_cp_current@PLT
 mov rdi, rax
 call rt_pl_choice_cut_exit@PLT
 call pl_cp_current@PLT
 mov edi, [rax + 16]
 call rt_pl_trail_unwind@PLT
 call pl_cp_pop@PLT
 jmp .Lplpb19_ω
 .Lplpb19_β:
 call rt_pl_get_cut_flag@PLT
 test eax, eax
 jnz .Lplch20_cut_ω
 call pl_cp_current@PLT
 test rax, rax
 je .Lplch20_β_nosol
 mov rdi, rax
 call rt_pl_choice_cut_enter@PLT
 jmp .Lplch20_dispatch
.Lplch20_β_nosol: jmp .Lplpb19_ω
.Lplch20_c0_body:
 bb2000_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 0
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 0
 mov rsi, 1
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb19_β
 jmp .Lplch20_exit_γ
.Lplch20_c0_beta: jmp .Lplpb19_β
.Lplch20_c1_body:
 bb3872_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 0
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 0
 mov rsi, 2
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb19_β
 jmp .Lplch20_exit_γ
.Lplch20_c1_beta: jmp .Lplpb19_β
.Lplch20_c2_body:
 bb5680_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 0
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 0
 mov rsi, 3
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb19_β
 jmp .Lplch20_exit_γ
.Lplch20_c2_beta: jmp .Lplpb19_β
.Lplch20_c3_body:
 bb7488_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 0
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 0
 mov rsi, 4
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb19_β
 jmp .Lplch20_exit_γ
.Lplch20_c3_beta: jmp .Lplpb19_β
.Lplch20_c4_body:
 bb9296_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 0
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 0
 mov rsi, 5
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb19_β
 jmp .Lplch20_exit_γ
.Lplch20_c4_beta: jmp .Lplpb19_β
.Lplpb19_γ: 
 mov rdi, 1
 call rt_set_last_ok@PLT
 ret
.Lplpb19_ω: 
 mov rdi, 0
 call rt_set_last_ok@PLT
 ret
.Lplpred_age_1_redo: jmp .Lplpb19_β
# PL CALLEE BLOCK all_diff5/5/5
.intel_syntax noprefix
.Lplpred_all_diff5_5: 
# env push/pop handled by caller (bb_pl_call site)
# redo entry: .Lplpred_all_diff5_5_redo
plseq22_g0_α:
 bb16320_α:
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
 bb15984_α:
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
 bb15648_α:
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
 bb15312_α:
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
 bb14976_α:
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
 bb14416_α:
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
 je bb14416_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq22_g6_α
bb14416_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp .Lplpb21_ω
 plseq22_g5_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb14416_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred____2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb14416_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq22_g6_α
bb14416_α_nosol: jmp .Lplpb21_ω
plseq22_g6_α:
 bb14080_α:
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
 je bb14080_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq22_g7_α
bb14080_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq22_g5_β
 plseq22_g6_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb14080_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred____2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb14080_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq22_g7_α
bb14080_α_nosol: jmp plseq22_g5_β
plseq22_g7_α:
 bb13744_α:
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
 je bb13744_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq22_g8_α
bb13744_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq22_g6_β
 plseq22_g7_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb13744_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred____2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb13744_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq22_g8_α
bb13744_α_nosol: jmp plseq22_g6_β
plseq22_g8_α:
 bb13408_α:
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
 je bb13408_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq22_g9_α
bb13408_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq22_g7_β
 plseq22_g8_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb13408_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred____2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb13408_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq22_g9_α
bb13408_α_nosol: jmp plseq22_g7_β
plseq22_g9_α:
 bb13072_α:
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
 je bb13072_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq22_g10_α
bb13072_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq22_g8_β
 plseq22_g9_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb13072_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred____2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb13072_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq22_g10_α
bb13072_α_nosol: jmp plseq22_g8_β
plseq22_g10_α:
 bb12736_α:
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
 je bb12736_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq22_g11_α
bb12736_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq22_g9_β
 plseq22_g10_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb12736_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred____2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb12736_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq22_g11_α
bb12736_α_nosol: jmp plseq22_g9_β
plseq22_g11_α:
 bb12400_α:
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
 je bb12400_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq22_g12_α
bb12400_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq22_g10_β
 plseq22_g11_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb12400_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred____2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb12400_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq22_g12_α
bb12400_α_nosol: jmp plseq22_g10_β
plseq22_g12_α:
 bb12064_α:
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
 je bb12064_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq22_g13_α
bb12064_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq22_g11_β
 plseq22_g12_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb12064_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred____2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb12064_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq22_g13_α
bb12064_α_nosol: jmp plseq22_g11_β
plseq22_g13_α:
 bb11728_α:
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
 je bb11728_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq22_g14_α
bb11728_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq22_g12_β
 plseq22_g13_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb11728_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred____2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb11728_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq22_g14_α
bb11728_α_nosol: jmp plseq22_g12_β
plseq22_g14_α:
 bb11392_α:
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
 je bb11392_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp .Lplpb21_γ
bb11392_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq22_g13_β
 plseq22_g14_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb11392_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred____2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb11392_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp .Lplpb21_γ
bb11392_α_nosol: jmp plseq22_g13_β
.Lplpb21_β:
 jmp plseq22_g14_β
.Lplpb21_γ: 
 mov rdi, 1
 call rt_set_last_ok@PLT
 ret
.Lplpb21_ω: 
 mov rdi, 0
 call rt_set_last_ok@PLT
 ret
.Lplpred_all_diff5_5_redo: jmp .Lplpb21_β
# PL CALLEE BLOCK blood_pair/7/7
.intel_syntax noprefix
.Lplpred_blood_pair_7: 
# env push/pop handled by caller (bb_pl_call site)
# redo entry: .Lplpred_blood_pair_7_redo
plseq24_g0_α:
 bb22656_α:
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
 je .Lplpb23_ω
 jmp plseq24_g1_α
plseq24_g0_β: jmp .Lplpb23_ω
plseq24_g1_α:
 bb22320_α:
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
 je .Lplpb23_ω
 jmp plseq24_g2_α
plseq24_g1_β: jmp .Lplpb23_ω
plseq24_g2_α:
 bb21984_α:
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
 je .Lplpb23_ω
 jmp plseq24_g3_α
plseq24_g2_β: jmp .Lplpb23_ω
plseq24_g3_α:
 bb21648_α:
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
 je .Lplpb23_ω
 jmp plseq24_g4_α
plseq24_g3_β: jmp .Lplpb23_ω
plseq24_g4_α:
 bb21312_α:
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
 je .Lplpb23_ω
 jmp plseq24_g5_α
plseq24_g4_β: jmp .Lplpb23_ω
plseq24_g5_α:
 bb20976_α:
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
 je .Lplpb23_ω
 jmp plseq24_g6_α
plseq24_g5_β: jmp .Lplpb23_ω
plseq24_g6_α:
 bb20640_α:
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
 je .Lplpb23_ω
 jmp plseq24_g7_α
plseq24_g6_β: jmp .Lplpb23_ω
plseq24_g7_α:
 bb19520_α:
# BOX PL_CALL person_pos/7 (WAM-CP-5, n_args=7)
 mov edi, 56
 mov rsi, 7
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
 mov edi, 56
 mov rsi, 6
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 56
 mov rsi, 0
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
 call .Lplpred_person_pos_7
 pop rdi
 add rsp, 56
 call rt_last_ok@PLT
 test eax, eax
 je bb19520_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq24_g8_α
bb19520_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp .Lplpb23_ω
 plseq24_g7_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb19520_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_person_pos_7_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb19520_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq24_g8_α
bb19520_α_nosol: jmp .Lplpb23_ω
plseq24_g8_α:
 bb18624_α:
# BOX PL_CALL person_pos/7 (WAM-CP-5, n_args=7)
 mov edi, 56
 mov rsi, 8
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
 mov edi, 56
 mov rsi, 6
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
 call .Lplpred_person_pos_7
 pop rdi
 add rsp, 56
 call rt_last_ok@PLT
 test eax, eax
 je bb18624_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq24_g9_α
bb18624_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq24_g7_β
 plseq24_g8_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb18624_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_person_pos_7_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb18624_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq24_g9_α
bb18624_α_nosol: jmp plseq24_g7_β
plseq24_g9_α:
 bb18288_α:
# BOX PL_CALL blood/2 (WAM-CP-5, n_args=2)
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
 call .Lplpred_blood_2
 add rsp, 8
 pop rdi
 add rsp, 16
 call rt_last_ok@PLT
 test eax, eax
 je bb18288_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp .Lplpb23_γ
bb18288_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq24_g8_β
 plseq24_g9_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb18288_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_blood_2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb18288_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp .Lplpb23_γ
bb18288_α_nosol: jmp plseq24_g8_β
.Lplpb23_β:
 jmp plseq24_g9_β
.Lplpb23_γ: 
 mov rdi, 1
 call rt_set_last_ok@PLT
 ret
.Lplpb23_ω: 
 mov rdi, 0
 call rt_set_last_ok@PLT
 ret
.Lplpred_blood_pair_7_redo: jmp .Lplpb23_β
# PL CALLEE BLOCK ages_ok/5/5
.intel_syntax noprefix
.Lplpred_ages_ok_5: 
# env push/pop handled by caller (bb_pl_call site)
# redo entry: .Lplpred_ages_ok_5_redo
plseq26_g0_α:
 bb36992_α:
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
 je .Lplpb25_ω
 jmp plseq26_g1_α
plseq26_g0_β: jmp .Lplpb25_ω
plseq26_g1_α:
 bb36656_α:
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
 je .Lplpb25_ω
 jmp plseq26_g2_α
plseq26_g1_β: jmp .Lplpb25_ω
plseq26_g2_α:
 bb36320_α:
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
 je .Lplpb25_ω
 jmp plseq26_g3_α
plseq26_g2_β: jmp .Lplpb25_ω
plseq26_g3_α:
 bb35984_α:
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
 je .Lplpb25_ω
 jmp plseq26_g4_α
plseq26_g3_β: jmp .Lplpb25_ω
plseq26_g4_α:
 bb35648_α:
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
 je .Lplpb25_ω
 jmp plseq26_g5_α
plseq26_g4_β: jmp .Lplpb25_ω
plseq26_g5_α:
 bb35200_α:
# BOX PL_CALL age/1 (WAM-CP-5, n_args=1)
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
 call .Lplpred_age_1
 pop rdi
 add rsp, 8
 call rt_last_ok@PLT
 test eax, eax
 je bb35200_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq26_g6_α
bb35200_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp .Lplpb25_ω
 plseq26_g5_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb35200_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_age_1_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb35200_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq26_g6_α
bb35200_α_nosol: jmp .Lplpb25_ω
plseq26_g6_α:
 bb34976_α:
# BOX PL_CALL age/1 (WAM-CP-5, n_args=1)
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
 call .Lplpred_age_1
 pop rdi
 add rsp, 8
 call rt_last_ok@PLT
 test eax, eax
 je bb34976_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq26_g7_α
bb34976_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq26_g5_β
 plseq26_g6_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb34976_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_age_1_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb34976_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq26_g7_α
bb34976_α_nosol: jmp plseq26_g5_β
plseq26_g7_α:
 bb34752_α:
# BOX PL_CALL age/1 (WAM-CP-5, n_args=1)
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
 call .Lplpred_age_1
 pop rdi
 add rsp, 8
 call rt_last_ok@PLT
 test eax, eax
 je bb34752_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq26_g8_α
bb34752_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq26_g6_β
 plseq26_g7_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb34752_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_age_1_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb34752_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq26_g8_α
bb34752_α_nosol: jmp plseq26_g6_β
plseq26_g8_α:
 bb34528_α:
# BOX PL_CALL age/1 (WAM-CP-5, n_args=1)
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
 call .Lplpred_age_1
 pop rdi
 add rsp, 8
 call rt_last_ok@PLT
 test eax, eax
 je bb34528_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq26_g9_α
bb34528_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq26_g7_β
 plseq26_g8_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb34528_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_age_1_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb34528_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq26_g9_α
bb34528_α_nosol: jmp plseq26_g7_β
plseq26_g9_α:
 bb34304_α:
# BOX PL_CALL age/1 (WAM-CP-5, n_args=1)
 mov edi, 56
 mov rsi, 9
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
 call .Lplpred_age_1
 pop rdi
 add rsp, 8
 call rt_last_ok@PLT
 test eax, eax
 je bb34304_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq26_g10_α
bb34304_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq26_g8_β
 plseq26_g9_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb34304_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_age_1_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb34304_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq26_g10_α
bb34304_α_nosol: jmp plseq26_g8_β
plseq26_g10_α:
 bb33632_α:
# BOX PL_CALL all_diff5/5 (WAM-CP-5, n_args=5)
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
 mov edi, 56
 mov rsi, 9
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
 je bb33632_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq26_g11_α
bb33632_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq26_g9_β
 plseq26_g10_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb33632_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_all_diff5_5_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb33632_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq26_g11_α
bb33632_α_nosol: jmp plseq26_g9_β
plseq26_g11_α:
 bb32176_α:
# BOX PL_CALL pos_age/12 (WAM-CP-5, n_args=12)
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S13]
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
 mov edi, 56
 mov rsi, 8
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 56
 mov rsi, 9
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 56
 mov rsi, 10
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 28
 call pl_bb_env_save_push@PLT
 push rax
 sub rsp, 8
 mov rsi, [rsp + 16]
 mov edi, 11
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 24]
 mov edi, 10
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 32]
 mov edi, 9
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 40]
 mov edi, 8
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 48]
 mov edi, 7
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 56]
 mov edi, 6
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 64]
 mov edi, 5
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 72]
 mov edi, 4
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 80]
 mov edi, 3
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 88]
 mov edi, 2
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 96]
 mov edi, 1
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 104]
 mov edi, 0
 call pl_bb_bind_arg@PLT
 call .Lplpred_pos_age_12
 add rsp, 8
 pop rdi
 add rsp, 96
 call rt_last_ok@PLT
 test eax, eax
 je bb32176_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq26_g12_α
bb32176_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq26_g10_β
 plseq26_g11_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb32176_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_pos_age_12_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb32176_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq26_g12_α
bb32176_α_nosol: jmp plseq26_g10_β
plseq26_g12_α:
 bb30720_α:
# BOX PL_CALL pos_age/12 (WAM-CP-5, n_args=12)
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S17]
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
 mov edi, 56
 mov rsi, 8
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 56
 mov rsi, 9
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 56
 mov rsi, 11
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 28
 call pl_bb_env_save_push@PLT
 push rax
 sub rsp, 8
 mov rsi, [rsp + 16]
 mov edi, 11
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 24]
 mov edi, 10
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 32]
 mov edi, 9
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 40]
 mov edi, 8
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 48]
 mov edi, 7
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 56]
 mov edi, 6
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 64]
 mov edi, 5
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 72]
 mov edi, 4
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 80]
 mov edi, 3
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 88]
 mov edi, 2
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 96]
 mov edi, 1
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 104]
 mov edi, 0
 call pl_bb_bind_arg@PLT
 call .Lplpred_pos_age_12
 add rsp, 8
 pop rdi
 add rsp, 96
 call rt_last_ok@PLT
 test eax, eax
 je bb30720_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq26_g13_α
bb30720_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq26_g11_β
 plseq26_g12_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb30720_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_pos_age_12_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb30720_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq26_g13_α
bb30720_α_nosol: jmp plseq26_g11_β
plseq26_g13_α:
 bb29264_α:
# BOX PL_CALL pos_age/12 (WAM-CP-5, n_args=12)
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S16]
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
 mov edi, 56
 mov rsi, 8
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 56
 mov rsi, 9
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 56
 mov rsi, 12
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 28
 call pl_bb_env_save_push@PLT
 push rax
 sub rsp, 8
 mov rsi, [rsp + 16]
 mov edi, 11
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 24]
 mov edi, 10
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 32]
 mov edi, 9
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 40]
 mov edi, 8
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 48]
 mov edi, 7
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 56]
 mov edi, 6
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 64]
 mov edi, 5
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 72]
 mov edi, 4
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 80]
 mov edi, 3
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 88]
 mov edi, 2
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 96]
 mov edi, 1
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 104]
 mov edi, 0
 call pl_bb_bind_arg@PLT
 call .Lplpred_pos_age_12
 add rsp, 8
 pop rdi
 add rsp, 96
 call rt_last_ok@PLT
 test eax, eax
 je bb29264_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq26_g14_α
bb29264_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq26_g12_β
 plseq26_g13_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb29264_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_pos_age_12_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb29264_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq26_g14_α
bb29264_α_nosol: jmp plseq26_g12_β
plseq26_g14_α:
 bb27808_α:
# BOX PL_CALL pos_age/12 (WAM-CP-5, n_args=12)
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S15]
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
 mov edi, 56
 mov rsi, 8
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 56
 mov rsi, 9
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 56
 mov rsi, 13
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 28
 call pl_bb_env_save_push@PLT
 push rax
 sub rsp, 8
 mov rsi, [rsp + 16]
 mov edi, 11
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 24]
 mov edi, 10
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 32]
 mov edi, 9
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 40]
 mov edi, 8
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 48]
 mov edi, 7
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 56]
 mov edi, 6
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 64]
 mov edi, 5
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 72]
 mov edi, 4
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 80]
 mov edi, 3
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 88]
 mov edi, 2
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 96]
 mov edi, 1
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 104]
 mov edi, 0
 call pl_bb_bind_arg@PLT
 call .Lplpred_pos_age_12
 add rsp, 8
 pop rdi
 add rsp, 96
 call rt_last_ok@PLT
 test eax, eax
 je bb27808_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq26_g15_α
bb27808_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq26_g13_β
 plseq26_g14_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb27808_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_pos_age_12_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb27808_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq26_g15_α
bb27808_α_nosol: jmp plseq26_g13_β
plseq26_g15_α:
 bb27472_α:
 # BOX PL_BUILTIN(>/2)
 sub rsp, 16
 lea rdi, [rip + .S39]
 mov esi, 56
 mov rdx, 10
 xor ecx, ecx
 mov r8d, 56
 mov r9, 11
 xor eax, eax
 mov qword ptr [rsp + 0], rax
 call rt_pl_arith_cmp@PLT
 add rsp, 16
 test eax, eax
 je plseq26_g14_β
 jmp plseq26_g16_α
plseq26_g15_β: jmp plseq26_g14_β
plseq26_g16_α:
 bb27136_α:
 # BOX PL_BUILTIN(</2)
 sub rsp, 16
 lea rdi, [rip + .S40]
 mov esi, 56
 mov rdx, 10
 xor ecx, ecx
 mov r8d, 56
 mov r9, 8
 xor eax, eax
 mov qword ptr [rsp + 0], rax
 call rt_pl_arith_cmp@PLT
 add rsp, 16
 test eax, eax
 je plseq26_g14_β
 jmp plseq26_g17_α
plseq26_g16_β: jmp plseq26_g14_β
plseq26_g17_α:
 bb26800_α:
 # BOX PL_BUILTIN(>/2)
 sub rsp, 16
 lea rdi, [rip + .S39]
 mov esi, 56
 mov rdx, 12
 xor ecx, ecx
 mov r8d, 56
 mov r9, 13
 xor eax, eax
 mov qword ptr [rsp + 0], rax
 call rt_pl_arith_cmp@PLT
 add rsp, 16
 test eax, eax
 je plseq26_g14_β
 jmp plseq26_g18_α
plseq26_g17_β: jmp plseq26_g14_β
plseq26_g18_α:
 bb26688_α:
# BOX PL_CUT
 call rt_pl_cut_set@PLT
 jmp .Lplpb25_γ
plseq26_g18_β: jmp .Lplpb25_γ
.Lplpb25_β:
 jmp plseq26_g14_β
.Lplpb25_γ: 
 mov rdi, 1
 call rt_set_last_ok@PLT
 ret
.Lplpb25_ω: 
 mov rdi, 0
 call rt_set_last_ok@PLT
 ret
.Lplpred_ages_ok_5_redo: jmp .Lplpb25_β
# PL CALLEE BLOCK pos_age/12/12
.intel_syntax noprefix
.Lplpred_pos_age_12: 
# env push/pop handled by caller (bb_pl_call site)
# redo entry: .Lplpred_pos_age_12_redo
 bb38064_α:
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
 .Lplch28_dispatch:
 call pl_cp_current@PLT
 mov edi, [rax + 48]
 cmp edi, 5
 jge .Lplch28_exhausted
 cmp edi, 0
 je .Lplch28_c0_pre
 cmp edi, 1
 je .Lplch28_c1_pre
 cmp edi, 2
 je .Lplch28_c2_pre
 cmp edi, 3
 je .Lplch28_c3_pre
 cmp edi, 4
 je .Lplch28_c4_pre
 jmp .Lplch28_exhausted
 .Lplch28_c0_pre:
 call pl_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch28_c0_body
 .Lplch28_c1_pre:
 call pl_cp_current@PLT
 mov edi, [rax + 16]
 call rt_pl_trail_unwind@PLT
 call pl_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch28_c1_body
 .Lplch28_c2_pre:
 call pl_cp_current@PLT
 mov edi, [rax + 16]
 call rt_pl_trail_unwind@PLT
 call pl_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch28_c2_body
 .Lplch28_c3_pre:
 call pl_cp_current@PLT
 mov edi, [rax + 16]
 call rt_pl_trail_unwind@PLT
 call pl_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch28_c3_body
 .Lplch28_c4_pre:
 call pl_cp_current@PLT
 mov edi, [rax + 16]
 call rt_pl_trail_unwind@PLT
 call pl_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch28_c4_body
 .Lplch28_exit_γ:
 call rt_pl_get_cut_flag@PLT
 test eax, eax
 jnz .Lplch28_cut_γ
 call pl_cp_current@PLT
 mov rdi, rax
 call rt_pl_choice_cut_exit@PLT
 jmp .Lplpb27_γ
 .Lplch28_cut_γ:
 call pl_cp_current@PLT
 mov rdi, rax
 call rt_pl_choice_cut_unwind@PLT
 jmp .Lplpb27_γ
 .Lplch28_cut_ω:
 call pl_cp_current@PLT
 mov rdi, rax
 call rt_pl_choice_cut_unwind@PLT
 jmp .Lplpb27_ω
 .Lplch28_exhausted:
 call pl_cp_current@PLT
 mov rdi, rax
 call rt_pl_choice_cut_exit@PLT
 call pl_cp_current@PLT
 mov edi, [rax + 16]
 call rt_pl_trail_unwind@PLT
 call pl_cp_pop@PLT
 jmp .Lplpb27_ω
 .Lplpb27_β:
 call rt_pl_get_cut_flag@PLT
 test eax, eax
 jnz .Lplch28_cut_ω
 call pl_cp_current@PLT
 test rax, rax
 je .Lplch28_β_nosol
 mov rdi, rax
 call rt_pl_choice_cut_enter@PLT
 jmp .Lplch28_dispatch
.Lplch28_β_nosol: jmp .Lplpb27_ω
.Lplch28_c0_body:
plseq29_g0_α:
 bb43904_α:
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
 je .Lplpb27_β
 jmp plseq29_g1_α
plseq29_g0_β: jmp .Lplpb27_β
plseq29_g1_α:
 bb43568_α:
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
 je .Lplpb27_β
 jmp plseq29_g2_α
plseq29_g1_β: jmp .Lplpb27_β
plseq29_g2_α:
 bb43232_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 2
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 12
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb27_β
 jmp plseq29_g3_α
plseq29_g2_β: jmp .Lplpb27_β
plseq29_g3_α:
 bb42896_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 3
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 13
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb27_β
 jmp plseq29_g4_α
plseq29_g3_β: jmp .Lplpb27_β
plseq29_g4_α:
 bb42560_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 4
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 14
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb27_β
 jmp plseq29_g5_α
plseq29_g4_β: jmp .Lplpb27_β
plseq29_g5_α:
 bb42224_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 5
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 15
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb27_β
 jmp plseq29_g6_α
plseq29_g5_β: jmp .Lplpb27_β
plseq29_g6_α:
 bb41888_α:
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
 je .Lplpb27_β
 jmp plseq29_g7_α
plseq29_g6_β: jmp .Lplpb27_β
plseq29_g7_α:
 bb41552_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 7
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 16
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb27_β
 jmp plseq29_g8_α
plseq29_g7_β: jmp .Lplpb27_β
plseq29_g8_α:
 bb41216_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 8
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 17
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb27_β
 jmp plseq29_g9_α
plseq29_g8_β: jmp .Lplpb27_β
plseq29_g9_α:
 bb40880_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 9
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 18
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb27_β
 jmp plseq29_g10_α
plseq29_g9_β: jmp .Lplpb27_β
plseq29_g10_α:
 bb40544_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 10
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 19
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb27_β
 jmp plseq29_g11_α
plseq29_g10_β: jmp .Lplpb27_β
plseq29_g11_α:
 bb40208_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 11
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
 je .Lplpb27_β
 jmp .Lplch28_exit_γ
plseq29_g11_β: jmp .Lplpb27_β
.Lplch28_c0_beta:
 jmp .Lplpb27_β
.Lplch28_c1_body:
plseq30_g0_α:
 bb49856_α:
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
 je .Lplpb27_β
 jmp plseq30_g1_α
plseq30_g0_β: jmp .Lplpb27_β
plseq30_g1_α:
 bb49520_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 1
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 12
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb27_β
 jmp plseq30_g2_α
plseq30_g1_β: jmp .Lplpb27_β
plseq30_g2_α:
 bb49184_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 2
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
 je .Lplpb27_β
 jmp plseq30_g3_α
plseq30_g2_β: jmp .Lplpb27_β
plseq30_g3_α:
 bb48848_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 3
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 13
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb27_β
 jmp plseq30_g4_α
plseq30_g3_β: jmp .Lplpb27_β
plseq30_g4_α:
 bb48512_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 4
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 14
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb27_β
 jmp plseq30_g5_α
plseq30_g4_β: jmp .Lplpb27_β
plseq30_g5_α:
 bb48176_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 5
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 15
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb27_β
 jmp plseq30_g6_α
plseq30_g5_β: jmp .Lplpb27_β
plseq30_g6_α:
 bb47840_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 6
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 16
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb27_β
 jmp plseq30_g7_α
plseq30_g6_β: jmp .Lplpb27_β
plseq30_g7_α:
 bb47504_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 7
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 7
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb27_β
 jmp plseq30_g8_α
plseq30_g7_β: jmp .Lplpb27_β
plseq30_g8_α:
 bb47168_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 8
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 17
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb27_β
 jmp plseq30_g9_α
plseq30_g8_β: jmp .Lplpb27_β
plseq30_g9_α:
 bb46832_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 9
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 18
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb27_β
 jmp plseq30_g10_α
plseq30_g9_β: jmp .Lplpb27_β
plseq30_g10_α:
 bb46496_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 10
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 19
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb27_β
 jmp plseq30_g11_α
plseq30_g10_β: jmp .Lplpb27_β
plseq30_g11_α:
 bb46160_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 11
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 7
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb27_β
 jmp .Lplch28_exit_γ
plseq30_g11_β: jmp .Lplpb27_β
.Lplch28_c1_beta:
 jmp .Lplpb27_β
.Lplch28_c2_body:
plseq31_g0_α:
 bb55696_α:
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
 je .Lplpb27_β
 jmp plseq31_g1_α
plseq31_g0_β: jmp .Lplpb27_β
plseq31_g1_α:
 bb55360_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 1
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 12
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb27_β
 jmp plseq31_g2_α
plseq31_g1_β: jmp .Lplpb27_β
plseq31_g2_α:
 bb55024_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 2
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 13
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb27_β
 jmp plseq31_g3_α
plseq31_g2_β: jmp .Lplpb27_β
plseq31_g3_α:
 bb54688_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 3
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
 je .Lplpb27_β
 jmp plseq31_g4_α
plseq31_g3_β: jmp .Lplpb27_β
plseq31_g4_α:
 bb54352_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 4
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 14
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb27_β
 jmp plseq31_g5_α
plseq31_g4_β: jmp .Lplpb27_β
plseq31_g5_α:
 bb54016_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 5
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 15
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb27_β
 jmp plseq31_g6_α
plseq31_g5_β: jmp .Lplpb27_β
plseq31_g6_α:
 bb53680_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 6
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 16
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb27_β
 jmp plseq31_g7_α
plseq31_g6_β: jmp .Lplpb27_β
plseq31_g7_α:
 bb53344_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 7
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 17
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb27_β
 jmp plseq31_g8_α
plseq31_g7_β: jmp .Lplpb27_β
plseq31_g8_α:
 bb53008_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 8
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 8
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb27_β
 jmp plseq31_g9_α
plseq31_g8_β: jmp .Lplpb27_β
plseq31_g9_α:
 bb52672_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 9
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 18
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb27_β
 jmp plseq31_g10_α
plseq31_g9_β: jmp .Lplpb27_β
plseq31_g10_α:
 bb52336_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 10
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 19
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb27_β
 jmp plseq31_g11_α
plseq31_g10_β: jmp .Lplpb27_β
plseq31_g11_α:
 bb52000_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 11
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 8
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb27_β
 jmp .Lplch28_exit_γ
plseq31_g11_β: jmp .Lplpb27_β
.Lplch28_c2_beta:
 jmp .Lplpb27_β
.Lplch28_c3_body:
plseq32_g0_α:
 bb61200_α:
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
 je .Lplpb27_β
 jmp plseq32_g1_α
plseq32_g0_β: jmp .Lplpb27_β
plseq32_g1_α:
 bb60864_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 1
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 12
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb27_β
 jmp plseq32_g2_α
plseq32_g1_β: jmp .Lplpb27_β
plseq32_g2_α:
 bb60528_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 2
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 13
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb27_β
 jmp plseq32_g3_α
plseq32_g2_β: jmp .Lplpb27_β
plseq32_g3_α:
 bb60192_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 3
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 14
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb27_β
 jmp plseq32_g4_α
plseq32_g3_β: jmp .Lplpb27_β
plseq32_g4_α:
 bb59856_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 4
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
 je .Lplpb27_β
 jmp plseq32_g5_α
plseq32_g4_β: jmp .Lplpb27_β
plseq32_g5_α:
 bb59520_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 5
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 15
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb27_β
 jmp plseq32_g6_α
plseq32_g5_β: jmp .Lplpb27_β
plseq32_g6_α:
 bb59184_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 6
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 16
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb27_β
 jmp plseq32_g7_α
plseq32_g6_β: jmp .Lplpb27_β
plseq32_g7_α:
 bb58848_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 7
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 17
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb27_β
 jmp plseq32_g8_α
plseq32_g7_β: jmp .Lplpb27_β
plseq32_g8_α:
 bb58512_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 8
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 18
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb27_β
 jmp plseq32_g9_α
plseq32_g8_β: jmp .Lplpb27_β
plseq32_g9_α:
 bb58176_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 9
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 9
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb27_β
 jmp plseq32_g10_α
plseq32_g9_β: jmp .Lplpb27_β
plseq32_g10_α:
 bb57840_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 10
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 19
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb27_β
 jmp plseq32_g11_α
plseq32_g10_β: jmp .Lplpb27_β
plseq32_g11_α:
 bb57504_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 11
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 9
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb27_β
 jmp .Lplch28_exit_γ
plseq32_g11_β: jmp .Lplpb27_β
.Lplch28_c3_beta:
 jmp .Lplpb27_β
.Lplch28_c4_body:
plseq33_g0_α:
 bb66704_α:
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
 je .Lplpb27_β
 jmp plseq33_g1_α
plseq33_g0_β: jmp .Lplpb27_β
plseq33_g1_α:
 bb66368_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 1
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 12
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb27_β
 jmp plseq33_g2_α
plseq33_g1_β: jmp .Lplpb27_β
plseq33_g2_α:
 bb66032_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 2
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 13
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb27_β
 jmp plseq33_g3_α
plseq33_g2_β: jmp .Lplpb27_β
plseq33_g3_α:
 bb65696_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 3
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 14
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb27_β
 jmp plseq33_g4_α
plseq33_g3_β: jmp .Lplpb27_β
plseq33_g4_α:
 bb65360_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 4
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 15
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb27_β
 jmp plseq33_g5_α
plseq33_g4_β: jmp .Lplpb27_β
plseq33_g5_α:
 bb65024_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 5
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
 je .Lplpb27_β
 jmp plseq33_g6_α
plseq33_g5_β: jmp .Lplpb27_β
plseq33_g6_α:
 bb64688_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 6
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 16
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb27_β
 jmp plseq33_g7_α
plseq33_g6_β: jmp .Lplpb27_β
plseq33_g7_α:
 bb64352_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 7
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 17
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb27_β
 jmp plseq33_g8_α
plseq33_g7_β: jmp .Lplpb27_β
plseq33_g8_α:
 bb64016_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 8
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 18
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb27_β
 jmp plseq33_g9_α
plseq33_g8_β: jmp .Lplpb27_β
plseq33_g9_α:
 bb63680_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 9
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 19
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb27_β
 jmp plseq33_g10_α
plseq33_g9_β: jmp .Lplpb27_β
plseq33_g10_α:
 bb63344_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 10
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 10
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb27_β
 jmp plseq33_g11_α
plseq33_g10_β: jmp .Lplpb27_β
plseq33_g11_α:
 bb63008_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 11
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 10
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb27_β
 jmp .Lplch28_exit_γ
plseq33_g11_β: jmp .Lplpb27_β
.Lplch28_c4_beta:
 jmp .Lplpb27_β
.Lplpb27_γ: 
 mov rdi, 1
 call rt_set_last_ok@PLT
 ret
.Lplpb27_ω: 
 mov rdi, 0
 call rt_set_last_ok@PLT
 ret
.Lplpred_pos_age_12_redo: jmp .Lplpb27_β
# PL CALLEE BLOCK person_pos/7/7
.intel_syntax noprefix
.Lplpred_person_pos_7: 
# env push/pop handled by caller (bb_pl_call site)
# redo entry: .Lplpred_person_pos_7_redo
 bb51664_α:
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
 .Lplch35_dispatch:
 call pl_cp_current@PLT
 mov edi, [rax + 48]
 cmp edi, 5
 jge .Lplch35_exhausted
 cmp edi, 0
 je .Lplch35_c0_pre
 cmp edi, 1
 je .Lplch35_c1_pre
 cmp edi, 2
 je .Lplch35_c2_pre
 cmp edi, 3
 je .Lplch35_c3_pre
 cmp edi, 4
 je .Lplch35_c4_pre
 jmp .Lplch35_exhausted
 .Lplch35_c0_pre:
 call pl_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch35_c0_body
 .Lplch35_c1_pre:
 call pl_cp_current@PLT
 mov edi, [rax + 16]
 call rt_pl_trail_unwind@PLT
 call pl_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch35_c1_body
 .Lplch35_c2_pre:
 call pl_cp_current@PLT
 mov edi, [rax + 16]
 call rt_pl_trail_unwind@PLT
 call pl_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch35_c2_body
 .Lplch35_c3_pre:
 call pl_cp_current@PLT
 mov edi, [rax + 16]
 call rt_pl_trail_unwind@PLT
 call pl_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch35_c3_body
 .Lplch35_c4_pre:
 call pl_cp_current@PLT
 mov edi, [rax + 16]
 call rt_pl_trail_unwind@PLT
 call pl_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch35_c4_body
 .Lplch35_exit_γ:
 call rt_pl_get_cut_flag@PLT
 test eax, eax
 jnz .Lplch35_cut_γ
 call pl_cp_current@PLT
 mov rdi, rax
 call rt_pl_choice_cut_exit@PLT
 jmp .Lplpb34_γ
 .Lplch35_cut_γ:
 call pl_cp_current@PLT
 mov rdi, rax
 call rt_pl_choice_cut_unwind@PLT
 jmp .Lplpb34_γ
 .Lplch35_cut_ω:
 call pl_cp_current@PLT
 mov rdi, rax
 call rt_pl_choice_cut_unwind@PLT
 jmp .Lplpb34_ω
 .Lplch35_exhausted:
 call pl_cp_current@PLT
 mov rdi, rax
 call rt_pl_choice_cut_exit@PLT
 call pl_cp_current@PLT
 mov edi, [rax + 16]
 call rt_pl_trail_unwind@PLT
 call pl_cp_pop@PLT
 jmp .Lplpb34_ω
 .Lplpb34_β:
 call rt_pl_get_cut_flag@PLT
 test eax, eax
 jnz .Lplch35_cut_ω
 call pl_cp_current@PLT
 test rax, rax
 je .Lplch35_β_nosol
 mov rdi, rax
 call rt_pl_choice_cut_enter@PLT
 jmp .Lplch35_dispatch
.Lplch35_β_nosol: jmp .Lplpb34_ω
.Lplch35_c0_body:
plseq36_g0_α:
 bb71408_α:
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
 lea rdx, [rip + .S31]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb34_β
 jmp plseq36_g1_α
plseq36_g0_β: jmp .Lplpb34_β
plseq36_g1_α:
 bb71072_α:
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
 je .Lplpb34_β
 jmp plseq36_g2_α
plseq36_g1_β: jmp .Lplpb34_β
plseq36_g2_α:
 bb70736_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 2
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 7
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb34_β
 jmp plseq36_g3_α
plseq36_g2_β: jmp .Lplpb34_β
plseq36_g3_α:
 bb70400_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 3
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 8
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb34_β
 jmp plseq36_g4_α
plseq36_g3_β: jmp .Lplpb34_β
plseq36_g4_α:
 bb70064_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 4
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 9
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb34_β
 jmp plseq36_g5_α
plseq36_g4_β: jmp .Lplpb34_β
plseq36_g5_α:
 bb69728_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 5
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 10
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb34_β
 jmp plseq36_g6_α
plseq36_g5_β: jmp .Lplpb34_β
plseq36_g6_α:
 bb69392_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 6
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
 je .Lplpb34_β
 jmp .Lplch35_exit_γ
plseq36_g6_β: jmp .Lplpb34_β
.Lplch35_c0_beta:
 jmp .Lplpb34_β
.Lplch35_c1_body:
plseq37_g0_α:
 bb75424_α:
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
 lea rdx, [rip + .S34]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb34_β
 jmp plseq37_g1_α
plseq37_g0_β: jmp .Lplpb34_β
plseq37_g1_α:
 bb75088_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 1
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 7
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb34_β
 jmp plseq37_g2_α
plseq37_g1_β: jmp .Lplpb34_β
plseq37_g2_α:
 bb74752_α:
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
 je .Lplpb34_β
 jmp plseq37_g3_α
plseq37_g2_β: jmp .Lplpb34_β
plseq37_g3_α:
 bb74416_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 3
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 8
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb34_β
 jmp plseq37_g4_α
plseq37_g3_β: jmp .Lplpb34_β
plseq37_g4_α:
 bb74080_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 4
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 9
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb34_β
 jmp plseq37_g5_α
plseq37_g4_β: jmp .Lplpb34_β
plseq37_g5_α:
 bb73744_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 5
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 10
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb34_β
 jmp plseq37_g6_α
plseq37_g5_β: jmp .Lplpb34_β
plseq37_g6_α:
 bb73408_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 6
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
 je .Lplpb34_β
 jmp .Lplch35_exit_γ
plseq37_g6_β: jmp .Lplpb34_β
.Lplch35_c1_beta:
 jmp .Lplpb34_β
.Lplch35_c2_body:
plseq38_g0_α:
 bb79440_α:
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
 lea rdx, [rip + .S30]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb34_β
 jmp plseq38_g1_α
plseq38_g0_β: jmp .Lplpb34_β
plseq38_g1_α:
 bb79104_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 1
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 7
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb34_β
 jmp plseq38_g2_α
plseq38_g1_β: jmp .Lplpb34_β
plseq38_g2_α:
 bb78768_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 2
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 8
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb34_β
 jmp plseq38_g3_α
plseq38_g2_β: jmp .Lplpb34_β
plseq38_g3_α:
 bb78432_α:
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
 je .Lplpb34_β
 jmp plseq38_g4_α
plseq38_g3_β: jmp .Lplpb34_β
plseq38_g4_α:
 bb78096_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 4
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 9
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb34_β
 jmp plseq38_g5_α
plseq38_g4_β: jmp .Lplpb34_β
plseq38_g5_α:
 bb77760_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 5
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 10
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb34_β
 jmp plseq38_g6_α
plseq38_g5_β: jmp .Lplpb34_β
plseq38_g6_α:
 bb77424_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 6
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
 je .Lplpb34_β
 jmp .Lplch35_exit_γ
plseq38_g6_β: jmp .Lplpb34_β
.Lplch35_c2_beta:
 jmp .Lplpb34_β
.Lplch35_c3_body:
plseq39_g0_α:
 bb83328_α:
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
 lea rdx, [rip + .S32]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb34_β
 jmp plseq39_g1_α
plseq39_g0_β: jmp .Lplpb34_β
plseq39_g1_α:
 bb82992_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 1
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 7
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb34_β
 jmp plseq39_g2_α
plseq39_g1_β: jmp .Lplpb34_β
plseq39_g2_α:
 bb82656_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 2
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 8
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb34_β
 jmp plseq39_g3_α
plseq39_g2_β: jmp .Lplpb34_β
plseq39_g3_α:
 bb82320_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 3
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 9
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb34_β
 jmp plseq39_g4_α
plseq39_g3_β: jmp .Lplpb34_β
plseq39_g4_α:
 bb81984_α:
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
 je .Lplpb34_β
 jmp plseq39_g5_α
plseq39_g4_β: jmp .Lplpb34_β
plseq39_g5_α:
 bb81648_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 5
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 10
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb34_β
 jmp plseq39_g6_α
plseq39_g5_β: jmp .Lplpb34_β
plseq39_g6_α:
 bb81312_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 6
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
 je .Lplpb34_β
 jmp .Lplch35_exit_γ
plseq39_g6_β: jmp .Lplpb34_β
.Lplch35_c3_beta:
 jmp .Lplpb34_β
.Lplch35_c4_body:
plseq40_g0_α:
 bb87152_α:
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
 lea rdx, [rip + .S33]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb34_β
 jmp plseq40_g1_α
plseq40_g0_β: jmp .Lplpb34_β
plseq40_g1_α:
 bb86816_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 1
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 7
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb34_β
 jmp plseq40_g2_α
plseq40_g1_β: jmp .Lplpb34_β
plseq40_g2_α:
 bb86480_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 2
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 8
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb34_β
 jmp plseq40_g3_α
plseq40_g2_β: jmp .Lplpb34_β
plseq40_g3_α:
 bb86144_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 3
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 9
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb34_β
 jmp plseq40_g4_α
plseq40_g3_β: jmp .Lplpb34_β
plseq40_g4_α:
 bb85808_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 4
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 10
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb34_β
 jmp plseq40_g5_α
plseq40_g4_β: jmp .Lplpb34_β
plseq40_g5_α:
 bb85472_α:
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
 je .Lplpb34_β
 jmp plseq40_g6_α
plseq40_g5_β: jmp .Lplpb34_β
plseq40_g6_α:
 bb85136_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 6
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
 je .Lplpb34_β
 jmp .Lplch35_exit_γ
plseq40_g6_β: jmp .Lplpb34_β
.Lplch35_c4_beta:
 jmp .Lplpb34_β
.Lplpb34_γ: 
 mov rdi, 1
 call rt_set_last_ok@PLT
 ret
.Lplpb34_ω: 
 mov rdi, 0
 call rt_set_last_ok@PLT
 ret
.Lplpred_person_pos_7_redo: jmp .Lplpb34_β
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
