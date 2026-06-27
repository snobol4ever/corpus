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
# IR_LIT_I
bb1_α:
 mov qword ptr [r12 + 0], 6
 mov rax, qword ptr [rip + .Lx1_0]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n2_β
.Lx1_0:
 .quad 1
xchain0_n1_α:
# IR_LIT_I
bb2_α:
 mov qword ptr [r12 + 16], 6
 mov rax, qword ptr [rip + .Lx2_0]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n2_β
.Lx2_0:
 .quad 6
xchain0_n2_α:
# IR_TO
bb3_α:
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 48], rax
.Lx4_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 24]
 cmp rax, rcx
 jg xchain0_n6_α
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n3_α
 xchain0_n2_β:
 inc qword ptr [r12 + 48]
 jmp .Lx4_0
xchain0_n3_α:
# IR_LIT_I
bb4_α:
 mov qword ptr [r12 + 56], 6
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [r12 + 64], rax
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n2_β
.Lx5_0:
 .quad 3
xchain0_n4_α:
bb5_α:
# IR_BINOP_RELOP
 mov rax, qword ptr [r12 + 40]
 mov rcx, qword ptr [r12 + 64]
 cmp rax, rcx
 jle xchain0_n2_β
 mov rcx, qword ptr [r12 + 56]
 mov qword ptr [r12 + 72], rcx
 mov rcx, qword ptr [r12 + 64]
 mov qword ptr [r12 + 80], rcx
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp xchain0_n2_β
xchain0_n5_α:
bb6_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 72]
 mov rsi, qword ptr [r12 + 80]
 call rt_write_any_nl@PLT
 jmp xchain0_n2_β
xchain0_n5_β:
xchain0_n5_β:
 jmp xchain0_n2_β
xchain0_n6_α:
# IR_EVERY
 jmp main_ω
 xchain0_n6_β:
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
