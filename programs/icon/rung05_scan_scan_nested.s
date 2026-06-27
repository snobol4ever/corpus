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
 mov qword ptr [r12 + 32], 1
 mov rax, qword ptr [rip + .Lx1_0]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n2_α
.Lx1_0:
 .quad .Lx1_0_s
.Lx1_0_s:
 .string "first"
xchain0_n1_α:
bb2_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n2_α
xchain0_n2_α:
# IR_LIT_S
bb3_α:
 mov qword ptr [r12 + 64], 1
 mov rax, qword ptr [rip + .Lx3_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n4_α
.Lx3_0:
 .quad .Lx3_0_s
.Lx3_0_s:
 .string "second"
xchain0_n3_α:
bb4_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n4_α
xchain0_n4_α:
xargsub6_n0_α:
# IR_VAR
bb5_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xscan5_subj_done
 xargsub6_n0_β:
 jmp xchain0_n5_α
xscan5_subj_done:
# IR_GEN_SCAN
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xscan5_body_start
 xscan5_enter_β:
 jmp xchain0_n5_α
xscan5_body_start:
xargsub11_n0_α:
xargsub13_n0_α:
# IR_VAR
bb6_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xscan12_subj_done
 xargsub13_n0_β:
 jmp xscan5_body_fail
xscan12_subj_done:
# IR_GEN_SCAN
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xscan12_body_start
 xscan12_enter_β:
 jmp xscan5_body_fail
xscan12_body_start:
xargsub18_n0_α:
# IR_KEYWORD_subject_reg
bb7_α:
 mov qword ptr [r12 + 144], 1
 mov qword ptr [r12 + 152], r13
 jmp xargsub18_n1_α
 xargsub18_n0_β:
 jmp xscan12_body_fail
xargsub18_n1_α:
bb8_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 144]
 mov rsi, qword ptr [r12 + 152]
 call rt_write_any_nl@PLT
 jmp xscan12_body_done
xargsub18_n1_β:
xargsub18_n1_β:
 jmp xscan12_body_fail
xscan12_body_done:
# IR_GEN_SCAN
 lea rdi, [r12 + 120]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 120]
 mov r14, qword ptr [r12 + 128]
 mov r15, qword ptr [r12 + 136]
 jmp xscan5_body_done
 xscan12_leaveok_β:
 jmp xscan5_body_fail
xscan12_body_fail:
# IR_GEN_SCAN
 lea rdi, [r12 + 120]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 120]
 mov r14, qword ptr [r12 + 128]
 mov r15, qword ptr [r12 + 136]
 jmp xscan5_body_fail
 xscan12_leavef_β:
 jmp xscan5_body_fail
xscan5_body_done:
# IR_GEN_SCAN
 lea rdi, [r12 + 96]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 96]
 mov r14, qword ptr [r12 + 104]
 mov r15, qword ptr [r12 + 112]
 jmp xchain0_n5_α
 xscan5_leaveok_β:
 jmp xchain0_n5_α
xscan5_body_fail:
# IR_GEN_SCAN
 lea rdi, [r12 + 96]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 96]
 mov r14, qword ptr [r12 + 104]
 mov r15, qword ptr [r12 + 112]
 jmp xchain0_n5_α
 xscan5_leavef_β:
 jmp xchain0_n5_α
xchain0_n5_α:
# IR_KEYWORD_subject_call
bb9_α:
 call rt_keyword_subject@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain0_n6_α
 xchain0_n5_β:
 jmp main_ω
xchain0_n6_α:
bb10_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 call rt_write_any_nl@PLT
 jmp main_γ
xchain0_n6_β:
xchain0_n6_β:
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
