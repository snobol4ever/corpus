  .intel_syntax noprefix
  .text
proc_startup:
  push rbp
  mov rbp, rsp
  .section .rodata
  .Lclassspec0: .string "point(x,y)"
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
bb88112_α:
# BOX IR_CALL point(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+32]
 mov qword ptr [r12 + 32], 6
 movabs rax, 3
 mov qword ptr [r12 + 40], rax
# marshal arg1 = LIT_I -> [r12+48]
 mov qword ptr [r12 + 48], 6
 movabs rax, 4
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lrkfn2: .string "point"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2]
 lea rsi, [r12 + 32]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je xchain0_n2_α
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n2_α
xchain0_n1_α:
bb88032_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n2_α
xchain0_n2_α:
# IR_VAR
bb87920_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n5_α
xchain0_n3_α:
# IR_FIELD_GET
bb87840_α:
 mov rdi, qword ptr [rip + .Lx7_0]
 mov rsi, qword ptr [r12 + 0]
 mov rdx, qword ptr [r12 + 8]
 call dat_field_get@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n5_α
.Lx7_0:
 .quad .Lx7_0_s
.Lx7_0_s:
 .string "x"
xchain0_n4_α:
bb87760_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 80]
 mov rsi, qword ptr [r12 + 88]
 call rt_write_any_nl@PLT
 jmp xchain0_n5_α
xchain0_n4_β:
xchain0_n4_β:
 jmp xchain0_n5_α
xchain0_n5_α:
# IR_VAR
bb87648_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n6_α
 xchain0_n5_β:
 jmp main_ω
xchain0_n6_α:
# IR_FIELD_GET
bb87568_α:
 mov rdi, qword ptr [rip + .Lx12_0]
 mov rsi, qword ptr [r12 + 0]
 mov rdx, qword ptr [r12 + 8]
 call dat_field_get@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp main_ω
.Lx12_0:
 .quad .Lx12_0_s
.Lx12_0_s:
 .string "y"
xchain0_n7_α:
bb87488_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 call rt_write_any_nl@PLT
 jmp main_γ
xchain0_n7_β:
xchain0_n7_β:
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
