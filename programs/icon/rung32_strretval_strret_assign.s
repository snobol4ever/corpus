  .intel_syntax noprefix
  .text
  .globl proc_shout_α
proc_shout_α:
#=======================================================================================================================
    .global proc_shout_α
    .global proc_shout_β
    .global proc_shout_γ
    .global proc_shout_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_shout_α_body:
xchain0_n0_α:
# IR_VAR
bb1_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_shout_ω
xchain0_n1_α:
# IR_LIT_S
bb2_α:
 mov qword ptr [r12 + 32], 1
 mov rax, qword ptr [rip + .Lx3_0]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp proc_shout_ω
.Lx3_0:
 .quad .Lx3_0_s
.Lx3_0_s:
 .string "!"
xchain0_n2_α:
bb3_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 32]
 mov rcx, qword ptr [r12 + 40]
 call str_concat_d@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp proc_shout_ω
xchain0_n3_α:
# IR_RETURN
bb4_α:
 mov rax, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_shout_γ
proc_shout_β:
jmp proc_shout_ω
proc_shout_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_shout_ω:
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
  .Lstartup_pname0: .string "shout"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_shout_α]
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
xchain6_n0_α:
xargsub8_n0_α:
# IR_LIT_S
bb5_α:
 mov qword ptr [r12 + 16], 1
 mov rax, qword ptr [rip + .Lx9_0]
 mov qword ptr [r12 + 24], rax
 jmp xicnarg7_done
 xargsub8_n0_β:
 jmp xchain6_n2_α
.Lx9_0:
 .quad .Lx9_0_s
.Lx9_0_s:
 .string "hi"
xicnarg7_done:
bb6_α:
  .section .rodata
  .Lcall6_pname: .string "shout"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+16]
 mov rdx, qword ptr [r12+24]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall6_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je xchain6_n2_α
 jmp xchain6_n1_α
xchain6_n0_β:
 jmp xchain6_n2_α
xchain6_n1_α:
bb7_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 jmp xchain6_n2_α
 xchain6_n1_β:
 jmp xchain6_n2_α
xchain6_n2_α:
# IR_VAR
bb8_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain6_n3_α
 xchain6_n2_β:
 jmp xchain6_n4_α
xchain6_n3_α:
bb9_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 call rt_write_any_nl@PLT
 jmp xchain6_n4_α
xchain6_n3_β:
xchain6_n3_β:
 jmp xchain6_n4_α
xchain6_n4_α:
xargsub16_n0_α:
# IR_LIT_S
bb10_α:
 mov qword ptr [r12 + 64], 1
 mov rax, qword ptr [rip + .Lx17_0]
 mov qword ptr [r12 + 72], rax
 jmp xicnarg15_done
 xargsub16_n0_β:
 jmp main_ω
.Lx17_0:
 .quad .Lx17_0_s
.Lx17_0_s:
 .string "bye"
xicnarg15_done:
bb11_α:
  .section .rodata
  .Lcall11_pname: .string "shout"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+64]
 mov rdx, qword ptr [r12+72]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall11_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je main_ω
 jmp xchain6_n5_α
xchain6_n4_β:
 jmp main_ω
xchain6_n5_α:
bb12_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 80]
 mov rsi, qword ptr [r12 + 88]
 call rt_write_any_nl@PLT
 jmp main_γ
xchain6_n5_β:
xchain6_n5_β:
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
