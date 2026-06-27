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
 jmp xchain0_n3_α
.Lx1_0:
 .quad 3
xchain0_n1_α:
# IR_LIT_I
bb2_α:
 mov qword ptr [r12 + 48], 6
 mov rax, qword ptr [rip + .Lx3_0]
 mov qword ptr [r12 + 56], rax
 jmp xcase2_key0_done
 xcase2_key0_β:
 jmp xchain0_n3_α
.Lx3_0:
 .quad 1
xcase2_key0_done:
# IR_CASE_ARM
 lea rdi, [r12 + 16]
 lea rsi, [r12 + 48]
 call rt_case_eq@PLT
 test eax, eax
 jz xcase2_next0
 jmp xcase2_take0
 xcase2_cmp0_β:
 jmp xcase2_next0
xcase2_take0:
# IR_LIT_I
bb4_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [r12 + 72], rax
 jmp xcase2_val0_done
 xcase2_val0_β:
 jmp xchain0_n3_α
.Lx5_0:
 .quad 10
xcase2_val0_done:
# IR_CASE_ARM take
 mov rax, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp xchain0_n2_α
 xcase2_take0_β:
 jmp xchain0_n3_α
xcase2_next0:
# IR_LIT_I
bb6_α:
 mov qword ptr [r12 + 80], 6
 mov rax, qword ptr [rip + .Lx7_0]
 mov qword ptr [r12 + 88], rax
 jmp xcase2_key1_done
 xcase2_key1_β:
 jmp xchain0_n3_α
.Lx7_0:
 .quad 2
xcase2_key1_done:
# IR_CASE_ARM
 lea rdi, [r12 + 16]
 lea rsi, [r12 + 80]
 call rt_case_eq@PLT
 test eax, eax
 jz xcase2_next1
 jmp xcase2_take1
 xcase2_cmp1_β:
 jmp xcase2_next1
xcase2_take1:
# IR_LIT_I
bb8_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx9_0]
 mov qword ptr [r12 + 104], rax
 jmp xcase2_val1_done
 xcase2_val1_β:
 jmp xchain0_n3_α
.Lx9_0:
 .quad 20
xcase2_val1_done:
# IR_CASE_ARM take
 mov rax, qword ptr [r12 + 96]
 mov rdx, qword ptr [r12 + 104]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp xchain0_n2_α
 xcase2_take1_β:
 jmp xchain0_n3_α
xcase2_next1:
# IR_LIT_I
bb10_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx11_0]
 mov qword ptr [r12 + 120], rax
 jmp xcase2_key2_done
 xcase2_key2_β:
 jmp xchain0_n3_α
.Lx11_0:
 .quad 3
xcase2_key2_done:
# IR_CASE_ARM
 lea rdi, [r12 + 16]
 lea rsi, [r12 + 112]
 call rt_case_eq@PLT
 test eax, eax
 jz xcase2_next2
 jmp xcase2_take2
 xcase2_cmp2_β:
 jmp xcase2_next2
xcase2_take2:
# IR_LIT_I
bb12_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx13_0]
 mov qword ptr [r12 + 136], rax
 jmp xcase2_val2_done
 xcase2_val2_β:
 jmp xchain0_n3_α
.Lx13_0:
 .quad 30
xcase2_val2_done:
# IR_CASE_ARM take
 mov rax, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp xchain0_n2_α
 xcase2_take2_β:
 jmp xchain0_n3_α
xcase2_next2:
jmp xchain0_n3_α
xchain0_n2_α:
bb14_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n3_α
xchain0_n3_α:
# IR_VAR
bb15_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp main_ω
xchain0_n4_α:
bb16_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 call rt_write_any_nl@PLT
 jmp main_γ
xchain0_n4_β:
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
