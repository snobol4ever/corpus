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
 jmp xchain0_n12_β
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
 jmp xchain0_n12_β
.Lx2_0:
 .quad 10
xchain0_n2_α:
# IR_TO
bb3_α:
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 48], rax
.Lx4_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 24]
 cmp rax, rcx
 jg xchain0_n4_α
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n3_α
 xchain0_n2_β:
 mov rax, qword ptr [r12 + 48]
 add rax, 3
 mov qword ptr [r12 + 48], rax
 jmp .Lx4_0
xchain0_n3_α:
bb4_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 call rt_write_any_nl@PLT
 jmp xchain0_n2_β
xchain0_n3_β:
xchain0_n3_β:
 jmp xchain0_n12_β
xchain0_n4_α:
# IR_EVERY
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp xchain0_n5_α
xchain0_n5_α:
# IR_LIT_I
bb6_α:
 mov qword ptr [r12 + 56], 6
 mov rax, qword ptr [rip + .Lx7_0]
 mov qword ptr [r12 + 64], rax
 jmp xchain0_n6_α
 xchain0_n5_β:
 jmp xchain0_n12_β
.Lx7_0:
 .quad 10
xchain0_n6_α:
# IR_LIT_I
bb7_α:
 mov qword ptr [r12 + 72], 6
 mov rax, qword ptr [rip + .Lx8_0]
 mov qword ptr [r12 + 80], rax
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp xchain0_n12_β
.Lx8_0:
 .quad 1
xchain0_n7_α:
# IR_TO
bb8_α:
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 104], rax
.Lx10_0:
 mov rax, qword ptr [r12 + 104]
 mov rcx, qword ptr [r12 + 80]
 cmp rax, rcx
 jl xchain0_n9_α
 mov qword ptr [r12 + 88], 6
 mov qword ptr [r12 + 96], rax
 jmp xchain0_n8_α
 xchain0_n7_β:
 mov rax, qword ptr [r12 + 104]
 add rax, -3
 mov qword ptr [r12 + 104], rax
 jmp .Lx10_0
xchain0_n8_α:
bb9_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 88]
 mov rsi, qword ptr [r12 + 96]
 call rt_write_any_nl@PLT
 jmp xchain0_n7_β
xchain0_n8_β:
xchain0_n8_β:
 jmp xchain0_n12_β
xchain0_n9_α:
# IR_EVERY
 jmp xchain0_n10_α
 xchain0_n9_β:
 jmp xchain0_n10_α
xchain0_n10_α:
# IR_LIT_I
bb11_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx13_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain0_n11_α
 xchain0_n10_β:
 jmp xchain0_n12_β
.Lx13_0:
 .quad 2
xchain0_n11_α:
# IR_LIT_I
bb12_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx14_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain0_n12_α
 xchain0_n11_β:
 jmp xchain0_n12_β
.Lx14_0:
 .quad 2
xchain0_n12_α:
# IR_TO
bb13_α:
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 160], rax
.Lx16_0:
 mov rax, qword ptr [r12 + 160]
 mov rcx, qword ptr [r12 + 136]
 cmp rax, rcx
 jg xchain0_n14_α
 mov qword ptr [r12 + 144], 6
 mov qword ptr [r12 + 152], rax
 jmp xchain0_n13_α
 xchain0_n12_β:
 inc qword ptr [r12 + 160]
 jmp .Lx16_0
xchain0_n13_α:
bb14_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 144]
 mov rsi, qword ptr [r12 + 152]
 call rt_write_any_nl@PLT
 jmp xchain0_n12_β
xchain0_n13_β:
xchain0_n13_β:
 jmp xchain0_n12_β
xchain0_n14_α:
# IR_EVERY
 jmp main_ω
 xchain0_n14_β:
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
