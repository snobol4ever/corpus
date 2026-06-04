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
 bb33392_α:
 # BOX RESOLVE_BUILTIN(format/1)
 sub rsp, 16
 mov edi, 1
 mov esi, 57
 mov rdx, 0
 lea rcx, [rip + .S0]
 mov r8d, 0
 mov r9, 0
 mov qword ptr [rsp + 0], 0
 call rt_format@PLT
 add rsp, 16
 test eax, eax
 je main_ω
 jmp main_γ
main_β: jmp main_ω
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
.S0: .string "hello~n"
.text
