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
# BOX IR_CALL EQ(...) inline integer relop [four-port, FAIL->ω]
   lea rdi, [rip + .S0]
 call rt_gvar_get_int@PLT
 mov qword ptr [r12 + 64], rax
 mov rcx, 0
 mov qword ptr [r12 + 48], 0
 mov qword ptr [r12 + 56], 0
 mov rax, qword ptr [r12 + 64]
 cmp rax, rcx
 jne snoch0_n2_α
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
 mov rdi, qword ptr [rip + .Lx9_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp snoch0_n4_α
 snoch0_n2_β:
 jmp snoch0_n5_α
.Lx9_0:
 .quad .Lx9_0_s
.Lx9_0_s:
 .string "N"
snoch0_n3_α:
# IR_LIT_I
bb6_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx11_0]
 mov qword ptr [r12 + 104], rax
 jmp xgvcat10_1d
 xgvcat10_1b:
 jmp snoch0_n2_α
.Lx11_0:
 .quad 0
xgvcat10_1d:
bb7_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 48]
 mov rsi, qword ptr [r12 + 56]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 96]
 call str_concat_d@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp snoch0_n6_α
 snoch0_n3_β:
 jmp snoch0_n2_α
snoch0_n4_α:
xgvarg13_done:
bb8_α:
# BOX IR_CALL RSUM(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = inline gvar-arith subexpr -> [r12+144]
   lea rdi, [rip + .S0]
 call rt_gvar_get_int@PLT
 mov qword ptr [r12 + 160], rax
 mov rcx, 1
 mov rax, qword ptr [r12 + 160]
 sub rax, rcx
 mov qword ptr [r12 + 144], 6
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lprocfn15: .string "RSUM"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn15]
 lea rsi, [r12 + 144]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
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
 mov rsi, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 call rt_gvar_assign_descr@PLT
 jmp snoch0_n5_α
 snoch0_n6_β:
 jmp snoch0_n2_α
snoch0_n7_α:
bb10_α:
# IR_BINOP_GVAR_ARITH_SLOT
 lea rdi, [rip + .S0]
 call rt_gvar_get_int@PLT
 mov rcx, qword ptr [r12 + 136]
 add rax, rcx
 mov qword ptr [r12 + 176], rax
 jmp snoch0_n8_α
 snoch0_n7_β:
 jmp snoch0_n5_α
snoch0_n8_α:
bb11_α:
# IR_ASSIGN
 lea rdi, [rip + .S1]
 mov rsi, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
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
  mov esi, 192
  call rt_proc_set_frame_bytes@PLT
  pop rbp
  ret
  .section .rodata
  .Lgvan0: .string "RSUM"
  .Lgvan1: .string "N"
  .Lgvan2: .string "T1"
  .Lgvan3: .string "OUTER"
  .Lgvan4: .string "T"
  .Lgvan5: .string "DATA"
  .Lgvan6: .string "IDX"
  .Lgvan7: .string "WORD"
  .Lgvan8: .string "TOTAL"
  .Lgvan9: .string "I"
  .Lgvan10: .string "CHECK"
  .Lgvan11: .string "T2"
  .align 8
__gva_names:
  .quad .Lgvan0
  .quad .Lgvan1
  .quad .Lgvan2
  .quad .Lgvan3
  .quad .Lgvan4
  .quad .Lgvan5
  .quad .Lgvan6
  .quad .Lgvan7
  .quad .Lgvan8
  .quad .Lgvan9
  .quad .Lgvan10
  .quad .Lgvan11
  .section .bss
  .align 16
__gva: .space 192, 0
  .section .text
  .intel_syntax noprefix
  .globl main
main:
  push rbp
  mov rbp, rsp
  call proc_startup
  lea rdi, [rip + __gva_names]
  lea rsi, [rip + __gva]
  mov edx, 12
  call gva_register@PLT
  mov rbx, rax
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
snoch21_n0_α:
# IR_LIT_scalar
bb12_α:
 jmp snoch21_n1_α
 snoch21_n0_β:
 jmp snoch21_n2_α
snoch21_n1_α:
bb13_α:
# IR_ASSIGN
 lea rdi, [rip + .S2]
 movabs rsi, 1
 call rt_gvar_assign_int@PLT
 jmp snoch21_n2_α
 snoch21_n1_β:
 jmp snoch21_n2_α
snoch21_n2_α:
# IR_LIT_scalar
bb14_α:
 jmp snoch21_n3_α
 snoch21_n2_β:
 jmp snoch21_n4_α
snoch21_n3_α:
bb15_α:
# IR_ASSIGN
 lea rdi, [rip + .S3]
 movabs rsi, 1000000000
 call rt_gvar_assign_int@PLT
 jmp snoch21_n4_α
 snoch21_n3_β:
 jmp snoch21_n4_α
snoch21_n4_α:
bb16_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S4]
 call rt_proc_define@PLT
 jmp snoch21_n5_α
 snoch21_n4_β:
 jmp snoch21_n5_α
snoch21_n5_α:
# IR_PATTERN_BREAK passthrough (chain entry; builder emitted via DTP_ASSIGN)
bb17_α:
 jmp snoch21_n6_α
 snoch21_n5_β:
 jmp snoch21_n7_α
snoch21_n6_α:
# IR_PATTERN_LIT passthrough (chain entry; matcher built inside CAT blob)
bb18_α:
 jmp snoch21_n8_α
 snoch21_n6_β:
 jmp snoch21_n7_α
snoch21_n7_α:
bb19_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn30: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn30]
 lea rsi, [r12 + 64]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je snoch21_n10_α
 jmp snoch21_n9_α
 snoch21_n7_β:
 jmp snoch21_n10_α
snoch21_n8_α:
# IR_PATTERN_CAT passthrough (chain entry; builder emitted via DTP_ASSIGN)
bb20_α:
 jmp snoch21_n11_α
 snoch21_n8_β:
 jmp snoch21_n7_α
snoch21_n9_α:
bb21_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 56]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rcx
 jmp snoch21_n10_α
 snoch21_n9_β:
 jmp snoch21_n10_α
snoch21_n10_α:
# IR_LIT_scalar
bb22_α:
 jmp snoch21_n12_α
 snoch21_n10_β:
 jmp snoch21_n13_α
snoch21_n11_α:
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
 jmp snoch21_n7_α
 snoch21_n11_β:
 jmp snoch21_n7_α
snoch21_n12_α:
bb24_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S9]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch21_n13_α
 snoch21_n12_β:
 jmp snoch21_n13_α
snoch21_n13_α:
# IR_LIT_I
bb25_α:
 mov qword ptr [r12 + 88], 6
 mov rax, qword ptr [rip + .Lx38_0]
 mov qword ptr [r12 + 96], rax
 jmp xgvarg37_done
 xgvarg37_β:
 jmp snoch21_n15_α
.Lx38_0:
 .quad 16
xgvarg37_done:
bb26_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+88] -> [r12+120]
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 120], rax
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 128], rax
  .section .rodata
  .Lbynamefn40: .string "TABLE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn40]
 lea rsi, [r12 + 120]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 104], rax
 mov qword ptr [r12 + 112], rdx
 cmp eax, 99
 je snoch21_n15_α
 jmp snoch21_n14_α
snoch21_n13_β:
 jmp snoch21_n15_α
snoch21_n14_α:
bb27_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 104]
 mov rcx, qword ptr [r12 + 112]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rcx
 jmp snoch21_n15_α
 snoch21_n14_β:
 jmp snoch21_n15_α
snoch21_n15_α:
# IR_LIT_scalar
bb28_α:
 jmp snoch21_n16_α
 snoch21_n15_β:
 jmp snoch21_n17_α
snoch21_n16_α:
bb29_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S11]
 lea rsi, [rip + .S12]
 call rt_gvar_assign_str@PLT
 jmp snoch21_n17_α
 snoch21_n16_β:
 jmp snoch21_n17_α
snoch21_n17_α:
# IR_LIT_scalar
bb30_α:
 jmp snoch21_n18_α
 snoch21_n17_β:
 jmp snoch21_n19_α
snoch21_n18_α:
bb31_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S13]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch21_n19_α
 snoch21_n18_β:
 jmp snoch21_n19_α
snoch21_n19_α:
# IR_LIT_scalar
bb32_α:
 jmp snoch21_n20_α
 snoch21_n19_β:
 jmp snoch21_n21_α
snoch21_n20_α:
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
 jmp xscan47_sγ
 xscan47_sβ:
 jmp snoch21_n21_α
xscan47_sγ:
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
 jmp smatch50_retry
 snoch21_n20_β:
 jmp xscan47_dfail
smatch50_retry:
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
 jz .Lx53_0
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
 jne smatch50_adv
 jmp xscan47_dok
.Lx53_0:
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbx
 pop rbx
 test eax, eax
 js smatch50_adv
 mov r14d, eax
 jmp xscan47_dok
 smatch50_elemb:
 jmp smatch50_adv
smatch50_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 152], 1
 mov eax, dword ptr [r12 + 152]
 cmp eax, r15d
 jg xscan47_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan47_dfail
 jmp smatch50_retry
xscan47_dok:
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
jmp snoch21_n22_α
xscan47_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch21_n21_α
snoch21_n21_α:
# IR_LIT_scalar
bb38_α:
 jmp snoch21_n23_α
 snoch21_n21_β:
 jmp snoch21_n24_α
snoch21_n22_α:
# IR_VAR gva
bb39_α:
 mov rax, qword ptr [rbx + 96]
 mov rdx, qword ptr [rbx + 104]
 mov qword ptr [r12 + 168], rax
 mov qword ptr [r12 + 176], rdx
 jmp snoch21_n25_α
 snoch21_n22_β:
 jmp snoch21_n26_α
snoch21_n23_α:
bb40_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S14]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch21_n24_α
 snoch21_n23_β:
 jmp snoch21_n24_α
snoch21_n24_α:
# IR_LIT_scalar
bb41_α:
 jmp snoch21_n27_α
 snoch21_n24_β:
 jmp snoch21_n28_α
snoch21_n25_α:
# IR_LIT_scalar
bb42_α:
 jmp snoch21_n29_α
 snoch21_n25_β:
 jmp snoch21_n26_α
snoch21_n26_α:
# IR_VAR gva
bb43_α:
 mov rax, qword ptr [rbx + 112]
 mov rdx, qword ptr [rbx + 120]
 mov qword ptr [r12 + 184], rax
 mov qword ptr [r12 + 192], rdx
 jmp snoch21_n30_α
 snoch21_n26_β:
 jmp snoch21_n19_α
snoch21_n27_α:
bb44_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S15]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch21_n28_α
 snoch21_n27_β:
 jmp snoch21_n28_α
snoch21_n28_α:
# IR_VAR gva
bb45_α:
 mov rax, qword ptr [rbx + 144]
 mov rdx, qword ptr [rbx + 152]
 mov qword ptr [r12 + 200], rax
 mov qword ptr [r12 + 208], rdx
 jmp xgvarg64_done
 xgvarg64_β:
 jmp snoch21_n32_α
xgvarg64_done:
# IR_VAR gva
bb46_α:
 mov rax, qword ptr [rbx + 96]
 mov rdx, qword ptr [rbx + 104]
 mov qword ptr [r12 + 216], rax
 mov qword ptr [r12 + 224], rdx
 jmp xgvarg67_done
 xgvarg67_β:
 jmp snoch21_n32_α
xgvarg67_done:
bb47_α:
# BOX IR_CALL LT(...) inline integer relop [four-port, FAIL->ω]
   lea rdi, [rip + .S15]
 call rt_gvar_get_int@PLT
 mov qword ptr [r12 + 248], rax
   lea rdi, [rip + .S13]
 call rt_gvar_get_int@PLT
 mov rcx, rax
 mov qword ptr [r12 + 232], 0
 mov qword ptr [r12 + 240], 0
 mov rax, qword ptr [r12 + 248]
 cmp rax, rcx
 jge snoch21_n32_α
 jmp snoch21_n31_α
 snoch21_n28_β:
 jmp snoch21_n32_α
snoch21_n29_α:
bb48_α:
# IR_BINOP_GVAR_ARITH
 mov rax, qword ptr [rbx + 104]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 264], rax
 jmp snoch21_n33_α
 snoch21_n29_β:
 jmp snoch21_n26_α
snoch21_n30_α:
# IR_LIT_scalar
bb49_α:
 jmp snoch21_n34_α
 snoch21_n30_β:
 jmp snoch21_n19_α
snoch21_n31_α:
# IR_VAR gva
bb50_α:
 mov rax, qword ptr [rbx + 144]
 mov rdx, qword ptr [rbx + 152]
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp snoch21_n35_α
 snoch21_n31_β:
 jmp snoch21_n32_α
snoch21_n32_α:
# IR_LIT_I
bb51_α:
 mov qword ptr [r12 + 288], 6
 mov rax, qword ptr [rip + .Lx76_0]
 mov qword ptr [r12 + 296], rax
 jmp xgvarg75_done
 xgvarg75_β:
 jmp snoch21_n37_α
.Lx76_0:
 .quad 10
xgvarg75_done:
bb52_α:
# BOX IR_CALL RSUM(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+288] -> [r12+320]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 328], rax
  .section .rodata
  .Lprocfn78: .string "RSUM"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn78]
 lea rsi, [r12 + 320]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je snoch21_n37_α
 jmp snoch21_n36_α
snoch21_n32_β:
 jmp snoch21_n37_α
snoch21_n33_α:
bb53_α:
# IR_ASSIGN
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [rbx + 96], 6
 mov qword ptr [rbx + 104], rax
 jmp snoch21_n26_α
 snoch21_n33_β:
 jmp snoch21_n26_α
snoch21_n34_α:
bb54_α:
# IR_BINOP_GVAR_ARITH
 mov rax, qword ptr [rbx + 120]
 mov rcx, 0
 add rax, rcx
 mov qword ptr [r12 + 336], rax
 jmp snoch21_n38_α
 snoch21_n34_β:
 jmp snoch21_n19_α
snoch21_n35_α:
# IR_LIT_scalar
bb55_α:
 jmp snoch21_n39_α
 snoch21_n35_β:
 jmp snoch21_n32_α
snoch21_n36_α:
bb56_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 304]
 mov rcx, qword ptr [r12 + 312]
 mov qword ptr [rbx + 160], rax
 mov qword ptr [rbx + 168], rcx
 jmp snoch21_n37_α
 snoch21_n36_β:
 jmp snoch21_n37_α
snoch21_n37_α:
# IR_VAR gva
bb57_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 344], rax
 mov qword ptr [r12 + 352], rdx
 jmp xgvarg84_done
 xgvarg84_β:
 jmp snoch21_n41_α
xgvarg84_done:
# IR_LIT_I
bb58_α:
 mov qword ptr [r12 + 360], 6
 mov rax, qword ptr [rip + .Lx88_0]
 mov qword ptr [r12 + 368], rax
 jmp xgvarg87_done
 xgvarg87_β:
 jmp snoch21_n41_α
.Lx88_0:
 .quad 50000
xgvarg87_done:
bb59_α:
# BOX IR_CALL LT(...) inline integer relop [four-port, FAIL->ω]
   lea rdi, [rip + .S9]
 call rt_gvar_get_int@PLT
 mov qword ptr [r12 + 392], rax
 mov rcx, 50000
 mov qword ptr [r12 + 376], 0
 mov qword ptr [r12 + 384], 0
 mov rax, qword ptr [r12 + 392]
 cmp rax, rcx
 jge snoch21_n41_α
 jmp snoch21_n40_α
 snoch21_n37_β:
 jmp snoch21_n41_α
snoch21_n38_α:
bb60_α:
# IR_BINOP_GVAR_ARITH
 mov rax, qword ptr [rbx + 120]
 mov rcx, 0
 add rax, rcx
 mov qword ptr [r12 + 408], rax
 jmp xgvidxv90_done
 xgvidxv90_β:
 jmp snoch21_n19_α
xgvidxv90_done:
bb61_α:
# IR_IDX_SET (subscript_set, by-name)
 lea rdi, [rip + .S10]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 lea rdi, [rip + .S13]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 mov rax, qword ptr [r12 + 336]
 movabs rdx, 6
 mov qword ptr [r12 + 336], rdx
 mov qword ptr [r12 + 344], rax
 mov rdi, qword ptr [r12 + 416]
 mov rsi, qword ptr [r12 + 424]
 mov rdx, qword ptr [r12 + 432]
 mov rcx, qword ptr [r12 + 440]
 mov r8, qword ptr [r12 + 336]
 mov r9, qword ptr [r12 + 344]
 call subscript_set@PLT
 cmp eax, 0
 je snoch21_n19_α
 jmp snoch21_n19_α
 snoch21_n38_β:
 jmp snoch21_n19_α
snoch21_n39_α:
bb62_α:
# IR_BINOP_GVAR_ARITH
 mov rax, qword ptr [rbx + 152]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 448], rax
 jmp snoch21_n42_α
 snoch21_n39_β:
 jmp snoch21_n32_α
snoch21_n40_α:
# IR_VAR gva
bb63_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 456], rax
 mov qword ptr [r12 + 464], rdx
 jmp snoch21_n43_α
 snoch21_n40_β:
 jmp snoch21_n41_α
snoch21_n41_α:
bb64_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn97: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn97]
 lea rsi, [r12 + 488]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 472], rax
 mov qword ptr [r12 + 480], rdx
 cmp eax, 99
 je snoch21_n45_α
 jmp snoch21_n44_α
 snoch21_n41_β:
 jmp snoch21_n45_α
snoch21_n42_α:
bb65_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 232]
 mov rsi, qword ptr [r12 + 240]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 448]
 call str_concat_d@PLT
 mov qword ptr [r12 + 488], rax
 mov qword ptr [r12 + 496], rdx
 jmp snoch21_n46_α
 snoch21_n42_β:
 jmp snoch21_n32_α
snoch21_n43_α:
# IR_LIT_scalar
bb66_α:
 jmp snoch21_n47_α
 snoch21_n43_β:
 jmp snoch21_n41_α
snoch21_n44_α:
bb67_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 472]
 mov rcx, qword ptr [r12 + 480]
 mov qword ptr [rbx + 176], rax
 mov qword ptr [rbx + 184], rcx
 jmp snoch21_n45_α
 snoch21_n44_β:
 jmp snoch21_n45_α
snoch21_n45_α:
bb68_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 504], 0
 lea rax, [rip + .S19]
 mov qword ptr [r12 + 512], rax
 mov dword ptr [r12 + 520], 1
 lea rax, [rip + .S14]
 mov qword ptr [r12 + 528], rax
 lea rdi, [rip + .S18]
 lea rsi, [r12 + 504]
 mov edx, 2
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch21_n48_α
 snoch21_n45_β:
 jmp snoch21_n48_α
snoch21_n46_α:
bb69_α:
# IR_ASSIGN
 mov rax, qword ptr [r12 + 488]
 mov rcx, qword ptr [r12 + 496]
 mov qword ptr [rbx + 144], rax
 mov qword ptr [rbx + 152], rcx
 jmp snoch21_n49_α
 snoch21_n46_β:
 jmp snoch21_n32_α
snoch21_n47_α:
bb70_α:
# IR_BINOP_GVAR_ARITH
 mov rax, qword ptr [rbx + 56]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 536], rax
 jmp snoch21_n50_α
 snoch21_n47_β:
 jmp snoch21_n41_α
snoch21_n48_α:
# IR_LIT_scalar
bb71_α:
 jmp snoch21_n51_α
 snoch21_n48_β:
 jmp flat_γ
snoch21_n49_α:
# IR_VAR gva
bb72_α:
 mov rax, qword ptr [rbx + 128]
 mov rdx, qword ptr [rbx + 136]
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp snoch21_n52_α
 snoch21_n49_β:
 jmp snoch21_n28_α
snoch21_n50_α:
bb73_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 376]
 mov rsi, qword ptr [r12 + 384]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 536]
 call str_concat_d@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp snoch21_n53_α
 snoch21_n50_β:
 jmp snoch21_n41_α
snoch21_n51_α:
# IR_VAR gva
bb74_α:
 mov rax, qword ptr [rbx + 176]
 mov rdx, qword ptr [rbx + 184]
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp snoch21_n54_α
 snoch21_n51_β:
 jmp flat_γ
snoch21_n52_α:
bb75_α:
# IR_IDX (subscript_get, by-name)
 lea rdi, [rip + .S10]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 lea rdi, [rip + .S15]
 call NV_GET_fn@PLT
 mov rcx, rdx
 mov rdx, rax
 mov rdi, qword ptr [r12 + 592]
 mov rsi, qword ptr [r12 + 600]
 call subscript_get@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp snoch21_n55_α
 snoch21_n52_β:
 jmp snoch21_n28_α
snoch21_n53_α:
bb76_α:
# IR_ASSIGN
 mov rax, qword ptr [r12 + 560]
 mov rcx, qword ptr [r12 + 568]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rcx
 jmp snoch21_n13_α
 snoch21_n53_β:
 jmp snoch21_n41_α
snoch21_n54_α:
# IR_VAR gva
bb77_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp snoch21_n56_α
 snoch21_n54_β:
 jmp flat_γ
snoch21_n55_α:
bb78_α:
# IR_IDX (subscript_get, by-name)
 lea rdi, [rip + .S10]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 lea rdi, [rip + .S15]
 call NV_GET_fn@PLT
 mov rcx, rdx
 mov rdx, rax
 mov rdi, qword ptr [r12 + 640]
 mov rsi, qword ptr [r12 + 648]
 call subscript_get@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xgvidx116_done
 xgvidx116_β:
 jmp snoch21_n28_α
xgvidx116_done:
bb79_α:
# IR_BINOP_GVAR_ARITH (dynamic operands: DESCR-in DESCR-out via rt_num_arith)
 lea rdi, [rip + .S14]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 mov rdi, qword ptr [r12 + 544]
 mov rsi, qword ptr [r12 + 552]
 mov rdx, qword ptr [r12 + 608]
 mov rcx, qword ptr [r12 + 616]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je snoch21_n28_α
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp snoch21_n57_α
 snoch21_n55_β:
 jmp snoch21_n28_α
snoch21_n56_α:
bb80_α:
# IR_BINOP_GVAR_ARITH
 mov rax, qword ptr [rbx + 184]
 mov rcx, qword ptr [rbx + 40]
 sub rax, rcx
 mov qword ptr [r12 + 688], rax
 jmp snoch21_n58_α
 snoch21_n56_β:
 jmp flat_γ
snoch21_n57_α:
bb81_α:
# IR_ASSIGN
 mov rax, qword ptr [r12 + 672]
 mov rcx, qword ptr [r12 + 680]
 mov qword ptr [rbx + 128], rax
 mov qword ptr [rbx + 136], rcx
 jmp snoch21_n28_α
 snoch21_n57_β:
 jmp snoch21_n28_α
snoch21_n58_α:
# IR_LIT_S
bb82_α:
 mov qword ptr [r12 + 696], 1
 mov rax, qword ptr [rip + .Lx123_0]
 mov qword ptr [r12 + 704], rax
 jmp xgvcat122_0d
 xgvcat122_0b:
 jmp flat_γ
.Lx123_0:
 .quad .Lx123_0_s
.Lx123_0_s:
 .string "ms: "
xgvcat122_0d:
bb83_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 696]
 mov rsi, qword ptr [r12 + 704]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 688]
 call str_concat_d@PLT
 mov qword ptr [r12 + 712], rax
 mov qword ptr [r12 + 720], rdx
 jmp snoch21_n59_α
 snoch21_n58_β:
 jmp flat_γ
snoch21_n59_α:
bb84_α:
# IR_ASSIGN
 lea rdi, [rip + .S18]
 mov rsi, qword ptr [r12 + 712]
 mov rdx, qword ptr [r12 + 720]
 call rt_gvar_assign_descr@PLT
 jmp flat_γ
 snoch21_n59_β:
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
