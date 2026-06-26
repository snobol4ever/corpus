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
 jmp flat_c0_γ
 xcat0_right_β:
 sub r14d, 1
 jmp xcat0_right_ω
xcat0_right_ω:
 jmp xcat0_left_β
flat_c0_β:
 jmp xcat0_right_β
xcat0_ω:
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
snoch8_n0_α:
# IR_LIT_scalar
bb6_α:
 jmp snoch8_n1_α
 snoch8_n0_β:
 jmp snoch8_n2_α
snoch8_n1_α:
bb7_α:
# IR_ASSIGN
 lea rdi, [rip + .S2]
 movabs rsi, 1
 call rt_gvar_assign_int@PLT
 jmp snoch8_n2_α
 snoch8_n1_β:
 jmp snoch8_n2_α
snoch8_n2_α:
# IR_LIT_scalar
bb8_α:
 jmp snoch8_n3_α
 snoch8_n2_β:
 jmp snoch8_n4_α
snoch8_n3_α:
bb9_α:
# IR_ASSIGN
 lea rdi, [rip + .S3]
 movabs rsi, 1000000000
 call rt_gvar_assign_int@PLT
 jmp snoch8_n4_α
 snoch8_n3_β:
 jmp snoch8_n4_α
snoch8_n4_α:
# IR_REF_INVARIANT frozen-pattern store
bb10_α:
 lea rdi, [rip + .S4]
 lea rsi, [rip + flat_c0_α]
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_pat@PLT
 mov rsp, rbx
 pop rbx
 jmp snoch8_n5_α
snoch8_n4_β:
 jmp snoch8_n5_α
snoch8_n5_α:
bb11_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn15: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn15]
 lea rsi, [r12 + 16]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 cmp eax, 99
 je snoch8_n7_α
 jmp snoch8_n6_α
 snoch8_n5_β:
 jmp snoch8_n7_α
snoch8_n6_α:
bb12_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 0]
 mov rcx, qword ptr [r12 + 8]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rcx
 jmp snoch8_n7_α
 snoch8_n6_β:
 jmp snoch8_n7_α
snoch8_n7_α:
# IR_LIT_scalar
bb13_α:
 jmp snoch8_n8_α
 snoch8_n7_β:
 jmp snoch8_n9_α
snoch8_n8_α:
bb14_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S6]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch8_n9_α
 snoch8_n8_β:
 jmp snoch8_n9_α
snoch8_n9_α:
# IR_VAR gva
bb15_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg19_done
 xgvarg19_β:
 jmp snoch8_n11_α
xgvarg19_done:
# IR_LIT_I
bb16_α:
 mov qword ptr [r12 + 32], 6
 mov rax, qword ptr [rip + .Lx23_0]
 mov qword ptr [r12 + 40], rax
 jmp xgvarg22_done
 xgvarg22_β:
 jmp snoch8_n11_α
.Lx23_0:
 .quad 500000
xgvarg22_done:
bb17_α:
# BOX IR_CALL LT(...) inline integer relop [four-port, FAIL->ω]
 mov rdx, qword ptr [rbx + 16]
 cmp edx, 6
 jne .Lx25_0
 mov rax, qword ptr [rbx + 24]
 jmp .Lx25_1
.Lx25_0:
   lea rdi, [rip + .S6]
 call rt_gvar_get_int@PLT
.Lx25_1:
 mov qword ptr [r12 + 64], rax
 mov rcx, 500000
 mov qword ptr [r12 + 48], 0
 mov qword ptr [r12 + 56], 0
 mov rax, qword ptr [r12 + 64]
 cmp rax, rcx
 jge snoch8_n11_α
 jmp snoch8_n10_α
 snoch8_n9_β:
 jmp snoch8_n11_α
snoch8_n10_α:
# IR_VAR gva
bb18_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp snoch8_n12_α
 snoch8_n10_β:
 jmp snoch8_n11_α
snoch8_n11_α:
bb19_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn29: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn29]
 lea rsi, [r12 + 112]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je snoch8_n14_α
 jmp snoch8_n13_α
 snoch8_n11_β:
 jmp snoch8_n14_α
snoch8_n12_α:
# IR_LIT_scalar
bb20_α:
 jmp snoch8_n15_α
 snoch8_n12_β:
 jmp snoch8_n11_α
snoch8_n13_α:
bb21_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 96]
 mov rcx, qword ptr [r12 + 104]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rcx
 jmp snoch8_n14_α
 snoch8_n13_β:
 jmp snoch8_n14_α
snoch8_n14_α:
bb22_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 112], 0
 lea rax, [rip + .S9]
 mov qword ptr [r12 + 120], rax
 mov dword ptr [r12 + 128], 1
 lea rax, [rip + .S10]
 mov qword ptr [r12 + 136], rax
 lea rdi, [rip + .S8]
 lea rsi, [r12 + 112]
 mov edx, 2
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch8_n16_α
 snoch8_n14_β:
 jmp snoch8_n16_α
snoch8_n15_α:
bb23_α:
# IR_BINOP_GVAR_ARITH
 mov rdx, qword ptr [rbx + 16]
 cmp edx, 6
 jne .Lx34_0
 mov rax, qword ptr [rbx + 24]
 jmp .Lx34_1
.Lx34_0:
 lea rdi, [rip + .S6]
 call rt_gvar_get_int@PLT
.Lx34_1:
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 144], rax
 jmp snoch8_n17_α
 snoch8_n15_β:
 jmp snoch8_n11_α
snoch8_n16_α:
# IR_LIT_scalar
bb24_α:
 jmp snoch8_n18_α
 snoch8_n16_β:
 jmp flat_γ
snoch8_n17_α:
bb25_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 48]
 mov rsi, qword ptr [r12 + 56]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 152]
 call str_concat_d@PLT
 mov qword ptr [r12 + 152], rax
 mov qword ptr [r12 + 160], rdx
 jmp snoch8_n19_α
 snoch8_n17_β:
 jmp snoch8_n11_α
snoch8_n18_α:
# IR_VAR gva
bb26_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 168], rax
 mov qword ptr [r12 + 176], rdx
 jmp snoch8_n20_α
 snoch8_n18_β:
 jmp flat_γ
snoch8_n19_α:
bb27_α:
# IR_ASSIGN
 mov rax, qword ptr [r12 + 152]
 mov rcx, qword ptr [r12 + 160]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rcx
 jmp snoch8_n21_α
 snoch8_n19_β:
 jmp snoch8_n11_α
snoch8_n20_α:
# IR_VAR gva
bb28_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 184], rax
 mov qword ptr [r12 + 192], rdx
 jmp snoch8_n22_α
 snoch8_n20_β:
 jmp flat_γ
snoch8_n21_α:
# IR_LIT_scalar
bb29_α:
 jmp snoch8_n23_α
 snoch8_n21_β:
 jmp snoch8_n24_α
snoch8_n22_α:
bb30_α:
# IR_BINOP_GVAR_ARITH
 mov rdx, qword ptr [rbx + 0]
 cmp edx, 6
 jne .Lx45_0
 mov rcx, qword ptr [rbx + 8]
 jmp .Lx45_1
.Lx45_0:
 lea rdi, [rip + .S5]
 call rt_gvar_get_int@PLT
 mov rcx, rax
.Lx45_1:
 mov qword ptr [r12 + 200], rcx
 mov rdx, qword ptr [rbx + 64]
 cmp edx, 6
 jne .Lx45_2
 mov rax, qword ptr [rbx + 72]
 jmp .Lx45_3
.Lx45_2:
 lea rdi, [rip + .S7]
 call rt_gvar_get_int@PLT
.Lx45_3:
 mov rcx, qword ptr [r12 + 200]
 sub rax, rcx
 mov qword ptr [r12 + 200], rax
 jmp snoch8_n25_α
 snoch8_n22_β:
 jmp flat_γ
snoch8_n23_α:
bb31_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S11]
 lea rsi, [rip + .S12]
 call rt_gvar_assign_str@PLT
 jmp snoch8_n24_α
 snoch8_n23_β:
 jmp snoch8_n24_α
snoch8_n24_α:
# IR_LIT_scalar
bb32_α:
 jmp snoch8_n26_α
 snoch8_n24_β:
 jmp snoch8_n27_α
snoch8_n25_α:
# IR_LIT_S
bb33_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx49_0]
 mov qword ptr [r12 + 216], rax
 jmp xgvcat48_0d
 xgvcat48_0b:
 jmp flat_γ
.Lx49_0:
 .quad .Lx49_0_s
.Lx49_0_s:
 .string "ms: "
xgvcat48_0d:
bb34_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 208]
 mov rsi, qword ptr [r12 + 216]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 208]
 call str_concat_d@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp snoch8_n28_α
 snoch8_n25_β:
 jmp flat_γ
snoch8_n26_α:
bb35_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S10]
 lea rsi, [rip + .S13]
 call rt_gvar_assign_str@PLT
 jmp snoch8_n27_α
 snoch8_n26_β:
 jmp snoch8_n27_α
snoch8_n27_α:
# IR_LIT_scalar
bb36_α:
 jmp snoch8_n29_α
 snoch8_n27_β:
 jmp snoch8_n9_α
snoch8_n28_α:
bb37_α:
# IR_ASSIGN
 lea rdi, [rip + .S8]
 mov rsi, qword ptr [r12 + 224]
 mov rdx, qword ptr [r12 + 232]
 call rt_gvar_assign_descr@PLT
 jmp flat_γ
 snoch8_n28_β:
 jmp flat_γ
snoch8_n29_α:
# IR_SUBJECT
bb38_α:
 lea rdi, [rip + .S11]
 lea rsi, [r12 + 240]
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_subject_load_nv@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp xscan55_sγ
 xscan55_sβ:
 jmp snoch8_n9_α
xscan55_sγ:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_begin@PLT
 mov rsp, rbx
 pop rbx
# IR_MATCH_HEAD
bb39_α:
 mov r13, qword ptr [r12 + 240]
 mov r15d, dword ptr [r12 + 248]
 mov dword ptr [r12 + 256], 0
 lea r10, [r12 + 264]
 jmp smatch58_retry
 snoch8_n29_β:
 jmp xscan55_dfail
smatch58_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 256]
# IR_MATCH_DEFER inlined frozen head (FZ-5b)
bb41_α:
 lea rax, [rip + flat_c0_α]
 test rax, rax
 jz .Lx61_0
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
 jne smatch58_adv
 jmp xscan55_dok
.Lx61_0:
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbx
 pop rbx
 test eax, eax
 js smatch58_adv
 mov r14d, eax
 jmp xscan55_dok
 smatch58_elemb:
 jmp smatch58_adv
smatch58_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 256], 1
 mov eax, dword ptr [r12 + 256]
 cmp eax, r15d
 jg xscan55_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan55_dfail
 jmp smatch58_retry
xscan55_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
# SPLICE_EMPTY
 lea rdi, [rip + .S11]
 mov esi, dword ptr [r12 + 256]
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_scan_splice_empty@PLT
 mov rsp, rbx
 pop rbx
jmp snoch8_n30_α
xscan55_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch8_n9_α
snoch8_n30_α:
bb43_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 272], 1
 lea rax, [rip + .S10]
 mov qword ptr [r12 + 280], rax
 mov dword ptr [r12 + 288], 1
 lea rax, [rip + .S0]
 mov qword ptr [r12 + 296], rax
 lea rdi, [rip + .S10]
 lea rsi, [r12 + 272]
 mov edx, 2
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch8_n27_α
 snoch8_n30_β:
 jmp snoch8_n27_α
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
.S2: .string "TRIM"
.S3: .string "STLIMIT"
.S4: .string "PAT"
.S5: .string "T1"
.S6: .string "ITER"
.S7: .string "T2"
.S8: .string "OUTPUT"
.S9: .string "result: "
.S10: .string "RESULT"
.S11: .string "S"
.S12: .string "alpha,beta,gamma,delta,epsilon,zeta,eta,theta,iota,kappa,"
.S13: .string ""
.text
