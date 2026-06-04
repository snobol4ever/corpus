  .intel_syntax noprefix
  .text
  .section .data
  .align 8
.Lpl_pred_table:
  .quad .Lpl_pname_0
  .quad 2
  .quad .Lplpred_person_2
  .quad .Lplpred_person_2_redo
  .section .rodata
.Lpl_pname_0:
  .asciz "person"
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
.Lplpred_person_2:
 bb18592_α:
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
 jmp .Lplpred_person_2_γ
 .Lplch0_cut_γ:
 call resolve_cp_current@PLT
 mov rdi, rax
 call rt_choice_cut_unwind@PLT
 jmp .Lplpred_person_2_γ
 .Lplch0_cut_ω:
 call resolve_cp_current@PLT
 mov rdi, rax
 call rt_choice_cut_unwind@PLT
 jmp .Lplpred_person_2_ω
 .Lplch0_exhausted:
 call resolve_cp_current@PLT
 mov rdi, rax
 call rt_choice_cut_exit@PLT
 call resolve_cp_current@PLT
 mov edi, [rax + 16]
 call rt_trail_unwind@PLT
 call resolve_cp_pop@PLT
 jmp .Lplpred_person_2_ω
 .Lplpred_person_2_β:
 call rt_get_cut_flag@PLT
 test eax, eax
 jnz .Lplch0_cut_ω
 call resolve_cp_current@PLT
 test rax, rax
 je .Lplch0_β_nosol
 mov rdi, rax
 call rt_choice_cut_enter@PLT
 jmp .Lplch0_dispatch
.Lplch0_β_nosol: jmp .Lplpred_person_2_ω
.Lplch0_c0_body:
plseq1_g0_α:
 bb10800_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 var-const)  [x86() self-encoding]
 mov edi, 0
 mov esi, 57
 mov rdx, 0
 lea rcx, [rip + .S0]
 xorps xmm0, xmm0
 call rt_unify_const@PLT
 test eax, eax
 je .Lplpred_person_2_β
 jmp plseq1_g1_α
 plseq1_g0_β:
 jmp .Lplpred_person_2_β
plseq1_g1_α:
 bb10464_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 var-const)  [x86() self-encoding]
 mov edi, 1
 mov esi, 0
 mov rdx, 30
 mov ecx, 0
 xorps xmm0, xmm0
 call rt_unify_const@PLT
 test eax, eax
 je .Lplpred_person_2_β
 jmp .Lplch0_exit_γ
 plseq1_g1_β:
 jmp .Lplpred_person_2_β
.Lplch0_c0_beta:
 jmp .Lplpred_person_2_β
.Lplch0_c1_body:
plseq2_g0_α:
 bb14208_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 var-const)  [x86() self-encoding]
 mov edi, 0
 mov esi, 57
 mov rdx, 0
 lea rcx, [rip + .S1]
 xorps xmm0, xmm0
 call rt_unify_const@PLT
 test eax, eax
 je .Lplpred_person_2_β
 jmp plseq2_g1_α
 plseq2_g0_β:
 jmp .Lplpred_person_2_β
plseq2_g1_α:
 bb13872_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 var-const)  [x86() self-encoding]
 mov edi, 1
 mov esi, 0
 mov rdx, 25
 mov ecx, 0
 xorps xmm0, xmm0
 call rt_unify_const@PLT
 test eax, eax
 je .Lplpred_person_2_β
 jmp .Lplch0_exit_γ
 plseq2_g1_β:
 jmp .Lplpred_person_2_β
.Lplch0_c1_beta:
 jmp .Lplpred_person_2_β
.Lplch0_c2_body:
plseq3_g0_α:
 bb17616_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 var-const)  [x86() self-encoding]
 mov edi, 0
 mov esi, 57
 mov rdx, 0
 lea rcx, [rip + .S2]
 xorps xmm0, xmm0
 call rt_unify_const@PLT
 test eax, eax
 je .Lplpred_person_2_β
 jmp plseq3_g1_α
 plseq3_g0_β:
 jmp .Lplpred_person_2_β
plseq3_g1_α:
 bb17280_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 var-const)  [x86() self-encoding]
 mov edi, 1
 mov esi, 0
 mov rdx, 35
 mov ecx, 0
 xorps xmm0, xmm0
 call rt_unify_const@PLT
 test eax, eax
 je .Lplpred_person_2_β
 jmp .Lplch0_exit_γ
 plseq3_g1_β:
 jmp .Lplpred_person_2_β
.Lplch0_c2_beta:
 jmp .Lplpred_person_2_β
.Lplpred_person_2_redo:
jmp .Lplpred_person_2_β
.Lplpred_person_2_γ:
  mov edi, 1
  call rt_set_last_ok@PLT
  ret
.Lplpred_person_2_ω:
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
plseq4_g0_α:
 bb7248_α:
# BOX RESOLVE_CALL person/2 (WAM-CP-5, n_args=2)
 mov edi, 56
 mov rsi, 0
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
 call .Lplpred_person_2
 add rsp, 8
 pop rdi
 add rsp, 16
 call rt_last_ok@PLT
 test eax, eax
 je bb7248_α_fail5
 call resolve_bb_env_install@PLT
 mov rdi, rax
 call rt_cp_save_caller_env@PLT
 jmp plseq4_g1_α
bb7248_α_fail5: 
 call resolve_bb_env_pop@PLT
 jmp main_ω
 plseq4_g0_β:
 call resolve_cp_current@PLT
 test rax, rax
 je bb7248_α_nosol
 mov rdi, [rax + 24]
 call resolve_bb_env_install@PLT
 call .Lplpred_person_2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb7248_α_nosol
 call resolve_cp_current@PLT
 mov rdi, [rax + 40]
 call resolve_bb_env_install@PLT
 jmp plseq4_g1_α
bb7248_α_nosol: jmp main_ω
plseq4_g1_α:
 bb7024_α:
 # BOX RESOLVE_BUILTIN(write/1)
 mov edi, 0
 call rt_write_var@PLT
 jmp plseq4_g2_α
plseq4_g1_β: jmp plseq4_g2_α
plseq4_g2_α:
 bb6800_α:
 # BOX RESOLVE_BUILTIN(write/1)
 lea rcx, [rip + .S4]
 mov rdi, rcx
 call rt_write_atom@PLT
 jmp plseq4_g3_α
plseq4_g2_β: jmp plseq4_g3_α
plseq4_g3_α:
 bb6576_α:
 # BOX RESOLVE_BUILTIN(write/1)
 mov edi, 1
 call rt_write_var@PLT
 jmp plseq4_g4_α
plseq4_g3_β: jmp plseq4_g4_α
plseq4_g4_α:
 bb6464_α:
 # BOX RESOLVE_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp plseq4_g5_α
plseq4_g4_β: jmp plseq4_g5_α
plseq4_g5_α:
 bb6352_α:
# BOX FAIL()  [x86() self-encoding]
 jmp plseq4_g0_β
 plseq4_g5_β:
 jmp plseq4_g0_β
main_β:
 jmp plseq4_g0_β
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
.S0: .string "alice"
.S1: .string "bob"
.S2: .string "carol"
.S3: .string "person"
.S4: .string " "
.text
