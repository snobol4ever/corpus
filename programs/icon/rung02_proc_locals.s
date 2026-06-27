  .intel_syntax noprefix
  .text
  .globl proc_sum_to_α
proc_sum_to_α:
#=======================================================================================================================
    .global proc_sum_to_α
    .global proc_sum_to_β
    .global proc_sum_to_γ
    .global proc_sum_to_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_sum_to_α_body:
xchain0_n0_α:
# IR_LIT_I
bb1_α:
 mov qword ptr [r12 + 48], 6
 mov rax, qword ptr [rip + .Lx1_0]
 mov qword ptr [r12 + 56], rax
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n2_α
.Lx1_0:
 .quad 0
xchain0_n1_α:
bb2_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n2_α
xchain0_n2_α:
# IR_VAR
bb3_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n5_β
xchain0_n3_α:
# IR_LIT_I
bb4_α:
 mov qword ptr [r12 + 80], 6
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [r12 + 88], rax
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n5_β
.Lx5_0:
 .quad 1
xchain0_n4_α:
# IR_VAR
bb5_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp xchain0_n5_β
xchain0_n5_α:
# IR_TO
bb6_α:
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 112], rax
.Lx9_0:
 mov rax, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 24]
 cmp rax, rcx
 jg xchain0_n8_α
 mov qword ptr [r12 + 96], 6
 mov qword ptr [r12 + 104], rax
 jmp xchain0_n6_α
 xchain0_n5_β:
 inc qword ptr [r12 + 112]
 jmp .Lx9_0
xchain0_n6_α:
bb7_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 40]
 mov rcx, qword ptr [r12 + 104]
 add rax, rcx
 mov qword ptr [r12 + 120], 6
 mov qword ptr [r12 + 128], rax
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp xchain0_n5_β
xchain0_n7_α:
bb8_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 120]
 mov rdx, qword ptr [r12 + 128]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 136], rax
 mov qword ptr [r12 + 144], rdx
 jmp xchain0_n5_β
 xchain0_n7_β:
 jmp xchain0_n5_β
xchain0_n8_α:
# IR_EVERY
 jmp xchain0_n9_α
 xchain0_n8_β:
 jmp xchain0_n9_α
xchain0_n9_α:
# IR_VAR
bb10_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n10_α
 xchain0_n9_β:
 jmp proc_sum_to_ω
xchain0_n10_α:
# IR_RETURN
bb11_α:
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_sum_to_γ
proc_sum_to_β:
jmp proc_sum_to_ω
proc_sum_to_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_sum_to_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
proc_startup:
  push rbp
  mov rbp, rsp
  .section .rodata
  .Lstartup_pname0: .string "sum_to"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_sum_to_α]
  call rt_proc_set_fn@PLT
  pop rbp
  ret
  .globl main
main:
  push rbp
  mov rbp, rsp
  call proc_startup
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
xchain16_n0_α:
xargsub18_n0_α:
# IR_LIT_I
bb12_α:
 mov qword ptr [r12 + 0], 6
 mov rax, qword ptr [rip + .Lx19_0]
 mov qword ptr [r12 + 8], rax
 jmp xicnarg17_done
 xargsub18_n0_β:
 jmp xchain16_n2_α
.Lx19_0:
 .quad 5
xicnarg17_done:
bb13_α:
  .section .rodata
  .Lcall13_pname: .string "sum_to"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall13_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je xchain16_n2_α
 jmp xchain16_n1_α
xchain16_n0_β:
 jmp xchain16_n2_α
xchain16_n1_α:
bb14_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 call rt_write_any_nl@PLT
 jmp xchain16_n2_α
xchain16_n1_β:
xchain16_n1_β:
 jmp xchain16_n2_α
xchain16_n2_α:
# IR_EVERY
 jmp main_ω
 xchain16_n2_β:
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
