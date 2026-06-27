  .intel_syntax noprefix
  .text
  .globl proc_decr_α
proc_decr_α:
#=======================================================================================================================
    .global proc_decr_α
    .global proc_decr_β
    .global proc_decr_γ
    .global proc_decr_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_decr_α_body:
xchain0_n0_α:
# IR_VAR
bb1_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n2_α
xchain0_n1_α:
bb2_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
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
 jmp proc_decr_ω
xchain0_n3_α:
# IR_LIT_I
bb4_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx6_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp proc_decr_ω
.Lx6_0:
 .quad 1
xchain0_n4_α:
bb5_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 40]
 mov rcx, qword ptr [r12 + 72]
 sub rax, rcx
 mov qword ptr [r12 + 80], 6
 mov qword ptr [r12 + 88], rax
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp proc_decr_ω
xchain0_n5_α:
bb6_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 80]
 mov rdx, qword ptr [r12 + 88]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain0_n6_α
 xchain0_n5_β:
 jmp proc_decr_ω
xchain0_n6_α:
# IR_LIT_I
bb7_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx9_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp proc_decr_ω
.Lx9_0:
 .quad 0
xchain0_n7_α:
bb8_α:
# IR_BINOP_RELOP
 mov rax, qword ptr [r12 + 104]
 mov rcx, qword ptr [r12 + 120]
 cmp rax, rcx
 jge xchain0_n9_α
 mov rcx, qword ptr [r12 + 112]
 mov qword ptr [r12 + 128], rcx
 mov rcx, qword ptr [r12 + 120]
 mov qword ptr [r12 + 136], rcx
 jmp xchain0_n8_α
 xchain0_n7_β:
 jmp xchain0_n9_α
xchain0_n8_α:
xchain0_n8_β:
jmp xchain0_n10_α
jmp xchain0_n10_α
xchain0_n9_α:
# IR_LIT_I
bb9_α:
 mov qword ptr [r12 + 144], 6
 mov rax, qword ptr [rip + .Lx11_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain0_n2_α
 xchain0_n9_β:
 jmp xchain0_n2_α
.Lx11_0:
 .quad 0
xchain0_n10_α:
# IR_VAR
bb10_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n11_α
 xchain0_n10_β:
 jmp proc_decr_ω
xchain0_n11_α:
bb11_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 call rt_write_any_nl@PLT
 jmp proc_decr_γ
xchain0_n11_β:
xchain0_n11_β:
 jmp proc_decr_ω
proc_decr_β:
jmp proc_decr_ω
proc_decr_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_decr_ω:
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
  .Lstartup_pname0: .string "decr"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_decr_α]
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
xchain15_n0_α:
xargsub17_n0_α:
# IR_LIT_I
bb12_α:
 mov qword ptr [r12 + 0], 6
 mov rax, qword ptr [rip + .Lx18_0]
 mov qword ptr [r12 + 8], rax
 jmp xicnarg16_done
 xargsub17_n0_β:
 jmp main_ω
.Lx18_0:
 .quad 3
xicnarg16_done:
bb13_α:
  .section .rodata
  .Lcall13_pname: .string "decr"
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
xchain15_n0_β:
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
