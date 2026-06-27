  .intel_syntax noprefix
  .text
  .globl main
main:
  push rbp
  mov rbp, rsp
  call rt_frame@PLT
  mov rdi, rax
  xor esi, esi
  call main_α
  xor eax, eax
  pop rbp
  ret
main_α:
#=======================================================================================================================
    .global main_α
    .global main_β
    .global main_γ
    .global main_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
main_α_body:
xchain0_n0_α:
# IR_LIT_S
bb1_α:
 mov qword ptr [r12 + 32], 1
 mov rax, qword ptr [rip + .Lx1_0]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n2_α
.Lx1_0:
 .quad .Lx1_0_s
.Lx1_0_s:
 .string "a"
xchain0_n1_α:
bb2_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n2_α
xchain0_n2_α:
# IR_LIT_S
bb3_α:
 mov qword ptr [r12 + 64], 1
 mov rax, qword ptr [rip + .Lx3_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n4_α
.Lx3_0:
 .quad .Lx3_0_s
.Lx3_0_s:
 .string "b"
xchain0_n3_α:
bb4_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n4_α
xchain0_n4_α:
# IR_VAR
bb5_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp xchain0_n8_α
xchain0_n5_α:
# IR_VAR
bb6_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n6_α
 xchain0_n5_β:
 jmp xchain0_n8_α
xchain0_n6_α:
bb7_α:
# IR_BINOP_RELOP
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 16]
 mov rcx, qword ptr [r12 + 24]
 mov r8d, 12
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n8_α
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 104], rax
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp xchain0_n8_α
xchain0_n7_α:
# IR_LIT_S
bb8_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx10_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain0_n9_α
 xchain0_n7_β:
 jmp xchain0_n8_α
.Lx10_0:
 .quad .Lx10_0_s
.Lx10_0_s:
 .string "a<<b"
xchain0_n8_α:
# IR_VAR
bb9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n10_α
 xchain0_n8_β:
 jmp xchain0_n13_α
xchain0_n9_α:
bb10_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 call rt_write_any_nl@PLT
 jmp xchain0_n8_α
xchain0_n9_β:
xchain0_n9_β:
 jmp xchain0_n8_α
xchain0_n10_α:
# IR_VAR
bb11_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n11_α
 xchain0_n10_β:
 jmp xchain0_n13_α
xchain0_n11_α:
bb12_α:
# IR_BINOP_RELOP
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 0]
 mov rcx, qword ptr [r12 + 8]
 mov r8d, 14
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n13_α
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 136], rax
 jmp xchain0_n12_α
 xchain0_n11_β:
 jmp xchain0_n13_α
xchain0_n12_α:
# IR_LIT_S
bb13_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx17_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain0_n14_α
 xchain0_n12_β:
 jmp xchain0_n13_α
.Lx17_0:
 .quad .Lx17_0_s
.Lx17_0_s:
 .string "b>>a"
xchain0_n13_α:
# IR_VAR
bb14_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n15_α
 xchain0_n13_β:
 jmp xchain0_n18_α
xchain0_n14_α:
bb15_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 144]
 mov rsi, qword ptr [r12 + 152]
 call rt_write_any_nl@PLT
 jmp xchain0_n13_α
xchain0_n14_β:
xchain0_n14_β:
 jmp xchain0_n13_α
xchain0_n15_α:
# IR_VAR
bb16_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n16_α
 xchain0_n15_β:
 jmp xchain0_n18_α
xchain0_n16_α:
bb17_α:
# IR_BINOP_RELOP
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 0]
 mov rcx, qword ptr [r12 + 8]
 mov r8d, 13
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n18_α
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 168], rax
 jmp xchain0_n17_α
 xchain0_n16_β:
 jmp xchain0_n18_α
xchain0_n17_α:
# IR_LIT_S
bb18_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx24_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain0_n19_α
 xchain0_n17_β:
 jmp xchain0_n18_α
.Lx24_0:
 .quad .Lx24_0_s
.Lx24_0_s:
 .string "a<<=a"
xchain0_n18_α:
# IR_VAR
bb19_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n20_α
 xchain0_n18_β:
 jmp xchain0_n23_α
xchain0_n19_α:
bb20_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 176]
 mov rsi, qword ptr [r12 + 184]
 call rt_write_any_nl@PLT
 jmp xchain0_n18_α
xchain0_n19_β:
xchain0_n19_β:
 jmp xchain0_n18_α
xchain0_n20_α:
# IR_VAR
bb21_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n21_α
 xchain0_n20_β:
 jmp xchain0_n23_α
xchain0_n21_α:
bb22_α:
# IR_BINOP_RELOP
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 16]
 mov rcx, qword ptr [r12 + 24]
 mov r8d, 15
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n23_α
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain0_n22_α
 xchain0_n21_β:
 jmp xchain0_n23_α
xchain0_n22_α:
# IR_LIT_S
bb23_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx31_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain0_n24_α
 xchain0_n22_β:
 jmp xchain0_n23_α
.Lx31_0:
 .quad .Lx31_0_s
.Lx31_0_s:
 .string "b>>=b"
xchain0_n23_α:
# IR_VAR
bb24_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n25_α
 xchain0_n23_β:
 jmp xchain0_n28_α
xchain0_n24_α:
bb25_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 208]
 mov rsi, qword ptr [r12 + 216]
 call rt_write_any_nl@PLT
 jmp xchain0_n23_α
xchain0_n24_β:
xchain0_n24_β:
 jmp xchain0_n23_α
xchain0_n25_α:
# IR_VAR
bb26_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n26_α
 xchain0_n25_β:
 jmp xchain0_n28_α
xchain0_n26_α:
bb27_α:
# IR_BINOP_RELOP
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 0]
 mov rcx, qword ptr [r12 + 8]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n28_α
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 232], rax
 jmp xchain0_n27_α
 xchain0_n26_β:
 jmp xchain0_n28_α
xchain0_n27_α:
# IR_LIT_S
bb28_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx38_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain0_n29_α
 xchain0_n27_β:
 jmp xchain0_n28_α
.Lx38_0:
 .quad .Lx38_0_s
.Lx38_0_s:
 .string "a==a"
xchain0_n28_α:
# IR_VAR
bb29_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n30_α
 xchain0_n28_β:
 jmp xchain0_n33_α
xchain0_n29_α:
bb30_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 240]
 mov rsi, qword ptr [r12 + 248]
 call rt_write_any_nl@PLT
 jmp xchain0_n28_α
xchain0_n29_β:
xchain0_n29_β:
 jmp xchain0_n28_α
xchain0_n30_α:
# IR_VAR
bb31_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n31_α
 xchain0_n30_β:
 jmp xchain0_n33_α
xchain0_n31_α:
bb32_α:
# IR_BINOP_RELOP
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 16]
 mov rcx, qword ptr [r12 + 24]
 mov r8d, 17
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n33_α
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 264], rax
 jmp xchain0_n32_α
 xchain0_n31_β:
 jmp xchain0_n33_α
xchain0_n32_α:
# IR_LIT_S
bb33_α:
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx45_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain0_n34_α
 xchain0_n32_β:
 jmp xchain0_n33_α
.Lx45_0:
 .quad .Lx45_0_s
.Lx45_0_s:
 .string "a~==b"
xchain0_n33_α:
# IR_LIT_S
bb34_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx46_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain0_n35_α
 xchain0_n33_β:
 jmp xchain0_n36_α
.Lx46_0:
 .quad .Lx46_0_s
.Lx46_0_s:
 .string "2"
xchain0_n34_α:
bb35_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 272]
 mov rsi, qword ptr [r12 + 280]
 call rt_write_any_nl@PLT
 jmp xchain0_n33_α
xchain0_n34_β:
xchain0_n34_β:
 jmp xchain0_n33_α
xchain0_n35_α:
bb36_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 288]
 mov rdx, qword ptr [r12 + 296]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain0_n36_α
 xchain0_n35_β:
 jmp xchain0_n36_α
xchain0_n36_α:
# IR_LIT_S
bb37_α:
 mov qword ptr [r12 + 320], 1
 mov rax, qword ptr [rip + .Lx49_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain0_n37_α
 xchain0_n36_β:
 jmp xchain0_n38_α
.Lx49_0:
 .quad .Lx49_0_s
.Lx49_0_s:
 .string "3"
xchain0_n37_α:
bb38_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain0_n38_α
 xchain0_n37_β:
 jmp xchain0_n38_α
xchain0_n38_α:
# IR_VAR
bb39_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n39_α
 xchain0_n38_β:
 jmp xchain0_n42_α
xchain0_n39_α:
# IR_VAR
bb40_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n40_α
 xchain0_n39_β:
 jmp xchain0_n42_α
xchain0_n40_α:
bb41_α:
# IR_BINOP_RELOP
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 16]
 mov rcx, qword ptr [r12 + 24]
 mov r8d, 12
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n42_α
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 360], rax
 jmp xchain0_n41_α
 xchain0_n40_β:
 jmp xchain0_n42_α
xchain0_n41_α:
# IR_LIT_S
bb42_α:
 mov qword ptr [r12 + 368], 1
 mov rax, qword ptr [rip + .Lx56_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain0_n43_α
 xchain0_n41_β:
 jmp xchain0_n42_α
.Lx56_0:
 .quad .Lx56_0_s
.Lx56_0_s:
 .string "2<<3"
xchain0_n42_α:
# IR_VAR
bb43_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n44_α
 xchain0_n42_β:
 jmp xchain0_n47_α
xchain0_n43_α:
bb44_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 368]
 mov rsi, qword ptr [r12 + 376]
 call rt_write_any_nl@PLT
 jmp xchain0_n42_α
xchain0_n43_β:
xchain0_n43_β:
 jmp xchain0_n42_α
xchain0_n44_α:
# IR_VAR
bb45_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n45_α
 xchain0_n44_β:
 jmp xchain0_n47_α
xchain0_n45_α:
bb46_α:
# IR_BINOP_RELOP
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 0]
 mov rcx, qword ptr [r12 + 8]
 mov r8d, 14
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n47_α
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 392], rax
 jmp xchain0_n46_α
 xchain0_n45_β:
 jmp xchain0_n47_α
xchain0_n46_α:
# IR_LIT_S
bb47_α:
 mov qword ptr [r12 + 400], 1
 mov rax, qword ptr [rip + .Lx63_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain0_n48_α
 xchain0_n46_β:
 jmp xchain0_n47_α
.Lx63_0:
 .quad .Lx63_0_s
.Lx63_0_s:
 .string "3>>2"
xchain0_n47_α:
# IR_VAR
bb48_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n49_α
 xchain0_n47_β:
 jmp xchain0_n52_α
xchain0_n48_α:
bb49_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 400]
 mov rsi, qword ptr [r12 + 408]
 call rt_write_any_nl@PLT
 jmp xchain0_n47_α
xchain0_n48_β:
xchain0_n48_β:
 jmp xchain0_n47_α
xchain0_n49_α:
# IR_LIT_S
bb50_α:
 mov qword ptr [r12 + 416], 1
 mov rax, qword ptr [rip + .Lx67_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain0_n50_α
 xchain0_n49_β:
 jmp xchain0_n52_α
.Lx67_0:
 .quad .Lx67_0_s
.Lx67_0_s:
 .string "2"
xchain0_n50_α:
bb51_α:
# IR_BINOP_RELOP
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 416]
 mov rcx, qword ptr [r12 + 424]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n52_α
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 440], rax
 jmp xchain0_n51_α
 xchain0_n50_β:
 jmp xchain0_n52_α
xchain0_n51_α:
# IR_LIT_S
bb52_α:
 mov qword ptr [r12 + 448], 1
 mov rax, qword ptr [rip + .Lx69_0]
 mov qword ptr [r12 + 456], rax
 jmp xchain0_n53_α
 xchain0_n51_β:
 jmp xchain0_n52_α
.Lx69_0:
 .quad .Lx69_0_s
.Lx69_0_s:
 .string "2==2"
xchain0_n52_α:
# IR_LIT_S
bb53_α:
 mov qword ptr [r12 + 464], 1
 mov rax, qword ptr [rip + .Lx70_0]
 mov qword ptr [r12 + 472], rax
 jmp xchain0_n54_α
 xchain0_n52_β:
 jmp xchain0_n55_α
.Lx70_0:
 .quad .Lx70_0_s
.Lx70_0_s:
 .string "ac"
xchain0_n53_α:
bb54_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 448]
 mov rsi, qword ptr [r12 + 456]
 call rt_write_any_nl@PLT
 jmp xchain0_n52_α
xchain0_n53_β:
xchain0_n53_β:
 jmp xchain0_n52_α
xchain0_n54_α:
bb55_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 464]
 mov rdx, qword ptr [r12 + 472]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain0_n55_α
 xchain0_n54_β:
 jmp xchain0_n55_α
xchain0_n55_α:
# IR_LIT_S
bb56_α:
 mov qword ptr [r12 + 496], 1
 mov dword ptr [r12 + 500], -1
 mov rax, qword ptr [rip + .Lx73_0]
 mov qword ptr [r12 + 504], rax
 jmp xchain0_n56_α
 xchain0_n55_β:
 jmp xchain0_n57_α
.Lx73_0:
 .quad .Lx73_0_s
.Lx73_0_s:
 .string "ac"
xchain0_n56_α:
bb57_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 496]
 mov rdx, qword ptr [r12 + 504]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain0_n57_α
 xchain0_n56_β:
 jmp xchain0_n57_α
xchain0_n57_α:
# IR_VAR
bb58_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n58_α
 xchain0_n57_β:
 jmp xchain0_n61_α
xchain0_n58_α:
# IR_VAR
bb59_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n59_α
 xchain0_n58_β:
 jmp xchain0_n61_α
xchain0_n59_α:
bb60_α:
# IR_BINOP_RELOP
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 16]
 mov rcx, qword ptr [r12 + 24]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n61_α
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 536], rax
 jmp xchain0_n60_α
 xchain0_n59_β:
 jmp xchain0_n61_α
xchain0_n60_α:
# IR_LIT_S
bb61_α:
 mov qword ptr [r12 + 544], 1
 mov rax, qword ptr [rip + .Lx80_0]
 mov qword ptr [r12 + 552], rax
 jmp xchain0_n62_α
 xchain0_n60_β:
 jmp xchain0_n61_α
.Lx80_0:
 .quad .Lx80_0_s
.Lx80_0_s:
 .string "ac=='ca'"
xchain0_n61_α:
# IR_VAR
bb62_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n63_α
 xchain0_n61_β:
 jmp xchain0_n66_α
xchain0_n62_α:
bb63_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 544]
 mov rsi, qword ptr [r12 + 552]
 call rt_write_any_nl@PLT
 jmp xchain0_n61_α
xchain0_n62_β:
xchain0_n62_β:
 jmp xchain0_n61_α
xchain0_n63_α:
# IR_VAR
bb64_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n64_α
 xchain0_n63_β:
 jmp xchain0_n66_α
xchain0_n64_α:
bb65_α:
# IR_BINOP_RELOP
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 16]
 mov rcx, qword ptr [r12 + 24]
 mov r8d, 13
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n66_α
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 568], rax
 jmp xchain0_n65_α
 xchain0_n64_β:
 jmp xchain0_n66_α
xchain0_n65_α:
# IR_LIT_S
bb66_α:
 mov qword ptr [r12 + 576], 1
 mov rax, qword ptr [rip + .Lx87_0]
 mov qword ptr [r12 + 584], rax
 jmp xchain0_n67_α
 xchain0_n65_β:
 jmp xchain0_n66_α
.Lx87_0:
 .quad .Lx87_0_s
.Lx87_0_s:
 .string "ac<<='ca'"
xchain0_n66_α:
# IR_LIT_S
bb67_α:
 mov qword ptr [r12 + 592], 1
 mov rax, qword ptr [rip + .Lx88_0]
 mov qword ptr [r12 + 600], rax
 jmp xchain0_n68_α
 xchain0_n66_β:
 jmp xchain0_n69_α
.Lx88_0:
 .quad .Lx88_0_s
.Lx88_0_s:
 .string ""
xchain0_n67_α:
bb68_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 576]
 mov rsi, qword ptr [r12 + 584]
 call rt_write_any_nl@PLT
 jmp xchain0_n66_α
xchain0_n67_β:
xchain0_n67_β:
 jmp xchain0_n66_α
xchain0_n68_α:
bb69_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 592]
 mov rdx, qword ptr [r12 + 600]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain0_n69_α
 xchain0_n68_β:
 jmp xchain0_n69_α
xchain0_n69_α:
# IR_LIT_S
bb70_α:
 mov qword ptr [r12 + 624], 1
 mov rax, qword ptr [rip + .Lx91_0]
 mov qword ptr [r12 + 632], rax
 jmp xchain0_n70_α
 xchain0_n69_β:
 jmp xchain0_n71_α
.Lx91_0:
 .quad .Lx91_0_s
.Lx91_0_s:
 .string "a"
xchain0_n70_α:
bb71_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 624]
 mov rdx, qword ptr [r12 + 632]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xchain0_n71_α
 xchain0_n70_β:
 jmp xchain0_n71_α
xchain0_n71_α:
# IR_VAR
bb72_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n72_α
 xchain0_n71_β:
 jmp xchain0_n75_α
xchain0_n72_α:
# IR_VAR
bb73_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n73_α
 xchain0_n72_β:
 jmp xchain0_n75_α
xchain0_n73_α:
bb74_α:
# IR_BINOP_RELOP
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 0]
 mov rcx, qword ptr [r12 + 8]
 mov r8d, 13
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n75_α
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 664], rax
 jmp xchain0_n74_α
 xchain0_n73_β:
 jmp xchain0_n75_α
xchain0_n74_α:
# IR_LIT_S
bb75_α:
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx98_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain0_n76_α
 xchain0_n74_β:
 jmp xchain0_n75_α
.Lx98_0:
 .quad .Lx98_0_s
.Lx98_0_s:
 .string "empty<<=empty"
xchain0_n75_α:
# IR_VAR
bb76_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n77_α
 xchain0_n75_β:
 jmp xchain0_n80_α
xchain0_n76_α:
bb77_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 672]
 mov rsi, qword ptr [r12 + 680]
 call rt_write_any_nl@PLT
 jmp xchain0_n75_α
xchain0_n76_β:
xchain0_n76_β:
 jmp xchain0_n75_α
xchain0_n77_α:
# IR_VAR
bb78_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n78_α
 xchain0_n77_β:
 jmp xchain0_n80_α
xchain0_n78_α:
bb79_α:
# IR_BINOP_RELOP
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 16]
 mov rcx, qword ptr [r12 + 24]
 mov r8d, 12
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n80_α
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 696], rax
 jmp xchain0_n79_α
 xchain0_n78_β:
 jmp xchain0_n80_α
xchain0_n79_α:
# IR_LIT_S
bb80_α:
 mov qword ptr [r12 + 704], 1
 mov rax, qword ptr [rip + .Lx105_0]
 mov qword ptr [r12 + 712], rax
 jmp xchain0_n81_α
 xchain0_n79_β:
 jmp xchain0_n80_α
.Lx105_0:
 .quad .Lx105_0_s
.Lx105_0_s:
 .string "empty<<a"
xchain0_n80_α:
# IR_VAR
bb81_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n82_α
 xchain0_n80_β:
 jmp main_ω
xchain0_n81_α:
bb82_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 704]
 mov rsi, qword ptr [r12 + 712]
 call rt_write_any_nl@PLT
 jmp xchain0_n80_α
xchain0_n81_β:
xchain0_n81_β:
 jmp xchain0_n80_α
xchain0_n82_α:
# IR_VAR
bb83_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n83_α
 xchain0_n82_β:
 jmp main_ω
xchain0_n83_α:
bb84_α:
# IR_BINOP_RELOP
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 0]
 mov rcx, qword ptr [r12 + 8]
 mov r8d, 14
 call rt_jct_relop@PLT
 test eax, eax
 jz main_ω
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 728], rax
 jmp xchain0_n84_α
 xchain0_n83_β:
 jmp main_ω
xchain0_n84_α:
# IR_LIT_S
bb85_α:
 mov qword ptr [r12 + 736], 1
 mov rax, qword ptr [rip + .Lx112_0]
 mov qword ptr [r12 + 744], rax
 jmp xchain0_n85_α
 xchain0_n84_β:
 jmp main_ω
.Lx112_0:
 .quad .Lx112_0_s
.Lx112_0_s:
 .string "a>>empty"
xchain0_n85_α:
bb86_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 736]
 mov rsi, qword ptr [r12 + 744]
 call rt_write_any_nl@PLT
 jmp main_γ
xchain0_n85_β:
xchain0_n85_β:
 jmp main_ω
main_β:
jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
pop r12
ret
main_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
