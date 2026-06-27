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
.Lx2_2:
 mov rax, qword ptr [r12 + 16]
 cmp rax, 0
 je .Lx2_3
 mov rax, qword ptr [r12 + 16]
 cmp rax, 1
 je .Lx2_4
 jmp xchain0_n4_α
.Lx2_3:
 mov qword ptr [r12 + 0], 1
 mov rax, qword ptr [rip + .Lx2_0]
 mov qword ptr [r12 + 8], rax
 mov rax, qword ptr [r12 + 16]
 add rax, 1
 mov qword ptr [r12 + 16], rax
 jmp xchain0_n1_α
.Lx2_4:
 mov qword ptr [r12 + 0], 1
 mov rax, qword ptr [rip + .Lx2_1]
 mov qword ptr [r12 + 8], rax
 mov rax, qword ptr [r12 + 16]
 add rax, 1
 mov qword ptr [r12 + 16], rax
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp .Lx2_2
.Lx2_0:
 .quad .Lx2_0_s
.Lx2_0_s:
 .string "a"
.Lx2_1:
 .quad .Lx2_1_s
.Lx2_1_s:
 .string "b"
xchain0_n1_α:
bb2_α:
# IR_ALT
 mov qword ptr [r12 + 40], 0
.Lx4_2:
 mov rax, qword ptr [r12 + 40]
 cmp rax, 0
 je .Lx4_3
 mov rax, qword ptr [r12 + 40]
 cmp rax, 1
 je .Lx4_4
 jmp xchain0_n0_β
.Lx4_3:
 mov qword ptr [r12 + 24], 1
 mov rax, qword ptr [rip + .Lx4_0]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 add rax, 1
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n2_α
.Lx4_4:
 mov qword ptr [r12 + 24], 1
 mov rax, qword ptr [rip + .Lx4_1]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 add rax, 1
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp .Lx4_2
.Lx4_0:
 .quad .Lx4_0_s
.Lx4_0_s:
 .string "x"
.Lx4_1:
 .quad .Lx4_1_s
.Lx4_1_s:
 .string "y"
xchain0_n2_α:
bb3_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 32]
 call str_concat_d@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n1_β
xchain0_n3_α:
bb4_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 48]
 mov rsi, qword ptr [r12 + 56]
 call rt_write_any_nl@PLT
 jmp xchain0_n1_β
xchain0_n3_β:
xchain0_n3_β:
 jmp xchain0_n1_β
xchain0_n4_α:
# IR_LIT_S
bb5_α:
 mov qword ptr [r12 + 64], 1
 mov rax, qword ptr [rip + .Lx8_0]
 mov qword ptr [r12 + 72], rax
 jmp xevery7_body_β
 xevery7_body_β:
 jmp main_γ
.Lx8_0:
 .quad .Lx8_0_s
.Lx8_0_s:
 .string "a"
# IR_EVERY
 jmp main_ω
 xchain0_n4_β:
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
