  .intel_syntax noprefix
  .text
RSUM_c0_α:
#=======================================================================================================================
    .global RSUM_c0_α
    .global RSUM_c0_β
    .global RSUM_c0_γ
    .global RSUM_c0_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
RSUM_c0_α_body:
# IR_MATCH_CAPTURE_SAVE
bb1_α:
 mov dword ptr [r12 + 0], r14d
# IR_MATCH_BREAK
bb2_α:
 mov dword ptr [r12 + 16], 0
.Lx4_0:
 mov eax, r14d
 add eax, dword ptr [r12 + 16]
 cmp eax, r15d
 jge xcat0_ω
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 lea rdi, [rip + .S1]
 sub rsp, 8
 call strchr@PLT
 add rsp, 8
 test rax, rax
 jnz .Lx4_1
 add dword ptr [r12 + 16], 1
 jmp .Lx4_0
.Lx4_1:
 mov eax, r14d
 add eax, dword ptr [r12 + 16]
 mov r14d, eax
 jmp xcap1_γ
 xcat0_left_β:
 mov eax, r14d
 sub eax, dword ptr [r12 + 16]
 mov r14d, eax
 jmp xcat0_ω
xcap1_γ:
# IR_MATCH_CAPTURE_COND
 lea rdi, [rip + .S0]
 mov esi, dword ptr [r12 + 0]
 mov edx, r14d
 mov ecx, 0
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_cap_assign_cursor@PLT
 mov rsp, rbx
 pop rbx
 jmp xcat0_γ
xcat0_γ:
# IR_LIT
bb4_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xcat0_right_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S1]
 mov rdx, 1
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne xcat0_right_ω
 add r14d, 1
 jmp RSUM_c0_γ
 xcat0_right_β:
 sub r14d, 1
 jmp xcat0_right_ω
xcat0_right_ω:
 jmp xcat0_left_β
RSUM_c0_β:
 jmp xcat0_right_β
xcat0_ω:
 jmp RSUM_c0_ω
RSUM_c0_γ:
mov eax, 1
xor edx, edx
pop r12
ret
RSUM_c0_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
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
snoch8_n0_α:
# IR_VAR
bb6_α:
 mov rdi, qword ptr [rip + .Lx11_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg9_done
 xgvarg9_β:
 jmp snoch8_n2_α
.Lx11_0:
 .quad .Lx11_0_s
.Lx11_0_s:
 .string "N"
xgvarg9_done:
# IR_LIT_I
bb7_α:
 mov qword ptr [r12 + 32], 6
 mov rax, qword ptr [rip + .Lx13_0]
 mov qword ptr [r12 + 40], rax
 jmp xgvarg12_done
 xgvarg12_β:
 jmp snoch8_n2_α
.Lx13_0:
 .quad 0
xgvarg12_done:
bb8_α:
# BOX IR_CALL EQ(...) inline integer relop [four-port, FAIL->ω]
   lea rdi, [rip + .S2]
 call rt_gvar_get_int@PLT
 mov qword ptr [r12 + 64], rax
 mov rcx, 0
 mov qword ptr [r12 + 48], 0
 mov qword ptr [r12 + 56], 0
 mov rax, qword ptr [r12 + 64]
 cmp rax, rcx
 jne snoch8_n2_α
 jmp snoch8_n1_α
 snoch8_n0_β:
 jmp snoch8_n2_α
snoch8_n1_α:
# IR_LIT_scalar
bb9_α:
 jmp snoch8_n3_α
 snoch8_n1_β:
 jmp snoch8_n2_α
snoch8_n2_α:
# IR_VAR
bb10_α:
 mov rdi, qword ptr [rip + .Lx17_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp snoch8_n4_α
 snoch8_n2_β:
 jmp snoch8_n5_α
.Lx17_0:
 .quad .Lx17_0_s
.Lx17_0_s:
 .string "N"
snoch8_n3_α:
# IR_LIT_I
bb11_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx19_0]
 mov qword ptr [r12 + 104], rax
 jmp xgvcat18_1d
 xgvcat18_1b:
 jmp snoch8_n2_α
.Lx19_0:
 .quad 0
xgvcat18_1d:
bb12_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 48]
 mov rsi, qword ptr [r12 + 56]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 96]
 call str_concat_d@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp snoch8_n6_α
 snoch8_n3_β:
 jmp snoch8_n2_α
snoch8_n4_α:
xgvarg21_done:
bb13_α:
# BOX IR_CALL RSUM(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = inline gvar-arith subexpr -> [r12+144]
   lea rdi, [rip + .S2]
 call rt_gvar_get_int@PLT
 mov qword ptr [r12 + 160], rax
 mov rcx, 1
 mov rax, qword ptr [r12 + 160]
 sub rax, rcx
 mov qword ptr [r12 + 144], 6
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lprocfn23: .string "RSUM"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn23]
 lea rsi, [r12 + 144]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je snoch8_n5_α
 jmp snoch8_n7_α
snoch8_n4_β:
 jmp snoch8_n5_α
snoch8_n5_α:
snoch8_n5_β:
jmp RSUM_γ
jmp RSUM_γ
snoch8_n6_α:
bb14_α:
# IR_ASSIGN
 lea rdi, [rip + .S3]
 mov rsi, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 call rt_gvar_assign_descr@PLT
 jmp snoch8_n5_α
 snoch8_n6_β:
 jmp snoch8_n2_α
snoch8_n7_α:
bb15_α:
# IR_BINOP_GVAR_ARITH_SLOT
 lea rdi, [rip + .S2]
 call rt_gvar_get_int@PLT
 mov rcx, qword ptr [r12 + 136]
 add rax, rcx
 mov qword ptr [r12 + 176], rax
 jmp snoch8_n8_α
 snoch8_n7_β:
 jmp snoch8_n5_α
snoch8_n8_α:
bb16_α:
# IR_ASSIGN
 lea rdi, [rip + .S3]
 mov rsi, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 call rt_gvar_assign_descr@PLT
 jmp snoch8_n5_α
 snoch8_n8_β:
 jmp snoch8_n5_α
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
flat_c0_α:
#=======================================================================================================================
    .global flat_c0_α
    .global flat_c0_β
    .global flat_c0_γ
    .global flat_c0_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
flat_c0_α_body:
# IR_MATCH_CAPTURE_SAVE
bb17_α:
 mov dword ptr [r12 + 192], r14d
# IR_MATCH_BREAK
bb18_α:
 mov dword ptr [r12 + 208], 0
.Lx33_0:
 mov eax, r14d
 add eax, dword ptr [r12 + 208]
 cmp eax, r15d
 jge xcat29_ω
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 lea rdi, [rip + .S1]
 sub rsp, 8
 call strchr@PLT
 add rsp, 8
 test rax, rax
 jnz .Lx33_1
 add dword ptr [r12 + 208], 1
 jmp .Lx33_0
.Lx33_1:
 mov eax, r14d
 add eax, dword ptr [r12 + 208]
 mov r14d, eax
 jmp xcap30_γ
 xcat29_left_β:
 mov eax, r14d
 sub eax, dword ptr [r12 + 208]
 mov r14d, eax
 jmp xcat29_ω
xcap30_γ:
# IR_MATCH_CAPTURE_COND
 lea rdi, [rip + .S0]
 mov esi, dword ptr [r12 + 192]
 mov edx, r14d
 mov ecx, 0
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_cap_assign_cursor@PLT
 mov rsp, rbx
 pop rbx
 jmp xcat29_γ
xcat29_γ:
# IR_LIT
bb20_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xcat29_right_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S1]
 mov rdx, 1
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne xcat29_right_ω
 add r14d, 1
 jmp flat_c0_γ
 xcat29_right_β:
 sub r14d, 1
 jmp xcat29_right_ω
xcat29_right_ω:
 jmp xcat29_left_β
flat_c0_β:
 jmp xcat29_right_β
xcat29_ω:
 jmp flat_c0_ω
flat_c0_γ:
mov eax, 1
xor edx, edx
pop r12
ret
flat_c0_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
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
snoch37_n0_α:
# IR_LIT_scalar
bb22_α:
 jmp snoch37_n1_α
 snoch37_n0_β:
 jmp snoch37_n2_α
snoch37_n1_α:
bb23_α:
# IR_ASSIGN
 lea rdi, [rip + .S4]
 movabs rsi, 1
 call rt_gvar_assign_int@PLT
 jmp snoch37_n2_α
 snoch37_n1_β:
 jmp snoch37_n2_α
snoch37_n2_α:
# IR_LIT_scalar
bb24_α:
 jmp snoch37_n3_α
 snoch37_n2_β:
 jmp snoch37_n4_α
snoch37_n3_α:
bb25_α:
# IR_ASSIGN
 lea rdi, [rip + .S5]
 movabs rsi, 1000000000
 call rt_gvar_assign_int@PLT
 jmp snoch37_n4_α
 snoch37_n3_β:
 jmp snoch37_n4_α
snoch37_n4_α:
bb26_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S6]
 call rt_proc_define@PLT
 jmp snoch37_n5_α
 snoch37_n4_β:
 jmp snoch37_n5_α
snoch37_n5_α:
# IR_REF_INVARIANT frozen-pattern store
bb27_α:
 lea rdi, [rip + .S7]
 lea rsi, [rip + flat_c0_α]
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_pat@PLT
 mov rsp, rbx
 pop rbx
 jmp snoch37_n6_α
snoch37_n5_β:
 jmp snoch37_n6_α
snoch37_n6_α:
bb28_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn45: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn45]
 lea rsi, [r12 + 16]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 cmp eax, 99
 je snoch37_n8_α
 jmp snoch37_n7_α
 snoch37_n6_β:
 jmp snoch37_n8_α
snoch37_n7_α:
bb29_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 0]
 mov rcx, qword ptr [r12 + 8]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rcx
 jmp snoch37_n8_α
 snoch37_n7_β:
 jmp snoch37_n8_α
snoch37_n8_α:
# IR_LIT_scalar
bb30_α:
 jmp snoch37_n9_α
 snoch37_n8_β:
 jmp snoch37_n10_α
snoch37_n9_α:
bb31_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S9]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch37_n10_α
 snoch37_n9_β:
 jmp snoch37_n10_α
snoch37_n10_α:
# IR_LIT_I
bb32_α:
 mov qword ptr [r12 + 16], 6
 mov rax, qword ptr [rip + .Lx50_0]
 mov qword ptr [r12 + 24], rax
 jmp xgvarg49_done
 xgvarg49_β:
 jmp snoch37_n12_α
.Lx50_0:
 .quad 16
xgvarg49_done:
bb33_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lbynamefn52: .string "TABLE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn52]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch37_n12_α
 jmp snoch37_n11_α
snoch37_n10_β:
 jmp snoch37_n12_α
snoch37_n11_α:
bb34_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 32]
 mov rcx, qword ptr [r12 + 40]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rcx
 jmp snoch37_n12_α
 snoch37_n11_β:
 jmp snoch37_n12_α
snoch37_n12_α:
# IR_LIT_scalar
bb35_α:
 jmp snoch37_n13_α
 snoch37_n12_β:
 jmp snoch37_n14_α
snoch37_n13_α:
bb36_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S11]
 lea rsi, [rip + .S12]
 call rt_gvar_assign_str@PLT
 jmp snoch37_n14_α
 snoch37_n13_β:
 jmp snoch37_n14_α
snoch37_n14_α:
# IR_LIT_scalar
bb37_α:
 jmp snoch37_n15_α
 snoch37_n14_β:
 jmp snoch37_n16_α
snoch37_n15_α:
bb38_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S13]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch37_n16_α
 snoch37_n15_β:
 jmp snoch37_n16_α
snoch37_n16_α:
# IR_LIT_scalar
bb39_α:
 jmp snoch37_n17_α
 snoch37_n16_β:
 jmp snoch37_n18_α
snoch37_n17_α:
# IR_SUBJECT
bb40_α:
 lea rdi, [rip + .S11]
 lea rsi, [r12 + 64]
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_subject_load_nv@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp xscan59_sγ
 xscan59_sβ:
 jmp snoch37_n18_α
xscan59_sγ:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_begin@PLT
 mov rsp, rbx
 pop rbx
# IR_MATCH_HEAD
bb41_α:
 mov r13, qword ptr [r12 + 64]
 mov r15d, dword ptr [r12 + 72]
 mov dword ptr [r12 + 80], 0
 lea r10, [r12 + 88]
 jmp smatch62_retry
 snoch37_n17_β:
 jmp xscan59_dfail
smatch62_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 80]
# IR_MATCH_DEFER inlined frozen head (FZ-5b)
bb43_α:
 lea rax, [rip + flat_c0_α]
 test rax, rax
 jz .Lx65_0
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
 jne smatch62_adv
 jmp xscan59_dok
.Lx65_0:
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbx
 pop rbx
 test eax, eax
 js smatch62_adv
 mov r14d, eax
 jmp xscan59_dok
 smatch62_elemb:
 jmp smatch62_adv
smatch62_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 80], 1
 mov eax, dword ptr [r12 + 80]
 cmp eax, r15d
 jg xscan59_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan59_dfail
 jmp smatch62_retry
xscan59_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
# SPLICE_EMPTY
 lea rdi, [rip + .S11]
 mov esi, dword ptr [r12 + 80]
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_scan_splice_empty@PLT
 mov rsp, rbx
 pop rbx
jmp snoch37_n19_α
xscan59_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch37_n18_α
snoch37_n18_α:
# IR_LIT_scalar
bb45_α:
 jmp snoch37_n20_α
 snoch37_n18_β:
 jmp snoch37_n21_α
snoch37_n19_α:
# IR_VAR gva
bb46_α:
 mov rax, qword ptr [rbx + 96]
 mov rdx, qword ptr [rbx + 104]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp snoch37_n22_α
 snoch37_n19_β:
 jmp snoch37_n23_α
snoch37_n20_α:
bb47_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S14]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch37_n21_α
 snoch37_n20_β:
 jmp snoch37_n21_α
snoch37_n21_α:
# IR_LIT_scalar
bb48_α:
 jmp snoch37_n24_α
 snoch37_n21_β:
 jmp snoch37_n25_α
snoch37_n22_α:
# IR_LIT_scalar
bb49_α:
 jmp snoch37_n26_α
 snoch37_n22_β:
 jmp snoch37_n23_α
snoch37_n23_α:
# IR_VAR gva
bb50_α:
 mov rax, qword ptr [rbx + 112]
 mov rdx, qword ptr [rbx + 120]
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp snoch37_n27_α
 snoch37_n23_β:
 jmp snoch37_n16_α
snoch37_n24_α:
bb51_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S15]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch37_n25_α
 snoch37_n24_β:
 jmp snoch37_n25_α
snoch37_n25_α:
# IR_VAR gva
bb52_α:
 mov rax, qword ptr [rbx + 144]
 mov rdx, qword ptr [rbx + 152]
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xgvarg76_done
 xgvarg76_β:
 jmp snoch37_n29_α
xgvarg76_done:
# IR_VAR gva
bb53_α:
 mov rax, qword ptr [rbx + 96]
 mov rdx, qword ptr [rbx + 104]
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xgvarg79_done
 xgvarg79_β:
 jmp snoch37_n29_α
xgvarg79_done:
bb54_α:
# BOX IR_CALL LT(...) inline integer relop [four-port, FAIL->ω]
   lea rdi, [rip + .S15]
 call rt_gvar_get_int@PLT
 mov qword ptr [r12 + 176], rax
   lea rdi, [rip + .S13]
 call rt_gvar_get_int@PLT
 mov rcx, rax
 mov qword ptr [r12 + 160], 0
 mov qword ptr [r12 + 168], 0
 mov rax, qword ptr [r12 + 176]
 cmp rax, rcx
 jge snoch37_n29_α
 jmp snoch37_n28_α
 snoch37_n25_β:
 jmp snoch37_n29_α
snoch37_n26_α:
bb55_α:
# IR_BINOP_GVAR_ARITH
 mov rdx, qword ptr [rbx + 96]
 cmp edx, 6
 jne .Lx84_0
 mov rax, qword ptr [rbx + 104]
 jmp .Lx84_1
.Lx84_0:
 lea rdi, [rip + .S13]
 call rt_gvar_get_int@PLT
.Lx84_1:
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 192], rax
 jmp snoch37_n30_α
 snoch37_n26_β:
 jmp snoch37_n23_α
snoch37_n27_α:
# IR_LIT_scalar
bb56_α:
 jmp snoch37_n31_α
 snoch37_n27_β:
 jmp snoch37_n16_α
snoch37_n28_α:
# IR_VAR gva
bb57_α:
 mov rax, qword ptr [rbx + 144]
 mov rdx, qword ptr [rbx + 152]
 mov qword ptr [r12 + 200], rax
 mov qword ptr [r12 + 208], rdx
 jmp snoch37_n32_α
 snoch37_n28_β:
 jmp snoch37_n29_α
snoch37_n29_α:
# IR_LIT_I
bb58_α:
 mov qword ptr [r12 + 216], 6
 mov rax, qword ptr [rip + .Lx89_0]
 mov qword ptr [r12 + 224], rax
 jmp xgvarg88_done
 xgvarg88_β:
 jmp snoch37_n34_α
.Lx89_0:
 .quad 10
xgvarg88_done:
bb59_α:
# BOX IR_CALL RSUM(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+216] -> [r12+248]
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 248], rax
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 256], rax
  .section .rodata
  .Lprocfn91: .string "RSUM"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn91]
 lea rsi, [r12 + 248]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 232], rax
 mov qword ptr [r12 + 240], rdx
 cmp eax, 99
 je snoch37_n34_α
 jmp snoch37_n33_α
snoch37_n29_β:
 jmp snoch37_n34_α
snoch37_n30_α:
bb60_α:
# IR_ASSIGN
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [rbx + 96], 6
 mov qword ptr [rbx + 104], rax
 jmp snoch37_n23_α
 snoch37_n30_β:
 jmp snoch37_n23_α
snoch37_n31_α:
bb61_α:
# IR_BINOP_GVAR_ARITH
 mov rdx, qword ptr [rbx + 112]
 cmp edx, 6
 jne .Lx95_0
 mov rax, qword ptr [rbx + 120]
 jmp .Lx95_1
.Lx95_0:
 lea rdi, [rip + .S0]
 call rt_gvar_get_int@PLT
.Lx95_1:
 mov rcx, 0
 add rax, rcx
 mov qword ptr [r12 + 264], rax
 jmp snoch37_n35_α
 snoch37_n31_β:
 jmp snoch37_n16_α
snoch37_n32_α:
# IR_LIT_scalar
bb62_α:
 jmp snoch37_n36_α
 snoch37_n32_β:
 jmp snoch37_n29_α
snoch37_n33_α:
bb63_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 232]
 mov rcx, qword ptr [r12 + 240]
 mov qword ptr [rbx + 160], rax
 mov qword ptr [rbx + 168], rcx
 jmp snoch37_n34_α
 snoch37_n33_β:
 jmp snoch37_n34_α
snoch37_n34_α:
# IR_VAR gva
bb64_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xgvarg98_done
 xgvarg98_β:
 jmp snoch37_n38_α
xgvarg98_done:
# IR_LIT_I
bb65_α:
 mov qword ptr [r12 + 288], 6
 mov rax, qword ptr [rip + .Lx102_0]
 mov qword ptr [r12 + 296], rax
 jmp xgvarg101_done
 xgvarg101_β:
 jmp snoch37_n38_α
.Lx102_0:
 .quad 50000
xgvarg101_done:
bb66_α:
# BOX IR_CALL LT(...) inline integer relop [four-port, FAIL->ω]
   lea rdi, [rip + .S9]
 call rt_gvar_get_int@PLT
 mov qword ptr [r12 + 320], rax
 mov rcx, 50000
 mov qword ptr [r12 + 304], 0
 mov qword ptr [r12 + 312], 0
 mov rax, qword ptr [r12 + 320]
 cmp rax, rcx
 jge snoch37_n38_α
 jmp snoch37_n37_α
 snoch37_n34_β:
 jmp snoch37_n38_α
snoch37_n35_α:
bb67_α:
# IR_BINOP_GVAR_ARITH
 mov rdx, qword ptr [rbx + 112]
 cmp edx, 6
 jne .Lx106_0
 mov rax, qword ptr [rbx + 120]
 jmp .Lx106_1
.Lx106_0:
 lea rdi, [rip + .S0]
 call rt_gvar_get_int@PLT
.Lx106_1:
 mov rcx, 0
 add rax, rcx
 mov qword ptr [r12 + 336], rax
 jmp xgvidxv104_done
 xgvidxv104_β:
 jmp snoch37_n16_α
xgvidxv104_done:
bb68_α:
# IR_IDX_SET: AXS inline DT_A+int fast path, else subscript_set
 lea rdi, [rip + .S10]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 344], rax
 mov qword ptr [r12 + 352], rdx
 lea rdi, [rip + .S13]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 360], rax
 mov qword ptr [r12 + 368], rdx
 mov rax, qword ptr [r12 + 264]
 movabs rdx, 6
 mov qword ptr [r12 + 264], rdx
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 344]
 cmp eax, 4
 jne .Lx108_0
 mov rax, qword ptr [r12 + 360]
 cmp eax, 6
 jne .Lx108_0
 mov rsi, qword ptr [r12 + 352]
 mov rcx, qword ptr [r12 + 368]
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx108_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx108_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add r11, rcx
 mov rax, qword ptr [r12 + 264]
 mov rdx, qword ptr [r12 + 272]
 mov qword ptr [r11 + 0], rax
 mov qword ptr [r11 + 8], rdx
 jmp snoch37_n16_α
.Lx108_0:
 mov rdi, qword ptr [r12 + 344]
 mov rsi, qword ptr [r12 + 352]
 mov rdx, qword ptr [r12 + 360]
 mov rcx, qword ptr [r12 + 368]
 mov r8, qword ptr [r12 + 264]
 mov r9, qword ptr [r12 + 272]
 call subscript_set@PLT
 cmp eax, 0
 je snoch37_n16_α
 jmp snoch37_n16_α
 snoch37_n35_β:
 jmp snoch37_n16_α
snoch37_n36_α:
bb69_α:
# IR_BINOP_GVAR_ARITH
 mov rdx, qword ptr [rbx + 144]
 cmp edx, 6
 jne .Lx110_0
 mov rax, qword ptr [rbx + 152]
 jmp .Lx110_1
.Lx110_0:
 lea rdi, [rip + .S15]
 call rt_gvar_get_int@PLT
.Lx110_1:
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 376], rax
 jmp snoch37_n39_α
 snoch37_n36_β:
 jmp snoch37_n29_α
snoch37_n37_α:
# IR_VAR gva
bb70_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp snoch37_n40_α
 snoch37_n37_β:
 jmp snoch37_n38_α
snoch37_n38_α:
bb71_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn114: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn114]
 lea rsi, [r12 + 416]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je snoch37_n42_α
 jmp snoch37_n41_α
 snoch37_n38_β:
 jmp snoch37_n42_α
snoch37_n39_α:
bb72_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 376]
 call str_concat_d@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp snoch37_n43_α
 snoch37_n39_β:
 jmp snoch37_n29_α
snoch37_n40_α:
# IR_LIT_scalar
bb73_α:
 jmp snoch37_n44_α
 snoch37_n40_β:
 jmp snoch37_n38_α
snoch37_n41_α:
bb74_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 400]
 mov rcx, qword ptr [r12 + 408]
 mov qword ptr [rbx + 176], rax
 mov qword ptr [rbx + 184], rcx
 jmp snoch37_n42_α
 snoch37_n41_β:
 jmp snoch37_n42_α
snoch37_n42_α:
bb75_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 432], 0
 lea rax, [rip + .S19]
 mov qword ptr [r12 + 440], rax
 mov dword ptr [r12 + 448], 1
 lea rax, [rip + .S14]
 mov qword ptr [r12 + 456], rax
 lea rdi, [rip + .S18]
 lea rsi, [r12 + 432]
 mov edx, 2
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch37_n45_α
 snoch37_n42_β:
 jmp snoch37_n45_α
snoch37_n43_α:
bb76_α:
# IR_ASSIGN
 mov rax, qword ptr [r12 + 416]
 mov rcx, qword ptr [r12 + 424]
 mov qword ptr [rbx + 144], rax
 mov qword ptr [rbx + 152], rcx
 jmp snoch37_n46_α
 snoch37_n43_β:
 jmp snoch37_n29_α
snoch37_n44_α:
bb77_α:
# IR_BINOP_GVAR_ARITH
 mov rdx, qword ptr [rbx + 48]
 cmp edx, 6
 jne .Lx122_0
 mov rax, qword ptr [rbx + 56]
 jmp .Lx122_1
.Lx122_0:
 lea rdi, [rip + .S9]
 call rt_gvar_get_int@PLT
.Lx122_1:
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 464], rax
 jmp snoch37_n47_α
 snoch37_n44_β:
 jmp snoch37_n38_α
snoch37_n45_α:
# IR_LIT_scalar
bb78_α:
 jmp snoch37_n48_α
 snoch37_n45_β:
 jmp flat_γ
snoch37_n46_α:
# IR_VAR gva
bb79_α:
 mov rax, qword ptr [rbx + 128]
 mov rdx, qword ptr [rbx + 136]
 mov qword ptr [r12 + 472], rax
 mov qword ptr [r12 + 480], rdx
 jmp snoch37_n49_α
 snoch37_n46_β:
 jmp snoch37_n25_α
snoch37_n47_α:
bb80_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 464]
 call str_concat_d@PLT
 mov qword ptr [r12 + 488], rax
 mov qword ptr [r12 + 496], rdx
 jmp snoch37_n50_α
 snoch37_n47_β:
 jmp snoch37_n38_α
snoch37_n48_α:
# IR_VAR gva
bb81_α:
 mov rax, qword ptr [rbx + 176]
 mov rdx, qword ptr [rbx + 184]
 mov qword ptr [r12 + 504], rax
 mov qword ptr [r12 + 512], rdx
 jmp snoch37_n51_α
 snoch37_n48_β:
 jmp flat_γ
snoch37_n49_α:
bb82_α:
# IR_IDX: AXS inline DT_A+int fast path, else subscript_get
 lea rdi, [rip + .S15]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 520], rax
 mov qword ptr [r12 + 528], rdx
 lea rdi, [rip + .S10]
 call NV_GET_fn@PLT
 cmp eax, 4
 jne .Lx130_0
 mov r8, qword ptr [r12 + 520]
 cmp r8d, 6
 jne .Lx130_0
 mov rcx, qword ptr [r12 + 528]
 mov rsi, rdx
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx130_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx130_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 mov rax, [r11 + rcx*8]
 add r11, 8
 mov rdx, [r11 + rcx*8]
 mov qword ptr [r12 + 536], rax
 mov qword ptr [r12 + 544], rdx
 jmp snoch37_n52_α
.Lx130_0:
 mov rdi, rax
 mov rsi, rdx
 mov rdx, qword ptr [r12 + 520]
 mov rcx, qword ptr [r12 + 528]
 call subscript_get@PLT
 mov qword ptr [r12 + 536], rax
 mov qword ptr [r12 + 544], rdx
 jmp snoch37_n52_α
 snoch37_n49_β:
 jmp snoch37_n25_α
snoch37_n50_α:
bb83_α:
# IR_ASSIGN
 mov rax, qword ptr [r12 + 488]
 mov rcx, qword ptr [r12 + 496]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rcx
 jmp snoch37_n10_α
 snoch37_n50_β:
 jmp snoch37_n38_α
snoch37_n51_α:
# IR_VAR gva
bb84_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 552], rax
 mov qword ptr [r12 + 560], rdx
 jmp snoch37_n53_α
 snoch37_n51_β:
 jmp flat_γ
snoch37_n52_α:
bb85_α:
# IR_IDX: AXS inline DT_A+int fast path, else subscript_get
 lea rdi, [rip + .S15]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 568], rax
 mov qword ptr [r12 + 576], rdx
 lea rdi, [rip + .S10]
 call NV_GET_fn@PLT
 cmp eax, 4
 jne .Lx137_0
 mov r8, qword ptr [r12 + 568]
 cmp r8d, 6
 jne .Lx137_0
 mov rcx, qword ptr [r12 + 576]
 mov rsi, rdx
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx137_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx137_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 mov rax, [r11 + rcx*8]
 add r11, 8
 mov rdx, [r11 + rcx*8]
 mov qword ptr [r12 + 584], rax
 mov qword ptr [r12 + 592], rdx
 jmp xgvidx135_done
.Lx137_0:
 mov rdi, rax
 mov rsi, rdx
 mov rdx, qword ptr [r12 + 568]
 mov rcx, qword ptr [r12 + 576]
 call subscript_get@PLT
 mov qword ptr [r12 + 584], rax
 mov qword ptr [r12 + 592], rdx
 jmp xgvidx135_done
 xgvidx135_β:
 jmp snoch37_n25_α
xgvidx135_done:
bb86_α:
# IR_BINOP_GVAR_ARITH (dynamic operands: DESCR-in DESCR-out via rt_num_arith)
 lea rdi, [rip + .S14]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 472], rax
 mov qword ptr [r12 + 480], rdx
 mov rdi, qword ptr [r12 + 472]
 mov rsi, qword ptr [r12 + 480]
 mov rdx, qword ptr [r12 + 536]
 mov rcx, qword ptr [r12 + 544]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je snoch37_n25_α
 mov qword ptr [r12 + 600], rax
 mov qword ptr [r12 + 608], rdx
 jmp snoch37_n54_α
 snoch37_n52_β:
 jmp snoch37_n25_α
snoch37_n53_α:
bb87_α:
# IR_BINOP_GVAR_ARITH
 mov rdx, qword ptr [rbx + 32]
 cmp edx, 6
 jne .Lx140_0
 mov rcx, qword ptr [rbx + 40]
 jmp .Lx140_1
.Lx140_0:
 lea rdi, [rip + .S8]
 call rt_gvar_get_int@PLT
 mov rcx, rax
.Lx140_1:
 mov qword ptr [r12 + 616], rcx
 mov rdx, qword ptr [rbx + 176]
 cmp edx, 6
 jne .Lx140_2
 mov rax, qword ptr [rbx + 184]
 jmp .Lx140_3
.Lx140_2:
 lea rdi, [rip + .S17]
 call rt_gvar_get_int@PLT
.Lx140_3:
 mov rcx, qword ptr [r12 + 616]
 sub rax, rcx
 mov qword ptr [r12 + 616], rax
 jmp snoch37_n55_α
 snoch37_n53_β:
 jmp flat_γ
snoch37_n54_α:
bb88_α:
# IR_ASSIGN
 mov rax, qword ptr [r12 + 600]
 mov rcx, qword ptr [r12 + 608]
 mov qword ptr [rbx + 128], rax
 mov qword ptr [rbx + 136], rcx
 jmp snoch37_n25_α
 snoch37_n54_β:
 jmp snoch37_n25_α
snoch37_n55_α:
# IR_LIT_S
bb89_α:
 mov qword ptr [r12 + 624], 1
 mov rax, qword ptr [rip + .Lx144_0]
 mov qword ptr [r12 + 632], rax
 jmp xgvcat143_0d
 xgvcat143_0b:
 jmp flat_γ
.Lx144_0:
 .quad .Lx144_0_s
.Lx144_0_s:
 .string "ms: "
xgvcat143_0d:
bb90_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 624]
 mov rsi, qword ptr [r12 + 632]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 616]
 call str_concat_d@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp snoch37_n56_α
 snoch37_n55_β:
 jmp flat_γ
snoch37_n56_α:
bb91_α:
# IR_ASSIGN
 lea rdi, [rip + .S18]
 mov rsi, qword ptr [r12 + 640]
 mov rdx, qword ptr [r12 + 648]
 call rt_gvar_assign_descr@PLT
 jmp flat_γ
 snoch37_n56_β:
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
.S0: .string "WORD"
.S1: .string ","
.S2: .string "N"
.S3: .string "RSUM"
.S4: .string "TRIM"
.S5: .string "STLIMIT"
.S6: .string "RSUM(N)"
.S7: .string "PAT"
.S8: .string "T1"
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
