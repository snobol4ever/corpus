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
 mov qword ptr [r12 + 16], 0
xchain0_n0_α:
bb1_α:
# IR_ALT
 mov qword ptr [r12 + 40], 0
.Lx3_3:
 mov rax, qword ptr [r12 + 40]
 cmp rax, 0
 je .Lx3_4
 mov rax, qword ptr [r12 + 40]
 cmp rax, 1
 je .Lx3_5
 mov rax, qword ptr [r12 + 40]
 cmp rax, 2
 je .Lx3_6
 jmp xchain0_n3_α
.Lx3_4:
 mov qword ptr [r12 + 24], 1
 mov rax, qword ptr [rip + .Lx3_0]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 add rax, 1
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n1_α
.Lx3_5:
 mov qword ptr [r12 + 24], 1
 mov rax, qword ptr [rip + .Lx3_1]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 add rax, 1
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n1_α
.Lx3_6:
 mov qword ptr [r12 + 24], 1
 mov rax, qword ptr [rip + .Lx3_2]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 add rax, 1
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp .Lx3_3
.Lx3_0:
 .quad .Lx3_0_s
.Lx3_0_s:
 .string "a"
.Lx3_1:
 .quad .Lx3_1_s
.Lx3_1_s:
 .string "b"
.Lx3_2:
 .quad .Lx3_2_s
.Lx3_2_s:
 .string "c"
xchain0_n1_α:
# IR_LIMIT
bb2_α:
 mov rax, qword ptr [r12 + 16]
 cmp rax, 2
 jge xchain0_n3_α
 inc qword ptr [r12 + 16]
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n0_β
xchain0_n2_α:
bb3_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 call rt_write_any_nl@PLT
 jmp xchain0_n1_β
xchain0_n2_β:
xchain0_n2_β:
 jmp xchain0_n1_β
xchain0_n3_α:
# IR_LIT_S
bb4_α:
 mov qword ptr [r12 + 48], 1
 mov rax, qword ptr [rip + .Lx8_0]
 mov qword ptr [r12 + 56], rax
 jmp xevery7_body_β
 xevery7_body_β:
 jmp main_γ
.Lx8_0:
 .quad .Lx8_0_s
.Lx8_0_s:
 .string "a"
# IR_EVERY
 jmp main_ω
 xchain0_n3_β:
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
