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
 mov qword ptr [r12 + 16], 6
 mov rax, qword ptr [rip + .Lx1_0]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n9_β
.Lx1_0:
 .quad 2
xchain0_n1_α:
# IR_LIT_I
bb2_α:
 mov qword ptr [r12 + 32], 6
 mov rax, qword ptr [rip + .Lx2_0]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n9_β
.Lx2_0:
 .quad 100
xchain0_n2_α:
# IR_TO
bb3_α:
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 64], rax
.Lx4_0:
 mov rax, qword ptr [r12 + 64]
 mov rcx, qword ptr [r12 + 40]
 cmp rax, rcx
 jg xchain0_n17_α
 mov qword ptr [r12 + 48], 6
 mov qword ptr [r12 + 56], rax
 jmp xchain0_n3_α
 xchain0_n2_β:
 inc qword ptr [r12 + 64]
 jmp .Lx4_0
xchain0_n3_α:
bb4_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 mov qword ptr [r12 + 72], rax
 mov qword ptr [r12 + 80], rdx
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n9_β
xchain0_n4_α:
# IR_VAR
bb5_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp xchain0_n10_α
xchain0_n5_α:
# IR_LIT_I
bb6_α:
 mov qword ptr [r12 + 88], 6
 mov rax, qword ptr [rip + .Lx8_0]
 mov qword ptr [r12 + 96], rax
 jmp xchain0_n6_α
 xchain0_n5_β:
 jmp xchain0_n10_α
.Lx8_0:
 .quad 2
xchain0_n6_α:
# IR_VAR
bb7_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp xchain0_n10_α
xchain0_n7_α:
# IR_LIT_I
bb8_α:
 mov qword ptr [r12 + 104], 6
 mov rax, qword ptr [rip + .Lx11_0]
 mov qword ptr [r12 + 112], rax
 jmp xchain0_n8_α
 xchain0_n7_β:
 jmp xchain0_n10_α
.Lx11_0:
 .quad 1
xchain0_n8_α:
bb9_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 8]
 mov rcx, qword ptr [r12 + 112]
 sub rax, rcx
 mov qword ptr [r12 + 120], 6
 mov qword ptr [r12 + 128], rax
 jmp xchain0_n9_α
 xchain0_n8_β:
 jmp xchain0_n10_α
xchain0_n9_α:
# IR_TO
bb10_α:
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 152], rax
.Lx14_0:
 mov rax, qword ptr [r12 + 152]
 mov rcx, qword ptr [r12 + 128]
 cmp rax, rcx
 jg xchain0_n10_α
 mov qword ptr [r12 + 136], 6
 mov qword ptr [r12 + 144], rax
 jmp xchain0_n11_α
 xchain0_n9_β:
 inc qword ptr [r12 + 152]
 jmp .Lx14_0
xchain0_n10_α:
# IR_VAR
bb11_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n12_α
 xchain0_n10_β:
 jmp xchain0_n2_β
xchain0_n11_α:
bb12_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 8]
 mov rcx, qword ptr [r12 + 144]
 cqo
 idiv rcx
 mov rax, rdx
 mov qword ptr [r12 + 160], 6
 mov qword ptr [r12 + 168], rax
 jmp xchain0_n13_α
 xchain0_n11_β:
 jmp xchain0_n10_α
xchain0_n12_α:
bb13_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 call rt_write_any_nl@PLT
 jmp xchain0_n14_α
xchain0_n12_β:
xchain0_n12_β:
 jmp xchain0_n2_β
xchain0_n13_α:
# IR_LIT_I
bb14_α:
 mov qword ptr [r12 + 176], 6
 mov rax, qword ptr [rip + .Lx19_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain0_n15_α
 xchain0_n13_β:
 jmp xchain0_n9_β
.Lx19_0:
 .quad 0
xchain0_n14_α:
jmp xchain0_n2_β
xchain0_n14_β:
jmp xchain0_n2_β
xchain0_n15_α:
bb15_α:
# IR_BINOP_RELOP
 mov rax, qword ptr [r12 + 168]
 mov rcx, qword ptr [r12 + 184]
 cmp rax, rcx
 jne xchain0_n9_β
 mov rcx, qword ptr [r12 + 176]
 mov qword ptr [r12 + 192], rcx
 mov rcx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 200], rcx
 jmp xchain0_n16_α
 xchain0_n15_β:
 jmp xchain0_n9_β
xchain0_n16_α:
xchain0_n16_β:
jmp xchain0_n2_β
jmp xchain0_n2_β
xchain0_n17_α:
# IR_EVERY
 jmp main_ω
 xchain0_n17_β:
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
