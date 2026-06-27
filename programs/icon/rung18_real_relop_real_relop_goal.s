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
# IR_LIT_F
bb1_α:
 mov qword ptr [r12 + 0], 7
 mov rax, qword ptr [rip + .Lx1_0]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n1_β
.Lx1_0:
 .quad 4613937818241073152
xchain0_n1_α:
bb2_α:
# IR_ALT
 mov qword ptr [r12 + 32], 0
.Lx3_3:
 mov rax, qword ptr [r12 + 32]
 cmp rax, 0
 je .Lx3_4
 mov rax, qword ptr [r12 + 32]
 cmp rax, 1
 je .Lx3_5
 mov rax, qword ptr [r12 + 32]
 cmp rax, 2
 je .Lx3_6
 jmp xchain0_n4_α
.Lx3_4:
 mov qword ptr [r12 + 16], 7
 mov rax, qword ptr [rip + .Lx3_0]
 mov qword ptr [r12 + 24], rax
 mov rax, qword ptr [r12 + 32]
 add rax, 1
 mov qword ptr [r12 + 32], rax
 jmp xchain0_n2_α
.Lx3_5:
 mov qword ptr [r12 + 16], 7
 mov rax, qword ptr [rip + .Lx3_1]
 mov qword ptr [r12 + 24], rax
 mov rax, qword ptr [r12 + 32]
 add rax, 1
 mov qword ptr [r12 + 32], rax
 jmp xchain0_n2_α
.Lx3_6:
 mov qword ptr [r12 + 16], 7
 mov rax, qword ptr [rip + .Lx3_2]
 mov qword ptr [r12 + 24], rax
 mov rax, qword ptr [r12 + 32]
 add rax, 1
 mov qword ptr [r12 + 32], rax
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp .Lx3_3
.Lx3_0:
 .quad 4612811918334230528
.Lx3_1:
 .quad 4615063718147915776
.Lx3_2:
 .quad 4616752568008179712
xchain0_n2_α:
jmp xbinop4_lhs_done
xbinop4_lhs_done:
jmp xbinop4_rhs_done
xbinop4_rhs_done:
bb3_α:
# IR_BINOP_RELOP
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 16]
 mov rcx, qword ptr [r12 + 24]
 mov r8d, 5
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n1_β
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 40], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 48], rax
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n1_β
xchain0_n3_α:
bb4_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 40]
 mov rsi, qword ptr [r12 + 48]
 call rt_write_any_nl@PLT
 jmp xchain0_n1_β
xchain0_n3_β:
xchain0_n3_β:
 jmp xchain0_n1_β
xchain0_n4_α:
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
