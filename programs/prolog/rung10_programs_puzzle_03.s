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
.S0: .string "differ6/6"
.S1: .string "puzzle/0"
.S2: .string "age/1"
.S3: .string "main/0"
.S4: .string "("
.S5: .string ","
.S6: .string ")"
.S7: .string "=\\="
.S8: .string "puzzle"
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
.Lsub_differ6_6:
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
.Lsub_age_1:
 LABEL
.L10:
 RETURN
.L11:
 LABEL
 JUMP .L15
.Lsub_main_0:
 LABEL
.L14:
 RETURN
.L15:
 LABEL
#=======================================================================================================================
# stmt 0  (line 19)
#=======================================================================================================================
 mov edi, 0
 call rt_set_stno@PLT
# SM_BB_PL_INVOKE main/0/0 (inline flat four-port)
.intel_syntax noprefix
 mov edi, 64
 call pl_bb_env_push@PLT
 bb19088_α:
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
 bb18976_α:
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
 je bb18976_α_fail5
 call pl_bb_env_install@PLT
 mov rdi, rax
 call rt_pl_cp_save_caller_env@PLT
 jmp .Lplent0_γ
bb18976_α_fail5: 
 call pl_bb_env_pop@PLT
 jmp .Lplch1_c1_pre
 .Lplch1_c0_beta:
 call pl_cp_current@PLT
 test rax, rax
 je bb18976_α_nosol
 mov rdi, [rax + 24]
 call pl_bb_env_install@PLT
 call .Lplpred_puzzle_0_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb18976_α_nosol
 call pl_cp_current@PLT
 mov rdi, [rax + 40]
 call pl_bb_env_install@PLT
 jmp .Lplent0_γ
bb18976_α_nosol: jmp .Lplch1_c1_pre
.Lplch1_c1_body:
 bb18864_α:
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
# PL CALLEE BLOCK differ6/6/6
.intel_syntax noprefix
.Lplpred_differ6_6: 
# env push/pop handled by caller (bb_pl_call site)
# redo entry: .Lplpred_differ6_6_redo
plseq4_g0_α:
 bb3408_α:
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
 je .Lplpb3_ω
 jmp plseq4_g1_α
plseq4_g0_β: jmp .Lplpb3_ω
plseq4_g1_α:
 bb3072_α:
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
 je .Lplpb3_ω
 jmp plseq4_g2_α
plseq4_g1_β: jmp .Lplpb3_ω
plseq4_g2_α:
 bb2736_α:
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
 je .Lplpb3_ω
 jmp plseq4_g3_α
plseq4_g2_β: jmp .Lplpb3_ω
plseq4_g3_α:
 bb2400_α:
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
 je .Lplpb3_ω
 jmp plseq4_g4_α
plseq4_g3_β: jmp .Lplpb3_ω
plseq4_g4_α:
 bb2064_α:
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
 je .Lplpb3_ω
 jmp plseq4_g5_α
plseq4_g4_β: jmp .Lplpb3_ω
plseq4_g5_α:
 bb1728_α:
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
 je .Lplpb3_ω
 jmp plseq4_g6_α
plseq4_g5_β: jmp .Lplpb3_ω
plseq4_g6_α:
 bb1168_α:
 # BOX PL_BUILTIN(=\=/2)
 sub rsp, 16
 lea rdi, [rip + .S7]
 mov esi, 56
 mov rdx, 0
 xor ecx, ecx
 mov r8d, 56
 mov r9, 1
 xor eax, eax
 mov qword ptr [rsp + 0], rax
 call rt_pl_arith_cmp@PLT
 add rsp, 16
 test eax, eax
 je .Lplpb3_ω
 jmp plseq4_g7_α
plseq4_g6_β: jmp .Lplpb3_ω
plseq4_g7_α:
 bb832_α:
 # BOX PL_BUILTIN(=\=/2)
 sub rsp, 16
 lea rdi, [rip + .S7]
 mov esi, 56
 mov rdx, 0
 xor ecx, ecx
 mov r8d, 56
 mov r9, 2
 xor eax, eax
 mov qword ptr [rsp + 0], rax
 call rt_pl_arith_cmp@PLT
 add rsp, 16
 test eax, eax
 je .Lplpb3_ω
 jmp plseq4_g8_α
plseq4_g7_β: jmp .Lplpb3_ω
plseq4_g8_α:
 bb496_α:
 # BOX PL_BUILTIN(=\=/2)
 sub rsp, 16
 lea rdi, [rip + .S7]
 mov esi, 56
 mov rdx, 0
 xor ecx, ecx
 mov r8d, 56
 mov r9, 3
 xor eax, eax
 mov qword ptr [rsp + 0], rax
 call rt_pl_arith_cmp@PLT
 add rsp, 16
 test eax, eax
 je .Lplpb3_ω
 jmp plseq4_g9_α
plseq4_g8_β: jmp .Lplpb3_ω
plseq4_g9_α:
 bb160_α:
 # BOX PL_BUILTIN(=\=/2)
 sub rsp, 16
 lea rdi, [rip + .S7]
 mov esi, 56
 mov rdx, 0
 xor ecx, ecx
 mov r8d, 56
 mov r9, 4
 xor eax, eax
 mov qword ptr [rsp + 0], rax
 call rt_pl_arith_cmp@PLT
 add rsp, 16
 test eax, eax
 je .Lplpb3_ω
 jmp plseq4_g10_α
plseq4_g9_β: jmp .Lplpb3_ω
plseq4_g10_α:
 bb99824_α:
 # BOX PL_BUILTIN(=\=/2)
 sub rsp, 16
 lea rdi, [rip + .S7]
 mov esi, 56
 mov rdx, 0
 xor ecx, ecx
 mov r8d, 56
 mov r9, 5
 xor eax, eax
 mov qword ptr [rsp + 0], rax
 call rt_pl_arith_cmp@PLT
 add rsp, 16
 test eax, eax
 je .Lplpb3_ω
 jmp plseq4_g11_α
plseq4_g10_β: jmp .Lplpb3_ω
plseq4_g11_α:
 bb99488_α:
 # BOX PL_BUILTIN(=\=/2)
 sub rsp, 16
 lea rdi, [rip + .S7]
 mov esi, 56
 mov rdx, 1
 xor ecx, ecx
 mov r8d, 56
 mov r9, 2
 xor eax, eax
 mov qword ptr [rsp + 0], rax
 call rt_pl_arith_cmp@PLT
 add rsp, 16
 test eax, eax
 je .Lplpb3_ω
 jmp plseq4_g12_α
plseq4_g11_β: jmp .Lplpb3_ω
plseq4_g12_α:
 bb99152_α:
 # BOX PL_BUILTIN(=\=/2)
 sub rsp, 16
 lea rdi, [rip + .S7]
 mov esi, 56
 mov rdx, 1
 xor ecx, ecx
 mov r8d, 56
 mov r9, 3
 xor eax, eax
 mov qword ptr [rsp + 0], rax
 call rt_pl_arith_cmp@PLT
 add rsp, 16
 test eax, eax
 je .Lplpb3_ω
 jmp plseq4_g13_α
plseq4_g12_β: jmp .Lplpb3_ω
plseq4_g13_α:
 bb98816_α:
 # BOX PL_BUILTIN(=\=/2)
 sub rsp, 16
 lea rdi, [rip + .S7]
 mov esi, 56
 mov rdx, 1
 xor ecx, ecx
 mov r8d, 56
 mov r9, 4
 xor eax, eax
 mov qword ptr [rsp + 0], rax
 call rt_pl_arith_cmp@PLT
 add rsp, 16
 test eax, eax
 je .Lplpb3_ω
 jmp plseq4_g14_α
plseq4_g13_β: jmp .Lplpb3_ω
plseq4_g14_α:
 bb98480_α:
 # BOX PL_BUILTIN(=\=/2)
 sub rsp, 16
 lea rdi, [rip + .S7]
 mov esi, 56
 mov rdx, 1
 xor ecx, ecx
 mov r8d, 56
 mov r9, 5
 xor eax, eax
 mov qword ptr [rsp + 0], rax
 call rt_pl_arith_cmp@PLT
 add rsp, 16
 test eax, eax
 je .Lplpb3_ω
 jmp plseq4_g15_α
plseq4_g14_β: jmp .Lplpb3_ω
plseq4_g15_α:
 bb98144_α:
 # BOX PL_BUILTIN(=\=/2)
 sub rsp, 16
 lea rdi, [rip + .S7]
 mov esi, 56
 mov rdx, 2
 xor ecx, ecx
 mov r8d, 56
 mov r9, 3
 xor eax, eax
 mov qword ptr [rsp + 0], rax
 call rt_pl_arith_cmp@PLT
 add rsp, 16
 test eax, eax
 je .Lplpb3_ω
 jmp plseq4_g16_α
plseq4_g15_β: jmp .Lplpb3_ω
plseq4_g16_α:
 bb97808_α:
 # BOX PL_BUILTIN(=\=/2)
 sub rsp, 16
 lea rdi, [rip + .S7]
 mov esi, 56
 mov rdx, 2
 xor ecx, ecx
 mov r8d, 56
 mov r9, 4
 xor eax, eax
 mov qword ptr [rsp + 0], rax
 call rt_pl_arith_cmp@PLT
 add rsp, 16
 test eax, eax
 je .Lplpb3_ω
 jmp plseq4_g17_α
plseq4_g16_β: jmp .Lplpb3_ω
plseq4_g17_α:
 bb97472_α:
 # BOX PL_BUILTIN(=\=/2)
 sub rsp, 16
 lea rdi, [rip + .S7]
 mov esi, 56
 mov rdx, 2
 xor ecx, ecx
 mov r8d, 56
 mov r9, 5
 xor eax, eax
 mov qword ptr [rsp + 0], rax
 call rt_pl_arith_cmp@PLT
 add rsp, 16
 test eax, eax
 je .Lplpb3_ω
 jmp plseq4_g18_α
plseq4_g17_β: jmp .Lplpb3_ω
plseq4_g18_α:
 bb97136_α:
 # BOX PL_BUILTIN(=\=/2)
 sub rsp, 16
 lea rdi, [rip + .S7]
 mov esi, 56
 mov rdx, 3
 xor ecx, ecx
 mov r8d, 56
 mov r9, 4
 xor eax, eax
 mov qword ptr [rsp + 0], rax
 call rt_pl_arith_cmp@PLT
 add rsp, 16
 test eax, eax
 je .Lplpb3_ω
 jmp plseq4_g19_α
plseq4_g18_β: jmp .Lplpb3_ω
plseq4_g19_α:
 bb96800_α:
 # BOX PL_BUILTIN(=\=/2)
 sub rsp, 16
 lea rdi, [rip + .S7]
 mov esi, 56
 mov rdx, 3
 xor ecx, ecx
 mov r8d, 56
 mov r9, 5
 xor eax, eax
 mov qword ptr [rsp + 0], rax
 call rt_pl_arith_cmp@PLT
 add rsp, 16
 test eax, eax
 je .Lplpb3_ω
 jmp plseq4_g20_α
plseq4_g19_β: jmp .Lplpb3_ω
plseq4_g20_α:
 bb96464_α:
 # BOX PL_BUILTIN(=\=/2)
 sub rsp, 16
 lea rdi, [rip + .S7]
 mov esi, 56
 mov rdx, 4
 xor ecx, ecx
 mov r8d, 56
 mov r9, 5
 xor eax, eax
 mov qword ptr [rsp + 0], rax
 call rt_pl_arith_cmp@PLT
 add rsp, 16
 test eax, eax
 je .Lplpb3_ω
 jmp .Lplpb3_γ
plseq4_g20_β: jmp .Lplpb3_ω
.Lplpb3_β:
 jmp .Lplpb3_ω
.Lplpb3_γ: 
 mov rdi, 1
 call rt_set_last_ok@PLT
 ret
.Lplpb3_ω: 
 mov rdi, 0
 call rt_set_last_ok@PLT
 ret
.Lplpred_differ6_6_redo: jmp .Lplpb3_β
# PL CALLEE BLOCK age/1/1
.intel_syntax noprefix
.Lplpred_age_1: 
# env push/pop handled by caller (bb_pl_call site)
# redo entry: .Lplpred_age_1_redo
 bb20176_α:
# BOX PL_CHOICE n=6 (WAM-CP-5 heap cursor, WAM-CP-9 cut)
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
 .Lplch6_dispatch:
 call pl_cp_current@PLT
 mov edi, [rax + 48]
 cmp edi, 6
 jge .Lplch6_exhausted
 cmp edi, 0
 je .Lplch6_c0_pre
 cmp edi, 1
 je .Lplch6_c1_pre
 cmp edi, 2
 je .Lplch6_c2_pre
 cmp edi, 3
 je .Lplch6_c3_pre
 cmp edi, 4
 je .Lplch6_c4_pre
 cmp edi, 5
 je .Lplch6_c5_pre
 jmp .Lplch6_exhausted
 .Lplch6_c0_pre:
 call pl_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch6_c0_body
 .Lplch6_c1_pre:
 call pl_cp_current@PLT
 mov edi, [rax + 16]
 call rt_pl_trail_unwind@PLT
 call pl_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch6_c1_body
 .Lplch6_c2_pre:
 call pl_cp_current@PLT
 mov edi, [rax + 16]
 call rt_pl_trail_unwind@PLT
 call pl_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch6_c2_body
 .Lplch6_c3_pre:
 call pl_cp_current@PLT
 mov edi, [rax + 16]
 call rt_pl_trail_unwind@PLT
 call pl_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch6_c3_body
 .Lplch6_c4_pre:
 call pl_cp_current@PLT
 mov edi, [rax + 16]
 call rt_pl_trail_unwind@PLT
 call pl_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch6_c4_body
 .Lplch6_c5_pre:
 call pl_cp_current@PLT
 mov edi, [rax + 16]
 call rt_pl_trail_unwind@PLT
 call pl_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch6_c5_body
 .Lplch6_exit_γ:
 call rt_pl_get_cut_flag@PLT
 test eax, eax
 jnz .Lplch6_cut_γ
 call pl_cp_current@PLT
 mov rdi, rax
 call rt_pl_choice_cut_exit@PLT
 jmp .Lplpb5_γ
 .Lplch6_cut_γ:
 call pl_cp_current@PLT
 mov rdi, rax
 call rt_pl_choice_cut_unwind@PLT
 jmp .Lplpb5_γ
 .Lplch6_cut_ω:
 call pl_cp_current@PLT
 mov rdi, rax
 call rt_pl_choice_cut_unwind@PLT
 jmp .Lplpb5_ω
 .Lplch6_exhausted:
 call pl_cp_current@PLT
 mov rdi, rax
 call rt_pl_choice_cut_exit@PLT
 call pl_cp_current@PLT
 mov edi, [rax + 16]
 call rt_pl_trail_unwind@PLT
 call pl_cp_pop@PLT
 jmp .Lplpb5_ω
 .Lplpb5_β:
 call rt_pl_get_cut_flag@PLT
 test eax, eax
 jnz .Lplch6_cut_ω
 call pl_cp_current@PLT
 test rax, rax
 je .Lplch6_β_nosol
 mov rdi, rax
 call rt_pl_choice_cut_enter@PLT
 jmp .Lplch6_dispatch
.Lplch6_β_nosol: jmp .Lplpb5_ω
.Lplch6_c0_body:
 bb8016_α:
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
 je .Lplpb5_β
 jmp .Lplch6_exit_γ
.Lplch6_c0_beta: jmp .Lplpb5_β
.Lplch6_c1_body:
 bb9952_α:
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
 je .Lplpb5_β
 jmp .Lplch6_exit_γ
.Lplch6_c1_beta: jmp .Lplpb5_β
.Lplch6_c2_body:
 bb11856_α:
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
 je .Lplpb5_β
 jmp .Lplch6_exit_γ
.Lplch6_c2_beta: jmp .Lplpb5_β
.Lplch6_c3_body:
 bb13664_α:
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
 je .Lplpb5_β
 jmp .Lplch6_exit_γ
.Lplch6_c3_beta: jmp .Lplpb5_β
.Lplch6_c4_body:
 bb15472_α:
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
 je .Lplpb5_β
 jmp .Lplch6_exit_γ
.Lplch6_c4_beta: jmp .Lplpb5_β
.Lplch6_c5_body:
 bb17280_α:
# BOX PL_UNIFY
 sub rsp, 16
 mov edi, 56
 mov rsi, 0
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 0
 mov rsi, 6
 xor edx, edx
 xorps xmm0, xmm0
 call rt_pl_node_to_term@PLT
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_pl_unify_terms@PLT
 test eax, eax
 je .Lplpb5_β
 jmp .Lplch6_exit_γ
.Lplch6_c5_beta: jmp .Lplpb5_β
.Lplpb5_γ: 
 mov rdi, 1
 call rt_set_last_ok@PLT
 ret
.Lplpb5_ω: 
 mov rdi, 0
 call rt_set_last_ok@PLT
 ret
.Lplpred_age_1_redo: jmp .Lplpb5_β
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
 HALT
call rt_finalize@PLT
pop rbp
ret
.size main, .-main
.section .note.GNU-stack
