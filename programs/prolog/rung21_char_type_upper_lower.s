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
 bb38272_α:
 # BOX RESOLVE_BUILTIN(char_type/2)
 sub rsp, 16
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S0]
 lea rcx, [rip + .S1]
 mov r8d, 1
 mov r9d, 56
 mov rax, 0
 mov qword ptr [rsp + 0], rax
 xor eax, eax
 mov qword ptr [rsp + 8], rax
 call rt_char_type@PLT
 add rsp, 16
 test eax, eax
 je main_ω
 jmp plseq0_g1_α
plseq0_g0_β: jmp main_ω
plseq0_g1_α:
 bb38048_α:
 # BOX RESOLVE_BUILTIN(write/1)
 mov edi, 0
 call rt_write_var@PLT
 jmp plseq0_g2_α
plseq0_g1_β: jmp plseq0_g2_α
plseq0_g2_α:
 bb37936_α:
 # BOX RESOLVE_BUILTIN(nl/0)
 mov edi, 10
 call putchar@PLT
 jmp plseq0_g3_α
plseq0_g2_β: jmp plseq0_g3_α
plseq0_g3_α:
 bb37488_α:
 # BOX RESOLVE_BUILTIN(char_type/2)
 sub rsp, 16
 mov edi, 57
 mov rsi, 0
 lea rdx, [rip + .S2]
 lea rcx, [rip + .S3]
 mov r8d, 1
 mov r9d, 56
 mov rax, 1
 mov qword ptr [rsp + 0], rax
 xor eax, eax
 mov qword ptr [rsp + 8], rax
 call rt_char_type@PLT
 add rsp, 16
 test eax, eax
 je main_ω
 jmp plseq0_g4_α
plseq0_g3_β: jmp main_ω
plseq0_g4_α:
 bb37264_α:
 # BOX RESOLVE_BUILTIN(write/1)
 mov edi, 1
 call rt_write_var@PLT
 jmp plseq0_g5_α
plseq0_g4_β: jmp plseq0_g5_α
plseq0_g5_α:
 bb37152_α:
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
.S0: .string "A"
.S1: .string "upper"
.S2: .string "b"
.S3: .string "lower"
.text
