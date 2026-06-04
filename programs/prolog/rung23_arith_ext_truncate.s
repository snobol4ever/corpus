  .intel_syntax noprefix
  .text
  .globl main
main:
  push rbp
  mov rbp, rsp
  mov edi, 2
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
 bb90992_α:
 # BOX RESOLVE_BUILTIN(is/2)
 sub rsp, 8
 mov edi, 0
 lea rsi, [rip + .S0]
 mov edx, 0
 mov rcx, 7
 mov rax, 0
 movq xmm0, rax
 mov r8d, -1
 mov r9, 0
 mov rax, 0
 movq xmm1, rax
 call rt_is_f@PLT
 add rsp, 8
 test eax, eax
 je main_ω
 jmp plseq0_g1_α
plseq0_g0_β: jmp main_ω
plseq0_g1_α:
 bb90768_α:
 # BOX RESOLVE_BUILTIN(write/1)
 mov edi, 0
 call rt_write_var@PLT
 jmp plseq0_g2_α
plseq0_g1_β: jmp plseq0_g2_α
plseq0_g2_α:
 bb90656_α:
 # BOX RESOLVE_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp plseq0_g3_α
plseq0_g2_β: jmp plseq0_g3_α
plseq0_g3_α:
 bb90208_α:
 # BOX RESOLVE_BUILTIN(is/2)
 sub rsp, 8
 mov edi, 1
 lea rsi, [rip + .S1]
 mov edx, 0
 mov rcx, 4
 mov rax, 0
 movq xmm0, rax
 mov r8d, -1
 mov r9, 0
 mov rax, 0
 movq xmm1, rax
 call rt_is_f@PLT
 add rsp, 8
 test eax, eax
 je main_ω
 jmp plseq0_g4_α
plseq0_g3_β: jmp main_ω
plseq0_g4_α:
 bb89984_α:
 # BOX RESOLVE_BUILTIN(write/1)
 mov edi, 1
 call rt_write_var@PLT
 jmp plseq0_g5_α
plseq0_g4_β: jmp plseq0_g5_α
plseq0_g5_α:
 bb89872_α:
 # BOX RESOLVE_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp main_γ
plseq0_g5_β: jmp main_γ
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
.S0: .string "truncate"
.S1: .string "integer"
.text
