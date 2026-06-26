  .intel_syntax noprefix
  .text
  .section .rodata
  .Lgvan0: .string "S"
  .Lgvan1: .string "T1"
  .Lgvan2: .string "N"
  .Lgvan3: .string "T2"
  .align 8
__gva_names:
  .quad .Lgvan0
  .quad .Lgvan1
  .quad .Lgvan2
  .quad .Lgvan3
  .section .bss
  .align 16
__gva: .space 64, 0
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
  mov edx, 4
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
# IR_LIT
bb1_α:
 mov eax, r14d
 add eax, 3
 cmp eax, r15d
 jg alt1_c0_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S0]
 mov rdx, 3
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt1_c0_ω
 add r14d, 3
 jmp xcat0_γ
 alt1_c0_β:
 sub r14d, 3
 jmp alt1_c0_ω
alt1_c0_ω:
# IR_LIT
bb2_α:
 mov eax, r14d
 add eax, 3
 cmp eax, r15d
 jg alt1_c1_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S1]
 mov rdx, 3
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt1_c1_ω
 add r14d, 3
 jmp xcat0_γ
 alt1_c1_β:
 sub r14d, 3
 jmp alt1_c1_ω
alt1_c1_ω:
# IR_LIT
bb3_α:
 mov eax, r14d
 add eax, 3
 cmp eax, r15d
 jg alt1_c2_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S2]
 mov rdx, 3
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt1_c2_ω
 add r14d, 3
 jmp xcat0_γ
 alt1_c2_β:
 sub r14d, 3
 jmp alt1_c2_ω
alt1_c2_ω:
# IR_LIT
bb4_α:
 mov eax, r14d
 add eax, 3
 cmp eax, r15d
 jg alt1_c3_ω
 movsxd rcx, r14d
 lea rdi, [r13 + rcx]
 lea rsi, [rip + .S3]
 mov rdx, 3
 sub rsp, 8
 call memcmp@PLT
 add rsp, 8
 test eax, eax
 jne alt1_c3_ω
 add r14d, 3
 jmp xcat0_γ
 alt1_c3_β:
 sub r14d, 3
 jmp alt1_c3_ω
alt1_c3_ω:
 jmp xcat0_ω
xcat0_left_β:
 jmp alt1_c0_β
xcat0_γ:
# IR_MATCH_CAPTURE_SAVE
bb6_α:
 mov dword ptr [r12 + 0], r14d
# IR_MATCH_SPAN
bb7_α:
 mov dword ptr [r12 + 16], 0
.Lx10_0:
 mov eax, r14d
 add eax, dword ptr [r12 + 16]
 cmp eax, r15d
 jge .Lx10_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 lea rdi, [rip + .S5]
 sub rsp, 8
 call strchr@PLT
 add rsp, 8
 test rax, rax
 je .Lx10_1
 add dword ptr [r12 + 16], 1
 jmp .Lx10_0
.Lx10_1:
 mov eax, dword ptr [r12 + 16]
 test eax, eax
 jle xcat0_right_ω
 mov edx, r14d
 mov dword ptr [r12 + 20], edx
 add edx, eax
 mov r14d, edx
 jmp xcap7_γ
 xcat0_right_β:
 xcat0_right_β:
 mov r14d, dword ptr [r12 + 20]
 jmp xcat0_right_ω
xcap7_γ:
# IR_MATCH_CAPTURE_COND
 lea rdi, [rip + .S4]
 mov esi, dword ptr [r12 + 0]
 mov edx, r14d
 mov ecx, 0
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_cap_assign_cursor@PLT
 mov rsp, rbx
 pop rbx
 jmp flat_c0_γ
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
snoch13_n0_α:
# IR_LIT_scalar
bb10_α:
 jmp snoch13_n1_α
 snoch13_n0_β:
 jmp snoch13_n2_α
snoch13_n1_α:
bb11_α:
# IR_ASSIGN
 lea rdi, [rip + .S6]
 movabs rsi, 1
 call rt_gvar_assign_int@PLT
 jmp snoch13_n2_α
 snoch13_n1_β:
 jmp snoch13_n2_α
snoch13_n2_α:
# IR_LIT_scalar
bb12_α:
 jmp snoch13_n3_α
 snoch13_n2_β:
 jmp snoch13_n4_α
snoch13_n3_α:
bb13_α:
# IR_ASSIGN
 lea rdi, [rip + .S7]
 movabs rsi, 1000000000
 call rt_gvar_assign_int@PLT
 jmp snoch13_n4_α
 snoch13_n3_β:
 jmp snoch13_n4_α
snoch13_n4_α:
# IR_LIT_scalar
bb14_α:
 jmp snoch13_n5_α
 snoch13_n4_β:
 jmp snoch13_n6_α
snoch13_n5_α:
bb15_α:
# IR_ASSIGN
 lea rdi, [rip + .S8]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch13_n6_α
 snoch13_n5_β:
 jmp snoch13_n6_α
snoch13_n6_α:
# IR_REF_INVARIANT frozen-pattern store
bb16_α:
 lea rdi, [rip + .S9]
 lea rsi, [rip + flat_c0_α]
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_pat@PLT
 mov rsp, rbx
 pop rbx
 jmp snoch13_n7_α
snoch13_n6_β:
 jmp snoch13_n7_α
snoch13_n7_α:
# IR_LIT_scalar
bb17_α:
 jmp snoch13_n8_α
 snoch13_n7_β:
 jmp snoch13_n9_α
snoch13_n8_α:
bb18_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S10]
 lea rsi, [rip + .S11]
 call rt_gvar_assign_str@PLT
 jmp snoch13_n9_α
 snoch13_n8_β:
 jmp snoch13_n9_α
snoch13_n9_α:
bb19_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn24: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn24]
 lea rsi, [r12 + 16]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 cmp eax, 99
 je snoch13_n11_α
 jmp snoch13_n10_α
 snoch13_n9_β:
 jmp snoch13_n11_α
snoch13_n10_α:
bb20_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 0]
 mov rcx, qword ptr [r12 + 8]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rcx
 jmp snoch13_n11_α
 snoch13_n10_β:
 jmp snoch13_n11_α
snoch13_n11_α:
# IR_LIT_scalar
bb21_α:
 jmp snoch13_n12_α
 snoch13_n11_β:
 jmp snoch13_n13_α
snoch13_n12_α:
bb22_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S13]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch13_n13_α
 snoch13_n12_β:
 jmp snoch13_n13_α
snoch13_n13_α:
# IR_VAR gva
bb23_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp snoch13_n14_α
 snoch13_n13_β:
 jmp snoch13_n15_α
snoch13_n14_α:
# IR_SUBJECT
bb24_α:
 lea rdi, [rip + .S10]
 lea rsi, [r12 + 32]
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_subject_load_nv@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp xscan30_sγ
 xscan30_sβ:
 jmp snoch13_n15_α
xscan30_sγ:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_begin@PLT
 mov rsp, rbx
 pop rbx
# IR_MATCH_HEAD
bb25_α:
 mov r13, qword ptr [r12 + 32]
 mov r15d, dword ptr [r12 + 40]
 mov dword ptr [r12 + 48], 0
 lea r10, [r12 + 56]
 jmp smatch33_retry
 snoch13_n14_β:
 jmp xscan30_dfail
smatch33_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 48]
# IR_MATCH_DEFER inlined frozen head (FZ-5b)
bb27_α:
 lea rax, [rip + flat_c0_α]
 test rax, rax
 jz .Lx36_0
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
 jne smatch33_adv
 jmp xscan30_dok
.Lx36_0:
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbx
 pop rbx
 test eax, eax
 js smatch33_adv
 mov r14d, eax
 jmp xscan30_dok
 smatch33_elemb:
 jmp smatch33_adv
smatch33_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 48], 1
 mov eax, dword ptr [r12 + 48]
 cmp eax, r15d
 jg xscan30_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan30_dfail
 jmp smatch33_retry
xscan30_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
jmp snoch13_n16_α
xscan30_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch13_n15_α
snoch13_n15_α:
bb29_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn39: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn39]
 lea rsi, [r12 + 80]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je snoch13_n18_α
 jmp snoch13_n17_α
 snoch13_n15_β:
 jmp snoch13_n18_α
snoch13_n16_α:
# IR_VAR gva
bb30_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xgvarg40_done
 xgvarg40_β:
 jmp snoch13_n15_α
xgvarg40_done:
# IR_LIT_I
bb31_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx44_0]
 mov qword ptr [r12 + 104], rax
 jmp xgvarg43_done
 xgvarg43_β:
 jmp snoch13_n15_α
.Lx44_0:
 .quad 500000
xgvarg43_done:
bb32_α:
# BOX IR_CALL LT(...) inline integer relop [four-port, FAIL->ω]
 mov rdx, qword ptr [rbx + 32]
 cmp edx, 6
 jne .Lx46_0
 mov rax, qword ptr [rbx + 40]
 jmp .Lx46_1
.Lx46_0:
   lea rdi, [rip + .S13]
 call rt_gvar_get_int@PLT
.Lx46_1:
 mov qword ptr [r12 + 128], rax
 mov rcx, 500000
 mov qword ptr [r12 + 112], 0
 mov qword ptr [r12 + 120], 0
 mov rax, qword ptr [r12 + 128]
 cmp rax, rcx
 jge snoch13_n15_α
 jmp snoch13_n19_α
 snoch13_n16_β:
 jmp snoch13_n15_α
snoch13_n17_α:
bb33_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 64]
 mov rcx, qword ptr [r12 + 72]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rcx
 jmp snoch13_n18_α
 snoch13_n17_β:
 jmp snoch13_n18_α
snoch13_n18_α:
bb34_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 144], 0
 lea rax, [rip + .S16]
 mov qword ptr [r12 + 152], rax
 mov dword ptr [r12 + 160], 1
 lea rax, [rip + .S13]
 mov qword ptr [r12 + 168], rax
 lea rdi, [rip + .S15]
 lea rsi, [r12 + 144]
 mov edx, 2
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch13_n20_α
 snoch13_n18_β:
 jmp snoch13_n20_α
snoch13_n19_α:
# IR_VAR gva
bb35_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp snoch13_n21_α
 snoch13_n19_β:
 jmp snoch13_n15_α
snoch13_n20_α:
bb36_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 192], 0
 lea rax, [rip + .S17]
 mov qword ptr [r12 + 200], rax
 mov dword ptr [r12 + 208], 1
 lea rax, [rip + .S4]
 mov qword ptr [r12 + 216], rax
 lea rdi, [rip + .S15]
 lea rsi, [r12 + 192]
 mov edx, 2
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch13_n22_α
 snoch13_n20_β:
 jmp snoch13_n22_α
snoch13_n21_α:
# IR_LIT_scalar
bb37_α:
 jmp snoch13_n23_α
 snoch13_n21_β:
 jmp snoch13_n15_α
snoch13_n22_α:
# IR_LIT_scalar
bb38_α:
 jmp snoch13_n24_α
 snoch13_n22_β:
 jmp flat_γ
snoch13_n23_α:
bb39_α:
# IR_BINOP_GVAR_ARITH
 mov rdx, qword ptr [rbx + 32]
 cmp edx, 6
 jne .Lx55_0
 mov rax, qword ptr [rbx + 40]
 jmp .Lx55_1
.Lx55_0:
 lea rdi, [rip + .S13]
 call rt_gvar_get_int@PLT
.Lx55_1:
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 224], rax
 jmp snoch13_n25_α
 snoch13_n23_β:
 jmp snoch13_n15_α
snoch13_n24_α:
# IR_VAR gva
bb40_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 232], rax
 mov qword ptr [r12 + 240], rdx
 jmp snoch13_n26_α
 snoch13_n24_β:
 jmp flat_γ
snoch13_n25_α:
bb41_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 232]
 call str_concat_d@PLT
 mov qword ptr [r12 + 248], rax
 mov qword ptr [r12 + 256], rdx
 jmp snoch13_n27_α
 snoch13_n25_β:
 jmp snoch13_n15_α
snoch13_n26_α:
# IR_VAR gva
bb42_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 264], rax
 mov qword ptr [r12 + 272], rdx
 jmp snoch13_n28_α
 snoch13_n26_β:
 jmp flat_γ
snoch13_n27_α:
bb43_α:
# IR_ASSIGN
 mov rax, qword ptr [r12 + 248]
 mov rcx, qword ptr [r12 + 256]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rcx
 jmp snoch13_n13_α
 snoch13_n27_β:
 jmp snoch13_n15_α
snoch13_n28_α:
bb44_α:
# IR_BINOP_GVAR_ARITH
 mov rdx, qword ptr [rbx + 16]
 cmp edx, 6
 jne .Lx64_0
 mov rcx, qword ptr [rbx + 24]
 jmp .Lx64_1
.Lx64_0:
 lea rdi, [rip + .S12]
 call rt_gvar_get_int@PLT
 mov rcx, rax
.Lx64_1:
 mov qword ptr [r12 + 280], rcx
 mov rdx, qword ptr [rbx + 48]
 cmp edx, 6
 jne .Lx64_2
 mov rax, qword ptr [rbx + 56]
 jmp .Lx64_3
.Lx64_2:
 lea rdi, [rip + .S14]
 call rt_gvar_get_int@PLT
.Lx64_3:
 mov rcx, qword ptr [r12 + 280]
 sub rax, rcx
 mov qword ptr [r12 + 280], rax
 jmp snoch13_n29_α
 snoch13_n28_β:
 jmp flat_γ
snoch13_n29_α:
# IR_LIT_S
bb45_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx66_0]
 mov qword ptr [r12 + 296], rax
 jmp xgvcat65_0d
 xgvcat65_0b:
 jmp flat_γ
.Lx66_0:
 .quad .Lx66_0_s
.Lx66_0_s:
 .string "ms: "
xgvcat65_0d:
bb46_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 288]
 mov rsi, qword ptr [r12 + 296]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 288]
 call str_concat_d@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp snoch13_n30_α
 snoch13_n29_β:
 jmp flat_γ
snoch13_n30_α:
bb47_α:
# IR_ASSIGN
 lea rdi, [rip + .S15]
 mov rsi, qword ptr [r12 + 304]
 mov rdx, qword ptr [r12 + 312]
 call rt_gvar_assign_descr@PLT
 jmp flat_γ
 snoch13_n30_β:
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
.S0: .string "aaa"
.S1: .string "bbb"
.S2: .string "ccc"
.S3: .string "ddd"
.S4: .string "W"
.S5: .string "abcd"
.S6: .string "TRIM"
.S7: .string "STLIMIT"
.S8: .string "ANCHOR"
.S9: .string "PAT"
.S10: .string "S"
.S11: .string "xxxxxxxxxxbbbccccddddaaaaxxxxxxxxxxbbbccccddddaaaa"
.S12: .string "T1"
.S13: .string "N"
.S14: .string "T2"
.S15: .string "OUTPUT"
.S16: .string "result: "
.S17: .string "W: "
.text
