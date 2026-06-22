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
# IR_LIT_scalar
bb5_α:
 jmp snoch0_n5_α
 snoch0_n4_β:
 jmp snoch0_n6_α
snoch0_n5_α:
bb6_α:
# IR_ASSIGN
 lea rdi, [rip + .S2]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch0_n6_α
 snoch0_n5_β:
 jmp snoch0_n6_α
snoch0_n6_α:
# IR_LIT_scalar
bb7_α:
 jmp snoch0_n7_α
 snoch0_n6_β:
 jmp snoch0_n8_α
snoch0_n7_α:
bb8_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S3]
 lea rsi, [rip + .S4]
 call rt_gvar_assign_str@PLT
 jmp snoch0_n8_α
 snoch0_n7_β:
 jmp snoch0_n8_α
snoch0_n8_α:
bb9_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn10: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn10]
 lea rsi, [r12 + 16]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 cmp eax, 99
 je snoch0_n10_α
 jmp snoch0_n9_α
 snoch0_n8_β:
 jmp snoch0_n10_α
snoch0_n9_α:
bb10_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S5]
 mov rsi, qword ptr [r12 + 0]
 mov rdx, qword ptr [r12 + 8]
 call rt_gvar_assign_descr@PLT
 jmp snoch0_n10_α
 snoch0_n9_β:
 jmp snoch0_n10_α
snoch0_n10_α:
# IR_LIT_scalar
bb11_α:
 jmp snoch0_n11_α
 snoch0_n10_β:
 jmp snoch0_n12_α
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
 mov rdi, qword ptr [rip + .Lx15_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp snoch0_n13_α
 snoch0_n12_β:
 jmp snoch0_n14_α
.Lx15_0:
 .quad .Lx15_0_s
.Lx15_0_s:
 .string "S"
snoch0_n13_α:
# IR_SUBJECT
bb14_α:
 lea rdi, [rip + .S3]
 lea rsi, [r12 + 32]
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_subject_load_nv@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp xscan16_sγ
 xscan16_sβ:
 jmp snoch0_n14_α
xscan16_sγ:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_begin@PLT
 mov rsp, rbx
 pop rbx
# IR_MATCH_HEAD
bb15_α:
 mov r13, qword ptr [r12 + 32]
 mov r15d, dword ptr [r12 + 40]
 mov dword ptr [r12 + 48], 0
 lea r10, [r12 + 56]
 jmp smatch19_retry
 snoch0_n13_β:
 jmp xscan16_dfail
smatch19_retry:
# IR_MATCH_RETRY
 mov r14d, dword ptr [r12 + 48]
# IR_MATCH_DEFER
bb17_α:
 lea rdi, [rip + .S7]
 mov esi, 0
 mov edx, r14d
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_defer_match@PLT
 mov rsp, rbx
 pop rbx
 test eax, eax
 js smatch19_adv
 mov r14d, eax
 jmp xscan16_dok
 smatch19_elemb:
 jmp smatch19_adv
smatch19_adv:
# IR_MATCH_ADVANCE
 add dword ptr [r12 + 48], 1
 mov eax, dword ptr [r12 + 48]
 cmp eax, r15d
 jg xscan16_dfail
 lea rcx, [rip + kw_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne xscan16_dfail
 jmp smatch19_retry
xscan16_dok:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_ok@PLT
 mov rsp, rbx
 pop rbx
jmp snoch0_n15_α
xscan16_dfail:
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_dcap_end_fail@PLT
 mov rsp, rbx
 pop rbx
jmp snoch0_n14_α
snoch0_n14_α:
bb19_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn25: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn25]
 lea rsi, [r12 + 80]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je snoch0_n17_α
 jmp snoch0_n16_α
 snoch0_n14_β:
 jmp snoch0_n17_α
snoch0_n15_α:
# IR_VAR
bb20_α:
 mov rdi, qword ptr [rip + .Lx28_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xgvarg26_done
 xgvarg26_β:
 jmp snoch0_n14_α
.Lx28_0:
 .quad .Lx28_0_s
.Lx28_0_s:
 .string "N"
xgvarg26_done:
# IR_LIT_I
bb21_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx30_0]
 mov qword ptr [r12 + 104], rax
 jmp xgvarg29_done
 xgvarg29_β:
 jmp snoch0_n14_α
.Lx30_0:
 .quad 500000
xgvarg29_done:
bb22_α:
# BOX IR_CALL LT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+80] -> [r12+128]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 136], rax
# marshal arg1 = producer-box slot [r12+96] -> [r12+144]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lbynamefn32: .string "LT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn32]
 lea rsi, [r12 + 128]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je snoch0_n14_α
 jmp snoch0_n18_α
snoch0_n15_β:
 jmp snoch0_n14_α
snoch0_n16_α:
bb23_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S8]
 mov rsi, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 call rt_gvar_assign_descr@PLT
 jmp snoch0_n17_α
 snoch0_n16_β:
 jmp snoch0_n17_α
snoch0_n17_α:
bb24_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 160], 0
 lea rax, [rip + .S10]
 mov qword ptr [r12 + 168], rax
 mov dword ptr [r12 + 176], 1
 lea rax, [rip + .S6]
 mov qword ptr [r12 + 184], rax
 lea rdi, [rip + .S9]
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
 jmp snoch0_n19_α
 snoch0_n17_β:
 jmp snoch0_n19_α
snoch0_n18_α:
# IR_VAR
bb25_α:
 mov rdi, qword ptr [rip + .Lx36_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp snoch0_n20_α
 snoch0_n18_β:
 jmp snoch0_n14_α
.Lx36_0:
 .quad .Lx36_0_s
.Lx36_0_s:
 .string "N"
snoch0_n19_α:
# IR_LIT_scalar
bb26_α:
 jmp snoch0_n21_α
 snoch0_n19_β:
 jmp flat_γ
snoch0_n20_α:
# IR_LIT_scalar
bb27_α:
 jmp snoch0_n22_α
 snoch0_n20_β:
 jmp snoch0_n14_α
snoch0_n21_α:
# IR_VAR
bb28_α:
 mov rdi, qword ptr [rip + .Lx40_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp snoch0_n23_α
 snoch0_n21_β:
 jmp flat_γ
.Lx40_0:
 .quad .Lx40_0_s
.Lx40_0_s:
 .string "T2"
snoch0_n22_α:
bb29_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S6]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 224], rax
 jmp snoch0_n24_α
 snoch0_n22_β:
 jmp snoch0_n14_α
snoch0_n23_α:
# IR_VAR
bb30_α:
 mov rdi, qword ptr [rip + .Lx43_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 232], rax
 mov qword ptr [r12 + 240], rdx
 jmp snoch0_n25_α
 snoch0_n23_β:
 jmp flat_γ
.Lx43_0:
 .quad .Lx43_0_s
.Lx43_0_s:
 .string "T1"
snoch0_n24_α:
# IR_VAR
bb31_α:
 mov rdi, qword ptr [rip + .Lx47_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 248], rax
 mov qword ptr [r12 + 256], rdx
 jmp xgvarg45_done
 xgvarg45_β:
 jmp snoch0_n14_α
.Lx47_0:
 .quad .Lx47_0_s
.Lx47_0_s:
 .string "N"
xgvarg45_done:
# IR_LIT_I
bb32_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx49_0]
 mov qword ptr [r12 + 104], rax
 jmp xgvarg48_done
 xgvarg48_β:
 jmp snoch0_n14_α
.Lx49_0:
 .quad 500000
xgvarg48_done:
bb33_α:
# BOX IR_CALL LT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+80] -> [r12+280]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 280], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 288], rax
# marshal arg1 = producer-box slot [r12+96] -> [r12+296]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 296], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 304], rax
  .section .rodata
  .Lbynamefn51: .string "LT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn51]
 lea rsi, [r12 + 280]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 264], rax
 mov qword ptr [r12 + 272], rdx
 cmp eax, 99
 je snoch0_n14_α
 jmp xgvcat44_0d
xgvcat44_0b:
 jmp snoch0_n14_α
xgvcat44_0d:
bb34_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S6]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 312], rax
 jmp xgvcat52_1d
 xgvcat52_1b:
 jmp snoch0_n14_α
xgvcat52_1d:
bb35_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 224]
 call str_concat_d@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp snoch0_n26_α
 snoch0_n24_β:
 jmp snoch0_n14_α
snoch0_n25_α:
bb36_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S8]
 lea rsi, [rip + .S5]
 mov rdx, 1
 call rt_gvar_arith@PLT
 mov qword ptr [r12 + 336], rax
 jmp snoch0_n27_α
 snoch0_n25_β:
 jmp flat_γ
snoch0_n26_α:
bb37_α:
# IR_ASSIGN
 lea rdi, [rip + .S6]
 mov rsi, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 call rt_gvar_assign_descr@PLT
 jmp snoch0_n12_α
 snoch0_n26_β:
 jmp snoch0_n14_α
snoch0_n27_α:
# IR_LIT_S
bb38_α:
 mov qword ptr [r12 + 344], 1
 mov rax, qword ptr [rip + .Lx59_0]
 mov qword ptr [r12 + 352], rax
 jmp xgvcat58_0d
 xgvcat58_0b:
 jmp flat_γ
.Lx59_0:
 .quad .Lx59_0_s
.Lx59_0_s:
 .string "ms: "
xgvcat58_0d:
bb39_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S8]
 lea rsi, [rip + .S5]
 mov rdx, 1
 call rt_gvar_arith@PLT
 mov qword ptr [r12 + 360], rax
 jmp xgvcat60_1d
 xgvcat60_1b:
 jmp flat_γ
xgvcat60_1d:
bb40_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 344]
 mov rsi, qword ptr [r12 + 352]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 336]
 call str_concat_d@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp snoch0_n28_α
 snoch0_n27_β:
 jmp flat_γ
snoch0_n28_α:
bb41_α:
# IR_ASSIGN
 lea rdi, [rip + .S9]
 mov rsi, qword ptr [r12 + 368]
 mov rdx, qword ptr [r12 + 376]
 call rt_gvar_assign_descr@PLT
 jmp flat_γ
 snoch0_n28_β:
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
.S0: .string "TRIM"
.S1: .string "STLIMIT"
.S2: .string "ANCHOR"
.S3: .string "S"
.S4: .string "xxxxxxxxxxbbbccccddddaaaaxxxxxxxxxxbbbccccddddaaaa"
.S5: .string "T1"
.S6: .string "N"
.S7: .string "PAT"
.S8: .string "T2"
.S9: .string "OUTPUT"
.S10: .string "result: "
.text
