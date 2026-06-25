  .intel_syntax noprefix
  .text
proc_startup:
  push rbp
  mov rbp, rsp
  .section .rodata
  .Lclassspec0: .string "counter(n)"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lclassspec0]
  call record_register@PLT
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
xchain0_n0_α:
bb55936_α:
# BOX IR_CALL counter(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+32]
 mov qword ptr [r12 + 32], 6
 movabs rax, 0
 mov qword ptr [r12 + 40], rax
  .section .rodata
  .Lrkfn2: .string "counter"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2]
 lea rsi, [r12 + 32]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je xchain0_n2_α
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n2_α
xchain0_n1_α:
bb55856_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n2_α
xchain0_n2_α:
# IR_VAR
bb55440_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp main_ω
xchain0_n3_α:
# IR_LIT_I
bb55248_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx6_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp main_ω
.Lx6_0:
 .quad 1
xchain0_n4_α:
# IR_LIT_I
bb55328_α:
 mov qword ptr [r12 + 80], 6
 mov rax, qword ptr [rip + .Lx7_0]
 mov qword ptr [r12 + 88], rax
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp main_ω
.Lx7_0:
 .quad 3
xchain0_n5_α:
# IR_TO
bb55168_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 112], rax
.Lx9_0:
 mov rax, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg main_ω
 mov qword ptr [r12 + 96], 6
 mov qword ptr [r12 + 104], rax
 jmp xchain0_n6_α
 xchain0_n5_β:
 inc qword ptr [r12 + 112]
 jmp .Lx9_0
xchain0_n6_α:
# IR_FIELD_SET
bb55088_α:
 mov rdi, qword ptr [rip + .Lx11_0]
 mov rsi, qword ptr [r12 + 0]
 mov rdx, qword ptr [r12 + 8]
 mov rcx, qword ptr [r12 + 96]
 mov r8, qword ptr [r12 + 104]
 call dat_field_set@PLT
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp main_ω
.Lx11_0:
 .quad .Lx11_0_s
.Lx11_0_s:
 .string "n"
xchain0_n7_α:
# IR_VAR
bb55712_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n8_α
 xchain0_n7_β:
 jmp xchain0_n5_β
xchain0_n8_α:
# IR_FIELD_GET
bb55632_α:
 mov rdi, qword ptr [rip + .Lx15_0]
 mov rsi, qword ptr [r12 + 0]
 mov rdx, qword ptr [r12 + 8]
 call dat_field_get@PLT
 mov qword ptr [r12 + 120], rax
 mov qword ptr [r12 + 128], rdx
 jmp xchain0_n9_α
 xchain0_n8_β:
 jmp xchain0_n5_β
.Lx15_0:
 .quad .Lx15_0_s
.Lx15_0_s:
 .string "n"
xchain0_n9_α:
bb55552_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 120]
 mov rsi, qword ptr [r12 + 128]
 call rt_write_any_nl@PLT
 jmp xchain0_n5_β
xchain0_n9_β:
xchain0_n9_β:
 jmp xchain0_n5_β
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
