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
# IR_LIT_S
bb1_α:
 mov qword ptr [r12 + 0], 1
 mov rax, qword ptr [rip + .Lx1_0]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n4_α
.Lx1_0:
 .quad .Lx1_0_s
.Lx1_0_s:
 .string "abc"
xchain0_n1_α:
# IR_LIT_S
bb2_α:
 mov qword ptr [r12 + 16], 1
 mov rax, qword ptr [rip + .Lx2_0]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n4_α
.Lx2_0:
 .quad .Lx2_0_s
.Lx2_0_s:
 .string "bcd"
xchain0_n2_α:
bb3_α:
# IR_BINOP_RELOP
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 16]
 mov rcx, qword ptr [r12 + 24]
 mov r8d, 12
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n4_α
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n4_α
xchain0_n3_α:
# IR_LIT_S
bb4_α:
 mov qword ptr [r12 + 48], 1
 mov rax, qword ptr [rip + .Lx4_0]
 mov qword ptr [r12 + 56], rax
 jmp xchain0_n5_α
 xchain0_n3_β:
 jmp xchain0_n4_α
.Lx4_0:
 .quad .Lx4_0_s
.Lx4_0_s:
 .string "less"
xchain0_n4_α:
# IR_LIT_S
bb5_α:
 mov qword ptr [r12 + 64], 1
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain0_n6_α
 xchain0_n4_β:
 jmp xchain0_n9_α
.Lx5_0:
 .quad .Lx5_0_s
.Lx5_0_s:
 .string "bcd"
xchain0_n5_α:
bb6_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 48]
 mov rsi, qword ptr [r12 + 56]
 call rt_write_any_nl@PLT
 jmp xchain0_n4_α
xchain0_n5_β:
xchain0_n5_β:
 jmp xchain0_n4_α
xchain0_n6_α:
# IR_LIT_S
bb7_α:
 mov qword ptr [r12 + 80], 1
 mov rax, qword ptr [rip + .Lx7_0]
 mov qword ptr [r12 + 88], rax
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp xchain0_n9_α
.Lx7_0:
 .quad .Lx7_0_s
.Lx7_0_s:
 .string "abc"
xchain0_n7_α:
bb8_α:
# IR_BINOP_RELOP
 mov rdi, qword ptr [r12 + 64]
 mov rsi, qword ptr [r12 + 72]
 mov rdx, qword ptr [r12 + 80]
 mov rcx, qword ptr [r12 + 88]
 mov r8d, 12
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n9_α
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 104], rax
 jmp xchain0_n8_α
 xchain0_n7_β:
 jmp xchain0_n9_α
xchain0_n8_α:
# IR_LIT_S
bb9_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx9_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain0_n10_α
 xchain0_n8_β:
 jmp xchain0_n9_α
.Lx9_0:
 .quad .Lx9_0_s
.Lx9_0_s:
 .string "nope"
xchain0_n9_α:
# IR_LIT_S
bb10_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx10_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain0_n11_α
 xchain0_n9_β:
 jmp main_ω
.Lx10_0:
 .quad .Lx10_0_s
.Lx10_0_s:
 .string "done"
xchain0_n10_α:
bb11_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 call rt_write_any_nl@PLT
 jmp xchain0_n9_α
xchain0_n10_β:
xchain0_n10_β:
 jmp xchain0_n9_α
xchain0_n11_α:
bb12_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 call rt_write_any_nl@PLT
 jmp main_γ
xchain0_n11_β:
xchain0_n11_β:
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
