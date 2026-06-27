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
 jmp xchain0_n4_α
.Lx1_0:
 .quad 1
xchain0_n1_α:
# IR_LIT_I
bb2_α:
 mov qword ptr [r12 + 32], 6
 mov rax, qword ptr [rip + .Lx2_0]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n4_α
.Lx2_0:
 .quad 2
xchain0_n2_α:
bb3_α:
# IR_BINOP_RELOP
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 40]
 cmp rax, rcx
 jle xchain0_n4_α
 mov rcx, qword ptr [r12 + 32]
 mov qword ptr [r12 + 48], rcx
 mov rcx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 56], rcx
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n4_α
xchain0_n3_α:
# IR_UNOP
bb4_α:
 mov eax, dword ptr [r12 + 48]
 cmp eax, 99
 je xchain0_n4_α
 cmp eax, 0
 jne xchain0_n4_α
 mov qword ptr [r12 + 64], 0
 mov qword ptr [r12 + 72], 0
 jmp xchain0_n5_α
 xchain0_n3_β:
 jmp xchain0_n4_α
xchain0_n4_α:
# IR_LIT_S
bb5_α:
 mov qword ptr [r12 + 80], 1
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [r12 + 88], rax
 jmp xchain0_n6_α
 xchain0_n4_β:
 jmp main_ω
.Lx5_0:
 .quad .Lx5_0_s
.Lx5_0_s:
 .string "ok"
xchain0_n5_α:
bb6_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain0_n4_α
 xchain0_n5_β:
 jmp xchain0_n4_α
xchain0_n6_α:
bb7_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 80]
 mov rsi, qword ptr [r12 + 88]
 call rt_write_any_nl@PLT
 jmp main_γ
xchain0_n6_β:
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
