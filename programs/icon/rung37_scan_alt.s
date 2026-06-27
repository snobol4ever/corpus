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
 mov qword ptr [r12 + 16], 1
 mov rax, qword ptr [rip + .Lx3_0]
 mov qword ptr [r12 + 24], rax
 jmp xargsub2_n1_α
 xargsub2_n0_β:
 jmp xchain0_n2_α
.Lx3_0:
 .quad .Lx3_0_s
.Lx3_0_s:
 .string "ab"
xargsub2_n1_α:
xargsub2_n1_β:
jmp xchain0_n2_α
xscan1_subj_done:
# IR_GEN_SCAN
 mov rdi, qword ptr [r12 + -1]
 mov rsi, qword ptr [r12 + 7]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xscan1_body_start
 xscan1_enter_β:
 jmp xchain0_n2_α
xscan1_body_start:
xargsub6_n0_α:
# IR_SCAN_MOVE
bb2_α:
 mov rax, r14
 add rax, 2
 cmp rax, 1
 jl xscan1_body_fail
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xscan1_body_fail
 mov qword ptr [r12 + 72], r14
 mov rdi, r13
 mov rsi, r14
 mov rdx, rax
 sub rdx, 1
 mov r14, rdx
 push r10
 push r10
 call rt_substr@PLT
 pop r10
 pop r10
 mov qword ptr [r12 + 56], rax
 mov qword ptr [r12 + 64], rdx
 jmp xscan1_body_done
 xargsub6_n0_β:
 mov r14, qword ptr [r12 + 72]
 jmp xscan1_body_fail
xscan1_body_done:
# IR_GEN_SCAN
 lea rdi, [r12 + 32]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 32]
 mov r14, qword ptr [r12 + 40]
 mov r15, qword ptr [r12 + 48]
 jmp xchain0_n1_α
 xscan1_leaveok_β:
 jmp xchain0_n2_α
xscan1_body_fail:
# IR_GEN_SCAN
 lea rdi, [r12 + 32]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 32]
 mov r14, qword ptr [r12 + 40]
 mov r15, qword ptr [r12 + 48]
 jmp xchain0_n2_α
 xscan1_leavef_β:
 jmp xchain0_n2_α
xchain0_n1_α:
bb3_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 56]
 mov rsi, qword ptr [r12 + 64]
 call rt_write_any_nl@PLT
 jmp xchain0_n0_α
xchain0_n1_β:
xchain0_n1_β:
 jmp xchain0_n2_α
xchain0_n2_α:
# IR_EVERY
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n3_α
xchain0_n3_α:
bb5_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn16: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn16]
 lea rsi, [r12 + 96]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je xchain0_n4_α
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n4_α
xchain0_n4_α:
xargsub18_n0_α:
# IR_LIT_S
bb6_α:
 mov qword ptr [r12 + 96], 1
 mov rax, qword ptr [rip + .Lx19_0]
 mov qword ptr [r12 + 104], rax
 jmp xargsub18_n1_α
 xargsub18_n0_β:
 jmp xchain0_n6_α
.Lx19_0:
 .quad .Lx19_0_s
.Lx19_0_s:
 .string "hello"
xargsub18_n1_α:
xargsub18_n1_β:
jmp xchain0_n6_α
xscan17_subj_done:
# IR_GEN_SCAN
 mov rdi, qword ptr [r12 + -1]
 mov rsi, qword ptr [r12 + 7]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xscan17_body_start
 xscan17_enter_β:
 jmp xchain0_n6_α
xscan17_body_start:
xargsub22_n0_α:
# IR_SCAN_TAB
bb7_α:
 mov rax, 2
 cmp rax, 1
 jl xscan17_body_fail
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xscan17_body_fail
 mov qword ptr [r12 + 152], r14
 mov rdi, r13
 mov rsi, r14
 mov rdx, rax
 sub rdx, 1
 mov r14, rdx
 push r10
 push r10
 call rt_substr@PLT
 pop r10
 pop r10
 mov qword ptr [r12 + 136], rax
 mov qword ptr [r12 + 144], rdx
 jmp xscan17_body_done
 xargsub22_n0_β:
 mov r14, qword ptr [r12 + 152]
 jmp xscan17_body_fail
xscan17_body_done:
# IR_GEN_SCAN
 lea rdi, [r12 + 112]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 112]
 mov r14, qword ptr [r12 + 120]
 mov r15, qword ptr [r12 + 128]
 jmp xchain0_n5_α
 xscan17_leaveok_β:
 jmp xchain0_n6_α
xscan17_body_fail:
# IR_GEN_SCAN
 lea rdi, [r12 + 112]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 112]
 mov r14, qword ptr [r12 + 120]
 mov r15, qword ptr [r12 + 128]
 jmp xchain0_n6_α
 xscan17_leavef_β:
 jmp xchain0_n6_α
xchain0_n5_α:
bb8_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 136]
 mov rsi, qword ptr [r12 + 144]
 call rt_write_any_nl@PLT
 jmp xchain0_n4_α
xchain0_n5_β:
xchain0_n5_β:
 jmp xchain0_n6_α
xchain0_n6_α:
# IR_EVERY
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp xchain0_n7_α
xchain0_n7_α:
bb10_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn32: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn32]
 lea rsi, [r12 + 176]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je xchain0_n8_α
 jmp xchain0_n8_α
 xchain0_n7_β:
 jmp xchain0_n8_α
xchain0_n8_α:
# IR_LIT_I
bb11_α:
 mov qword ptr [r12 + 176], 6
 mov rax, qword ptr [rip + .Lx33_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain0_n9_α
 xchain0_n8_β:
 jmp xchain0_n10_α
.Lx33_0:
 .quad 0
xchain0_n9_α:
bb12_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain0_n10_α
 xchain0_n9_β:
 jmp xchain0_n10_α
xchain0_n10_α:
xargsub36_n0_α:
# IR_LIT_S
bb13_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx37_0]
 mov qword ptr [r12 + 216], rax
 jmp xargsub36_n1_α
 xargsub36_n0_β:
 jmp xchain0_n11_α
.Lx37_0:
 .quad .Lx37_0_s
.Lx37_0_s:
 .string "x"
xargsub36_n1_α:
xargsub36_n1_β:
jmp xchain0_n11_α
xscan35_subj_done:
# IR_GEN_SCAN
 mov rdi, qword ptr [r12 + -1]
 mov rsi, qword ptr [r12 + 7]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xscan35_body_start
 xscan35_enter_β:
 jmp xchain0_n11_α
xscan35_body_start:
xargsub40_n0_α:
# IR_VAR
bb14_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xargsub40_n1_α
 xargsub40_n0_β:
 jmp xscan35_body_fail
xargsub40_n1_α:
# IR_LIT_I
bb15_α:
 mov qword ptr [r12 + 248], 6
 mov rax, qword ptr [rip + .Lx43_0]
 mov qword ptr [r12 + 256], rax
 jmp xargsub40_n2_α
 xargsub40_n1_β:
 jmp xscan35_body_fail
.Lx43_0:
 .quad 1
xargsub40_n2_α:
bb16_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 8]
 mov rcx, qword ptr [r12 + 256]
 add rax, rcx
 mov qword ptr [r12 + 264], 6
 mov qword ptr [r12 + 272], rax
 jmp xargsub40_n3_α
 xargsub40_n2_β:
 jmp xscan35_body_fail
xargsub40_n3_α:
bb17_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 264]
 mov rdx, qword ptr [r12 + 272]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 mov qword ptr [r12 + 280], rax
 mov qword ptr [r12 + 288], rdx
 jmp xscan35_body_done
 xargsub40_n3_β:
 jmp xscan35_body_fail
xscan35_body_done:
# IR_GEN_SCAN
 lea rdi, [r12 + 224]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 224]
 mov r14, qword ptr [r12 + 232]
 mov r15, qword ptr [r12 + 240]
 jmp xchain0_n11_α
 xscan35_leaveok_β:
 jmp xchain0_n11_α
xscan35_body_fail:
# IR_GEN_SCAN
 lea rdi, [r12 + 224]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 224]
 mov r14, qword ptr [r12 + 232]
 mov r15, qword ptr [r12 + 240]
 jmp xchain0_n11_α
 xscan35_leavef_β:
 jmp xchain0_n11_α
xchain0_n11_α:
# IR_EVERY
 jmp xchain0_n12_α
 xchain0_n11_β:
 jmp xchain0_n12_α
xchain0_n12_α:
# IR_VAR
bb19_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n13_α
 xchain0_n12_β:
 jmp xchain0_n14_α
xchain0_n13_α:
bb20_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 call rt_write_any_nl@PLT
 jmp xchain0_n14_α
xchain0_n13_β:
xchain0_n13_β:
 jmp xchain0_n14_α
xchain0_n14_α:
bb21_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn55: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn55]
 lea rsi, [r12 + 312]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 296], rax
 mov qword ptr [r12 + 304], rdx
 cmp eax, 99
 je xchain0_n15_α
 jmp xchain0_n15_α
 xchain0_n14_β:
 jmp xchain0_n15_α
xchain0_n15_α:
xargsub57_n0_α:
# IR_LIT_S
bb22_α:
 mov qword ptr [r12 + 312], 1
 mov rax, qword ptr [rip + .Lx58_0]
 mov qword ptr [r12 + 320], rax
 jmp xargsub57_n1_α
 xargsub57_n0_β:
 jmp xchain0_n17_α
.Lx58_0:
 .quad .Lx58_0_s
.Lx58_0_s:
 .string "abc"
xargsub57_n1_α:
xargsub57_n1_β:
jmp xchain0_n17_α
xscan56_subj_done:
# IR_GEN_SCAN
 mov rdi, qword ptr [r12 + -1]
 mov rsi, qword ptr [r12 + 7]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xscan56_body_start
 xscan56_enter_β:
 jmp xchain0_n17_α
xscan56_body_start:
xargsub61_n0_α:
# IR_SCAN_MOVE
bb23_α:
 mov rax, r14
 add rax, 6
 cmp rax, 1
 jl xscan56_body_fail
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xscan56_body_fail
 mov qword ptr [r12 + 368], r14
 mov rdi, r13
 mov rsi, r14
 mov rdx, rax
 sub rdx, 1
 mov r14, rdx
 push r10
 push r10
 call rt_substr@PLT
 pop r10
 pop r10
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xscan56_body_done
 xargsub61_n0_β:
 mov r14, qword ptr [r12 + 368]
 jmp xscan56_body_fail
xscan56_body_done:
# IR_GEN_SCAN
 lea rdi, [r12 + 328]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 328]
 mov r14, qword ptr [r12 + 336]
 mov r15, qword ptr [r12 + 344]
 jmp xchain0_n16_α
 xscan56_leaveok_β:
 jmp xchain0_n17_α
xscan56_body_fail:
# IR_GEN_SCAN
 lea rdi, [r12 + 328]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 328]
 mov r14, qword ptr [r12 + 336]
 mov r15, qword ptr [r12 + 344]
 jmp xchain0_n17_α
 xscan56_leavef_β:
 jmp xchain0_n17_α
xchain0_n16_α:
bb24_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 352]
 mov rsi, qword ptr [r12 + 360]
 call rt_write_any_nl@PLT
 jmp xchain0_n15_α
xchain0_n16_β:
xchain0_n16_β:
 jmp xchain0_n17_α
xchain0_n17_α:
# IR_EVERY
 jmp xchain0_n18_α
 xchain0_n17_β:
 jmp xchain0_n18_α
xchain0_n18_α:
bb26_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn71: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn71]
 lea rsi, [r12 + 392]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 376], rax
 mov qword ptr [r12 + 384], rdx
 cmp eax, 99
 je main_ω
 jmp main_γ
 xchain0_n18_β:
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
