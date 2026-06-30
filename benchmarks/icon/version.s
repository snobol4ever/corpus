  .intel_syntax noprefix
  .text
  .globl main
main:
  push rbp
  mov rbp, rsp
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
xchain0_n0_α:
# IR_KEYWORD_read
bb1_α:
 mov rdi, qword ptr [rip + .Lx1_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp main_ω
.Lx1_0:
 .quad .Lx1_0_s
.Lx1_0_s:
 .string "&version"
xchain0_n1_α:
bb2_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+0] -> [r12+32]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 40], rax
  .section .rodata
  .Lrkfn3: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn3]
 lea rsi, [r12 + 32]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je main_ω
 jmp main_γ
 xchain0_n1_β:
 jmp main_ω
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
