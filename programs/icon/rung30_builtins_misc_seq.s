  .intel_syntax noprefix
  .text
  .globl main
main:
  push rbp
  mov rbp, rsp
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
 mov qword ptr [r12 + 16], 0
xchain0_n0_α:
bb1_α:
# BOX IR_CALL seq(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = LIT_I -> [r12+40]
 mov qword ptr [r12 + 40], 6
 movabs rax, 1
 mov qword ptr [r12 + 48], rax
  .section .rodata
  .Lbynamefn3: .string "seq"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn3]
 lea rsi, [r12 + 40]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 24], rax
 mov qword ptr [r12 + 32], rdx
 cmp eax, 99
 je xchain0_n1_β
 jmp xchain0_n1_α
xchain0_n0_β:
 jmp xchain0_n1_β
xchain0_n1_α:
# IR_LIMIT
bb2_α:
 mov rax, qword ptr [r12 + 16]
 cmp rax, 3
 jge xchain0_n2_α
 inc qword ptr [r12 + 16]
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n3_α
 xchain0_n1_β:
 jmp xchain0_n0_β
xchain0_n2_α:
# IR_EVERY
 jmp main_ω
 xchain0_n2_β:
 jmp main_ω
xchain0_n3_α:
bb4_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 call rt_write_any_nl@PLT
 jmp xchain0_n1_β
xchain0_n3_β:
xchain0_n3_β:
 jmp xchain0_n1_β
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
