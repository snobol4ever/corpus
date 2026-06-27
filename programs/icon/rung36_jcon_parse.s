  .intel_syntax noprefix
  .text
  .globl proc_f_α
proc_f_α:
#=======================================================================================================================
    .global proc_f_α
    .global proc_f_β
    .global proc_f_γ
    .global proc_f_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_f_α_body:
xchain0_n0_α:
# IR_VAR
bb1_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_f_ω
xchain0_n1_α:
# IR_RETURN
bb2_α:
 mov rax, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_f_γ
proc_f_β:
jmp proc_f_ω
proc_f_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_f_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_g_α
proc_g_α:
#=======================================================================================================================
    .global proc_g_α
    .global proc_g_β
    .global proc_g_γ
    .global proc_g_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_g_α_body:
xchain4_n0_α:
# IR_VAR
bb3_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain4_n1_α
 xchain4_n0_β:
 jmp proc_g_ω
xchain4_n1_α:
# IR_LIT_I
bb4_α:
 mov qword ptr [r12 + 32], 6
 mov rax, qword ptr [rip + .Lx7_0]
 mov qword ptr [r12 + 40], rax
 jmp xchain4_n2_α
 xchain4_n1_β:
 jmp proc_g_ω
.Lx7_0:
 .quad 2
xchain4_n2_α:
bb5_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 40]
 add rax, rcx
 mov qword ptr [r12 + 48], 6
 mov qword ptr [r12 + 56], rax
 jmp xchain4_n3_α
 xchain4_n2_β:
 jmp proc_g_ω
xchain4_n3_α:
# IR_RETURN
bb6_α:
 mov rax, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_g_γ
proc_g_β:
jmp proc_g_ω
proc_g_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_g_ω:
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
  .Lstartup_pname0: .string "f"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_f_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname1: .string "g"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_g_α]
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
xchain10_n0_α:
# IR_LIT_F
bb7_α:
 mov qword ptr [r12 + 0], 7
 mov rax, qword ptr [rip + .Lx11_0]
 mov qword ptr [r12 + 8], rax
 jmp xchain10_n1_α
 xchain10_n0_β:
 jmp xchain10_n2_α
.Lx11_0:
 .quad 4671139635798212608
xchain10_n1_α:
bb8_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 call rt_write_any_nl@PLT
 jmp xchain10_n2_α
xchain10_n1_β:
xchain10_n1_β:
 jmp xchain10_n2_α
xchain10_n2_α:
# IR_LIT_I
bb9_α:
 mov qword ptr [r12 + 16], 6
 mov rax, qword ptr [rip + .Lx13_0]
 mov qword ptr [r12 + 24], rax
 jmp xchain10_n3_α
 xchain10_n2_β:
 jmp xchain10_n6_α
.Lx13_0:
 .quad 8
xchain10_n3_α:
# IR_LIT_I
bb10_α:
 mov qword ptr [r12 + 32], 6
 mov rax, qword ptr [rip + .Lx14_0]
 mov qword ptr [r12 + 40], rax
 jmp xchain10_n4_α
 xchain10_n3_β:
 jmp xchain10_n6_α
.Lx14_0:
 .quad 4
xchain10_n4_α:
bb11_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 40]
 cqo
 idiv rcx
 mov qword ptr [r12 + 48], 6
 mov qword ptr [r12 + 56], rax
 jmp xchain10_n5_α
 xchain10_n4_β:
 jmp xchain10_n6_α
xchain10_n5_α:
# IR_LIT_I
bb12_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx16_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain10_n7_α
 xchain10_n5_β:
 jmp xchain10_n6_α
.Lx16_0:
 .quad 2
xchain10_n6_α:
# IR_LIT_I
bb13_α:
 mov qword ptr [r12 + 80], 6
 mov rax, qword ptr [rip + .Lx17_0]
 mov qword ptr [r12 + 88], rax
 jmp xchain10_n8_α
 xchain10_n6_β:
 jmp xchain10_n12_α
.Lx17_0:
 .quad 2
xchain10_n7_α:
bb14_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 56]
 mov rcx, qword ptr [r12 + 72]
 cqo
 idiv rcx
 mov qword ptr [r12 + 96], 6
 mov qword ptr [r12 + 104], rax
 jmp xchain10_n9_α
 xchain10_n7_β:
 jmp xchain10_n6_α
xchain10_n8_α:
# IR_LIT_I
bb15_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx19_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain10_n10_α
 xchain10_n8_β:
 jmp xchain10_n12_α
.Lx19_0:
 .quad 2
xchain10_n9_α:
bb16_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 call rt_write_any_nl@PLT
 jmp xchain10_n6_α
xchain10_n9_β:
xchain10_n9_β:
 jmp xchain10_n6_α
xchain10_n10_α:
bb17_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 88]
 mov rcx, qword ptr [r12 + 120]
 sub rax, rcx
 mov qword ptr [r12 + 128], 6
 mov qword ptr [r12 + 136], rax
 jmp xchain10_n11_α
 xchain10_n10_β:
 jmp xchain10_n12_α
xchain10_n11_α:
# IR_LIT_I
bb18_α:
 mov qword ptr [r12 + 144], 6
 mov rax, qword ptr [rip + .Lx22_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain10_n13_α
 xchain10_n11_β:
 jmp xchain10_n12_α
.Lx22_0:
 .quad 2
xchain10_n12_α:
bb19_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+176] -> [r12+176]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 184], rax
  .section .rodata
  .Lrkfn24: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn24]
 lea rsi, [r12 + 176]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je xchain10_n15_α
 jmp xchain10_n14_α
 xchain10_n12_β:
 jmp xchain10_n15_α
xchain10_n13_α:
bb20_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 136]
 mov rcx, qword ptr [r12 + 152]
 sub rax, rcx
 mov qword ptr [r12 + 192], 6
 mov qword ptr [r12 + 200], rax
 jmp xchain10_n16_α
 xchain10_n13_β:
 jmp xchain10_n12_α
xchain10_n14_α:
bb21_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 call rt_write_any_nl@PLT
 jmp xchain10_n15_α
xchain10_n14_β:
xchain10_n14_β:
 jmp xchain10_n15_α
xchain10_n15_α:
# IR_LIT_I
bb22_α:
 mov qword ptr [r12 + 208], 6
 mov rax, qword ptr [rip + .Lx27_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain10_n17_α
 xchain10_n15_β:
 jmp xchain10_n20_α
.Lx27_0:
 .quad 2
xchain10_n16_α:
bb23_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 192]
 mov rsi, qword ptr [r12 + 200]
 call rt_write_any_nl@PLT
 jmp xchain10_n12_α
xchain10_n16_β:
xchain10_n16_β:
 jmp xchain10_n12_α
xchain10_n17_α:
# IR_LIT_I
bb24_α:
 mov qword ptr [r12 + 224], 6
 mov rax, qword ptr [rip + .Lx29_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain10_n18_α
 xchain10_n17_β:
 jmp xchain10_n20_α
.Lx29_0:
 .quad 3
xchain10_n18_α:
bb25_α:
# IR_BINOP_RELOP
 mov rax, qword ptr [r12 + 216]
 mov rcx, qword ptr [r12 + 232]
 cmp rax, rcx
 jge xchain10_n20_α
 mov rcx, qword ptr [r12 + 224]
 mov qword ptr [r12 + 240], rcx
 mov rcx, qword ptr [r12 + 232]
 mov qword ptr [r12 + 248], rcx
 jmp xchain10_n19_α
 xchain10_n18_β:
 jmp xchain10_n20_α
xchain10_n19_α:
# IR_LIT_I
bb26_α:
 mov qword ptr [r12 + 256], 6
 mov rax, qword ptr [rip + .Lx31_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain10_n20_α
 xchain10_n19_β:
 jmp xchain10_n20_α
.Lx31_0:
 .quad 2
xchain10_n20_α:
xaltg32_a0_start:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xaltg32_a0_succ:
 lea rdi, [rip + .S1]
 call rt_bomb@PLT
 ud2
jmp xchain10_n21_α
xaltg32_a1_start:
# IR_LIT_S
bb28_α:
 mov qword ptr [r12 + 296], 1
 mov rax, qword ptr [rip + .Lx35_0]
 mov qword ptr [r12 + 304], rax
 jmp xaltg32_a1_succ
 xaltg32_a1_beta:
 jmp xchain10_n22_α
.Lx35_0:
 .quad .Lx35_0_s
.Lx35_0_s:
 .string "fail"
xaltg32_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 280], rax
 mov qword ptr [r12 + 288], 1
jmp xchain10_n21_α
xchain10_n20_β:
jmp xchain10_n22_α
xchain10_n21_α:
bb29_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 272]
 mov rsi, qword ptr [r12 + 280]
 call rt_write_any_nl@PLT
 jmp xchain10_n22_α
xchain10_n21_β:
xchain10_n21_β:
 jmp xchain10_n22_α
xchain10_n22_α:
# IR_LIT_I
bb30_α:
 mov qword ptr [r12 + 312], 6
 mov rax, qword ptr [rip + .Lx38_0]
 mov qword ptr [r12 + 320], rax
 jmp xchain10_n23_α
 xchain10_n22_β:
 jmp xchain10_n26_β
.Lx38_0:
 .quad 1
xchain10_n23_α:
# IR_LIT_I
bb31_α:
 mov qword ptr [r12 + 328], 6
 mov rax, qword ptr [rip + .Lx39_0]
 mov qword ptr [r12 + 336], rax
 jmp xchain10_n24_α
 xchain10_n23_β:
 jmp xchain10_n26_β
.Lx39_0:
 .quad 2
xchain10_n24_α:
# IR_TO
bb32_α:
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 360], rax
.Lx41_0:
 mov rax, qword ptr [r12 + 360]
 mov rcx, qword ptr [r12 + 336]
 cmp rax, rcx
 jg xchain10_n28_α
 mov qword ptr [r12 + 344], 6
 mov qword ptr [r12 + 352], rax
 jmp xchain10_n25_α
 xchain10_n24_β:
 inc qword ptr [r12 + 360]
 jmp .Lx41_0
xchain10_n25_α:
# IR_LIT_I
bb33_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx42_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain10_n26_α
 xchain10_n25_β:
 jmp xchain10_n24_β
.Lx42_0:
 .quad 3
xchain10_n26_α:
# IR_TO
bb34_α:
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 400], rax
.Lx44_0:
 mov rax, qword ptr [r12 + 400]
 mov rcx, qword ptr [r12 + 376]
 cmp rax, rcx
 jg xchain10_n24_β
 mov qword ptr [r12 + 384], 6
 mov qword ptr [r12 + 392], rax
 jmp xchain10_n27_α
 xchain10_n26_β:
 inc qword ptr [r12 + 400]
 jmp .Lx44_0
xchain10_n27_α:
bb35_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 384]
 mov rsi, qword ptr [r12 + 392]
 call rt_write_any_nl@PLT
 jmp xchain10_n26_β
xchain10_n27_β:
xchain10_n27_β:
 jmp xchain10_n26_β
xchain10_n28_α:
# IR_EVERY
 jmp xchain10_n29_α
 xchain10_n28_β:
 jmp xchain10_n29_α
xchain10_n29_α:
xargsub48_n0_α:
# IR_LIT_S
bb37_α:
 mov qword ptr [r12 + 408], 1
 mov rax, qword ptr [rip + .Lx49_0]
 mov qword ptr [r12 + 416], rax
 jmp xscan47_subj_done
 xargsub48_n0_β:
 jmp main_ω
.Lx49_0:
 .quad .Lx49_0_s
.Lx49_0_s:
 .string "x"
xscan47_subj_done:
# IR_GEN_SCAN
 mov rdi, qword ptr [r12 + 408]
 mov rsi, qword ptr [r12 + 416]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xscan47_body_start
 xscan47_enter_β:
 jmp main_ω
xscan47_body_start:
xargsub52_n0_α:
xargsub54_n0_α:
 lea rdi, [rip + .S2]
 call rt_bomb@PLT
 ud2
xargsub54_n1_α:
# IR_LIT_S
bb39_α:
 mov qword ptr [r12 + 472], 1
 mov rax, qword ptr [rip + .Lx57_0]
 mov qword ptr [r12 + 480], rax
 jmp xargsub54_n2_α
 xargsub54_n1_β:
 jmp xscan47_body_fail
.Lx57_0:
 .quad .Lx57_0_s
.Lx57_0_s:
 .string "y"
xargsub54_n2_α:
bb40_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 448]
 mov rsi, qword ptr [r12 + 456]
 mov rdx, qword ptr [r12 + 472]
 mov rcx, qword ptr [r12 + 480]
 call str_concat_d@PLT
 mov qword ptr [r12 + 488], rax
 mov qword ptr [r12 + 496], rdx
 jmp xscan53_subj_done
 xargsub54_n2_β:
 jmp xscan47_body_fail
xscan53_subj_done:
# IR_GEN_SCAN
 mov rdi, qword ptr [r12 + 488]
 mov rsi, qword ptr [r12 + 496]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xscan53_body_start
 xscan53_enter_β:
 jmp xscan47_body_fail
xscan53_body_start:
xargsub61_n0_α:
 lea rdi, [rip + .S2]
 call rt_bomb@PLT
 ud2
xscan53_body_done:
# IR_GEN_SCAN
 lea rdi, [r12 + 504]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 504]
 mov r14, qword ptr [r12 + 512]
 mov r15, qword ptr [r12 + 520]
 jmp xscan47_body_done
 xscan53_leaveok_β:
 jmp xscan47_body_fail
xscan53_body_fail:
# IR_GEN_SCAN
 lea rdi, [r12 + 504]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 504]
 mov r14, qword ptr [r12 + 512]
 mov r15, qword ptr [r12 + 520]
 jmp xscan47_body_fail
 xscan53_leavef_β:
 jmp xscan47_body_fail
xscan47_body_done:
# IR_GEN_SCAN
 lea rdi, [r12 + 424]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 424]
 mov r14, qword ptr [r12 + 432]
 mov r15, qword ptr [r12 + 440]
 jmp xchain10_n30_α
 xscan47_leaveok_β:
 jmp main_ω
xscan47_body_fail:
# IR_GEN_SCAN
 lea rdi, [r12 + 424]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 424]
 mov r14, qword ptr [r12 + 432]
 mov r15, qword ptr [r12 + 440]
 jmp main_ω
 xscan47_leavef_β:
 jmp main_ω
xchain10_n30_α:
bb42_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 528]
 mov rsi, qword ptr [r12 + 536]
 call rt_write_any_nl@PLT
 jmp main_γ
xchain10_n30_β:
xchain10_n30_β:
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
.section .rodata
.S0: .string "bb_binop_relop: shape mismatch"
.S1: .string "bb_repalt_yield: sub-expression value slot not materialised"
.S2: .string "bb_scan_tab: unhandled (needs literal positive n or sibling scan-producer slot + descr flat-chain slot)"
.text
