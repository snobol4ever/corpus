  .intel_syntax noprefix
  .text
  .globl proc_reset_α
proc_reset_α:
#=======================================================================================================================
    .global proc_reset_α
    .global proc_reset_β
    .global proc_reset_γ
    .global proc_reset_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_reset_α_body:
xchain0_n0_α:
# IR_LIT_I
bb1_α:
 mov qword ptr [r12 + 16], 6
 mov rax, qword ptr [rip + .Lx1_0]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_reset_ω
.Lx1_0:
 .quad 0
xchain0_n1_α:
bb2_α:
# IR_ASSIGN_DESCR gva
 mov rax, qword ptr [r12 + 16]
 mov rcx, qword ptr [r12 + 24]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rcx
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rcx
 jmp proc_reset_γ
 xchain0_n1_β:
 jmp proc_reset_ω
proc_reset_β:
jmp proc_reset_ω
proc_reset_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_reset_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_bump_α
proc_bump_α:
#=======================================================================================================================
    .global proc_bump_α
    .global proc_bump_β
    .global proc_bump_γ
    .global proc_bump_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_bump_α_body:
xchain3_n0_α:
# IR_VAR gva
bb3_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xchain3_n1_α
 xchain3_n0_β:
 jmp proc_bump_ω
xchain3_n1_α:
# IR_LIT_I
bb4_α:
 mov qword ptr [r12 + 32], 6
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [r12 + 40], rax
 jmp xchain3_n2_α
 xchain3_n1_β:
 jmp proc_bump_ω
.Lx5_0:
 .quad 1
xchain3_n2_α:
bb5_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 40]
 add rax, rcx
 mov qword ptr [r12 + 48], 6
 mov qword ptr [r12 + 56], rax
 jmp xchain3_n3_α
 xchain3_n2_β:
 jmp proc_bump_ω
xchain3_n3_α:
bb6_α:
# IR_ASSIGN_DESCR gva
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 56]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rcx
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rcx
 jmp proc_bump_γ
 xchain3_n3_β:
 jmp proc_bump_ω
proc_bump_β:
jmp proc_bump_ω
proc_bump_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_bump_ω:
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
  .Lstartup_pname0: .string "reset"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_reset_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname1: .string "bump"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_bump_α]
  call rt_proc_set_fn@PLT
  pop rbp
  ret
  .section .rodata
  .Lgvan0: .string "accum"
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
xchain8_n0_α:
bb7_α:
  .section .rodata
  .Lcall7_pname: .string "reset"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall7_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 cmp eax, 99
 je xchain8_n1_α
 jmp xchain8_n1_α
xchain8_n0_β:
 jmp xchain8_n1_α
xchain8_n1_α:
bb8_α:
  .section .rodata
  .Lcall8_pname: .string "bump"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall8_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je xchain8_n2_α
 jmp xchain8_n2_α
xchain8_n1_β:
 jmp xchain8_n2_α
xchain8_n2_α:
bb9_α:
  .section .rodata
  .Lcall9_pname: .string "bump"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall9_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je xchain8_n3_α
 jmp xchain8_n3_α
xchain8_n2_β:
 jmp xchain8_n3_α
xchain8_n3_α:
bb10_α:
  .section .rodata
  .Lcall10_pname: .string "bump"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall10_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je xchain8_n4_α
 jmp xchain8_n4_α
xchain8_n3_β:
 jmp xchain8_n4_α
xchain8_n4_α:
bb11_α:
  .section .rodata
  .Lcall11_pname: .string "bump"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall11_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je xchain8_n5_α
 jmp xchain8_n5_α
xchain8_n4_β:
 jmp xchain8_n5_α
xchain8_n5_α:
bb12_α:
  .section .rodata
  .Lcall12_pname: .string "bump"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall12_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je xchain8_n6_α
 jmp xchain8_n6_α
xchain8_n5_β:
 jmp xchain8_n6_α
xchain8_n6_α:
# IR_VAR gva
bb13_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain8_n7_α
 xchain8_n6_β:
 jmp main_ω
xchain8_n7_α:
bb14_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 call rt_write_any_nl@PLT
 jmp main_γ
xchain8_n7_β:
xchain8_n7_β:
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
.S0: .string "accum"
.text
