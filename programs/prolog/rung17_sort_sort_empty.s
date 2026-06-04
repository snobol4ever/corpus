  .intel_syntax noprefix
  .text
  .section .data
  .align 8
.Lpl_pred_table:
  .section .rodata
  .text
  .globl main
main:
  push rbp
  mov rbp, rsp
  call rt_main_init@PLT
  mov edi, 1
  call rt_env_alloc@PLT
  call rt_frame@PLT
  mov rdi, rax
  xor esi, esi
  call main_α
  xor eax, eax
  pop rbp
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
plseq0_g0_α:
 bb79104_α:
 # BOX RESOLVE_BUILTIN(sort/2)
 sub rsp, 16
 mov edi, 0
 mov esi, 57
 mov rdx, 0
 lea rcx, [rip + .S0]
 mov r8d, 56
 mov r9, 0
 xor eax, eax
 mov qword ptr [rsp + 0], rax
 call rt_sort_msort@PLT
 add rsp, 16
 test eax, eax
 je main_ω
 jmp plseq0_g1_α
plseq0_g0_β: jmp main_ω
plseq0_g1_α:
 bb78656_α:
# BOX RESOLVE_UNIFY (WAM-CP-7 var-const)  [x86() self-encoding]
 mov edi, 0
 mov esi, 57
 mov rdx, 0
 lea rcx, [rip + .S0]
 xorps xmm0, xmm0
 call rt_unify_const@PLT
 test eax, eax
 je xite1_else_α
 jmp xite1_then_α
 xite1_cond_β:
 jmp xite1_else_α
xite1_then_α:
 bb78432_α:
 # BOX RESOLVE_BUILTIN(write/1)
 lea rcx, [rip + .S1]
 mov rdi, rcx
 call rt_write_atom@PLT
 jmp plseq0_g2_α
xite1_then_β: jmp plseq0_g2_α
xite1_else_α:
 bb78208_α:
 # BOX RESOLVE_BUILTIN(write/1)
 lea rcx, [rip + .S2]
 mov rdi, rcx
 call rt_write_atom@PLT
 jmp plseq0_g2_α
xite1_else_β: jmp plseq0_g2_α
# END RESOLVE_ITE (β-tombstone via EP)  [x86() self-encoding]
plseq0_g1_β:
 jmp main_ω
plseq0_g2_α:
 bb78096_α:
 # BOX RESOLVE_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp main_γ
plseq0_g2_β: jmp main_γ
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
.S0: .string "[]"
.S1: .string "ok"
.S2: .string "fail"
.text
