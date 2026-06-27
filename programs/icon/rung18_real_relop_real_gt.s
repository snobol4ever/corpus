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
 jmp xchain0_n4_α
.Lx1_0:
 .quad 4609434218613702656
xchain0_n1_α:
# IR_LIT_F
bb2_α:
 mov qword ptr [r12 + 16], 7
 mov rax, qword ptr [rip + .Lx2_0]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n4_α
.Lx2_0:
 .quad 4612811918334230528
xchain0_n2_α:
jmp xbinop3_lhs_done
xbinop3_lhs_done:
jmp xbinop3_rhs_done
xbinop3_rhs_done:
bb3_α:
# IR_BINOP_RELOP
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 16]
 mov rcx, qword ptr [r12 + 24]
 mov r8d, 7
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
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [r12 + 56], rax
 jmp xchain0_n5_α
 xchain0_n3_β:
 jmp main_ω
.Lx5_0:
 .quad .Lx5_0_s
.Lx5_0_s:
 .string "gt"
xchain0_n4_α:
# IR_LIT_S
bb5_α:
 mov qword ptr [r12 + 64], 1
 mov rax, qword ptr [rip + .Lx6_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain0_n6_α
 xchain0_n4_β:
 jmp main_ω
.Lx6_0:
 .quad .Lx6_0_s
.Lx6_0_s:
 .string "le"
xchain0_n5_α:
bb6_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 48]
 mov rsi, qword ptr [r12 + 56]
 call rt_write_any_nl@PLT
 jmp main_γ
xchain0_n5_β:
xchain0_n5_β:
 jmp main_ω
xchain0_n6_α:
bb7_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 64]
 mov rsi, qword ptr [r12 + 72]
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
