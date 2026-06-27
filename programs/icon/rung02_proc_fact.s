  .intel_syntax noprefix
  .text
  .globl proc_fact_α
proc_fact_α:
#=======================================================================================================================
    .global proc_fact_α
    .global proc_fact_β
    .global proc_fact_γ
    .global proc_fact_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_fact_α_body:
xchain0_n0_α:
# IR_VAR
bb1_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n4_α
xchain0_n1_α:
# IR_LIT_I
bb2_α:
 mov qword ptr [r12 + 32], 6
 mov rax, qword ptr [rip + .Lx3_0]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n4_α
.Lx3_0:
 .quad 0
xchain0_n2_α:
bb3_α:
# IR_BINOP_RELOP
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 40]
 cmp rax, rcx
 jne xchain0_n4_α
 mov rcx, qword ptr [r12 + 32]
 mov qword ptr [r12 + 48], rcx
 mov rcx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 56], rcx
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n4_α
xchain0_n3_α:
# IR_LIT_I
bb4_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain0_n5_α
 xchain0_n3_β:
 jmp proc_fact_ω
.Lx5_0:
 .quad 1
xchain0_n4_α:
# IR_VAR
bb5_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n6_α
 xchain0_n4_β:
 jmp proc_fact_ω
xchain0_n5_α:
# IR_RETURN
bb6_α:
 mov rax, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_fact_γ
xchain0_n6_α:
xargsub10_n0_α:
# IR_VAR
bb7_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xargsub10_n1_α
 xargsub10_n0_β:
 jmp proc_fact_ω
xargsub10_n1_α:
# IR_LIT_I
bb8_α:
 mov qword ptr [r12 + 80], 6
 mov rax, qword ptr [rip + .Lx13_0]
 mov qword ptr [r12 + 88], rax
 jmp xargsub10_n2_α
 xargsub10_n1_β:
 jmp proc_fact_ω
.Lx13_0:
 .quad 1
xargsub10_n2_α:
bb9_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 88]
 sub rax, rcx
 mov qword ptr [r12 + 96], 6
 mov qword ptr [r12 + 104], rax
 jmp xicnarg9_done
 xargsub10_n2_β:
 jmp proc_fact_ω
xicnarg9_done:
bb10_α:
  .section .rodata
  .Lcall10_pname: .string "fact"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+96]
 mov rdx, qword ptr [r12+104]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall10_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je proc_fact_ω
 jmp xchain0_n7_α
xchain0_n6_β:
 jmp proc_fact_ω
xchain0_n7_α:
bb11_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 120]
 imul rax, rcx
 mov qword ptr [r12 + 128], 6
 mov qword ptr [r12 + 136], rax
 jmp xchain0_n8_α
 xchain0_n7_β:
 jmp proc_fact_ω
xchain0_n8_α:
# IR_RETURN
bb12_α:
 mov rax, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_fact_γ
proc_fact_β:
jmp proc_fact_ω
proc_fact_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_fact_ω:
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
  .Lstartup_pname0: .string "fact"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_fact_α]
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
xchain18_n0_α:
xargsub20_n0_α:
# IR_LIT_I
bb13_α:
 mov qword ptr [r12 + 0], 6
 mov rax, qword ptr [rip + .Lx21_0]
 mov qword ptr [r12 + 8], rax
 jmp xicnarg19_done
 xargsub20_n0_β:
 jmp xchain18_n2_α
.Lx21_0:
 .quad 5
xicnarg19_done:
bb14_α:
  .section .rodata
  .Lcall14_pname: .string "fact"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall14_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je xchain18_n2_α
 jmp xchain18_n1_α
xchain18_n0_β:
 jmp xchain18_n2_α
xchain18_n1_α:
bb15_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 call rt_write_any_nl@PLT
 jmp xchain18_n2_α
xchain18_n1_β:
xchain18_n1_β:
 jmp xchain18_n2_α
xchain18_n2_α:
# IR_EVERY
 jmp main_ω
 xchain18_n2_β:
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
