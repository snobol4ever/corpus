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
 movabs rsi, 1
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
 mov rdi, qword ptr [rip + .Lx13_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp snoch0_n11_α
 snoch0_n10_β:
 jmp snoch0_n12_α
.Lx13_0:
 .quad .Lx13_0_s
.Lx13_0_s:
 .string "N"
snoch0_n11_α:
# IR_LIT_scalar
bb12_α:
 jmp snoch0_n13_α
 snoch0_n11_β:
 jmp snoch0_n12_α
snoch0_n12_α:
# IR_VAR
bb13_α:
 mov rdi, qword ptr [rip + .Lx16_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp snoch0_n14_α
 snoch0_n12_β:
 jmp snoch0_n15_α
.Lx16_0:
 .quad .Lx16_0_s
.Lx16_0_s:
 .string "N"
snoch0_n13_α:
bb14_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S3]
 call rt_gvar_get_int@PLT
 mov rcx, 3
 add rax, rcx
 mov qword ptr [r12 + 48], rax
 jmp snoch0_n16_α
 snoch0_n13_β:
 jmp snoch0_n12_α
snoch0_n14_α:
# IR_LIT_scalar
bb15_α:
 jmp snoch0_n17_α
 snoch0_n14_β:
 jmp snoch0_n15_α
snoch0_n15_α:
# IR_VAR
bb16_α:
 mov rdi, qword ptr [rip + .Lx20_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 56], rax
 mov qword ptr [r12 + 64], rdx
 jmp snoch0_n18_α
 snoch0_n15_β:
 jmp snoch0_n19_α
.Lx20_0:
 .quad .Lx20_0_s
.Lx20_0_s:
 .string "N"
snoch0_n16_α:
bb17_α:
# IR_ASSIGN
 lea rdi, [rip + .S3]
 mov rsi, qword ptr [r12 + 48]
 call rt_gvar_assign_int@PLT
 jmp snoch0_n12_α
 snoch0_n16_β:
 jmp snoch0_n12_α
snoch0_n17_α:
bb18_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S3]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [r12 + 72], rax
 jmp snoch0_n20_α
 snoch0_n17_β:
 jmp snoch0_n15_α
snoch0_n18_α:
# IR_LIT_scalar
bb19_α:
 jmp snoch0_n21_α
 snoch0_n18_β:
 jmp snoch0_n19_α
snoch0_n19_α:
# IR_VAR
bb20_α:
 mov rdi, qword ptr [rip + .Lx27_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xgvarg25_done
 xgvarg25_β:
 jmp snoch0_n23_α
.Lx27_0:
 .quad .Lx27_0_s
.Lx27_0_s:
 .string "N"
xgvarg25_done:
# IR_LIT_I
bb21_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx29_0]
 mov qword ptr [r12 + 104], rax
 jmp xgvarg28_done
 xgvarg28_β:
 jmp snoch0_n23_α
.Lx29_0:
 .quad 10000000
xgvarg28_done:
bb22_α:
# BOX IR_CALL GE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
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
  .Lbynamefn31: .string "GE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn31]
 lea rsi, [r12 + 128]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je snoch0_n23_α
 jmp snoch0_n22_α
snoch0_n19_β:
 jmp snoch0_n23_α
snoch0_n20_α:
bb23_α:
# IR_ASSIGN
 lea rdi, [rip + .S3]
 mov rsi, qword ptr [r12 + 72]
 call rt_gvar_assign_int@PLT
 jmp snoch0_n15_α
 snoch0_n20_β:
 jmp snoch0_n15_α
snoch0_n21_α:
bb24_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S3]
 call rt_gvar_get_int@PLT
 mov rcx, 2
 imul rax, rcx
 mov qword ptr [r12 + 160], rax
 jmp snoch0_n24_α
 snoch0_n21_β:
 jmp snoch0_n19_α
snoch0_n22_α:
# IR_VAR
bb25_α:
 mov rdi, qword ptr [rip + .Lx36_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 168], rax
 mov qword ptr [r12 + 176], rdx
 jmp snoch0_n25_α
 snoch0_n22_β:
 jmp snoch0_n23_α
.Lx36_0:
 .quad .Lx36_0_s
.Lx36_0_s:
 .string "N"
snoch0_n23_α:
# IR_VAR
bb26_α:
 mov rdi, qword ptr [rip + .Lx39_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 184], rax
 mov qword ptr [r12 + 192], rdx
 jmp xgvarg37_done
 xgvarg37_β:
 jmp snoch0_n27_α
.Lx39_0:
 .quad .Lx39_0_s
.Lx39_0_s:
 .string "OUTER"
xgvarg37_done:
# IR_LIT_I
bb27_α:
 mov qword ptr [r12 + 200], 6
 mov rax, qword ptr [rip + .Lx41_0]
 mov qword ptr [r12 + 208], rax
 jmp xgvarg40_done
 xgvarg40_β:
 jmp snoch0_n27_α
.Lx41_0:
 .quad 1000000
xgvarg40_done:
bb28_α:
# BOX IR_CALL LT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+184] -> [r12+232]
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 232], rax
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 240], rax
# marshal arg1 = producer-box slot [r12+200] -> [r12+248]
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 248], rax
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 256], rax
  .section .rodata
  .Lbynamefn43: .string "LT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn43]
 lea rsi, [r12 + 232]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 216], rax
 mov qword ptr [r12 + 224], rdx
 cmp eax, 99
 je snoch0_n27_α
 jmp snoch0_n26_α
snoch0_n23_β:
 jmp snoch0_n27_α
snoch0_n24_α:
bb29_α:
# IR_ASSIGN
 lea rdi, [rip + .S3]
 mov rsi, qword ptr [r12 + 160]
 call rt_gvar_assign_int@PLT
 jmp snoch0_n19_α
 snoch0_n24_β:
 jmp snoch0_n19_α
snoch0_n25_α:
# IR_LIT_scalar
bb30_α:
 jmp snoch0_n28_α
 snoch0_n25_β:
 jmp snoch0_n23_α
snoch0_n26_α:
# IR_VAR
bb31_α:
 mov rdi, qword ptr [rip + .Lx48_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 264], rax
 mov qword ptr [r12 + 272], rdx
 jmp snoch0_n29_α
 snoch0_n26_β:
 jmp snoch0_n27_α
.Lx48_0:
 .quad .Lx48_0_s
.Lx48_0_s:
 .string "OUTER"
snoch0_n27_α:
bb32_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn50: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn50]
 lea rsi, [r12 + 296]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 280], rax
 mov qword ptr [r12 + 288], rdx
 cmp eax, 99
 je snoch0_n31_α
 jmp snoch0_n30_α
 snoch0_n27_β:
 jmp snoch0_n31_α
snoch0_n28_α:
bb33_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S3]
 call rt_gvar_get_int@PLT
 mov rcx, 10000
 cqo
 idiv rcx
 mov qword ptr [r12 + 296], rax
 jmp snoch0_n32_α
 snoch0_n28_β:
 jmp snoch0_n23_α
snoch0_n29_α:
# IR_LIT_scalar
bb34_α:
 jmp snoch0_n33_α
 snoch0_n29_β:
 jmp snoch0_n27_α
snoch0_n30_α:
bb35_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S5]
 mov rsi, qword ptr [r12 + 280]
 mov rdx, qword ptr [r12 + 288]
 call rt_gvar_assign_descr@PLT
 jmp snoch0_n31_α
 snoch0_n30_β:
 jmp snoch0_n31_α
snoch0_n31_α:
bb36_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 304], 0
 lea rax, [rip + .S7]
 mov qword ptr [r12 + 312], rax
 mov dword ptr [r12 + 320], 1
 lea rax, [rip + .S3]
 mov qword ptr [r12 + 328], rax
 lea rdi, [rip + .S6]
 lea rsi, [r12 + 304]
 mov edx, 2
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch0_n34_α
 snoch0_n31_β:
 jmp snoch0_n34_α
snoch0_n32_α:
# IR_VAR
bb37_α:
 mov rdi, qword ptr [rip + .Lx58_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xgvarg56_done
 xgvarg56_β:
 jmp snoch0_n23_α
.Lx58_0:
 .quad .Lx58_0_s
.Lx58_0_s:
 .string "N"
xgvarg56_done:
# IR_LIT_I
bb38_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx60_0]
 mov qword ptr [r12 + 104], rax
 jmp xgvarg59_done
 xgvarg59_β:
 jmp snoch0_n23_α
.Lx60_0:
 .quad 10000000
xgvarg59_done:
bb39_α:
# BOX IR_CALL GE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+80] -> [r12+368]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 376], rax
# marshal arg1 = producer-box slot [r12+96] -> [r12+384]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 392], rax
  .section .rodata
  .Lbynamefn62: .string "GE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn62]
 lea rsi, [r12 + 368]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 cmp eax, 99
 je snoch0_n23_α
 jmp xgvcat55_0d
xgvcat55_0b:
 jmp snoch0_n23_α
xgvcat55_0d:
bb40_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S3]
 call rt_gvar_get_int@PLT
 mov rcx, 10000
 cqo
 idiv rcx
 mov qword ptr [r12 + 400], rax
 jmp xgvcat63_1d
 xgvcat63_1b:
 jmp snoch0_n23_α
xgvcat63_1d:
bb41_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 296]
 call str_concat_d@PLT
 mov qword ptr [r12 + 408], rax
 mov qword ptr [r12 + 416], rdx
 jmp snoch0_n35_α
 snoch0_n32_β:
 jmp snoch0_n23_α
snoch0_n33_α:
bb42_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S4]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 424], rax
 jmp snoch0_n36_α
 snoch0_n33_β:
 jmp snoch0_n27_α
snoch0_n34_α:
# IR_LIT_scalar
bb43_α:
 jmp snoch0_n37_α
 snoch0_n34_β:
 jmp flat_γ
snoch0_n35_α:
bb44_α:
# IR_ASSIGN
 lea rdi, [rip + .S3]
 mov rsi, qword ptr [r12 + 408]
 mov rdx, qword ptr [r12 + 416]
 call rt_gvar_assign_descr@PLT
 jmp snoch0_n10_α
 snoch0_n35_β:
 jmp snoch0_n23_α
snoch0_n36_α:
# IR_VAR
bb45_α:
 mov rdi, qword ptr [rip + .Lx73_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xgvarg71_done
 xgvarg71_β:
 jmp snoch0_n27_α
.Lx73_0:
 .quad .Lx73_0_s
.Lx73_0_s:
 .string "OUTER"
xgvarg71_done:
# IR_LIT_I
bb46_α:
 mov qword ptr [r12 + 200], 6
 mov rax, qword ptr [rip + .Lx75_0]
 mov qword ptr [r12 + 208], rax
 jmp xgvarg74_done
 xgvarg74_β:
 jmp snoch0_n27_α
.Lx75_0:
 .quad 1000000
xgvarg74_done:
bb47_α:
# BOX IR_CALL LT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+184] -> [r12+464]
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 472], rax
# marshal arg1 = producer-box slot [r12+200] -> [r12+480]
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 488], rax
  .section .rodata
  .Lbynamefn77: .string "LT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn77]
 lea rsi, [r12 + 464]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 cmp eax, 99
 je snoch0_n27_α
 jmp xgvcat70_0d
xgvcat70_0b:
 jmp snoch0_n27_α
xgvcat70_0d:
bb48_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S4]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 496], rax
 jmp xgvcat78_1d
 xgvcat78_1b:
 jmp snoch0_n27_α
xgvcat78_1d:
bb49_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 216]
 mov rsi, qword ptr [r12 + 224]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 424]
 call str_concat_d@PLT
 mov qword ptr [r12 + 504], rax
 mov qword ptr [r12 + 512], rdx
 jmp snoch0_n38_α
 snoch0_n36_β:
 jmp snoch0_n27_α
snoch0_n37_α:
# IR_VAR
bb50_α:
 mov rdi, qword ptr [rip + .Lx82_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 520], rax
 mov qword ptr [r12 + 528], rdx
 jmp snoch0_n39_α
 snoch0_n37_β:
 jmp flat_γ
.Lx82_0:
 .quad .Lx82_0_s
.Lx82_0_s:
 .string "T2"
snoch0_n38_α:
bb51_α:
# IR_ASSIGN
 lea rdi, [rip + .S4]
 mov rsi, qword ptr [r12 + 504]
 mov rdx, qword ptr [r12 + 512]
 call rt_gvar_assign_descr@PLT
 jmp snoch0_n10_α
 snoch0_n38_β:
 jmp snoch0_n27_α
snoch0_n39_α:
# IR_VAR
bb52_α:
 mov rdi, qword ptr [rip + .Lx86_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 536], rax
 mov qword ptr [r12 + 544], rdx
 jmp snoch0_n40_α
 snoch0_n39_β:
 jmp flat_γ
.Lx86_0:
 .quad .Lx86_0_s
.Lx86_0_s:
 .string "T1"
snoch0_n40_α:
bb53_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S5]
 lea rsi, [rip + .S2]
 mov rdx, 1
 call rt_gvar_arith@PLT
 mov qword ptr [r12 + 552], rax
 jmp snoch0_n41_α
 snoch0_n40_β:
 jmp flat_γ
snoch0_n41_α:
# IR_LIT_S
bb54_α:
 mov qword ptr [r12 + 560], 1
 mov rax, qword ptr [rip + .Lx89_0]
 mov qword ptr [r12 + 568], rax
 jmp xgvcat88_0d
 xgvcat88_0b:
 jmp flat_γ
.Lx89_0:
 .quad .Lx89_0_s
.Lx89_0_s:
 .string "ms: "
xgvcat88_0d:
bb55_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S5]
 lea rsi, [rip + .S2]
 mov rdx, 1
 call rt_gvar_arith@PLT
 mov qword ptr [r12 + 576], rax
 jmp xgvcat90_1d
 xgvcat90_1b:
 jmp flat_γ
xgvcat90_1d:
bb56_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 560]
 mov rsi, qword ptr [r12 + 568]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 552]
 call str_concat_d@PLT
 mov qword ptr [r12 + 584], rax
 mov qword ptr [r12 + 592], rdx
 jmp snoch0_n42_α
 snoch0_n41_β:
 jmp flat_γ
snoch0_n42_α:
bb57_α:
# IR_ASSIGN
 lea rdi, [rip + .S6]
 mov rsi, qword ptr [r12 + 584]
 mov rdx, qword ptr [r12 + 592]
 call rt_gvar_assign_descr@PLT
 jmp flat_γ
 snoch0_n42_β:
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
.S3: .string "N"
.S4: .string "OUTER"
.S5: .string "T2"
.S6: .string "OUTPUT"
.S7: .string "result: "
.text
