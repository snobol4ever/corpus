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
xchain0_n0_α:
bb1_α:
# IR_ALT
 mov qword ptr [r12 + 16], 0
.Lx2_2:
 mov rax, qword ptr [r12 + 16]
 cmp rax, 0
 je .Lx2_3
 mov rax, qword ptr [r12 + 16]
 cmp rax, 1
 je .Lx2_4
 jmp xchain0_n4_α
.Lx2_3:
 mov qword ptr [r12 + 0], 6
 mov rax, qword ptr [rip + .Lx2_0]
 mov qword ptr [r12 + 8], rax
 mov rax, qword ptr [r12 + 16]
 add rax, 1
 mov qword ptr [r12 + 16], rax
 jmp xchain0_n1_α
.Lx2_4:
 mov qword ptr [r12 + 0], 6
 mov rax, qword ptr [rip + .Lx2_1]
 mov qword ptr [r12 + 8], rax
 mov rax, qword ptr [r12 + 16]
 add rax, 1
 mov qword ptr [r12 + 16], rax
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp .Lx2_2
.Lx2_0:
 .quad 1
.Lx2_1:
 .quad 2
xchain0_n1_α:
# IR_LIT_S
bb2_α:
 mov qword ptr [r12 + 24], 1
 mov rax, qword ptr [rip + .Lx3_0]
 mov qword ptr [r12 + 32], rax
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n0_β
.Lx3_0:
 .quad .Lx3_0_s
.Lx3_0_s:
 .string ":"
xchain0_n2_α:
bb3_α:
# IR_ALT
 mov qword ptr [r12 + 56], 0
.Lx5_2:
 mov rax, qword ptr [r12 + 56]
 cmp rax, 0
 je .Lx5_3
 mov rax, qword ptr [r12 + 56]
 cmp rax, 1
 je .Lx5_4
 jmp xchain0_n0_β
.Lx5_3:
 mov qword ptr [r12 + 40], 6
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 add rax, 1
 mov qword ptr [r12 + 56], rax
 jmp xchain0_n3_α
.Lx5_4:
 mov qword ptr [r12 + 40], 6
 mov rax, qword ptr [rip + .Lx5_1]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 add rax, 1
 mov qword ptr [r12 + 56], rax
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp .Lx5_2
.Lx5_0:
 .quad 3
.Lx5_1:
 .quad 4
xchain0_n3_α:
bb4_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+0] -> [r12+80]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 88], rax
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+96]
 mov qword ptr [r12 + 96], 1
 mov rax, qword ptr [rip + .Lx6_2]
 mov qword ptr [r12 + 104], rax
 jmp .Lx6_3
.Lx6_2:
 .quad .Lx6_2_s
.Lx6_2_s:
 .string ":"
.Lx6_3:
# marshal arg2 = nested producer-box slot [r12+40] -> [r12+112]
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn7: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn7]
 lea rsi, [r12 + 80]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je xchain0_n2_β
 jmp xchain0_n2_β
 xchain0_n3_β:
 jmp xchain0_n2_β
xchain0_n4_α:
# IR_LIT_I
bb5_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx9_0]
 mov qword ptr [r12 + 136], rax
 jmp xevery8_body_β
 xevery8_body_β:
 jmp main_γ
.Lx9_0:
 .quad 1
# IR_EVERY
 jmp main_ω
 xchain0_n4_β:
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
