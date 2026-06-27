  .intel_syntax noprefix
  .text
  .globl proc_count_α
proc_count_α:
#=======================================================================================================================
    .global proc_count_α
    .global proc_count_β
    .global proc_count_γ
    .global proc_count_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_count_α_body:
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
 .quad 10
xargsub4_n1_α:
bb3_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 jmp xchain0_n1_α
 xargsub4_n1_β:
 jmp xchain0_n1_α
xchain0_n1_α:
# IR_VAR
bb4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n5_α
xchain0_n2_α:
# IR_LIT_I
bb5_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx9_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n5_α
.Lx9_0:
 .quad 1
xchain0_n3_α:
bb6_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 72]
 add rax, rcx
 mov qword ptr [r12 + 80], 6
 mov qword ptr [r12 + 88], rax
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n5_α
xchain0_n4_α:
bb7_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 80]
 mov rdx, qword ptr [r12 + 88]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp xchain0_n5_α
xchain0_n5_α:
# IR_VAR
bb8_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n6_α
 xchain0_n5_β:
 jmp proc_count_ω
xchain0_n6_α:
bb9_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 call rt_write_any_nl@PLT
 jmp proc_count_γ
xchain0_n6_β:
xchain0_n6_β:
 jmp proc_count_ω
proc_count_β:
jmp proc_count_ω
proc_count_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_count_ω:
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
  .Lstartup_pname0: .string "count"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_count_α]
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
bb10_α:
  .section .rodata
  .Lcall10_pname: .string "count"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall10_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 cmp eax, 99
 je xchain15_n1_α
 jmp xchain15_n1_α
xchain15_n0_β:
 jmp xchain15_n1_α
xchain15_n1_α:
bb11_α:
  .section .rodata
  .Lcall11_pname: .string "count"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall11_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je xchain15_n2_α
 jmp xchain15_n2_α
xchain15_n1_β:
 jmp xchain15_n2_α
xchain15_n2_α:
bb12_α:
  .section .rodata
  .Lcall12_pname: .string "count"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall12_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je main_ω
 jmp main_γ
xchain15_n2_β:
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
