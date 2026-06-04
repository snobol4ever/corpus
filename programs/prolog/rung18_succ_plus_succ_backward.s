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
  mov edi, 3
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
 bb91088_α:
 # BOX RESOLVE_BUILTIN(succ/2)
 mov edi, 56
 mov rsi, 0
 xor edx, edx
 mov ecx, 0
 mov r8, 1
 xor r9d, r9d
 call rt_succ@PLT
 test eax, eax
 je main_ω
 jmp plseq0_g1_α
plseq0_g0_β: jmp main_ω
plseq0_g1_α:
 bb90864_α:
 # BOX RESOLVE_BUILTIN(write/1)
 mov edi, 0
 call rt_write_var@PLT
 jmp plseq0_g2_α
plseq0_g1_β: jmp plseq0_g2_α
plseq0_g2_α:
 bb90752_α:
 # BOX RESOLVE_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp plseq0_g3_α
plseq0_g2_β: jmp plseq0_g3_α
plseq0_g3_α:
 bb90416_α:
 # BOX RESOLVE_BUILTIN(succ/2)
 mov edi, 56
 mov rsi, 1
 xor edx, edx
 mov ecx, 0
 mov r8, 5
 xor r9d, r9d
 call rt_succ@PLT
 test eax, eax
 je main_ω
 jmp plseq0_g4_α
plseq0_g3_β: jmp main_ω
plseq0_g4_α:
 bb90192_α:
 # BOX RESOLVE_BUILTIN(write/1)
 mov edi, 1
 call rt_write_var@PLT
 jmp plseq0_g5_α
plseq0_g4_β: jmp plseq0_g5_α
plseq0_g5_α:
 bb90080_α:
 # BOX RESOLVE_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp plseq0_g6_α
plseq0_g5_β: jmp plseq0_g6_α
plseq0_g6_α:
 bb89744_α:
 # BOX RESOLVE_BUILTIN(succ/2)
 mov edi, 56
 mov rsi, 2
 xor edx, edx
 mov ecx, 0
 mov r8, 100
 xor r9d, r9d
 call rt_succ@PLT
 test eax, eax
 je main_ω
 jmp plseq0_g7_α
plseq0_g6_β: jmp main_ω
plseq0_g7_α:
 bb89520_α:
 # BOX RESOLVE_BUILTIN(write/1)
 mov edi, 2
 call rt_write_var@PLT
 jmp plseq0_g8_α
plseq0_g7_β: jmp plseq0_g8_α
plseq0_g8_α:
 bb89408_α:
 # BOX RESOLVE_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp main_γ
plseq0_g8_β: jmp main_γ
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
