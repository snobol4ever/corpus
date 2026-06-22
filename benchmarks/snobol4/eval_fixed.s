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
bb5_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn6: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn6]
 lea rsi, [r12 + 16]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 cmp eax, 99
 je snoch0_n6_α
 jmp snoch0_n5_α
 snoch0_n4_β:
 jmp snoch0_n6_α
snoch0_n5_α:
bb6_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S2]
 mov rsi, qword ptr [r12 + 0]
 mov rdx, qword ptr [r12 + 8]
 call rt_gvar_assign_descr@PLT
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
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S3]
 movabs rsi, 10
 call rt_gvar_assign_int@PLT
 jmp snoch0_n8_α
 snoch0_n7_β:
 jmp snoch0_n8_α
snoch0_n8_α:
# IR_LIT_scalar
bb9_α:
 jmp snoch0_n9_α
 snoch0_n8_β:
 jmp snoch0_n10_α
snoch0_n9_α:
bb10_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S4]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch0_n10_α
 snoch0_n9_β:
 jmp snoch0_n10_α
snoch0_n10_α:
# IR_VAR
bb11_α:
 mov rdi, qword ptr [rip + .Lx14_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg12_done
 xgvarg12_β:
 jmp snoch0_n12_α
.Lx14_0:
 .quad .Lx14_0_s
.Lx14_0_s:
 .string "N"
xgvarg12_done:
# IR_LIT_I
bb12_α:
 mov qword ptr [r12 + 32], 6
 mov rax, qword ptr [rip + .Lx16_0]
 mov qword ptr [r12 + 40], rax
 jmp xgvarg15_done
 xgvarg15_β:
 jmp snoch0_n12_α
.Lx16_0:
 .quad 1000000
xgvarg15_done:
bb13_α:
# BOX IR_CALL LT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+64]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 72], rax
# marshal arg1 = producer-box slot [r12+32] -> [r12+80]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 88], rax
  .section .rodata
  .Lbynamefn18: .string "LT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn18]
 lea rsi, [r12 + 64]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je snoch0_n12_α
 jmp snoch0_n11_α
snoch0_n10_β:
 jmp snoch0_n12_α
snoch0_n11_α:
# IR_VAR
bb14_α:
 mov rdi, qword ptr [rip + .Lx20_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp snoch0_n13_α
 snoch0_n11_β:
 jmp snoch0_n12_α
.Lx20_0:
 .quad .Lx20_0_s
.Lx20_0_s:
 .string "N"
snoch0_n12_α:
bb15_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn22: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn22]
 lea rsi, [r12 + 128]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je snoch0_n15_α
 jmp snoch0_n14_α
 snoch0_n12_β:
 jmp snoch0_n15_α
snoch0_n13_α:
# IR_LIT_scalar
bb16_α:
 jmp snoch0_n16_α
 snoch0_n13_β:
 jmp snoch0_n12_α
snoch0_n14_α:
bb17_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S5]
 mov rsi, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 call rt_gvar_assign_descr@PLT
 jmp snoch0_n15_α
 snoch0_n14_β:
 jmp snoch0_n15_α
snoch0_n15_α:
bb18_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 128], 0
 lea rax, [rip + .S7]
 mov qword ptr [r12 + 136], rax
 mov dword ptr [r12 + 144], 1
 lea rax, [rip + .S8]
 mov qword ptr [r12 + 152], rax
 lea rdi, [rip + .S6]
 lea rsi, [r12 + 128]
 mov edx, 2
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch0_n17_α
 snoch0_n15_β:
 jmp snoch0_n17_α
snoch0_n16_α:
bb19_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S4]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 160], rax
 jmp snoch0_n18_α
 snoch0_n16_β:
 jmp snoch0_n12_α
snoch0_n17_α:
# IR_LIT_scalar
bb20_α:
 jmp snoch0_n19_α
 snoch0_n17_β:
 jmp flat_γ
snoch0_n18_α:
# IR_VAR
bb21_α:
 mov rdi, qword ptr [rip + .Lx31_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 168], rax
 mov qword ptr [r12 + 176], rdx
 jmp xgvarg29_done
 xgvarg29_β:
 jmp snoch0_n12_α
.Lx31_0:
 .quad .Lx31_0_s
.Lx31_0_s:
 .string "N"
xgvarg29_done:
# IR_LIT_I
bb22_α:
 mov qword ptr [r12 + 32], 6
 mov rax, qword ptr [rip + .Lx33_0]
 mov qword ptr [r12 + 40], rax
 jmp xgvarg32_done
 xgvarg32_β:
 jmp snoch0_n12_α
.Lx33_0:
 .quad 1000000
xgvarg32_done:
bb23_α:
# BOX IR_CALL LT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+200]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 200], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 208], rax
# marshal arg1 = producer-box slot [r12+32] -> [r12+216]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 216], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 224], rax
  .section .rodata
  .Lbynamefn35: .string "LT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn35]
 lea rsi, [r12 + 200]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 184], rax
 mov qword ptr [r12 + 192], rdx
 cmp eax, 99
 je snoch0_n12_α
 jmp xgvcat28_0d
xgvcat28_0b:
 jmp snoch0_n12_α
xgvcat28_0d:
bb24_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S4]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 232], rax
 jmp xgvcat36_1d
 xgvcat36_1b:
 jmp snoch0_n12_α
xgvcat36_1d:
bb25_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 48]
 mov rsi, qword ptr [r12 + 56]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 160]
 call str_concat_d@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp snoch0_n20_α
 snoch0_n18_β:
 jmp snoch0_n12_α
snoch0_n19_α:
# IR_VAR
bb26_α:
 mov rdi, qword ptr [rip + .Lx40_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp snoch0_n21_α
 snoch0_n19_β:
 jmp flat_γ
.Lx40_0:
 .quad .Lx40_0_s
.Lx40_0_s:
 .string "T2"
snoch0_n20_α:
bb27_α:
# IR_ASSIGN
 lea rdi, [rip + .S4]
 mov rsi, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 call rt_gvar_assign_descr@PLT
 jmp snoch0_n22_α
 snoch0_n20_β:
 jmp snoch0_n12_α
snoch0_n21_α:
# IR_VAR
bb28_α:
 mov rdi, qword ptr [rip + .Lx44_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp snoch0_n23_α
 snoch0_n21_β:
 jmp flat_γ
.Lx44_0:
 .quad .Lx44_0_s
.Lx44_0_s:
 .string "T1"
snoch0_n22_α:
# IR_LIT_S
bb29_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx46_0]
 mov qword ptr [r12 + 296], rax
 jmp xgvarg45_done
 xgvarg45_β:
 jmp snoch0_n10_α
.Lx46_0:
 .quad .Lx46_0_s
.Lx46_0_s:
 .string "X + 1"
xgvarg45_done:
bb30_α:
# BOX IR_CALL EVAL(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+288] -> [r12+320]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 328], rax
  .section .rodata
  .Lbynamefn48: .string "EVAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn48]
 lea rsi, [r12 + 320]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je snoch0_n10_α
 jmp snoch0_n24_α
snoch0_n22_β:
 jmp snoch0_n10_α
snoch0_n23_α:
bb31_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S5]
 lea rsi, [rip + .S2]
 mov rdx, 1
 call rt_gvar_arith@PLT
 mov qword ptr [r12 + 336], rax
 jmp snoch0_n25_α
 snoch0_n23_β:
 jmp flat_γ
snoch0_n24_α:
bb32_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S8]
 mov rsi, qword ptr [r12 + 304]
 mov rdx, qword ptr [r12 + 312]
 call rt_gvar_assign_descr@PLT
 jmp snoch0_n10_α
 snoch0_n24_β:
 jmp snoch0_n10_α
snoch0_n25_α:
# IR_LIT_S
bb33_α:
 mov qword ptr [r12 + 344], 1
 mov rax, qword ptr [rip + .Lx52_0]
 mov qword ptr [r12 + 352], rax
 jmp xgvcat51_0d
 xgvcat51_0b:
 jmp flat_γ
.Lx52_0:
 .quad .Lx52_0_s
.Lx52_0_s:
 .string "ms: "
xgvcat51_0d:
bb34_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S5]
 lea rsi, [rip + .S2]
 mov rdx, 1
 call rt_gvar_arith@PLT
 mov qword ptr [r12 + 360], rax
 jmp xgvcat53_1d
 xgvcat53_1b:
 jmp flat_γ
xgvcat53_1d:
bb35_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 344]
 mov rsi, qword ptr [r12 + 352]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 336]
 call str_concat_d@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp snoch0_n26_α
 snoch0_n25_β:
 jmp flat_γ
snoch0_n26_α:
bb36_α:
# IR_ASSIGN
 lea rdi, [rip + .S6]
 mov rsi, qword ptr [r12 + 368]
 mov rdx, qword ptr [r12 + 376]
 call rt_gvar_assign_descr@PLT
 jmp flat_γ
 snoch0_n26_β:
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
.S2: .string "T1"
.S3: .string "X"
.S4: .string "N"
.S5: .string "T2"
.S6: .string "OUTPUT"
.S7: .string "result: "
.S8: .string "R"
.text
