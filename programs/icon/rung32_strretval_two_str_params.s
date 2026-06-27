  .intel_syntax noprefix
  .text
  .globl proc_join_α
proc_join_α:
#=======================================================================================================================
    .global proc_join_α
    .global proc_join_β
    .global proc_join_γ
    .global proc_join_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_join_α_body:
xchain0_n0_α:
# IR_VAR
bb1_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_join_ω
xchain0_n1_α:
# IR_LIT_S
bb2_α:
 mov qword ptr [r12 + 48], 1
 mov rax, qword ptr [rip + .Lx3_0]
 mov qword ptr [r12 + 56], rax
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp proc_join_ω
.Lx3_0:
 .quad .Lx3_0_s
.Lx3_0_s:
 .string "-"
xchain0_n2_α:
bb3_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 56]
 call str_concat_d@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp proc_join_ω
xchain0_n3_α:
# IR_VAR
bb4_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp proc_join_ω
xchain0_n4_α:
bb5_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 64]
 mov rsi, qword ptr [r12 + 72]
 mov rdx, qword ptr [r12 + 32]
 mov rcx, qword ptr [r12 + 40]
 call str_concat_d@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp proc_join_ω
xchain0_n5_α:
# IR_RETURN
bb6_α:
 mov rax, qword ptr [r12 + 80]
 mov rdx, qword ptr [r12 + 88]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_join_γ
proc_join_β:
jmp proc_join_ω
proc_join_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_join_ω:
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
  .Lstartup_pname0: .string "join"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_join_α]
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
xchain9_n0_α:
xargsub11_n0_α:
# IR_LIT_S
bb7_α:
 mov qword ptr [r12 + 0], 1
 mov rax, qword ptr [rip + .Lx12_0]
 mov qword ptr [r12 + 8], rax
 jmp xicnarg10_done
 xargsub11_n0_β:
 jmp xchain9_n2_α
.Lx12_0:
 .quad .Lx12_0_s
.Lx12_0_s:
 .string "foo"
xicnarg10_done:
xargsub14_n0_α:
# IR_LIT_S
bb8_α:
 mov qword ptr [r12 + 16], 1
 mov rax, qword ptr [rip + .Lx15_0]
 mov qword ptr [r12 + 24], rax
 jmp xicnarg13_done
 xargsub14_n0_β:
 jmp xchain9_n2_α
.Lx15_0:
 .quad .Lx15_0_s
.Lx15_0_s:
 .string "bar"
xicnarg13_done:
bb9_α:
  .section .rodata
  .Lcall9_pname: .string "join"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+16]
 mov rdx, qword ptr [r12+24]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall9_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je xchain9_n2_α
 jmp xchain9_n1_α
xchain9_n0_β:
 jmp xchain9_n2_α
xchain9_n1_α:
bb10_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 call rt_write_any_nl@PLT
 jmp xchain9_n2_α
xchain9_n1_β:
xchain9_n1_β:
 jmp xchain9_n2_α
xchain9_n2_α:
xargsub19_n0_α:
# IR_LIT_S
bb11_α:
 mov qword ptr [r12 + 48], 1
 mov rax, qword ptr [rip + .Lx20_0]
 mov qword ptr [r12 + 56], rax
 jmp xicnarg18_done
 xargsub19_n0_β:
 jmp main_ω
.Lx20_0:
 .quad .Lx20_0_s
.Lx20_0_s:
 .string "hello"
xicnarg18_done:
xargsub22_n0_α:
# IR_LIT_S
bb12_α:
 mov qword ptr [r12 + 64], 1
 mov rax, qword ptr [rip + .Lx23_0]
 mov qword ptr [r12 + 72], rax
 jmp xicnarg21_done
 xargsub22_n0_β:
 jmp main_ω
.Lx23_0:
 .quad .Lx23_0_s
.Lx23_0_s:
 .string "world"
xicnarg21_done:
bb13_α:
  .section .rodata
  .Lcall13_pname: .string "join"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+48]
 mov rdx, qword ptr [r12+56]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+64]
 mov rdx, qword ptr [r12+72]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall13_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je main_ω
 jmp xchain9_n3_α
xchain9_n2_β:
 jmp main_ω
xchain9_n3_α:
bb14_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 80]
 mov rsi, qword ptr [r12 + 88]
 call rt_write_any_nl@PLT
 jmp main_γ
xchain9_n3_β:
xchain9_n3_β:
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
