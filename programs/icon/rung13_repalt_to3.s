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
xrepalt2_restart:
# IR_REPALT yielded:=0
 mov qword ptr [r12 + 40], 0
# IR_LIT_I
bb1_α:
 mov qword ptr [r12 + 48], 6
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [r12 + 56], rax
 jmp xrepaltop4_done
 xrepaltop4_b:
 jmp xchain0_n3_α
.Lx5_0:
 .quad 1
xrepaltop4_done:
# IR_LIT_I
bb2_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx7_0]
 mov qword ptr [r12 + 72], rax
 jmp xrepaltop6_done
 xrepaltop6_b:
 jmp xchain0_n3_α
.Lx7_0:
 .quad 3
xrepaltop6_done:
# IR_TO
bb3_α:
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 96], rax
.Lx9_0:
 mov rax, qword ptr [r12 + 96]
 mov rcx, qword ptr [r12 + 72]
 cmp rax, rcx
 jg xrepalt2_efail
 mov qword ptr [r12 + 80], 6
 mov qword ptr [r12 + 88], rax
 jmp xrepalt2_esucc
 xrepalt2_e_beta:
 inc qword ptr [r12 + 96]
 jmp .Lx9_0
xrepalt2_esucc:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 24], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], 1
jmp xchain0_n1_α
xrepalt2_efail:
# IR_REPALT test yielded
 mov rax, qword ptr [r12 + 40]
 cmp rax, 1
je xrepalt2_restart
jmp xchain0_n3_α
xchain0_n0_β:
jmp xrepalt2_e_beta
xchain0_n1_α:
# IR_LIMIT
bb4_α:
 mov rax, qword ptr [r12 + 16]
 cmp rax, 7
 jge xchain0_n3_α
 inc qword ptr [r12 + 16]
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n0_β
xchain0_n2_α:
bb5_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 call rt_write_any_nl@PLT
 jmp xchain0_n1_β
xchain0_n2_β:
xchain0_n2_β:
 jmp xchain0_n1_β
xchain0_n3_α:
# IR_EVERY
 jmp main_ω
 xchain0_n3_β:
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
