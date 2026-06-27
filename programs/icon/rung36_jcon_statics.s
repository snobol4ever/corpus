  .intel_syntax noprefix
  .text
  .globl proc_foo_α
proc_foo_α:
#=======================================================================================================================
    .global proc_foo_α
    .global proc_foo_β
    .global proc_foo_γ
    .global proc_foo_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_foo_α_body:
xchain0_n0_α:
bb1_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lrkfn2: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je xchain0_n2_α
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n2_α
xchain0_n1_α:
bb2_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 call rt_write_any_nl@PLT
 jmp xchain0_n2_α
xchain0_n1_β:
xchain0_n1_β:
 jmp xchain0_n2_α
xchain0_n2_α:
# IR_LIT_I
bb3_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx4_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp proc_foo_ω
.Lx4_0:
 .quad 1
xchain0_n3_α:
bb4_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp proc_foo_γ
 xchain0_n3_β:
 jmp proc_foo_ω
proc_foo_β:
jmp proc_foo_ω
proc_foo_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_foo_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_p_α
proc_p_α:
#=======================================================================================================================
    .global proc_p_α
    .global proc_p_β
    .global proc_p_γ
    .global proc_p_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_p_α_body:
xchain6_n0_α:
# IR_INITIAL run-once guard
bb5_α:
 mov rdi, 7
 push r10
 push r10
 call rt_initial_fire@PLT
 pop r10
 pop r10
 test rax, rax
 je xchain6_n1_α
 jmp xinit7_body
 xchain6_n0_β:
 jmp xchain6_n1_α
xinit7_body:
xargsub10_n0_α:
# IR_LIT_I
bb6_α:
 mov qword ptr [r12 + 32], 6
 mov rax, qword ptr [rip + .Lx11_0]
 mov qword ptr [r12 + 40], rax
 jmp xargsub10_n1_α
 xargsub10_n0_β:
 jmp xchain6_n1_α
.Lx11_0:
 .quad 0
xargsub10_n1_α:
bb7_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 jmp xchain6_n1_α
 xargsub10_n1_β:
 jmp xchain6_n1_α
xchain6_n1_α:
# IR_VAR
bb8_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain6_n2_α
 xchain6_n1_β:
 jmp xchain6_n5_α
xchain6_n2_α:
# IR_LIT_I
bb9_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx15_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain6_n3_α
 xchain6_n2_β:
 jmp xchain6_n5_α
.Lx15_0:
 .quad 1
xchain6_n3_α:
bb10_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 72]
 add rax, rcx
 mov qword ptr [r12 + 80], 6
 mov qword ptr [r12 + 88], rax
 jmp xchain6_n4_α
 xchain6_n3_β:
 jmp xchain6_n5_α
xchain6_n4_α:
bb11_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 80]
 mov rdx, qword ptr [r12 + 88]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain6_n5_α
 xchain6_n4_β:
 jmp xchain6_n5_α
xchain6_n5_α:
# IR_VAR
bb12_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain6_n6_α
 xchain6_n5_β:
 jmp proc_p_ω
xchain6_n6_α:
bb13_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 call rt_write_any_nl@PLT
 jmp proc_p_γ
xchain6_n6_β:
xchain6_n6_β:
 jmp proc_p_ω
proc_p_β:
jmp proc_p_ω
proc_p_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_p_ω:
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
  .Lstartup_pname0: .string "foo"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_foo_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname1: .string "p"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_p_α]
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
xchain21_n0_α:
bb14_α:
  .section .rodata
  .Lcall14_pname: .string "foo"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall14_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 cmp eax, 99
 je xchain21_n1_α
 jmp xchain21_n1_α
xchain21_n0_β:
 jmp xchain21_n1_α
xchain21_n1_α:
bb15_α:
  .section .rodata
  .Lcall15_pname: .string "foo"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall15_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je xchain21_n2_α
 jmp xchain21_n2_α
xchain21_n1_β:
 jmp xchain21_n2_α
xchain21_n2_α:
bb16_α:
  .section .rodata
  .Lcall16_pname: .string "p"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall16_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je xchain21_n3_α
 jmp xchain21_n3_α
xchain21_n2_β:
 jmp xchain21_n3_α
xchain21_n3_α:
bb17_α:
  .section .rodata
  .Lcall17_pname: .string "p"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall17_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je main_ω
 jmp main_γ
xchain21_n3_β:
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
