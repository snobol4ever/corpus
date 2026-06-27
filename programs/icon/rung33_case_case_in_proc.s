  .intel_syntax noprefix
  .text
  .globl proc_classify_α
proc_classify_α:
#=======================================================================================================================
    .global proc_classify_α
    .global proc_classify_β
    .global proc_classify_γ
    .global proc_classify_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_classify_α_body:
xchain0_n0_α:
# IR_VAR
bb1_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_classify_ω
xchain0_n1_α:
# IR_LIT_I
bb2_α:
 mov qword ptr [r12 + 48], 6
 mov rax, qword ptr [rip + .Lx4_0]
 mov qword ptr [r12 + 56], rax
 jmp xcase3_key0_done
 xcase3_key0_β:
 jmp proc_classify_ω
.Lx4_0:
 .quad 1
xcase3_key0_done:
# IR_CASE_ARM
 lea rdi, [r12 + 16]
 lea rsi, [r12 + 48]
 call rt_case_eq@PLT
 test eax, eax
 jz xcase3_next0
 jmp xcase3_take0
 xcase3_cmp0_β:
 jmp xcase3_next0
xcase3_take0:
# IR_LIT_S
bb4_α:
 mov qword ptr [r12 + 64], 1
 mov rax, qword ptr [rip + .Lx6_0]
 mov qword ptr [r12 + 72], rax
 jmp xcase3_val0_done
 xcase3_val0_β:
 jmp proc_classify_ω
.Lx6_0:
 .quad .Lx6_0_s
.Lx6_0_s:
 .string "one"
xcase3_val0_done:
# IR_CASE_ARM take
 mov rax, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp xchain0_n2_α
 xcase3_take0_β:
 jmp proc_classify_ω
xcase3_next0:
# IR_LIT_I
bb6_α:
 mov qword ptr [r12 + 80], 6
 mov rax, qword ptr [rip + .Lx8_0]
 mov qword ptr [r12 + 88], rax
 jmp xcase3_key1_done
 xcase3_key1_β:
 jmp proc_classify_ω
.Lx8_0:
 .quad 2
xcase3_key1_done:
# IR_CASE_ARM
 lea rdi, [r12 + 16]
 lea rsi, [r12 + 80]
 call rt_case_eq@PLT
 test eax, eax
 jz xcase3_next1
 jmp xcase3_take1
 xcase3_cmp1_β:
 jmp xcase3_next1
xcase3_take1:
# IR_LIT_S
bb8_α:
 mov qword ptr [r12 + 96], 1
 mov rax, qword ptr [rip + .Lx10_0]
 mov qword ptr [r12 + 104], rax
 jmp xcase3_val1_done
 xcase3_val1_β:
 jmp proc_classify_ω
.Lx10_0:
 .quad .Lx10_0_s
.Lx10_0_s:
 .string "two"
xcase3_val1_done:
# IR_CASE_ARM take
 mov rax, qword ptr [r12 + 96]
 mov rdx, qword ptr [r12 + 104]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp xchain0_n2_α
 xcase3_take1_β:
 jmp proc_classify_ω
xcase3_next1:
# IR_LIT_S
bb10_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx12_0]
 mov qword ptr [r12 + 120], rax
 jmp xcase3_def_done
 xcase3_def_β:
 jmp proc_classify_ω
.Lx12_0:
 .quad .Lx12_0_s
.Lx12_0_s:
 .string "many"
xcase3_def_done:
# IR_CASE_ARM take
 mov rax, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp xchain0_n2_α
 xcase3_deftake_β:
 jmp proc_classify_ω
xchain0_n2_α:
# IR_RETURN
bb12_α:
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_classify_γ
proc_classify_β:
jmp proc_classify_ω
proc_classify_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_classify_ω:
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
  .Lstartup_pname0: .string "classify"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_classify_α]
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
xchain15_n0_α:
xargsub17_n0_α:
# IR_LIT_I
bb13_α:
 mov qword ptr [r12 + 0], 6
 mov rax, qword ptr [rip + .Lx18_0]
 mov qword ptr [r12 + 8], rax
 jmp xicnarg16_done
 xargsub17_n0_β:
 jmp xchain15_n2_α
.Lx18_0:
 .quad 1
xicnarg16_done:
bb14_α:
  .section .rodata
  .Lcall12_pname: .string "classify"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall12_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je xchain15_n2_α
 jmp xchain15_n1_α
xchain15_n0_β:
 jmp xchain15_n2_α
xchain15_n1_α:
bb15_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 call rt_write_any_nl@PLT
 jmp xchain15_n2_α
xchain15_n1_β:
xchain15_n1_β:
 jmp xchain15_n2_α
xchain15_n2_α:
xargsub22_n0_α:
# IR_LIT_I
bb16_α:
 mov qword ptr [r12 + 32], 6
 mov rax, qword ptr [rip + .Lx23_0]
 mov qword ptr [r12 + 40], rax
 jmp xicnarg21_done
 xargsub22_n0_β:
 jmp xchain15_n4_α
.Lx23_0:
 .quad 2
xicnarg21_done:
bb17_α:
  .section .rodata
  .Lcall15_pname: .string "classify"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+32]
 mov rdx, qword ptr [r12+40]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall15_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je xchain15_n4_α
 jmp xchain15_n3_α
xchain15_n2_β:
 jmp xchain15_n4_α
xchain15_n3_α:
bb18_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 48]
 mov rsi, qword ptr [r12 + 56]
 call rt_write_any_nl@PLT
 jmp xchain15_n4_α
xchain15_n3_β:
xchain15_n3_β:
 jmp xchain15_n4_α
xchain15_n4_α:
xargsub27_n0_α:
# IR_LIT_I
bb19_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx28_0]
 mov qword ptr [r12 + 72], rax
 jmp xicnarg26_done
 xargsub27_n0_β:
 jmp main_ω
.Lx28_0:
 .quad 9
xicnarg26_done:
bb20_α:
  .section .rodata
  .Lcall18_pname: .string "classify"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+64]
 mov rdx, qword ptr [r12+72]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall18_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je main_ω
 jmp xchain15_n5_α
xchain15_n4_β:
 jmp main_ω
xchain15_n5_α:
bb21_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 80]
 mov rsi, qword ptr [r12 + 88]
 call rt_write_any_nl@PLT
 jmp main_γ
xchain15_n5_β:
xchain15_n5_β:
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
