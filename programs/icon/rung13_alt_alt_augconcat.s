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
 mov qword ptr [r12 + 16], 1
 mov rax, qword ptr [rip + .Lx1_0]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n2_α
.Lx1_0:
 .quad .Lx1_0_s
.Lx1_0_s:
 .string ""
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
 jmp xchain0_n3_β
xchain0_n3_α:
bb4_α:
# IR_ALT
 mov qword ptr [r12 + 64], 0
.Lx6_3:
 mov rax, qword ptr [r12 + 64]
 cmp rax, 0
 je .Lx6_4
 mov rax, qword ptr [r12 + 64]
 cmp rax, 1
 je .Lx6_5
 mov rax, qword ptr [r12 + 64]
 cmp rax, 2
 je .Lx6_6
 jmp xchain0_n6_α
.Lx6_4:
 mov qword ptr [r12 + 48], 1
 mov rax, qword ptr [rip + .Lx6_0]
 mov qword ptr [r12 + 56], rax
 mov rax, qword ptr [r12 + 64]
 add rax, 1
 mov qword ptr [r12 + 64], rax
 jmp xchain0_n4_α
.Lx6_5:
 mov qword ptr [r12 + 48], 1
 mov rax, qword ptr [rip + .Lx6_1]
 mov qword ptr [r12 + 56], rax
 mov rax, qword ptr [r12 + 64]
 add rax, 1
 mov qword ptr [r12 + 64], rax
 jmp xchain0_n4_α
.Lx6_6:
 mov qword ptr [r12 + 48], 1
 mov rax, qword ptr [rip + .Lx6_2]
 mov qword ptr [r12 + 56], rax
 mov rax, qword ptr [r12 + 64]
 add rax, 1
 mov qword ptr [r12 + 64], rax
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp .Lx6_3
.Lx6_0:
 .quad .Lx6_0_s
.Lx6_0_s:
 .string "a"
.Lx6_1:
 .quad .Lx6_1_s
.Lx6_1_s:
 .string "b"
.Lx6_2:
 .quad .Lx6_2_s
.Lx6_2_s:
 .string "c"
xchain0_n4_α:
bb5_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 56]
 call str_concat_d@PLT
 mov qword ptr [r12 + 72], rax
 mov qword ptr [r12 + 80], rdx
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp xchain0_n3_β
xchain0_n5_α:
bb6_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 72]
 mov rdx, qword ptr [r12 + 80]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 mov qword ptr [r12 + 88], rax
 mov qword ptr [r12 + 96], rdx
 jmp xchain0_n3_β
 xchain0_n5_β:
 jmp xchain0_n3_β
xchain0_n6_α:
# IR_EVERY
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp xchain0_n7_α
xchain0_n7_α:
# IR_VAR
bb8_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n8_α
 xchain0_n7_β:
 jmp main_ω
xchain0_n8_α:
bb9_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 call rt_write_any_nl@PLT
 jmp main_γ
xchain0_n8_β:
xchain0_n8_β:
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
