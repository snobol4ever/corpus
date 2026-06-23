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
  .section .rodata
  .Lprocfn37: .string "ROMAN"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn37]
 lea rsi, [r12 + 132]
 mov edx, 1
 call rt_call_named_proc@PLT
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
 mov rax, qword ptr [rip + .Lx39_0]
 mov qword ptr [r12 + 156], rax
 jmp xgvarg38_done
 xgvarg38_β:
 jmp snoch0_n5_α
.Lx39_0:
 .quad .Lx39_0_s
.Lx39_0_s:
 .string "IVXLCDM"
xgvarg38_done:
# IR_LIT_S
bb24_α:
 mov qword ptr [r12 + 164], 1
 mov rax, qword ptr [rip + .Lx41_0]
 mov qword ptr [r12 + 172], rax
 jmp xgvarg40_done
 xgvarg40_β:
 jmp snoch0_n5_α
.Lx41_0:
 .quad .Lx41_0_s
.Lx41_0_s:
 .string "XLCDM**"
xgvarg40_done:
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
  .Lbynamefn43: .string "REPLACE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn43]
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
 mov rdi, qword ptr [rip + .Lx45_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 244], rax
 mov qword ptr [r12 + 252], rdx
 jmp snoch0_n8_α
 snoch0_n7_β:
 jmp snoch0_n5_α
.Lx45_0:
 .quad .Lx45_0_s
.Lx45_0_s:
 .string "T"
snoch0_n8_α:
# IR_VAR
bb27_α:
 mov rdi, qword ptr [rip + .Lx50_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 260], rax
 mov qword ptr [r12 + 268], rdx
 jmp xgvarg48_done
 xgvarg48_β:
 jmp snoch0_n5_α
.Lx50_0:
 .quad .Lx50_0_s
.Lx50_0_s:
 .string "N"
xgvarg48_done:
bb28_α:
# BOX IR_CALL ROMAN(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+100] -> [r12+292]
 mov rax, qword ptr [r12 + 100]
 mov qword ptr [r12 + 292], rax
 mov rax, qword ptr [r12 + 108]
 mov qword ptr [r12 + 300], rax
  .section .rodata
  .Lprocfn52: .string "ROMAN"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn52]
 lea rsi, [r12 + 292]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 276], rax
 mov qword ptr [r12 + 284], rdx
 cmp eax, 99
 je snoch0_n5_α
 jmp xgvarg47_done
xgvarg47_β:
 jmp snoch0_n5_α
xgvarg47_done:
# IR_LIT_S
bb29_α:
 mov qword ptr [r12 + 308], 1
 mov rax, qword ptr [rip + .Lx54_0]
 mov qword ptr [r12 + 316], rax
 jmp xgvarg53_done
 xgvarg53_β:
 jmp snoch0_n5_α
.Lx54_0:
 .quad .Lx54_0_s
.Lx54_0_s:
 .string "IVXLCDM"
xgvarg53_done:
# IR_LIT_S
bb30_α:
 mov qword ptr [r12 + 324], 1
 mov rax, qword ptr [rip + .Lx56_0]
 mov qword ptr [r12 + 332], rax
 jmp xgvarg55_done
 xgvarg55_β:
 jmp snoch0_n5_α
.Lx56_0:
 .quad .Lx56_0_s
.Lx56_0_s:
 .string "XLCDM**"
xgvarg55_done:
bb31_α:
# BOX IR_CALL REPLACE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+116] -> [r12+356]
 mov rax, qword ptr [r12 + 116]
 mov qword ptr [r12 + 356], rax
 mov rax, qword ptr [r12 + 124]
 mov qword ptr [r12 + 364], rax
# marshal arg1 = producer-box slot [r12+148] -> [r12+372]
 mov rax, qword ptr [r12 + 148]
 mov qword ptr [r12 + 372], rax
 mov rax, qword ptr [r12 + 156]
 mov qword ptr [r12 + 380], rax
# marshal arg2 = producer-box slot [r12+164] -> [r12+388]
 mov rax, qword ptr [r12 + 164]
 mov qword ptr [r12 + 388], rax
 mov rax, qword ptr [r12 + 172]
 mov qword ptr [r12 + 396], rax
  .section .rodata
  .Lbynamefn58: .string "REPLACE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn58]
 lea rsi, [r12 + 356]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 340], rax
 mov qword ptr [r12 + 348], rdx
 cmp eax, 99
 je snoch0_n5_α
 jmp xgvcat46_0d
xgvcat46_0b:
 jmp snoch0_n5_α
xgvcat46_0d:
# IR_VAR
bb32_α:
 mov rdi, qword ptr [rip + .Lx61_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 404], rax
 mov qword ptr [r12 + 412], rdx
 jmp xgvcat59_1d
 xgvcat59_1b:
 jmp snoch0_n5_α
.Lx61_0:
 .quad .Lx61_0_s
.Lx61_0_s:
 .string "T"
xgvcat59_1d:
bb33_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 180]
 mov rsi, qword ptr [r12 + 188]
 mov rdx, qword ptr [r12 + 244]
 mov rcx, qword ptr [r12 + 252]
 call str_concat_d@PLT
 mov qword ptr [r12 + 420], rax
 mov qword ptr [r12 + 428], rdx
 jmp snoch0_n9_α
 snoch0_n8_β:
 jmp snoch0_n5_α
snoch0_n9_α:
bb34_α:
# IR_ASSIGN
 lea rdi, [rip + .S4]
 mov rsi, qword ptr [r12 + 420]
 mov rdx, qword ptr [r12 + 428]
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
  lea rsi, [rip + ROMAN_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lpn0]
  mov esi, 436
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
snoch65_n0_α:
# IR_LIT_scalar
bb35_α:
 jmp snoch65_n1_α
 snoch65_n0_β:
 jmp snoch65_n2_α
snoch65_n1_α:
bb36_α:
# IR_ASSIGN
 lea rdi, [rip + .S5]
 movabs rsi, 1
 call rt_gvar_assign_int@PLT
 jmp snoch65_n2_α
 snoch65_n1_β:
 jmp snoch65_n2_α
snoch65_n2_α:
# IR_LIT_scalar
bb37_α:
 jmp snoch65_n3_α
 snoch65_n2_β:
 jmp snoch65_n4_α
snoch65_n3_α:
bb38_α:
# IR_ASSIGN
 lea rdi, [rip + .S6]
 movabs rsi, 1000000000
 call rt_gvar_assign_int@PLT
 jmp snoch65_n4_α
 snoch65_n3_β:
 jmp snoch65_n4_α
snoch65_n4_α:
bb39_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S7]
 call rt_proc_define@PLT
 jmp snoch65_n5_α
 snoch65_n4_β:
 jmp snoch65_n5_α
snoch65_n5_α:
bb40_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn72: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn72]
 lea rsi, [r12 + 16]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 cmp eax, 99
 je snoch65_n7_α
 jmp snoch65_n6_α
 snoch65_n5_β:
 jmp snoch65_n7_α
snoch65_n6_α:
bb41_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S8]
 mov rsi, qword ptr [r12 + 0]
 mov rdx, qword ptr [r12 + 8]
 call rt_gvar_assign_descr@PLT
 jmp snoch65_n7_α
 snoch65_n6_β:
 jmp snoch65_n7_α
snoch65_n7_α:
# IR_LIT_scalar
bb42_α:
 jmp snoch65_n8_α
 snoch65_n7_β:
 jmp snoch65_n9_α
snoch65_n8_α:
bb43_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S0]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch65_n9_α
 snoch65_n8_β:
 jmp snoch65_n9_α
snoch65_n9_α:
# IR_LIT_S
bb44_α:
 mov qword ptr [r12 + 16], 1
 mov rax, qword ptr [rip + .Lx77_0]
 mov qword ptr [r12 + 24], rax
 jmp xgvarg76_done
 xgvarg76_β:
 jmp snoch65_n11_α
.Lx77_0:
 .quad .Lx77_0_s
.Lx77_0_s:
 .string "1776"
xgvarg76_done:
bb45_α:
# BOX IR_CALL ROMAN(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lprocfn79: .string "ROMAN"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn79]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch65_n11_α
 jmp snoch65_n10_α
snoch65_n9_β:
 jmp snoch65_n11_α
snoch65_n10_α:
bb46_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S9]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch65_n11_α
 snoch65_n10_β:
 jmp snoch65_n11_α
snoch65_n11_α:
# IR_VAR
bb47_α:
 mov rdi, qword ptr [rip + .Lx83_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xgvarg81_done
 xgvarg81_β:
 jmp snoch65_n13_α
.Lx83_0:
 .quad .Lx83_0_s
.Lx83_0_s:
 .string "N"
xgvarg81_done:
# IR_LIT_I
bb48_α:
 mov qword ptr [r12 + 80], 6
 mov rax, qword ptr [rip + .Lx85_0]
 mov qword ptr [r12 + 88], rax
 jmp xgvarg84_done
 xgvarg84_β:
 jmp snoch65_n13_α
.Lx85_0:
 .quad 100000
xgvarg84_done:
bb49_α:
# BOX IR_CALL LT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+64] -> [r12+112]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 120], rax
# marshal arg1 = producer-box slot [r12+80] -> [r12+128]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lbynamefn87: .string "LT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn87]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je snoch65_n13_α
 jmp snoch65_n12_α
snoch65_n11_β:
 jmp snoch65_n13_α
snoch65_n12_α:
# IR_VAR
bb50_α:
 mov rdi, qword ptr [rip + .Lx89_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp snoch65_n14_α
 snoch65_n12_β:
 jmp snoch65_n13_α
.Lx89_0:
 .quad .Lx89_0_s
.Lx89_0_s:
 .string "N"
snoch65_n13_α:
bb51_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn91: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn91]
 lea rsi, [r12 + 176]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je snoch65_n16_α
 jmp snoch65_n15_α
 snoch65_n13_β:
 jmp snoch65_n16_α
snoch65_n14_α:
# IR_LIT_scalar
bb52_α:
 jmp snoch65_n17_α
 snoch65_n14_β:
 jmp snoch65_n13_α
snoch65_n15_α:
bb53_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S10]
 mov rsi, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 call rt_gvar_assign_descr@PLT
 jmp snoch65_n16_α
 snoch65_n15_β:
 jmp snoch65_n16_α
snoch65_n16_α:
bb54_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 176], 0
 lea rax, [rip + .S12]
 mov qword ptr [r12 + 184], rax
 mov dword ptr [r12 + 192], 1
 lea rax, [rip + .S9]
 mov qword ptr [r12 + 200], rax
 lea rdi, [rip + .S11]
 lea rsi, [r12 + 176]
 mov edx, 2
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch65_n18_α
 snoch65_n16_β:
 jmp snoch65_n18_α
snoch65_n17_α:
bb55_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S0]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 208], rax
 jmp snoch65_n19_α
 snoch65_n17_β:
 jmp snoch65_n13_α
snoch65_n18_α:
# IR_LIT_scalar
bb56_α:
 jmp snoch65_n20_α
 snoch65_n18_β:
 jmp flat_γ
snoch65_n19_α:
# IR_VAR
bb57_α:
 mov rdi, qword ptr [rip + .Lx100_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 216], rax
 mov qword ptr [r12 + 224], rdx
 jmp xgvarg98_done
 xgvarg98_β:
 jmp snoch65_n13_α
.Lx100_0:
 .quad .Lx100_0_s
.Lx100_0_s:
 .string "N"
xgvarg98_done:
# IR_LIT_I
bb58_α:
 mov qword ptr [r12 + 80], 6
 mov rax, qword ptr [rip + .Lx102_0]
 mov qword ptr [r12 + 88], rax
 jmp xgvarg101_done
 xgvarg101_β:
 jmp snoch65_n13_α
.Lx102_0:
 .quad 100000
xgvarg101_done:
bb59_α:
# BOX IR_CALL LT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+64] -> [r12+248]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 248], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 256], rax
# marshal arg1 = producer-box slot [r12+80] -> [r12+264]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 264], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 272], rax
  .section .rodata
  .Lbynamefn104: .string "LT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn104]
 lea rsi, [r12 + 248]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 232], rax
 mov qword ptr [r12 + 240], rdx
 cmp eax, 99
 je snoch65_n13_α
 jmp xgvcat97_0d
xgvcat97_0b:
 jmp snoch65_n13_α
xgvcat97_0d:
bb60_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S0]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 280], rax
 jmp xgvcat105_1d
 xgvcat105_1b:
 jmp snoch65_n13_α
xgvcat105_1d:
bb61_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 208]
 call str_concat_d@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp snoch65_n21_α
 snoch65_n19_β:
 jmp snoch65_n13_α
snoch65_n20_α:
# IR_VAR
bb62_α:
 mov rdi, qword ptr [rip + .Lx109_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp snoch65_n22_α
 snoch65_n20_β:
 jmp flat_γ
.Lx109_0:
 .quad .Lx109_0_s
.Lx109_0_s:
 .string "T2"
snoch65_n21_α:
bb63_α:
# IR_ASSIGN
 lea rdi, [rip + .S0]
 mov rsi, qword ptr [r12 + 288]
 mov rdx, qword ptr [r12 + 296]
 call rt_gvar_assign_descr@PLT
 jmp snoch65_n9_α
 snoch65_n21_β:
 jmp snoch65_n13_α
snoch65_n22_α:
# IR_VAR
bb64_α:
 mov rdi, qword ptr [rip + .Lx113_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp snoch65_n23_α
 snoch65_n22_β:
 jmp flat_γ
.Lx113_0:
 .quad .Lx113_0_s
.Lx113_0_s:
 .string "T1"
snoch65_n23_α:
bb65_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S10]
 lea rsi, [rip + .S8]
 mov rdx, 1
 call rt_gvar_arith@PLT
 mov qword ptr [r12 + 336], rax
 jmp snoch65_n24_α
 snoch65_n23_β:
 jmp flat_γ
snoch65_n24_α:
# IR_LIT_S
bb66_α:
 mov qword ptr [r12 + 344], 1
 mov rax, qword ptr [rip + .Lx116_0]
 mov qword ptr [r12 + 352], rax
 jmp xgvcat115_0d
 xgvcat115_0b:
 jmp flat_γ
.Lx116_0:
 .quad .Lx116_0_s
.Lx116_0_s:
 .string "ms: "
xgvcat115_0d:
bb67_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S10]
 lea rsi, [rip + .S8]
 mov rdx, 1
 call rt_gvar_arith@PLT
 mov qword ptr [r12 + 360], rax
 jmp xgvcat117_1d
 xgvcat117_1b:
 jmp flat_γ
xgvcat117_1d:
bb68_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 344]
 mov rsi, qword ptr [r12 + 352]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 336]
 call str_concat_d@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp snoch65_n25_α
 snoch65_n24_β:
 jmp flat_γ
snoch65_n25_α:
bb69_α:
# IR_ASSIGN
 lea rdi, [rip + .S11]
 mov rsi, qword ptr [r12 + 368]
 mov rdx, qword ptr [r12 + 376]
 call rt_gvar_assign_descr@PLT
 jmp flat_γ
 snoch65_n25_β:
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
