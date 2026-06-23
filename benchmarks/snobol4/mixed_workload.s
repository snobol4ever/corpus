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
# IR_LIT_I
bb6_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx12_0]
 mov qword ptr [r12 + 120], rax
 jmp xgvcat11_1d
 xgvcat11_1b:
 jmp snoch0_n2_α
.Lx12_0:
 .quad 0
xgvcat11_1d:
bb7_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 48]
 mov rsi, qword ptr [r12 + 56]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 112]
 call str_concat_d@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp snoch0_n6_α
 snoch0_n3_β:
 jmp snoch0_n2_α
snoch0_n4_α:
xgvarg14_done:
bb8_α:
# BOX IR_CALL RSUM(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = inline gvar-arith subexpr -> [r12+160]
   lea rdi, [rip + .S0]
 call rt_gvar_get_int@PLT
 mov qword ptr [r12 + 176], rax
 mov rcx, 1
 mov rax, qword ptr [r12 + 176]
 sub rax, rcx
 mov qword ptr [r12 + 160], 6
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lprocfn16: .string "RSUM"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn16]
 lea rsi, [r12 + 160]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
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
bb9_α:
# IR_ASSIGN
 lea rdi, [rip + .S1]
 mov rsi, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 call rt_gvar_assign_descr@PLT
 jmp snoch0_n5_α
 snoch0_n6_β:
 jmp snoch0_n2_α
snoch0_n7_α:
bb10_α:
# IR_BINOP_GVAR_ARITH_SLOT
 lea rdi, [rip + .S0]
 call rt_gvar_get_int@PLT
 mov rcx, qword ptr [r12 + 152]
 add rax, rcx
 mov qword ptr [r12 + 192], rax
 jmp snoch0_n8_α
 snoch0_n7_β:
 jmp snoch0_n5_α
snoch0_n8_α:
bb11_α:
# IR_ASSIGN
 lea rdi, [rip + .S1]
 mov rsi, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
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
  mov esi, 208
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
snoch22_n0_α:
# IR_LIT_scalar
bb12_α:
 jmp snoch22_n1_α
 snoch22_n0_β:
 jmp snoch22_n2_α
snoch22_n1_α:
bb13_α:
# IR_ASSIGN
 lea rdi, [rip + .S2]
 movabs rsi, 1
 call rt_gvar_assign_int@PLT
 jmp snoch22_n2_α
 snoch22_n1_β:
 jmp snoch22_n2_α
snoch22_n2_α:
# IR_LIT_scalar
bb14_α:
 jmp snoch22_n3_α
 snoch22_n2_β:
 jmp snoch22_n4_α
snoch22_n3_α:
bb15_α:
# IR_ASSIGN
 lea rdi, [rip + .S3]
 movabs rsi, 1000000000
 call rt_gvar_assign_int@PLT
 jmp snoch22_n4_α
 snoch22_n3_β:
 jmp snoch22_n4_α
snoch22_n4_α:
bb16_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S4]
 call rt_proc_define@PLT
 jmp snoch22_n5_α
 snoch22_n4_β:
 jmp snoch22_n5_α
snoch22_n5_α:
# IR_PATTERN_BREAK passthrough (chain entry; builder emitted via DTP_ASSIGN)
bb17_α:
 jmp snoch22_n6_α
 snoch22_n5_β:
 jmp snoch22_n7_α
snoch22_n6_α:
# IR_PATTERN_LIT passthrough (chain entry; matcher built inside CAT blob)
bb18_α:
 jmp snoch22_n8_α
 snoch22_n6_β:
 jmp snoch22_n7_α
snoch22_n7_α:
bb19_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn31: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn31]
 lea rsi, [r12 + 64]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je snoch22_n10_α
 jmp snoch22_n9_α
 snoch22_n7_β:
 jmp snoch22_n10_α
snoch22_n8_α:
# IR_PATTERN_CAT passthrough (chain entry; builder emitted via DTP_ASSIGN)
bb20_α:
 jmp snoch22_n11_α
 snoch22_n8_β:
 jmp snoch22_n7_α
snoch22_n9_α:
bb21_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S5]
 mov rsi, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 call rt_gvar_assign_descr@PLT
 jmp snoch22_n10_α
 snoch22_n9_β:
 jmp snoch22_n10_α
snoch22_n10_α:
# IR_LIT_scalar
bb22_α:
 jmp snoch22_n12_α
 snoch22_n10_β:
 jmp snoch22_n13_α
snoch22_n11_α:
# IR_PATTERN_CAT builder (BREAK . VAR LIT)
bb23_α:
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
 jmp snoch22_n7_α
 snoch22_n11_β:
 jmp snoch22_n7_α
snoch22_n12_α:
bb24_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S9]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch22_n13_α
 snoch22_n12_β:
 jmp snoch22_n13_α
snoch22_n13_α:
# IR_LIT_I
bb25_α:
 mov qword ptr [r12 + 88], 6
 mov rax, qword ptr [rip + .Lx39_0]
 mov qword ptr [r12 + 96], rax
 jmp xgvarg38_done
 xgvarg38_β:
 jmp snoch22_n15_α
.Lx39_0:
 .quad 16
xgvarg38_done:
bb26_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+88] -> [r12+120]
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 120], rax
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 128], rax
  .section .rodata
  .Lbynamefn41: .string "TABLE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn41]
 lea rsi, [r12 + 120]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 104], rax
 mov qword ptr [r12 + 112], rdx
 cmp eax, 99
 je snoch22_n15_α
 jmp snoch22_n14_α
snoch22_n13_β:
 jmp snoch22_n15_α
snoch22_n14_α:
bb27_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S10]
 mov rsi, qword ptr [r12 + 104]
 mov rdx, qword ptr [r12 + 112]
 call rt_gvar_assign_descr@PLT
 jmp snoch22_n15_α
 snoch22_n14_β:
 jmp snoch22_n15_α
snoch22_n15_α:
# IR_LIT_scalar
bb28_α:
 jmp snoch22_n16_α
 snoch22_n15_β:
 jmp snoch22_n17_α
snoch22_n16_α:
bb29_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S11]
 lea rsi, [rip + .S12]
 call rt_gvar_assign_str@PLT
 jmp snoch22_n17_α
 snoch22_n16_β:
 jmp snoch22_n17_α
snoch22_n17_α:
# IR_LIT_scalar
bb30_α:
 jmp snoch22_n18_α
 snoch22_n17_β:
 jmp snoch22_n19_α
snoch22_n18_α:
bb31_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S13]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch22_n19_α
 snoch22_n18_β:
 jmp snoch22_n19_α
snoch22_n19_α:
# IR_LIT_scalar
bb32_α:
 jmp snoch22_n20_α
 snoch22_n19_β:
 jmp snoch22_n21_α
snoch22_n20_α:
# IR_SUBJECT
bb33_α:
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
 jmp xscan48_sγ
 xscan48_sβ:
 jmp snoch22_n21_α
xscan48_sγ:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_begin@PLT
 mov rsp, rbx
 pop rbx
# IR_MATCH_HEAD
bb34_α:
 mov r13, qword ptr [r12 + 136]
 mov r15d, dword ptr [r12 + 144]
 mov dword ptr [r12 + 152], 0
 lea r10, [r12 + 160]
 jmp smatch51_retry
 snoch22_n20_β:
 jmp xscan48_dfail
smatch51_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 152]
# IR_MATCH_DEFER
bb36_α:
 lea rdi, [rip + .S6]
 mov esi, 0
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_get_pat_fn@PLT
 mov rsp, rbx
 pop rbx
 test rax, rax
 jz .Lx54_0
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
 jne smatch51_adv
 jmp xscan48_dok
.Lx54_0:
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbx
 pop rbx
 test eax, eax
 js smatch51_adv
 mov r14d, eax
 jmp xscan48_dok
 smatch51_elemb:
 jmp smatch51_adv
smatch51_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 152], 1
 mov eax, dword ptr [r12 + 152]
 cmp eax, r15d
 jg xscan48_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan48_dfail
 jmp smatch51_retry
xscan48_dok:
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
jmp snoch22_n22_α
xscan48_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch22_n21_α
snoch22_n21_α:
# IR_LIT_scalar
bb38_α:
 jmp snoch22_n23_α
 snoch22_n21_β:
 jmp snoch22_n24_α
snoch22_n22_α:
# IR_VAR
bb39_α:
 mov rdi, qword ptr [rip + .Lx58_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 168], rax
 mov qword ptr [r12 + 176], rdx
 jmp snoch22_n25_α
 snoch22_n22_β:
 jmp snoch22_n26_α
.Lx58_0:
 .quad .Lx58_0_s
.Lx58_0_s:
 .string "IDX"
snoch22_n23_α:
bb40_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S14]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch22_n24_α
 snoch22_n23_β:
 jmp snoch22_n24_α
snoch22_n24_α:
# IR_LIT_scalar
bb41_α:
 jmp snoch22_n27_α
 snoch22_n24_β:
 jmp snoch22_n28_α
snoch22_n25_α:
# IR_LIT_scalar
bb42_α:
 jmp snoch22_n29_α
 snoch22_n25_β:
 jmp snoch22_n26_α
snoch22_n26_α:
# IR_VAR
bb43_α:
 mov rdi, qword ptr [rip + .Lx63_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 184], rax
 mov qword ptr [r12 + 192], rdx
 jmp snoch22_n30_α
 snoch22_n26_β:
 jmp snoch22_n19_α
.Lx63_0:
 .quad .Lx63_0_s
.Lx63_0_s:
 .string "WORD"
snoch22_n27_α:
bb44_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S15]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch22_n28_α
 snoch22_n27_β:
 jmp snoch22_n28_α
snoch22_n28_α:
# IR_VAR
bb45_α:
 mov rdi, qword ptr [rip + .Lx67_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 200], rax
 mov qword ptr [r12 + 208], rdx
 jmp xgvarg65_done
 xgvarg65_β:
 jmp snoch22_n32_α
.Lx67_0:
 .quad .Lx67_0_s
.Lx67_0_s:
 .string "I"
xgvarg65_done:
# IR_VAR
bb46_α:
 mov rdi, qword ptr [rip + .Lx70_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 216], rax
 mov qword ptr [r12 + 224], rdx
 jmp xgvarg68_done
 xgvarg68_β:
 jmp snoch22_n32_α
.Lx70_0:
 .quad .Lx70_0_s
.Lx70_0_s:
 .string "IDX"
xgvarg68_done:
bb47_α:
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
  .Lbynamefn72: .string "LT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn72]
 lea rsi, [r12 + 248]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 232], rax
 mov qword ptr [r12 + 240], rdx
 cmp eax, 99
 je snoch22_n32_α
 jmp snoch22_n31_α
snoch22_n28_β:
 jmp snoch22_n32_α
snoch22_n29_α:
bb48_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S13]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 280], rax
 jmp snoch22_n33_α
 snoch22_n29_β:
 jmp snoch22_n26_α
snoch22_n30_α:
# IR_LIT_scalar
bb49_α:
 jmp snoch22_n34_α
 snoch22_n30_β:
 jmp snoch22_n19_α
snoch22_n31_α:
# IR_VAR
bb50_α:
 mov rdi, qword ptr [rip + .Lx76_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp snoch22_n35_α
 snoch22_n31_β:
 jmp snoch22_n32_α
.Lx76_0:
 .quad .Lx76_0_s
.Lx76_0_s:
 .string "I"
snoch22_n32_α:
# IR_LIT_I
bb51_α:
 mov qword ptr [r12 + 304], 6
 mov rax, qword ptr [rip + .Lx78_0]
 mov qword ptr [r12 + 312], rax
 jmp xgvarg77_done
 xgvarg77_β:
 jmp snoch22_n37_α
.Lx78_0:
 .quad 10
xgvarg77_done:
bb52_α:
# BOX IR_CALL RSUM(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+304] -> [r12+336]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 344], rax
  .section .rodata
  .Lprocfn80: .string "RSUM"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn80]
 lea rsi, [r12 + 336]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je snoch22_n37_α
 jmp snoch22_n36_α
snoch22_n32_β:
 jmp snoch22_n37_α
snoch22_n33_α:
bb53_α:
# IR_ASSIGN
 lea rdi, [rip + .S13]
 mov rsi, qword ptr [r12 + 280]
 call rt_gvar_assign_int@PLT
 jmp snoch22_n26_α
 snoch22_n33_β:
 jmp snoch22_n26_α
snoch22_n34_α:
bb54_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S8]
 call rt_gvar_get_int@PLT
 mov rcx, 0
 add rax, rcx
 mov qword ptr [r12 + 352], rax
 jmp snoch22_n38_α
 snoch22_n34_β:
 jmp snoch22_n19_α
snoch22_n35_α:
# IR_LIT_scalar
bb55_α:
 jmp snoch22_n39_α
 snoch22_n35_β:
 jmp snoch22_n32_α
snoch22_n36_α:
bb56_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S16]
 mov rsi, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 call rt_gvar_assign_descr@PLT
 jmp snoch22_n37_α
 snoch22_n36_β:
 jmp snoch22_n37_α
snoch22_n37_α:
# IR_VAR
bb57_α:
 mov rdi, qword ptr [rip + .Lx88_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 360], rax
 mov qword ptr [r12 + 368], rdx
 jmp xgvarg86_done
 xgvarg86_β:
 jmp snoch22_n41_α
.Lx88_0:
 .quad .Lx88_0_s
.Lx88_0_s:
 .string "OUTER"
xgvarg86_done:
# IR_LIT_I
bb58_α:
 mov qword ptr [r12 + 376], 6
 mov rax, qword ptr [rip + .Lx90_0]
 mov qword ptr [r12 + 384], rax
 jmp xgvarg89_done
 xgvarg89_β:
 jmp snoch22_n41_α
.Lx90_0:
 .quad 50000
xgvarg89_done:
bb59_α:
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
  .Lbynamefn92: .string "LT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn92]
 lea rsi, [r12 + 408]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 392], rax
 mov qword ptr [r12 + 400], rdx
 cmp eax, 99
 je snoch22_n41_α
 jmp snoch22_n40_α
snoch22_n37_β:
 jmp snoch22_n41_α
snoch22_n38_α:
bb60_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S8]
 call rt_gvar_get_int@PLT
 mov rcx, 0
 add rax, rcx
 mov qword ptr [r12 + 440], rax
 jmp xgvidxv93_done
 xgvidxv93_β:
 jmp snoch22_n19_α
xgvidxv93_done:
bb61_α:
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
 je snoch22_n19_α
 jmp snoch22_n19_α
 snoch22_n38_β:
 jmp snoch22_n19_α
snoch22_n39_α:
bb62_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S15]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 480], rax
 jmp snoch22_n42_α
 snoch22_n39_β:
 jmp snoch22_n32_α
snoch22_n40_α:
# IR_VAR
bb63_α:
 mov rdi, qword ptr [rip + .Lx98_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 488], rax
 mov qword ptr [r12 + 496], rdx
 jmp snoch22_n43_α
 snoch22_n40_β:
 jmp snoch22_n41_α
.Lx98_0:
 .quad .Lx98_0_s
.Lx98_0_s:
 .string "OUTER"
snoch22_n41_α:
bb64_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn100: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn100]
 lea rsi, [r12 + 520]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 504], rax
 mov qword ptr [r12 + 512], rdx
 cmp eax, 99
 je snoch22_n45_α
 jmp snoch22_n44_α
 snoch22_n41_β:
 jmp snoch22_n45_α
snoch22_n42_α:
bb65_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 232]
 mov rsi, qword ptr [r12 + 240]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 480]
 call str_concat_d@PLT
 mov qword ptr [r12 + 520], rax
 mov qword ptr [r12 + 528], rdx
 jmp snoch22_n46_α
 snoch22_n42_β:
 jmp snoch22_n32_α
snoch22_n43_α:
# IR_LIT_scalar
bb66_α:
 jmp snoch22_n47_α
 snoch22_n43_β:
 jmp snoch22_n41_α
snoch22_n44_α:
bb67_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 504]
 mov rdx, qword ptr [r12 + 512]
 call rt_gvar_assign_descr@PLT
 jmp snoch22_n45_α
 snoch22_n44_β:
 jmp snoch22_n45_α
snoch22_n45_α:
bb68_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 536], 0
 lea rax, [rip + .S19]
 mov qword ptr [r12 + 544], rax
 mov dword ptr [r12 + 552], 1
 lea rax, [rip + .S14]
 mov qword ptr [r12 + 560], rax
 lea rdi, [rip + .S18]
 lea rsi, [r12 + 536]
 mov edx, 2
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch22_n48_α
 snoch22_n45_β:
 jmp snoch22_n48_α
snoch22_n46_α:
bb69_α:
# IR_ASSIGN
 lea rdi, [rip + .S15]
 mov rsi, qword ptr [r12 + 520]
 mov rdx, qword ptr [r12 + 528]
 call rt_gvar_assign_descr@PLT
 jmp snoch22_n49_α
 snoch22_n46_β:
 jmp snoch22_n32_α
snoch22_n47_α:
bb70_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S9]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 568], rax
 jmp snoch22_n50_α
 snoch22_n47_β:
 jmp snoch22_n41_α
snoch22_n48_α:
# IR_LIT_scalar
bb71_α:
 jmp snoch22_n51_α
 snoch22_n48_β:
 jmp flat_γ
snoch22_n49_α:
# IR_VAR
bb72_α:
 mov rdi, qword ptr [rip + .Lx110_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp snoch22_n52_α
 snoch22_n49_β:
 jmp snoch22_n28_α
.Lx110_0:
 .quad .Lx110_0_s
.Lx110_0_s:
 .string "TOTAL"
snoch22_n50_α:
bb73_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 392]
 mov rsi, qword ptr [r12 + 400]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 568]
 call str_concat_d@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp snoch22_n53_α
 snoch22_n50_β:
 jmp snoch22_n41_α
snoch22_n51_α:
# IR_VAR
bb74_α:
 mov rdi, qword ptr [rip + .Lx113_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp snoch22_n54_α
 snoch22_n51_β:
 jmp flat_γ
.Lx113_0:
 .quad .Lx113_0_s
.Lx113_0_s:
 .string "T2"
snoch22_n52_α:
bb75_α:
# IR_IDX (subscript_get, by-name)
 lea rdi, [rip + .S10]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 lea rdi, [rip + .S15]
 call NV_GET_fn@PLT
 mov rcx, rdx
 mov rdx, rax
 mov rdi, qword ptr [r12 + 624]
 mov rsi, qword ptr [r12 + 632]
 call subscript_get@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp snoch22_n55_α
 snoch22_n52_β:
 jmp snoch22_n28_α
snoch22_n53_α:
bb76_α:
# IR_ASSIGN
 lea rdi, [rip + .S9]
 mov rsi, qword ptr [r12 + 592]
 mov rdx, qword ptr [r12 + 600]
 call rt_gvar_assign_descr@PLT
 jmp snoch22_n13_α
 snoch22_n53_β:
 jmp snoch22_n41_α
snoch22_n54_α:
# IR_VAR
bb77_α:
 mov rdi, qword ptr [rip + .Lx118_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp snoch22_n56_α
 snoch22_n54_β:
 jmp flat_γ
.Lx118_0:
 .quad .Lx118_0_s
.Lx118_0_s:
 .string "T1"
snoch22_n55_α:
bb78_α:
# IR_IDX (subscript_get, by-name)
 lea rdi, [rip + .S10]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 lea rdi, [rip + .S15]
 call NV_GET_fn@PLT
 mov rcx, rdx
 mov rdx, rax
 mov rdi, qword ptr [r12 + 672]
 mov rsi, qword ptr [r12 + 680]
 call subscript_get@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xgvidx119_done
 xgvidx119_β:
 jmp snoch22_n28_α
xgvidx119_done:
bb79_α:
# IR_BINOP_GVAR_ARITH (dynamic operands: DESCR-in DESCR-out via rt_num_arith)
 lea rdi, [rip + .S14]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 mov rdi, qword ptr [r12 + 576]
 mov rsi, qword ptr [r12 + 584]
 mov rdx, qword ptr [r12 + 640]
 mov rcx, qword ptr [r12 + 648]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je snoch22_n28_α
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp snoch22_n57_α
 snoch22_n55_β:
 jmp snoch22_n28_α
snoch22_n56_α:
bb80_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S17]
 lea rsi, [rip + .S5]
 mov rdx, 1
 call rt_gvar_arith@PLT
 mov qword ptr [r12 + 720], rax
 jmp snoch22_n58_α
 snoch22_n56_β:
 jmp flat_γ
snoch22_n57_α:
bb81_α:
# IR_ASSIGN
 lea rdi, [rip + .S14]
 mov rsi, qword ptr [r12 + 704]
 mov rdx, qword ptr [r12 + 712]
 call rt_gvar_assign_descr@PLT
 jmp snoch22_n28_α
 snoch22_n57_β:
 jmp snoch22_n28_α
snoch22_n58_α:
# IR_LIT_S
bb82_α:
 mov qword ptr [r12 + 728], 1
 mov rax, qword ptr [rip + .Lx126_0]
 mov qword ptr [r12 + 736], rax
 jmp xgvcat125_0d
 xgvcat125_0b:
 jmp flat_γ
.Lx126_0:
 .quad .Lx126_0_s
.Lx126_0_s:
 .string "ms: "
xgvcat125_0d:
bb83_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 728]
 mov rsi, qword ptr [r12 + 736]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 720]
 call str_concat_d@PLT
 mov qword ptr [r12 + 744], rax
 mov qword ptr [r12 + 752], rdx
 jmp snoch22_n59_α
 snoch22_n58_β:
 jmp flat_γ
snoch22_n59_α:
bb84_α:
# IR_ASSIGN
 lea rdi, [rip + .S18]
 mov rsi, qword ptr [r12 + 744]
 mov rdx, qword ptr [r12 + 752]
 call rt_gvar_assign_descr@PLT
 jmp flat_γ
 snoch22_n59_β:
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
