  .intel_syntax noprefix
  .text
  .globl proc_setvals_α
proc_setvals_α:
#=======================================================================================================================
    .global proc_setvals_α
    .global proc_setvals_β
    .global proc_setvals_γ
    .global proc_setvals_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_setvals_α_body:
xchain0_n0_α:
# IR_LIT_I
bb1_α:
 mov qword ptr [r12 + 16], 6
 mov rax, qword ptr [rip + .Lx1_0]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n2_α
.Lx1_0:
 .quad 7
xchain0_n1_α:
bb2_α:
# IR_ASSIGN_DESCR gva
 mov rax, qword ptr [r12 + 16]
 mov rcx, qword ptr [r12 + 24]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rcx
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rcx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n2_α
xchain0_n2_α:
# IR_LIT_I
bb3_α:
 mov qword ptr [r12 + 48], 6
 mov rax, qword ptr [rip + .Lx3_0]
 mov qword ptr [r12 + 56], rax
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp proc_setvals_ω
.Lx3_0:
 .quad 3
xchain0_n3_α:
bb4_α:
# IR_ASSIGN_DESCR gva
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 56]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rcx
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rcx
 jmp proc_setvals_γ
 xchain0_n3_β:
 jmp proc_setvals_ω
proc_setvals_β:
jmp proc_setvals_ω
proc_setvals_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_setvals_ω:
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
  .Lstartup_pname0: .string "setvals"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_setvals_α]
  call rt_proc_set_fn@PLT
  pop rbp
  ret
  .section .rodata
  .Lgvan0: .string "x"
  .Lgvan1: .string "y"
  .align 8
__gva_names:
  .quad .Lgvan0
  .quad .Lgvan1
  .section .bss
  .align 16
__gva: .space 32, 0
  .section .text
  .intel_syntax noprefix
  .globl main
main:
  push rbp
  mov rbp, rsp
  call proc_startup
  lea rdi, [rip + __gva_names]
  lea rsi, [rip + __gva]
  mov edx, 2
  call gva_register@PLT
  mov rbx, rax
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
xchain5_n0_α:
bb5_α:
  .section .rodata
  .Lcall5_pname: .string "setvals"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall5_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 cmp eax, 99
 je xchain5_n1_α
 jmp xchain5_n1_α
xchain5_n0_β:
 jmp xchain5_n1_α
xchain5_n1_α:
# IR_VAR gva
bb6_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xchain5_n2_α
 xchain5_n1_β:
 jmp main_ω
xchain5_n2_α:
# IR_VAR gva
bb7_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp xchain5_n3_α
 xchain5_n2_β:
 jmp main_ω
xchain5_n3_α:
bb8_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 40]
 add rax, rcx
 mov qword ptr [r12 + 48], 6
 mov qword ptr [r12 + 56], rax
 jmp xchain5_n4_α
 xchain5_n3_β:
 jmp main_ω
xchain5_n4_α:
bb9_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 48]
 mov rsi, qword ptr [r12 + 56]
 call rt_write_any_nl@PLT
 jmp main_γ
xchain5_n4_β:
xchain5_n4_β:
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
.section .rodata
.S0: .string "x"
.S1: .string "y"
.text
