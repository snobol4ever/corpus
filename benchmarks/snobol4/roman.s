  .intel_syntax noprefix
  .text
ROMAN_α:
#=======================================================================================================================
    .global ROMAN_α
    .global ROMAN_β
    .global ROMAN_γ
    .global ROMAN_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
ROMAN_α_body:
snoch0_n0_α:
# IR_LIT_scalar
bb1_α:
 jmp snoch0_n1_α
 snoch0_n0_β:
 jmp snoch0_n2_α
snoch0_n1_α:
# IR_SUBJECT
bb2_α:
 lea rdi, [rip + .S0]
 lea rsi, [r12 + 0]
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_subject_load_nv@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp xscan2_sγ
 xscan2_sβ:
 jmp snoch0_n2_α
xscan2_sγ:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_begin@PLT
 mov rsp, rbx
 pop rbx
# IR_MATCH_HEAD
bb3_α:
 mov r13, qword ptr [r12 + 0]
 mov r15d, dword ptr [r12 + 8]
 mov dword ptr [r12 + 16], 0
 lea r10, [r12 + 24]
 jmp smatch5_retry
 snoch0_n1_β:
 jmp xscan2_dfail
smatch5_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 16]
# IR_MATCH_RPOS
bb5_α:
 mov ecx, r15d
 sub ecx, 1
 cmp r14d, ecx
 jne xcat8_ω
 jmp xcat8_γ
 xcat8_left_β:
 jmp xcat8_ω
xcat8_γ:
# IR_MATCH_CAPTURE_SAVE
bb6_α:
 mov dword ptr [r12 + 32], r14d
# IR_MATCH_LEN
bb7_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xcat8_right_ω
 add r14d, 1
 jmp xcap10_γ
 xcat8_right_β:
 jmp xcat8_right_ω
xcap10_γ:
# IR_MATCH_CAPTURE_COND
 lea rdi, [rip + .S1]
 mov esi, dword ptr [r12 + 32]
 mov edx, r14d
 mov ecx, 0
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_cap_assign_cursor@PLT
 mov rsp, rbx
 pop rbx
 jmp xscan2_dok
xcat8_right_ω:
 jmp xcat8_left_β
smatch5_elemb:
 jmp xcat8_right_β
xcat8_ω:
 jmp smatch5_adv
smatch5_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 16], 1
 mov eax, dword ptr [r12 + 16]
 cmp eax, r15d
 jg xscan2_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan2_dfail
 jmp smatch5_retry
xscan2_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
# SPLICE_EMPTY
 lea rdi, [rip + .S0]
 mov esi, dword ptr [r12 + 16]
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_scan_splice_empty@PLT
 mov rsp, rbx
 pop rbx
jmp snoch0_n3_α
xscan2_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch0_n2_α
snoch0_n2_α:
snoch0_n2_β:
jmp ROMAN_γ
jmp ROMAN_γ
snoch0_n3_α:
# IR_LIT_scalar
bb11_α:
 jmp snoch0_n4_α
 snoch0_n3_β:
 jmp snoch0_n5_α
snoch0_n4_α:
# IR_SUBJECT
bb12_α:
 lea rdi, [rip + .S2]
 lea rsi, [r12 + 48]
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_subject_load_lit@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp xscan17_sγ
 xscan17_sβ:
 jmp snoch0_n5_α
xscan17_sγ:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_begin@PLT
 mov rsp, rbx
 pop rbx
# IR_MATCH_HEAD
bb13_α:
 mov r13, qword ptr [r12 + 48]
 mov r15d, dword ptr [r12 + 56]
 mov dword ptr [r12 + 64], 0
 lea r10, [r12 + 72]
 jmp smatch20_retry
 snoch0_n4_β:
 jmp xscan17_dfail
smatch20_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 64]
# IR_MATCH_DEFER
bb15_α:
 lea rdi, [rip + .S1]
 mov esi, 0
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_get_pat_fn@PLT
 mov rsp, rbx
 pop rbx
 test rax, rax
 jz .Lx24_0
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
 jne xcat23_ω
 jmp xcat23_γ
.Lx24_0:
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbx
 pop rbx
 test eax, eax
 js xcat23_ω
 mov r14d, eax
 jmp xcat23_γ
 xcat23_left_β:
 jmp xcat23_ω
xcat23_γ:
# IR_MATCH_CAPTURE_SAVE
bb16_α:
 mov dword ptr [r12 + 80], r14d
# IR_MATCH_BREAK
bb17_α:
 mov dword ptr [r12 + 96], 0
.Lx28_0:
 mov eax, r14d
 add eax, dword ptr [r12 + 96]
 cmp eax, r15d
 jge xcat23_right_ω
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 lea rdi, [rip + .S3]
 sub rsp, 8
 call strchr@PLT
 add rsp, 8
 test rax, rax
 jnz .Lx28_1
 add dword ptr [r12 + 96], 1
 jmp .Lx28_0
.Lx28_1:
 mov eax, r14d
 add eax, dword ptr [r12 + 96]
 mov r14d, eax
 jmp xcap25_γ
 xcat23_right_β:
 mov eax, r14d
 sub eax, dword ptr [r12 + 96]
 mov r14d, eax
 jmp xcat23_right_ω
xcap25_γ:
# IR_MATCH_CAPTURE_COND
 lea rdi, [rip + .S1]
 mov esi, dword ptr [r12 + 80]
 mov edx, r14d
 mov ecx, 0
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_cap_assign_cursor@PLT
 mov rsp, rbx
 pop rbx
 jmp xscan17_dok
xcat23_right_ω:
 jmp xcat23_left_β
smatch20_elemb:
 jmp xcat23_right_β
xcat23_ω:
 jmp smatch20_adv
smatch20_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 64], 1
 mov eax, dword ptr [r12 + 64]
 cmp eax, r15d
 jg xscan17_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan17_dfail
 jmp smatch20_retry
xscan17_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
jmp snoch0_n6_α
xscan17_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch0_n5_α
snoch0_n5_α:
snoch0_n5_β:
jmp ROMAN_ω
jmp ROMAN_ω
snoch0_n6_α:
# IR_VAR
bb21_α:
 mov rdi, qword ptr [rip + .Lx35_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 100], rax
 mov qword ptr [r12 + 108], rdx
 jmp xgvarg33_done
 xgvarg33_β:
 jmp snoch0_n5_α
.Lx35_0:
 .quad .Lx35_0_s
.Lx35_0_s:
 .string "N"
xgvarg33_done:
bb22_α:
# BOX IR_CALL ROMAN(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+100] -> [r12+132]
 mov rax, qword ptr [r12 + 100]
 mov qword ptr [r12 + 132], rax
 mov rax, qword ptr [r12 + 108]
 mov qword ptr [r12 + 140], rax
   mov rdi, [rip + __proc + 0]
 lea rsi, [r12 + 132]
 mov edx, 1
 call rt_call_proc_direct@PLT
 mov qword ptr [r12 + 116], rax
 mov qword ptr [r12 + 124], rdx
 cmp eax, 99
 je snoch0_n5_α
 jmp xgvarg32_done
xgvarg32_β:
 jmp snoch0_n5_α
xgvarg32_done:
# IR_LIT_S
bb23_α:
 mov qword ptr [r12 + 148], 1
 mov rax, qword ptr [rip + .Lx38_0]
 mov qword ptr [r12 + 156], rax
 jmp xgvarg37_done
 xgvarg37_β:
 jmp snoch0_n5_α
.Lx38_0:
 .quad .Lx38_0_s
.Lx38_0_s:
 .string "IVXLCDM"
xgvarg37_done:
# IR_LIT_S
bb24_α:
 mov qword ptr [r12 + 164], 1
 mov rax, qword ptr [rip + .Lx40_0]
 mov qword ptr [r12 + 172], rax
 jmp xgvarg39_done
 xgvarg39_β:
 jmp snoch0_n5_α
.Lx40_0:
 .quad .Lx40_0_s
.Lx40_0_s:
 .string "XLCDM**"
xgvarg39_done:
bb25_α:
# BOX IR_CALL REPLACE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+116] -> [r12+196]
 mov rax, qword ptr [r12 + 116]
 mov qword ptr [r12 + 196], rax
 mov rax, qword ptr [r12 + 124]
 mov qword ptr [r12 + 204], rax
# marshal arg1 = producer-box slot [r12+148] -> [r12+212]
 mov rax, qword ptr [r12 + 148]
 mov qword ptr [r12 + 212], rax
 mov rax, qword ptr [r12 + 156]
 mov qword ptr [r12 + 220], rax
# marshal arg2 = producer-box slot [r12+164] -> [r12+228]
 mov rax, qword ptr [r12 + 164]
 mov qword ptr [r12 + 228], rax
 mov rax, qword ptr [r12 + 172]
 mov qword ptr [r12 + 236], rax
  .section .rodata
  .Lbynamefn42: .string "REPLACE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn42]
 lea rsi, [r12 + 196]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 180], rax
 mov qword ptr [r12 + 188], rdx
 cmp eax, 99
 je snoch0_n5_α
 jmp snoch0_n7_α
snoch0_n6_β:
 jmp snoch0_n5_α
snoch0_n7_α:
# IR_VAR
bb26_α:
 mov rdi, qword ptr [rip + .Lx44_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 244], rax
 mov qword ptr [r12 + 252], rdx
 jmp snoch0_n8_α
 snoch0_n7_β:
 jmp snoch0_n5_α
.Lx44_0:
 .quad .Lx44_0_s
.Lx44_0_s:
 .string "T"
snoch0_n8_α:
bb27_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 180]
 mov rsi, qword ptr [r12 + 188]
 mov rdx, qword ptr [r12 + 244]
 mov rcx, qword ptr [r12 + 252]
 call str_concat_d@PLT
 mov qword ptr [r12 + 260], rax
 mov qword ptr [r12 + 268], rdx
 jmp snoch0_n9_α
 snoch0_n8_β:
 jmp snoch0_n5_α
snoch0_n9_α:
bb28_α:
# IR_ASSIGN
 lea rdi, [rip + .S4]
 mov rsi, qword ptr [r12 + 260]
 mov rdx, qword ptr [r12 + 268]
 call rt_gvar_assign_descr@PLT
 jmp snoch0_n2_α
 snoch0_n9_β:
 jmp snoch0_n5_α
ROMAN_β:
jmp ROMAN_ω
ROMAN_γ:
mov eax, 1
xor edx, edx
pop r12
ret
ROMAN_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .section .rodata
  .Lpn0: .string "ROMAN"
  .Lpp0_0: .string "N"
  .Lpp0_1: .string "T"
  .Lpnames0:
  .quad .Lpp0_0
  .quad .Lpp0_1
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
  mov edx, 2
  call rt_proc_register@PLT
  lea rdi, [rip + .Lpn0]
  lea rsi, [rip + ROMAN_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn0]
  mov esi, 276
  call rt_proc_set_frame_bytes@PLT
  pop rbp
  ret
  .section .rodata
  .Lgvan0: .string "ROMAN"
  .Lgvan1: .string "T"
  .Lgvan2: .string "T1"
  .Lgvan3: .string "N"
  .Lgvan4: .string "R"
  .Lgvan5: .string "T2"
  .align 8
__gva_names:
  .quad .Lgvan0
  .quad .Lgvan1
  .quad .Lgvan2
  .quad .Lgvan3
  .quad .Lgvan4
  .quad .Lgvan5
  .section .bss
  .align 16
__gva: .space 96, 0
  .section .text
  .intel_syntax noprefix
  .section .rodata
  .Lprocn0: .string "ROMAN"
  .align 8
__proc_names:
  .quad .Lprocn0
  .section .bss
  .align 8
__proc: .space 8, 0
  .section .text
  .intel_syntax noprefix
  .globl main
main:
  push rbp
  mov rbp, rsp
  call proc_startup
  lea rdi, [rip + __proc]
  lea rsi, [rip + __proc_names]
  mov edx, 1
  call rt_proc_table_fill@PLT
  lea rdi, [rip + __gva_names]
  lea rsi, [rip + __gva]
  mov edx, 6
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
snoch48_n0_α:
# IR_LIT_scalar
bb29_α:
 jmp snoch48_n1_α
 snoch48_n0_β:
 jmp snoch48_n2_α
snoch48_n1_α:
bb30_α:
# IR_ASSIGN
 lea rdi, [rip + .S5]
 movabs rsi, 1
 call rt_gvar_assign_int@PLT
 jmp snoch48_n2_α
 snoch48_n1_β:
 jmp snoch48_n2_α
snoch48_n2_α:
# IR_LIT_scalar
bb31_α:
 jmp snoch48_n3_α
 snoch48_n2_β:
 jmp snoch48_n4_α
snoch48_n3_α:
bb32_α:
# IR_ASSIGN
 lea rdi, [rip + .S6]
 movabs rsi, 1000000000
 call rt_gvar_assign_int@PLT
 jmp snoch48_n4_α
 snoch48_n3_β:
 jmp snoch48_n4_α
snoch48_n4_α:
bb33_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S7]
 call rt_proc_define@PLT
 jmp snoch48_n5_α
 snoch48_n4_β:
 jmp snoch48_n5_α
snoch48_n5_α:
bb34_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn55: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn55]
 lea rsi, [r12 + 16]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 cmp eax, 99
 je snoch48_n7_α
 jmp snoch48_n6_α
 snoch48_n5_β:
 jmp snoch48_n7_α
snoch48_n6_α:
bb35_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 0]
 mov rcx, qword ptr [r12 + 8]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rcx
 jmp snoch48_n7_α
 snoch48_n6_β:
 jmp snoch48_n7_α
snoch48_n7_α:
# IR_LIT_scalar
bb36_α:
 jmp snoch48_n8_α
 snoch48_n7_β:
 jmp snoch48_n9_α
snoch48_n8_α:
bb37_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S0]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch48_n9_α
 snoch48_n8_β:
 jmp snoch48_n9_α
snoch48_n9_α:
# IR_LIT_S
bb38_α:
 mov qword ptr [r12 + 16], 1
 mov rax, qword ptr [rip + .Lx60_0]
 mov qword ptr [r12 + 24], rax
 jmp xgvarg59_done
 xgvarg59_β:
 jmp snoch48_n11_α
.Lx60_0:
 .quad .Lx60_0_s
.Lx60_0_s:
 .string "1776"
xgvarg59_done:
bb39_α:
# BOX IR_CALL ROMAN(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
   mov rdi, [rip + __proc + 0]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_proc_direct@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch48_n11_α
 jmp snoch48_n10_α
snoch48_n9_β:
 jmp snoch48_n11_α
snoch48_n10_α:
bb40_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 32]
 mov rcx, qword ptr [r12 + 40]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rcx
 jmp snoch48_n11_α
 snoch48_n10_β:
 jmp snoch48_n11_α
snoch48_n11_α:
# IR_VAR gva
bb41_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xgvarg63_done
 xgvarg63_β:
 jmp snoch48_n13_α
xgvarg63_done:
# IR_LIT_I
bb42_α:
 mov qword ptr [r12 + 80], 6
 mov rax, qword ptr [rip + .Lx67_0]
 mov qword ptr [r12 + 88], rax
 jmp xgvarg66_done
 xgvarg66_β:
 jmp snoch48_n13_α
.Lx67_0:
 .quad 100000
xgvarg66_done:
bb43_α:
# BOX IR_CALL LT(...) inline integer relop [four-port, FAIL->ω]
 mov rdx, qword ptr [rbx + 48]
 cmp edx, 6
 jne .Lx69_0
 mov rax, qword ptr [rbx + 56]
 jmp .Lx69_1
.Lx69_0:
   lea rdi, [rip + .S0]
 call rt_gvar_get_int@PLT
.Lx69_1:
 mov qword ptr [r12 + 112], rax
 mov rcx, 100000
 mov qword ptr [r12 + 96], 0
 mov qword ptr [r12 + 104], 0
 mov rax, qword ptr [r12 + 112]
 cmp rax, rcx
 jge snoch48_n13_α
 jmp snoch48_n12_α
 snoch48_n11_β:
 jmp snoch48_n13_α
snoch48_n12_α:
# IR_VAR gva
bb44_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp snoch48_n14_α
 snoch48_n12_β:
 jmp snoch48_n13_α
snoch48_n13_α:
bb45_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn73: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn73]
 lea rsi, [r12 + 160]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je snoch48_n16_α
 jmp snoch48_n15_α
 snoch48_n13_β:
 jmp snoch48_n16_α
snoch48_n14_α:
# IR_LIT_scalar
bb46_α:
 jmp snoch48_n17_α
 snoch48_n14_β:
 jmp snoch48_n13_α
snoch48_n15_α:
bb47_α:
# IR_ASSIGN_CALL gva
 mov rax, qword ptr [r12 + 144]
 mov rcx, qword ptr [r12 + 152]
 mov qword ptr [rbx + 80], rax
 mov qword ptr [rbx + 88], rcx
 jmp snoch48_n16_α
 snoch48_n15_β:
 jmp snoch48_n16_α
snoch48_n16_α:
bb48_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 160], 0
 lea rax, [rip + .S12]
 mov qword ptr [r12 + 168], rax
 mov dword ptr [r12 + 176], 1
 lea rax, [rip + .S9]
 mov qword ptr [r12 + 184], rax
 lea rdi, [rip + .S11]
 lea rsi, [r12 + 160]
 mov edx, 2
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch48_n18_α
 snoch48_n16_β:
 jmp snoch48_n18_α
snoch48_n17_α:
bb49_α:
# IR_BINOP_GVAR_ARITH
 mov rdx, qword ptr [rbx + 48]
 cmp edx, 6
 jne .Lx78_0
 mov rax, qword ptr [rbx + 56]
 jmp .Lx78_1
.Lx78_0:
 lea rdi, [rip + .S0]
 call rt_gvar_get_int@PLT
.Lx78_1:
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 192], rax
 jmp snoch48_n19_α
 snoch48_n17_β:
 jmp snoch48_n13_α
snoch48_n18_α:
# IR_LIT_scalar
bb50_α:
 jmp snoch48_n20_α
 snoch48_n18_β:
 jmp flat_γ
snoch48_n19_α:
bb51_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 192]
 call str_concat_d@PLT
 mov qword ptr [r12 + 200], rax
 mov qword ptr [r12 + 208], rdx
 jmp snoch48_n21_α
 snoch48_n19_β:
 jmp snoch48_n13_α
snoch48_n20_α:
# IR_VAR gva
bb52_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 216], rax
 mov qword ptr [r12 + 224], rdx
 jmp snoch48_n22_α
 snoch48_n20_β:
 jmp flat_γ
snoch48_n21_α:
bb53_α:
# IR_ASSIGN
 mov rax, qword ptr [r12 + 200]
 mov rcx, qword ptr [r12 + 208]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rcx
 jmp snoch48_n9_α
 snoch48_n21_β:
 jmp snoch48_n13_α
snoch48_n22_α:
# IR_VAR gva
bb54_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 232], rax
 mov qword ptr [r12 + 240], rdx
 jmp snoch48_n23_α
 snoch48_n22_β:
 jmp flat_γ
snoch48_n23_α:
bb55_α:
# IR_BINOP_GVAR_ARITH
 mov rdx, qword ptr [rbx + 32]
 cmp edx, 6
 jne .Lx88_0
 mov rcx, qword ptr [rbx + 40]
 jmp .Lx88_1
.Lx88_0:
 lea rdi, [rip + .S8]
 call rt_gvar_get_int@PLT
 mov rcx, rax
.Lx88_1:
 mov qword ptr [r12 + 248], rcx
 mov rdx, qword ptr [rbx + 80]
 cmp edx, 6
 jne .Lx88_2
 mov rax, qword ptr [rbx + 88]
 jmp .Lx88_3
.Lx88_2:
 lea rdi, [rip + .S10]
 call rt_gvar_get_int@PLT
.Lx88_3:
 mov rcx, qword ptr [r12 + 248]
 sub rax, rcx
 mov qword ptr [r12 + 248], rax
 jmp snoch48_n24_α
 snoch48_n23_β:
 jmp flat_γ
snoch48_n24_α:
# IR_LIT_S
bb56_α:
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx90_0]
 mov qword ptr [r12 + 264], rax
 jmp xgvcat89_0d
 xgvcat89_0b:
 jmp flat_γ
.Lx90_0:
 .quad .Lx90_0_s
.Lx90_0_s:
 .string "ms: "
xgvcat89_0d:
bb57_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 256]
 mov rsi, qword ptr [r12 + 264]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 248]
 call str_concat_d@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp snoch48_n25_α
 snoch48_n24_β:
 jmp flat_γ
snoch48_n25_α:
bb58_α:
# IR_ASSIGN
 lea rdi, [rip + .S11]
 mov rsi, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 call rt_gvar_assign_descr@PLT
 jmp flat_γ
 snoch48_n25_β:
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
.S1: .string "T"
.S2: .string "0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,"
.S3: .string ","
.S4: .string "ROMAN"
.S5: .string "TRIM"
.S6: .string "STLIMIT"
.S7: .string "ROMAN(N)T"
.S8: .string "T1"
.S9: .string "R"
.S10: .string "T2"
.S11: .string "OUTPUT"
.S12: .string "result: "
.text
