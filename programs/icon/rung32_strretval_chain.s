  .intel_syntax noprefix
  .text
  .globl proc_prefix_α
proc_prefix_α:
#=======================================================================================================================
    .global proc_prefix_α
    .global proc_prefix_β
    .global proc_prefix_γ
    .global proc_prefix_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_prefix_α_body:
xchain0_n0_α:
# IR_LIT_S
bb1_α:
 mov qword ptr [r12 + 32], 1
 mov rax, qword ptr [rip + .Lx1_0]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_prefix_ω
.Lx1_0:
 .quad .Lx1_0_s
.Lx1_0_s:
 .string "pre:"
xchain0_n1_α:
# IR_VAR
bb2_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp proc_prefix_ω
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
 jmp proc_prefix_ω
xchain0_n3_α:
# IR_RETURN
bb4_α:
 mov rax, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_prefix_γ
proc_prefix_β:
jmp proc_prefix_ω
proc_prefix_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_prefix_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_suffix_α
proc_suffix_α:
#=======================================================================================================================
    .global proc_suffix_α
    .global proc_suffix_β
    .global proc_suffix_γ
    .global proc_suffix_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_suffix_α_body:
xchain6_n0_α:
# IR_VAR
bb5_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain6_n1_α
 xchain6_n0_β:
 jmp proc_suffix_ω
xchain6_n1_α:
# IR_LIT_S
bb6_α:
 mov qword ptr [r12 + 32], 1
 mov rax, qword ptr [rip + .Lx9_0]
 mov qword ptr [r12 + 40], rax
 jmp xchain6_n2_α
 xchain6_n1_β:
 jmp proc_suffix_ω
.Lx9_0:
 .quad .Lx9_0_s
.Lx9_0_s:
 .string ":suf"
xchain6_n2_α:
bb7_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 32]
 mov rcx, qword ptr [r12 + 40]
 call str_concat_d@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 jmp xchain6_n3_α
 xchain6_n2_β:
 jmp proc_suffix_ω
xchain6_n3_α:
# IR_RETURN
bb8_α:
 mov rax, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_suffix_γ
proc_suffix_β:
jmp proc_suffix_ω
proc_suffix_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_suffix_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_wrap_α
proc_wrap_α:
#=======================================================================================================================
    .global proc_wrap_α
    .global proc_wrap_β
    .global proc_wrap_γ
    .global proc_wrap_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_wrap_α_body:
xchain12_n0_α:
xargsub14_n0_α:
xargsub16_n0_α:
# IR_VAR
bb9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xicnarg15_done
 xargsub16_n0_β:
 jmp proc_wrap_ω
xicnarg15_done:
bb10_α:
  .section .rodata
  .Lcall10_pname: .string "suffix"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+16]
 mov rdx, qword ptr [r12+24]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall10_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je proc_wrap_ω
 jmp xicnarg13_done
xargsub14_n0_β:
 jmp proc_wrap_ω
xicnarg13_done:
bb11_α:
  .section .rodata
  .Lcall11_pname: .string "prefix"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+32]
 mov rdx, qword ptr [r12+40]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall11_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je proc_wrap_ω
 jmp xchain12_n1_α
xchain12_n0_β:
 jmp proc_wrap_ω
xchain12_n1_α:
# IR_RETURN
bb12_α:
 mov rax, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_wrap_γ
proc_wrap_β:
jmp proc_wrap_ω
proc_wrap_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_wrap_ω:
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
  .Lstartup_pname0: .string "prefix"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_prefix_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname1: .string "suffix"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_suffix_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname2: .string "wrap"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_wrap_α]
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
xchain22_n0_α:
xargsub24_n0_α:
# IR_LIT_S
bb13_α:
 mov qword ptr [r12 + 0], 1
 mov rax, qword ptr [rip + .Lx25_0]
 mov qword ptr [r12 + 8], rax
 jmp xicnarg23_done
 xargsub24_n0_β:
 jmp main_ω
.Lx25_0:
 .quad .Lx25_0_s
.Lx25_0_s:
 .string "mid"
xicnarg23_done:
bb14_α:
  .section .rodata
  .Lcall14_pname: .string "wrap"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall14_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je main_ω
 jmp xchain22_n1_α
xchain22_n0_β:
 jmp main_ω
xchain22_n1_α:
bb15_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 call rt_write_any_nl@PLT
 jmp main_γ
xchain22_n1_β:
xchain22_n1_β:
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
