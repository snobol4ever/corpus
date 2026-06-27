  .intel_syntax noprefix
  .text
  .globl proc_countdown_α
proc_countdown_α:
#=======================================================================================================================
    .global proc_countdown_α
    .global proc_countdown_β
    .global proc_countdown_γ
    .global proc_countdown_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_countdown_α_body:
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
 .quad 1
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
 jmp proc_countdown_ω
xchain0_n3_α:
# IR_VAR
bb4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp proc_countdown_ω
xchain0_n4_α:
bb5_α:
# IR_BINOP_RELOP
 mov rax, qword ptr [r12 + 40]
 mov rcx, qword ptr [r12 + 24]
 cmp rax, rcx
 jle xchain0_n6_α
 mov rcx, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rcx
 mov rcx, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rcx
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp xchain0_n6_α
xchain0_n5_α:
xchain0_n5_β:
jmp proc_countdown_γ
jmp proc_countdown_γ
xchain0_n6_α:
# IR_VAR
bb6_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp xchain0_n2_α
xchain0_n7_α:
bb7_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 call rt_write_any_nl@PLT
 jmp xchain0_n8_α
xchain0_n7_β:
xchain0_n7_β:
 jmp xchain0_n2_α
xchain0_n8_α:
# IR_VAR
bb8_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n9_α
 xchain0_n8_β:
 jmp xchain0_n2_α
xchain0_n9_α:
# IR_LIT_I
bb9_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx13_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain0_n10_α
 xchain0_n9_β:
 jmp xchain0_n2_α
.Lx13_0:
 .quad 1
xchain0_n10_α:
bb10_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 40]
 mov rcx, qword ptr [r12 + 104]
 add rax, rcx
 mov qword ptr [r12 + 112], 6
 mov qword ptr [r12 + 120], rax
 jmp xchain0_n11_α
 xchain0_n10_β:
 jmp xchain0_n2_α
xchain0_n11_α:
bb11_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain0_n12_α
 xchain0_n11_β:
 jmp xchain0_n2_α
xchain0_n12_α:
jmp xchain0_n2_α
xchain0_n12_β:
jmp xchain0_n2_α
proc_countdown_β:
jmp proc_countdown_ω
proc_countdown_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_countdown_ω:
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
  .Lstartup_pname0: .string "countdown"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_countdown_α]
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
 jmp main_ω
.Lx19_0:
 .quad 3
xicnarg17_done:
bb13_α:
  .section .rodata
  .Lcall13_pname: .string "countdown"
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
 je main_ω
 jmp main_γ
xchain16_n0_β:
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
