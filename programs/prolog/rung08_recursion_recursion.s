  .intel_syntax noprefix
  .text
  .section .data
  .align 8
.Lpl_pred_table:
  .quad .Lpl_pname_0
  .quad 2
  .quad .Lplpred_fib_2
  .quad .Lplpred_fib_2_redo
  .quad .Lpl_pname_2
  .quad 2
  .quad .Lplpred_factorial_2
  .quad .Lplpred_factorial_2_redo
  .section .rodata
.Lpl_pname_0:
  .asciz "fib"
.Lpl_pname_2:
  .asciz "factorial"
  .text
  .globl main
main:
  push rbp
  mov rbp, rsp
  call rt_main_init@PLT
  lea rdi, [rip + .Lpl_pred_table]
  mov esi, 2
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
.Lplpred_fib_2:
 bb6000_α:
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
 jmp .Lplpred_fib_2_γ
 .Lplch0_cut_γ:
 call resolve_cp_current@PLT
 mov rdi, rax
 call rt_choice_cut_unwind@PLT
 jmp .Lplpred_fib_2_γ
 .Lplch0_cut_ω:
 call resolve_cp_current@PLT
 mov rdi, rax
 call rt_choice_cut_unwind@PLT
 jmp .Lplpred_fib_2_ω
 .Lplch0_exhausted:
 call resolve_cp_current@PLT
 mov rdi, rax
 call rt_choice_cut_exit@PLT
 call resolve_cp_current@PLT
 mov edi, [rax + 16]
 call rt_trail_unwind@PLT
 call resolve_cp_pop@PLT
 jmp .Lplpred_fib_2_ω
 .Lplpred_fib_2_β:
 call rt_get_cut_flag@PLT
 test eax, eax
 jnz .Lplch0_cut_ω
 call resolve_cp_current@PLT
 test rax, rax
 je .Lplch0_β_nosol
 mov rdi, rax
 call rt_choice_cut_enter@PLT
 jmp .Lplch0_dispatch
.Lplch0_β_nosol: jmp .Lplpred_fib_2_ω
.Lplch0_c0_body:
plseq1_g0_α:
 bb95520_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 var-const)  [x86() self-encoding]
 mov edi, 0
 mov esi, 0
 mov rdx, 0
 mov ecx, 0
 xorps xmm0, xmm0
 call rt_unify_const@PLT
 test eax, eax
 je .Lplpred_fib_2_β
 jmp plseq1_g1_α
 plseq1_g0_β:
 jmp .Lplpred_fib_2_β
plseq1_g1_α:
 bb95184_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 var-const)  [x86() self-encoding]
 mov edi, 1
 mov esi, 0
 mov rdx, 0
 mov ecx, 0
 xorps xmm0, xmm0
 call rt_unify_const@PLT
 test eax, eax
 je .Lplpred_fib_2_β
 jmp .Lplch0_exit_γ
 plseq1_g1_β:
 jmp .Lplpred_fib_2_β
.Lplch0_c0_beta:
 jmp .Lplpred_fib_2_β
.Lplch0_c1_body:
plseq2_g0_α:
 bb98928_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 var-const)  [x86() self-encoding]
 mov edi, 0
 mov esi, 0
 mov rdx, 1
 mov ecx, 0
 xorps xmm0, xmm0
 call rt_unify_const@PLT
 test eax, eax
 je .Lplpred_fib_2_β
 jmp plseq2_g1_α
 plseq2_g0_β:
 jmp .Lplpred_fib_2_β
plseq2_g1_α:
 bb98592_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 var-const)  [x86() self-encoding]
 mov edi, 1
 mov esi, 0
 mov rdx, 1
 mov ecx, 0
 xorps xmm0, xmm0
 call rt_unify_const@PLT
 test eax, eax
 je .Lplpred_fib_2_β
 jmp .Lplch0_exit_γ
 plseq2_g1_β:
 jmp .Lplpred_fib_2_β
.Lplch0_c1_beta:
 jmp .Lplpred_fib_2_β
.Lplch0_c2_body:
plseq3_g0_α:
 bb5024_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 self-unify x=x — vacuous success)  [x86() self-encoding]
 jmp plseq3_g1_α
 plseq3_g0_β:
 jmp .Lplpred_fib_2_β
plseq3_g1_α:
 bb4688_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 self-unify x=x — vacuous success)  [x86() self-encoding]
 jmp plseq3_g2_α
 plseq3_g1_β:
 jmp .Lplpred_fib_2_β
plseq3_g2_α:
 bb4352_α:
 # BOX RESOLVE_BUILTIN(>/2)
 sub rsp, 16
 lea rdi, [rip + .S0]
 mov esi, 56
 mov rdx, 0
 xor ecx, ecx
 mov r8d, 0
 mov r9, 1
 xor eax, eax
 mov qword ptr [rsp + 0], rax
 call rt_arith_cmp@PLT
 add rsp, 16
 test eax, eax
 je .Lplpred_fib_2_β
 jmp plseq3_g3_α
plseq3_g2_β: jmp .Lplpred_fib_2_β
plseq3_g3_α:
 bb3792_α:
 # BOX RESOLVE_BUILTIN(is/2)
 mov edi, 2
 lea rsi, [rip + .S1]
 mov edx, 56
 mov rcx, 0
 mov r8d, 0
 mov r9, 1
 call rt_is@PLT
 test eax, eax
 je .Lplpred_fib_2_β
 jmp plseq3_g4_α
plseq3_g3_β: jmp .Lplpred_fib_2_β
plseq3_g4_α:
 bb3232_α:
 # BOX RESOLVE_BUILTIN(is/2)
 mov edi, 3
 lea rsi, [rip + .S1]
 mov edx, 56
 mov rcx, 0
 mov r8d, 0
 mov r9, 2
 call rt_is@PLT
 test eax, eax
 je .Lplpred_fib_2_β
 jmp plseq3_g5_α
plseq3_g4_β: jmp .Lplpred_fib_2_β
plseq3_g5_α:
 bb2896_α:
# BOX RESOLVE_CALL fib/2 (WAM-CP-5, n_args=2)
 mov edi, 56
 mov rsi, 2
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 push rax
 mov edi, 56
 mov rsi, 4
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 push rax
 mov edi, 18
 call resolve_bb_env_save_push@PLT
 push rax
 sub rsp, 8
 mov rsi, [rsp + 16]
 mov edi, 1
 call resolve_bb_bind_arg@PLT
 mov rsi, [rsp + 24]
 mov edi, 0
 call resolve_bb_bind_arg@PLT
 call .Lplpred_fib_2
 add rsp, 8
 pop rdi
 add rsp, 16
 call rt_last_ok@PLT
 test eax, eax
 je bb2896_α_fail5
 call resolve_bb_env_install@PLT
 mov rdi, rax
 call rt_cp_save_caller_env@PLT
 jmp plseq3_g6_α
bb2896_α_fail5: 
 call resolve_bb_env_pop@PLT
 jmp .Lplpred_fib_2_β
 plseq3_g5_β:
 call resolve_cp_current@PLT
 test rax, rax
 je bb2896_α_nosol
 mov rdi, [rax + 24]
 call resolve_bb_env_install@PLT
 call .Lplpred_fib_2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb2896_α_nosol
 call resolve_cp_current@PLT
 mov rdi, [rax + 40]
 call resolve_bb_env_install@PLT
 jmp plseq3_g6_α
bb2896_α_nosol: jmp .Lplpred_fib_2_β
plseq3_g6_α:
 bb2560_α:
# BOX RESOLVE_CALL fib/2 (WAM-CP-5, n_args=2)
 mov edi, 56
 mov rsi, 3
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 push rax
 mov edi, 56
 mov rsi, 5
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 push rax
 mov edi, 18
 call resolve_bb_env_save_push@PLT
 push rax
 sub rsp, 8
 mov rsi, [rsp + 16]
 mov edi, 1
 call resolve_bb_bind_arg@PLT
 mov rsi, [rsp + 24]
 mov edi, 0
 call resolve_bb_bind_arg@PLT
 call .Lplpred_fib_2
 add rsp, 8
 pop rdi
 add rsp, 16
 call rt_last_ok@PLT
 test eax, eax
 je bb2560_α_fail5
 call resolve_bb_env_install@PLT
 mov rdi, rax
 call rt_cp_save_caller_env@PLT
 jmp plseq3_g7_α
bb2560_α_fail5: 
 call resolve_bb_env_pop@PLT
 jmp plseq3_g5_β
 plseq3_g6_β:
 call resolve_cp_current@PLT
 test rax, rax
 je bb2560_α_nosol
 mov rdi, [rax + 24]
 call resolve_bb_env_install@PLT
 call .Lplpred_fib_2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb2560_α_nosol
 call resolve_cp_current@PLT
 mov rdi, [rax + 40]
 call resolve_bb_env_install@PLT
 jmp plseq3_g7_α
bb2560_α_nosol: jmp plseq3_g5_β
plseq3_g7_α:
 bb2000_α:
 # BOX RESOLVE_BUILTIN(is/2)
 mov edi, 1
 lea rsi, [rip + .S3]
 mov edx, 56
 mov rcx, 4
 mov r8d, 56
 mov r9, 5
 call rt_is@PLT
 test eax, eax
 je plseq3_g6_β
 jmp .Lplch0_exit_γ
plseq3_g7_β: jmp plseq3_g6_β
.Lplch0_c2_beta:
 jmp plseq3_g6_β
.Lplpred_fib_2_redo:
jmp .Lplpred_fib_2_β
.Lplpred_fib_2_γ:
  mov edi, 1
  call rt_set_last_ok@PLT
  ret
.Lplpred_fib_2_ω:
  mov edi, 0
  call rt_set_last_ok@PLT
  ret
.Lplpred_factorial_2:
 bb19504_α:
# BOX RESOLVE_CHOICE n=2 (WAM-CP-5 heap cursor, WAM-CP-9 cut)
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
 .Lplch4_dispatch:
 call resolve_cp_current@PLT
 mov edi, [rax + 48]
 cmp edi, 2
 jge .Lplch4_exhausted
 cmp edi, 0
 je .Lplch4_c0_pre
 cmp edi, 1
 je .Lplch4_c1_pre
 jmp .Lplch4_exhausted
 .Lplch4_c0_pre:
 call resolve_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch4_c0_body
 .Lplch4_c1_pre:
 call resolve_cp_current@PLT
 mov edi, [rax + 16]
 call rt_trail_unwind@PLT
 call resolve_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch4_c1_body
 .Lplch4_exit_γ:
 call rt_get_cut_flag@PLT
 test eax, eax
 jnz .Lplch4_cut_γ
 call resolve_cp_current@PLT
 mov rdi, rax
 call rt_choice_cut_exit@PLT
 jmp .Lplpred_factorial_2_γ
 .Lplch4_cut_γ:
 call resolve_cp_current@PLT
 mov rdi, rax
 call rt_choice_cut_unwind@PLT
 jmp .Lplpred_factorial_2_γ
 .Lplch4_cut_ω:
 call resolve_cp_current@PLT
 mov rdi, rax
 call rt_choice_cut_unwind@PLT
 jmp .Lplpred_factorial_2_ω
 .Lplch4_exhausted:
 call resolve_cp_current@PLT
 mov rdi, rax
 call rt_choice_cut_exit@PLT
 call resolve_cp_current@PLT
 mov edi, [rax + 16]
 call rt_trail_unwind@PLT
 call resolve_cp_pop@PLT
 jmp .Lplpred_factorial_2_ω
 .Lplpred_factorial_2_β:
 call rt_get_cut_flag@PLT
 test eax, eax
 jnz .Lplch4_cut_ω
 call resolve_cp_current@PLT
 test rax, rax
 je .Lplch4_β_nosol
 mov rdi, rax
 call rt_choice_cut_enter@PLT
 jmp .Lplch4_dispatch
.Lplch4_β_nosol: jmp .Lplpred_factorial_2_ω
.Lplch4_c0_body:
plseq5_g0_α:
 bb13328_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 var-const)  [x86() self-encoding]
 mov edi, 0
 mov esi, 0
 mov rdx, 0
 mov ecx, 0
 xorps xmm0, xmm0
 call rt_unify_const@PLT
 test eax, eax
 je .Lplpred_factorial_2_β
 jmp plseq5_g1_α
 plseq5_g0_β:
 jmp .Lplpred_factorial_2_β
plseq5_g1_α:
 bb12992_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 var-const)  [x86() self-encoding]
 mov edi, 1
 mov esi, 0
 mov rdx, 1
 mov ecx, 0
 xorps xmm0, xmm0
 call rt_unify_const@PLT
 test eax, eax
 je .Lplpred_factorial_2_β
 jmp .Lplch4_exit_γ
 plseq5_g1_β:
 jmp .Lplpred_factorial_2_β
.Lplch4_c0_beta:
 jmp .Lplpred_factorial_2_β
.Lplch4_c1_body:
plseq6_g0_α:
 bb18528_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 self-unify x=x — vacuous success)  [x86() self-encoding]
 jmp plseq6_g1_α
 plseq6_g0_β:
 jmp .Lplpred_factorial_2_β
plseq6_g1_α:
 bb18192_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 self-unify x=x — vacuous success)  [x86() self-encoding]
 jmp plseq6_g2_α
 plseq6_g1_β:
 jmp .Lplpred_factorial_2_β
plseq6_g2_α:
 bb17856_α:
 # BOX RESOLVE_BUILTIN(>/2)
 sub rsp, 16
 lea rdi, [rip + .S0]
 mov esi, 56
 mov rdx, 0
 xor ecx, ecx
 mov r8d, 0
 mov r9, 0
 xor eax, eax
 mov qword ptr [rsp + 0], rax
 call rt_arith_cmp@PLT
 add rsp, 16
 test eax, eax
 je .Lplpred_factorial_2_β
 jmp plseq6_g3_α
plseq6_g2_β: jmp .Lplpred_factorial_2_β
plseq6_g3_α:
 bb17296_α:
 # BOX RESOLVE_BUILTIN(is/2)
 mov edi, 2
 lea rsi, [rip + .S1]
 mov edx, 56
 mov rcx, 0
 mov r8d, 0
 mov r9, 1
 call rt_is@PLT
 test eax, eax
 je .Lplpred_factorial_2_β
 jmp plseq6_g4_α
plseq6_g3_β: jmp .Lplpred_factorial_2_β
plseq6_g4_α:
 bb16960_α:
# BOX RESOLVE_CALL factorial/2 (WAM-CP-5, n_args=2)
 mov edi, 56
 mov rsi, 2
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 push rax
 mov edi, 56
 mov rsi, 3
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 push rax
 mov edi, 18
 call resolve_bb_env_save_push@PLT
 push rax
 sub rsp, 8
 mov rsi, [rsp + 16]
 mov edi, 1
 call resolve_bb_bind_arg@PLT
 mov rsi, [rsp + 24]
 mov edi, 0
 call resolve_bb_bind_arg@PLT
 call .Lplpred_factorial_2
 add rsp, 8
 pop rdi
 add rsp, 16
 call rt_last_ok@PLT
 test eax, eax
 je bb16960_α_fail5
 call resolve_bb_env_install@PLT
 mov rdi, rax
 call rt_cp_save_caller_env@PLT
 jmp plseq6_g5_α
bb16960_α_fail5: 
 call resolve_bb_env_pop@PLT
 jmp .Lplpred_factorial_2_β
 plseq6_g4_β:
 call resolve_cp_current@PLT
 test rax, rax
 je bb16960_α_nosol
 mov rdi, [rax + 24]
 call resolve_bb_env_install@PLT
 call .Lplpred_factorial_2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb16960_α_nosol
 call resolve_cp_current@PLT
 mov rdi, [rax + 40]
 call resolve_bb_env_install@PLT
 jmp plseq6_g5_α
bb16960_α_nosol: jmp .Lplpred_factorial_2_β
plseq6_g5_α:
 bb16400_α:
 # BOX RESOLVE_BUILTIN(is/2)
 mov edi, 1
 lea rsi, [rip + .S5]
 mov edx, 56
 mov rcx, 0
 mov r8d, 56
 mov r9, 3
 call rt_is@PLT
 test eax, eax
 je plseq6_g4_β
 jmp .Lplch4_exit_γ
plseq6_g5_β: jmp plseq6_g4_β
.Lplch4_c1_beta:
 jmp plseq6_g4_β
.Lplpred_factorial_2_redo:
jmp .Lplpred_factorial_2_β
.Lplpred_factorial_2_γ:
  mov edi, 1
  call rt_set_last_ok@PLT
  ret
.Lplpred_factorial_2_ω:
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
plseq7_g0_α:
 bb91968_α:
# BOX RESOLVE_CALL fib/2 (WAM-CP-5, n_args=2)
 mov edi, 0
 mov rsi, 6
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 push rax
 mov edi, 56
 mov rsi, 0
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 push rax
 mov edi, 18
 call resolve_bb_env_save_push@PLT
 push rax
 sub rsp, 8
 mov rsi, [rsp + 16]
 mov edi, 1
 call resolve_bb_bind_arg@PLT
 mov rsi, [rsp + 24]
 mov edi, 0
 call resolve_bb_bind_arg@PLT
 call .Lplpred_fib_2
 add rsp, 8
 pop rdi
 add rsp, 16
 call rt_last_ok@PLT
 test eax, eax
 je bb91968_α_fail5
 call resolve_bb_env_install@PLT
 mov rdi, rax
 call rt_cp_save_caller_env@PLT
 jmp plseq7_g1_α
bb91968_α_fail5: 
 call resolve_bb_env_pop@PLT
 jmp main_ω
 plseq7_g0_β:
 call resolve_cp_current@PLT
 test rax, rax
 je bb91968_α_nosol
 mov rdi, [rax + 24]
 call resolve_bb_env_install@PLT
 call .Lplpred_fib_2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb91968_α_nosol
 call resolve_cp_current@PLT
 mov rdi, [rax + 40]
 call resolve_bb_env_install@PLT
 jmp plseq7_g1_α
bb91968_α_nosol: jmp main_ω
plseq7_g1_α:
 bb91744_α:
 # BOX RESOLVE_BUILTIN(write/1)
 mov edi, 0
 call rt_write_var@PLT
 jmp plseq7_g2_α
plseq7_g1_β: jmp plseq7_g2_α
plseq7_g2_α:
 bb91632_α:
 # BOX RESOLVE_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp plseq7_g3_α
plseq7_g2_β: jmp plseq7_g3_α
plseq7_g3_α:
 bb91296_α:
# BOX RESOLVE_CALL factorial/2 (WAM-CP-5, n_args=2)
 mov edi, 0
 mov rsi, 3
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 push rax
 mov edi, 56
 mov rsi, 1
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 push rax
 mov edi, 18
 call resolve_bb_env_save_push@PLT
 push rax
 sub rsp, 8
 mov rsi, [rsp + 16]
 mov edi, 1
 call resolve_bb_bind_arg@PLT
 mov rsi, [rsp + 24]
 mov edi, 0
 call resolve_bb_bind_arg@PLT
 call .Lplpred_factorial_2
 add rsp, 8
 pop rdi
 add rsp, 16
 call rt_last_ok@PLT
 test eax, eax
 je bb91296_α_fail5
 call resolve_bb_env_install@PLT
 mov rdi, rax
 call rt_cp_save_caller_env@PLT
 jmp plseq7_g4_α
bb91296_α_fail5: 
 call resolve_bb_env_pop@PLT
 jmp plseq7_g0_β
 plseq7_g3_β:
 call resolve_cp_current@PLT
 test rax, rax
 je bb91296_α_nosol
 mov rdi, [rax + 24]
 call resolve_bb_env_install@PLT
 call .Lplpred_factorial_2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb91296_α_nosol
 call resolve_cp_current@PLT
 mov rdi, [rax + 40]
 call resolve_bb_env_install@PLT
 jmp plseq7_g4_α
bb91296_α_nosol: jmp plseq7_g0_β
plseq7_g4_α:
 bb91072_α:
 # BOX RESOLVE_BUILTIN(write/1)
 mov edi, 1
 call rt_write_var@PLT
 jmp plseq7_g5_α
plseq7_g4_β: jmp plseq7_g5_α
plseq7_g5_α:
 bb90960_α:
 # BOX RESOLVE_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp main_γ
plseq7_g5_β: jmp main_γ
main_β:
 jmp plseq7_g3_β
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
.S0: .string ">"
.S1: .string "-"
.S2: .string "fib"
.S3: .string "+"
.S4: .string "factorial"
.S5: .string "*"
.text
