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
# IR_LIT_S
bb1_α:
 mov qword ptr [r12 + 16], 1
 mov rax, qword ptr [rip + .Lx1_0]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n2_α
.Lx1_0:
 .quad .Lx1_0_s
.Lx1_0_s:
 .string "abc"
xchain0_n1_α:
bb2_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n2_α
xchain0_n2_α:
# IR_VAR
bb3_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n5_β
xchain0_n3_α:
# IR_LIT_I
bb4_α:
 mov qword ptr [r12 + 48], 6
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [r12 + 56], rax
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n5_β
.Lx5_0:
 .quad 1
xchain0_n4_α:
# IR_LIT_I
bb5_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx6_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp xchain0_n5_β
.Lx6_0:
 .quad 3
xchain0_n5_α:
# IR_TO
bb6_α:
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 96], rax
.Lx8_0:
 mov rax, qword ptr [r12 + 96]
 mov rcx, qword ptr [r12 + 72]
 cmp rax, rcx
 jg xchain0_n8_α
 mov qword ptr [r12 + 80], 6
 mov qword ptr [r12 + 88], rax
 jmp xchain0_n6_α
 xchain0_n5_β:
 inc qword ptr [r12 + 96]
 jmp .Lx8_0
xchain0_n6_α:
bb7_α:
# BOX IR_CALL [](...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+0] -> [r12+120]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 120], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 128], rax
# marshal arg1 = nested producer-box slot [r12+80] -> [r12+136]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 136], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 144], rax
  .section .rodata
  .Lrkfn10: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn10]
 lea rsi, [r12 + 120]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 104], rax
 mov qword ptr [r12 + 112], rdx
 cmp eax, 99
 je xchain0_n5_β
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp xchain0_n5_β
xchain0_n7_α:
bb8_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 104]
 mov rsi, qword ptr [r12 + 112]
 call rt_write_any_nl@PLT
 jmp xchain0_n5_β
xchain0_n7_β:
xchain0_n7_β:
 jmp xchain0_n5_β
xchain0_n8_α:
# IR_EVERY
 jmp main_ω
 xchain0_n8_β:
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
