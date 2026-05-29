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
.S0: .string "main/0"
.S1: .string "("
.S2: .string ","
.S3: .string ")"
.S4: .string "nl"
.S5: .string "write"
.S6: .string "no"
.S7: .string "yes"
.S8: .string "@<"
.S9: .string "a"
.S10: .string "b"
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
.Lsub_main_0:
 LABEL
.L2:
 RETURN
.L3:
 LABEL
#=======================================================================================================================
# stmt 0
#=======================================================================================================================
 mov edi, 0
 call rt_set_stno@PLT
# SM_BB_PL_INVOKE main/0/0 (inline flat four-port)
.intel_syntax noprefix
 mov edi, 64
 call pl_bb_env_push@PLT
 bb77744_α:
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
 .Lplch1_dispatch:
 call pl_cp_current@PLT
 mov edi, [rax + 48]
 cmp edi, 2
 jge .Lplch1_exhausted
 cmp edi, 0
 je .Lplch1_c0_pre
 cmp edi, 1
 je .Lplch1_c1_pre
 jmp .Lplch1_exhausted
 .Lplch1_c0_pre:
 call pl_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch1_c0_body
 .Lplch1_c1_pre:
 call pl_cp_current@PLT
 mov edi, [rax + 16]
 call rt_pl_trail_unwind@PLT
 call pl_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch1_c1_body
 .Lplch1_exit_γ:
 call rt_pl_get_cut_flag@PLT
 test eax, eax
 jnz .Lplch1_cut_γ
 call pl_cp_current@PLT
 mov rdi, rax
 call rt_pl_choice_cut_exit@PLT
 jmp .Lplent0_γ
 .Lplch1_cut_γ:
 call pl_cp_current@PLT
 mov rdi, rax
 call rt_pl_choice_cut_unwind@PLT
 jmp .Lplent0_γ
 .Lplch1_cut_ω:
 call pl_cp_current@PLT
 mov rdi, rax
 call rt_pl_choice_cut_unwind@PLT
 jmp .Lplent0_ω
 .Lplch1_exhausted:
 call pl_cp_current@PLT
 mov rdi, rax
 call rt_pl_choice_cut_exit@PLT
 call pl_cp_current@PLT
 mov edi, [rax + 16]
 call rt_pl_trail_unwind@PLT
 call pl_cp_pop@PLT
 jmp .Lplent0_ω
 .Lplent0_β:
 call rt_pl_get_cut_flag@PLT
 test eax, eax
 jnz .Lplch1_cut_ω
 call pl_cp_current@PLT
 test rax, rax
 je .Lplch1_β_nosol
 mov rdi, rax
 call rt_pl_choice_cut_enter@PLT
 jmp .Lplch1_dispatch
.Lplch1_β_nosol: jmp .Lplent0_ω
.Lplch1_c0_body:
plseq2_g0_α:
 bb82048_α:
 # BOX PL_BUILTIN(@</2)
 sub rsp, 16
 lea rdi, [rip + .S8]
 mov esi, 57
 mov rdx, 0
 lea rcx, [rip + .S9]
 mov r8d, 57
 mov r9, 0
 lea rax, [rip + .S10]
 mov qword ptr [rsp + 0], rax
 call rt_pl_term_cmp@PLT
 add rsp, 16
 test eax, eax
 je xite3_else_α
 jmp xite3_then_α
xite3_cond_β: jmp xite3_else_α
xite3_then_α:
 bb81824_α:
 # BOX PL_BUILTIN(write/1)
 lea rcx, [rip + .S7]
 mov rdi, rcx
 call rt_pl_write_atom@PLT
 jmp plseq2_g1_α
xite3_then_β: jmp plseq2_g1_α
xite3_else_α:
 bb81600_α:
 # BOX PL_BUILTIN(write/1)
 lea rcx, [rip + .S6]
 mov rdi, rcx
 call rt_pl_write_atom@PLT
 jmp plseq2_g1_α
xite3_else_β: jmp plseq2_g1_α
# END PL_ITE (β-tombstone via EP)
plseq2_g0_β:
 jmp .Lplent0_β
plseq2_g1_α:
 bb81488_α:
 # BOX PL_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp plseq2_g2_α
plseq2_g1_β: jmp plseq2_g2_α
plseq2_g2_α:
 bb81040_α:
 # BOX PL_BUILTIN(@</2)
 sub rsp, 16
 lea rdi, [rip + .S8]
 mov esi, 57
 mov rdx, 0
 lea rcx, [rip + .S10]
 mov r8d, 57
 mov r9, 0
 lea rax, [rip + .S9]
 mov qword ptr [rsp + 0], rax
 call rt_pl_term_cmp@PLT
 add rsp, 16
 test eax, eax
 je xite4_else_α
 jmp xite4_then_α
xite4_cond_β: jmp xite4_else_α
xite4_then_α:
 bb80816_α:
 # BOX PL_BUILTIN(write/1)
 lea rcx, [rip + .S7]
 mov rdi, rcx
 call rt_pl_write_atom@PLT
 jmp plseq2_g3_α
xite4_then_β: jmp plseq2_g3_α
xite4_else_α:
 bb80592_α:
 # BOX PL_BUILTIN(write/1)
 lea rcx, [rip + .S6]
 mov rdi, rcx
 call rt_pl_write_atom@PLT
 jmp plseq2_g3_α
xite4_else_β: jmp plseq2_g3_α
# END PL_ITE (β-tombstone via EP)
plseq2_g2_β:
 jmp .Lplent0_β
plseq2_g3_α:
 bb80480_α:
 # BOX PL_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp plseq2_g4_α
plseq2_g3_β: jmp plseq2_g4_α
plseq2_g4_α:
 bb80032_α:
 # BOX PL_BUILTIN(@</2)
 sub rsp, 16
 lea rdi, [rip + .S8]
 mov esi, 57
 mov rdx, 0
 lea rcx, [rip + .S9]
 mov r8d, 57
 mov r9, 0
 lea rax, [rip + .S9]
 mov qword ptr [rsp + 0], rax
 call rt_pl_term_cmp@PLT
 add rsp, 16
 test eax, eax
 je xite5_else_α
 jmp xite5_then_α
xite5_cond_β: jmp xite5_else_α
xite5_then_α:
 bb79808_α:
 # BOX PL_BUILTIN(write/1)
 lea rcx, [rip + .S7]
 mov rdi, rcx
 call rt_pl_write_atom@PLT
 jmp plseq2_g5_α
xite5_then_β: jmp plseq2_g5_α
xite5_else_α:
 bb79584_α:
 # BOX PL_BUILTIN(write/1)
 lea rcx, [rip + .S6]
 mov rdi, rcx
 call rt_pl_write_atom@PLT
 jmp plseq2_g5_α
xite5_else_β: jmp plseq2_g5_α
# END PL_ITE (β-tombstone via EP)
plseq2_g4_β:
 jmp .Lplent0_β
plseq2_g5_α:
 bb79472_α:
 # BOX PL_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp .Lplch1_exit_γ
plseq2_g5_β: jmp .Lplch1_exit_γ
.Lplch1_c0_beta:
 jmp .Lplent0_β
.Lplch1_c1_body:
 bb84000_α:
# BOX SUCCEED()
 jmp .Lplch1_exit_γ
.Lplch1_c1_beta:
 jmp .Lplent0_β
.Lplent0_γ: 
 mov rdi, 1
 call rt_set_last_ok@PLT
 jmp .Lplent0_done
.Lplent0_ω: 
 mov rdi, 0
 call rt_set_last_ok@PLT
.Lplent0_done: 
 HALT
call rt_finalize@PLT
pop rbp
ret
.size main, .-main
.section .note.GNU-stack
