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
# IR_LIT_I
bb1_α:
 mov qword ptr [r12 + 80], 6
 mov rax, qword ptr [rip + .Lx1_0]
 mov qword ptr [r12 + 88], rax
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n2_α
.Lx1_0:
 .quad 50
xchain0_n1_α:
bb2_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 80]
 mov rdx, qword ptr [r12 + 88]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n2_α
xchain0_n2_α:
bb3_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+0] -> [r12+128]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 136], rax
# marshal arg1 = LIT_I -> [r12+144]
 mov qword ptr [r12 + 144], 6
 movabs rax, 1
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn4: .string "list"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn4]
 lea rsi, [r12 + 128]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain0_n4_α
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n4_α
xchain0_n3_α:
bb4_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n4_α
xchain0_n4_α:
# IR_VAR
bb5_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp xchain0_n6_α
xchain0_n5_α:
bb6_α:
# IR_IDX_SET: base/key/value from [ζ+off]; inline DT_A+int fast path, else subscript_set
 mov rax, qword ptr [r12 + 96]
 cmp eax, 4
 jne .Lx10_0
 mov rax, qword ptr [r12 + 160]
 cmp eax, 6
 jne .Lx10_0
 mov rsi, qword ptr [r12 + 104]
 mov rcx, qword ptr [r12 + 168]
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx10_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx10_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add r11, rcx
 mov rax, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 mov qword ptr [r11 + 0], rax
 mov qword ptr [r11 + 8], rdx
 jmp xchain0_n6_α
.Lx10_0:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 mov rdx, qword ptr [r12 + 160]
 mov rcx, qword ptr [r12 + 168]
 mov r8, qword ptr [r12 + 16]
 mov r9, qword ptr [r12 + 24]
 call subscript_set@PLT
 cmp eax, 0
 je xchain0_n6_α
 jmp xchain0_n6_α
 xchain0_n5_β:
 jmp xchain0_n6_α
xchain0_n6_α:
# IR_LIT_I
bb7_α:
 mov qword ptr [r12 + 176], 6
 mov rax, qword ptr [rip + .Lx11_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp xchain0_n28_β
.Lx11_0:
 .quad 2
xchain0_n7_α:
# IR_VAR
bb8_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n8_α
 xchain0_n7_β:
 jmp xchain0_n28_β
xchain0_n8_α:
# IR_TO
bb9_α:
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 208], rax
.Lx15_0:
 mov rax, qword ptr [r12 + 208]
 mov rcx, qword ptr [r12 + 8]
 cmp rax, rcx
 jg xchain0_n23_α
 mov qword ptr [r12 + 192], 6
 mov qword ptr [r12 + 200], rax
 jmp xchain0_n9_α
 xchain0_n8_β:
 inc qword ptr [r12 + 208]
 jmp .Lx15_0
xchain0_n9_α:
bb10_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 216], rax
 mov qword ptr [r12 + 224], rdx
 jmp xchain0_n10_α
 xchain0_n9_β:
 jmp xchain0_n28_β
xchain0_n10_α:
bb11_α:
# BOX IR_CALL [](...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+16] -> [r12+248]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 248], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 256], rax
# marshal arg1 = varslot [r12+32] -> [r12+264]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 264], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 272], rax
  .section .rodata
  .Lbynamefn18: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn18]
 lea rsi, [r12 + 248]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 232], rax
 mov qword ptr [r12 + 240], rdx
 cmp eax, 99
 je xchain0_n8_β
 jmp xchain0_n11_α
xchain0_n10_β:
 jmp xchain0_n8_β
xchain0_n11_α:
# IR_LIT_I
bb12_α:
 mov qword ptr [r12 + 280], 6
 mov rax, qword ptr [rip + .Lx19_0]
 mov qword ptr [r12 + 288], rax
 jmp xchain0_n12_α
 xchain0_n11_β:
 jmp xchain0_n8_β
.Lx19_0:
 .quad 1
xchain0_n12_α:
bb13_α:
# IR_BINOP_RELOP
 mov rax, qword ptr [r12 + 240]
 mov rcx, qword ptr [r12 + 288]
 cmp rax, rcx
 jne xchain0_n8_β
 mov rcx, qword ptr [r12 + 280]
 mov qword ptr [r12 + 296], rcx
 mov rcx, qword ptr [r12 + 288]
 mov qword ptr [r12 + 304], rcx
 jmp xchain0_n13_α
 xchain0_n12_β:
 jmp xchain0_n8_β
xchain0_n13_α:
# IR_VAR
bb14_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n14_α
 xchain0_n13_β:
 jmp xchain0_n28_β
xchain0_n14_α:
# IR_VAR
bb15_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n15_α
 xchain0_n14_β:
 jmp xchain0_n28_β
xchain0_n15_α:
bb16_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 40]
 mov rcx, qword ptr [r12 + 40]
 imul rax, rcx
 mov qword ptr [r12 + 312], 6
 mov qword ptr [r12 + 320], rax
 jmp xchain0_n16_α
 xchain0_n15_β:
 jmp xchain0_n28_β
xchain0_n16_α:
# IR_VAR
bb17_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n18_α
 xchain0_n16_β:
 jmp xchain0_n28_β
xchain0_n17_α:
# IR_EVERY
 jmp xchain0_n8_β
 xchain0_n17_β:
 jmp xchain0_n8_β
xchain0_n18_α:
# IR_VAR
bb19_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n19_α
 xchain0_n18_β:
 jmp xchain0_n28_β
xchain0_n19_α:
# IR_TO
bb20_α:
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 344], rax
.Lx32_0:
 mov rax, qword ptr [r12 + 344]
 mov rcx, qword ptr [r12 + 40]
 cmp rax, rcx
 jg xchain0_n17_α
 mov qword ptr [r12 + 328], 6
 mov qword ptr [r12 + 336], rax
 jmp xchain0_n20_α
 xchain0_n19_β:
 inc qword ptr [r12 + 344]
 jmp .Lx32_0
xchain0_n20_α:
bb21_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 328]
 mov rdx, qword ptr [r12 + 336]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain0_n21_α
 xchain0_n20_β:
 jmp xchain0_n28_β
xchain0_n21_α:
# IR_VAR
bb22_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n22_α
 xchain0_n21_β:
 jmp xchain0_n19_β
xchain0_n22_α:
bb23_α:
# IR_IDX_SET: base/key/value from [ζ+off]; inline DT_A+int fast path, else subscript_set
 mov rax, qword ptr [r12 + 312]
 cmp eax, 4
 jne .Lx38_0
 mov rax, qword ptr [r12 + 352]
 cmp eax, 6
 jne .Lx38_0
 mov rsi, qword ptr [r12 + 320]
 mov rcx, qword ptr [r12 + 360]
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx38_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx38_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add r11, rcx
 mov rax, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 mov qword ptr [r11 + 0], rax
 mov qword ptr [r11 + 8], rdx
 jmp xchain0_n19_β
.Lx38_0:
 mov rdi, qword ptr [r12 + 312]
 mov rsi, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 352]
 mov rcx, qword ptr [r12 + 360]
 mov r8, qword ptr [r12 + 16]
 mov r9, qword ptr [r12 + 24]
 call subscript_set@PLT
 cmp eax, 0
 je xchain0_n19_β
 jmp xchain0_n19_β
 xchain0_n22_β:
 jmp xchain0_n19_β
xchain0_n23_α:
# IR_EVERY
 jmp xchain0_n24_α
 xchain0_n23_β:
 jmp xchain0_n24_α
xchain0_n24_α:
# IR_LIT_S
bb25_α:
 mov qword ptr [r12 + 368], 1
 mov rax, qword ptr [rip + .Lx40_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain0_n25_α
 xchain0_n24_β:
 jmp xchain0_n26_α
.Lx40_0:
 .quad .Lx40_0_s
.Lx40_0_s:
 .string ""
xchain0_n25_α:
bb26_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 368]
 mov rdx, qword ptr [r12 + 376]
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain0_n26_α
 xchain0_n25_β:
 jmp xchain0_n26_α
xchain0_n26_α:
# IR_LIT_I
bb27_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx42_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain0_n27_α
 xchain0_n26_β:
 jmp xchain0_n28_β
.Lx42_0:
 .quad 2
xchain0_n27_α:
# IR_VAR
bb28_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n28_α
 xchain0_n27_β:
 jmp xchain0_n28_β
xchain0_n28_α:
# IR_TO
bb29_α:
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 432], rax
.Lx46_0:
 mov rax, qword ptr [r12 + 432]
 mov rcx, qword ptr [r12 + 8]
 cmp rax, rcx
 jg xchain0_n30_α
 mov qword ptr [r12 + 416], 6
 mov qword ptr [r12 + 424], rax
 jmp xchain0_n29_α
 xchain0_n28_β:
 inc qword ptr [r12 + 432]
 jmp .Lx46_0
xchain0_n29_α:
bb30_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 416]
 mov rdx, qword ptr [r12 + 424]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 440], rax
 mov qword ptr [r12 + 448], rdx
 jmp xchain0_n31_α
 xchain0_n29_β:
 jmp xchain0_n28_β
xchain0_n30_α:
# IR_EVERY
 jmp xchain0_n32_α
 xchain0_n30_β:
 jmp xchain0_n32_α
xchain0_n31_α:
bb32_α:
# BOX IR_CALL [](...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+16] -> [r12+472]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 472], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 480], rax
# marshal arg1 = varslot [r12+32] -> [r12+488]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 488], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 496], rax
  .section .rodata
  .Lbynamefn50: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn50]
 lea rsi, [r12 + 472]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 456], rax
 mov qword ptr [r12 + 464], rdx
 cmp eax, 99
 je xchain0_n28_β
 jmp xchain0_n33_α
xchain0_n31_β:
 jmp xchain0_n28_β
xchain0_n32_α:
# IR_VAR
bb33_α:
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 72], rax
 jmp xchain0_n34_α
 xchain0_n32_β:
 jmp main_ω
xchain0_n33_α:
# IR_LIT_I
bb34_α:
 mov qword ptr [r12 + 504], 6
 mov rax, qword ptr [rip + .Lx53_0]
 mov qword ptr [r12 + 512], rax
 jmp xchain0_n35_α
 xchain0_n33_β:
 jmp xchain0_n28_β
.Lx53_0:
 .quad 1
xchain0_n34_α:
bb35_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 64]
 mov rsi, qword ptr [r12 + 72]
 call rt_write_any_nl@PLT
 jmp main_γ
xchain0_n34_β:
xchain0_n34_β:
 jmp main_ω
xchain0_n35_α:
bb36_α:
# IR_BINOP_RELOP
 mov rax, qword ptr [r12 + 464]
 mov rcx, qword ptr [r12 + 512]
 cmp rax, rcx
 jne xchain0_n28_β
 mov rcx, qword ptr [r12 + 504]
 mov qword ptr [r12 + 520], rcx
 mov rcx, qword ptr [r12 + 512]
 mov qword ptr [r12 + 528], rcx
 jmp xchain0_n36_α
 xchain0_n35_β:
 jmp xchain0_n28_β
xchain0_n36_α:
# IR_VAR
bb37_α:
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 72], rax
 jmp xchain0_n37_α
 xchain0_n36_β:
 jmp xchain0_n41_α
xchain0_n37_α:
# IR_UNOP
bb38_α:
 mov rdi, qword ptr [r12 + 64]
 mov rsi, qword ptr [r12 + 72]
 call rt_size_d@PLT
 mov qword ptr [r12 + 536], rax
 mov qword ptr [r12 + 544], rdx
 jmp xchain0_n38_α
 xchain0_n37_β:
 jmp xchain0_n41_α
xchain0_n38_α:
# IR_LIT_I
bb39_α:
 mov qword ptr [r12 + 552], 6
 mov rax, qword ptr [rip + .Lx59_0]
 mov qword ptr [r12 + 560], rax
 jmp xchain0_n39_α
 xchain0_n38_β:
 jmp xchain0_n41_α
.Lx59_0:
 .quad 0
xchain0_n39_α:
bb40_α:
# IR_BINOP_RELOP
 mov rax, qword ptr [r12 + 544]
 mov rcx, qword ptr [r12 + 560]
 cmp rax, rcx
 jle xchain0_n41_α
 mov rcx, qword ptr [r12 + 552]
 mov qword ptr [r12 + 568], rcx
 mov rcx, qword ptr [r12 + 560]
 mov qword ptr [r12 + 576], rcx
 jmp xchain0_n40_α
 xchain0_n39_β:
 jmp xchain0_n41_α
xchain0_n40_α:
# IR_VAR
bb41_α:
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 72], rax
 jmp xchain0_n42_α
 xchain0_n40_β:
 jmp xchain0_n41_α
xchain0_n41_α:
# IR_VAR
bb42_α:
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 72], rax
 jmp xchain0_n43_α
 xchain0_n41_β:
 jmp xchain0_n28_β
xchain0_n42_α:
# IR_LIT_S
bb43_α:
 mov qword ptr [r12 + 584], 1
 mov rax, qword ptr [rip + .Lx65_0]
 mov qword ptr [r12 + 592], rax
 jmp xchain0_n44_α
 xchain0_n42_β:
 jmp xchain0_n41_α
.Lx65_0:
 .quad .Lx65_0_s
.Lx65_0_s:
 .string " "
xchain0_n43_α:
# IR_VAR
bb44_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n45_α
 xchain0_n43_β:
 jmp xchain0_n28_β
xchain0_n44_α:
bb45_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 64]
 mov rsi, qword ptr [r12 + 72]
 mov rdx, qword ptr [r12 + 584]
 mov rcx, qword ptr [r12 + 592]
 call str_concat_d@PLT
 mov qword ptr [r12 + 600], rax
 mov qword ptr [r12 + 608], rdx
 jmp xchain0_n46_α
 xchain0_n44_β:
 jmp xchain0_n41_α
xchain0_n45_α:
bb46_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 64]
 mov rsi, qword ptr [r12 + 72]
 mov rdx, qword ptr [r12 + 32]
 mov rcx, qword ptr [r12 + 40]
 call str_concat_d@PLT
 mov qword ptr [r12 + 616], rax
 mov qword ptr [r12 + 624], rdx
 jmp xchain0_n47_α
 xchain0_n45_β:
 jmp xchain0_n28_β
xchain0_n46_α:
bb47_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 600]
 mov rdx, qword ptr [r12 + 608]
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 mov qword ptr [r12 + 632], rax
 mov qword ptr [r12 + 640], rdx
 jmp xchain0_n41_α
 xchain0_n46_β:
 jmp xchain0_n41_α
xchain0_n47_α:
bb48_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 616]
 mov rdx, qword ptr [r12 + 624]
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 mov qword ptr [r12 + 648], rax
 mov qword ptr [r12 + 656], rdx
 jmp xchain0_n48_α
 xchain0_n47_β:
 jmp xchain0_n28_β
xchain0_n48_α:
jmp xchain0_n28_β
xchain0_n48_β:
jmp xchain0_n28_β
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
