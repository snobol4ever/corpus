  .intel_syntax noprefix
  .text
  .globl proc_inc_α
proc_inc_α:
#=======================================================================================================================
    .global proc_inc_α
    .global proc_inc_β
    .global proc_inc_γ
    .global proc_inc_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_inc_α_body:
xchain0_n0_α:
# IR_VAR gva
bb1_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_inc_ω
xchain0_n1_α:
# IR_LIT_I
bb2_α:
 mov qword ptr [r12 + 32], 6
 mov rax, qword ptr [rip + .Lx2_0]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp proc_inc_ω
.Lx2_0:
 .quad 1
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
 jmp proc_inc_ω
xchain0_n3_α:
bb4_α:
# IR_ASSIGN_DESCR gva
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 56]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rcx
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rcx
 jmp proc_inc_γ
 xchain0_n3_β:
 jmp proc_inc_ω
proc_inc_β:
jmp proc_inc_ω
proc_inc_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_inc_ω:
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
  .Lstartup_pname0: .string "inc"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_inc_α]
  call rt_proc_set_fn@PLT
  pop rbp
  ret
  .section .rodata
  .Lgvan0: .string "counter"
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
xchain5_n0_α:
# IR_LIT_I
bb5_α:
 mov qword ptr [r12 + 0], 6
 mov rax, qword ptr [rip + .Lx6_0]
 mov qword ptr [r12 + 8], rax
 jmp xchain5_n1_α
 xchain5_n0_β:
 jmp xchain5_n2_α
.Lx6_0:
 .quad 0
xchain5_n1_α:
bb6_α:
# IR_ASSIGN_DESCR gva
 mov rax, qword ptr [r12 + 0]
 mov rcx, qword ptr [r12 + 8]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rcx
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rcx
 jmp xchain5_n2_α
 xchain5_n1_β:
 jmp xchain5_n2_α
xchain5_n2_α:
bb7_α:
  .section .rodata
  .Lcall7_pname: .string "inc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall7_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je xchain5_n3_α
 jmp xchain5_n3_α
xchain5_n2_β:
 jmp xchain5_n3_α
xchain5_n3_α:
bb8_α:
  .section .rodata
  .Lcall8_pname: .string "inc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall8_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je xchain5_n4_α
 jmp xchain5_n4_α
xchain5_n3_β:
 jmp xchain5_n4_α
xchain5_n4_α:
bb9_α:
  .section .rodata
  .Lcall9_pname: .string "inc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall9_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je xchain5_n5_α
 jmp xchain5_n5_α
xchain5_n4_β:
 jmp xchain5_n5_α
xchain5_n5_α:
# IR_VAR gva
bb10_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xchain5_n6_α
 xchain5_n5_β:
 jmp main_ω
xchain5_n6_α:
bb11_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 80]
 mov rsi, qword ptr [r12 + 88]
 call rt_write_any_nl@PLT
 jmp main_γ
xchain5_n6_β:
xchain5_n6_β:
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
.S0: .string "counter"
.text
