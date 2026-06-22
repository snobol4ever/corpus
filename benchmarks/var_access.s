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
 movabs rsi, 2
 call rt_gvar_assign_int@PLT
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
 lea rdi, [rip + .S5]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch0_n12_α
 snoch0_n11_β:
 jmp snoch0_n12_α
snoch0_n12_α:
# IR_LIT_scalar
bb13_α:
 jmp snoch0_n13_α
 snoch0_n12_β:
 jmp snoch0_n14_α
snoch0_n13_α:
bb14_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S6]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch0_n14_α
 snoch0_n13_β:
 jmp snoch0_n14_α
snoch0_n14_α:
# IR_LIT_scalar
bb15_α:
 jmp snoch0_n15_α
 snoch0_n14_β:
 jmp snoch0_n16_α
snoch0_n15_α:
bb16_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S7]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch0_n16_α
 snoch0_n15_β:
 jmp snoch0_n16_α
snoch0_n16_α:
# IR_LIT_scalar
bb17_α:
 jmp snoch0_n17_α
 snoch0_n16_β:
 jmp snoch0_n18_α
snoch0_n17_α:
bb18_α:
# IR_ASSIGN_LIT_I
 lea rdi, [rip + .S8]
 movabs rsi, 0
 call rt_gvar_assign_int@PLT
 jmp snoch0_n18_α
 snoch0_n17_β:
 jmp snoch0_n18_α
snoch0_n18_α:
# IR_VAR
bb19_α:
 mov rdi, qword ptr [rip + .Lx21_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp snoch0_n19_α
 snoch0_n18_β:
 jmp snoch0_n20_α
.Lx21_0:
 .quad .Lx21_0_s
.Lx21_0_s:
 .string "A"
snoch0_n19_α:
# IR_LIT_scalar
bb20_α:
 jmp snoch0_n21_α
 snoch0_n19_β:
 jmp snoch0_n20_α
snoch0_n20_α:
# IR_VAR
bb21_α:
 mov rdi, qword ptr [rip + .Lx24_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp snoch0_n22_α
 snoch0_n20_β:
 jmp snoch0_n23_α
.Lx24_0:
 .quad .Lx24_0_s
.Lx24_0_s:
 .string "B"
snoch0_n21_α:
bb22_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S3]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 48], rax
 jmp snoch0_n24_α
 snoch0_n21_β:
 jmp snoch0_n20_α
snoch0_n22_α:
# IR_LIT_scalar
bb23_α:
 jmp snoch0_n25_α
 snoch0_n22_β:
 jmp snoch0_n23_α
snoch0_n23_α:
# IR_VAR
bb24_α:
 mov rdi, qword ptr [rip + .Lx28_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 56], rax
 mov qword ptr [r12 + 64], rdx
 jmp snoch0_n26_α
 snoch0_n23_β:
 jmp snoch0_n27_α
.Lx28_0:
 .quad .Lx28_0_s
.Lx28_0_s:
 .string "A"
snoch0_n24_α:
bb25_α:
# IR_ASSIGN
 lea rdi, [rip + .S3]
 mov rsi, qword ptr [r12 + 48]
 call rt_gvar_assign_int@PLT
 jmp snoch0_n20_α
 snoch0_n24_β:
 jmp snoch0_n20_α
snoch0_n25_α:
bb26_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S4]
 call rt_gvar_get_int@PLT
 mov rcx, 2
 add rax, rcx
 mov qword ptr [r12 + 72], rax
 jmp snoch0_n28_α
 snoch0_n25_β:
 jmp snoch0_n23_α
snoch0_n26_α:
# IR_VAR
bb27_α:
 mov rdi, qword ptr [rip + .Lx33_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp snoch0_n29_α
 snoch0_n26_β:
 jmp snoch0_n27_α
.Lx33_0:
 .quad .Lx33_0_s
.Lx33_0_s:
 .string "B"
snoch0_n27_α:
# IR_VAR
bb28_α:
 mov rdi, qword ptr [rip + .Lx35_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp snoch0_n30_α
 snoch0_n27_β:
 jmp snoch0_n31_α
.Lx35_0:
 .quad .Lx35_0_s
.Lx35_0_s:
 .string "C"
snoch0_n28_α:
bb29_α:
# IR_ASSIGN
 lea rdi, [rip + .S4]
 mov rsi, qword ptr [r12 + 72]
 call rt_gvar_assign_int@PLT
 jmp snoch0_n23_α
 snoch0_n28_β:
 jmp snoch0_n23_α
snoch0_n29_α:
bb30_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S3]
 lea rsi, [rip + .S4]
 mov rdx, 0
 call rt_gvar_arith@PLT
 mov qword ptr [r12 + 112], rax
 jmp snoch0_n32_α
 snoch0_n29_β:
 jmp snoch0_n27_α
snoch0_n30_α:
# IR_VAR
bb31_α:
 mov rdi, qword ptr [rip + .Lx40_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 120], rax
 mov qword ptr [r12 + 128], rdx
 jmp snoch0_n33_α
 snoch0_n30_β:
 jmp snoch0_n31_α
.Lx40_0:
 .quad .Lx40_0_s
.Lx40_0_s:
 .string "A"
snoch0_n31_α:
# IR_VAR
bb32_α:
 mov rdi, qword ptr [rip + .Lx42_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 136], rax
 mov qword ptr [r12 + 144], rdx
 jmp snoch0_n34_α
 snoch0_n31_β:
 jmp snoch0_n35_α
.Lx42_0:
 .quad .Lx42_0_s
.Lx42_0_s:
 .string "D"
snoch0_n32_α:
bb33_α:
# IR_ASSIGN
 lea rdi, [rip + .S5]
 mov rsi, qword ptr [r12 + 112]
 call rt_gvar_assign_int@PLT
 jmp snoch0_n27_α
 snoch0_n32_β:
 jmp snoch0_n27_α
snoch0_n33_α:
bb34_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S5]
 lea rsi, [rip + .S3]
 mov rdx, 0
 call rt_gvar_arith@PLT
 mov qword ptr [r12 + 152], rax
 jmp snoch0_n36_α
 snoch0_n33_β:
 jmp snoch0_n31_α
snoch0_n34_α:
# IR_VAR
bb35_α:
 mov rdi, qword ptr [rip + .Lx47_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp snoch0_n37_α
 snoch0_n34_β:
 jmp snoch0_n35_α
.Lx47_0:
 .quad .Lx47_0_s
.Lx47_0_s:
 .string "B"
snoch0_n35_α:
# IR_VAR
bb36_α:
 mov rdi, qword ptr [rip + .Lx50_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xgvarg48_done
 xgvarg48_β:
 jmp snoch0_n39_α
.Lx50_0:
 .quad .Lx50_0_s
.Lx50_0_s:
 .string "N"
xgvarg48_done:
# IR_LIT_I
bb37_α:
 mov qword ptr [r12 + 192], 6
 mov rax, qword ptr [rip + .Lx52_0]
 mov qword ptr [r12 + 200], rax
 jmp xgvarg51_done
 xgvarg51_β:
 jmp snoch0_n39_α
.Lx52_0:
 .quad 10000000
xgvarg51_done:
bb38_α:
# BOX IR_CALL LT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+176] -> [r12+224]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 232], rax
# marshal arg1 = producer-box slot [r12+192] -> [r12+240]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 248], rax
  .section .rodata
  .Lbynamefn54: .string "LT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn54]
 lea rsi, [r12 + 224]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je snoch0_n39_α
 jmp snoch0_n38_α
snoch0_n35_β:
 jmp snoch0_n39_α
snoch0_n36_α:
bb39_α:
# IR_ASSIGN
 lea rdi, [rip + .S6]
 mov rsi, qword ptr [r12 + 152]
 call rt_gvar_assign_int@PLT
 jmp snoch0_n31_α
 snoch0_n36_β:
 jmp snoch0_n31_α
snoch0_n37_α:
bb40_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S6]
 lea rsi, [rip + .S4]
 mov rdx, 0
 call rt_gvar_arith@PLT
 mov qword ptr [r12 + 256], rax
 jmp snoch0_n40_α
 snoch0_n37_β:
 jmp snoch0_n35_α
snoch0_n38_α:
# IR_VAR
bb41_α:
 mov rdi, qword ptr [rip + .Lx59_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 264], rax
 mov qword ptr [r12 + 272], rdx
 jmp snoch0_n41_α
 snoch0_n38_β:
 jmp snoch0_n39_α
.Lx59_0:
 .quad .Lx59_0_s
.Lx59_0_s:
 .string "N"
snoch0_n39_α:
bb42_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn61: .string "TIME"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn61]
 lea rsi, [r12 + 296]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 280], rax
 mov qword ptr [r12 + 288], rdx
 cmp eax, 99
 je snoch0_n43_α
 jmp snoch0_n42_α
 snoch0_n39_β:
 jmp snoch0_n43_α
snoch0_n40_α:
bb43_α:
# IR_ASSIGN
 lea rdi, [rip + .S7]
 mov rsi, qword ptr [r12 + 256]
 call rt_gvar_assign_int@PLT
 jmp snoch0_n35_α
 snoch0_n40_β:
 jmp snoch0_n35_α
snoch0_n41_α:
# IR_LIT_scalar
bb44_α:
 jmp snoch0_n44_α
 snoch0_n41_β:
 jmp snoch0_n39_α
snoch0_n42_α:
bb45_α:
# IR_ASSIGN_CALL
 lea rdi, [rip + .S9]
 mov rsi, qword ptr [r12 + 280]
 mov rdx, qword ptr [r12 + 288]
 call rt_gvar_assign_descr@PLT
 jmp snoch0_n43_α
 snoch0_n42_β:
 jmp snoch0_n43_α
snoch0_n43_α:
bb46_α:
# IR_ASSIGN_CONCAT 2 parts
 mov dword ptr [r12 + 296], 0
 lea rax, [rip + .S11]
 mov qword ptr [r12 + 304], rax
 mov dword ptr [r12 + 312], 1
 lea rax, [rip + .S7]
 mov qword ptr [r12 + 320], rax
 lea rdi, [rip + .S10]
 lea rsi, [r12 + 296]
 mov edx, 2
 push r10
 push rbx
 mov rbx, rsp
 and rsp, -16
 call rt_gvar_assign_concat_parts@PLT
 mov rsp, rbx
 pop rbx
 pop r10
 jmp snoch0_n45_α
 snoch0_n43_β:
 jmp snoch0_n45_α
snoch0_n44_α:
bb47_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S8]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 328], rax
 jmp snoch0_n46_α
 snoch0_n44_β:
 jmp snoch0_n39_α
snoch0_n45_α:
# IR_LIT_scalar
bb48_α:
 jmp snoch0_n47_α
 snoch0_n45_β:
 jmp flat_γ
snoch0_n46_α:
# IR_VAR
bb49_α:
 mov rdi, qword ptr [rip + .Lx72_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xgvarg70_done
 xgvarg70_β:
 jmp snoch0_n39_α
.Lx72_0:
 .quad .Lx72_0_s
.Lx72_0_s:
 .string "N"
xgvarg70_done:
# IR_LIT_I
bb50_α:
 mov qword ptr [r12 + 192], 6
 mov rax, qword ptr [rip + .Lx74_0]
 mov qword ptr [r12 + 200], rax
 jmp xgvarg73_done
 xgvarg73_β:
 jmp snoch0_n39_α
.Lx74_0:
 .quad 10000000
xgvarg73_done:
bb51_α:
# BOX IR_CALL LT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+176] -> [r12+368]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 376], rax
# marshal arg1 = producer-box slot [r12+192] -> [r12+384]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 392], rax
  .section .rodata
  .Lbynamefn76: .string "LT"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn76]
 lea rsi, [r12 + 368]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 cmp eax, 99
 je snoch0_n39_α
 jmp xgvcat69_0d
xgvcat69_0b:
 jmp snoch0_n39_α
xgvcat69_0d:
bb52_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S8]
 call rt_gvar_get_int@PLT
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 400], rax
 jmp xgvcat77_1d
 xgvcat77_1b:
 jmp snoch0_n39_α
xgvcat77_1d:
bb53_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 208]
 mov rsi, qword ptr [r12 + 216]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 328]
 call str_concat_d@PLT
 mov qword ptr [r12 + 408], rax
 mov qword ptr [r12 + 416], rdx
 jmp snoch0_n48_α
 snoch0_n46_β:
 jmp snoch0_n39_α
snoch0_n47_α:
# IR_VAR
bb54_α:
 mov rdi, qword ptr [rip + .Lx81_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 424], rax
 mov qword ptr [r12 + 432], rdx
 jmp snoch0_n49_α
 snoch0_n47_β:
 jmp flat_γ
.Lx81_0:
 .quad .Lx81_0_s
.Lx81_0_s:
 .string "T2"
snoch0_n48_α:
bb55_α:
# IR_ASSIGN
 lea rdi, [rip + .S8]
 mov rsi, qword ptr [r12 + 408]
 mov rdx, qword ptr [r12 + 416]
 call rt_gvar_assign_descr@PLT
 jmp snoch0_n18_α
 snoch0_n48_β:
 jmp snoch0_n39_α
snoch0_n49_α:
# IR_VAR
bb56_α:
 mov rdi, qword ptr [rip + .Lx85_0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 440], rax
 mov qword ptr [r12 + 448], rdx
 jmp snoch0_n50_α
 snoch0_n49_β:
 jmp flat_γ
.Lx85_0:
 .quad .Lx85_0_s
.Lx85_0_s:
 .string "T1"
snoch0_n50_α:
bb57_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S9]
 lea rsi, [rip + .S2]
 mov rdx, 1
 call rt_gvar_arith@PLT
 mov qword ptr [r12 + 456], rax
 jmp snoch0_n51_α
 snoch0_n50_β:
 jmp flat_γ
snoch0_n51_α:
# IR_LIT_S
bb58_α:
 mov qword ptr [r12 + 464], 1
 mov rax, qword ptr [rip + .Lx88_0]
 mov qword ptr [r12 + 472], rax
 jmp xgvcat87_0d
 xgvcat87_0b:
 jmp flat_γ
.Lx88_0:
 .quad .Lx88_0_s
.Lx88_0_s:
 .string "ms: "
xgvcat87_0d:
bb59_α:
# IR_BINOP_GVAR_ARITH
 lea rdi, [rip + .S9]
 lea rsi, [rip + .S2]
 mov rdx, 1
 call rt_gvar_arith@PLT
 mov qword ptr [r12 + 480], rax
 jmp xgvcat89_1d
 xgvcat89_1b:
 jmp flat_γ
xgvcat89_1d:
bb60_α:
# IR_BINOP_GVAR_CONCAT
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 mov rdx, 6
 mov rcx, qword ptr [r12 + 456]
 call str_concat_d@PLT
 mov qword ptr [r12 + 488], rax
 mov qword ptr [r12 + 496], rdx
 jmp snoch0_n52_α
 snoch0_n51_β:
 jmp flat_γ
snoch0_n52_α:
bb61_α:
# IR_ASSIGN
 lea rdi, [rip + .S10]
 mov rsi, qword ptr [r12 + 488]
 mov rdx, qword ptr [r12 + 496]
 call rt_gvar_assign_descr@PLT
 jmp flat_γ
 snoch0_n52_β:
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
.S3: .string "A"
.S4: .string "B"
.S5: .string "C"
.S6: .string "D"
.S7: .string "E"
.S8: .string "N"
.S9: .string "T2"
.S10: .string "OUTPUT"
.S11: .string "result: "
.text
