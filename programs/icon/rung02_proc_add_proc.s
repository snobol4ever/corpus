  .intel_syntax noprefix
  .text
  .globl proc_add_α
proc_add_α:
#=======================================================================================================================
    .global proc_add_α
    .global proc_add_β
    .global proc_add_γ
    .global proc_add_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_add_α_body:
xchain0_n0_α:
# IR_VAR
bb1_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_add_ω
xchain0_n1_α:
# IR_VAR
bb2_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp proc_add_ω
xchain0_n2_α:
bb3_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 40]
 add rax, rcx
 mov qword ptr [r12 + 48], 6
 mov qword ptr [r12 + 56], rax
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp proc_add_ω
xchain0_n3_α:
# IR_RETURN
bb4_α:
 mov rax, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_add_γ
proc_add_β:
jmp proc_add_ω
proc_add_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_add_ω:
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
  .Lstartup_pname0: .string "add"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_add_α]
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
xchain7_n0_α:
xargsub9_n0_α:
# IR_LIT_I
bb5_α:
 mov qword ptr [r12 + 0], 6
 mov rax, qword ptr [rip + .Lx10_0]
 mov qword ptr [r12 + 8], rax
 jmp xicnarg8_done
 xargsub9_n0_β:
 jmp xchain7_n2_α
.Lx10_0:
 .quad 3
xicnarg8_done:
xargsub12_n0_α:
# IR_LIT_I
bb6_α:
 mov qword ptr [r12 + 16], 6
 mov rax, qword ptr [rip + .Lx13_0]
 mov qword ptr [r12 + 24], rax
 jmp xicnarg11_done
 xargsub12_n0_β:
 jmp xchain7_n2_α
.Lx13_0:
 .quad 4
xicnarg11_done:
bb7_α:
  .section .rodata
  .Lcall7_pname: .string "add"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+16]
 mov rdx, qword ptr [r12+24]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall7_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je xchain7_n2_α
 jmp xchain7_n1_α
xchain7_n0_β:
 jmp xchain7_n2_α
xchain7_n1_α:
bb8_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 call rt_write_any_nl@PLT
 jmp xchain7_n2_α
xchain7_n1_β:
xchain7_n1_β:
 jmp xchain7_n2_α
xchain7_n2_α:
# IR_EVERY
 jmp main_ω
 xchain7_n2_β:
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
