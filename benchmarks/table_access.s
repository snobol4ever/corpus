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
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch0_n8_α
 snoch0_n7_β:
 jmp snoch0_n8_α
snoch0_n8_α:
# IR_LIT_I
bb9_α:
 mov qword ptr [r12 + 16], 6
 mov rax, qword ptr [rip + .Lx11_0]
 mov qword ptr [r12 + 24], rax
 jmp xgvarg10_done
 xgvarg10_β:
 jmp snoch0_n10_α
.Lx11_0:
 .quad 512
xgvarg10_done:
bb10_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
  .section .rodata
  .Lbynamefn13: .string "TABLE"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn13]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je snoch0_n10_α
 jmp snoch0_n9_α
snoch0_n8_β:
 jmp snoch0_n10_α
snoch0_n9_α:
bb11_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S4]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call rt_gvar_assign_descr@PLT
 jmp snoch0_n10_α
 snoch0_n9_β:
 jmp snoch0_n10_α
snoch0_n10_α:
# IR_LIT_scalar
bb12_α:
 jmp snoch0_n11_α
 snoch0_n10_β:
 jmp snoch0_n12_α
snoch0_n11_α:
bb13_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S5]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch0_n12_α
 snoch0_n11_β:
 jmp snoch0_n12_α
snoch0_n12_α:
# IR_VAR
bb14_α:
 mov rdi, qword ptr [rip + .Lx19_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xgvarg17_done
 xgvarg17_β:
 jmp snoch0_n14_α
.Lx19_0:
 .quad .Lx19_0_s
.Lx19_0_s:
 .string "I"
xgvarg17_done:
# IR_LIT_I
bb15_α:
 mov qword ptr [r12 + 80], 6
 mov rax, qword ptr [rip + .Lx21_0]
 mov qword ptr [r12 + 88], rax
 jmp xgvarg20_done
 xgvarg20_β:
 jmp snoch0_n14_α
.Lx21_0:
 .quad 500
xgvarg20_done:
bb16_α:
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
  .Lbynamefn23: .string "LT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn23]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je snoch0_n14_α
 jmp snoch0_n13_α
snoch0_n12_β:
 jmp snoch0_n14_α
snoch0_n13_α:
# IR_VAR
bb17_α:
 mov rdi, qword ptr [rip + .Lx25_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp snoch0_n15_α
 snoch0_n13_β:
 jmp snoch0_n14_α
.Lx25_0:
 .quad .Lx25_0_s
.Lx25_0_s:
 .string "I"
snoch0_n14_α:
# IR_LIT_scalar
bb18_α:
 jmp snoch0_n16_α
 snoch0_n14_β:
 jmp snoch0_n17_α
snoch0_n15_α:
# IR_LIT_scalar
bb19_α:
 jmp snoch0_n18_α
 snoch0_n15_β:
 jmp snoch0_n14_α
snoch0_n16_α:
bb20_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S6]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch0_n17_α
 snoch0_n16_β:
 jmp snoch0_n17_α
snoch0_n17_α:
# IR_LIT_scalar
bb21_α:
 jmp snoch0_n19_α
 snoch0_n17_β:
 jmp snoch0_n20_α
snoch0_n18_α:
bb22_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S5]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 160], rax
 jmp snoch0_n21_α
 snoch0_n18_β:
 jmp snoch0_n14_α
snoch0_n19_α:
bb23_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S5]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch0_n20_α
 snoch0_n19_β:
 jmp snoch0_n20_α
snoch0_n20_α:
# IR_VAR
bb24_α:
 mov rdi, qword ptr [rip + .Lx34_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 168], rax
 mov qword ptr [r12 + 176], rdx
 jmp xgvarg32_done
 xgvarg32_β:
 jmp snoch0_n23_α
.Lx34_0:
 .quad .Lx34_0_s
.Lx34_0_s:
 .string "I"
xgvarg32_done:
# IR_LIT_I
bb25_α:
 mov qword ptr [r12 + 184], 6
 mov rax, qword ptr [rip + .Lx36_0]
 mov qword ptr [r12 + 192], rax
 jmp xgvarg35_done
 xgvarg35_β:
 jmp snoch0_n23_α
.Lx36_0:
 .quad 500
xgvarg35_done:
bb26_α:
# BOX IR_CALL LT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+168] -> [r12+216]
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 216], rax
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 224], rax
# marshal arg1 = producer-box slot [r12+184] -> [r12+232]
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 232], rax
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 240], rax
  .section .rodata
  .Lbynamefn38: .string "LT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn38]
 lea rsi, [r12 + 216]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 200], rax
 mov qword ptr [r12 + 208], rdx
 cmp eax, 99
 je snoch0_n23_α
 jmp snoch0_n22_α
snoch0_n20_β:
 jmp snoch0_n23_α
snoch0_n21_α:
# IR_VAR
bb27_α:
 mov rdi, qword ptr [rip + .Lx42_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 248], rax
 mov qword ptr [r12 + 256], rdx
 jmp xgvarg40_done
 xgvarg40_β:
 jmp snoch0_n14_α
.Lx42_0:
 .quad .Lx42_0_s
.Lx42_0_s:
 .string "I"
xgvarg40_done:
# IR_LIT_I
bb28_α:
 mov qword ptr [r12 + 80], 6
 mov rax, qword ptr [rip + .Lx44_0]
 mov qword ptr [r12 + 88], rax
 jmp xgvarg43_done
 xgvarg43_β:
 jmp snoch0_n14_α
.Lx44_0:
 .quad 500
xgvarg43_done:
bb29_α:
# BOX IR_CALL LT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+64] -> [r12+280]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 280], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 288], rax
# marshal arg1 = producer-box slot [r12+80] -> [r12+296]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 296], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 304], rax
  .section .rodata
  .Lbynamefn46: .string "LT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn46]
 lea rsi, [r12 + 280]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 264], rax
 mov qword ptr [r12 + 272], rdx
 cmp eax, 99
 je snoch0_n14_α
 jmp xgvcat39_0d
xgvcat39_0b:
 jmp snoch0_n14_α
xgvcat39_0d:
bb30_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S5]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 312], rax
 jmp xgvcat47_1d
 xgvcat47_1b:
 jmp snoch0_n14_α
xgvcat47_1d:
bb31_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 160]
 call str_concat_d@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp snoch0_n24_α
 snoch0_n21_β:
 jmp snoch0_n14_α
snoch0_n22_α:
# IR_VAR
bb32_α:
 mov rdi, qword ptr [rip + .Lx51_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp snoch0_n25_α
 snoch0_n22_β:
 jmp snoch0_n23_α
.Lx51_0:
 .quad .Lx51_0_s
.Lx51_0_s:
 .string "I"
snoch0_n23_α:
# IR_VAR
bb33_α:
 mov rdi, qword ptr [rip + .Lx54_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xgvarg52_done
 xgvarg52_β:
 jmp snoch0_n27_α
.Lx54_0:
 .quad .Lx54_0_s
.Lx54_0_s:
 .string "OUTER"
xgvarg52_done:
# IR_LIT_I
bb34_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx56_0]
 mov qword ptr [r12 + 376], rax
 jmp xgvarg55_done
 xgvarg55_β:
 jmp snoch0_n27_α
.Lx56_0:
 .quad 5000
xgvarg55_done:
bb35_α:
# BOX IR_CALL LT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+352] -> [r12+400]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 408], rax
# marshal arg1 = producer-box slot [r12+368] -> [r12+416]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 424], rax
  .section .rodata
  .Lbynamefn58: .string "LT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn58]
 lea rsi, [r12 + 400]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je snoch0_n27_α
 jmp snoch0_n26_α
snoch0_n23_β:
 jmp snoch0_n27_α
snoch0_n24_α:
bb36_α:
# IR_ASSIGN
 lea rdi, [rip + .S5]
 mov rsi, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 call rt_gvar_assign_descr@PLT
 jmp snoch0_n12_α
 snoch0_n24_β:
 jmp snoch0_n14_α
snoch0_n25_α:
# IR_LIT_scalar
bb37_α:
 jmp snoch0_n28_α
 snoch0_n25_β:
 jmp snoch0_n23_α
snoch0_n26_α:
# IR_VAR
bb38_α:
 mov rdi, qword ptr [rip + .Lx63_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp snoch0_n29_α
 snoch0_n26_β:
 jmp snoch0_n27_α
.Lx63_0:
 .quad .Lx63_0_s
.Lx63_0_s:
 .string "OUTER"
snoch0_n27_α:
bb39_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn65: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn65]
 lea rsi, [r12 + 464]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 cmp eax, 99
 je snoch0_n31_α
 jmp snoch0_n30_α
 snoch0_n27_β:
 jmp snoch0_n31_α
snoch0_n28_α:
bb40_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S5]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 464], rax
 jmp snoch0_n32_α
 snoch0_n28_β:
 jmp snoch0_n23_α
snoch0_n29_α:
# IR_LIT_scalar
bb41_α:
 jmp snoch0_n33_α
 snoch0_n29_β:
 jmp snoch0_n27_α
snoch0_n30_α:
bb42_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S7]
 mov rsi, qword ptr [r12 + 448]
 mov rdx, qword ptr [r12 + 456]
 call rt_gvar_assign_descr@PLT
 jmp snoch0_n31_α
 snoch0_n30_β:
 jmp snoch0_n31_α
snoch0_n31_α:
bb43_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 472], 0
 lea rax, [rip + .S9]
 mov qword ptr [r12 + 480], rax
 mov dword ptr [r12 + 488], 1
 lea rax, [rip + .S6]
 mov qword ptr [r12 + 496], rax
 lea rdi, [rip + .S8]
 lea rsi, [r12 + 472]
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
bb44_α:
 mov rdi, qword ptr [rip + .Lx73_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 504], rax
 mov qword ptr [r12 + 512], rdx
 jmp xgvarg71_done
 xgvarg71_β:
 jmp snoch0_n23_α
.Lx73_0:
 .quad .Lx73_0_s
.Lx73_0_s:
 .string "I"
xgvarg71_done:
# IR_LIT_I
bb45_α:
 mov qword ptr [r12 + 184], 6
 mov rax, qword ptr [rip + .Lx75_0]
 mov qword ptr [r12 + 192], rax
 jmp xgvarg74_done
 xgvarg74_β:
 jmp snoch0_n23_α
.Lx75_0:
 .quad 500
xgvarg74_done:
bb46_α:
# BOX IR_CALL LT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+168] -> [r12+536]
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 536], rax
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 544], rax
# marshal arg1 = producer-box slot [r12+184] -> [r12+552]
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 552], rax
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 560], rax
  .section .rodata
  .Lbynamefn77: .string "LT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn77]
 lea rsi, [r12 + 536]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 520], rax
 mov qword ptr [r12 + 528], rdx
 cmp eax, 99
 je snoch0_n23_α
 jmp xgvcat70_0d
xgvcat70_0b:
 jmp snoch0_n23_α
xgvcat70_0d:
bb47_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S5]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 568], rax
 jmp xgvcat78_1d
 xgvcat78_1b:
 jmp snoch0_n23_α
xgvcat78_1d:
bb48_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 200]
 mov rsi, qword ptr [r12 + 208]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 464]
 call str_concat_d@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp snoch0_n35_α
 snoch0_n32_β:
 jmp snoch0_n23_α
snoch0_n33_α:
bb49_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S3]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 592], rax
 jmp snoch0_n36_α
 snoch0_n33_β:
 jmp snoch0_n27_α
snoch0_n34_α:
# IR_LIT_scalar
bb50_α:
 jmp snoch0_n37_α
 snoch0_n34_β:
 jmp flat_γ
snoch0_n35_α:
bb51_α:
# IR_ASSIGN
 lea rdi, [rip + .S5]
 mov rsi, qword ptr [r12 + 576]
 mov rdx, qword ptr [r12 + 584]
 call rt_gvar_assign_descr@PLT
 jmp snoch0_n23_α
 snoch0_n35_β:
 jmp snoch0_n23_α
snoch0_n36_α:
# IR_VAR
bb52_α:
 mov rdi, qword ptr [rip + .Lx88_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 600], rax
 mov qword ptr [r12 + 608], rdx
 jmp xgvarg86_done
 xgvarg86_β:
 jmp snoch0_n27_α
.Lx88_0:
 .quad .Lx88_0_s
.Lx88_0_s:
 .string "OUTER"
xgvarg86_done:
# IR_LIT_I
bb53_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx90_0]
 mov qword ptr [r12 + 376], rax
 jmp xgvarg89_done
 xgvarg89_β:
 jmp snoch0_n27_α
.Lx90_0:
 .quad 5000
xgvarg89_done:
bb54_α:
# BOX IR_CALL LT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+352] -> [r12+632]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 632], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 640], rax
# marshal arg1 = producer-box slot [r12+368] -> [r12+648]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 648], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 656], rax
  .section .rodata
  .Lbynamefn92: .string "LT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn92]
 lea rsi, [r12 + 632]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 616], rax
 mov qword ptr [r12 + 624], rdx
 cmp eax, 99
 je snoch0_n27_α
 jmp xgvcat85_0d
xgvcat85_0b:
 jmp snoch0_n27_α
xgvcat85_0d:
bb55_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S3]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 664], rax
 jmp xgvcat93_1d
 xgvcat93_1b:
 jmp snoch0_n27_α
xgvcat93_1d:
bb56_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 384]
 mov rsi, qword ptr [r12 + 392]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 592]
 call str_concat_d@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp snoch0_n38_α
 snoch0_n36_β:
 jmp snoch0_n27_α
snoch0_n37_α:
# IR_VAR
bb57_α:
 mov rdi, qword ptr [rip + .Lx97_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp snoch0_n39_α
 snoch0_n37_β:
 jmp flat_γ
.Lx97_0:
 .quad .Lx97_0_s
.Lx97_0_s:
 .string "T2"
snoch0_n38_α:
bb58_α:
# IR_ASSIGN
 lea rdi, [rip + .S3]
 mov rsi, qword ptr [r12 + 672]
 mov rdx, qword ptr [r12 + 680]
 call rt_gvar_assign_descr@PLT
 jmp snoch0_n8_α
 snoch0_n38_β:
 jmp snoch0_n27_α
snoch0_n39_α:
# IR_VAR
bb59_α:
 mov rdi, qword ptr [rip + .Lx101_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp snoch0_n40_α
 snoch0_n39_β:
 jmp flat_γ
.Lx101_0:
 .quad .Lx101_0_s
.Lx101_0_s:
 .string "T1"
snoch0_n40_α:
bb60_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S7]
 lea rsi, [rip + .S2]
 mov rdx, 1
 call rt_gvar_arith@PLT
 mov qword ptr [r12 + 720], rax
 jmp snoch0_n41_α
 snoch0_n40_β:
 jmp flat_γ
snoch0_n41_α:
# IR_LIT_S
bb61_α:
 mov qword ptr [r12 + 728], 1
 mov rax, qword ptr [rip + .Lx104_0]
 mov qword ptr [r12 + 736], rax
 jmp xgvcat103_0d
 xgvcat103_0b:
 jmp flat_γ
.Lx104_0:
 .quad .Lx104_0_s
.Lx104_0_s:
 .string "ms: "
xgvcat103_0d:
bb62_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S7]
 lea rsi, [rip + .S2]
 mov rdx, 1
 call rt_gvar_arith@PLT
 mov qword ptr [r12 + 744], rax
 jmp xgvcat105_1d
 xgvcat105_1b:
 jmp flat_γ
xgvcat105_1d:
bb63_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 728]
 mov rsi, qword ptr [r12 + 736]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 720]
 call str_concat_d@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp snoch0_n42_α
 snoch0_n41_β:
 jmp flat_γ
snoch0_n42_α:
bb64_α:
# IR_ASSIGN
 lea rdi, [rip + .S8]
 mov rsi, qword ptr [r12 + 752]
 mov rdx, qword ptr [r12 + 760]
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
.S3: .string "OUTER"
.S4: .string "T"
.S5: .string "I"
.S6: .string "SUM"
.S7: .string "T2"
.S8: .string "OUTPUT"
.S9: .string "result: "
.text
