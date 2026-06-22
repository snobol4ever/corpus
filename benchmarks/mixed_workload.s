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
 mov rdx, qword ptr [r12 + 264]
 call rt_gvar_assign_descr@PLT
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
  mov esi, 272
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
 jmp snoch30_n22_α
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
 jmp snoch30_n23_α
 snoch30_n20_β:
 jmp snoch30_n24_α
snoch30_n21_α:
# IR_LIT_scalar
bb37_α:
 jmp snoch30_n25_α
 snoch30_n21_β:
 jmp snoch30_n22_α
snoch30_n22_α:
# IR_VAR
bb38_α:
 mov rdi, qword ptr [rip + .Lx59_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp snoch30_n26_α
 snoch30_n22_β:
 jmp snoch30_n15_α
.Lx59_0:
 .quad .Lx59_0_s
.Lx59_0_s:
 .string "WORD"
snoch30_n23_α:
bb39_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S13]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch30_n24_α
 snoch30_n23_β:
 jmp snoch30_n24_α
snoch30_n24_α:
# IR_VAR
bb40_α:
 mov rdi, qword ptr [rip + .Lx63_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xgvarg61_done
 xgvarg61_β:
 jmp snoch30_n28_α
.Lx63_0:
 .quad .Lx63_0_s
.Lx63_0_s:
 .string "I"
xgvarg61_done:
# IR_VAR
bb41_α:
 mov rdi, qword ptr [rip + .Lx66_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xgvarg64_done
 xgvarg64_β:
 jmp snoch30_n28_α
.Lx66_0:
 .quad .Lx66_0_s
.Lx66_0_s:
 .string "IDX"
xgvarg64_done:
bb42_α:
# BOX IR_CALL LT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+96] -> [r12+144]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 152], rax
# marshal arg1 = producer-box slot [r12+112] -> [r12+160]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lbynamefn68: .string "LT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn68]
 lea rsi, [r12 + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je snoch30_n28_α
 jmp snoch30_n27_α
snoch30_n24_β:
 jmp snoch30_n28_α
snoch30_n25_α:
bb43_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S10]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 176], rax
 jmp snoch30_n29_α
 snoch30_n25_β:
 jmp snoch30_n22_α
snoch30_n26_α:
# IR_LIT_scalar
bb44_α:
 jmp snoch30_n30_α
 snoch30_n26_β:
 jmp snoch30_n15_α
snoch30_n27_α:
# IR_VAR
bb45_α:
 mov rdi, qword ptr [rip + .Lx72_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 184], rax
 mov qword ptr [r12 + 192], rdx
 jmp snoch30_n31_α
 snoch30_n27_β:
 jmp snoch30_n28_α
.Lx72_0:
 .quad .Lx72_0_s
.Lx72_0_s:
 .string "I"
snoch30_n28_α:
# IR_LIT_I
bb46_α:
 mov qword ptr [r12 + 200], 6
 mov rax, qword ptr [rip + .Lx74_0]
 mov qword ptr [r12 + 208], rax
 jmp xgvarg73_done
 xgvarg73_β:
 jmp snoch30_n33_α
.Lx74_0:
 .quad 10
xgvarg73_done:
bb47_α:
# BOX IR_CALL RSUM(...) -> rt_call_named_proc [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+200] -> [r12+232]
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 232], rax
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 240], rax
  .section .rodata
  .Lprocfn76: .string "RSUM"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lprocfn76]
 lea rsi, [r12 + 232]
 mov edx, 1
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 216], rax
 mov qword ptr [r12 + 224], rdx
 cmp eax, 99
 je snoch30_n33_α
 jmp snoch30_n32_α
snoch30_n28_β:
 jmp snoch30_n33_α
snoch30_n29_α:
bb48_α:
# IR_ASSIGN
 lea rdi, [rip + .S10]
 mov rsi, qword ptr [r12 + 176]
 call rt_gvar_assign_int@PLT
 jmp snoch30_n22_α
 snoch30_n29_β:
 jmp snoch30_n22_α
snoch30_n30_α:
bb49_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S14]
 call rt_gvar_get_int@PLT
 mov rcx, 0
 add rax, rcx
 mov qword ptr [r12 + 248], rax
 jmp snoch30_n34_α
 snoch30_n30_β:
 jmp snoch30_n15_α
snoch30_n31_α:
# IR_LIT_scalar
bb50_α:
 jmp snoch30_n35_α
 snoch30_n31_β:
 jmp snoch30_n28_α
snoch30_n32_α:
bb51_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S15]
 mov rsi, qword ptr [r12 + 216]
 mov rdx, qword ptr [r12 + 224]
 call rt_gvar_assign_descr@PLT
 jmp snoch30_n33_α
 snoch30_n32_β:
 jmp snoch30_n33_α
snoch30_n33_α:
# IR_VAR
bb52_α:
 mov rdi, qword ptr [rip + .Lx84_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xgvarg82_done
 xgvarg82_β:
 jmp snoch30_n37_α
.Lx84_0:
 .quad .Lx84_0_s
.Lx84_0_s:
 .string "OUTER"
xgvarg82_done:
# IR_LIT_I
bb53_α:
 mov qword ptr [r12 + 272], 6
 mov rax, qword ptr [rip + .Lx86_0]
 mov qword ptr [r12 + 280], rax
 jmp xgvarg85_done
 xgvarg85_β:
 jmp snoch30_n37_α
.Lx86_0:
 .quad 50000
xgvarg85_done:
bb54_α:
# BOX IR_CALL LT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+256] -> [r12+304]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 312], rax
# marshal arg1 = producer-box slot [r12+272] -> [r12+320]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 328], rax
  .section .rodata
  .Lbynamefn88: .string "LT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn88]
 lea rsi, [r12 + 304]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je snoch30_n37_α
 jmp snoch30_n36_α
snoch30_n33_β:
 jmp snoch30_n37_α
snoch30_n34_α:
bb55_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S14]
 call rt_gvar_get_int@PLT
 mov rcx, 0
 add rax, rcx
 mov qword ptr [r12 + 336], rax
 jmp xgvidxv89_done
 xgvidxv89_β:
 jmp snoch30_n15_α
xgvidxv89_done:
bb56_α:
# IR_IDX_SET (subscript_set, by-name)
 lea rdi, [rip + .S7]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 344], rax
 mov qword ptr [r12 + 352], rdx
 lea rdi, [rip + .S10]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 360], rax
 mov qword ptr [r12 + 368], rdx
 mov rax, qword ptr [r12 + 248]
 movabs rdx, 6
 mov qword ptr [r12 + 248], rdx
 mov qword ptr [r12 + 256], rax
 mov rdi, qword ptr [r12 + 344]
 mov rsi, qword ptr [r12 + 352]
 mov rdx, qword ptr [r12 + 360]
 mov rcx, qword ptr [r12 + 368]
 mov r8, qword ptr [r12 + 248]
 mov r9, qword ptr [r12 + 256]
 call subscript_set@PLT
 cmp eax, 0
 je snoch30_n15_α
 jmp snoch30_n15_α
 snoch30_n34_β:
 jmp snoch30_n15_α
snoch30_n35_α:
bb57_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S13]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 376], rax
 jmp snoch30_n38_α
 snoch30_n35_β:
 jmp snoch30_n28_α
snoch30_n36_α:
# IR_VAR
bb58_α:
 mov rdi, qword ptr [rip + .Lx94_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp snoch30_n39_α
 snoch30_n36_β:
 jmp snoch30_n37_α
.Lx94_0:
 .quad .Lx94_0_s
.Lx94_0_s:
 .string "OUTER"
snoch30_n37_α:
bb59_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn96: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn96]
 lea rsi, [r12 + 416]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je snoch30_n41_α
 jmp snoch30_n40_α
 snoch30_n37_β:
 jmp snoch30_n41_α
snoch30_n38_α:
# IR_VAR
bb60_α:
 mov rdi, qword ptr [rip + .Lx100_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xgvarg98_done
 xgvarg98_β:
 jmp snoch30_n28_α
.Lx100_0:
 .quad .Lx100_0_s
.Lx100_0_s:
 .string "I"
xgvarg98_done:
# IR_VAR
bb61_α:
 mov rdi, qword ptr [rip + .Lx103_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xgvarg101_done
 xgvarg101_β:
 jmp snoch30_n28_α
.Lx103_0:
 .quad .Lx103_0_s
.Lx103_0_s:
 .string "IDX"
xgvarg101_done:
bb62_α:
# BOX IR_CALL LT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+96] -> [r12+464]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 472], rax
# marshal arg1 = producer-box slot [r12+112] -> [r12+480]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 488], rax
  .section .rodata
  .Lbynamefn105: .string "LT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn105]
 lea rsi, [r12 + 464]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 cmp eax, 99
 je snoch30_n28_α
 jmp xgvcat97_0d
xgvcat97_0b:
 jmp snoch30_n28_α
xgvcat97_0d:
bb63_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S13]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 496], rax
 jmp xgvcat106_1d
 xgvcat106_1b:
 jmp snoch30_n28_α
xgvcat106_1d:
bb64_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 376]
 call str_concat_d@PLT
 mov qword ptr [r12 + 504], rax
 mov qword ptr [r12 + 512], rdx
 jmp snoch30_n42_α
 snoch30_n38_β:
 jmp snoch30_n28_α
snoch30_n39_α:
# IR_LIT_scalar
bb65_α:
 jmp snoch30_n43_α
 snoch30_n39_β:
 jmp snoch30_n37_α
snoch30_n40_α:
bb66_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S16]
 mov rsi, qword ptr [r12 + 400]
 mov rdx, qword ptr [r12 + 408]
 call rt_gvar_assign_descr@PLT
 jmp snoch30_n41_α
 snoch30_n40_β:
 jmp snoch30_n41_α
snoch30_n41_α:
bb67_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 520], 0
 lea rax, [rip + .S18]
 mov qword ptr [r12 + 528], rax
 mov dword ptr [r12 + 536], 1
 lea rax, [rip + .S12]
 mov qword ptr [r12 + 544], rax
 lea rdi, [rip + .S17]
 lea rsi, [r12 + 520]
 mov edx, 2
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch30_n44_α
 snoch30_n41_β:
 jmp snoch30_n44_α
snoch30_n42_α:
bb68_α:
# IR_ASSIGN
 lea rdi, [rip + .S13]
 mov rsi, qword ptr [r12 + 504]
 mov rdx, qword ptr [r12 + 512]
 call rt_gvar_assign_descr@PLT
 jmp snoch30_n45_α
 snoch30_n42_β:
 jmp snoch30_n28_α
snoch30_n43_α:
bb69_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S6]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 552], rax
 jmp snoch30_n46_α
 snoch30_n43_β:
 jmp snoch30_n37_α
snoch30_n44_α:
# IR_LIT_scalar
bb70_α:
 jmp snoch30_n47_α
 snoch30_n44_β:
 jmp flat_γ
snoch30_n45_α:
# IR_VAR
bb71_α:
 mov rdi, qword ptr [rip + .Lx117_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp snoch30_n48_α
 snoch30_n45_β:
 jmp snoch30_n24_α
.Lx117_0:
 .quad .Lx117_0_s
.Lx117_0_s:
 .string "TOTAL"
snoch30_n46_α:
# IR_VAR
bb72_α:
 mov rdi, qword ptr [rip + .Lx121_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xgvarg119_done
 xgvarg119_β:
 jmp snoch30_n37_α
.Lx121_0:
 .quad .Lx121_0_s
.Lx121_0_s:
 .string "OUTER"
xgvarg119_done:
# IR_LIT_I
bb73_α:
 mov qword ptr [r12 + 272], 6
 mov rax, qword ptr [rip + .Lx123_0]
 mov qword ptr [r12 + 280], rax
 jmp xgvarg122_done
 xgvarg122_β:
 jmp snoch30_n37_α
.Lx123_0:
 .quad 50000
xgvarg122_done:
bb74_α:
# BOX IR_CALL LT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+256] -> [r12+608]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 616], rax
# marshal arg1 = producer-box slot [r12+272] -> [r12+624]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 632], rax
  .section .rodata
  .Lbynamefn125: .string "LT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn125]
 lea rsi, [r12 + 608]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 cmp eax, 99
 je snoch30_n37_α
 jmp xgvcat118_0d
xgvcat118_0b:
 jmp snoch30_n37_α
xgvcat118_0d:
bb75_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S6]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 640], rax
 jmp xgvcat126_1d
 xgvcat126_1b:
 jmp snoch30_n37_α
xgvcat126_1d:
bb76_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 288]
 mov rsi, qword ptr [r12 + 296]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 552]
 call str_concat_d@PLT
 mov qword ptr [r12 + 648], rax
 mov qword ptr [r12 + 656], rdx
 jmp snoch30_n49_α
 snoch30_n46_β:
 jmp snoch30_n37_α
snoch30_n47_α:
# IR_VAR
bb77_α:
 mov rdi, qword ptr [rip + .Lx130_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 664], rax
 mov qword ptr [r12 + 672], rdx
 jmp snoch30_n50_α
 snoch30_n47_β:
 jmp flat_γ
.Lx130_0:
 .quad .Lx130_0_s
.Lx130_0_s:
 .string "T2"
snoch30_n48_α:
bb78_α:
# IR_IDX (subscript_get, by-name)
 lea rdi, [rip + .S7]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 680], rax
 mov qword ptr [r12 + 688], rdx
 lea rdi, [rip + .S13]
 call NV_GET_fn@PLT
 mov rcx, rdx
 mov rdx, rax
 mov rdi, qword ptr [r12 + 680]
 mov rsi, qword ptr [r12 + 688]
 call subscript_get@PLT
 mov qword ptr [r12 + 696], rax
 mov qword ptr [r12 + 704], rdx
 jmp snoch30_n51_α
 snoch30_n48_β:
 jmp snoch30_n24_α
snoch30_n49_α:
bb79_α:
# IR_ASSIGN
 lea rdi, [rip + .S6]
 mov rsi, qword ptr [r12 + 648]
 mov rdx, qword ptr [r12 + 656]
 call rt_gvar_assign_descr@PLT
 jmp snoch30_n9_α
 snoch30_n49_β:
 jmp snoch30_n37_α
snoch30_n50_α:
# IR_VAR
bb80_α:
 mov rdi, qword ptr [rip + .Lx135_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 712], rax
 mov qword ptr [r12 + 720], rdx
 jmp snoch30_n52_α
 snoch30_n50_β:
 jmp flat_γ
.Lx135_0:
 .quad .Lx135_0_s
.Lx135_0_s:
 .string "T1"
snoch30_n51_α:
bb81_α:
# IR_IDX (subscript_get, by-name)
 lea rdi, [rip + .S7]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 728], rax
 mov qword ptr [r12 + 736], rdx
 lea rdi, [rip + .S13]
 call NV_GET_fn@PLT
 mov rcx, rdx
 mov rdx, rax
 mov rdi, qword ptr [r12 + 728]
 mov rsi, qword ptr [r12 + 736]
 call subscript_get@PLT
 mov qword ptr [r12 + 744], rax
 mov qword ptr [r12 + 752], rdx
 jmp xgvidx136_done
 xgvidx136_β:
 jmp snoch30_n24_α
xgvidx136_done:
bb82_α:
# IR_BINOP_GVAR_ARITH (dynamic operands: DESCR-in DESCR-out via rt_num_arith)
 lea rdi, [rip + .S12]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 mov rdi, qword ptr [r12 + 560]
 mov rsi, qword ptr [r12 + 568]
 mov rdx, qword ptr [r12 + 696]
 mov rcx, qword ptr [r12 + 704]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je snoch30_n24_α
 mov qword ptr [r12 + 760], rax
 mov qword ptr [r12 + 768], rdx
 jmp snoch30_n53_α
 snoch30_n51_β:
 jmp snoch30_n24_α
snoch30_n52_α:
bb83_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S16]
 lea rsi, [rip + .S5]
 mov rdx, 1
 call rt_gvar_arith@PLT
 mov qword ptr [r12 + 776], rax
 jmp snoch30_n54_α
 snoch30_n52_β:
 jmp flat_γ
snoch30_n53_α:
bb84_α:
# IR_ASSIGN
 lea rdi, [rip + .S12]
 mov rsi, qword ptr [r12 + 760]
 mov rdx, qword ptr [r12 + 768]
 call rt_gvar_assign_descr@PLT
 jmp snoch30_n24_α
 snoch30_n53_β:
 jmp snoch30_n24_α
snoch30_n54_α:
# IR_LIT_S
bb85_α:
 mov qword ptr [r12 + 784], 1
 mov rax, qword ptr [rip + .Lx143_0]
 mov qword ptr [r12 + 792], rax
 jmp xgvcat142_0d
 xgvcat142_0b:
 jmp flat_γ
.Lx143_0:
 .quad .Lx143_0_s
.Lx143_0_s:
 .string "ms: "
xgvcat142_0d:
bb86_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S16]
 lea rsi, [rip + .S5]
 mov rdx, 1
 call rt_gvar_arith@PLT
 mov qword ptr [r12 + 800], rax
 jmp xgvcat144_1d
 xgvcat144_1b:
 jmp flat_γ
xgvcat144_1d:
bb87_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 784]
 mov rsi, qword ptr [r12 + 792]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 776]
 call str_concat_d@PLT
 mov qword ptr [r12 + 808], rax
 mov qword ptr [r12 + 816], rdx
 jmp snoch30_n55_α
 snoch30_n54_β:
 jmp flat_γ
snoch30_n55_α:
bb88_α:
# IR_ASSIGN
 lea rdi, [rip + .S17]
 mov rsi, qword ptr [r12 + 808]
 mov rdx, qword ptr [r12 + 816]
 call rt_gvar_assign_descr@PLT
 jmp flat_γ
 snoch30_n55_β:
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
.S14: .string "WORD"
.S15: .string "CHECK"
.S16: .string "T2"
.S17: .string "OUTPUT"
.S18: .string "result: "
.text
