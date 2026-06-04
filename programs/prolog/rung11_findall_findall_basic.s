  .intel_syntax noprefix
  .text
  .section .data
  .align 8
.Lpl_pred_table:
  .quad .Lpl_pname_0
  .quad 1
  .quad .Lplpred_color_1
  .quad .Lplpred_color_1_redo
  .section .rodata
.Lpl_pname_0:
  .asciz "color"
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
.Lplpred_color_1:
 bb10144_α:
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
 jmp .Lplpred_color_1_γ
 .Lplch0_cut_γ:
 call resolve_cp_current@PLT
 mov rdi, rax
 call rt_choice_cut_unwind@PLT
 jmp .Lplpred_color_1_γ
 .Lplch0_cut_ω:
 call resolve_cp_current@PLT
 mov rdi, rax
 call rt_choice_cut_unwind@PLT
 jmp .Lplpred_color_1_ω
 .Lplch0_exhausted:
 call resolve_cp_current@PLT
 mov rdi, rax
 call rt_choice_cut_exit@PLT
 call resolve_cp_current@PLT
 mov edi, [rax + 16]
 call rt_trail_unwind@PLT
 call resolve_cp_pop@PLT
 jmp .Lplpred_color_1_ω
 .Lplpred_color_1_β:
 call rt_get_cut_flag@PLT
 test eax, eax
 jnz .Lplch0_cut_ω
 call resolve_cp_current@PLT
 test rax, rax
 je .Lplch0_β_nosol
 mov rdi, rax
 call rt_choice_cut_enter@PLT
 jmp .Lplch0_dispatch
.Lplch0_β_nosol: jmp .Lplpred_color_1_ω
.Lplch0_c0_body:
 bb3024_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 var-const)  [x86() self-encoding]
 mov edi, 0
 mov esi, 57
 mov rdx, 0
 lea rcx, [rip + .S0]
 xorps xmm0, xmm0
 call rt_unify_const@PLT
 test eax, eax
 je .Lplpred_color_1_β
 jmp .Lplch0_exit_γ
 .Lplch0_c0_beta:
 jmp .Lplpred_color_1_β
.Lplch0_c1_body:
 bb6096_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 var-const)  [x86() self-encoding]
 mov edi, 0
 mov esi, 57
 mov rdx, 0
 lea rcx, [rip + .S1]
 xorps xmm0, xmm0
 call rt_unify_const@PLT
 test eax, eax
 je .Lplpred_color_1_β
 jmp .Lplch0_exit_γ
 .Lplch0_c1_beta:
 jmp .Lplpred_color_1_β
.Lplch0_c2_body:
 bb9168_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 var-const)  [x86() self-encoding]
 mov edi, 0
 mov esi, 57
 mov rdx, 0
 lea rcx, [rip + .S2]
 xorps xmm0, xmm0
 call rt_unify_const@PLT
 test eax, eax
 je .Lplpred_color_1_β
 jmp .Lplch0_exit_γ
 .Lplch0_c2_beta:
 jmp .Lplpred_color_1_β
.Lplpred_color_1_redo:
jmp .Lplpred_color_1_β
.Lplpred_color_1_γ:
  mov edi, 1
  call rt_set_last_ok@PLT
  ret
.Lplpred_color_1_ω:
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
 bb98208_α:
 # BOX RESOLVE_BUILTIN(findall/132659936)
 sub rsp, 16
 mov edi, 56
 mov rsi, 0
 xor edx, edx
 xor ecx, ecx
 call rt_node_to_term@PLT
 mov qword ptr [rsp + 0], rax
 lea rdi, [rip + .S3]
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
 jmp plseq1_g1_α
plseq1_g0_β: jmp main_ω
plseq1_g1_α:
 bb97984_α:
 # BOX RESOLVE_BUILTIN(write/1)
 mov edi, 1
 call rt_write_var@PLT
 jmp plseq1_g2_α
plseq1_g1_β: jmp plseq1_g2_α
plseq1_g2_α:
 bb97872_α:
 # BOX RESOLVE_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp main_γ
plseq1_g2_β: jmp main_γ
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
.S0: .string "red"
.S1: .string "green"
.S2: .string "blue"
.S3: .string "color"
.text
