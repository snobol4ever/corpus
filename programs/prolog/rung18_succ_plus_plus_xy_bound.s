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
 bb58896_α:
 # BOX RESOLVE_BUILTIN(plus/3)
 sub rsp, 32
 mov edi, 0
 mov rsi, 3
 xor edx, edx
 mov ecx, 0
 mov r8, 4
 xor r9d, r9d
 mov dword ptr [rsp + 0], 56
 mov rax, 0
 mov [rsp + 8], rax
 mov qword ptr [rsp + 16], 0
 call rt_plus@PLT
 add rsp, 32
 test eax, eax
 je main_ω
 jmp plseq0_g1_α
plseq0_g0_β: jmp main_ω
plseq0_g1_α:
 bb58672_α:
 # BOX RESOLVE_BUILTIN(write/1)
 mov edi, 0
 call rt_write_var@PLT
 jmp plseq0_g2_α
plseq0_g1_β: jmp plseq0_g2_α
plseq0_g2_α:
 bb58560_α:
 # BOX RESOLVE_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp plseq0_g3_α
plseq0_g2_β: jmp plseq0_g3_α
plseq0_g3_α:
 bb58112_α:
 # BOX RESOLVE_BUILTIN(plus/3)
 sub rsp, 32
 mov edi, 0
 mov rsi, 0
 xor edx, edx
 mov ecx, 0
 mov r8, 7
 xor r9d, r9d
 mov dword ptr [rsp + 0], 56
 mov rax, 1
 mov [rsp + 8], rax
 mov qword ptr [rsp + 16], 0
 call rt_plus@PLT
 add rsp, 32
 test eax, eax
 je main_ω
 jmp plseq0_g4_α
plseq0_g3_β: jmp main_ω
plseq0_g4_α:
 bb57888_α:
 # BOX RESOLVE_BUILTIN(write/1)
 mov edi, 1
 call rt_write_var@PLT
 jmp plseq0_g5_α
plseq0_g4_β: jmp plseq0_g5_α
plseq0_g5_α:
 bb57776_α:
 # BOX RESOLVE_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp plseq0_g6_α
plseq0_g5_β: jmp plseq0_g6_α
plseq0_g6_α:
 bb57328_α:
 # BOX RESOLVE_BUILTIN(plus/3)
 sub rsp, 32
 mov edi, 0
 mov rsi, 10
 xor edx, edx
 mov ecx, 0
 mov r8, 20
 xor r9d, r9d
 mov dword ptr [rsp + 0], 56
 mov rax, 2
 mov [rsp + 8], rax
 mov qword ptr [rsp + 16], 0
 call rt_plus@PLT
 add rsp, 32
 test eax, eax
 je main_ω
 jmp plseq0_g7_α
plseq0_g6_β: jmp main_ω
plseq0_g7_α:
 bb57104_α:
 # BOX RESOLVE_BUILTIN(write/1)
 mov edi, 2
 call rt_write_var@PLT
 jmp plseq0_g8_α
plseq0_g7_β: jmp plseq0_g8_α
plseq0_g8_α:
 bb56992_α:
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
