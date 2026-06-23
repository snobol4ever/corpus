  .intel_syntax noprefix
  .text
RSUM_α:
#=======================================================================================================================
    .global RSUM_α
    .global RSUM_β
    .global RSUM_γ
    .global RSUM_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
RSUM_α_body:
snoch0_n0_α:
# IR_VAR
bb1_α:
 mov rdi, qword ptr [rip + .Lx3_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg1_done
 xgvarg1_β:
 jmp snoch0_n2_α
.Lx3_0:
 .quad .Lx3_0_s
.Lx3_0_s:
 .string "N"
xgvarg1_done:
# IR_LIT_I
bb2_α:
 mov qword ptr [r12 + 32], 6
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [r12 + 40], rax
 jmp xgvarg4_done
 xgvarg4_β:
 jmp snoch0_n2_α
.Lx5_0:
 .quad 0
xgvarg4_done:
bb3_α:
# BOX IR_CALL EQ(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+64]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 72], rax
# marshal arg1 = producer-box slot [r12+32] -> [r12+80]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 88], rax
  .section .rodata
  .Lbynamefn7: .string "EQ"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn7]
 lea rsi, [r12 + 64]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je snoch0_n2_α
 jmp snoch0_n1_α
snoch0_n0_β:
 jmp snoch0_n2_α
snoch0_n1_α:
# IR_LIT_scalar
bb4_α:
 jmp snoch0_n3_α
 snoch0_n1_β:
 jmp snoch0_n2_α
snoch0_n2_α:
# IR_VAR
bb5_α:
 mov rdi, qword ptr [rip + .Lx10_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp snoch0_n4_α
 snoch0_n2_β:
 jmp snoch0_n5_α
.Lx10_0:
 .quad .Lx10_0_s
.Lx10_0_s:
 .string "N"
snoch0_n3_α:
# IR_VAR
bb6_α:
 mov rdi, qword ptr [rip + .Lx14_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xgvarg12_done
 xgvarg12_β:
 jmp snoch0_n2_α
.Lx14_0:
 .quad .Lx14_0_s
.Lx14_0_s:
 .string "N"
xgvarg12_done:
# IR_LIT_I
bb7_α:
 mov qword ptr [r12 + 32], 6
 mov rax, qword ptr [rip + .Lx16_0]
 mov qword ptr [r12 + 40], rax
 jmp xgvarg15_done
 xgvarg15_β:
 jmp snoch0_n2_α
.Lx16_0:
 .quad 0
xgvarg15_done:
bb8_α:
# BOX IR_CALL EQ(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+144]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 152], rax
# marshal arg1 = producer-box slot [r12+32] -> [r12+160]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lbynamefn18: .string "EQ"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn18]
 lea rsi, [r12 + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je snoch0_n2_α
 jmp xgvcat11_0d
xgvcat11_0b:
 jmp snoch0_n2_α
xgvcat11_0d:
# IR_LIT_I
bb9_α:
 mov qword ptr [r12 + 176], 6
 mov rax, qword ptr [rip + .Lx20_0]
 mov qword ptr [r12 + 184], rax
 jmp xgvcat19_1d
 xgvcat19_1b:
 jmp snoch0_n2_α
.Lx20_0:
 .quad 0
xgvcat19_1d:
bb10_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 48]
 mov rsi, qword ptr [r12 + 56]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 176]
 call str_concat_d@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp snoch0_n6_α
 snoch0_n3_β:
 jmp snoch0_n2_α
snoch0_n4_α:
xgvarg22_done:
bb11_α:
# BOX IR_CALL RSUM(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = inline gvar-arith subexpr -> [r12+224]
   lea rdi, [rip + .S0]
 call rt_gvar_get_int@PLT
 mov qword ptr [r12 + 240], rax
 mov rcx, 1
 mov rax, qword ptr [r12 + 240]
 sub rax, rcx
 mov qword ptr [r12 + 224], 6
 mov qword ptr [r12 + 232], rax
  .section .rodata
  .Lprocfn24: .string "RSUM"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn24]
 lea rsi, [r12 + 224]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je snoch0_n5_α
 jmp snoch0_n7_α
snoch0_n4_β:
 jmp snoch0_n5_α
snoch0_n5_α:
snoch0_n5_β:
jmp RSUM_γ
jmp RSUM_γ
snoch0_n6_α:
bb12_α:
# IR_ASSIGN
 lea rdi, [rip + .S1]
 mov rsi, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 call rt_gvar_assign_descr@PLT
 jmp snoch0_n5_α
 snoch0_n6_β:
 jmp snoch0_n2_α
snoch0_n7_α:
bb13_α:
# IR_BINOP_GVAR_ARITH_SLOT
 lea rdi, [rip + .S0]
 call rt_gvar_get_int@PLT
 mov rcx, qword ptr [r12 + 216]
 add rax, rcx
 mov qword ptr [r12 + 256], rax
 jmp snoch0_n8_α
 snoch0_n7_β:
 jmp snoch0_n5_α
snoch0_n8_α:
bb14_α:
# IR_ASSIGN
 lea rdi, [rip + .S1]
 mov rsi, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 call rt_gvar_assign_descr@PLT
 jmp snoch0_n5_α
 snoch0_n8_β:
 jmp snoch0_n5_α
RSUM_β:
jmp RSUM_ω
RSUM_γ:
mov eax, 1
xor edx, edx
pop r12
ret
RSUM_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .section .rodata
  .Lpn0: .string "RSUM"
  .Lpp0_0: .string "N"
  .Lpnames0:
  .quad .Lpp0_0
  .quad 0
  .section .text
  .intel_syntax noprefix
proc_startup:
  push rbp
  mov rbp, rsp
  call core_lib_init@PLT
  call rt_proc_reset@PLT
  lea rdi, [rip + .Lpn0]
  lea rsi, [rip + .Lpnames0]
  mov edx, 1
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn0]
  lea rsi, [rip + RSUM_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn0]
  mov esi, 272
  call rt_proc_set_frame_bytes@PLT
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
  call flat_α
  xor eax, eax
  pop rbp
  ret
flat_α:
#=======================================================================================================================
    .global flat_α
    .global flat_β
    .global flat_γ
    .global flat_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
flat_α_body:
snoch30_n0_α:
# IR_LIT_scalar
bb15_α:
 jmp snoch30_n1_α
 snoch30_n0_β:
 jmp snoch30_n2_α
snoch30_n1_α:
bb16_α:
# IR_ASSIGN
 lea rdi, [rip + .S2]
 movabs rsi, 1
 call rt_gvar_assign_int@PLT
 jmp snoch30_n2_α
 snoch30_n1_β:
 jmp snoch30_n2_α
snoch30_n2_α:
# IR_LIT_scalar
bb17_α:
 jmp snoch30_n3_α
 snoch30_n2_β:
 jmp snoch30_n4_α
snoch30_n3_α:
bb18_α:
# IR_ASSIGN
 lea rdi, [rip + .S3]
 movabs rsi, 1000000000
 call rt_gvar_assign_int@PLT
 jmp snoch30_n4_α
 snoch30_n3_β:
 jmp snoch30_n4_α
snoch30_n4_α:
bb19_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S4]
 call rt_proc_define@PLT
 jmp snoch30_n5_α
 snoch30_n4_β:
 jmp snoch30_n5_α
snoch30_n5_α:
# IR_PATTERN_BREAK passthrough (chain entry; builder emitted via DTP_ASSIGN)
bb20_α:
 jmp snoch30_n6_α
 snoch30_n5_β:
 jmp snoch30_n7_α
snoch30_n6_α:
# IR_PATTERN_LIT passthrough (chain entry; matcher built inside CAT blob)
bb21_α:
 jmp snoch30_n8_α
 snoch30_n6_β:
 jmp snoch30_n7_α
snoch30_n7_α:
bb22_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn39: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn39]
 lea rsi, [r12 + 64]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je snoch30_n10_α
 jmp snoch30_n9_α
 snoch30_n7_β:
 jmp snoch30_n10_α
snoch30_n8_α:
# IR_PATTERN_CAT passthrough (chain entry; builder emitted via DTP_ASSIGN)
bb23_α:
 jmp snoch30_n11_α
 snoch30_n8_β:
 jmp snoch30_n7_α
snoch30_n9_α:
bb24_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S5]
 mov rsi, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 call rt_gvar_assign_descr@PLT
 jmp snoch30_n10_α
 snoch30_n9_β:
 jmp snoch30_n10_α
snoch30_n10_α:
# IR_LIT_scalar
bb25_α:
 jmp snoch30_n12_α
 snoch30_n10_β:
 jmp snoch30_n13_α
snoch30_n11_α:
# IR_PATTERN_CAT builder (BREAK . VAR LIT)
bb26_α:
 lea rdi, [rip + .S6]
 lea rsi, [rip + .S7]
 lea rdx, [rip + .S8]
 lea rcx, [rip + .S7]
 push rbx
 mov rbx, rsp
 and rsp, -16
 call bb_build_break_cap_lit_blob@PLT
 mov rsp, rbx
 pop rbx
 jmp snoch30_n7_α
 snoch30_n11_β:
 jmp snoch30_n7_α
snoch30_n12_α:
bb27_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S9]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch30_n13_α
 snoch30_n12_β:
 jmp snoch30_n13_α
snoch30_n13_α:
# IR_LIT_I
bb28_α:
 mov qword ptr [r12 + 88], 6
 mov rax, qword ptr [rip + .Lx47_0]
 mov qword ptr [r12 + 96], rax
 jmp xgvarg46_done
 xgvarg46_β:
 jmp snoch30_n15_α
.Lx47_0:
 .quad 16
xgvarg46_done:
bb29_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+88] -> [r12+120]
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 120], rax
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 128], rax
  .section .rodata
  .Lbynamefn49: .string "TABLE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn49]
 lea rsi, [r12 + 120]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 104], rax
 mov qword ptr [r12 + 112], rdx
 cmp eax, 99
 je snoch30_n15_α
 jmp snoch30_n14_α
snoch30_n13_β:
 jmp snoch30_n15_α
snoch30_n14_α:
bb30_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S10]
 mov rsi, qword ptr [r12 + 104]
 mov rdx, qword ptr [r12 + 112]
 call rt_gvar_assign_descr@PLT
 jmp snoch30_n15_α
 snoch30_n14_β:
 jmp snoch30_n15_α
snoch30_n15_α:
# IR_LIT_scalar
bb31_α:
 jmp snoch30_n16_α
 snoch30_n15_β:
 jmp snoch30_n17_α
snoch30_n16_α:
bb32_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S11]
 lea rsi, [rip + .S12]
 call rt_gvar_assign_str@PLT
 jmp snoch30_n17_α
 snoch30_n16_β:
 jmp snoch30_n17_α
snoch30_n17_α:
# IR_LIT_scalar
bb33_α:
 jmp snoch30_n18_α
 snoch30_n17_β:
 jmp snoch30_n19_α
snoch30_n18_α:
bb34_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S13]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch30_n19_α
 snoch30_n18_β:
 jmp snoch30_n19_α
snoch30_n19_α:
# IR_LIT_scalar
bb35_α:
 jmp snoch30_n20_α
 snoch30_n19_β:
 jmp snoch30_n21_α
snoch30_n20_α:
# IR_SUBJECT
bb36_α:
 lea rdi, [rip + .S11]
 lea rsi, [r12 + 136]
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_subject_load_nv@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp xscan56_sγ
 xscan56_sβ:
 jmp snoch30_n21_α
xscan56_sγ:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_begin@PLT
 mov rsp, rbx
 pop rbx
# IR_MATCH_HEAD
bb37_α:
 mov r13, qword ptr [r12 + 136]
 mov r15d, dword ptr [r12 + 144]
 mov dword ptr [r12 + 152], 0
 lea r10, [r12 + 160]
 jmp smatch59_retry
 snoch30_n20_β:
 jmp xscan56_dfail
smatch59_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 152]
# IR_MATCH_DEFER
bb39_α:
 lea rdi, [rip + .S6]
 mov esi, 0
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_get_pat_fn@PLT
 mov rsp, rbx
 pop rbx
 test rax, rax
 jz .Lx62_0
 push rax
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_frame@PLT
 mov rsp, rbx
 pop rbx
 pop rcx
 mov rdi, rax
 xor esi, esi
 call rcx
 cmp eax, 1
 jne smatch59_adv
 jmp xscan56_dok
.Lx62_0:
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbx
 pop rbx
 test eax, eax
 js smatch59_adv
 mov r14d, eax
 jmp xscan56_dok
 smatch59_elemb:
 jmp smatch59_adv
smatch59_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 152], 1
 mov eax, dword ptr [r12 + 152]
 cmp eax, r15d
 jg xscan56_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan56_dfail
 jmp smatch59_retry
xscan56_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
# SPLICE_EMPTY
 lea rdi, [rip + .S11]
 mov esi, dword ptr [r12 + 152]
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_scan_splice_empty@PLT
 mov rsp, rbx
 pop rbx
jmp snoch30_n22_α
xscan56_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch30_n21_α
snoch30_n21_α:
# IR_LIT_scalar
bb41_α:
 jmp snoch30_n23_α
 snoch30_n21_β:
 jmp snoch30_n24_α
snoch30_n22_α:
# IR_VAR
bb42_α:
 mov rdi, qword ptr [rip + .Lx66_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 168], rax
 mov qword ptr [r12 + 176], rdx
 jmp snoch30_n25_α
 snoch30_n22_β:
 jmp snoch30_n26_α
.Lx66_0:
 .quad .Lx66_0_s
.Lx66_0_s:
 .string "IDX"
snoch30_n23_α:
bb43_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S14]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch30_n24_α
 snoch30_n23_β:
 jmp snoch30_n24_α
snoch30_n24_α:
# IR_LIT_scalar
bb44_α:
 jmp snoch30_n27_α
 snoch30_n24_β:
 jmp snoch30_n28_α
snoch30_n25_α:
# IR_LIT_scalar
bb45_α:
 jmp snoch30_n29_α
 snoch30_n25_β:
 jmp snoch30_n26_α
snoch30_n26_α:
# IR_VAR
bb46_α:
 mov rdi, qword ptr [rip + .Lx71_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 184], rax
 mov qword ptr [r12 + 192], rdx
 jmp snoch30_n30_α
 snoch30_n26_β:
 jmp snoch30_n19_α
.Lx71_0:
 .quad .Lx71_0_s
.Lx71_0_s:
 .string "WORD"
snoch30_n27_α:
bb47_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S15]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch30_n28_α
 snoch30_n27_β:
 jmp snoch30_n28_α
snoch30_n28_α:
# IR_VAR
bb48_α:
 mov rdi, qword ptr [rip + .Lx75_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 200], rax
 mov qword ptr [r12 + 208], rdx
 jmp xgvarg73_done
 xgvarg73_β:
 jmp snoch30_n32_α
.Lx75_0:
 .quad .Lx75_0_s
.Lx75_0_s:
 .string "I"
xgvarg73_done:
# IR_VAR
bb49_α:
 mov rdi, qword ptr [rip + .Lx78_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 216], rax
 mov qword ptr [r12 + 224], rdx
 jmp xgvarg76_done
 xgvarg76_β:
 jmp snoch30_n32_α
.Lx78_0:
 .quad .Lx78_0_s
.Lx78_0_s:
 .string "IDX"
xgvarg76_done:
bb50_α:
# BOX IR_CALL LT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+200] -> [r12+248]
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 248], rax
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 256], rax
# marshal arg1 = producer-box slot [r12+216] -> [r12+264]
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 264], rax
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 272], rax
  .section .rodata
  .Lbynamefn80: .string "LT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn80]
 lea rsi, [r12 + 248]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 232], rax
 mov qword ptr [r12 + 240], rdx
 cmp eax, 99
 je snoch30_n32_α
 jmp snoch30_n31_α
snoch30_n28_β:
 jmp snoch30_n32_α
snoch30_n29_α:
bb51_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S13]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 280], rax
 jmp snoch30_n33_α
 snoch30_n29_β:
 jmp snoch30_n26_α
snoch30_n30_α:
# IR_LIT_scalar
bb52_α:
 jmp snoch30_n34_α
 snoch30_n30_β:
 jmp snoch30_n19_α
snoch30_n31_α:
# IR_VAR
bb53_α:
 mov rdi, qword ptr [rip + .Lx84_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp snoch30_n35_α
 snoch30_n31_β:
 jmp snoch30_n32_α
.Lx84_0:
 .quad .Lx84_0_s
.Lx84_0_s:
 .string "I"
snoch30_n32_α:
# IR_LIT_I
bb54_α:
 mov qword ptr [r12 + 304], 6
 mov rax, qword ptr [rip + .Lx86_0]
 mov qword ptr [r12 + 312], rax
 jmp xgvarg85_done
 xgvarg85_β:
 jmp snoch30_n37_α
.Lx86_0:
 .quad 10
xgvarg85_done:
bb55_α:
# BOX IR_CALL RSUM(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+304] -> [r12+336]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 344], rax
  .section .rodata
  .Lprocfn88: .string "RSUM"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn88]
 lea rsi, [r12 + 336]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je snoch30_n37_α
 jmp snoch30_n36_α
snoch30_n32_β:
 jmp snoch30_n37_α
snoch30_n33_α:
bb56_α:
# IR_ASSIGN
 lea rdi, [rip + .S13]
 mov rsi, qword ptr [r12 + 280]
 call rt_gvar_assign_int@PLT
 jmp snoch30_n26_α
 snoch30_n33_β:
 jmp snoch30_n26_α
snoch30_n34_α:
bb57_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S8]
 call rt_gvar_get_int@PLT
 mov rcx, 0
 add rax, rcx
 mov qword ptr [r12 + 352], rax
 jmp snoch30_n38_α
 snoch30_n34_β:
 jmp snoch30_n19_α
snoch30_n35_α:
# IR_LIT_scalar
bb58_α:
 jmp snoch30_n39_α
 snoch30_n35_β:
 jmp snoch30_n32_α
snoch30_n36_α:
bb59_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S16]
 mov rsi, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 call rt_gvar_assign_descr@PLT
 jmp snoch30_n37_α
 snoch30_n36_β:
 jmp snoch30_n37_α
snoch30_n37_α:
# IR_VAR
bb60_α:
 mov rdi, qword ptr [rip + .Lx96_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 360], rax
 mov qword ptr [r12 + 368], rdx
 jmp xgvarg94_done
 xgvarg94_β:
 jmp snoch30_n41_α
.Lx96_0:
 .quad .Lx96_0_s
.Lx96_0_s:
 .string "OUTER"
xgvarg94_done:
# IR_LIT_I
bb61_α:
 mov qword ptr [r12 + 376], 6
 mov rax, qword ptr [rip + .Lx98_0]
 mov qword ptr [r12 + 384], rax
 jmp xgvarg97_done
 xgvarg97_β:
 jmp snoch30_n41_α
.Lx98_0:
 .quad 50000
xgvarg97_done:
bb62_α:
# BOX IR_CALL LT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+360] -> [r12+408]
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 408], rax
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 416], rax
# marshal arg1 = producer-box slot [r12+376] -> [r12+424]
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 424], rax
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 432], rax
  .section .rodata
  .Lbynamefn100: .string "LT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn100]
 lea rsi, [r12 + 408]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 392], rax
 mov qword ptr [r12 + 400], rdx
 cmp eax, 99
 je snoch30_n41_α
 jmp snoch30_n40_α
snoch30_n37_β:
 jmp snoch30_n41_α
snoch30_n38_α:
bb63_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S8]
 call rt_gvar_get_int@PLT
 mov rcx, 0
 add rax, rcx
 mov qword ptr [r12 + 440], rax
 jmp xgvidxv101_done
 xgvidxv101_β:
 jmp snoch30_n19_α
xgvidxv101_done:
bb64_α:
# IR_IDX_SET (subscript_set, by-name)
 lea rdi, [rip + .S10]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 lea rdi, [rip + .S13]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 mov rax, qword ptr [r12 + 352]
 movabs rdx, 6
 mov qword ptr [r12 + 352], rdx
 mov qword ptr [r12 + 360], rax
 mov rdi, qword ptr [r12 + 448]
 mov rsi, qword ptr [r12 + 456]
 mov rdx, qword ptr [r12 + 464]
 mov rcx, qword ptr [r12 + 472]
 mov r8, qword ptr [r12 + 352]
 mov r9, qword ptr [r12 + 360]
 call subscript_set@PLT
 cmp eax, 0
 je snoch30_n19_α
 jmp snoch30_n19_α
 snoch30_n38_β:
 jmp snoch30_n19_α
snoch30_n39_α:
bb65_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S15]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 480], rax
 jmp snoch30_n42_α
 snoch30_n39_β:
 jmp snoch30_n32_α
snoch30_n40_α:
# IR_VAR
bb66_α:
 mov rdi, qword ptr [rip + .Lx106_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 488], rax
 mov qword ptr [r12 + 496], rdx
 jmp snoch30_n43_α
 snoch30_n40_β:
 jmp snoch30_n41_α
.Lx106_0:
 .quad .Lx106_0_s
.Lx106_0_s:
 .string "OUTER"
snoch30_n41_α:
bb67_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn108: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn108]
 lea rsi, [r12 + 520]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 504], rax
 mov qword ptr [r12 + 512], rdx
 cmp eax, 99
 je snoch30_n45_α
 jmp snoch30_n44_α
 snoch30_n41_β:
 jmp snoch30_n45_α
snoch30_n42_α:
# IR_VAR
bb68_α:
 mov rdi, qword ptr [rip + .Lx112_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 520], rax
 mov qword ptr [r12 + 528], rdx
 jmp xgvarg110_done
 xgvarg110_β:
 jmp snoch30_n32_α
.Lx112_0:
 .quad .Lx112_0_s
.Lx112_0_s:
 .string "I"
xgvarg110_done:
# IR_VAR
bb69_α:
 mov rdi, qword ptr [rip + .Lx115_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 536], rax
 mov qword ptr [r12 + 544], rdx
 jmp xgvarg113_done
 xgvarg113_β:
 jmp snoch30_n32_α
.Lx115_0:
 .quad .Lx115_0_s
.Lx115_0_s:
 .string "IDX"
xgvarg113_done:
bb70_α:
# BOX IR_CALL LT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+200] -> [r12+568]
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 568], rax
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 576], rax
# marshal arg1 = producer-box slot [r12+216] -> [r12+584]
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 584], rax
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 592], rax
  .section .rodata
  .Lbynamefn117: .string "LT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn117]
 lea rsi, [r12 + 568]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 552], rax
 mov qword ptr [r12 + 560], rdx
 cmp eax, 99
 je snoch30_n32_α
 jmp xgvcat109_0d
xgvcat109_0b:
 jmp snoch30_n32_α
xgvcat109_0d:
bb71_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S15]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 600], rax
 jmp xgvcat118_1d
 xgvcat118_1b:
 jmp snoch30_n32_α
xgvcat118_1d:
bb72_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 232]
 mov rsi, qword ptr [r12 + 240]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 480]
 call str_concat_d@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp snoch30_n46_α
 snoch30_n42_β:
 jmp snoch30_n32_α
snoch30_n43_α:
# IR_LIT_scalar
bb73_α:
 jmp snoch30_n47_α
 snoch30_n43_β:
 jmp snoch30_n41_α
snoch30_n44_α:
bb74_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 504]
 mov rdx, qword ptr [r12 + 512]
 call rt_gvar_assign_descr@PLT
 jmp snoch30_n45_α
 snoch30_n44_β:
 jmp snoch30_n45_α
snoch30_n45_α:
bb75_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 624], 0
 lea rax, [rip + .S19]
 mov qword ptr [r12 + 632], rax
 mov dword ptr [r12 + 640], 1
 lea rax, [rip + .S14]
 mov qword ptr [r12 + 648], rax
 lea rdi, [rip + .S18]
 lea rsi, [r12 + 624]
 mov edx, 2
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch30_n48_α
 snoch30_n45_β:
 jmp snoch30_n48_α
snoch30_n46_α:
bb76_α:
# IR_ASSIGN
 lea rdi, [rip + .S15]
 mov rsi, qword ptr [r12 + 608]
 mov rdx, qword ptr [r12 + 616]
 call rt_gvar_assign_descr@PLT
 jmp snoch30_n49_α
 snoch30_n46_β:
 jmp snoch30_n32_α
snoch30_n47_α:
bb77_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S9]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 656], rax
 jmp snoch30_n50_α
 snoch30_n47_β:
 jmp snoch30_n41_α
snoch30_n48_α:
# IR_LIT_scalar
bb78_α:
 jmp snoch30_n51_α
 snoch30_n48_β:
 jmp flat_γ
snoch30_n49_α:
# IR_VAR
bb79_α:
 mov rdi, qword ptr [rip + .Lx129_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 664], rax
 mov qword ptr [r12 + 672], rdx
 jmp snoch30_n52_α
 snoch30_n49_β:
 jmp snoch30_n28_α
.Lx129_0:
 .quad .Lx129_0_s
.Lx129_0_s:
 .string "TOTAL"
snoch30_n50_α:
# IR_VAR
bb80_α:
 mov rdi, qword ptr [rip + .Lx133_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 680], rax
 mov qword ptr [r12 + 688], rdx
 jmp xgvarg131_done
 xgvarg131_β:
 jmp snoch30_n41_α
.Lx133_0:
 .quad .Lx133_0_s
.Lx133_0_s:
 .string "OUTER"
xgvarg131_done:
# IR_LIT_I
bb81_α:
 mov qword ptr [r12 + 376], 6
 mov rax, qword ptr [rip + .Lx135_0]
 mov qword ptr [r12 + 384], rax
 jmp xgvarg134_done
 xgvarg134_β:
 jmp snoch30_n41_α
.Lx135_0:
 .quad 50000
xgvarg134_done:
bb82_α:
# BOX IR_CALL LT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+360] -> [r12+712]
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 712], rax
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 720], rax
# marshal arg1 = producer-box slot [r12+376] -> [r12+728]
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 728], rax
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 736], rax
  .section .rodata
  .Lbynamefn137: .string "LT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn137]
 lea rsi, [r12 + 712]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 696], rax
 mov qword ptr [r12 + 704], rdx
 cmp eax, 99
 je snoch30_n41_α
 jmp xgvcat130_0d
xgvcat130_0b:
 jmp snoch30_n41_α
xgvcat130_0d:
bb83_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S9]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 744], rax
 jmp xgvcat138_1d
 xgvcat138_1b:
 jmp snoch30_n41_α
xgvcat138_1d:
bb84_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 392]
 mov rsi, qword ptr [r12 + 400]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 656]
 call str_concat_d@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp snoch30_n53_α
 snoch30_n50_β:
 jmp snoch30_n41_α
snoch30_n51_α:
# IR_VAR
bb85_α:
 mov rdi, qword ptr [rip + .Lx142_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp snoch30_n54_α
 snoch30_n51_β:
 jmp flat_γ
.Lx142_0:
 .quad .Lx142_0_s
.Lx142_0_s:
 .string "T2"
snoch30_n52_α:
bb86_α:
# IR_IDX (subscript_get, by-name)
 lea rdi, [rip + .S10]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 lea rdi, [rip + .S15]
 call NV_GET_fn@PLT
 mov rcx, rdx
 mov rdx, rax
 mov rdi, qword ptr [r12 + 784]
 mov rsi, qword ptr [r12 + 792]
 call subscript_get@PLT
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 jmp snoch30_n55_α
 snoch30_n52_β:
 jmp snoch30_n28_α
snoch30_n53_α:
bb87_α:
# IR_ASSIGN
 lea rdi, [rip + .S9]
 mov rsi, qword ptr [r12 + 752]
 mov rdx, qword ptr [r12 + 760]
 call rt_gvar_assign_descr@PLT
 jmp snoch30_n13_α
 snoch30_n53_β:
 jmp snoch30_n41_α
snoch30_n54_α:
# IR_VAR
bb88_α:
 mov rdi, qword ptr [rip + .Lx147_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 jmp snoch30_n56_α
 snoch30_n54_β:
 jmp flat_γ
.Lx147_0:
 .quad .Lx147_0_s
.Lx147_0_s:
 .string "T1"
snoch30_n55_α:
bb89_α:
# IR_IDX (subscript_get, by-name)
 lea rdi, [rip + .S10]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 lea rdi, [rip + .S15]
 call NV_GET_fn@PLT
 mov rcx, rdx
 mov rdx, rax
 mov rdi, qword ptr [r12 + 832]
 mov rsi, qword ptr [r12 + 840]
 call subscript_get@PLT
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 jmp xgvidx148_done
 xgvidx148_β:
 jmp snoch30_n28_α
xgvidx148_done:
bb90_α:
# IR_BINOP_GVAR_ARITH (dynamic operands: DESCR-in DESCR-out via rt_num_arith)
 lea rdi, [rip + .S14]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 664], rax
 mov qword ptr [r12 + 672], rdx
 mov rdi, qword ptr [r12 + 664]
 mov rsi, qword ptr [r12 + 672]
 mov rdx, qword ptr [r12 + 800]
 mov rcx, qword ptr [r12 + 808]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je snoch30_n28_α
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp snoch30_n57_α
 snoch30_n55_β:
 jmp snoch30_n28_α
snoch30_n56_α:
bb91_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S17]
 lea rsi, [rip + .S5]
 mov rdx, 1
 call rt_gvar_arith@PLT
 mov qword ptr [r12 + 880], rax
 jmp snoch30_n58_α
 snoch30_n56_β:
 jmp flat_γ
snoch30_n57_α:
bb92_α:
# IR_ASSIGN
 lea rdi, [rip + .S14]
 mov rsi, qword ptr [r12 + 864]
 mov rdx, qword ptr [r12 + 872]
 call rt_gvar_assign_descr@PLT
 jmp snoch30_n28_α
 snoch30_n57_β:
 jmp snoch30_n28_α
snoch30_n58_α:
# IR_LIT_S
bb93_α:
 mov qword ptr [r12 + 888], 1
 mov rax, qword ptr [rip + .Lx155_0]
 mov qword ptr [r12 + 896], rax
 jmp xgvcat154_0d
 xgvcat154_0b:
 jmp flat_γ
.Lx155_0:
 .quad .Lx155_0_s
.Lx155_0_s:
 .string "ms: "
xgvcat154_0d:
bb94_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S17]
 lea rsi, [rip + .S5]
 mov rdx, 1
 call rt_gvar_arith@PLT
 mov qword ptr [r12 + 904], rax
 jmp xgvcat156_1d
 xgvcat156_1b:
 jmp flat_γ
xgvcat156_1d:
bb95_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 888]
 mov rsi, qword ptr [r12 + 896]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 880]
 call str_concat_d@PLT
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 jmp snoch30_n59_α
 snoch30_n58_β:
 jmp flat_γ
snoch30_n59_α:
bb96_α:
# IR_ASSIGN
 lea rdi, [rip + .S18]
 mov rsi, qword ptr [r12 + 912]
 mov rdx, qword ptr [r12 + 920]
 call rt_gvar_assign_descr@PLT
 jmp flat_γ
 snoch30_n59_β:
 jmp flat_γ
flat_β:
jmp flat_ω
flat_γ:
mov eax, 1
xor edx, edx
pop r12
ret
flat_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
.section .rodata
.S0: .string "N"
.S1: .string "RSUM"
.S2: .string "TRIM"
.S3: .string "STLIMIT"
.S4: .string "RSUM(N)"
.S5: .string "T1"
.S6: .string "PAT"
.S7: .string ","
.S8: .string "WORD"
.S9: .string "OUTER"
.S10: .string "T"
.S11: .string "DATA"
.S12: .string "10,20,30,40,50,60,70,80,90,100,"
.S13: .string "IDX"
.S14: .string "TOTAL"
.S15: .string "I"
.S16: .string "CHECK"
.S17: .string "T2"
.S18: .string "OUTPUT"
.S19: .string "result: "
.text
