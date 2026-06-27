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
xargsub2_n0_α:
# IR_LIT_S
bb1_α:
 mov qword ptr [r12 + 0], 1
 mov rax, qword ptr [rip + .Lx3_0]
 mov qword ptr [r12 + 8], rax
 jmp xscan1_subj_done
 xargsub2_n0_β:
 jmp xchain0_n1_α
.Lx3_0:
 .quad .Lx3_0_s
.Lx3_0_s:
 .string "hello"
xscan1_subj_done:
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
 jmp xscan1_body_start
 xscan1_enter_β:
 jmp xchain0_n1_α
xscan1_body_start:
xargsub6_n0_α:
# IR_SCAN_MATCH
bb2_α:
 mov rax, r15
 sub rax, r14
 cmp rax, 3
 jl xscan1_body_fail
 mov rdi, qword ptr [rip + .Lx8_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 3
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 jne xscan1_body_fail
 mov qword ptr [r12 + 40], 6
 mov rax, r14
 add rax, 4
 mov qword ptr [r12 + 48], rax
 jmp xargsub6_n1_α
 xargsub6_n0_β:
 jmp xscan1_body_fail
.Lx8_0:
 .quad .Lx8_0_s
.Lx8_0_s:
 .string "hel"
xargsub6_n1_α:
bb3_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 40]
 mov rsi, qword ptr [r12 + 48]
 call rt_write_any_nl@PLT
 jmp xscan1_body_done
xargsub6_n1_β:
xargsub6_n1_β:
 jmp xscan1_body_fail
xscan1_body_done:
# IR_GEN_SCAN
 lea rdi, [r12 + 16]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 16]
 mov r14, qword ptr [r12 + 24]
 mov r15, qword ptr [r12 + 32]
 jmp xchain0_n1_α
 xscan1_leaveok_β:
 jmp xchain0_n1_α
xscan1_body_fail:
# IR_GEN_SCAN
 lea rdi, [r12 + 16]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 16]
 mov r14, qword ptr [r12 + 24]
 mov r15, qword ptr [r12 + 32]
 jmp xchain0_n1_α
 xscan1_leavef_β:
 jmp xchain0_n1_α
xchain0_n1_α:
xargsub15_n0_α:
# IR_LIT_S
bb4_α:
 mov qword ptr [r12 + 56], 1
 mov rax, qword ptr [rip + .Lx16_0]
 mov qword ptr [r12 + 64], rax
 jmp xscan14_subj_done
 xargsub15_n0_β:
 jmp main_ω
.Lx16_0:
 .quad .Lx16_0_s
.Lx16_0_s:
 .string "world"
xscan14_subj_done:
# IR_GEN_SCAN
 mov rdi, qword ptr [r12 + 56]
 mov rsi, qword ptr [r12 + 64]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xscan14_body_start
 xscan14_enter_β:
 jmp main_ω
xscan14_body_start:
xargsub19_n0_α:
xaltg20_a0_start:
# IR_SCAN_MATCH
bb5_α:
 mov rax, r15
 sub rax, r14
 cmp rax, 3
 jl xaltg20_a1_start
 mov rdi, qword ptr [rip + .Lx22_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 3
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 jne xaltg20_a1_start
 mov qword ptr [r12 + 120], 6
 mov rax, r14
 add rax, 4
 mov qword ptr [r12 + 128], rax
 jmp xaltg20_a0_succ
 xaltg20_a0_beta:
 jmp xaltg20_a1_start
.Lx22_0:
 .quad .Lx22_0_s
.Lx22_0_s:
 .string "xyz"
xaltg20_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 104], rax
 mov qword ptr [r12 + 112], 1
jmp xargsub19_n1_α
xaltg20_a1_start:
# IR_LIT_I
bb6_α:
 mov qword ptr [r12 + 136], 6
 mov rax, qword ptr [rip + .Lx24_0]
 mov qword ptr [r12 + 144], rax
 jmp xaltg20_a1_succ
 xaltg20_a1_beta:
 jmp xscan14_body_fail
.Lx24_0:
 .quad 0
xaltg20_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 104], rax
 mov qword ptr [r12 + 112], 1
jmp xargsub19_n1_α
xargsub19_n0_β:
jmp xscan14_body_fail
xargsub19_n1_α:
bb7_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 call rt_write_any_nl@PLT
 jmp xscan14_body_done
xargsub19_n1_β:
xargsub19_n1_β:
 jmp xscan14_body_fail
xscan14_body_done:
# IR_GEN_SCAN
 lea rdi, [r12 + 72]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 72]
 mov r14, qword ptr [r12 + 80]
 mov r15, qword ptr [r12 + 88]
 jmp main_γ
 xscan14_leaveok_β:
 jmp main_ω
xscan14_body_fail:
# IR_GEN_SCAN
 lea rdi, [r12 + 72]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 72]
 mov r14, qword ptr [r12 + 80]
 mov r15, qword ptr [r12 + 88]
 jmp main_ω
 xscan14_leavef_β:
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
