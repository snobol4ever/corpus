  .intel_syntax noprefix
  .text
  .globl proc_sum_α
proc_sum_α:
#=======================================================================================================================
    .global proc_sum_α
    .global proc_sum_β
    .global proc_sum_γ
    .global proc_sum_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_sum_α_body:
xchain0_n0_α:
# IR_VAR
bb80352_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_sum_ω
xchain0_n1_α:
# IR_FIELD_GET
bb80272_α:
 mov rdi, qword ptr [rip + .Lx4_0]
 mov rsi, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 call dat_field_get@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp proc_sum_ω
.Lx4_0:
 .quad .Lx4_0_s
.Lx4_0_s:
 .string "a"
xchain0_n2_α:
# IR_VAR
bb80544_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp proc_sum_ω
xchain0_n3_α:
# IR_FIELD_GET
bb80464_α:
 mov rdi, qword ptr [rip + .Lx8_0]
 mov rsi, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 call dat_field_get@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp proc_sum_ω
.Lx8_0:
 .quad .Lx8_0_s
.Lx8_0_s:
 .string "b"
xchain0_n4_α:
bb80192_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 40]
 mov rcx, qword ptr [r12 + 56]
 add rax, rcx
 mov qword ptr [r12 + 64], 6
 mov qword ptr [r12 + 72], rax
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp proc_sum_ω
xchain0_n5_α:
# IR_RETURN
bb80112_α:
 mov rax, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_sum_γ
proc_sum_β:
jmp proc_sum_ω
proc_sum_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_sum_ω:
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
  .Lclassspec0: .string "pair(a,b)"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lclassspec0]
  call record_register@PLT
  .section .rodata
  .Lstartup_pname0: .string "sum"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_sum_α]
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
xchain11_n0_α:
bb64544_α:
# BOX IR_CALL pair(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+32]
 mov qword ptr [r12 + 32], 6
 movabs rax, 7
 mov qword ptr [r12 + 40], rax
# marshal arg1 = LIT_I -> [r12+48]
 mov qword ptr [r12 + 48], 6
 movabs rax, 8
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lrkfn13: .string "pair"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn13]
 lea rsi, [r12 + 32]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je xchain11_n2_α
 jmp xchain11_n1_α
 xchain11_n0_β:
 jmp xchain11_n2_α
xchain11_n1_α:
bb64464_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xchain11_n2_α
 xchain11_n1_β:
 jmp xchain11_n2_α
xchain11_n2_α:
xargsub16_n0_α:
# IR_VAR
bb64384_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xicnarg15_done
 xargsub16_n0_β:
 jmp main_ω
xicnarg15_done:
bb47408_α:
  .section .rodata
  .Lcall47408_pname: .string "sum"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall47408_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je main_ω
 jmp xchain11_n3_α
xchain11_n2_β:
 jmp main_ω
xchain11_n3_α:
bb47328_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 80]
 mov rsi, qword ptr [r12 + 88]
 call rt_write_any_nl@PLT
 jmp main_γ
xchain11_n3_β:
xchain11_n3_β:
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
