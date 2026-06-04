  .intel_syntax noprefix
  .text
  .section .data
  .align 8
.Lpl_pred_table:
  .quad .Lpl_pname_1
  .quad 1
  .quad .Lplpred_a_1
  .quad .Lplpred_a_1_redo
  .section .rodata
.Lpl_pname_1:
  .asciz "a"
  .text
  .globl main
main:
  push rbp
  mov rbp, rsp
  call rt_main_init@PLT
  lea rdi, [rip + .Lpl_pred_table]
  mov esi, 1
  call rt_pl_table_install@PLT
  mov edi, 2
  call rt_env_alloc@PLT
  call rt_frame@PLT
  mov rdi, rax
  xor esi, esi
  call main_α
  xor eax, eax
  pop rbp
  ret
.Lplpred_a_1:
 bb74320_α:
# BOX RESOLVE_CHOICE n=3 (WAM-CP-5 heap cursor, WAM-CP-9 cut)
 call rt_env_current@PLT
 mov rdx, rax
 call rt_trail_mark@PLT
 mov rsi, rax
 xor edi, edi
 xor ecx, ecx
 xor r8d, r8d
 call resolve_cp_push@PLT
 mov rdi, rax
 call rt_choice_cut_enter@PLT
 .Lplch0_dispatch:
 call resolve_cp_current@PLT
 mov edi, [rax + 48]
 cmp edi, 3
 jge .Lplch0_exhausted
 cmp edi, 0
 je .Lplch0_c0_pre
 cmp edi, 1
 je .Lplch0_c1_pre
 cmp edi, 2
 je .Lplch0_c2_pre
 jmp .Lplch0_exhausted
 .Lplch0_c0_pre:
 call resolve_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch0_c0_body
 .Lplch0_c1_pre:
 call resolve_cp_current@PLT
 mov edi, [rax + 16]
 call rt_trail_unwind@PLT
 call resolve_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch0_c1_body
 .Lplch0_c2_pre:
 call resolve_cp_current@PLT
 mov edi, [rax + 16]
 call rt_trail_unwind@PLT
 call resolve_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch0_c2_body
 .Lplch0_exit_γ:
 call rt_get_cut_flag@PLT
 test eax, eax
 jnz .Lplch0_cut_γ
 call resolve_cp_current@PLT
 mov rdi, rax
 call rt_choice_cut_exit@PLT
 jmp .Lplpred_a_1_γ
 .Lplch0_cut_γ:
 call resolve_cp_current@PLT
 mov rdi, rax
 call rt_choice_cut_unwind@PLT
 jmp .Lplpred_a_1_γ
 .Lplch0_cut_ω:
 call resolve_cp_current@PLT
 mov rdi, rax
 call rt_choice_cut_unwind@PLT
 jmp .Lplpred_a_1_ω
 .Lplch0_exhausted:
 call resolve_cp_current@PLT
 mov rdi, rax
 call rt_choice_cut_exit@PLT
 call resolve_cp_current@PLT
 mov edi, [rax + 16]
 call rt_trail_unwind@PLT
 call resolve_cp_pop@PLT
 jmp .Lplpred_a_1_ω
 .Lplpred_a_1_β:
 call rt_get_cut_flag@PLT
 test eax, eax
 jnz .Lplch0_cut_ω
 call resolve_cp_current@PLT
 test rax, rax
 je .Lplch0_β_nosol
 mov rdi, rax
 call rt_choice_cut_enter@PLT
 jmp .Lplch0_dispatch
.Lplch0_β_nosol: jmp .Lplpred_a_1_ω
.Lplch0_c0_body:
 bb67200_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 var-const)  [x86() self-encoding]
 mov edi, 0
 mov esi, 0
 mov rdx, 1
 mov ecx, 0
 xorps xmm0, xmm0
 call rt_unify_const@PLT
 test eax, eax
 je .Lplpred_a_1_β
 jmp .Lplch0_exit_γ
 .Lplch0_c0_beta:
 jmp .Lplpred_a_1_β
.Lplch0_c1_body:
 bb70272_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 var-const)  [x86() self-encoding]
 mov edi, 0
 mov esi, 0
 mov rdx, 2
 mov ecx, 0
 xorps xmm0, xmm0
 call rt_unify_const@PLT
 test eax, eax
 je .Lplpred_a_1_β
 jmp .Lplch0_exit_γ
 .Lplch0_c1_beta:
 jmp .Lplpred_a_1_β
.Lplch0_c2_body:
 bb73344_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 var-const)  [x86() self-encoding]
 mov edi, 0
 mov esi, 0
 mov rdx, 3
 mov ecx, 0
 xorps xmm0, xmm0
 call rt_unify_const@PLT
 test eax, eax
 je .Lplpred_a_1_β
 jmp .Lplch0_exit_γ
 .Lplch0_c2_beta:
 jmp .Lplpred_a_1_β
.Lplpred_a_1_redo:
jmp .Lplpred_a_1_β
.Lplpred_a_1_γ:
  mov edi, 1
  call rt_set_last_ok@PLT
  ret
.Lplpred_a_1_ω:
  mov edi, 0
  call rt_set_last_ok@PLT
  ret
main_α:
#=======================================================================================================================
    .global main_α
    .global main_β
    .global main_γ
    .global main_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
main_α_body:
plseq1_g0_α:
 bb55088_α:
# BOX RESOLVE_ALT n=2 (mode-4 first-solution)  [x86() self-encoding]
 jmp .Lplch2_c0_pre
 .Lplch2_c0_pre:
 call rt_trail_mark_push@PLT
 jmp .Lplch2_c0_body
 .Lplch2_c1_pre:
 call rt_trail_unwind_top@PLT
 jmp .Lplch2_c1_body
plseq1_g0_β: jmp main_ω
.Lplch2_c0_body:
plseq3_g0_α:
 bb56096_α:
# BOX RESOLVE_CALL a/1 (WAM-CP-5, n_args=1)
 mov edi, 56
 mov rsi, 0
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 push rax
 mov edi, 17
 call resolve_bb_env_save_push@PLT
 push rax
 mov rsi, [rsp + 8]
 mov edi, 0
 call resolve_bb_bind_arg@PLT
 call .Lplpred_a_1
 pop rdi
 add rsp, 8
 call rt_last_ok@PLT
 test eax, eax
 je bb56096_α_fail5
 call resolve_bb_env_install@PLT
 mov rdi, rax
 call rt_cp_save_caller_env@PLT
 jmp xite4_then_α
bb56096_α_fail5: 
 call resolve_bb_env_pop@PLT
 jmp xite4_else_α
 xite4_cond_β:
 call resolve_cp_current@PLT
 test rax, rax
 je bb56096_α_nosol
 mov rdi, [rax + 24]
 call resolve_bb_env_install@PLT
 call .Lplpred_a_1_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb56096_α_nosol
 call resolve_cp_current@PLT
 mov rdi, [rax + 40]
 call resolve_bb_env_install@PLT
 jmp xite4_then_α
bb56096_α_nosol: jmp xite4_else_α
xite4_then_α:
 bb55984_α:
# BOX SUCCEED() [x86() self-encoding — jmp γ; β: jmp ω]
 jmp plseq3_g1_α
 xite4_then_β:
 jmp .Lplch2_c1_pre
xite4_else_α:
 bb55872_α:
# BOX FAIL()  [x86() self-encoding]
 jmp .Lplch2_c1_pre
 xite4_else_β:
 jmp .Lplch2_c1_pre
# END RESOLVE_ITE (β-tombstone via EP)  [x86() self-encoding]
plseq3_g0_β:
 jmp .Lplch2_c1_pre
plseq3_g1_α:
 bb55648_α:
 # BOX RESOLVE_BUILTIN(write/1)
 mov edi, 0
 call rt_write_var@PLT
 jmp plseq3_g2_α
plseq3_g1_β: jmp plseq3_g2_α
plseq3_g2_α:
 bb55536_α:
 # BOX RESOLVE_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp plseq3_g3_α
plseq3_g2_β: jmp plseq3_g3_α
plseq3_g3_α:
 bb55424_α:
# BOX FAIL()  [x86() self-encoding]
 jmp .Lplch2_c1_pre
 plseq3_g3_β:
 jmp .Lplch2_c1_pre
.Lplch2_c0_beta:
 jmp .Lplch2_c1_pre
.Lplch2_c1_body:
 bb55200_α:
# BOX SUCCEED() [x86() self-encoding — jmp γ; β: jmp ω]
 jmp plseq1_g1_α
 .Lplch2_c1_beta:
 jmp main_ω
plseq1_g1_α:
 bb54752_α:
# BOX RESOLVE_CALL a/1 (WAM-CP-5, n_args=1)
 mov edi, 56
 mov rsi, 1
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 push rax
 mov edi, 17
 call resolve_bb_env_save_push@PLT
 push rax
 mov rsi, [rsp + 8]
 mov edi, 0
 call resolve_bb_bind_arg@PLT
 call .Lplpred_a_1
 pop rdi
 add rsp, 8
 call rt_last_ok@PLT
 test eax, eax
 je bb54752_α_fail5
 call resolve_bb_env_install@PLT
 mov rdi, rax
 call rt_cp_save_caller_env@PLT
 jmp xite5_then_α
bb54752_α_fail5: 
 call resolve_bb_env_pop@PLT
 jmp xite5_else_α
 xite5_cond_β:
 call resolve_cp_current@PLT
 test rax, rax
 je bb54752_α_nosol
 mov rdi, [rax + 24]
 call resolve_bb_env_install@PLT
 call .Lplpred_a_1_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb54752_α_nosol
 call resolve_cp_current@PLT
 mov rdi, [rax + 40]
 call resolve_bb_env_install@PLT
 jmp xite5_then_α
bb54752_α_nosol: jmp xite5_else_α
xite5_then_α:
 bb54528_α:
 # BOX RESOLVE_BUILTIN(write/1)
 mov edi, 1
 call rt_write_var@PLT
 jmp plseq1_g2_α
xite5_then_β: jmp plseq1_g2_α
xite5_else_α:
 bb54304_α:
 # BOX RESOLVE_BUILTIN(write/1)
 lea rcx, [rip + .S1]
 mov rdi, rcx
 call rt_write_atom@PLT
 jmp plseq1_g2_α
xite5_else_β: jmp plseq1_g2_α
# END RESOLVE_ITE (β-tombstone via EP)  [x86() self-encoding]
plseq1_g1_β:
 jmp plseq1_g0_β
plseq1_g2_α:
 bb54192_α:
 # BOX RESOLVE_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp plseq1_g3_α
plseq1_g2_β: jmp plseq1_g3_α
plseq1_g3_α:
 bb53968_α:
# BOX FAIL()  [x86() self-encoding]
 jmp xite6_else_α
 xite6_cond_β:
 jmp xite6_else_α
xite6_then_α:
 bb53744_α:
 # BOX RESOLVE_BUILTIN(write/1)
 lea rcx, [rip + .S2]
 mov rdi, rcx
 call rt_write_atom@PLT
 jmp plseq1_g4_α
xite6_then_β: jmp plseq1_g4_α
xite6_else_α:
 bb53520_α:
 # BOX RESOLVE_BUILTIN(write/1)
 lea rcx, [rip + .S3]
 mov rdi, rcx
 call rt_write_atom@PLT
 jmp plseq1_g4_α
xite6_else_β: jmp plseq1_g4_α
# END RESOLVE_ITE (β-tombstone via EP)  [x86() self-encoding]
plseq1_g3_β:
 jmp plseq1_g0_β
plseq1_g4_α:
 bb53408_α:
 # BOX RESOLVE_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp plseq1_g5_α
plseq1_g4_β: jmp plseq1_g5_α
plseq1_g5_α:
 bb53184_α:
# BOX FAIL()  [x86() self-encoding]
 jmp xite7_else_α
 xite7_cond_β:
 jmp xite7_else_α
xite7_then_α:
 bb52960_α:
 # BOX RESOLVE_BUILTIN(write/1)
 lea rcx, [rip + .S0]
 mov rdi, rcx
 call rt_write_atom@PLT
 jmp plseq1_g6_α
xite7_then_β: jmp plseq1_g6_α
xite7_else_α:
 bb52736_α:
# BOX FAIL()  [x86() self-encoding]
 jmp xite8_else_α
 xite8_cond_β:
 jmp xite8_else_α
xite8_then_α:
 bb52512_α:
 # BOX RESOLVE_BUILTIN(write/1)
 lea rcx, [rip + .S4]
 mov rdi, rcx
 call rt_write_atom@PLT
 jmp plseq1_g6_α
xite8_then_β: jmp plseq1_g6_α
xite8_else_α:
 bb52288_α:
 # BOX RESOLVE_BUILTIN(write/1)
 lea rcx, [rip + .S5]
 mov rdi, rcx
 call rt_write_atom@PLT
 jmp plseq1_g6_α
xite8_else_β: jmp plseq1_g6_α
# END RESOLVE_ITE (β-tombstone via EP)  [x86() self-encoding]
xite7_else_β:
 jmp plseq1_g0_β
# END RESOLVE_ITE (β-tombstone via EP)  [x86() self-encoding]
plseq1_g5_β:
 jmp plseq1_g0_β
plseq1_g6_α:
 bb52176_α:
 # BOX RESOLVE_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp main_γ
plseq1_g6_β: jmp main_γ
main_β:
 jmp plseq1_g0_β
main_γ:
mov eax, 1
xor edx, edx
pop r12
ret
main_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
.section .rodata
.S0: .string "a"
.S1: .string "none"
.S2: .string "t"
.S3: .string "e"
.S4: .string "b"
.S5: .string "c"
.text
