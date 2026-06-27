  .intel_syntax noprefix
  .text
  .globl proc_setup_α
proc_setup_α:
#=======================================================================================================================
    .global proc_setup_α
    .global proc_setup_β
    .global proc_setup_γ
    .global proc_setup_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_setup_α_body:
xchain0_n0_α:
# IR_LIT_S
bb1_α:
 mov qword ptr [r12 + 16], 1
 mov rax, qword ptr [rip + .Lx1_0]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_setup_ω
.Lx1_0:
 .quad .Lx1_0_s
.Lx1_0_s:
 .string "hello"
xchain0_n1_α:
bb2_α:
# IR_ASSIGN_DESCR gva
 mov rax, qword ptr [r12 + 16]
 mov rcx, qword ptr [r12 + 24]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rcx
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rcx
 jmp proc_setup_γ
 xchain0_n1_β:
 jmp proc_setup_ω
proc_setup_β:
jmp proc_setup_ω
proc_setup_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_setup_ω:
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
  .Lstartup_pname0: .string "setup"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_setup_α]
  call rt_proc_set_fn@PLT
  pop rbp
  ret
  .section .rodata
  .Lgvan0: .string "greeting"
  .align 8
__gva_names:
  .quad .Lgvan0
  .section .bss
  .align 16
__gva: .space 16, 0
  .section .text
  .intel_syntax noprefix
  .globl main
main:
  push rbp
  mov rbp, rsp
  call proc_startup
  lea rdi, [rip + __gva_names]
  lea rsi, [rip + __gva]
  mov edx, 1
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
xchain3_n0_α:
bb3_α:
  .section .rodata
  .Lcall3_pname: .string "setup"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall3_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 cmp eax, 99
 je xchain3_n1_α
 jmp xchain3_n1_α
xchain3_n0_β:
 jmp xchain3_n1_α
xchain3_n1_α:
# IR_VAR gva
bb4_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xchain3_n2_α
 xchain3_n1_β:
 jmp main_ω
xchain3_n2_α:
bb5_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 call rt_write_any_nl@PLT
 jmp main_γ
xchain3_n2_β:
xchain3_n2_β:
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
.S0: .string "greeting"
.text
