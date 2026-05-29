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
.S0: .string "differ/3"
.S1: .string "write_occ/5"
.S2: .string "puzzle/0"
.S3: .string "occupation/1"
.S4: .string "member/2"
.S5: .string "occ/5"
.S6: .string "display/3"
.S7: .string "main/0"
.S8: .string "("
.S9: .string ","
.S10: .string ")"
.S11: .string "write"
.S12: .string " "
.S13: .string "Clark="
.S14: .string "carpenter"
.S15: .string "Daw="
.S16: .string "painter"
.S17: .string "Fuller="
.S18: .string "plumber"
.S19: .string "display"
.S20: .string "\\="
.S21: .string "differ"
.S22: .string "occupation"
.S23: .string "member"
.S24: .string "[]"
.S25: .string "."
.S26: .string "clark"
.S27: .string "daw"
.S28: .string "fuller"
.S29: .string "\n"
.S30: .string "write_occ"
.S31: .string "puzzle"
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
.Lsub_differ_3:
 LABEL
.L2:
 RETURN
.L3:
 LABEL
 JUMP .L7
.Lsub_write_occ_5:
 LABEL
.L6:
 RETURN
.L7:
 LABEL
 JUMP .L11
.Lsub_puzzle_0:
 LABEL
.L10:
 RETURN
.L11:
 LABEL
 JUMP .L15
.Lsub_occupation_1:
 LABEL
.L14:
 RETURN
.L15:
 LABEL
 JUMP .L19
.Lsub_member_2:
 LABEL
.L18:
 RETURN
.L19:
 LABEL
 JUMP .L23
.Lsub_occ_5:
 LABEL
.L22:
 RETURN
.L23:
 LABEL
 JUMP .L27
.Lsub_display_3:
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
# stmt 0  (line 10)
#=======================================================================================================================
 mov edi, 0
 call rt_set_stno@PLT
# SM_BB_PL_INVOKE main/0/0 (inline flat four-port)
.intel_syntax noprefix
 mov edi, 64
 call pl_bb_env_push@PLT
 bb27200_α:
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
 bb27088_α:
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
 je bb27088_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp .Lplent0_γ
bb27088_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp .Lplch1_c1_pre
 .Lplch1_c0_beta:
 call pl_cp_current@PLT
 test rax, rax
 je bb27088_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_puzzle_0_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb27088_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp .Lplent0_γ
bb27088_α_nosol: jmp .Lplch1_c1_pre
.Lplch1_c1_body:
 bb26976_α:
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
# PL CALLEE BLOCK differ/3/3
.intel_syntax noprefix
.Lplpred_differ_3: 
# env push/pop handled by caller (bb_pl_call site)
# redo entry: .Lplpred_differ_3_redo
 bb62048_α:
# BOX PL_CHOICE n=4 (WAM-CP-5 heap cursor, WAM-CP-9 cut)
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
 cmp edi, 4
 jge .Lplch4_exhausted
 cmp edi, 0
 je .Lplch4_c0_pre
 cmp edi, 1
 je .Lplch4_c1_pre
 cmp edi, 2
 je .Lplch4_c2_pre
 cmp edi, 3
 je .Lplch4_c3_pre
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
 bb75488_α:
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
 bb75152_α:
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
 bb74816_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 2
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
 jmp plseq5_g3_α
plseq5_g2_β: jmp .Lplpb3_β
plseq5_g3_α:
 bb74480_α:
# BOX PL_CUT
 call rt_pl_cut_set@PLT
 jmp plseq5_g4_α
plseq5_g3_β: jmp plseq5_g4_α
plseq5_g4_α:
 bb74368_α:
# BOX FAIL()
 jmp .Lplpb3_β
plseq5_g4_β: jmp .Lplpb3_β
.Lplch4_c0_beta:
 jmp .Lplpb3_β
.Lplch4_c1_body:
plseq6_g0_α:
 bb78384_α:
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
 jmp plseq6_g1_α
plseq6_g0_β: jmp .Lplpb3_β
plseq6_g1_α:
 bb78048_α:
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
 jmp plseq6_g2_α
plseq6_g1_β: jmp .Lplpb3_β
plseq6_g2_α:
 bb77712_α:
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
 je .Lplpb3_β
 jmp plseq6_g3_α
plseq6_g2_β: jmp .Lplpb3_β
plseq6_g3_α:
 bb77376_α:
# BOX PL_CUT
 call rt_pl_cut_set@PLT
 jmp plseq6_g4_α
plseq6_g3_β: jmp plseq6_g4_α
plseq6_g4_α:
 bb77264_α:
# BOX FAIL()
 jmp .Lplpb3_β
plseq6_g4_β: jmp .Lplpb3_β
.Lplch4_c1_beta:
 jmp .Lplpb3_β
.Lplch4_c2_body:
plseq7_g0_α:
 bb81232_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 0
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
 jmp plseq7_g1_α
plseq7_g0_β: jmp .Lplpb3_β
plseq7_g1_α:
 bb80896_α:
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
 je .Lplpb3_β
 jmp plseq7_g2_α
plseq7_g1_β: jmp .Lplpb3_β
plseq7_g2_α:
 bb80560_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 2
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
 je .Lplpb3_β
 jmp plseq7_g3_α
plseq7_g2_β: jmp .Lplpb3_β
plseq7_g3_α:
 bb80224_α:
# BOX PL_CUT
 call rt_pl_cut_set@PLT
 jmp plseq7_g4_α
plseq7_g3_β: jmp plseq7_g4_α
plseq7_g4_α:
 bb80112_α:
# BOX FAIL()
 jmp .Lplpb3_β
plseq7_g4_β: jmp .Lplpb3_β
.Lplch4_c2_beta:
 jmp .Lplpb3_β
.Lplch4_c3_body:
plseq8_g0_α:
 bb83712_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 0
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
 jmp plseq8_g1_α
plseq8_g0_β: jmp .Lplpb3_β
plseq8_g1_α:
 bb83376_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 1
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
 je .Lplpb3_β
 jmp plseq8_g2_α
plseq8_g1_β: jmp .Lplpb3_β
plseq8_g2_α:
 bb83040_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 2
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
 je .Lplpb3_β
 jmp .Lplch4_exit_γ
plseq8_g2_β: jmp .Lplpb3_β
.Lplch4_c3_beta:
 jmp .Lplpb3_β
.Lplpb3_γ: 
 mov rdi, 1
 call rt_set_last_ok@PLT
 ret
.Lplpb3_ω: 
 mov rdi, 0
 call rt_set_last_ok@PLT
 ret
.Lplpred_differ_3_redo: jmp .Lplpb3_β
# PL CALLEE BLOCK write_occ/5/5
.intel_syntax noprefix
.Lplpred_write_occ_5: 
# env push/pop handled by caller (bb_pl_call site)
# redo entry: .Lplpred_write_occ_5_redo
 bb84784_α:
# BOX PL_CHOICE n=3 (WAM-CP-5 heap cursor, WAM-CP-9 cut)
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
 .Lplch10_dispatch:
 call pl_cp_current@PLT
 mov edi, [rax + 48]
 cmp edi, 3
 jge .Lplch10_exhausted
 cmp edi, 0
 je .Lplch10_c0_pre
 cmp edi, 1
 je .Lplch10_c1_pre
 cmp edi, 2
 je .Lplch10_c2_pre
 jmp .Lplch10_exhausted
 .Lplch10_c0_pre:
 call pl_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch10_c0_body
 .Lplch10_c1_pre:
 call pl_cp_current@PLT
 mov edi, [rax + 16]
 call rt_pl_trail_unwind@PLT
 call pl_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch10_c1_body
 .Lplch10_c2_pre:
 call pl_cp_current@PLT
 mov edi, [rax + 16]
 call rt_pl_trail_unwind@PLT
 call pl_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch10_c2_body
 .Lplch10_exit_γ:
 call rt_pl_get_cut_flag@PLT
 test eax, eax
 jnz .Lplch10_cut_γ
 call pl_cp_current@PLT
 mov rdi, rax
 call rt_pl_choice_cut_exit@PLT
 jmp .Lplpb9_γ
 .Lplch10_cut_γ:
 call pl_cp_current@PLT
 mov rdi, rax
 call rt_pl_choice_cut_unwind@PLT
 jmp .Lplpb9_γ
 .Lplch10_cut_ω:
 call pl_cp_current@PLT
 mov rdi, rax
 call rt_pl_choice_cut_unwind@PLT
 jmp .Lplpb9_ω
 .Lplch10_exhausted:
 call pl_cp_current@PLT
 mov rdi, rax
 call rt_pl_choice_cut_exit@PLT
 call pl_cp_current@PLT
 mov edi, [rax + 16]
 call rt_pl_trail_unwind@PLT
 call pl_cp_pop@PLT
 jmp .Lplpb9_ω
 .Lplpb9_β:
 call rt_pl_get_cut_flag@PLT
 test eax, eax
 jnz .Lplch10_cut_ω
 call pl_cp_current@PLT
 test rax, rax
 je .Lplch10_β_nosol
 mov rdi, rax
 call rt_pl_choice_cut_enter@PLT
 jmp .Lplch10_dispatch
.Lplch10_β_nosol: jmp .Lplpb9_ω
.Lplch10_c0_body:
plseq11_g0_α:
 bb88736_α:
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
 je .Lplpb9_β
 jmp plseq11_g1_α
plseq11_g0_β: jmp .Lplpb9_β
plseq11_g1_α:
 bb88400_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 1
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
 je .Lplpb9_β
 jmp plseq11_g2_α
plseq11_g1_β: jmp .Lplpb9_β
plseq11_g2_α:
 bb88064_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 2
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
 je .Lplpb9_β
 jmp plseq11_g3_α
plseq11_g2_β: jmp .Lplpb9_β
plseq11_g3_α:
 bb87728_α:
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
 lea rdx, [rip + .S14]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb9_β
 jmp plseq11_g4_α
plseq11_g3_β: jmp .Lplpb9_β
plseq11_g4_α:
 bb87392_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 4
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
 je .Lplpb9_β
 jmp plseq11_g5_α
plseq11_g4_β: jmp .Lplpb9_β
plseq11_g5_α:
 bb86944_α:
 # BOX PL_BUILTIN(write/1)
 lea rcx, [rip + .S13]
 mov rdi, rcx
 call rt_pl_write_atom@PLT
 jmp plseq11_g6_α
plseq11_g5_β: jmp plseq11_g6_α
plseq11_g6_α:
 bb86720_α:
 # BOX PL_BUILTIN(write/1)
 mov edi, 0
 call rt_pl_write_var@PLT
 jmp plseq11_g7_α
plseq11_g6_β: jmp plseq11_g7_α
plseq11_g7_α:
 bb86496_α:
 # BOX PL_BUILTIN(write/1)
 lea rcx, [rip + .S12]
 mov rdi, rcx
 call rt_pl_write_atom@PLT
 jmp .Lplch10_exit_γ
plseq11_g7_β: jmp .Lplch10_exit_γ
.Lplch10_c0_beta:
 jmp .Lplpb9_β
.Lplch10_c1_body:
plseq12_g0_α:
 bb92880_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 0
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
 je .Lplpb9_β
 jmp plseq12_g1_α
plseq12_g0_β: jmp .Lplpb9_β
plseq12_g1_α:
 bb92544_α:
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
 je .Lplpb9_β
 jmp plseq12_g2_α
plseq12_g1_β: jmp .Lplpb9_β
plseq12_g2_α:
 bb92208_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 2
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
 je .Lplpb9_β
 jmp plseq12_g3_α
plseq12_g2_β: jmp .Lplpb9_β
plseq12_g3_α:
 bb91872_α:
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
 lea rdx, [rip + .S16]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb9_β
 jmp plseq12_g4_α
plseq12_g3_β: jmp .Lplpb9_β
plseq12_g4_α:
 bb91536_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 4
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
 je .Lplpb9_β
 jmp plseq12_g5_α
plseq12_g4_β: jmp .Lplpb9_β
plseq12_g5_α:
 bb91088_α:
 # BOX PL_BUILTIN(write/1)
 lea rcx, [rip + .S15]
 mov rdi, rcx
 call rt_pl_write_atom@PLT
 jmp plseq12_g6_α
plseq12_g5_β: jmp plseq12_g6_α
plseq12_g6_α:
 bb90864_α:
 # BOX PL_BUILTIN(write/1)
 mov edi, 1
 call rt_pl_write_var@PLT
 jmp plseq12_g7_α
plseq12_g6_β: jmp plseq12_g7_α
plseq12_g7_α:
 bb90640_α:
 # BOX PL_BUILTIN(write/1)
 lea rcx, [rip + .S12]
 mov rdi, rcx
 call rt_pl_write_atom@PLT
 jmp .Lplch10_exit_γ
plseq12_g7_β: jmp .Lplch10_exit_γ
.Lplch10_c1_beta:
 jmp .Lplpb9_β
.Lplch10_c2_body:
plseq13_g0_α:
 bb96864_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 0
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
 je .Lplpb9_β
 jmp plseq13_g1_α
plseq13_g0_β: jmp .Lplpb9_β
plseq13_g1_α:
 bb96528_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 1
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
 je .Lplpb9_β
 jmp plseq13_g2_α
plseq13_g1_β: jmp .Lplpb9_β
plseq13_g2_α:
 bb96192_α:
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
 je .Lplpb9_β
 jmp plseq13_g3_α
plseq13_g2_β: jmp .Lplpb9_β
plseq13_g3_α:
 bb95856_α:
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
 lea rdx, [rip + .S18]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb9_β
 jmp plseq13_g4_α
plseq13_g3_β: jmp .Lplpb9_β
plseq13_g4_α:
 bb95520_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 4
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
 je .Lplpb9_β
 jmp plseq13_g5_α
plseq13_g4_β: jmp .Lplpb9_β
plseq13_g5_α:
 bb95072_α:
 # BOX PL_BUILTIN(write/1)
 lea rcx, [rip + .S17]
 mov rdi, rcx
 call rt_pl_write_atom@PLT
 jmp plseq13_g6_α
plseq13_g5_β: jmp plseq13_g6_α
plseq13_g6_α:
 bb94848_α:
 # BOX PL_BUILTIN(write/1)
 mov edi, 2
 call rt_pl_write_var@PLT
 jmp plseq13_g7_α
plseq13_g6_β: jmp plseq13_g7_α
plseq13_g7_α:
 bb94624_α:
 # BOX PL_BUILTIN(write/1)
 lea rcx, [rip + .S12]
 mov rdi, rcx
 call rt_pl_write_atom@PLT
 jmp .Lplch10_exit_γ
plseq13_g7_β: jmp .Lplch10_exit_γ
.Lplch10_c2_beta:
 jmp .Lplpb9_β
.Lplpb9_γ: 
 mov rdi, 1
 call rt_set_last_ok@PLT
 ret
.Lplpb9_ω: 
 mov rdi, 0
 call rt_set_last_ok@PLT
 ret
.Lplpred_write_occ_5_redo: jmp .Lplpb9_β
# PL CALLEE BLOCK puzzle/0/0
.intel_syntax noprefix
.Lplpred_puzzle_0: 
# env push/pop handled by caller (bb_pl_call site)
# redo entry: .Lplpred_puzzle_0_redo
plseq15_g0_α:
 bb576_α:
# BOX PL_CALL occupation/1 (WAM-CP-5, n_args=1)
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
 call .Lplpred_occupation_1
 pop rdi
 add rsp, 8
 call rt_last_ok@PLT
 test eax, eax
 je bb576_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq15_g1_α
bb576_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp .Lplpb14_ω
 plseq15_g0_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb576_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_occupation_1_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb576_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq15_g1_α
bb576_α_nosol: jmp .Lplpb14_ω
plseq15_g1_α:
 bb352_α:
# BOX PL_CALL occupation/1 (WAM-CP-5, n_args=1)
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
 call .Lplpred_occupation_1
 pop rdi
 add rsp, 8
 call rt_last_ok@PLT
 test eax, eax
 je bb352_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq15_g2_α
bb352_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq15_g0_β
 plseq15_g1_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb352_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_occupation_1_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb352_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq15_g2_α
bb352_α_nosol: jmp plseq15_g0_β
plseq15_g2_α:
 bb128_α:
# BOX PL_CALL occupation/1 (WAM-CP-5, n_args=1)
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
 call .Lplpred_occupation_1
 pop rdi
 add rsp, 8
 call rt_last_ok@PLT
 test eax, eax
 je bb128_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq15_g3_α
bb128_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq15_g1_β
 plseq15_g2_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb128_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_occupation_1_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb128_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq15_g3_α
bb128_α_nosol: jmp plseq15_g1_β
plseq15_g3_α:
 bb99680_α:
# BOX PL_CALL differ/3 (WAM-CP-5, n_args=3)
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
 mov edi, 19
 call pl_bb_env_save_push@PLT
 push rax
 mov rsi, [rsp + 8]
 mov edi, 2
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 16]
 mov edi, 1
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 24]
 mov edi, 0
 call pl_bb_bind_arg@PLT
 call .Lplpred_differ_3
 pop rdi
 add rsp, 24
 call rt_last_ok@PLT
 test eax, eax
 je bb99680_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq15_g4_α
bb99680_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq15_g2_β
 plseq15_g3_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb99680_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_differ_3_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb99680_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq15_g4_α
bb99680_α_nosol: jmp plseq15_g2_β
plseq15_g4_α:
 bb99568_α:
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
 lea rdx, [rip + .S18]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je plseq15_g3_β
 jmp plseq15_g5_α
plseq15_g4_β: jmp plseq15_g3_β
plseq15_g5_α:
 bb99008_α:
# BOX PL_CALL \=/2 (WAM-CP-5, n_args=2)
 mov edi, 56
 mov rsi, 1
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S14]
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
 je bb99008_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq15_g6_α
bb99008_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq15_g3_β
 plseq15_g5_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb99008_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred____2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb99008_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq15_g6_α
bb99008_α_nosol: jmp plseq15_g3_β
plseq15_g6_α:
 bb98560_α:
# BOX PL_CALL display/3 (WAM-CP-5, n_args=3)
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
 mov edi, 19
 call pl_bb_env_save_push@PLT
 push rax
 mov rsi, [rsp + 8]
 mov edi, 2
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 16]
 mov edi, 1
 call pl_bb_bind_arg@PLT
 mov rsi, [rsp + 24]
 mov edi, 0
 call pl_bb_bind_arg@PLT
 call .Lplpred_display_3
 pop rdi
 add rsp, 24
 call rt_last_ok@PLT
 test eax, eax
 je bb98560_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq15_g7_α
bb98560_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq15_g5_β
 plseq15_g6_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb98560_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_display_3_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb98560_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq15_g7_α
bb98560_α_nosol: jmp plseq15_g5_β
plseq15_g7_α:
 bb98448_α:
# BOX FAIL()
 jmp plseq15_g6_β
plseq15_g7_β: jmp plseq15_g6_β
.Lplpb14_β:
 jmp plseq15_g6_β
.Lplpb14_γ: 
 mov rdi, 1
 call rt_set_last_ok@PLT
 ret
.Lplpb14_ω: 
 mov rdi, 0
 call rt_set_last_ok@PLT
 ret
.Lplpred_puzzle_0_redo: jmp .Lplpb14_β
# PL CALLEE BLOCK occupation/1/1
.intel_syntax noprefix
.Lplpred_occupation_1: 
# env push/pop handled by caller (bb_pl_call site)
# redo entry: .Lplpred_occupation_1_redo
plseq17_g0_α:
 bb3456_α:
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
 bb94464_α:
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
 lea rdx, [rip + .S14]
 xor ecx, ecx
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S16]
 xor ecx, ecx
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S18]
 xor ecx, ecx
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S24]
 xor ecx, ecx
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S25]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S25]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_build_n@PLT
 add rsp, 16
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
 call .Lplpred_member_2
 add rsp, 8
 pop rdi
 add rsp, 16
 call rt_last_ok@PLT
 test eax, eax
 je bb94464_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp .Lplpb16_γ
bb94464_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp .Lplpb16_ω
 plseq17_g1_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb94464_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_member_2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb94464_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp .Lplpb16_γ
bb94464_α_nosol: jmp .Lplpb16_ω
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
.Lplpred_occupation_1_redo: jmp .Lplpb16_β
# PL CALLEE BLOCK member/2/2
.intel_syntax noprefix
.Lplpred_member_2: 
# env push/pop handled by caller (bb_pl_call site)
# redo entry: .Lplpred_member_2_redo
 bb4528_α:
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
 .Lplch19_dispatch:
 call pl_cp_current@PLT
 mov edi, [rax + 48]
 cmp edi, 2
 jge .Lplch19_exhausted
 cmp edi, 0
 je .Lplch19_c0_pre
 cmp edi, 1
 je .Lplch19_c1_pre
 jmp .Lplch19_exhausted
 .Lplch19_c0_pre:
 call pl_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch19_c0_body
 .Lplch19_c1_pre:
 call pl_cp_current@PLT
 mov edi, [rax + 16]
 call rt_pl_trail_unwind@PLT
 call pl_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch19_c1_body
 .Lplch19_exit_γ:
 call rt_pl_get_cut_flag@PLT
 test eax, eax
 jnz .Lplch19_cut_γ
 call pl_cp_current@PLT
 mov rdi, rax
 call rt_pl_choice_cut_exit@PLT
 jmp .Lplpb18_γ
 .Lplch19_cut_γ:
 call pl_cp_current@PLT
 mov rdi, rax
 call rt_pl_choice_cut_unwind@PLT
 jmp .Lplpb18_γ
 .Lplch19_cut_ω:
 call pl_cp_current@PLT
 mov rdi, rax
 call rt_pl_choice_cut_unwind@PLT
 jmp .Lplpb18_ω
 .Lplch19_exhausted:
 call pl_cp_current@PLT
 mov rdi, rax
 call rt_pl_choice_cut_exit@PLT
 call pl_cp_current@PLT
 mov edi, [rax + 16]
 call rt_pl_trail_unwind@PLT
 call pl_cp_pop@PLT
 jmp .Lplpb18_ω
 .Lplpb18_β:
 call rt_pl_get_cut_flag@PLT
 test eax, eax
 jnz .Lplch19_cut_ω
 call pl_cp_current@PLT
 test rax, rax
 je .Lplch19_β_nosol
 mov rdi, rax
 call rt_pl_choice_cut_enter@PLT
 jmp .Lplch19_dispatch
.Lplch19_β_nosol: jmp .Lplpb18_ω
.Lplch19_c0_body:
plseq20_g0_α:
 bb6848_α:
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
 je .Lplpb18_β
 jmp plseq20_g1_α
plseq20_g0_β: jmp .Lplpb18_β
plseq20_g1_α:
 bb6512_α:
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
 lea rdi, [rip + .S25]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_build_n@PLT
 add rsp, 16
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb18_β
 jmp .Lplch19_exit_γ
plseq20_g1_β: jmp .Lplpb18_β
.Lplch19_c0_beta:
 jmp .Lplpb18_β
.Lplch19_c1_body:
plseq21_g0_α:
 bb9648_α:
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
 je .Lplpb18_β
 jmp plseq21_g1_α
plseq21_g0_β: jmp .Lplpb18_β
plseq21_g1_α:
 bb9312_α:
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
 lea rdi, [rip + .S25]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_build_n@PLT
 add rsp, 16
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb18_β
 jmp plseq21_g2_α
plseq21_g1_β: jmp .Lplpb18_β
plseq21_g2_α:
 bb8528_α:
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
 je bb8528_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp .Lplch19_exit_γ
bb8528_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp .Lplpb18_β
 plseq21_g2_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb8528_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_member_2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb8528_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp .Lplch19_exit_γ
bb8528_α_nosol: jmp .Lplpb18_β
.Lplch19_c1_beta:
 jmp plseq21_g2_β
.Lplpb18_γ: 
 mov rdi, 1
 call rt_set_last_ok@PLT
 ret
.Lplpb18_ω: 
 mov rdi, 0
 call rt_set_last_ok@PLT
 ret
.Lplpred_member_2_redo: jmp .Lplpb18_β
# PL CALLEE BLOCK occ/5/5
.intel_syntax noprefix
.Lplpred_occ_5: 
# env push/pop handled by caller (bb_pl_call site)
# redo entry: .Lplpred_occ_5_redo
 bb10720_α:
# BOX PL_CHOICE n=3 (WAM-CP-5 heap cursor, WAM-CP-9 cut)
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
 .Lplch23_dispatch:
 call pl_cp_current@PLT
 mov edi, [rax + 48]
 cmp edi, 3
 jge .Lplch23_exhausted
 cmp edi, 0
 je .Lplch23_c0_pre
 cmp edi, 1
 je .Lplch23_c1_pre
 cmp edi, 2
 je .Lplch23_c2_pre
 jmp .Lplch23_exhausted
 .Lplch23_c0_pre:
 call pl_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch23_c0_body
 .Lplch23_c1_pre:
 call pl_cp_current@PLT
 mov edi, [rax + 16]
 call rt_pl_trail_unwind@PLT
 call pl_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch23_c1_body
 .Lplch23_c2_pre:
 call pl_cp_current@PLT
 mov edi, [rax + 16]
 call rt_pl_trail_unwind@PLT
 call pl_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch23_c2_body
 .Lplch23_exit_γ:
 call rt_pl_get_cut_flag@PLT
 test eax, eax
 jnz .Lplch23_cut_γ
 call pl_cp_current@PLT
 mov rdi, rax
 call rt_pl_choice_cut_exit@PLT
 jmp .Lplpb22_γ
 .Lplch23_cut_γ:
 call pl_cp_current@PLT
 mov rdi, rax
 call rt_pl_choice_cut_unwind@PLT
 jmp .Lplpb22_γ
 .Lplch23_cut_ω:
 call pl_cp_current@PLT
 mov rdi, rax
 call rt_pl_choice_cut_unwind@PLT
 jmp .Lplpb22_ω
 .Lplch23_exhausted:
 call pl_cp_current@PLT
 mov rdi, rax
 call rt_pl_choice_cut_exit@PLT
 call pl_cp_current@PLT
 mov edi, [rax + 16]
 call rt_pl_trail_unwind@PLT
 call pl_cp_pop@PLT
 jmp .Lplpb22_ω
 .Lplpb22_β:
 call rt_pl_get_cut_flag@PLT
 test eax, eax
 jnz .Lplch23_cut_ω
 call pl_cp_current@PLT
 test rax, rax
 je .Lplch23_β_nosol
 mov rdi, rax
 call rt_pl_choice_cut_enter@PLT
 jmp .Lplch23_dispatch
.Lplch23_β_nosol: jmp .Lplpb22_ω
.Lplch23_c0_body:
plseq24_g0_α:
 bb13920_α:
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
 lea rdx, [rip + .S26]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb22_β
 jmp plseq24_g1_α
plseq24_g0_β: jmp .Lplpb22_β
plseq24_g1_α:
 bb13584_α:
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
 je .Lplpb22_β
 jmp plseq24_g2_α
plseq24_g1_β: jmp .Lplpb22_β
plseq24_g2_α:
 bb13248_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 2
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
 je .Lplpb22_β
 jmp plseq24_g3_α
plseq24_g2_β: jmp .Lplpb22_β
plseq24_g3_α:
 bb12912_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 3
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
 je .Lplpb22_β
 jmp plseq24_g4_α
plseq24_g3_β: jmp .Lplpb22_β
plseq24_g4_α:
 bb12576_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 4
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
 je .Lplpb22_β
 jmp .Lplch23_exit_γ
plseq24_g4_β: jmp .Lplpb22_β
.Lplch23_c0_beta:
 jmp .Lplpb22_β
.Lplch23_c1_body:
plseq25_g0_α:
 bb17168_α:
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
 lea rdx, [rip + .S27]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb22_β
 jmp plseq25_g1_α
plseq25_g0_β: jmp .Lplpb22_β
plseq25_g1_α:
 bb16832_α:
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
 je .Lplpb22_β
 jmp plseq25_g2_α
plseq25_g1_β: jmp .Lplpb22_β
plseq25_g2_α:
 bb16496_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 2
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
 je .Lplpb22_β
 jmp plseq25_g3_α
plseq25_g2_β: jmp .Lplpb22_β
plseq25_g3_α:
 bb16160_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 3
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
 je .Lplpb22_β
 jmp plseq25_g4_α
plseq25_g3_β: jmp .Lplpb22_β
plseq25_g4_α:
 bb15824_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 4
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
 je .Lplpb22_β
 jmp .Lplch23_exit_γ
plseq25_g4_β: jmp .Lplpb22_β
.Lplch23_c1_beta:
 jmp .Lplpb22_β
.Lplch23_c2_body:
plseq26_g0_α:
 bb20416_α:
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
 lea rdx, [rip + .S28]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb22_β
 jmp plseq26_g1_α
plseq26_g0_β: jmp .Lplpb22_β
plseq26_g1_α:
 bb20080_α:
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
 je .Lplpb22_β
 jmp plseq26_g2_α
plseq26_g1_β: jmp .Lplpb22_β
plseq26_g2_α:
 bb19744_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 2
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
 je .Lplpb22_β
 jmp plseq26_g3_α
plseq26_g2_β: jmp .Lplpb22_β
plseq26_g3_α:
 bb19408_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 3
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
 je .Lplpb22_β
 jmp plseq26_g4_α
plseq26_g3_β: jmp .Lplpb22_β
plseq26_g4_α:
 bb19072_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 4
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
 je .Lplpb22_β
 jmp .Lplch23_exit_γ
plseq26_g4_β: jmp .Lplpb22_β
.Lplch23_c2_beta:
 jmp .Lplpb22_β
.Lplpb22_γ: 
 mov rdi, 1
 call rt_set_last_ok@PLT
 ret
.Lplpb22_ω: 
 mov rdi, 0
 call rt_set_last_ok@PLT
 ret
.Lplpred_occ_5_redo: jmp .Lplpb22_β
# PL CALLEE BLOCK display/3/3
.intel_syntax noprefix
.Lplpred_display_3: 
# env push/pop handled by caller (bb_pl_call site)
# redo entry: .Lplpred_display_3_redo
plseq28_g0_α:
 bb25328_α:
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
 je .Lplpb27_ω
 jmp plseq28_g1_α
plseq28_g0_β: jmp .Lplpb27_ω
plseq28_g1_α:
 bb24992_α:
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
 je .Lplpb27_ω
 jmp plseq28_g2_α
plseq28_g1_β: jmp .Lplpb27_ω
plseq28_g2_α:
 bb24656_α:
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
 je .Lplpb27_ω
 jmp plseq28_g3_α
plseq28_g2_β: jmp .Lplpb27_ω
plseq28_g3_α:
 bb23760_α:
# BOX PL_CALL write_occ/5 (WAM-CP-5, n_args=5)
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
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S14]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S26]
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
 call .Lplpred_write_occ_5
 pop rdi
 add rsp, 40
 call rt_last_ok@PLT
 test eax, eax
 je bb23760_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq28_g4_α
bb23760_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp .Lplpb27_ω
 plseq28_g3_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb23760_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_write_occ_5_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb23760_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq28_g4_α
bb23760_α_nosol: jmp .Lplpb27_ω
plseq28_g4_α:
 bb23088_α:
# BOX PL_CALL write_occ/5 (WAM-CP-5, n_args=5)
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
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S16]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S27]
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
 call .Lplpred_write_occ_5
 pop rdi
 add rsp, 40
 call rt_last_ok@PLT
 test eax, eax
 je bb23088_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq28_g5_α
bb23088_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq28_g3_β
 plseq28_g4_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb23088_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_write_occ_5_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb23088_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq28_g5_α
bb23088_α_nosol: jmp plseq28_g3_β
plseq28_g5_α:
 bb22416_α:
# BOX PL_CALL write_occ/5 (WAM-CP-5, n_args=5)
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
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S18]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S28]
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
 call .Lplpred_write_occ_5
 pop rdi
 add rsp, 40
 call rt_last_ok@PLT
 test eax, eax
 je bb22416_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq28_g6_α
bb22416_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq28_g4_β
 plseq28_g5_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb22416_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_write_occ_5_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb22416_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq28_g6_α
bb22416_α_nosol: jmp plseq28_g4_β
plseq28_g6_α:
 bb22192_α:
 # BOX PL_BUILTIN(write/1)
 lea rcx, [rip + .S29]
 mov rdi, rcx
 call rt_pl_write_atom@PLT
 jmp .Lplpb27_γ
plseq28_g6_β: jmp .Lplpb27_γ
.Lplpb27_β:
 jmp plseq28_g5_β
.Lplpb27_γ: 
 mov rdi, 1
 call rt_set_last_ok@PLT
 ret
.Lplpb27_ω: 
 mov rdi, 0
 call rt_set_last_ok@PLT
 ret
.Lplpred_display_3_redo: jmp .Lplpb27_β
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
