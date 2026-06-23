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
 lea rdi, [rip + .S2]
 call rt_bomb@PLT
 ud2
snoch0_n5_α:
snoch0_n5_β:
jmp ROMAN_ω
jmp ROMAN_ω
snoch0_n6_α:
# IR_VAR
bb13_α:
 mov rdi, qword ptr [rip + .Lx21_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 jmp xgvarg19_done
 xgvarg19_β:
 jmp snoch0_n5_α
.Lx21_0:
 .quad .Lx21_0_s
.Lx21_0_s:
 .string "N"
xgvarg19_done:
bb14_α:
# BOX IR_CALL ROMAN(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+48] -> [r12+80]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 88], rax
  .section .rodata
  .Lprocfn23: .string "ROMAN"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn23]
 lea rsi, [r12 + 80]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je snoch0_n5_α
 jmp xgvarg18_done
xgvarg18_β:
 jmp snoch0_n5_α
xgvarg18_done:
# IR_LIT_S
bb15_α:
 mov qword ptr [r12 + 96], 1
 mov rax, qword ptr [rip + .Lx25_0]
 mov qword ptr [r12 + 104], rax
 jmp xgvarg24_done
 xgvarg24_β:
 jmp snoch0_n5_α
.Lx25_0:
 .quad .Lx25_0_s
.Lx25_0_s:
 .string "IVXLCDM"
xgvarg24_done:
# IR_LIT_S
bb16_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx27_0]
 mov qword ptr [r12 + 120], rax
 jmp xgvarg26_done
 xgvarg26_β:
 jmp snoch0_n5_α
.Lx27_0:
 .quad .Lx27_0_s
.Lx27_0_s:
 .string "XLCDM**"
xgvarg26_done:
bb17_α:
# BOX IR_CALL REPLACE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+64] -> [r12+144]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 152], rax
# marshal arg1 = producer-box slot [r12+96] -> [r12+160]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 168], rax
# marshal arg2 = producer-box slot [r12+112] -> [r12+176]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 184], rax
  .section .rodata
  .Lbynamefn29: .string "REPLACE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn29]
 lea rsi, [r12 + 144]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je snoch0_n5_α
 jmp snoch0_n7_α
snoch0_n6_β:
 jmp snoch0_n5_α
snoch0_n7_α:
# IR_VAR
bb18_α:
 mov rdi, qword ptr [rip + .Lx31_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp snoch0_n8_α
 snoch0_n7_β:
 jmp snoch0_n5_α
.Lx31_0:
 .quad .Lx31_0_s
.Lx31_0_s:
 .string "T"
snoch0_n8_α:
# IR_VAR
bb19_α:
 mov rdi, qword ptr [rip + .Lx36_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xgvarg34_done
 xgvarg34_β:
 jmp snoch0_n5_α
.Lx36_0:
 .quad .Lx36_0_s
.Lx36_0_s:
 .string "N"
xgvarg34_done:
bb20_α:
# BOX IR_CALL ROMAN(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+48] -> [r12+240]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 248], rax
  .section .rodata
  .Lprocfn38: .string "ROMAN"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn38]
 lea rsi, [r12 + 240]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je snoch0_n5_α
 jmp xgvarg33_done
xgvarg33_β:
 jmp snoch0_n5_α
xgvarg33_done:
# IR_LIT_S
bb21_α:
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx40_0]
 mov qword ptr [r12 + 264], rax
 jmp xgvarg39_done
 xgvarg39_β:
 jmp snoch0_n5_α
.Lx40_0:
 .quad .Lx40_0_s
.Lx40_0_s:
 .string "IVXLCDM"
xgvarg39_done:
# IR_LIT_S
bb22_α:
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx42_0]
 mov qword ptr [r12 + 280], rax
 jmp xgvarg41_done
 xgvarg41_β:
 jmp snoch0_n5_α
.Lx42_0:
 .quad .Lx42_0_s
.Lx42_0_s:
 .string "XLCDM**"
xgvarg41_done:
bb23_α:
# BOX IR_CALL REPLACE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+64] -> [r12+304]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 312], rax
# marshal arg1 = producer-box slot [r12+96] -> [r12+320]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 328], rax
# marshal arg2 = producer-box slot [r12+112] -> [r12+336]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 344], rax
  .section .rodata
  .Lbynamefn44: .string "REPLACE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn44]
 lea rsi, [r12 + 304]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je snoch0_n5_α
 jmp xgvcat32_0d
xgvcat32_0b:
 jmp snoch0_n5_α
xgvcat32_0d:
# IR_VAR
bb24_α:
 mov rdi, qword ptr [rip + .Lx47_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xgvcat45_1d
 xgvcat45_1b:
 jmp snoch0_n5_α
.Lx47_0:
 .quad .Lx47_0_s
.Lx47_0_s:
 .string "T"
xgvcat45_1d:
bb25_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 mov rdx, qword ptr [r12 + 192]
 mov rcx, qword ptr [r12 + 200]
 call str_concat_d@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp snoch0_n9_α
 snoch0_n8_β:
 jmp snoch0_n5_α
snoch0_n9_α:
bb26_α:
# IR_ASSIGN
 lea rdi, [rip + .S3]
 mov rsi, qword ptr [r12 + 368]
 mov rdx, qword ptr [r12 + 376]
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
  mov esi, 384
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
snoch51_n0_α:
# IR_LIT_scalar
bb27_α:
 jmp snoch51_n1_α
 snoch51_n0_β:
 jmp snoch51_n2_α
snoch51_n1_α:
bb28_α:
# IR_ASSIGN
 lea rdi, [rip + .S4]
 movabs rsi, 1
 call rt_gvar_assign_int@PLT
 jmp snoch51_n2_α
 snoch51_n1_β:
 jmp snoch51_n2_α
snoch51_n2_α:
# IR_LIT_scalar
bb29_α:
 jmp snoch51_n3_α
 snoch51_n2_β:
 jmp snoch51_n4_α
snoch51_n3_α:
bb30_α:
# IR_ASSIGN
 lea rdi, [rip + .S5]
 movabs rsi, 1000000000
 call rt_gvar_assign_int@PLT
 jmp snoch51_n4_α
 snoch51_n3_β:
 jmp snoch51_n4_α
snoch51_n4_α:
bb31_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S6]
 call rt_proc_define@PLT
 jmp snoch51_n5_α
 snoch51_n4_β:
 jmp snoch51_n5_α
snoch51_n5_α:
bb32_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn58: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn58]
 lea rsi, [r12 + 16]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 cmp eax, 99
 je snoch51_n7_α
 jmp snoch51_n6_α
 snoch51_n5_β:
 jmp snoch51_n7_α
snoch51_n6_α:
bb33_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S7]
 mov rsi, qword ptr [r12 + 0]
 mov rdx, qword ptr [r12 + 8]
 call rt_gvar_assign_descr@PLT
 jmp snoch51_n7_α
 snoch51_n6_β:
 jmp snoch51_n7_α
snoch51_n7_α:
# IR_LIT_scalar
bb34_α:
 jmp snoch51_n8_α
 snoch51_n7_β:
 jmp snoch51_n9_α
snoch51_n8_α:
bb35_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S0]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch51_n9_α
 snoch51_n8_β:
 jmp snoch51_n9_α
snoch51_n9_α:
# IR_LIT_S
bb36_α:
 mov qword ptr [r12 + 16], 1
 mov rax, qword ptr [rip + .Lx63_0]
 mov qword ptr [r12 + 24], rax
 jmp xgvarg62_done
 xgvarg62_β:
 jmp snoch51_n11_α
.Lx63_0:
 .quad .Lx63_0_s
.Lx63_0_s:
 .string "1776"
xgvarg62_done:
bb37_α:
# BOX IR_CALL ROMAN(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lprocfn65: .string "ROMAN"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn65]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch51_n11_α
 jmp snoch51_n10_α
snoch51_n9_β:
 jmp snoch51_n11_α
snoch51_n10_α:
bb38_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S8]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch51_n11_α
 snoch51_n10_β:
 jmp snoch51_n11_α
snoch51_n11_α:
# IR_VAR
bb39_α:
 mov rdi, qword ptr [rip + .Lx69_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xgvarg67_done
 xgvarg67_β:
 jmp snoch51_n13_α
.Lx69_0:
 .quad .Lx69_0_s
.Lx69_0_s:
 .string "N"
xgvarg67_done:
# IR_LIT_I
bb40_α:
 mov qword ptr [r12 + 80], 6
 mov rax, qword ptr [rip + .Lx71_0]
 mov qword ptr [r12 + 88], rax
 jmp xgvarg70_done
 xgvarg70_β:
 jmp snoch51_n13_α
.Lx71_0:
 .quad 100000
xgvarg70_done:
bb41_α:
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
  .Lbynamefn73: .string "LT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn73]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je snoch51_n13_α
 jmp snoch51_n12_α
snoch51_n11_β:
 jmp snoch51_n13_α
snoch51_n12_α:
# IR_VAR
bb42_α:
 mov rdi, qword ptr [rip + .Lx75_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp snoch51_n14_α
 snoch51_n12_β:
 jmp snoch51_n13_α
.Lx75_0:
 .quad .Lx75_0_s
.Lx75_0_s:
 .string "N"
snoch51_n13_α:
bb43_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn77: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn77]
 lea rsi, [r12 + 176]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je snoch51_n16_α
 jmp snoch51_n15_α
 snoch51_n13_β:
 jmp snoch51_n16_α
snoch51_n14_α:
# IR_LIT_scalar
bb44_α:
 jmp snoch51_n17_α
 snoch51_n14_β:
 jmp snoch51_n13_α
snoch51_n15_α:
bb45_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S9]
 mov rsi, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 call rt_gvar_assign_descr@PLT
 jmp snoch51_n16_α
 snoch51_n15_β:
 jmp snoch51_n16_α
snoch51_n16_α:
bb46_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 176], 0
 lea rax, [rip + .S11]
 mov qword ptr [r12 + 184], rax
 mov dword ptr [r12 + 192], 1
 lea rax, [rip + .S8]
 mov qword ptr [r12 + 200], rax
 lea rdi, [rip + .S10]
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
 jmp snoch51_n18_α
 snoch51_n16_β:
 jmp snoch51_n18_α
snoch51_n17_α:
bb47_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S0]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 208], rax
 jmp snoch51_n19_α
 snoch51_n17_β:
 jmp snoch51_n13_α
snoch51_n18_α:
# IR_LIT_scalar
bb48_α:
 jmp snoch51_n20_α
 snoch51_n18_β:
 jmp flat_γ
snoch51_n19_α:
# IR_VAR
bb49_α:
 mov rdi, qword ptr [rip + .Lx86_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 216], rax
 mov qword ptr [r12 + 224], rdx
 jmp xgvarg84_done
 xgvarg84_β:
 jmp snoch51_n13_α
.Lx86_0:
 .quad .Lx86_0_s
.Lx86_0_s:
 .string "N"
xgvarg84_done:
# IR_LIT_I
bb50_α:
 mov qword ptr [r12 + 80], 6
 mov rax, qword ptr [rip + .Lx88_0]
 mov qword ptr [r12 + 88], rax
 jmp xgvarg87_done
 xgvarg87_β:
 jmp snoch51_n13_α
.Lx88_0:
 .quad 100000
xgvarg87_done:
bb51_α:
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
  .Lbynamefn90: .string "LT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn90]
 lea rsi, [r12 + 248]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 232], rax
 mov qword ptr [r12 + 240], rdx
 cmp eax, 99
 je snoch51_n13_α
 jmp xgvcat83_0d
xgvcat83_0b:
 jmp snoch51_n13_α
xgvcat83_0d:
bb52_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S0]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 280], rax
 jmp xgvcat91_1d
 xgvcat91_1b:
 jmp snoch51_n13_α
xgvcat91_1d:
bb53_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 208]
 call str_concat_d@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp snoch51_n21_α
 snoch51_n19_β:
 jmp snoch51_n13_α
snoch51_n20_α:
# IR_VAR
bb54_α:
 mov rdi, qword ptr [rip + .Lx95_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp snoch51_n22_α
 snoch51_n20_β:
 jmp flat_γ
.Lx95_0:
 .quad .Lx95_0_s
.Lx95_0_s:
 .string "T2"
snoch51_n21_α:
bb55_α:
# IR_ASSIGN
 lea rdi, [rip + .S0]
 mov rsi, qword ptr [r12 + 288]
 mov rdx, qword ptr [r12 + 296]
 call rt_gvar_assign_descr@PLT
 jmp snoch51_n9_α
 snoch51_n21_β:
 jmp snoch51_n13_α
snoch51_n22_α:
# IR_VAR
bb56_α:
 mov rdi, qword ptr [rip + .Lx99_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp snoch51_n23_α
 snoch51_n22_β:
 jmp flat_γ
.Lx99_0:
 .quad .Lx99_0_s
.Lx99_0_s:
 .string "T1"
snoch51_n23_α:
bb57_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S9]
 lea rsi, [rip + .S7]
 mov rdx, 1
 call rt_gvar_arith@PLT
 mov qword ptr [r12 + 336], rax
 jmp snoch51_n24_α
 snoch51_n23_β:
 jmp flat_γ
snoch51_n24_α:
# IR_LIT_S
bb58_α:
 mov qword ptr [r12 + 344], 1
 mov rax, qword ptr [rip + .Lx102_0]
 mov qword ptr [r12 + 352], rax
 jmp xgvcat101_0d
 xgvcat101_0b:
 jmp flat_γ
.Lx102_0:
 .quad .Lx102_0_s
.Lx102_0_s:
 .string "ms: "
xgvcat101_0d:
bb59_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S9]
 lea rsi, [rip + .S7]
 mov rdx, 1
 call rt_gvar_arith@PLT
 mov qword ptr [r12 + 360], rax
 jmp xgvcat103_1d
 xgvcat103_1b:
 jmp flat_γ
xgvcat103_1d:
bb60_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 344]
 mov rsi, qword ptr [r12 + 352]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 336]
 call str_concat_d@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp snoch51_n25_α
 snoch51_n24_β:
 jmp flat_γ
snoch51_n25_α:
bb61_α:
# IR_ASSIGN
 lea rdi, [rip + .S10]
 mov rsi, qword ptr [r12 + 368]
 mov rdx, qword ptr [r12 + 376]
 call rt_gvar_assign_descr@PLT
 jmp flat_γ
 snoch51_n25_β:
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
.S2: .string "bb_scan: TEXT(mode-4) non-literal pattern needs native PB-RB graph (pending)"
.S3: .string "ROMAN"
.S4: .string "TRIM"
.S5: .string "STLIMIT"
.S6: .string "ROMAN(N)T"
.S7: .string "T1"
.S8: .string "R"
.S9: .string "T2"
.S10: .string "OUTPUT"
.S11: .string "result: "
.text
