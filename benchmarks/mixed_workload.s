  .intel_syntax noprefix
  .text
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
snoch0_n0_α:
# IR_VAR
bb1_α:
 mov rdi, qword ptr [rip + .Lx3_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xgvarg1_done
 xgvarg1_β:
 jmp snoch0_n2_α
.Lx3_0:
 .quad .Lx3_0_s
.Lx3_0_s:
 .string "N"
xgvarg1_done:
# IR_LIT_I
bb2_α:
 mov qword ptr [r12 + 32], 6
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [r12 + 40], rax
 jmp xgvarg4_done
 xgvarg4_β:
 jmp snoch0_n2_α
.Lx5_0:
 .quad 0
xgvarg4_done:
bb3_α:
# BOX IR_CALL EQ(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
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
  .Lbynamefn7: .string "EQ"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn7]
 lea rsi, [r12 + 64]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je snoch0_n2_α
 jmp snoch0_n1_α
snoch0_n0_β:
 jmp snoch0_n2_α
snoch0_n1_α:
# IR_LIT_scalar
bb4_α:
 jmp snoch0_n3_α
 snoch0_n1_β:
 jmp snoch0_n2_α
snoch0_n2_α:
# IR_VAR
bb5_α:
 mov rdi, qword ptr [rip + .Lx10_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp snoch0_n4_α
 snoch0_n2_β:
 jmp snoch0_n5_α
.Lx10_0:
 .quad .Lx10_0_s
.Lx10_0_s:
 .string "N"
snoch0_n3_α:
# IR_VAR
bb6_α:
 mov rdi, qword ptr [rip + .Lx14_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xgvarg12_done
 xgvarg12_β:
 jmp snoch0_n2_α
.Lx14_0:
 .quad .Lx14_0_s
.Lx14_0_s:
 .string "N"
xgvarg12_done:
# IR_LIT_I
bb7_α:
 mov qword ptr [r12 + 32], 6
 mov rax, qword ptr [rip + .Lx16_0]
 mov qword ptr [r12 + 40], rax
 jmp xgvarg15_done
 xgvarg15_β:
 jmp snoch0_n2_α
.Lx16_0:
 .quad 0
xgvarg15_done:
bb8_α:
# BOX IR_CALL EQ(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+144]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 152], rax
# marshal arg1 = producer-box slot [r12+32] -> [r12+160]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lbynamefn18: .string "EQ"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn18]
 lea rsi, [r12 + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je snoch0_n2_α
 jmp xgvcat11_0d
xgvcat11_0b:
 jmp snoch0_n2_α
xgvcat11_0d:
# IR_LIT_I
bb9_α:
 mov qword ptr [r12 + 176], 6
 mov rax, qword ptr [rip + .Lx20_0]
 mov qword ptr [r12 + 184], rax
 jmp xgvcat19_1d
 xgvcat19_1b:
 jmp snoch0_n2_α
.Lx20_0:
 .quad 0
xgvcat19_1d:
bb10_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 48]
 mov rsi, qword ptr [r12 + 56]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 176]
 call str_concat_d@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp snoch0_n6_α
 snoch0_n3_β:
 jmp snoch0_n2_α
snoch0_n4_α:
xgvarg22_done:
bb11_α:
# BOX IR_CALL RSUM(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = inline gvar-arith subexpr -> [r12+224]
   lea rdi, [rip + .S0]
 call rt_gvar_get_int@PLT
 mov qword ptr [r12 + 240], rax
 mov rcx, 1
 mov rax, qword ptr [r12 + 240]
 sub rax, rcx
 mov qword ptr [r12 + 224], 6
 mov qword ptr [r12 + 232], rax
  .section .rodata
  .Lprocfn24: .string "RSUM"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn24]
 lea rsi, [r12 + 224]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je snoch0_n5_α
 jmp snoch0_n7_α
snoch0_n4_β:
 jmp snoch0_n5_α
snoch0_n5_α:
snoch0_n5_β:
jmp RSUM_γ
jmp RSUM_γ
snoch0_n6_α:
bb12_α:
# IR_ASSIGN
 lea rdi, [rip + .S1]
 mov rsi, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 call rt_gvar_assign_descr@PLT
 jmp snoch0_n5_α
 snoch0_n6_β:
 jmp snoch0_n2_α
snoch0_n7_α:
bb13_α:
# IR_BINOP_GVAR_ARITH_SLOT
 lea rdi, [rip + .S0]
 call rt_gvar_get_int@PLT
 mov rcx, qword ptr [r12 + 216]
 add rax, rcx
 mov qword ptr [r12 + 256], rax
 jmp snoch0_n8_α
 snoch0_n7_β:
 jmp snoch0_n5_α
snoch0_n8_α:
bb14_α:
# IR_ASSIGN
 lea rdi, [rip + .S1]
 mov rsi, qword ptr [r12 + 256]
 call rt_gvar_assign_int@PLT
 jmp snoch0_n5_α
 snoch0_n8_β:
 jmp snoch0_n5_α
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
  mov esi, 264
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
snoch30_n0_α:
# IR_LIT_scalar
bb15_α:
 jmp snoch30_n1_α
 snoch30_n0_β:
 jmp snoch30_n2_α
snoch30_n1_α:
bb16_α:
# IR_ASSIGN
 lea rdi, [rip + .S2]
 movabs rsi, 1
 call rt_gvar_assign_int@PLT
 jmp snoch30_n2_α
 snoch30_n1_β:
 jmp snoch30_n2_α
snoch30_n2_α:
# IR_LIT_scalar
bb17_α:
 jmp snoch30_n3_α
 snoch30_n2_β:
 jmp snoch30_n4_α
snoch30_n3_α:
bb18_α:
# IR_ASSIGN
 lea rdi, [rip + .S3]
 movabs rsi, 1000000000
 call rt_gvar_assign_int@PLT
 jmp snoch30_n4_α
 snoch30_n3_β:
 jmp snoch30_n4_α
snoch30_n4_α:
bb19_α:
# IR_CALL_DEFINE
 lea rdi, [rip + .S4]
 call rt_proc_define@PLT
 jmp snoch30_n5_α
 snoch30_n4_β:
 jmp snoch30_n5_α
snoch30_n5_α:
bb20_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn37: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn37]
 lea rsi, [r12 + 16]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 cmp eax, 99
 je snoch30_n7_α
 jmp snoch30_n6_α
 snoch30_n5_β:
 jmp snoch30_n7_α
snoch30_n6_α:
bb21_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S5]
 mov rsi, qword ptr [r12 + 0]
 mov rdx, qword ptr [r12 + 8]
 call rt_gvar_assign_descr@PLT
 jmp snoch30_n7_α
 snoch30_n6_β:
 jmp snoch30_n7_α
snoch30_n7_α:
# IR_LIT_scalar
bb22_α:
 jmp snoch30_n8_α
 snoch30_n7_β:
 jmp snoch30_n9_α
snoch30_n8_α:
bb23_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S6]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch30_n9_α
 snoch30_n8_β:
 jmp snoch30_n9_α
snoch30_n9_α:
# IR_LIT_I
bb24_α:
 mov qword ptr [r12 + 16], 6
 mov rax, qword ptr [rip + .Lx42_0]
 mov qword ptr [r12 + 24], rax
 jmp xgvarg41_done
 xgvarg41_β:
 jmp snoch30_n11_α
.Lx42_0:
 .quad 16
xgvarg41_done:
bb25_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lbynamefn44: .string "TABLE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn44]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch30_n11_α
 jmp snoch30_n10_α
snoch30_n9_β:
 jmp snoch30_n11_α
snoch30_n10_α:
bb26_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S7]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch30_n11_α
 snoch30_n10_β:
 jmp snoch30_n11_α
snoch30_n11_α:
# IR_LIT_scalar
bb27_α:
 jmp snoch30_n12_α
 snoch30_n11_β:
 jmp snoch30_n13_α
snoch30_n12_α:
bb28_α:
# IR_ASSIGN_LIT_S
 lea rdi, [rip + .S8]
 lea rsi, [rip + .S9]
 call rt_gvar_assign_str@PLT
 jmp snoch30_n13_α
 snoch30_n12_β:
 jmp snoch30_n13_α
snoch30_n13_α:
# IR_LIT_scalar
bb29_α:
 jmp snoch30_n14_α
 snoch30_n13_β:
 jmp snoch30_n15_α
snoch30_n14_α:
bb30_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S10]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch30_n15_α
 snoch30_n14_β:
 jmp snoch30_n15_α
snoch30_n15_α:
# IR_LIT_scalar
bb31_α:
 jmp snoch30_n16_α
 snoch30_n15_β:
 jmp snoch30_n17_α
snoch30_n16_α:
 lea rdi, [rip + .S11]
 call rt_bomb@PLT
 ud2
snoch30_n17_α:
# IR_LIT_scalar
bb33_α:
 jmp snoch30_n19_α
 snoch30_n17_β:
 jmp snoch30_n20_α
snoch30_n18_α:
# IR_VAR
bb34_α:
 mov rdi, qword ptr [rip + .Lx54_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp snoch30_n21_α
 snoch30_n18_β:
 jmp snoch30_n15_α
.Lx54_0:
 .quad .Lx54_0_s
.Lx54_0_s:
 .string "IDX"
snoch30_n19_α:
bb35_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S12]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch30_n20_α
 snoch30_n19_β:
 jmp snoch30_n20_α
snoch30_n20_α:
# IR_LIT_scalar
bb36_α:
 jmp snoch30_n22_α
 snoch30_n20_β:
 jmp snoch30_n23_α
snoch30_n21_α:
# IR_LIT_scalar
bb37_α:
 jmp snoch30_n24_α
 snoch30_n21_β:
 jmp snoch30_n15_α
snoch30_n22_α:
bb38_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S13]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch30_n23_α
 snoch30_n22_β:
 jmp snoch30_n23_α
snoch30_n23_α:
# IR_VAR
bb39_α:
 mov rdi, qword ptr [rip + .Lx61_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xgvarg59_done
 xgvarg59_β:
 jmp snoch30_n26_α
.Lx61_0:
 .quad .Lx61_0_s
.Lx61_0_s:
 .string "I"
xgvarg59_done:
# IR_VAR
bb40_α:
 mov rdi, qword ptr [rip + .Lx64_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xgvarg62_done
 xgvarg62_β:
 jmp snoch30_n26_α
.Lx64_0:
 .quad .Lx64_0_s
.Lx64_0_s:
 .string "IDX"
xgvarg62_done:
bb41_α:
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
  .Lbynamefn66: .string "LT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn66]
 lea rsi, [r12 + 128]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je snoch30_n26_α
 jmp snoch30_n25_α
snoch30_n23_β:
 jmp snoch30_n26_α
snoch30_n24_α:
bb42_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S10]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 160], rax
 jmp snoch30_n27_α
 snoch30_n24_β:
 jmp snoch30_n15_α
snoch30_n25_α:
# IR_VAR
bb43_α:
 mov rdi, qword ptr [rip + .Lx69_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 168], rax
 mov qword ptr [r12 + 176], rdx
 jmp snoch30_n28_α
 snoch30_n25_β:
 jmp snoch30_n26_α
.Lx69_0:
 .quad .Lx69_0_s
.Lx69_0_s:
 .string "I"
snoch30_n26_α:
# IR_LIT_I
bb44_α:
 mov qword ptr [r12 + 184], 6
 mov rax, qword ptr [rip + .Lx71_0]
 mov qword ptr [r12 + 192], rax
 jmp xgvarg70_done
 xgvarg70_β:
 jmp snoch30_n30_α
.Lx71_0:
 .quad 10
xgvarg70_done:
bb45_α:
# BOX IR_CALL RSUM(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+184] -> [r12+216]
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 216], rax
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 224], rax
  .section .rodata
  .Lprocfn73: .string "RSUM"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn73]
 lea rsi, [r12 + 216]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 200], rax
 mov qword ptr [r12 + 208], rdx
 cmp eax, 99
 je snoch30_n30_α
 jmp snoch30_n29_α
snoch30_n26_β:
 jmp snoch30_n30_α
snoch30_n27_α:
bb46_α:
# IR_ASSIGN
 lea rdi, [rip + .S10]
 mov rsi, qword ptr [r12 + 160]
 call rt_gvar_assign_int@PLT
 jmp snoch30_n15_α
 snoch30_n27_β:
 jmp snoch30_n15_α
snoch30_n28_α:
# IR_LIT_scalar
bb47_α:
 jmp snoch30_n31_α
 snoch30_n28_β:
 jmp snoch30_n26_α
snoch30_n29_α:
bb48_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S14]
 mov rsi, qword ptr [r12 + 200]
 mov rdx, qword ptr [r12 + 208]
 call rt_gvar_assign_descr@PLT
 jmp snoch30_n30_α
 snoch30_n29_β:
 jmp snoch30_n30_α
snoch30_n30_α:
# IR_VAR
bb49_α:
 mov rdi, qword ptr [rip + .Lx80_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 232], rax
 mov qword ptr [r12 + 240], rdx
 jmp xgvarg78_done
 xgvarg78_β:
 jmp snoch30_n33_α
.Lx80_0:
 .quad .Lx80_0_s
.Lx80_0_s:
 .string "OUTER"
xgvarg78_done:
# IR_LIT_I
bb50_α:
 mov qword ptr [r12 + 248], 6
 mov rax, qword ptr [rip + .Lx82_0]
 mov qword ptr [r12 + 256], rax
 jmp xgvarg81_done
 xgvarg81_β:
 jmp snoch30_n33_α
.Lx82_0:
 .quad 50000
xgvarg81_done:
bb51_α:
# BOX IR_CALL LT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+232] -> [r12+280]
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 280], rax
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 288], rax
# marshal arg1 = producer-box slot [r12+248] -> [r12+296]
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 296], rax
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 304], rax
  .section .rodata
  .Lbynamefn84: .string "LT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn84]
 lea rsi, [r12 + 280]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 264], rax
 mov qword ptr [r12 + 272], rdx
 cmp eax, 99
 je snoch30_n33_α
 jmp snoch30_n32_α
snoch30_n30_β:
 jmp snoch30_n33_α
snoch30_n31_α:
bb52_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S13]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 312], rax
 jmp snoch30_n34_α
 snoch30_n31_β:
 jmp snoch30_n26_α
snoch30_n32_α:
# IR_VAR
bb53_α:
 mov rdi, qword ptr [rip + .Lx87_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp snoch30_n35_α
 snoch30_n32_β:
 jmp snoch30_n33_α
.Lx87_0:
 .quad .Lx87_0_s
.Lx87_0_s:
 .string "OUTER"
snoch30_n33_α:
bb54_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn89: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn89]
 lea rsi, [r12 + 352]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 cmp eax, 99
 je snoch30_n37_α
 jmp snoch30_n36_α
 snoch30_n33_β:
 jmp snoch30_n37_α
snoch30_n34_α:
# IR_VAR
bb55_α:
 mov rdi, qword ptr [rip + .Lx93_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xgvarg91_done
 xgvarg91_β:
 jmp snoch30_n26_α
.Lx93_0:
 .quad .Lx93_0_s
.Lx93_0_s:
 .string "I"
xgvarg91_done:
# IR_VAR
bb56_α:
 mov rdi, qword ptr [rip + .Lx96_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xgvarg94_done
 xgvarg94_β:
 jmp snoch30_n26_α
.Lx96_0:
 .quad .Lx96_0_s
.Lx96_0_s:
 .string "IDX"
xgvarg94_done:
bb57_α:
# BOX IR_CALL LT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+80] -> [r12+400]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 408], rax
# marshal arg1 = producer-box slot [r12+96] -> [r12+416]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 424], rax
  .section .rodata
  .Lbynamefn98: .string "LT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn98]
 lea rsi, [r12 + 400]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je snoch30_n26_α
 jmp xgvcat90_0d
xgvcat90_0b:
 jmp snoch30_n26_α
xgvcat90_0d:
bb58_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S13]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 432], rax
 jmp xgvcat99_1d
 xgvcat99_1b:
 jmp snoch30_n26_α
xgvcat99_1d:
bb59_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 312]
 call str_concat_d@PLT
 mov qword ptr [r12 + 440], rax
 mov qword ptr [r12 + 448], rdx
 jmp snoch30_n38_α
 snoch30_n34_β:
 jmp snoch30_n26_α
snoch30_n35_α:
# IR_LIT_scalar
bb60_α:
 jmp snoch30_n39_α
 snoch30_n35_β:
 jmp snoch30_n33_α
snoch30_n36_α:
bb61_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S15]
 mov rsi, qword ptr [r12 + 336]
 mov rdx, qword ptr [r12 + 344]
 call rt_gvar_assign_descr@PLT
 jmp snoch30_n37_α
 snoch30_n36_β:
 jmp snoch30_n37_α
snoch30_n37_α:
bb62_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 456], 0
 lea rax, [rip + .S17]
 mov qword ptr [r12 + 464], rax
 mov dword ptr [r12 + 472], 1
 lea rax, [rip + .S12]
 mov qword ptr [r12 + 480], rax
 lea rdi, [rip + .S16]
 lea rsi, [r12 + 456]
 mov edx, 2
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch30_n40_α
 snoch30_n37_β:
 jmp snoch30_n40_α
snoch30_n38_α:
bb63_α:
# IR_ASSIGN
 lea rdi, [rip + .S13]
 mov rsi, qword ptr [r12 + 440]
 mov rdx, qword ptr [r12 + 448]
 call rt_gvar_assign_descr@PLT
 jmp snoch30_n26_α
 snoch30_n38_β:
 jmp snoch30_n26_α
snoch30_n39_α:
bb64_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S6]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 488], rax
 jmp snoch30_n41_α
 snoch30_n39_β:
 jmp snoch30_n33_α
snoch30_n40_α:
# IR_LIT_scalar
bb65_α:
 jmp snoch30_n42_α
 snoch30_n40_β:
 jmp flat_γ
snoch30_n41_α:
# IR_VAR
bb66_α:
 mov rdi, qword ptr [rip + .Lx112_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xgvarg110_done
 xgvarg110_β:
 jmp snoch30_n33_α
.Lx112_0:
 .quad .Lx112_0_s
.Lx112_0_s:
 .string "OUTER"
xgvarg110_done:
# IR_LIT_I
bb67_α:
 mov qword ptr [r12 + 248], 6
 mov rax, qword ptr [rip + .Lx114_0]
 mov qword ptr [r12 + 256], rax
 jmp xgvarg113_done
 xgvarg113_β:
 jmp snoch30_n33_α
.Lx114_0:
 .quad 50000
xgvarg113_done:
bb68_α:
# BOX IR_CALL LT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+232] -> [r12+528]
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 536], rax
# marshal arg1 = producer-box slot [r12+248] -> [r12+544]
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 552], rax
  .section .rodata
  .Lbynamefn116: .string "LT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn116]
 lea rsi, [r12 + 528]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je snoch30_n33_α
 jmp xgvcat109_0d
xgvcat109_0b:
 jmp snoch30_n33_α
xgvcat109_0d:
bb69_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S6]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 560], rax
 jmp xgvcat117_1d
 xgvcat117_1b:
 jmp snoch30_n33_α
xgvcat117_1d:
bb70_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 264]
 mov rsi, qword ptr [r12 + 272]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 488]
 call str_concat_d@PLT
 mov qword ptr [r12 + 568], rax
 mov qword ptr [r12 + 576], rdx
 jmp snoch30_n43_α
 snoch30_n41_β:
 jmp snoch30_n33_α
snoch30_n42_α:
# IR_VAR
bb71_α:
 mov rdi, qword ptr [rip + .Lx121_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 584], rax
 mov qword ptr [r12 + 592], rdx
 jmp snoch30_n44_α
 snoch30_n42_β:
 jmp flat_γ
.Lx121_0:
 .quad .Lx121_0_s
.Lx121_0_s:
 .string "T2"
snoch30_n43_α:
bb72_α:
# IR_ASSIGN
 lea rdi, [rip + .S6]
 mov rsi, qword ptr [r12 + 568]
 mov rdx, qword ptr [r12 + 576]
 call rt_gvar_assign_descr@PLT
 jmp snoch30_n9_α
 snoch30_n43_β:
 jmp snoch30_n33_α
snoch30_n44_α:
# IR_VAR
bb73_α:
 mov rdi, qword ptr [rip + .Lx125_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 600], rax
 mov qword ptr [r12 + 608], rdx
 jmp snoch30_n45_α
 snoch30_n44_β:
 jmp flat_γ
.Lx125_0:
 .quad .Lx125_0_s
.Lx125_0_s:
 .string "T1"
snoch30_n45_α:
bb74_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S15]
 lea rsi, [rip + .S5]
 mov rdx, 1
 call rt_gvar_arith@PLT
 mov qword ptr [r12 + 616], rax
 jmp snoch30_n46_α
 snoch30_n45_β:
 jmp flat_γ
snoch30_n46_α:
# IR_LIT_S
bb75_α:
 mov qword ptr [r12 + 624], 1
 mov rax, qword ptr [rip + .Lx128_0]
 mov qword ptr [r12 + 632], rax
 jmp xgvcat127_0d
 xgvcat127_0b:
 jmp flat_γ
.Lx128_0:
 .quad .Lx128_0_s
.Lx128_0_s:
 .string "ms: "
xgvcat127_0d:
bb76_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S15]
 lea rsi, [rip + .S5]
 mov rdx, 1
 call rt_gvar_arith@PLT
 mov qword ptr [r12 + 640], rax
 jmp xgvcat129_1d
 xgvcat129_1b:
 jmp flat_γ
xgvcat129_1d:
bb77_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 624]
 mov rsi, qword ptr [r12 + 632]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 616]
 call str_concat_d@PLT
 mov qword ptr [r12 + 648], rax
 mov qword ptr [r12 + 656], rdx
 jmp snoch30_n47_α
 snoch30_n46_β:
 jmp flat_γ
snoch30_n47_α:
bb78_α:
# IR_ASSIGN
 lea rdi, [rip + .S16]
 mov rsi, qword ptr [r12 + 648]
 mov rdx, qword ptr [r12 + 656]
 call rt_gvar_assign_descr@PLT
 jmp flat_γ
 snoch30_n47_β:
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
.S1: .string "RSUM"
.S2: .string "TRIM"
.S3: .string "STLIMIT"
.S4: .string "RSUM(N)"
.S5: .string "T1"
.S6: .string "OUTER"
.S7: .string "T"
.S8: .string "DATA"
.S9: .string "10,20,30,40,50,60,70,80,90,100,"
.S10: .string "IDX"
.S11: .string "bb_scan: TEXT(mode-4) non-literal pattern needs native PB-RB graph (pending)"
.S12: .string "TOTAL"
.S13: .string "I"
.S14: .string "CHECK"
.S15: .string "T2"
.S16: .string "OUTPUT"
.S17: .string "result: "
.text
