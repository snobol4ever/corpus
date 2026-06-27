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
 jmp xchain0_n2_α
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
bb2_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 call rt_write_any_nl@PLT
 jmp xchain0_n0_β
xchain0_n1_β:
xchain0_n1_β:
 jmp xchain0_n0_β
xchain0_n2_α:
# IR_LIT_I
bb3_α:
 mov qword ptr [r12 + 24], 6
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [r12 + 32], rax
 jmp xevery4_body_β
 xevery4_body_β:
 jmp main_γ
.Lx5_0:
 .quad 1
# IR_EVERY
 jmp main_ω
 xchain0_n2_β:
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
