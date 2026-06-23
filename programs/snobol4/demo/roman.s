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
jmp ROMAN_γ
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
  mov esi, 100
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
snoch32_n0_α:
bb21_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S4]
 call rt_proc_define@PLT
 jmp snoch32_n1_α
 snoch32_n0_β:
 jmp snoch32_n1_α
snoch32_n1_α:
# IR_GOTO_DYN
bb22_α:
 mov rdi, qword ptr [rip + .Lx34_0]
 call rt_goto_dyn@PLT
 jmp snoch32_n2_α
 snoch32_n1_β:
 jmp snoch32_n2_α
.Lx34_0:
 .quad .Lx34_0_s
.Lx34_0_s:
 .string "ROMAN_END"
snoch32_n2_α:
# IR_LIT_scalar
bb23_α:
 jmp snoch32_n3_α
 snoch32_n2_β:
 jmp snoch32_n4_α
snoch32_n3_α:
# IR_SUBJECT
bb24_α:
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
 jmp xscan36_sγ
 xscan36_sβ:
 jmp snoch32_n4_α
xscan36_sγ:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_begin@PLT
 mov rsp, rbx
 pop rbx
# IR_MATCH_HEAD
bb25_α:
 mov r13, qword ptr [r12 + 0]
 mov r15d, dword ptr [r12 + 8]
 mov dword ptr [r12 + 16], 0
 lea r10, [r12 + 24]
 jmp smatch39_retry
 snoch32_n3_β:
 jmp xscan36_dfail
smatch39_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 16]
# IR_MATCH_RPOS
bb27_α:
 mov ecx, r15d
 sub ecx, 1
 cmp r14d, ecx
 jne xcat42_ω
 jmp xcat42_γ
 xcat42_left_β:
 jmp xcat42_ω
xcat42_γ:
# IR_MATCH_CAPTURE_SAVE
bb28_α:
 mov dword ptr [r12 + 32], r14d
# IR_MATCH_LEN
bb29_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xcat42_right_ω
 add r14d, 1
 jmp xcap44_γ
 xcat42_right_β:
 jmp xcat42_right_ω
xcap44_γ:
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
 jmp xscan36_dok
xcat42_right_ω:
 jmp xcat42_left_β
smatch39_elemb:
 jmp xcat42_right_β
xcat42_ω:
 jmp smatch39_adv
smatch39_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 16], 1
 mov eax, dword ptr [r12 + 16]
 cmp eax, r15d
 jg xscan36_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan36_dfail
 jmp smatch39_retry
xscan36_dok:
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
jmp snoch32_n5_α
xscan36_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch32_n4_α
snoch32_n4_α:
snoch32_n4_β:
jmp flat_γ
jmp flat_γ
snoch32_n5_α:
# IR_LIT_scalar
bb33_α:
 jmp snoch32_n6_α
 snoch32_n5_β:
 jmp snoch32_n7_α
snoch32_n6_α:
# IR_SUBJECT
bb34_α:
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
 jmp xscan51_sγ
 xscan51_sβ:
 jmp snoch32_n7_α
xscan51_sγ:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_begin@PLT
 mov rsp, rbx
 pop rbx
# IR_MATCH_HEAD
bb35_α:
 mov r13, qword ptr [r12 + 48]
 mov r15d, dword ptr [r12 + 56]
 mov dword ptr [r12 + 64], 0
 lea r10, [r12 + 72]
 jmp smatch54_retry
 snoch32_n6_β:
 jmp xscan51_dfail
smatch54_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 64]
# IR_MATCH_DEFER
bb37_α:
 lea rdi, [rip + .S1]
 mov esi, 0
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_get_pat_fn@PLT
 mov rsp, rbx
 pop rbx
 test rax, rax
 jz .Lx58_0
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
 jne xcat57_ω
 jmp xcat57_γ
.Lx58_0:
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbx
 pop rbx
 test eax, eax
 js xcat57_ω
 mov r14d, eax
 jmp xcat57_γ
 xcat57_left_β:
 jmp xcat57_ω
xcat57_γ:
# IR_MATCH_CAPTURE_SAVE
bb38_α:
 mov dword ptr [r12 + 80], r14d
# IR_MATCH_BREAK
bb39_α:
 mov dword ptr [r12 + 96], 0
.Lx62_0:
 mov eax, r14d
 add eax, dword ptr [r12 + 96]
 cmp eax, r15d
 jge xcat57_right_ω
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 lea rdi, [rip + .S3]
 sub rsp, 8
 call strchr@PLT
 add rsp, 8
 test rax, rax
 jnz .Lx62_1
 add dword ptr [r12 + 96], 1
 jmp .Lx62_0
.Lx62_1:
 mov eax, r14d
 add eax, dword ptr [r12 + 96]
 mov r14d, eax
 jmp xcap59_γ
 xcat57_right_β:
 mov eax, r14d
 sub eax, dword ptr [r12 + 96]
 mov r14d, eax
 jmp xcat57_right_ω
xcap59_γ:
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
 jmp xscan51_dok
xcat57_right_ω:
 jmp xcat57_left_β
smatch54_elemb:
 jmp xcat57_right_β
xcat57_ω:
 jmp smatch54_adv
smatch54_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 64], 1
 mov eax, dword ptr [r12 + 64]
 cmp eax, r15d
 jg xscan51_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan51_dfail
 jmp smatch54_retry
xscan51_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
jmp flat_γ
xscan51_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch32_n7_α
snoch32_n7_α:
snoch32_n7_β:
jmp flat_ω
jmp flat_ω
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
.S1: .string "UNITS"
.S2: .string "0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,"
.S3: .string ","
.S4: .string "ROMAN(N)UNITS"
.text
