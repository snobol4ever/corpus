  .intel_syntax noprefix
  .text
  .section .data
  .align 8
.Lpl_pred_table:
  .quad .Lpl_pname_0
  .quad 2
  .quad .Lplpred_member_2
  .quad .Lplpred_member_2_redo
  .section .rodata
.Lpl_pname_0:
  .asciz "member"
  .text
  .globl main
main:
  push rbp
  mov rbp, rsp
  call rt_main_init@PLT
  lea rdi, [rip + .Lpl_pred_table]
  mov esi, 1
  call rt_pl_table_install@PLT
  mov edi, 1
  call rt_env_alloc@PLT
  call rt_frame@PLT
  mov rdi, rax
  xor esi, esi
  call main_α
  xor eax, eax
  pop rbp
  ret
.Lplpred_member_2:
 bb62288_α:
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
 .Lplch0_dispatch:
 call resolve_cp_current@PLT
 mov edi, [rax + 48]
 cmp edi, 2
 jge .Lplch0_exhausted
 cmp edi, 0
 je .Lplch0_c0_pre
 cmp edi, 1
 je .Lplch0_c1_pre
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
 .Lplch0_exit_γ:
 call rt_get_cut_flag@PLT
 test eax, eax
 jnz .Lplch0_cut_γ
 call resolve_cp_current@PLT
 mov rdi, rax
 call rt_choice_cut_exit@PLT
 jmp .Lplpred_member_2_γ
 .Lplch0_cut_γ:
 call resolve_cp_current@PLT
 mov rdi, rax
 call rt_choice_cut_unwind@PLT
 jmp .Lplpred_member_2_γ
 .Lplch0_cut_ω:
 call resolve_cp_current@PLT
 mov rdi, rax
 call rt_choice_cut_unwind@PLT
 jmp .Lplpred_member_2_ω
 .Lplch0_exhausted:
 call resolve_cp_current@PLT
 mov rdi, rax
 call rt_choice_cut_exit@PLT
 call resolve_cp_current@PLT
 mov edi, [rax + 16]
 call rt_trail_unwind@PLT
 call resolve_cp_pop@PLT
 jmp .Lplpred_member_2_ω
 .Lplpred_member_2_β:
 call rt_get_cut_flag@PLT
 test eax, eax
 jnz .Lplch0_cut_ω
 call resolve_cp_current@PLT
 test rax, rax
 je .Lplch0_β_nosol
 mov rdi, rax
 call rt_choice_cut_enter@PLT
 jmp .Lplch0_dispatch
.Lplch0_β_nosol: jmp .Lplpred_member_2_ω
.Lplch0_c0_body:
plseq1_g0_α:
 bb57344_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 self-unify x=x — vacuous success)  [x86() self-encoding]
 jmp plseq1_g1_α
 plseq1_g0_β:
 jmp .Lplpred_member_2_β
plseq1_g1_α:
 bb56784_α:
# BOX RESOLVE_UNIFY (general)  [x86() self-encoding]
 sub rsp, 16
 mov edi, 56
 mov rsi, 1
 mov edx, 0
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 56
 mov rsi, 0
 xor edx, edx
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 2
 xor edx, edx
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_unify_terms@PLT
 test eax, eax
 je .Lplpred_member_2_β
 jmp .Lplch0_exit_γ
 plseq1_g1_β:
 jmp .Lplpred_member_2_β
.Lplch0_c0_beta:
 jmp .Lplpred_member_2_β
.Lplch0_c1_body:
plseq2_g0_α:
 bb61312_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 self-unify x=x — vacuous success)  [x86() self-encoding]
 jmp plseq2_g1_α
 plseq2_g0_β:
 jmp .Lplpred_member_2_β
plseq2_g1_α:
 bb60752_α:
# BOX RESOLVE_UNIFY (general)  [x86() self-encoding]
 sub rsp, 16
 mov edi, 56
 mov rsi, 1
 mov edx, 0
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 56
 mov rsi, 2
 xor edx, edx
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 56
 mov rsi, 3
 xor edx, edx
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov rsi, rax
 mov rdi, qword ptr [rsp + 0]
 add rsp, 16
 call rt_unify_terms@PLT
 test eax, eax
 je .Lplpred_member_2_β
 jmp plseq2_g2_α
 plseq2_g1_β:
 jmp .Lplpred_member_2_β
plseq2_g2_α:
 bb60416_α:
# BOX RESOLVE_CALL member/2 (WAM-CP-5, n_args=2)
 mov edi, 56
 mov rsi, 0
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
 call .Lplpred_member_2
 add rsp, 8
 pop rdi
 add rsp, 16
 call rt_last_ok@PLT
 test eax, eax
 je bb60416_α_fail5
 call resolve_bb_env_install@PLT
 mov rdi, rax
 call rt_cp_save_caller_env@PLT
 jmp .Lplch0_exit_γ
bb60416_α_fail5: 
 call resolve_bb_env_pop@PLT
 jmp .Lplpred_member_2_β
 plseq2_g2_β:
 call resolve_cp_current@PLT
 test rax, rax
 je bb60416_α_nosol
 mov rdi, [rax + 24]
 call resolve_bb_env_install@PLT
 call .Lplpred_member_2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb60416_α_nosol
 call resolve_cp_current@PLT
 mov rdi, [rax + 40]
 call resolve_bb_env_install@PLT
 jmp .Lplch0_exit_γ
bb60416_α_nosol: jmp .Lplpred_member_2_β
.Lplch0_c1_beta:
 jmp plseq2_g2_β
.Lplpred_member_2_redo:
jmp .Lplpred_member_2_β
.Lplpred_member_2_γ:
  mov edi, 1
  call rt_set_last_ok@PLT
  ret
.Lplpred_member_2_ω:
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
 bb51680_α:
# BOX RESOLVE_ALT n=2 (mode-4 first-solution)  [x86() self-encoding]
 jmp .Lplch3_c0_pre
 .Lplch3_c0_pre:
 call rt_trail_mark_push@PLT
 jmp .Lplch3_c0_body
 .Lplch3_c1_pre:
 call rt_trail_unwind_top@PLT
 jmp .Lplch3_c1_body
main_β: jmp main_ω
.Lplch3_c0_body:
plseq4_g0_α:
 bb52464_α:
# BOX RESOLVE_CALL member/2 (WAM-CP-5, n_args=2)
 mov edi, 56
 mov rsi, 0
 xor edx, edx
 xorps xmm0, xmm0
 call rt_node_to_term@PLT
 push rax
 sub rsp, 16
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S2]
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S3]
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 sub rsp, 16
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S4]
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S5]
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
 mov qword ptr [rsp + 8], rax
 lea rdi, [rip + .S0]
 mov esi, 2
 mov rdx, rsp
 call rt_compound_build_n@PLT
 add rsp, 16
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
 call .Lplpred_member_2
 add rsp, 8
 pop rdi
 add rsp, 16
 call rt_last_ok@PLT
 test eax, eax
 je bb52464_α_fail5
 call resolve_bb_env_install@PLT
 mov rdi, rax
 call rt_cp_save_caller_env@PLT
 jmp plseq4_g1_α
bb52464_α_fail5: 
 call resolve_bb_env_pop@PLT
 jmp .Lplch3_c1_pre
 plseq4_g0_β:
 call resolve_cp_current@PLT
 test rax, rax
 je bb52464_α_nosol
 mov rdi, [rax + 24]
 call resolve_bb_env_install@PLT
 call .Lplpred_member_2_redo
 call rt_last_ok@PLT
 test eax, eax
 je bb52464_α_nosol
 call resolve_cp_current@PLT
 mov rdi, [rax + 40]
 call resolve_bb_env_install@PLT
 jmp plseq4_g1_α
bb52464_α_nosol: jmp .Lplch3_c1_pre
plseq4_g1_α:
 bb52240_α:
 # BOX RESOLVE_BUILTIN(write/1)
 mov edi, 0
 call rt_write_var@PLT
 jmp plseq4_g2_α
plseq4_g1_β: jmp plseq4_g2_α
plseq4_g2_α:
 bb52128_α:
 # BOX RESOLVE_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp plseq4_g3_α
plseq4_g2_β: jmp plseq4_g3_α
plseq4_g3_α:
 bb52016_α:
# BOX FAIL()  [x86() self-encoding]
 jmp plseq4_g0_β
 plseq4_g3_β:
 jmp plseq4_g0_β
.Lplch3_c0_beta:
 jmp plseq4_g0_β
.Lplch3_c1_body:
 bb51792_α:
# BOX SUCCEED() [x86() self-encoding — jmp γ; β: jmp ω]
 jmp main_γ
 .Lplch3_c1_beta:
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
.S0: .string "."
.S1: .string "member"
.S2: .string "a"
.S3: .string "b"
.S4: .string "c"
.S5: .string "[]"
.text
