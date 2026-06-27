  .intel_syntax noprefix
  .text
  .globl proc_upto_α
proc_upto_α:
#=======================================================================================================================
    .global proc_upto_α
    .global proc_upto_β
    .global proc_upto_γ
    .global proc_upto_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
  cmp esi, 0
  jne proc_upto_β
proc_upto_α_body:
xchain0_n0_α:
# IR_LIT_I
bb1_α:
 mov qword ptr [r12 + 48], 6
 mov rax, qword ptr [rip + .Lx1_0]
 mov qword ptr [r12 + 56], rax
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n2_α
.Lx1_0:
 .quad 1
xchain0_n1_α:
bb2_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
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
 jmp xchain0_n6_α
xchain0_n3_α:
# IR_VAR
bb4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n6_α
xchain0_n4_α:
bb5_α:
# IR_BINOP_RELOP
 mov rax, qword ptr [r12 + 40]
 mov rcx, qword ptr [r12 + 24]
 cmp rax, rcx
 jg xchain0_n6_α
 mov rcx, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rcx
 mov rcx, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rcx
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp xchain0_n6_α
xchain0_n5_α:
# IR_VAR
bb6_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n7_α
 xchain0_n5_β:
 jmp proc_upto_ω
xchain0_n6_α:
xchain0_n6_β:
jmp proc_upto_ω
jmp proc_upto_ω
xchain0_n7_α:
# IR_SUSPEND yield+resume
bb7_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 8], rax
 jmp proc_upto_γ
 xchain0_n7_β:
 jmp xchain0_n8_α
xchain0_n8_α:
# IR_VAR
bb8_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n9_α
 xchain0_n8_β:
 jmp xchain0_n2_α
xchain0_n9_α:
# IR_LIT_I
bb9_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx14_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain0_n10_α
 xchain0_n9_β:
 jmp xchain0_n2_α
.Lx14_0:
 .quad 1
xchain0_n10_α:
bb10_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 40]
 mov rcx, qword ptr [r12 + 120]
 add rax, rcx
 mov qword ptr [r12 + 128], 6
 mov qword ptr [r12 + 136], rax
 jmp xchain0_n11_α
 xchain0_n10_β:
 jmp xchain0_n2_α
xchain0_n11_α:
bb11_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain0_n2_α
 xchain0_n11_β:
 jmp xchain0_n2_α
proc_upto_β:
jmp xchain0_n7_β
proc_upto_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_upto_ω:
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
  .Lstartup_pname0: .string "upto"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_upto_α]
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
xchain17_n0_α:
xargsub19_n0_α:
# IR_LIT_I
bb12_α:
 mov qword ptr [r12 + 0], 6
 mov rax, qword ptr [rip + .Lx20_0]
 mov qword ptr [r12 + 8], rax
 jmp xicnarg18_done
 xargsub19_n0_β:
 jmp xchain17_n2_α
.Lx20_0:
 .quad 3
xicnarg18_done:
bb13_α:
  .section .rodata
  .Lcall13_pname: .string "upto"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall13_pname]
 mov esi, 1
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je xchain17_n2_α
 jmp xchain17_n1_α
xchain17_n0_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je xchain17_n2_α
 jmp xchain17_n1_α
xchain17_n1_α:
bb14_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 call rt_write_any_nl@PLT
 jmp xchain17_n0_β
xchain17_n1_β:
xchain17_n1_β:
 jmp xchain17_n3_β
xchain17_n2_α:
# IR_EVERY
 jmp xchain17_n3_α
 xchain17_n2_β:
 jmp xchain17_n3_α
xchain17_n3_α:
xargsub25_n0_α:
# IR_LIT_I
bb16_α:
 mov qword ptr [r12 + 32], 6
 mov rax, qword ptr [rip + .Lx26_0]
 mov qword ptr [r12 + 40], rax
 jmp xicnarg24_done
 xargsub25_n0_β:
 jmp xchain17_n5_α
.Lx26_0:
 .quad 2
xicnarg24_done:
bb17_α:
  .section .rodata
  .Lcall17_pname: .string "upto"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+32]
 mov rdx, qword ptr [r12+40]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall17_pname]
 mov esi, 1
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je xchain17_n5_α
 jmp xchain17_n4_α
xchain17_n3_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je xchain17_n5_α
 jmp xchain17_n4_α
xchain17_n4_α:
bb18_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 48]
 mov rsi, qword ptr [r12 + 56]
 call rt_write_any_nl@PLT
 jmp xchain17_n3_β
xchain17_n4_β:
xchain17_n4_β:
 jmp xchain17_n3_β
xchain17_n5_α:
# IR_EVERY
 jmp main_ω
 xchain17_n5_β:
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
