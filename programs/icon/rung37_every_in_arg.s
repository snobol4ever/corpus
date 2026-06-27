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
bb1_α:
# IR_ALT
 mov qword ptr [r12 + 16], 0
.Lx2_3:
 mov rax, qword ptr [r12 + 16]
 cmp rax, 0
 je .Lx2_4
 mov rax, qword ptr [r12 + 16]
 cmp rax, 1
 je .Lx2_5
 mov rax, qword ptr [r12 + 16]
 cmp rax, 2
 je .Lx2_6
 jmp xchain0_n1_α
.Lx2_4:
 mov qword ptr [r12 + 0], 6
 mov rax, qword ptr [rip + .Lx2_0]
 mov qword ptr [r12 + 8], rax
 mov rax, qword ptr [r12 + 16]
 add rax, 1
 mov qword ptr [r12 + 16], rax
 jmp xchain0_n1_α
.Lx2_5:
 mov qword ptr [r12 + 0], 6
 mov rax, qword ptr [rip + .Lx2_1]
 mov qword ptr [r12 + 8], rax
 mov rax, qword ptr [r12 + 16]
 add rax, 1
 mov qword ptr [r12 + 16], rax
 jmp xchain0_n1_α
.Lx2_6:
 mov qword ptr [r12 + 0], 6
 mov rax, qword ptr [rip + .Lx2_2]
 mov qword ptr [r12 + 8], rax
 mov rax, qword ptr [r12 + 16]
 add rax, 1
 mov qword ptr [r12 + 16], rax
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp .Lx2_3
.Lx2_0:
 .quad 1
.Lx2_1:
 .quad 2
.Lx2_2:
 .quad 3
xchain0_n1_α:
# IR_LIT_I
bb2_α:
 mov qword ptr [r12 + 24], 6
 mov rax, qword ptr [rip + .Lx4_0]
 mov qword ptr [r12 + 32], rax
 jmp xevery3_body_β
 xevery3_body_β:
 jmp xchain0_n2_α
.Lx4_0:
 .quad 1
# IR_EVERY
 jmp xchain0_n4_α
 xchain0_n1_β:
 jmp xchain0_n4_α
xchain0_n2_α:
bb4_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn7: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn7]
 lea rsi, [r12 + 56]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], rdx
 cmp eax, 99
 je xchain0_n4_α
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n4_α
xchain0_n3_α:
bb5_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 40]
 mov rsi, qword ptr [r12 + 48]
 call rt_write_any_nl@PLT
 jmp xchain0_n4_α
xchain0_n3_β:
xchain0_n3_β:
 jmp xchain0_n4_α
xchain0_n4_α:
# IR_LIT_S
bb6_α:
 mov qword ptr [r12 + 72], 1
 mov rax, qword ptr [rip + .Lx9_0]
 mov qword ptr [r12 + 80], rax
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp main_ω
.Lx9_0:
 .quad .Lx9_0_s
.Lx9_0_s:
 .string "done"
xchain0_n5_α:
bb7_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 72]
 mov rsi, qword ptr [r12 + 80]
 call rt_write_any_nl@PLT
 jmp main_γ
xchain0_n5_β:
xchain0_n5_β:
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
