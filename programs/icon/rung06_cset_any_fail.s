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
# IR_LIT_I
bb1_α:
 mov qword ptr [r12 + 16], 6
 mov rax, qword ptr [rip + .Lx1_0]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n2_α
.Lx1_0:
 .quad 0
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
xargsub4_n0_α:
# IR_LIT_S
bb3_α:
 mov qword ptr [r12 + 48], 1
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [r12 + 56], rax
 jmp xscan3_subj_done
 xargsub4_n0_β:
 jmp xchain0_n3_α
.Lx5_0:
 .quad .Lx5_0_s
.Lx5_0_s:
 .string "xyz"
xscan3_subj_done:
# IR_GEN_SCAN
 mov rdi, qword ptr [r12 + 48]
 mov rsi, qword ptr [r12 + 56]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xscan3_body_start
 xscan3_enter_β:
 jmp xchain0_n3_α
xscan3_body_start:
xargsub8_n0_α:
# IR_SCAN_ANY
bb4_α:
 mov eax, r14d
 cmp eax, r15d
 jge xscan3_body_fail
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx10_0]
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 je xscan3_body_fail
 mov qword ptr [r12 + 88], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [r12 + 96], rax
 jmp xargsub8_n1_α
 xargsub8_n0_β:
 jmp xscan3_body_fail
.Lx10_0:
 .quad .Lx10_0_s
.Lx10_0_s:
 .string "aeiou"
xargsub8_n1_α:
# IR_LIT_I
bb5_α:
 mov qword ptr [r12 + 104], 6
 mov rax, qword ptr [rip + .Lx11_0]
 mov qword ptr [r12 + 112], rax
 jmp xargsub8_n2_α
 xargsub8_n1_β:
 jmp xscan3_body_fail
.Lx11_0:
 .quad 1
xargsub8_n2_α:
bb6_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 104]
 mov rdx, qword ptr [r12 + 112]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 mov qword ptr [r12 + 120], rax
 mov qword ptr [r12 + 128], rdx
 jmp xargsub8_n3_α
 xargsub8_n2_β:
 jmp xscan3_body_fail
xargsub8_n3_α:
jmp xscan3_body_done
xargsub8_n3_β:
jmp xscan3_body_fail
xscan3_body_done:
# IR_GEN_SCAN
 lea rdi, [r12 + 64]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 64]
 mov r14, qword ptr [r12 + 72]
 mov r15, qword ptr [r12 + 80]
 jmp xchain0_n3_α
 xscan3_leaveok_β:
 jmp xchain0_n3_α
xscan3_body_fail:
# IR_GEN_SCAN
 lea rdi, [r12 + 64]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 64]
 mov r14, qword ptr [r12 + 72]
 mov r15, qword ptr [r12 + 80]
 jmp xchain0_n3_α
 xscan3_leavef_β:
 jmp xchain0_n3_α
xchain0_n3_α:
# IR_VAR
bb7_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp main_ω
xchain0_n4_α:
bb8_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 call rt_write_any_nl@PLT
 jmp main_γ
xchain0_n4_β:
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
