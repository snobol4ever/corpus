  .intel_syntax noprefix
  .text
  .section .rodata
  .Lgvan0: .string "T1"
  .Lgvan1: .string "ITER"
  .Lgvan2: .string "S"
  .Lgvan3: .string "RESULT"
  .Lgvan4: .string "T2"
  .align 8
__gva_names:
  .quad .Lgvan0
  .quad .Lgvan1
  .quad .Lgvan2
  .quad .Lgvan3
  .quad .Lgvan4
  .section .bss
  .align 16
__gva: .space 80, 0
  .section .text
  .intel_syntax noprefix
  .globl main
main:
  push rbp
  mov rbp, rsp
  call core_lib_init@PLT
  call rt_proc_reset@PLT
  lea rdi, [rip + __gva_names]
  lea rsi, [rip + __gva]
  mov edx, 5
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
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 56]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rcx
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
# IR_VAR gva
bb13_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 88], rax
 mov qword ptr [r12 + 96], rdx
 jmp xgvarg15_done
 xgvarg15_β:
 jmp snoch0_n14_α
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
# BOX IR_CALL LT(...) inline integer relop [four-port, FAIL->ω]
   lea rdi, [rip + .S6]
 call rt_gvar_get_int@PLT
 mov qword ptr [r12 + 136], rax
 mov rcx, 500000
 mov qword ptr [r12 + 120], 0
 mov qword ptr [r12 + 128], 0
 mov rax, qword ptr [r12 + 136]
 cmp rax, rcx
 jge snoch0_n14_α
 jmp snoch0_n13_α
 snoch0_n12_β:
 jmp snoch0_n14_α
snoch0_n13_α:
# IR_VAR gva
bb16_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 152], rax
 mov qword ptr [r12 + 160], rdx
 jmp snoch0_n15_α
 snoch0_n13_β:
 jmp snoch0_n14_α
snoch0_n14_α:
bb17_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn24: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn24]
 lea rsi, [r12 + 184]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 168], rax
 mov qword ptr [r12 + 176], rdx
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
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 168]
 mov rcx, qword ptr [r12 + 176]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rcx
 jmp snoch0_n17_α
 snoch0_n16_β:
 jmp snoch0_n17_α
snoch0_n17_α:
bb20_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 184], 0
 lea rax, [rip + .S9]
 mov qword ptr [r12 + 192], rax
 mov dword ptr [r12 + 200], 1
 lea rax, [rip + .S10]
 mov qword ptr [r12 + 208], rax
 lea rdi, [rip + .S8]
 lea rsi, [r12 + 184]
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
 mov rdx, qword ptr [rbx + 16]
 cmp edx, 6
 jne .Lx29_0
 mov rax, qword ptr [rbx + 24]
 jmp .Lx29_1
.Lx29_0:
 lea rdi, [rip + .S6]
 call rt_gvar_get_int@PLT
.Lx29_1:
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 216], rax
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
 mov rcx, qword ptr [r12 + 216]
 call str_concat_d@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp snoch0_n22_α
 snoch0_n20_β:
 jmp snoch0_n14_α
snoch0_n21_α:
# IR_VAR gva
bb24_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp snoch0_n23_α
 snoch0_n21_β:
 jmp flat_γ
snoch0_n22_α:
bb25_α:
# IR_ASSIGN
 mov rax, qword ptr [r12 + 224]
 mov rcx, qword ptr [r12 + 232]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rcx
 jmp snoch0_n24_α
 snoch0_n22_β:
 jmp snoch0_n14_α
snoch0_n23_α:
# IR_VAR gva
bb26_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp snoch0_n25_α
 snoch0_n23_β:
 jmp flat_γ
snoch0_n24_α:
# IR_LIT_scalar
bb27_α:
 jmp snoch0_n26_α
 snoch0_n24_β:
 jmp snoch0_n27_α
snoch0_n25_α:
bb28_α:
# IR_BINOP_GVAR_ARITH
 mov rdx, qword ptr [rbx + 0]
 cmp edx, 6
 jne .Lx40_0
 mov rcx, qword ptr [rbx + 8]
 jmp .Lx40_1
.Lx40_0:
 lea rdi, [rip + .S2]
 call rt_gvar_get_int@PLT
 mov rcx, rax
.Lx40_1:
 mov qword ptr [r12 + 272], rcx
 mov rdx, qword ptr [rbx + 64]
 cmp edx, 6
 jne .Lx40_2
 mov rax, qword ptr [rbx + 72]
 jmp .Lx40_3
.Lx40_2:
 lea rdi, [rip + .S7]
 call rt_gvar_get_int@PLT
.Lx40_3:
 mov rcx, qword ptr [r12 + 272]
 sub rax, rcx
 mov qword ptr [r12 + 272], rax
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
 mov qword ptr [r12 + 280], 1
 mov rax, qword ptr [rip + .Lx44_0]
 mov qword ptr [r12 + 288], rax
 jmp xgvcat43_0d
 xgvcat43_0b:
 jmp flat_γ
.Lx44_0:
 .quad .Lx44_0_s
.Lx44_0_s:
 .string "ms: "
xgvcat43_0d:
bb32_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 280]
 mov rsi, qword ptr [r12 + 288]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 272]
 call str_concat_d@PLT
 mov qword ptr [r12 + 296], rax
 mov qword ptr [r12 + 304], rdx
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
 mov rsi, qword ptr [r12 + 296]
 mov rdx, qword ptr [r12 + 304]
 call rt_gvar_assign_descr@PLT
 jmp flat_γ
 snoch0_n31_β:
 jmp flat_γ
snoch0_n32_α:
# IR_SUBJECT
bb36_α:
 lea rdi, [rip + .S11]
 lea rsi, [r12 + 312]
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_subject_load_nv@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp xscan50_sγ
 xscan50_sβ:
 jmp snoch0_n12_α
xscan50_sγ:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_begin@PLT
 mov rsp, rbx
 pop rbx
# IR_MATCH_HEAD
bb37_α:
 mov r13, qword ptr [r12 + 312]
 mov r15d, dword ptr [r12 + 320]
 mov dword ptr [r12 + 328], 0
 lea r10, [r12 + 336]
 jmp smatch53_retry
 snoch0_n32_β:
 jmp xscan50_dfail
smatch53_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 328]
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
 jz .Lx56_0
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
 jne smatch53_adv
 jmp xscan50_dok
.Lx56_0:
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbx
 pop rbx
 test eax, eax
 js smatch53_adv
 mov r14d, eax
 jmp xscan50_dok
 smatch53_elemb:
 jmp smatch53_adv
smatch53_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 328], 1
 mov eax, dword ptr [r12 + 328]
 cmp eax, r15d
 jg xscan50_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan50_dfail
 jmp smatch53_retry
xscan50_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
# SPLICE_EMPTY
 lea rdi, [rip + .S11]
 mov esi, dword ptr [r12 + 328]
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_scan_splice_empty@PLT
 mov rsp, rbx
 pop rbx
jmp snoch0_n33_α
xscan50_dfail:
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
 mov dword ptr [r12 + 344], 1
 lea rax, [rip + .S10]
 mov qword ptr [r12 + 352], rax
 mov dword ptr [r12 + 360], 1
 lea rax, [rip + .S5]
 mov qword ptr [r12 + 368], rax
 lea rdi, [rip + .S10]
 lea rsi, [r12 + 344]
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
