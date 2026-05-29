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
.S1: .string "differ/4"
.S2: .string "dance_partner/5"
.S3: .string "puzzle/0"
.S4: .string "member/2"
.S5: .string "wife/1"
.S6: .string "display/4"
.S7: .string "husband_of/6"
.S8: .string "main/0"
.S9: .string "("
.S10: .string ","
.S11: .string ")"
.S12: .string "betty"
.S13: .string "ed"
.S14: .string "frank"
.S15: .string "george"
.S16: .string "differ"
.S17: .string "member"
.S18: .string "[]"
.S19: .string "dorothy"
.S20: .string "."
.S21: .string "carol"
.S22: .string "alice"
.S23: .string "harry"
.S24: .string "display"
.S25: .string "dance_partner"
.S26: .string "husband_of"
.S27: .string "wife"
.S28: .string "write"
.S29: .string "\n"
.S30: .string " Harry="
.S31: .string " George="
.S32: .string " Frank="
.S33: .string "Ed="
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
.Lsub_differ_4:
 LABEL
.L6:
 RETURN
.L7:
 LABEL
 JUMP .L11
.Lsub_dance_partner_5:
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
.Lsub_member_2:
 LABEL
.L18:
 RETURN
.L19:
 LABEL
 JUMP .L23
.Lsub_wife_1:
 LABEL
.L22:
 RETURN
.L23:
 LABEL
 JUMP .L27
.Lsub_display_4:
 LABEL
.L26:
 RETURN
.L27:
 LABEL
 JUMP .L31
.Lsub_husband_of_6:
 LABEL
.L30:
 RETURN
.L31:
 LABEL
 JUMP .L35
.Lsub_main_0:
 LABEL
.L34:
 RETURN
.L35:
 LABEL
#=======================================================================================================================
# stmt 0  (line 9)
#=======================================================================================================================
 mov edi, 0
 call rt_set_stno@PLT
# SM_BB_PL_INVOKE main/0/0 (inline flat four-port)
.intel_syntax noprefix
 mov edi, 64
 call pl_bb_env_push@PLT
 bb87568_α:
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
 bb87456_α:
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
 je bb87456_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp .Lplent0_γ
bb87456_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp .Lplch1_c1_pre
 .Lplch1_c0_beta:
 call pl_cp_current@PLT
 test rax, rax
 je bb87456_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_puzzle_0_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb87456_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp .Lplent0_γ
bb87456_α_nosol: jmp .Lplch1_c1_pre
.Lplch1_c1_body:
 bb73376_α:
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
 bb5264_α:
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
 bb7712_α:
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
 bb7376_α:
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
 bb7040_α:
# BOX PL_CUT
 call rt_pl_cut_set@PLT
 jmp plseq5_g3_α
plseq5_g2_β: jmp plseq5_g3_α
plseq5_g3_α:
 bb6928_α:
# BOX FAIL()
 jmp .Lplpb3_β
plseq5_g3_β: jmp .Lplpb3_β
.Lplch4_c0_beta:
 jmp .Lplpb3_β
.Lplch4_c1_body:
plseq6_g0_α:
 bb9984_α:
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
 bb9648_α:
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
# PL CALLEE BLOCK differ/4/4
.intel_syntax noprefix
.Lplpred_differ_4: 
# env push/pop handled by caller (bb_pl_call site)
# redo entry: .Lplpred_differ_4_redo
 bb11056_α:
# BOX PL_CHOICE n=7 (WAM-CP-5 heap cursor, WAM-CP-9 cut)
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
 cmp edi, 7
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
 bb14240_α:
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
 je .Lplpb7_β
 jmp plseq9_g1_α
plseq9_g0_β: jmp .Lplpb7_β
plseq9_g1_α:
 bb13904_α:
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
 je .Lplpb7_β
 jmp plseq9_g2_α
plseq9_g1_β: jmp .Lplpb7_β
plseq9_g2_α:
 bb13568_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 2
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
 je .Lplpb7_β
 jmp plseq9_g3_α
plseq9_g2_β: jmp .Lplpb7_β
plseq9_g3_α:
 bb13232_α:
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
 je .Lplpb7_β
 jmp plseq9_g4_α
plseq9_g3_β: jmp .Lplpb7_β
plseq9_g4_α:
 bb12896_α:
# BOX PL_CUT
 call rt_pl_cut_set@PLT
 jmp plseq9_g5_α
plseq9_g4_β: jmp plseq9_g5_α
plseq9_g5_α:
 bb12784_α:
# BOX FAIL()
 jmp .Lplpb7_β
plseq9_g5_β: jmp .Lplpb7_β
.Lplch8_c0_beta:
 jmp .Lplpb7_β
.Lplch8_c1_body:
plseq10_g0_α:
 bb17536_α:
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
 je .Lplpb7_β
 jmp plseq10_g1_α
plseq10_g0_β: jmp .Lplpb7_β
plseq10_g1_α:
 bb17200_α:
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
 je .Lplpb7_β
 jmp plseq10_g2_α
plseq10_g1_β: jmp .Lplpb7_β
plseq10_g2_α:
 bb16864_α:
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
 je .Lplpb7_β
 jmp plseq10_g3_α
plseq10_g2_β: jmp .Lplpb7_β
plseq10_g3_α:
 bb16528_α:
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
 je .Lplpb7_β
 jmp plseq10_g4_α
plseq10_g3_β: jmp .Lplpb7_β
plseq10_g4_α:
 bb16192_α:
# BOX PL_CUT
 call rt_pl_cut_set@PLT
 jmp plseq10_g5_α
plseq10_g4_β: jmp plseq10_g5_α
plseq10_g5_α:
 bb16080_α:
# BOX FAIL()
 jmp .Lplpb7_β
plseq10_g5_β: jmp .Lplpb7_β
.Lplch8_c1_beta:
 jmp .Lplpb7_β
.Lplch8_c2_body:
plseq11_g0_α:
 bb20768_α:
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
 je .Lplpb7_β
 jmp plseq11_g1_α
plseq11_g0_β: jmp .Lplpb7_β
plseq11_g1_α:
 bb20432_α:
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
 je .Lplpb7_β
 jmp plseq11_g2_α
plseq11_g1_β: jmp .Lplpb7_β
plseq11_g2_α:
 bb20096_α:
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
 je .Lplpb7_β
 jmp plseq11_g3_α
plseq11_g2_β: jmp .Lplpb7_β
plseq11_g3_α:
 bb19760_α:
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
 je .Lplpb7_β
 jmp plseq11_g4_α
plseq11_g3_β: jmp .Lplpb7_β
plseq11_g4_α:
 bb19424_α:
# BOX PL_CUT
 call rt_pl_cut_set@PLT
 jmp plseq11_g5_α
plseq11_g4_β: jmp plseq11_g5_α
plseq11_g5_α:
 bb19312_α:
# BOX FAIL()
 jmp .Lplpb7_β
plseq11_g5_β: jmp .Lplpb7_β
.Lplch8_c2_beta:
 jmp .Lplpb7_β
.Lplch8_c3_body:
plseq12_g0_α:
 bb23808_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 0
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
 je .Lplpb7_β
 jmp plseq12_g1_α
plseq12_g0_β: jmp .Lplpb7_β
plseq12_g1_α:
 bb23472_α:
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
 je .Lplpb7_β
 jmp plseq12_g2_α
plseq12_g1_β: jmp .Lplpb7_β
plseq12_g2_α:
 bb23136_α:
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
 je .Lplpb7_β
 jmp plseq12_g3_α
plseq12_g2_β: jmp .Lplpb7_β
plseq12_g3_α:
 bb22800_α:
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
 je .Lplpb7_β
 jmp plseq12_g4_α
plseq12_g3_β: jmp .Lplpb7_β
plseq12_g4_α:
 bb22464_α:
# BOX PL_CUT
 call rt_pl_cut_set@PLT
 jmp plseq12_g5_α
plseq12_g4_β: jmp plseq12_g5_α
plseq12_g5_α:
 bb22352_α:
# BOX FAIL()
 jmp .Lplpb7_β
plseq12_g5_β: jmp .Lplpb7_β
.Lplch8_c3_beta:
 jmp .Lplpb7_β
.Lplch8_c4_body:
plseq13_g0_α:
 bb26848_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 0
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
 je .Lplpb7_β
 jmp plseq13_g1_α
plseq13_g0_β: jmp .Lplpb7_β
plseq13_g1_α:
 bb26512_α:
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
 je .Lplpb7_β
 jmp plseq13_g2_α
plseq13_g1_β: jmp .Lplpb7_β
plseq13_g2_α:
 bb26176_α:
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
 je .Lplpb7_β
 jmp plseq13_g3_α
plseq13_g2_β: jmp .Lplpb7_β
plseq13_g3_α:
 bb25840_α:
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
 je .Lplpb7_β
 jmp plseq13_g4_α
plseq13_g3_β: jmp .Lplpb7_β
plseq13_g4_α:
 bb25504_α:
# BOX PL_CUT
 call rt_pl_cut_set@PLT
 jmp plseq13_g5_α
plseq13_g4_β: jmp plseq13_g5_α
plseq13_g5_α:
 bb25392_α:
# BOX FAIL()
 jmp .Lplpb7_β
plseq13_g5_β: jmp .Lplpb7_β
.Lplch8_c4_beta:
 jmp .Lplpb7_β
.Lplch8_c5_body:
plseq14_g0_α:
 bb29888_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 0
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
 je .Lplpb7_β
 jmp plseq14_g1_α
plseq14_g0_β: jmp .Lplpb7_β
plseq14_g1_α:
 bb29552_α:
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
 je .Lplpb7_β
 jmp plseq14_g2_α
plseq14_g1_β: jmp .Lplpb7_β
plseq14_g2_α:
 bb29216_α:
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
 je .Lplpb7_β
 jmp plseq14_g3_α
plseq14_g2_β: jmp .Lplpb7_β
plseq14_g3_α:
 bb28880_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 3
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
 je .Lplpb7_β
 jmp plseq14_g4_α
plseq14_g3_β: jmp .Lplpb7_β
plseq14_g4_α:
 bb28544_α:
# BOX PL_CUT
 call rt_pl_cut_set@PLT
 jmp plseq14_g5_α
plseq14_g4_β: jmp plseq14_g5_α
plseq14_g5_α:
 bb28432_α:
# BOX FAIL()
 jmp .Lplpb7_β
plseq14_g5_β: jmp .Lplpb7_β
.Lplch8_c5_beta:
 jmp .Lplpb7_β
.Lplch8_c6_body:
plseq15_g0_α:
 bb32704_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 0
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
 je .Lplpb7_β
 jmp plseq15_g1_α
plseq15_g0_β: jmp .Lplpb7_β
plseq15_g1_α:
 bb32368_α:
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
 je .Lplpb7_β
 jmp plseq15_g2_α
plseq15_g1_β: jmp .Lplpb7_β
plseq15_g2_α:
 bb32032_α:
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
 je .Lplpb7_β
 jmp plseq15_g3_α
plseq15_g2_β: jmp .Lplpb7_β
plseq15_g3_α:
 bb31696_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 3
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
 je .Lplpb7_β
 jmp .Lplch8_exit_γ
plseq15_g3_β: jmp .Lplpb7_β
.Lplch8_c6_beta:
 jmp .Lplpb7_β
.Lplpb7_γ: 
 mov rdi, 1
 call rt_set_last_ok@PLT
 ret
.Lplpb7_ω: 
 mov rdi, 0
 call rt_set_last_ok@PLT
 ret
.Lplpred_differ_4_redo: jmp .Lplpb7_β
# PL CALLEE BLOCK dance_partner/5/5
.intel_syntax noprefix
.Lplpred_dance_partner_5: 
# env push/pop handled by caller (bb_pl_call site)
# redo entry: .Lplpred_dance_partner_5_redo
 bb33776_α:
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
 .Lplch17_dispatch:
 call pl_cp_current@PLT
 mov edi, [rax + 48]
 cmp edi, 4
 jge .Lplch17_exhausted
 cmp edi, 0
 je .Lplch17_c0_pre
 cmp edi, 1
 je .Lplch17_c1_pre
 cmp edi, 2
 je .Lplch17_c2_pre
 cmp edi, 3
 je .Lplch17_c3_pre
 jmp .Lplch17_exhausted
 .Lplch17_c0_pre:
 call pl_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch17_c0_body
 .Lplch17_c1_pre:
 call pl_cp_current@PLT
 mov edi, [rax + 16]
 call rt_pl_trail_unwind@PLT
 call pl_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch17_c1_body
 .Lplch17_c2_pre:
 call pl_cp_current@PLT
 mov edi, [rax + 16]
 call rt_pl_trail_unwind@PLT
 call pl_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch17_c2_body
 .Lplch17_c3_pre:
 call pl_cp_current@PLT
 mov edi, [rax + 16]
 call rt_pl_trail_unwind@PLT
 call pl_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch17_c3_body
 .Lplch17_exit_γ:
 call rt_pl_get_cut_flag@PLT
 test eax, eax
 jnz .Lplch17_cut_γ
 call pl_cp_current@PLT
 mov rdi, rax
 call rt_pl_choice_cut_exit@PLT
 jmp .Lplpb16_γ
 .Lplch17_cut_γ:
 call pl_cp_current@PLT
 mov rdi, rax
 call rt_pl_choice_cut_unwind@PLT
 jmp .Lplpb16_γ
 .Lplch17_cut_ω:
 call pl_cp_current@PLT
 mov rdi, rax
 call rt_pl_choice_cut_unwind@PLT
 jmp .Lplpb16_ω
 .Lplch17_exhausted:
 call pl_cp_current@PLT
 mov rdi, rax
 call rt_pl_choice_cut_exit@PLT
 call pl_cp_current@PLT
 mov edi, [rax + 16]
 call rt_pl_trail_unwind@PLT
 call pl_cp_pop@PLT
 jmp .Lplpb16_ω
 .Lplpb16_β:
 call rt_pl_get_cut_flag@PLT
 test eax, eax
 jnz .Lplch17_cut_ω
 call pl_cp_current@PLT
 test rax, rax
 je .Lplch17_β_nosol
 mov rdi, rax
 call rt_pl_choice_cut_enter@PLT
 jmp .Lplch17_dispatch
.Lplch17_β_nosol: jmp .Lplpb16_ω
.Lplch17_c0_body:
plseq18_g0_α:
 bb36912_α:
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
 je .Lplpb16_β
 jmp plseq18_g1_α
plseq18_g0_β: jmp .Lplpb16_β
plseq18_g1_α:
 bb36576_α:
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
 je .Lplpb16_β
 jmp plseq18_g2_α
plseq18_g1_β: jmp .Lplpb16_β
plseq18_g2_α:
 bb36240_α:
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
 je .Lplpb16_β
 jmp plseq18_g3_α
plseq18_g2_β: jmp .Lplpb16_β
plseq18_g3_α:
 bb35904_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 3
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
 je .Lplpb16_β
 jmp plseq18_g4_α
plseq18_g3_β: jmp .Lplpb16_β
plseq18_g4_α:
 bb35568_α:
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
 lea rdx, [rip + .S12]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb16_β
 jmp .Lplch17_exit_γ
plseq18_g4_β: jmp .Lplpb16_β
.Lplch17_c0_beta:
 jmp .Lplpb16_β
.Lplch17_c1_body:
plseq19_g0_α:
 bb40064_α:
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
 je .Lplpb16_β
 jmp plseq19_g1_α
plseq19_g0_β: jmp .Lplpb16_β
plseq19_g1_α:
 bb39728_α:
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
 je .Lplpb16_β
 jmp plseq19_g2_α
plseq19_g1_β: jmp .Lplpb16_β
plseq19_g2_α:
 bb39392_α:
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
 je .Lplpb16_β
 jmp plseq19_g3_α
plseq19_g2_β: jmp .Lplpb16_β
plseq19_g3_α:
 bb39056_α:
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
 je .Lplpb16_β
 jmp plseq19_g4_α
plseq19_g3_β: jmp .Lplpb16_β
plseq19_g4_α:
 bb38720_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 4
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
 je .Lplpb16_β
 jmp .Lplch17_exit_γ
plseq19_g4_β: jmp .Lplpb16_β
.Lplch17_c1_beta:
 jmp .Lplpb16_β
.Lplch17_c2_body:
plseq20_g0_α:
 bb43216_α:
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
 je .Lplpb16_β
 jmp plseq20_g1_α
plseq20_g0_β: jmp .Lplpb16_β
plseq20_g1_α:
 bb42880_α:
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
 je .Lplpb16_β
 jmp plseq20_g2_α
plseq20_g1_β: jmp .Lplpb16_β
plseq20_g2_α:
 bb42544_α:
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
 je .Lplpb16_β
 jmp plseq20_g3_α
plseq20_g2_β: jmp .Lplpb16_β
plseq20_g3_α:
 bb42208_α:
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
 je .Lplpb16_β
 jmp plseq20_g4_α
plseq20_g3_β: jmp .Lplpb16_β
plseq20_g4_α:
 bb41872_α:
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
 je .Lplpb16_β
 jmp .Lplch17_exit_γ
plseq20_g4_β: jmp .Lplpb16_β
.Lplch17_c2_beta:
 jmp .Lplpb16_β
.Lplch17_c3_body:
plseq21_g0_α:
 bb48848_α:
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
 lea rdx, [rip + .S23]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb16_β
 jmp plseq21_g1_α
plseq21_g0_β: jmp .Lplpb16_β
plseq21_g1_α:
 bb48512_α:
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
 je .Lplpb16_β
 jmp plseq21_g2_α
plseq21_g1_β: jmp .Lplpb16_β
plseq21_g2_α:
 bb48176_α:
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
 je .Lplpb16_β
 jmp plseq21_g3_α
plseq21_g2_β: jmp .Lplpb16_β
plseq21_g3_α:
 bb47840_α:
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
 je .Lplpb16_β
 jmp plseq21_g4_α
plseq21_g3_β: jmp .Lplpb16_β
plseq21_g4_α:
 bb47504_α:
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
 je .Lplpb16_β
 jmp plseq21_g5_α
plseq21_g4_β: jmp .Lplpb16_β
plseq21_g5_α:
 bb46048_α:
# BOX PL_CALL member/2 (WAM-CP-5, n_args=2)
 mov edi, 56
 mov rsi, 4
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 sub rsp, 16
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S22]
 xor ecx, ecx
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S12]
 xor ecx, ecx
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S21]
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
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S18]
 xor ecx, ecx
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S20]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S20]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S20]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S20]
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
 je bb46048_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq21_g6_α
bb46048_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp .Lplpb16_β
 plseq21_g5_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb46048_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_member_2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb46048_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq21_g6_α
bb46048_α_nosol: jmp .Lplpb16_β
plseq21_g6_α:
 bb45712_α:
# BOX PL_CALL differ/2 (WAM-CP-5, n_args=2)
 mov edi, 56
 mov rsi, 4
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S12]
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
 je bb45712_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq21_g7_α
bb45712_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq21_g5_β
 plseq21_g6_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb45712_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_differ_2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb45712_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq21_g7_α
bb45712_α_nosol: jmp plseq21_g5_β
plseq21_g7_α:
 bb45376_α:
# BOX PL_CALL differ/2 (WAM-CP-5, n_args=2)
 mov edi, 56
 mov rsi, 4
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
 call .Lplpred_differ_2
 add rsp, 8
 pop rdi
 add rsp, 16
 call rt_last_ok@PLT
 test eax, eax
 je bb45376_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq21_g8_α
bb45376_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq21_g6_β
 plseq21_g7_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb45376_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_differ_2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb45376_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq21_g8_α
bb45376_α_nosol: jmp plseq21_g6_β
plseq21_g8_α:
 bb45040_α:
# BOX PL_CALL differ/2 (WAM-CP-5, n_args=2)
 mov edi, 56
 mov rsi, 4
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
 je bb45040_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp .Lplch17_exit_γ
bb45040_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq21_g7_β
 plseq21_g8_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb45040_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_differ_2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb45040_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp .Lplch17_exit_γ
bb45040_α_nosol: jmp plseq21_g7_β
.Lplch17_c3_beta:
 jmp plseq21_g8_β
.Lplpb16_γ: 
 mov rdi, 1
 call rt_set_last_ok@PLT
 ret
.Lplpb16_ω: 
 mov rdi, 0
 call rt_set_last_ok@PLT
 ret
.Lplpred_dance_partner_5_redo: jmp .Lplpb16_β
# PL CALLEE BLOCK puzzle/0/0
.intel_syntax noprefix
.Lplpred_puzzle_0: 
# env push/pop handled by caller (bb_pl_call site)
# redo entry: .Lplpred_puzzle_0_redo
plseq23_g0_α:
 bb56032_α:
# BOX PL_CALL wife/1 (WAM-CP-5, n_args=1)
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
 call .Lplpred_wife_1
 pop rdi
 add rsp, 8
 call rt_last_ok@PLT
 test eax, eax
 je bb56032_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq23_g1_α
bb56032_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp .Lplpb22_ω
 plseq23_g0_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb56032_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_wife_1_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb56032_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq23_g1_α
bb56032_α_nosol: jmp .Lplpb22_ω
plseq23_g1_α:
 bb55808_α:
# BOX PL_CALL wife/1 (WAM-CP-5, n_args=1)
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
 call .Lplpred_wife_1
 pop rdi
 add rsp, 8
 call rt_last_ok@PLT
 test eax, eax
 je bb55808_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq23_g2_α
bb55808_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq23_g0_β
 plseq23_g1_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb55808_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_wife_1_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb55808_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq23_g2_α
bb55808_α_nosol: jmp plseq23_g0_β
plseq23_g2_α:
 bb55584_α:
# BOX PL_CALL wife/1 (WAM-CP-5, n_args=1)
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
 call .Lplpred_wife_1
 pop rdi
 add rsp, 8
 call rt_last_ok@PLT
 test eax, eax
 je bb55584_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq23_g3_α
bb55584_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq23_g1_β
 plseq23_g2_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb55584_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_wife_1_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb55584_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq23_g3_α
bb55584_α_nosol: jmp plseq23_g1_β
plseq23_g3_α:
 bb55360_α:
# BOX PL_CALL wife/1 (WAM-CP-5, n_args=1)
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
 call .Lplpred_wife_1
 pop rdi
 add rsp, 8
 call rt_last_ok@PLT
 test eax, eax
 je bb55360_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq23_g4_α
bb55360_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq23_g2_β
 plseq23_g3_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb55360_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_wife_1_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb55360_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq23_g4_α
bb55360_α_nosol: jmp plseq23_g2_β
plseq23_g4_α:
 bb54800_α:
# BOX PL_CALL differ/4 (WAM-CP-5, n_args=4)
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
 mov edi, 20
 call pl_bb_env_save_push@PLT
 push rax
 sub rsp, 8
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
 call .Lplpred_differ_4
 add rsp, 8
 pop rdi
 add rsp, 32
 call rt_last_ok@PLT
 test eax, eax
 je bb54800_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq23_g5_α
bb54800_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq23_g3_β
 plseq23_g4_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb54800_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_differ_4_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb54800_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq23_g5_α
bb54800_α_nosol: jmp plseq23_g3_β
plseq23_g5_α:
 bb54464_α:
# BOX PL_CALL differ/2 (WAM-CP-5, n_args=2)
 mov edi, 56
 mov rsi, 0
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 push rax
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S12]
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
 je bb54464_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq23_g6_α
bb54464_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq23_g4_β
 plseq23_g5_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb54464_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_differ_2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb54464_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq23_g6_α
bb54464_α_nosol: jmp plseq23_g4_β
plseq23_g6_α:
 bb53680_α:
# BOX PL_CALL husband_of/6 (WAM-CP-5, n_args=6)
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S21]
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
 call .Lplpred_husband_of_6
 add rsp, 8
 pop rdi
 add rsp, 48
 call rt_last_ok@PLT
 test eax, eax
 je bb53680_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq23_g7_α
bb53680_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq23_g5_β
 plseq23_g6_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb53680_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_husband_of_6_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb53680_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq23_g7_α
bb53680_α_nosol: jmp plseq23_g5_β
plseq23_g7_α:
 bb52896_α:
# BOX PL_CALL husband_of/6 (WAM-CP-5, n_args=6)
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
 call .Lplpred_husband_of_6
 add rsp, 8
 pop rdi
 add rsp, 48
 call rt_last_ok@PLT
 test eax, eax
 je bb52896_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq23_g8_α
bb52896_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq23_g6_β
 plseq23_g7_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb52896_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_husband_of_6_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb52896_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq23_g8_α
bb52896_α_nosol: jmp plseq23_g6_β
plseq23_g8_α:
 bb52224_α:
# BOX PL_CALL dance_partner/5 (WAM-CP-5, n_args=5)
 mov edi, 56
 mov rsi, 4
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
 lea rdx, [rip + .S22]
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
 call .Lplpred_dance_partner_5
 pop rdi
 add rsp, 40
 call rt_last_ok@PLT
 test eax, eax
 je bb52224_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq23_g9_α
bb52224_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq23_g7_β
 plseq23_g8_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb52224_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_dance_partner_5_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb52224_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq23_g9_α
bb52224_α_nosol: jmp plseq23_g7_β
plseq23_g9_α:
 bb51552_α:
# BOX PL_CALL dance_partner/5 (WAM-CP-5, n_args=5)
 mov edi, 56
 mov rsi, 5
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
 lea rdx, [rip + .S19]
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
 call .Lplpred_dance_partner_5
 pop rdi
 add rsp, 40
 call rt_last_ok@PLT
 test eax, eax
 je bb51552_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq23_g10_α
bb51552_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq23_g8_β
 plseq23_g9_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb51552_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_dance_partner_5_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb51552_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq23_g10_α
bb51552_α_nosol: jmp plseq23_g8_β
plseq23_g10_α:
 bb50992_α:
# BOX PL_CALL display/4 (WAM-CP-5, n_args=4)
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
 mov edi, 20
 call pl_bb_env_save_push@PLT
 push rax
 sub rsp, 8
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
 call .Lplpred_display_4
 add rsp, 8
 pop rdi
 add rsp, 32
 call rt_last_ok@PLT
 test eax, eax
 je bb50992_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp plseq23_g11_α
bb50992_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp plseq23_g9_β
 plseq23_g10_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb50992_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_display_4_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb50992_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp plseq23_g11_α
bb50992_α_nosol: jmp plseq23_g9_β
plseq23_g11_α:
 bb50880_α:
# BOX FAIL()
 jmp plseq23_g10_β
plseq23_g11_β: jmp plseq23_g10_β
.Lplpb22_β:
 jmp plseq23_g10_β
.Lplpb22_γ: 
 mov rdi, 1
 call rt_set_last_ok@PLT
 ret
.Lplpb22_ω: 
 mov rdi, 0
 call rt_set_last_ok@PLT
 ret
.Lplpred_puzzle_0_redo: jmp .Lplpb22_β
# PL CALLEE BLOCK member/2/2
.intel_syntax noprefix
.Lplpred_member_2: 
# env push/pop handled by caller (bb_pl_call site)
# redo entry: .Lplpred_member_2_redo
 bb57248_α:
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
 .Lplch25_dispatch:
 call pl_cp_current@PLT
 mov edi, [rax + 48]
 cmp edi, 2
 jge .Lplch25_exhausted
 cmp edi, 0
 je .Lplch25_c0_pre
 cmp edi, 1
 je .Lplch25_c1_pre
 jmp .Lplch25_exhausted
 .Lplch25_c0_pre:
 call pl_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch25_c0_body
 .Lplch25_c1_pre:
 call pl_cp_current@PLT
 mov edi, [rax + 16]
 call rt_pl_trail_unwind@PLT
 call pl_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch25_c1_body
 .Lplch25_exit_γ:
 call rt_pl_get_cut_flag@PLT
 test eax, eax
 jnz .Lplch25_cut_γ
 call pl_cp_current@PLT
 mov rdi, rax
 call rt_pl_choice_cut_exit@PLT
 jmp .Lplpb24_γ
 .Lplch25_cut_γ:
 call pl_cp_current@PLT
 mov rdi, rax
 call rt_pl_choice_cut_unwind@PLT
 jmp .Lplpb24_γ
 .Lplch25_cut_ω:
 call pl_cp_current@PLT
 mov rdi, rax
 call rt_pl_choice_cut_unwind@PLT
 jmp .Lplpb24_ω
 .Lplch25_exhausted:
 call pl_cp_current@PLT
 mov rdi, rax
 call rt_pl_choice_cut_exit@PLT
 call pl_cp_current@PLT
 mov edi, [rax + 16]
 call rt_pl_trail_unwind@PLT
 call pl_cp_pop@PLT
 jmp .Lplpb24_ω
 .Lplpb24_β:
 call rt_pl_get_cut_flag@PLT
 test eax, eax
 jnz .Lplch25_cut_ω
 call pl_cp_current@PLT
 test rax, rax
 je .Lplch25_β_nosol
 mov rdi, rax
 call rt_pl_choice_cut_enter@PLT
 jmp .Lplch25_dispatch
.Lplch25_β_nosol: jmp .Lplpb24_ω
.Lplch25_c0_body:
plseq26_g0_α:
 bb59632_α:
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
 je .Lplpb24_β
 jmp plseq26_g1_α
plseq26_g0_β: jmp .Lplpb24_β
plseq26_g1_α:
 bb59296_α:
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
 lea rdi, [rip + .S20]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_build_n@PLT
 add rsp, 16
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb24_β
 jmp .Lplch25_exit_γ
plseq26_g1_β: jmp .Lplpb24_β
.Lplch25_c0_beta:
 jmp .Lplpb24_β
.Lplch25_c1_body:
plseq27_g0_α:
 bb62464_α:
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
 je .Lplpb24_β
 jmp plseq27_g1_α
plseq27_g0_β: jmp .Lplpb24_β
plseq27_g1_α:
 bb62128_α:
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
 lea rdi, [rip + .S20]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_build_n@PLT
 add rsp, 16
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb24_β
 jmp plseq27_g2_α
plseq27_g1_β: jmp .Lplpb24_β
plseq27_g2_α:
 bb61344_α:
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
 je bb61344_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp .Lplch25_exit_γ
bb61344_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp .Lplpb24_β
 plseq27_g2_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb61344_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_member_2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb61344_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp .Lplch25_exit_γ
bb61344_α_nosol: jmp .Lplpb24_β
.Lplch25_c1_beta:
 jmp plseq27_g2_β
.Lplpb24_γ: 
 mov rdi, 1
 call rt_set_last_ok@PLT
 ret
.Lplpb24_ω: 
 mov rdi, 0
 call rt_set_last_ok@PLT
 ret
.Lplpred_member_2_redo: jmp .Lplpb24_β
# PL CALLEE BLOCK wife/1/1
.intel_syntax noprefix
.Lplpred_wife_1: 
# env push/pop handled by caller (bb_pl_call site)
# redo entry: .Lplpred_wife_1_redo
plseq29_g0_α:
 bb65600_α:
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
 je .Lplpb28_ω
 jmp plseq29_g1_α
plseq29_g0_β: jmp .Lplpb28_ω
plseq29_g1_α:
 bb64144_α:
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
 lea rdx, [rip + .S22]
 xor ecx, ecx
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S12]
 xor ecx, ecx
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S21]
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
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S18]
 xor ecx, ecx
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S20]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S20]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S20]
 mov esi, 2
 mov rdx, rsp
 call rt_pl_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S20]
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
 je bb64144_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp .Lplpb28_γ
bb64144_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp .Lplpb28_ω
 plseq29_g1_β:
 call pl_cp_current@PLT
 test rax, rax
 je bb64144_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_member_2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb64144_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp .Lplpb28_γ
bb64144_α_nosol: jmp .Lplpb28_ω
.Lplpb28_β:
 jmp plseq29_g1_β
.Lplpb28_γ: 
 mov rdi, 1
 call rt_set_last_ok@PLT
 ret
.Lplpb28_ω: 
 mov rdi, 0
 call rt_set_last_ok@PLT
 ret
.Lplpred_wife_1_redo: jmp .Lplpb28_β
# PL CALLEE BLOCK display/4/4
.intel_syntax noprefix
.Lplpred_display_4: 
# env push/pop handled by caller (bb_pl_call site)
# redo entry: .Lplpred_display_4_redo
plseq31_g0_α:
 bb70880_α:
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
 je .Lplpb30_ω
 jmp plseq31_g1_α
plseq31_g0_β: jmp .Lplpb30_ω
plseq31_g1_α:
 bb70544_α:
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
 je .Lplpb30_ω
 jmp plseq31_g2_α
plseq31_g1_β: jmp .Lplpb30_ω
plseq31_g2_α:
 bb70208_α:
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
 je .Lplpb30_ω
 jmp plseq31_g3_α
plseq31_g2_β: jmp .Lplpb30_ω
plseq31_g3_α:
 bb69872_α:
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
 je .Lplpb30_ω
 jmp plseq31_g4_α
plseq31_g3_β: jmp .Lplpb30_ω
plseq31_g4_α:
 bb69424_α:
 # BOX PL_BUILTIN(write/1)
 lea rcx, [rip + .S33]
 mov rdi, rcx
 call rt_pl_write_atom@PLT
 jmp plseq31_g5_α
plseq31_g4_β: jmp plseq31_g5_α
plseq31_g5_α:
 bb69200_α:
 # BOX PL_BUILTIN(write/1)
 mov edi, 0
 call rt_pl_write_var@PLT
 jmp plseq31_g6_α
plseq31_g5_β: jmp plseq31_g6_α
plseq31_g6_α:
 bb68976_α:
 # BOX PL_BUILTIN(write/1)
 lea rcx, [rip + .S32]
 mov rdi, rcx
 call rt_pl_write_atom@PLT
 jmp plseq31_g7_α
plseq31_g6_β: jmp plseq31_g7_α
plseq31_g7_α:
 bb68752_α:
 # BOX PL_BUILTIN(write/1)
 mov edi, 1
 call rt_pl_write_var@PLT
 jmp plseq31_g8_α
plseq31_g7_β: jmp plseq31_g8_α
plseq31_g8_α:
 bb68528_α:
 # BOX PL_BUILTIN(write/1)
 lea rcx, [rip + .S31]
 mov rdi, rcx
 call rt_pl_write_atom@PLT
 jmp plseq31_g9_α
plseq31_g8_β: jmp plseq31_g9_α
plseq31_g9_α:
 bb68304_α:
 # BOX PL_BUILTIN(write/1)
 mov edi, 2
 call rt_pl_write_var@PLT
 jmp plseq31_g10_α
plseq31_g9_β: jmp plseq31_g10_α
plseq31_g10_α:
 bb68080_α:
 # BOX PL_BUILTIN(write/1)
 lea rcx, [rip + .S30]
 mov rdi, rcx
 call rt_pl_write_atom@PLT
 jmp plseq31_g11_α
plseq31_g10_β: jmp plseq31_g11_α
plseq31_g11_α:
 bb67856_α:
 # BOX PL_BUILTIN(write/1)
 mov edi, 3
 call rt_pl_write_var@PLT
 jmp plseq31_g12_α
plseq31_g11_β: jmp plseq31_g12_α
plseq31_g12_α:
 bb67632_α:
 # BOX PL_BUILTIN(write/1)
 lea rcx, [rip + .S29]
 mov rdi, rcx
 call rt_pl_write_atom@PLT
 jmp .Lplpb30_γ
plseq31_g12_β: jmp .Lplpb30_γ
.Lplpb30_β:
 jmp .Lplpb30_ω
.Lplpb30_γ: 
 mov rdi, 1
 call rt_set_last_ok@PLT
 ret
.Lplpb30_ω: 
 mov rdi, 0
 call rt_set_last_ok@PLT
 ret
.Lplpred_display_4_redo: jmp .Lplpb30_β
# PL CALLEE BLOCK husband_of/6/6
.intel_syntax noprefix
.Lplpred_husband_of_6: 
# env push/pop handled by caller (bb_pl_call site)
# redo entry: .Lplpred_husband_of_6_redo
 bb67520_α:
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
 .Lplch33_dispatch:
 call pl_cp_current@PLT
 mov edi, [rax + 48]
 cmp edi, 4
 jge .Lplch33_exhausted
 cmp edi, 0
 je .Lplch33_c0_pre
 cmp edi, 1
 je .Lplch33_c1_pre
 cmp edi, 2
 je .Lplch33_c2_pre
 cmp edi, 3
 je .Lplch33_c3_pre
 jmp .Lplch33_exhausted
 .Lplch33_c0_pre:
 call pl_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch33_c0_body
 .Lplch33_c1_pre:
 call pl_cp_current@PLT
 mov edi, [rax + 16]
 call rt_pl_trail_unwind@PLT
 call pl_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch33_c1_body
 .Lplch33_c2_pre:
 call pl_cp_current@PLT
 mov edi, [rax + 16]
 call rt_pl_trail_unwind@PLT
 call pl_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch33_c2_body
 .Lplch33_c3_pre:
 call pl_cp_current@PLT
 mov edi, [rax + 16]
 call rt_pl_trail_unwind@PLT
 call pl_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch33_c3_body
 .Lplch33_exit_γ:
 call rt_pl_get_cut_flag@PLT
 test eax, eax
 jnz .Lplch33_cut_γ
 call pl_cp_current@PLT
 mov rdi, rax
 call rt_pl_choice_cut_exit@PLT
 jmp .Lplpb32_γ
 .Lplch33_cut_γ:
 call pl_cp_current@PLT
 mov rdi, rax
 call rt_pl_choice_cut_unwind@PLT
 jmp .Lplpb32_γ
 .Lplch33_cut_ω:
 call pl_cp_current@PLT
 mov rdi, rax
 call rt_pl_choice_cut_unwind@PLT
 jmp .Lplpb32_ω
 .Lplch33_exhausted:
 call pl_cp_current@PLT
 mov rdi, rax
 call rt_pl_choice_cut_exit@PLT
 call pl_cp_current@PLT
 mov edi, [rax + 16]
 call rt_pl_trail_unwind@PLT
 call pl_cp_pop@PLT
 jmp .Lplpb32_ω
 .Lplpb32_β:
 call rt_pl_get_cut_flag@PLT
 test eax, eax
 jnz .Lplch33_cut_ω
 call pl_cp_current@PLT
 test rax, rax
 je .Lplch33_β_nosol
 mov rdi, rax
 call rt_pl_choice_cut_enter@PLT
 jmp .Lplch33_dispatch
.Lplch33_β_nosol: jmp .Lplpb32_ω
.Lplch33_c0_body:
plseq34_g0_α:
 bb75408_α:
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
 je .Lplpb32_β
 jmp plseq34_g1_α
plseq34_g0_β: jmp .Lplpb32_β
plseq34_g1_α:
 bb75072_α:
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
 je .Lplpb32_β
 jmp plseq34_g2_α
plseq34_g1_β: jmp .Lplpb32_β
plseq34_g2_α:
 bb74736_α:
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
 je .Lplpb32_β
 jmp plseq34_g3_α
plseq34_g2_β: jmp .Lplpb32_β
plseq34_g3_α:
 bb74400_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 3
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
 je .Lplpb32_β
 jmp plseq34_g4_α
plseq34_g3_β: jmp .Lplpb32_β
plseq34_g4_α:
 bb74064_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 4
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
 je .Lplpb32_β
 jmp plseq34_g5_α
plseq34_g4_β: jmp .Lplpb32_β
plseq34_g5_α:
 bb73728_α:
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
 lea rdx, [rip + .S13]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb32_β
 jmp .Lplch33_exit_γ
plseq34_g5_β: jmp .Lplpb32_β
.Lplch33_c0_beta:
 jmp .Lplpb32_β
.Lplch33_c1_body:
plseq35_g0_α:
 bb78896_α:
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
 je .Lplpb32_β
 jmp plseq35_g1_α
plseq35_g0_β: jmp .Lplpb32_β
plseq35_g1_α:
 bb78560_α:
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
 je .Lplpb32_β
 jmp plseq35_g2_α
plseq35_g1_β: jmp .Lplpb32_β
plseq35_g2_α:
 bb78224_α:
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
 je .Lplpb32_β
 jmp plseq35_g3_α
plseq35_g2_β: jmp .Lplpb32_β
plseq35_g3_α:
 bb77888_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 3
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
 je .Lplpb32_β
 jmp plseq35_g4_α
plseq35_g3_β: jmp .Lplpb32_β
plseq35_g4_α:
 bb77552_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 4
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
 je .Lplpb32_β
 jmp plseq35_g5_α
plseq35_g4_β: jmp .Lplpb32_β
plseq35_g5_α:
 bb77216_α:
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
 lea rdx, [rip + .S14]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb32_β
 jmp .Lplch33_exit_γ
plseq35_g5_β: jmp .Lplpb32_β
.Lplch33_c1_beta:
 jmp .Lplpb32_β
.Lplch33_c2_body:
plseq36_g0_α:
 bb82384_α:
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
 je .Lplpb32_β
 jmp plseq36_g1_α
plseq36_g0_β: jmp .Lplpb32_β
plseq36_g1_α:
 bb82048_α:
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
 je .Lplpb32_β
 jmp plseq36_g2_α
plseq36_g1_β: jmp .Lplpb32_β
plseq36_g2_α:
 bb81712_α:
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
 je .Lplpb32_β
 jmp plseq36_g3_α
plseq36_g2_β: jmp .Lplpb32_β
plseq36_g3_α:
 bb81376_α:
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
 je .Lplpb32_β
 jmp plseq36_g4_α
plseq36_g3_β: jmp .Lplpb32_β
plseq36_g4_α:
 bb81040_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 4
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
 je .Lplpb32_β
 jmp plseq36_g5_α
plseq36_g4_β: jmp .Lplpb32_β
plseq36_g5_α:
 bb80704_α:
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
 lea rdx, [rip + .S15]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb32_β
 jmp .Lplch33_exit_γ
plseq36_g5_β: jmp .Lplpb32_β
.Lplch33_c2_beta:
 jmp .Lplpb32_β
.Lplch33_c3_body:
plseq37_g0_α:
 bb85872_α:
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
 je .Lplpb32_β
 jmp plseq37_g1_α
plseq37_g0_β: jmp .Lplpb32_β
plseq37_g1_α:
 bb85536_α:
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
 je .Lplpb32_β
 jmp plseq37_g2_α
plseq37_g1_β: jmp .Lplpb32_β
plseq37_g2_α:
 bb85200_α:
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
 je .Lplpb32_β
 jmp plseq37_g3_α
plseq37_g2_β: jmp .Lplpb32_β
plseq37_g3_α:
 bb84864_α:
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
 je .Lplpb32_β
 jmp plseq37_g4_α
plseq37_g3_β: jmp .Lplpb32_β
plseq37_g4_α:
 bb84528_α:
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
 je .Lplpb32_β
 jmp plseq37_g5_α
plseq37_g4_β: jmp .Lplpb32_β
plseq37_g5_α:
 bb84192_α:
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
 lea rdx, [rip + .S23]
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb32_β
 jmp .Lplch33_exit_γ
plseq37_g5_β: jmp .Lplpb32_β
.Lplch33_c3_beta:
 jmp .Lplpb32_β
.Lplpb32_γ: 
 mov rdi, 1
 call rt_set_last_ok@PLT
 ret
.Lplpb32_ω: 
 mov rdi, 0
 call rt_set_last_ok@PLT
 ret
.Lplpred_husband_of_6_redo: jmp .Lplpb32_β
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
 HALT
call rt_finalize@PLT
pop rbp
ret
.size main, .-main
.section .note.GNU-stack
