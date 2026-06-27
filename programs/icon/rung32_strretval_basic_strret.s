  .intel_syntax noprefix
  .text
  .globl proc_greet_α
proc_greet_α:
#=======================================================================================================================
    .global proc_greet_α
    .global proc_greet_β
    .global proc_greet_γ
    .global proc_greet_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_greet_α_body:
xchain0_n0_α:
# IR_LIT_S
bb1_α:
 mov qword ptr [r12 + 32], 1
 mov rax, qword ptr [rip + .Lx1_0]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_greet_ω
.Lx1_0:
 .quad .Lx1_0_s
.Lx1_0_s:
 .string "hello "
xchain0_n1_α:
# IR_VAR
bb2_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp proc_greet_ω
xchain0_n2_α:
bb3_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 mov rdx, qword ptr [r12 + 16]
 mov rcx, qword ptr [r12 + 24]
 call str_concat_d@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp proc_greet_ω
xchain0_n3_α:
# IR_RETURN
bb4_α:
 mov rax, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_greet_γ
proc_greet_β:
jmp proc_greet_ω
proc_greet_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_greet_ω:
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
  .Lstartup_pname0: .string "greet"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_greet_α]
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
 mov qword ptr [r12 + 0], 1
 mov rax, qword ptr [rip + .Lx9_0]
 mov qword ptr [r12 + 8], rax
 jmp xicnarg7_done
 xargsub8_n0_β:
 jmp main_ω
.Lx9_0:
 .quad .Lx9_0_s
.Lx9_0_s:
 .string "world"
xicnarg7_done:
bb6_α:
  .section .rodata
  .Lcall6_pname: .string "greet"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall6_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je main_ω
 jmp xchain6_n1_α
xchain6_n0_β:
 jmp main_ω
xchain6_n1_α:
bb7_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 call rt_write_any_nl@PLT
 jmp main_γ
xchain6_n1_β:
xchain6_n1_β:
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
