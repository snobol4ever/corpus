  .intel_syntax noprefix
  .text
  .section .data
  .align 8
.Lpl_pred_table:
  .quad .Lpl_pname_0
  .quad 1
  .quad .Lplpred_num_1
  .quad .Lplpred_num_1_redo
  .quad .Lpl_pname_1
  .quad 1
  .quad .Lplpred_even_1
  .quad .Lplpred_even_1_redo
  .section .rodata
.Lpl_pname_0:
  .asciz "num"
.Lpl_pname_1:
  .asciz "even"
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
.Lplpred_num_1:
 bb14240_α:
# BOX RESOLVE_CHOICE n=5 (WAM-CP-5 heap cursor, WAM-CP-9 cut)
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
 cmp edi, 5
 jge .Lplch0_exhausted
 cmp edi, 0
 je .Lplch0_c0_pre
 cmp edi, 1
 je .Lplch0_c1_pre
 cmp edi, 2
 je .Lplch0_c2_pre
 cmp edi, 3
 je .Lplch0_c3_pre
 cmp edi, 4
 je .Lplch0_c4_pre
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
 .Lplch0_c3_pre:
 call resolve_cp_current@PLT
 mov edi, [rax + 16]
 call rt_trail_unwind@PLT
 call resolve_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch0_c3_body
 .Lplch0_c4_pre:
 call resolve_cp_current@PLT
 mov edi, [rax + 16]
 call rt_trail_unwind@PLT
 call resolve_cp_current@PLT
 inc dword ptr [rax + 48]
 jmp .Lplch0_c4_body
 .Lplch0_exit_γ:
 call rt_get_cut_flag@PLT
 test eax, eax
 jnz .Lplch0_cut_γ
 call resolve_cp_current@PLT
 mov rdi, rax
 call rt_choice_cut_exit@PLT
 jmp .Lplpred_num_1_γ
 .Lplch0_cut_γ:
 call resolve_cp_current@PLT
 mov rdi, rax
 call rt_choice_cut_unwind@PLT
 jmp .Lplpred_num_1_γ
 .Lplch0_cut_ω:
 call resolve_cp_current@PLT
 mov rdi, rax
 call rt_choice_cut_unwind@PLT
 jmp .Lplpred_num_1_ω
 .Lplch0_exhausted:
 call resolve_cp_current@PLT
 mov rdi, rax
 call rt_choice_cut_exit@PLT
 call resolve_cp_current@PLT
 mov edi, [rax + 16]
 call rt_trail_unwind@PLT
 call resolve_cp_pop@PLT
 jmp .Lplpred_num_1_ω
 .Lplpred_num_1_β:
 call rt_get_cut_flag@PLT
 test eax, eax
 jnz .Lplch0_cut_ω
 call resolve_cp_current@PLT
 test rax, rax
 je .Lplch0_β_nosol
 mov rdi, rax
 call rt_choice_cut_enter@PLT
 jmp .Lplch0_dispatch
.Lplch0_β_nosol: jmp .Lplpred_num_1_ω
.Lplch0_c0_body:
 bb976_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 var-const)  [x86() self-encoding]
 mov edi, 0
 mov esi, 0
 mov rdx, 1
 mov ecx, 0
 xorps xmm0, xmm0
 call rt_unify_const@PLT
 test eax, eax
 je .Lplpred_num_1_β
 jmp .Lplch0_exit_γ
 .Lplch0_c0_beta:
 jmp .Lplpred_num_1_β
.Lplch0_c1_body:
 bb4048_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 var-const)  [x86() self-encoding]
 mov edi, 0
 mov esi, 0
 mov rdx, 2
 mov ecx, 0
 xorps xmm0, xmm0
 call rt_unify_const@PLT
 test eax, eax
 je .Lplpred_num_1_β
 jmp .Lplch0_exit_γ
 .Lplch0_c1_beta:
 jmp .Lplpred_num_1_β
.Lplch0_c2_body:
 bb7120_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 var-const)  [x86() self-encoding]
 mov edi, 0
 mov esi, 0
 mov rdx, 3
 mov ecx, 0
 xorps xmm0, xmm0
 call rt_unify_const@PLT
 test eax, eax
 je .Lplpred_num_1_β
 jmp .Lplch0_exit_γ
 .Lplch0_c2_beta:
 jmp .Lplpred_num_1_β
.Lplch0_c3_body:
 bb10192_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 var-const)  [x86() self-encoding]
 mov edi, 0
 mov esi, 0
 mov rdx, 4
 mov ecx, 0
 xorps xmm0, xmm0
 call rt_unify_const@PLT
 test eax, eax
 je .Lplpred_num_1_β
 jmp .Lplch0_exit_γ
 .Lplch0_c3_beta:
 jmp .Lplpred_num_1_β
.Lplch0_c4_body:
 bb13264_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 var-const)  [x86() self-encoding]
 mov edi, 0
 mov esi, 0
 mov rdx, 5
 mov ecx, 0
 xorps xmm0, xmm0
 call rt_unify_const@PLT
 test eax, eax
 je .Lplpred_num_1_β
 jmp .Lplch0_exit_γ
 .Lplch0_c4_beta:
 jmp .Lplpred_num_1_β
.Lplpred_num_1_redo:
jmp .Lplpred_num_1_β
.Lplpred_num_1_γ:
  mov edi, 1
  call rt_set_last_ok@PLT
  ret
.Lplpred_num_1_ω:
  mov edi, 0
  call rt_set_last_ok@PLT
  ret
.Lplpred_even_1:
plseq1_g0_α:
 bb17904_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 self-unify x=x — vacuous success)  [x86() self-encoding]
 jmp plseq1_g1_α
 plseq1_g0_β:
 jmp .Lplpred_even_1_ω
plseq1_g1_α:
 bb17680_α:
# BOX RESOLVE_CALL num/1 (WAM-CP-5, n_args=1)
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
 call .Lplpred_num_1
 pop rdi
 add rsp, 8
 call rt_last_ok@PLT
 test eax, eax
 je bb17680_α_fail5
 call resolve_bb_env_install@PLT
 mov rdi, rax
 call rt_cp_save_caller_env@PLT
 jmp plseq1_g2_α
bb17680_α_fail5: 
 call resolve_bb_env_pop@PLT
 jmp .Lplpred_even_1_ω
 plseq1_g1_β:
 call resolve_cp_current@PLT
 test rax, rax
 je bb17680_α_nosol
 mov rdi, [rax + 24]
 call resolve_bb_env_install@PLT
 call .Lplpred_num_1_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb17680_α_nosol
 call resolve_cp_current@PLT
 mov rdi, [rax + 40]
 call resolve_bb_env_install@PLT
 jmp plseq1_g2_α
bb17680_α_nosol: jmp .Lplpred_even_1_ω
plseq1_g2_α:
 bb17120_α:
 # BOX RESOLVE_BUILTIN(is/2)
 mov rdi, 0
 lea rsi, [rip + .S1]
 mov edx, 56
 mov rcx, 0
 mov r8d, 0
 mov r9, 2
 call rt_is_lint@PLT
 test eax, eax
 je plseq1_g1_β
 jmp .Lplpred_even_1_γ
plseq1_g2_β: jmp plseq1_g1_β
.Lplpred_even_1_β:
 jmp plseq1_g1_β
.Lplpred_even_1_redo:
jmp .Lplpred_even_1_β
.Lplpred_even_1_γ:
  mov edi, 1
  call rt_set_last_ok@PLT
  ret
.Lplpred_even_1_ω:
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
plseq2_g0_α:
 bb96160_α:
 # BOX RESOLVE_BUILTIN(findall/156355296)
 sub rsp, 16
 mov edi, 56
 mov rsi, 0
 xor edx, edx
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 lea rdi, [rip + .S2]
 mov esi, 1
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 push rax
 mov edi, 56
 mov rsi, 0
 xor edx, edx
 xor ecx, ecx
 call rt_node_to_term@PLT
 push rax
 mov edi, 56
 mov rsi, 1
 xor edx, edx
 xor ecx, ecx
 call rt_node_to_term@PLT
 push rax
 sub rsp, 8
 mov rdx, [rsp + 8]
 mov rsi, [rsp + 16]
 mov rdi, [rsp + 24]
 call rt_findall_term@PLT
 add rsp, 32
 test eax, eax
 je main_ω
 jmp plseq2_g1_α
plseq2_g0_β: jmp main_ω
plseq2_g1_α:
 bb95936_α:
 # BOX RESOLVE_BUILTIN(write/1)
 mov edi, 1
 call rt_write_var@PLT
 jmp plseq2_g2_α
plseq2_g1_β: jmp plseq2_g2_α
plseq2_g2_α:
 bb95824_α:
 # BOX RESOLVE_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp main_γ
plseq2_g2_β: jmp main_γ
main_β:
 jmp main_ω
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
.S0: .string "num"
.S1: .string "mod"
.S2: .string "even"
.text
