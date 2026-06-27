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
 jmp xchain0_n2_α
.Lx1_0:
 .quad 0
xchain0_n1_α:
bb2_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n2_α
xchain0_n2_α:
# IR_VAR
bb3_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n6_α
xchain0_n3_α:
# IR_LIT_I
bb4_α:
 mov qword ptr [r12 + 48], 6
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [r12 + 56], rax
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n6_α
.Lx5_0:
 .quad 10
xchain0_n4_α:
bb5_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 8]
 mov rcx, qword ptr [r12 + 56]
 add rax, rcx
 mov qword ptr [r12 + 64], 6
 mov qword ptr [r12 + 72], rax
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp xchain0_n6_α
xchain0_n5_α:
bb6_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xchain0_n6_α
 xchain0_n5_β:
 jmp xchain0_n6_α
xchain0_n6_α:
bb7_α:
# IR_ALT
 mov qword ptr [r12 + 112], 0
.Lx9_3:
 mov rax, qword ptr [r12 + 112]
 cmp rax, 0
 je .Lx9_4
 mov rax, qword ptr [r12 + 112]
 cmp rax, 1
 je .Lx9_5
 mov rax, qword ptr [r12 + 112]
 cmp rax, 2
 je .Lx9_6
 jmp xchain0_n8_α
.Lx9_4:
 mov qword ptr [r12 + 96], 1
 mov rax, qword ptr [rip + .Lx9_0]
 mov qword ptr [r12 + 104], rax
 mov rax, qword ptr [r12 + 112]
 add rax, 1
 mov qword ptr [r12 + 112], rax
 jmp xchain0_n7_α
.Lx9_5:
 mov qword ptr [r12 + 96], 1
 mov rax, qword ptr [rip + .Lx9_1]
 mov qword ptr [r12 + 104], rax
 mov rax, qword ptr [r12 + 112]
 add rax, 1
 mov qword ptr [r12 + 112], rax
 jmp xchain0_n7_α
.Lx9_6:
 mov qword ptr [r12 + 96], 1
 mov rax, qword ptr [rip + .Lx9_2]
 mov qword ptr [r12 + 104], rax
 mov rax, qword ptr [r12 + 112]
 add rax, 1
 mov qword ptr [r12 + 112], rax
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp .Lx9_3
.Lx9_0:
 .quad .Lx9_0_s
.Lx9_0_s:
 .string "a"
.Lx9_1:
 .quad .Lx9_1_s
.Lx9_1_s:
 .string "b"
.Lx9_2:
 .quad .Lx9_2_s
.Lx9_2_s:
 .string "c"
xchain0_n7_α:
jmp xchain0_n6_β
xchain0_n7_β:
jmp xchain0_n6_β
xchain0_n8_α:
# IR_EVERY
 jmp xchain0_n9_α
 xchain0_n8_β:
 jmp xchain0_n9_α
xchain0_n9_α:
# IR_VAR
bb9_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n10_α
 xchain0_n9_β:
 jmp main_ω
xchain0_n10_α:
bb10_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 call rt_write_any_nl@PLT
 jmp main_γ
xchain0_n10_β:
xchain0_n10_β:
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
