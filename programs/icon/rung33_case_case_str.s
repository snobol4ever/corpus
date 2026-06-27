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
 jmp main_ω
.Lx1_0:
 .quad .Lx1_0_s
.Lx1_0_s:
 .string "b"
xchain0_n1_α:
# IR_LIT_S
bb2_α:
 mov qword ptr [r12 + 32], 1
 mov rax, qword ptr [rip + .Lx3_0]
 mov qword ptr [r12 + 40], rax
 jmp xcase2_key0_done
 xcase2_key0_β:
 jmp main_ω
.Lx3_0:
 .quad .Lx3_0_s
.Lx3_0_s:
 .string "a"
xcase2_key0_done:
# IR_CASE_ARM
 lea rdi, [r12 + 0]
 lea rsi, [r12 + 32]
 call rt_case_eq@PLT
 test eax, eax
 jz xcase2_next0
 jmp xcase2_take0
 xcase2_cmp0_β:
 jmp xcase2_next0
xcase2_take0:
# IR_LIT_I
bb4_α:
 mov qword ptr [r12 + 48], 6
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [r12 + 56], rax
 jmp xcase2_val0_done
 xcase2_val0_β:
 jmp main_ω
.Lx5_0:
 .quad 1
xcase2_val0_done:
# IR_CASE_ARM take
 mov rax, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xchain0_n2_α
 xcase2_take0_β:
 jmp main_ω
xcase2_next0:
# IR_LIT_S
bb6_α:
 mov qword ptr [r12 + 64], 1
 mov rax, qword ptr [rip + .Lx7_0]
 mov qword ptr [r12 + 72], rax
 jmp xcase2_key1_done
 xcase2_key1_β:
 jmp main_ω
.Lx7_0:
 .quad .Lx7_0_s
.Lx7_0_s:
 .string "b"
xcase2_key1_done:
# IR_CASE_ARM
 lea rdi, [r12 + 0]
 lea rsi, [r12 + 64]
 call rt_case_eq@PLT
 test eax, eax
 jz xcase2_next1
 jmp xcase2_take1
 xcase2_cmp1_β:
 jmp xcase2_next1
xcase2_take1:
# IR_LIT_I
bb8_α:
 mov qword ptr [r12 + 80], 6
 mov rax, qword ptr [rip + .Lx9_0]
 mov qword ptr [r12 + 88], rax
 jmp xcase2_val1_done
 xcase2_val1_β:
 jmp main_ω
.Lx9_0:
 .quad 2
xcase2_val1_done:
# IR_CASE_ARM take
 mov rax, qword ptr [r12 + 80]
 mov rdx, qword ptr [r12 + 88]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xchain0_n2_α
 xcase2_take1_β:
 jmp main_ω
xcase2_next1:
# IR_LIT_S
bb10_α:
 mov qword ptr [r12 + 96], 1
 mov rax, qword ptr [rip + .Lx11_0]
 mov qword ptr [r12 + 104], rax
 jmp xcase2_key2_done
 xcase2_key2_β:
 jmp main_ω
.Lx11_0:
 .quad .Lx11_0_s
.Lx11_0_s:
 .string "c"
xcase2_key2_done:
# IR_CASE_ARM
 lea rdi, [r12 + 0]
 lea rsi, [r12 + 96]
 call rt_case_eq@PLT
 test eax, eax
 jz xcase2_next2
 jmp xcase2_take2
 xcase2_cmp2_β:
 jmp xcase2_next2
xcase2_take2:
# IR_LIT_I
bb12_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx13_0]
 mov qword ptr [r12 + 120], rax
 jmp xcase2_val2_done
 xcase2_val2_β:
 jmp main_ω
.Lx13_0:
 .quad 3
xcase2_val2_done:
# IR_CASE_ARM take
 mov rax, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xchain0_n2_α
 xcase2_take2_β:
 jmp main_ω
xcase2_next2:
# IR_LIT_I
bb14_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx15_0]
 mov qword ptr [r12 + 136], rax
 jmp xcase2_def_done
 xcase2_def_β:
 jmp main_ω
.Lx15_0:
 .quad 0
xcase2_def_done:
# IR_CASE_ARM take
 mov rax, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xchain0_n2_α
 xcase2_deftake_β:
 jmp main_ω
xchain0_n2_α:
bb16_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 call rt_write_any_nl@PLT
 jmp main_γ
xchain0_n2_β:
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
