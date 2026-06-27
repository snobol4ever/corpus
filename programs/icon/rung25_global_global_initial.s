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
# IR_INITIAL run-once guard
bb1_α:
 mov rdi, 1
 push r10
 push r10
 call rt_initial_fire@PLT
 pop r10
 pop r10
 test rax, rax
 je xchain0_n1_α
 jmp xinit1_body
 xchain0_n0_β:
 jmp xchain0_n1_α
xinit1_body:
xargsub4_n0_α:
# IR_LIT_I
bb2_α:
 mov qword ptr [r12 + 32], 6
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [r12 + 40], rax
 jmp xargsub4_n1_α
 xargsub4_n0_β:
 jmp xchain0_n1_α
.Lx5_0:
 .quad 0
xargsub4_n1_α:
bb3_α:
# IR_ASSIGN_DESCR gva
 mov rax, qword ptr [r12 + 32]
 mov rcx, qword ptr [r12 + 40]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rcx
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rcx
 jmp xchain0_n1_α
 xargsub4_n1_β:
 jmp xchain0_n1_α
xchain0_n1_α:
# IR_VAR gva
bb4_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp proc_add_ω
xchain0_n2_α:
# IR_VAR
bb5_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp proc_add_ω
xchain0_n3_α:
bb6_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 72]
 mov rcx, qword ptr [r12 + 24]
 add rax, rcx
 mov qword ptr [r12 + 80], 6
 mov qword ptr [r12 + 88], rax
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp proc_add_ω
xchain0_n4_α:
bb7_α:
# IR_ASSIGN_DESCR gva
 mov rax, qword ptr [r12 + 80]
 mov rcx, qword ptr [r12 + 88]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rcx
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rcx
 jmp proc_add_γ
 xchain0_n4_β:
 jmp proc_add_ω
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
  .section .rodata
  .Lgvan0: .string "total"
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
xchain12_n0_α:
xargsub14_n0_α:
# IR_LIT_I
bb8_α:
 mov qword ptr [r12 + 0], 6
 mov rax, qword ptr [rip + .Lx15_0]
 mov qword ptr [r12 + 8], rax
 jmp xicnarg13_done
 xargsub14_n0_β:
 jmp xchain12_n1_α
.Lx15_0:
 .quad 5
xicnarg13_done:
bb9_α:
  .section .rodata
  .Lcall9_pname: .string "add"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall9_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je xchain12_n1_α
 jmp xchain12_n1_α
xchain12_n0_β:
 jmp xchain12_n1_α
xchain12_n1_α:
xargsub18_n0_α:
# IR_LIT_I
bb10_α:
 mov qword ptr [r12 + 32], 6
 mov rax, qword ptr [rip + .Lx19_0]
 mov qword ptr [r12 + 40], rax
 jmp xicnarg17_done
 xargsub18_n0_β:
 jmp xchain12_n2_α
.Lx19_0:
 .quad 3
xicnarg17_done:
bb11_α:
  .section .rodata
  .Lcall11_pname: .string "add"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+32]
 mov rdx, qword ptr [r12+40]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall11_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je xchain12_n2_α
 jmp xchain12_n2_α
xchain12_n1_β:
 jmp xchain12_n2_α
xchain12_n2_α:
xargsub22_n0_α:
# IR_LIT_I
bb12_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx23_0]
 mov qword ptr [r12 + 72], rax
 jmp xicnarg21_done
 xargsub22_n0_β:
 jmp xchain12_n3_α
.Lx23_0:
 .quad 2
xicnarg21_done:
bb13_α:
  .section .rodata
  .Lcall13_pname: .string "add"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+64]
 mov rdx, qword ptr [r12+72]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall13_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je xchain12_n3_α
 jmp xchain12_n3_α
xchain12_n2_β:
 jmp xchain12_n3_α
xchain12_n3_α:
# IR_VAR gva
bb14_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain12_n4_α
 xchain12_n3_β:
 jmp main_ω
xchain12_n4_α:
bb15_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 call rt_write_any_nl@PLT
 jmp main_γ
xchain12_n4_β:
xchain12_n4_β:
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
.S0: .string "total"
.text
