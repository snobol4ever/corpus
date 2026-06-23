  .intel_syntax noprefix
  .text
  .globl main
main:
  push rbp
  mov rbp, rsp
  call core_lib_init@PLT
  call rt_proc_reset@PLT
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
snoch0_n0_α:
# IR_LIT_scalar
bb1_α:
 jmp snoch0_n1_α
 snoch0_n0_β:
 jmp snoch0_n2_α
snoch0_n1_α:
bb2_α:
# IR_ASSIGN
 lea rdi, [rip + .S0]
 movabs rsi, 1
 call rt_gvar_assign_int@PLT
 jmp snoch0_n2_α
 snoch0_n1_β:
 jmp snoch0_n2_α
snoch0_n2_α:
# IR_LIT_scalar
bb3_α:
 jmp snoch0_n3_α
 snoch0_n2_β:
 jmp snoch0_n4_α
snoch0_n3_α:
bb4_α:
# IR_ASSIGN
 lea rdi, [rip + .S1]
 movabs rsi, 1000000000
 call rt_gvar_assign_int@PLT
 jmp snoch0_n4_α
 snoch0_n3_β:
 jmp snoch0_n4_α
snoch0_n4_α:
# IR_PATTERN_BREAK passthrough (chain entry; builder emitted via DTP_ASSIGN)
bb5_α:
 jmp snoch0_n5_α
 snoch0_n4_β:
 jmp snoch0_n6_α
snoch0_n5_α:
# IR_PATTERN_LIT passthrough (chain entry; matcher built inside CAT blob)
bb6_α:
 jmp snoch0_n7_α
 snoch0_n5_β:
 jmp snoch0_n6_α
snoch0_n6_α:
bb7_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn8: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn8]
 lea rsi, [r12 + 64]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je snoch0_n9_α
 jmp snoch0_n8_α
 snoch0_n6_β:
 jmp snoch0_n9_α
snoch0_n7_α:
# IR_PATTERN_CAT passthrough (chain entry; builder emitted via DTP_ASSIGN)
bb8_α:
 jmp snoch0_n10_α
 snoch0_n7_β:
 jmp snoch0_n6_α
snoch0_n8_α:
bb9_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S2]
 mov rsi, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 call rt_gvar_assign_descr@PLT
 jmp snoch0_n9_α
 snoch0_n8_β:
 jmp snoch0_n9_α
snoch0_n9_α:
# IR_LIT_scalar
bb10_α:
 jmp snoch0_n11_α
 snoch0_n9_β:
 jmp snoch0_n12_α
snoch0_n10_α:
# IR_PATTERN_CAT builder (BREAK . VAR LIT)
bb11_α:
 lea rdi, [rip + .S3]
 lea rsi, [rip + .S4]
 lea rdx, [rip + .S5]
 lea rcx, [rip + .S4]
 push rbx
 mov rbx, rsp
 and rsp, -16
 call bb_build_break_cap_lit_blob@PLT
 mov rsp, rbx
 pop rbx
 jmp snoch0_n6_α
 snoch0_n10_β:
 jmp snoch0_n6_α
snoch0_n11_α:
bb12_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S6]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch0_n12_α
 snoch0_n11_β:
 jmp snoch0_n12_α
snoch0_n12_α:
# IR_VAR
bb13_α:
 mov rdi, qword ptr [rip + .Lx17_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 88], rax
 mov qword ptr [r12 + 96], rdx
 jmp xgvarg15_done
 xgvarg15_β:
 jmp snoch0_n14_α
.Lx17_0:
 .quad .Lx17_0_s
.Lx17_0_s:
 .string "ITER"
xgvarg15_done:
# IR_LIT_I
bb14_α:
 mov qword ptr [r12 + 104], 6
 mov rax, qword ptr [rip + .Lx19_0]
 mov qword ptr [r12 + 112], rax
 jmp xgvarg18_done
 xgvarg18_β:
 jmp snoch0_n14_α
.Lx19_0:
 .quad 500000
xgvarg18_done:
bb15_α:
# BOX IR_CALL LT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+88] -> [r12+136]
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 136], rax
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 144], rax
# marshal arg1 = producer-box slot [r12+104] -> [r12+152]
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 152], rax
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 160], rax
  .section .rodata
  .Lbynamefn21: .string "LT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn21]
 lea rsi, [r12 + 136]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 120], rax
 mov qword ptr [r12 + 128], rdx
 cmp eax, 99
 je snoch0_n14_α
 jmp snoch0_n13_α
snoch0_n12_β:
 jmp snoch0_n14_α
snoch0_n13_α:
# IR_VAR
bb16_α:
 mov rdi, qword ptr [rip + .Lx23_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 168], rax
 mov qword ptr [r12 + 176], rdx
 jmp snoch0_n15_α
 snoch0_n13_β:
 jmp snoch0_n14_α
.Lx23_0:
 .quad .Lx23_0_s
.Lx23_0_s:
 .string "ITER"
snoch0_n14_α:
bb17_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn25: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn25]
 lea rsi, [r12 + 200]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 184], rax
 mov qword ptr [r12 + 192], rdx
 cmp eax, 99
 je snoch0_n17_α
 jmp snoch0_n16_α
 snoch0_n14_β:
 jmp snoch0_n17_α
snoch0_n15_α:
# IR_LIT_scalar
bb18_α:
 jmp snoch0_n18_α
 snoch0_n15_β:
 jmp snoch0_n14_α
snoch0_n16_α:
bb19_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S7]
 mov rsi, qword ptr [r12 + 184]
 mov rdx, qword ptr [r12 + 192]
 call rt_gvar_assign_descr@PLT
 jmp snoch0_n17_α
 snoch0_n16_β:
 jmp snoch0_n17_α
snoch0_n17_α:
bb20_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 200], 0
 lea rax, [rip + .S9]
 mov qword ptr [r12 + 208], rax
 mov dword ptr [r12 + 216], 1
 lea rax, [rip + .S10]
 mov qword ptr [r12 + 224], rax
 lea rdi, [rip + .S8]
 lea rsi, [r12 + 200]
 mov edx, 2
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch0_n19_α
 snoch0_n17_β:
 jmp snoch0_n19_α
snoch0_n18_α:
bb21_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S6]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 232], rax
 jmp snoch0_n20_α
 snoch0_n18_β:
 jmp snoch0_n14_α
snoch0_n19_α:
# IR_LIT_scalar
bb22_α:
 jmp snoch0_n21_α
 snoch0_n19_β:
 jmp flat_γ
snoch0_n20_α:
bb23_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 120]
 mov rsi, qword ptr [r12 + 128]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 232]
 call str_concat_d@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp snoch0_n22_α
 snoch0_n20_β:
 jmp snoch0_n14_α
snoch0_n21_α:
# IR_VAR
bb24_α:
 mov rdi, qword ptr [rip + .Lx33_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp snoch0_n23_α
 snoch0_n21_β:
 jmp flat_γ
.Lx33_0:
 .quad .Lx33_0_s
.Lx33_0_s:
 .string "T2"
snoch0_n22_α:
bb25_α:
# IR_ASSIGN
 lea rdi, [rip + .S6]
 mov rsi, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 call rt_gvar_assign_descr@PLT
 jmp snoch0_n24_α
 snoch0_n22_β:
 jmp snoch0_n14_α
snoch0_n23_α:
# IR_VAR
bb26_α:
 mov rdi, qword ptr [rip + .Lx37_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp snoch0_n25_α
 snoch0_n23_β:
 jmp flat_γ
.Lx37_0:
 .quad .Lx37_0_s
.Lx37_0_s:
 .string "T1"
snoch0_n24_α:
# IR_LIT_scalar
bb27_α:
 jmp snoch0_n26_α
 snoch0_n24_β:
 jmp snoch0_n27_α
snoch0_n25_α:
bb28_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S7]
 lea rsi, [rip + .S2]
 mov rdx, 1
 call rt_gvar_arith@PLT
 mov qword ptr [r12 + 288], rax
 jmp snoch0_n28_α
 snoch0_n25_β:
 jmp flat_γ
snoch0_n26_α:
bb29_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S11]
 lea rsi, [rip + .S12]
 call rt_gvar_assign_str@PLT
 jmp snoch0_n27_α
 snoch0_n26_β:
 jmp snoch0_n27_α
snoch0_n27_α:
# IR_LIT_scalar
bb30_α:
 jmp snoch0_n29_α
 snoch0_n27_β:
 jmp snoch0_n30_α
snoch0_n28_α:
# IR_LIT_S
bb31_α:
 mov qword ptr [r12 + 296], 1
 mov rax, qword ptr [rip + .Lx43_0]
 mov qword ptr [r12 + 304], rax
 jmp xgvcat42_0d
 xgvcat42_0b:
 jmp flat_γ
.Lx43_0:
 .quad .Lx43_0_s
.Lx43_0_s:
 .string "ms: "
xgvcat42_0d:
bb32_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 296]
 mov rsi, qword ptr [r12 + 304]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 288]
 call str_concat_d@PLT
 mov qword ptr [r12 + 312], rax
 mov qword ptr [r12 + 320], rdx
 jmp snoch0_n31_α
 snoch0_n28_β:
 jmp flat_γ
snoch0_n29_α:
bb33_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S10]
 lea rsi, [rip + .S13]
 call rt_gvar_assign_str@PLT
 jmp snoch0_n30_α
 snoch0_n29_β:
 jmp snoch0_n30_α
snoch0_n30_α:
# IR_LIT_scalar
bb34_α:
 jmp snoch0_n32_α
 snoch0_n30_β:
 jmp snoch0_n12_α
snoch0_n31_α:
bb35_α:
# IR_ASSIGN
 lea rdi, [rip + .S8]
 mov rsi, qword ptr [r12 + 312]
 mov rdx, qword ptr [r12 + 320]
 call rt_gvar_assign_descr@PLT
 jmp flat_γ
 snoch0_n31_β:
 jmp flat_γ
snoch0_n32_α:
# IR_SUBJECT
bb36_α:
 lea rdi, [rip + .S11]
 lea rsi, [r12 + 328]
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_subject_load_nv@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp xscan49_sγ
 xscan49_sβ:
 jmp snoch0_n12_α
xscan49_sγ:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_begin@PLT
 mov rsp, rbx
 pop rbx
# IR_MATCH_HEAD
bb37_α:
 mov r13, qword ptr [r12 + 328]
 mov r15d, dword ptr [r12 + 336]
 mov dword ptr [r12 + 344], 0
 lea r10, [r12 + 352]
 jmp smatch52_retry
 snoch0_n32_β:
 jmp xscan49_dfail
smatch52_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 344]
# IR_MATCH_DEFER
bb39_α:
 lea rdi, [rip + .S3]
 mov esi, 0
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_get_pat_fn@PLT
 mov rsp, rbx
 pop rbx
 test rax, rax
 jz .Lx55_0
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
 jne smatch52_adv
 jmp xscan49_dok
.Lx55_0:
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbx
 pop rbx
 test eax, eax
 js smatch52_adv
 mov r14d, eax
 jmp xscan49_dok
 smatch52_elemb:
 jmp smatch52_adv
smatch52_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 344], 1
 mov eax, dword ptr [r12 + 344]
 cmp eax, r15d
 jg xscan49_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan49_dfail
 jmp smatch52_retry
xscan49_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
# SPLICE_EMPTY
 lea rdi, [rip + .S11]
 mov esi, dword ptr [r12 + 344]
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_scan_splice_empty@PLT
 mov rsp, rbx
 pop rbx
jmp snoch0_n33_α
xscan49_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch0_n12_α
snoch0_n33_α:
bb41_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 360], 1
 lea rax, [rip + .S10]
 mov qword ptr [r12 + 368], rax
 mov dword ptr [r12 + 376], 1
 lea rax, [rip + .S5]
 mov qword ptr [r12 + 384], rax
 lea rdi, [rip + .S10]
 lea rsi, [r12 + 360]
 mov edx, 2
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch0_n30_α
 snoch0_n33_β:
 jmp snoch0_n30_α
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
.S0: .string "TRIM"
.S1: .string "STLIMIT"
.S2: .string "T1"
.S3: .string "PAT"
.S4: .string ","
.S5: .string "WORD"
.S6: .string "ITER"
.S7: .string "T2"
.S8: .string "OUTPUT"
.S9: .string "result: "
.S10: .string "RESULT"
.S11: .string "S"
.S12: .string "alpha,beta,gamma,delta,epsilon,zeta,eta,theta,iota,kappa,"
.S13: .string ""
.text
