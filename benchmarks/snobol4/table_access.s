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
bb27_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 160]
 call str_concat_d@PLT
 mov qword ptr [r12 + 248], rax
 mov qword ptr [r12 + 256], rdx
 jmp snoch0_n24_α
 snoch0_n21_β:
 jmp snoch0_n14_α
snoch0_n22_α:
# IR_VAR
bb28_α:
 mov rdi, qword ptr [rip + .Lx41_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 264], rax
 mov qword ptr [r12 + 272], rdx
 jmp snoch0_n25_α
 snoch0_n22_β:
 jmp snoch0_n23_α
.Lx41_0:
 .quad .Lx41_0_s
.Lx41_0_s:
 .string "I"
snoch0_n23_α:
# IR_VAR
bb29_α:
 mov rdi, qword ptr [rip + .Lx44_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 280], rax
 mov qword ptr [r12 + 288], rdx
 jmp xgvarg42_done
 xgvarg42_β:
 jmp snoch0_n27_α
.Lx44_0:
 .quad .Lx44_0_s
.Lx44_0_s:
 .string "OUTER"
xgvarg42_done:
# IR_LIT_I
bb30_α:
 mov qword ptr [r12 + 296], 6
 mov rax, qword ptr [rip + .Lx46_0]
 mov qword ptr [r12 + 304], rax
 jmp xgvarg45_done
 xgvarg45_β:
 jmp snoch0_n27_α
.Lx46_0:
 .quad 5000
xgvarg45_done:
bb31_α:
# BOX IR_CALL LT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+280] -> [r12+328]
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 328], rax
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 336], rax
# marshal arg1 = producer-box slot [r12+296] -> [r12+344]
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 344], rax
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 352], rax
  .section .rodata
  .Lbynamefn48: .string "LT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn48]
 lea rsi, [r12 + 328]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 312], rax
 mov qword ptr [r12 + 320], rdx
 cmp eax, 99
 je snoch0_n27_α
 jmp snoch0_n26_α
snoch0_n23_β:
 jmp snoch0_n27_α
snoch0_n24_α:
bb32_α:
# IR_ASSIGN
 lea rdi, [rip + .S5]
 mov rsi, qword ptr [r12 + 248]
 mov rdx, qword ptr [r12 + 256]
 call rt_gvar_assign_descr@PLT
 jmp snoch0_n28_α
 snoch0_n24_β:
 jmp snoch0_n14_α
snoch0_n25_α:
# IR_LIT_scalar
bb33_α:
 jmp snoch0_n29_α
 snoch0_n25_β:
 jmp snoch0_n23_α
snoch0_n26_α:
# IR_VAR
bb34_α:
 mov rdi, qword ptr [rip + .Lx53_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 360], rax
 mov qword ptr [r12 + 368], rdx
 jmp snoch0_n30_α
 snoch0_n26_β:
 jmp snoch0_n27_α
.Lx53_0:
 .quad .Lx53_0_s
.Lx53_0_s:
 .string "OUTER"
snoch0_n27_α:
bb35_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn55: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn55]
 lea rsi, [r12 + 392]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 376], rax
 mov qword ptr [r12 + 384], rdx
 cmp eax, 99
 je snoch0_n32_α
 jmp snoch0_n31_α
 snoch0_n27_β:
 jmp snoch0_n32_α
snoch0_n28_α:
# IR_VAR
bb36_α:
 mov rdi, qword ptr [rip + .Lx57_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 392], rax
 mov qword ptr [r12 + 400], rdx
 jmp snoch0_n33_α
 snoch0_n28_β:
 jmp snoch0_n12_α
.Lx57_0:
 .quad .Lx57_0_s
.Lx57_0_s:
 .string "I"
snoch0_n29_α:
bb37_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S5]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 408], rax
 jmp snoch0_n34_α
 snoch0_n29_β:
 jmp snoch0_n23_α
snoch0_n30_α:
# IR_LIT_scalar
bb38_α:
 jmp snoch0_n35_α
 snoch0_n30_β:
 jmp snoch0_n27_α
snoch0_n31_α:
bb39_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S7]
 mov rsi, qword ptr [r12 + 376]
 mov rdx, qword ptr [r12 + 384]
 call rt_gvar_assign_descr@PLT
 jmp snoch0_n32_α
 snoch0_n31_β:
 jmp snoch0_n32_α
snoch0_n32_α:
bb40_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 416], 0
 lea rax, [rip + .S9]
 mov qword ptr [r12 + 424], rax
 mov dword ptr [r12 + 432], 1
 lea rax, [rip + .S6]
 mov qword ptr [r12 + 440], rax
 lea rdi, [rip + .S8]
 lea rsi, [r12 + 416]
 mov edx, 2
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch0_n36_α
 snoch0_n32_β:
 jmp snoch0_n36_α
snoch0_n33_α:
# IR_LIT_scalar
bb41_α:
 jmp snoch0_n37_α
 snoch0_n33_β:
 jmp snoch0_n12_α
snoch0_n34_α:
bb42_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 200]
 mov rsi, qword ptr [r12 + 208]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 408]
 call str_concat_d@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp snoch0_n38_α
 snoch0_n34_β:
 jmp snoch0_n23_α
snoch0_n35_α:
bb43_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S3]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 464], rax
 jmp snoch0_n39_α
 snoch0_n35_β:
 jmp snoch0_n27_α
snoch0_n36_α:
# IR_LIT_scalar
bb44_α:
 jmp snoch0_n40_α
 snoch0_n36_β:
 jmp flat_γ
snoch0_n37_α:
bb45_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S5]
 call rt_gvar_get_int@PLT
 mov rcx, 2
 imul rax, rcx
 mov qword ptr [r12 + 472], rax
 jmp snoch0_n41_α
 snoch0_n37_β:
 jmp snoch0_n12_α
snoch0_n38_α:
bb46_α:
# IR_ASSIGN
 lea rdi, [rip + .S5]
 mov rsi, qword ptr [r12 + 448]
 mov rdx, qword ptr [r12 + 456]
 call rt_gvar_assign_descr@PLT
 jmp snoch0_n42_α
 snoch0_n38_β:
 jmp snoch0_n23_α
snoch0_n39_α:
bb47_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 312]
 mov rsi, qword ptr [r12 + 320]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 464]
 call str_concat_d@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp snoch0_n43_α
 snoch0_n39_β:
 jmp snoch0_n27_α
snoch0_n40_α:
# IR_VAR
bb48_α:
 mov rdi, qword ptr [rip + .Lx71_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp snoch0_n44_α
 snoch0_n40_β:
 jmp flat_γ
.Lx71_0:
 .quad .Lx71_0_s
.Lx71_0_s:
 .string "T2"
snoch0_n41_α:
bb49_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S5]
 call rt_gvar_get_int@PLT
 mov rcx, 2
 imul rax, rcx
 mov qword ptr [r12 + 512], rax
 jmp xgvidxv72_done
 xgvidxv72_β:
 jmp snoch0_n12_α
xgvidxv72_done:
bb50_α:
# IR_IDX_SET (subscript_set, by-name)
 lea rdi, [rip + .S4]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 520], rax
 mov qword ptr [r12 + 528], rdx
 lea rdi, [rip + .S5]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 536], rax
 mov qword ptr [r12 + 544], rdx
 mov rax, qword ptr [r12 + 472]
 movabs rdx, 6
 mov qword ptr [r12 + 472], rdx
 mov qword ptr [r12 + 480], rax
 mov rdi, qword ptr [r12 + 520]
 mov rsi, qword ptr [r12 + 528]
 mov rdx, qword ptr [r12 + 536]
 mov rcx, qword ptr [r12 + 544]
 mov r8, qword ptr [r12 + 472]
 mov r9, qword ptr [r12 + 480]
 call subscript_set@PLT
 cmp eax, 0
 je snoch0_n12_α
 jmp snoch0_n12_α
 snoch0_n41_β:
 jmp snoch0_n12_α
snoch0_n42_α:
# IR_VAR
bb51_α:
 mov rdi, qword ptr [rip + .Lx76_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 552], rax
 mov qword ptr [r12 + 560], rdx
 jmp snoch0_n45_α
 snoch0_n42_β:
 jmp snoch0_n20_α
.Lx76_0:
 .quad .Lx76_0_s
.Lx76_0_s:
 .string "SUM"
snoch0_n43_α:
bb52_α:
# IR_ASSIGN
 lea rdi, [rip + .S3]
 mov rsi, qword ptr [r12 + 480]
 mov rdx, qword ptr [r12 + 488]
 call rt_gvar_assign_descr@PLT
 jmp snoch0_n8_α
 snoch0_n43_β:
 jmp snoch0_n27_α
snoch0_n44_α:
# IR_VAR
bb53_α:
 mov rdi, qword ptr [rip + .Lx80_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 568], rax
 mov qword ptr [r12 + 576], rdx
 jmp snoch0_n46_α
 snoch0_n44_β:
 jmp flat_γ
.Lx80_0:
 .quad .Lx80_0_s
.Lx80_0_s:
 .string "T1"
snoch0_n45_α:
bb54_α:
# IR_IDX (subscript_get, by-name)
 lea rdi, [rip + .S4]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 584], rax
 mov qword ptr [r12 + 592], rdx
 lea rdi, [rip + .S5]
 call NV_GET_fn@PLT
 mov rcx, rdx
 mov rdx, rax
 mov rdi, qword ptr [r12 + 584]
 mov rsi, qword ptr [r12 + 592]
 call subscript_get@PLT
 mov qword ptr [r12 + 600], rax
 mov qword ptr [r12 + 608], rdx
 jmp snoch0_n47_α
 snoch0_n45_β:
 jmp snoch0_n20_α
snoch0_n46_α:
bb55_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S7]
 lea rsi, [rip + .S2]
 mov rdx, 1
 call rt_gvar_arith@PLT
 mov qword ptr [r12 + 616], rax
 jmp snoch0_n48_α
 snoch0_n46_β:
 jmp flat_γ
snoch0_n47_α:
bb56_α:
# IR_IDX (subscript_get, by-name)
 lea rdi, [rip + .S4]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 lea rdi, [rip + .S5]
 call NV_GET_fn@PLT
 mov rcx, rdx
 mov rdx, rax
 mov rdi, qword ptr [r12 + 624]
 mov rsi, qword ptr [r12 + 632]
 call subscript_get@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xgvidx83_done
 xgvidx83_β:
 jmp snoch0_n20_α
xgvidx83_done:
bb57_α:
# IR_BINOP_GVAR_ARITH (dynamic operands: DESCR-in DESCR-out via rt_num_arith)
 lea rdi, [rip + .S6]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 552], rax
 mov qword ptr [r12 + 560], rdx
 mov rdi, qword ptr [r12 + 552]
 mov rsi, qword ptr [r12 + 560]
 mov rdx, qword ptr [r12 + 600]
 mov rcx, qword ptr [r12 + 608]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je snoch0_n20_α
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp snoch0_n49_α
 snoch0_n47_β:
 jmp snoch0_n20_α
snoch0_n48_α:
# IR_LIT_S
bb58_α:
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx87_0]
 mov qword ptr [r12 + 680], rax
 jmp xgvcat86_0d
 xgvcat86_0b:
 jmp flat_γ
.Lx87_0:
 .quad .Lx87_0_s
.Lx87_0_s:
 .string "ms: "
xgvcat86_0d:
bb59_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 672]
 mov rsi, qword ptr [r12 + 680]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 616]
 call str_concat_d@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp snoch0_n50_α
 snoch0_n48_β:
 jmp flat_γ
snoch0_n49_α:
bb60_α:
# IR_ASSIGN
 lea rdi, [rip + .S6]
 mov rsi, qword ptr [r12 + 656]
 mov rdx, qword ptr [r12 + 664]
 call rt_gvar_assign_descr@PLT
 jmp snoch0_n20_α
 snoch0_n49_β:
 jmp snoch0_n20_α
snoch0_n50_α:
bb61_α:
# IR_ASSIGN
 lea rdi, [rip + .S8]
 mov rsi, qword ptr [r12 + 688]
 mov rdx, qword ptr [r12 + 696]
 call rt_gvar_assign_descr@PLT
 jmp flat_γ
 snoch0_n50_β:
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
