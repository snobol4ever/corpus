  .intel_syntax noprefix
  .text
proc_startup:
  push rbp
  mov rbp, rsp
  .section .rodata
  .Lclassspec0: .string "simple(f)"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lclassspec0]
  call record_register@PLT
  .section .rodata
  .Lclassspec1: .string "rec(f1,f2)"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lclassspec1]
  call record_register@PLT
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
bb1_α:
# BOX IR_CALL rec(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2: .string "rec"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2]
 lea rsi, [r12 + 48]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je xchain0_n2_α
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n2_α
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
# IR_VAR
bb3_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n5_α
xchain0_n3_α:
# IR_LIT_I
bb4_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx6_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n5_α
.Lx6_0:
 .quad 1
xchain0_n4_α:
# IR_FIELD_SET
bb5_α:
 mov rdi, qword ptr [rip + .Lx8_0]
 mov rsi, qword ptr [r12 + 0]
 mov rdx, qword ptr [r12 + 8]
 mov rcx, qword ptr [r12 + 64]
 mov r8, qword ptr [r12 + 72]
 call dat_field_set@PLT
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp xchain0_n5_α
.Lx8_0:
 .quad .Lx8_0_s
.Lx8_0_s:
 .string "f1"
xchain0_n5_α:
# IR_VAR
bb6_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n6_α
 xchain0_n5_β:
 jmp xchain0_n8_α
xchain0_n6_α:
# IR_LIT_I
bb7_α:
 mov qword ptr [r12 + 80], 6
 mov rax, qword ptr [rip + .Lx11_0]
 mov qword ptr [r12 + 88], rax
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp xchain0_n8_α
.Lx11_0:
 .quad 2
xchain0_n7_α:
# IR_FIELD_SET
bb8_α:
 mov rdi, qword ptr [rip + .Lx13_0]
 mov rsi, qword ptr [r12 + 0]
 mov rdx, qword ptr [r12 + 8]
 mov rcx, qword ptr [r12 + 80]
 mov r8, qword ptr [r12 + 88]
 call dat_field_set@PLT
 jmp xchain0_n8_α
 xchain0_n7_β:
 jmp xchain0_n8_α
.Lx13_0:
 .quad .Lx13_0_s
.Lx13_0_s:
 .string "f2"
xchain0_n8_α:
# IR_VAR
bb9_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n9_α
 xchain0_n8_β:
 jmp xchain0_n14_α
xchain0_n9_α:
# IR_FIELD_GET
bb10_α:
 mov rdi, qword ptr [rip + .Lx17_0]
 mov rsi, qword ptr [r12 + 0]
 mov rdx, qword ptr [r12 + 8]
 call dat_field_get@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain0_n10_α
 xchain0_n9_β:
 jmp xchain0_n14_α
.Lx17_0:
 .quad .Lx17_0_s
.Lx17_0_s:
 .string "f1"
xchain0_n10_α:
# IR_LIT_S
bb11_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx18_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain0_n11_α
 xchain0_n10_β:
 jmp xchain0_n14_α
.Lx18_0:
 .quad .Lx18_0_s
.Lx18_0_s:
 .string " "
xchain0_n11_α:
# IR_VAR
bb12_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n12_α
 xchain0_n11_β:
 jmp xchain0_n14_α
xchain0_n12_α:
# IR_FIELD_GET
bb13_α:
 mov rdi, qword ptr [rip + .Lx22_0]
 mov rsi, qword ptr [r12 + 0]
 mov rdx, qword ptr [r12 + 8]
 call dat_field_get@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain0_n13_α
 xchain0_n12_β:
 jmp xchain0_n14_α
.Lx22_0:
 .quad .Lx22_0_s
.Lx22_0_s:
 .string "f2"
xchain0_n13_α:
bb14_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+96] -> [r12+160]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 168], rax
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+176]
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx23_2]
 mov qword ptr [r12 + 184], rax
 jmp .Lx23_3
.Lx23_2:
 .quad .Lx23_2_s
.Lx23_2_s:
 .string " "
.Lx23_3:
# marshal arg2 = nested producer-box slot [r12+128] -> [r12+192]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 200], rax
  .section .rodata
  .Lrkfn24: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn24]
 lea rsi, [r12 + 160]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n14_α
 xchain0_n13_β:
 jmp xchain0_n14_α
xchain0_n14_α:
bb15_α:
# BOX IR_CALL rec(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+224]
 mov qword ptr [r12 + 224], 6
 movabs rax, 3
 mov qword ptr [r12 + 232], rax
  .section .rodata
  .Lrkfn26: .string "rec"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn26]
 lea rsi, [r12 + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xchain0_n16_α
 jmp xchain0_n15_α
 xchain0_n14_β:
 jmp xchain0_n16_α
xchain0_n15_α:
bb16_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain0_n16_α
 xchain0_n15_β:
 jmp xchain0_n16_α
xchain0_n16_α:
# IR_VAR
bb17_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n17_α
 xchain0_n16_β:
 jmp xchain0_n19_α
xchain0_n17_α:
# IR_LIT_I
bb18_α:
 mov qword ptr [r12 + 256], 6
 mov rax, qword ptr [rip + .Lx30_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain0_n18_α
 xchain0_n17_β:
 jmp xchain0_n19_α
.Lx30_0:
 .quad 4
xchain0_n18_α:
# IR_FIELD_SET
bb19_α:
 mov rdi, qword ptr [rip + .Lx32_0]
 mov rsi, qword ptr [r12 + 0]
 mov rdx, qword ptr [r12 + 8]
 mov rcx, qword ptr [r12 + 256]
 mov r8, qword ptr [r12 + 264]
 call dat_field_set@PLT
 jmp xchain0_n19_α
 xchain0_n18_β:
 jmp xchain0_n19_α
.Lx32_0:
 .quad .Lx32_0_s
.Lx32_0_s:
 .string "f2"
xchain0_n19_α:
# IR_VAR
bb20_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n20_α
 xchain0_n19_β:
 jmp xchain0_n25_α
xchain0_n20_α:
# IR_FIELD_GET
bb21_α:
 mov rdi, qword ptr [rip + .Lx36_0]
 mov rsi, qword ptr [r12 + 0]
 mov rdx, qword ptr [r12 + 8]
 call dat_field_get@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain0_n21_α
 xchain0_n20_β:
 jmp xchain0_n25_α
.Lx36_0:
 .quad .Lx36_0_s
.Lx36_0_s:
 .string "f1"
xchain0_n21_α:
# IR_LIT_S
bb22_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx37_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain0_n22_α
 xchain0_n21_β:
 jmp xchain0_n25_α
.Lx37_0:
 .quad .Lx37_0_s
.Lx37_0_s:
 .string " "
xchain0_n22_α:
# IR_VAR
bb23_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n23_α
 xchain0_n22_β:
 jmp xchain0_n25_α
xchain0_n23_α:
# IR_FIELD_GET
bb24_α:
 mov rdi, qword ptr [rip + .Lx41_0]
 mov rsi, qword ptr [r12 + 0]
 mov rdx, qword ptr [r12 + 8]
 call dat_field_get@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain0_n24_α
 xchain0_n23_β:
 jmp xchain0_n25_α
.Lx41_0:
 .quad .Lx41_0_s
.Lx41_0_s:
 .string "f2"
xchain0_n24_α:
bb25_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+272] -> [r12+336]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 344], rax
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+352]
 mov qword ptr [r12 + 352], 1
 mov rax, qword ptr [rip + .Lx42_2]
 mov qword ptr [r12 + 360], rax
 jmp .Lx42_3
.Lx42_2:
 .quad .Lx42_2_s
.Lx42_2_s:
 .string " "
.Lx42_3:
# marshal arg2 = nested producer-box slot [r12+304] -> [r12+368]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 376], rax
  .section .rodata
  .Lrkfn43: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn43]
 lea rsi, [r12 + 336]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je xchain0_n25_α
 jmp xchain0_n25_α
 xchain0_n24_β:
 jmp xchain0_n25_α
xchain0_n25_α:
bb26_α:
# BOX IR_CALL rec(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+400]
 mov qword ptr [r12 + 400], 6
 movabs rax, 5
 mov qword ptr [r12 + 408], rax
# marshal arg1 = LIT_I -> [r12+416]
 mov qword ptr [r12 + 416], 6
 movabs rax, 6
 mov qword ptr [r12 + 424], rax
  .section .rodata
  .Lrkfn45: .string "rec"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn45]
 lea rsi, [r12 + 400]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je xchain0_n27_α
 jmp xchain0_n26_α
 xchain0_n25_β:
 jmp xchain0_n27_α
xchain0_n26_α:
bb27_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 384]
 mov rdx, qword ptr [r12 + 392]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain0_n27_α
 xchain0_n26_β:
 jmp xchain0_n27_α
xchain0_n27_α:
# IR_VAR
bb28_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n28_α
 xchain0_n27_β:
 jmp xchain0_n33_α
xchain0_n28_α:
# IR_FIELD_GET
bb29_α:
 mov rdi, qword ptr [rip + .Lx50_0]
 mov rsi, qword ptr [r12 + 0]
 mov rdx, qword ptr [r12 + 8]
 call dat_field_get@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain0_n29_α
 xchain0_n28_β:
 jmp xchain0_n33_α
.Lx50_0:
 .quad .Lx50_0_s
.Lx50_0_s:
 .string "f1"
xchain0_n29_α:
# IR_LIT_S
bb30_α:
 mov qword ptr [r12 + 464], 1
 mov rax, qword ptr [rip + .Lx51_0]
 mov qword ptr [r12 + 472], rax
 jmp xchain0_n30_α
 xchain0_n29_β:
 jmp xchain0_n33_α
.Lx51_0:
 .quad .Lx51_0_s
.Lx51_0_s:
 .string " "
xchain0_n30_α:
# IR_VAR
bb31_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n31_α
 xchain0_n30_β:
 jmp xchain0_n33_α
xchain0_n31_α:
# IR_FIELD_GET
bb32_α:
 mov rdi, qword ptr [rip + .Lx55_0]
 mov rsi, qword ptr [r12 + 0]
 mov rdx, qword ptr [r12 + 8]
 call dat_field_get@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain0_n32_α
 xchain0_n31_β:
 jmp xchain0_n33_α
.Lx55_0:
 .quad .Lx55_0_s
.Lx55_0_s:
 .string "f2"
xchain0_n32_α:
bb33_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+448] -> [r12+512]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 520], rax
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+528]
 mov qword ptr [r12 + 528], 1
 mov rax, qword ptr [rip + .Lx56_2]
 mov qword ptr [r12 + 536], rax
 jmp .Lx56_3
.Lx56_2:
 .quad .Lx56_2_s
.Lx56_2_s:
 .string " "
.Lx56_3:
# marshal arg2 = nested producer-box slot [r12+480] -> [r12+544]
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 552], rax
  .section .rodata
  .Lrkfn57: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn57]
 lea rsi, [r12 + 512]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 cmp eax, 99
 je xchain0_n33_α
 jmp xchain0_n33_α
 xchain0_n32_β:
 jmp xchain0_n33_α
xchain0_n33_α:
# IR_VAR
bb34_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n34_α
 xchain0_n33_β:
 jmp xchain0_n36_α
xchain0_n34_α:
# IR_LIT_I
bb35_α:
 mov qword ptr [r12 + 560], 6
 mov rax, qword ptr [rip + .Lx60_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain0_n35_α
 xchain0_n34_β:
 jmp xchain0_n36_α
.Lx60_0:
 .quad 7
xchain0_n35_α:
# IR_FIELD_SET
bb36_α:
 mov rdi, qword ptr [rip + .Lx62_0]
 mov rsi, qword ptr [r12 + 0]
 mov rdx, qword ptr [r12 + 8]
 mov rcx, qword ptr [r12 + 560]
 mov r8, qword ptr [r12 + 568]
 call dat_field_set@PLT
 jmp xchain0_n36_α
 xchain0_n35_β:
 jmp xchain0_n36_α
.Lx62_0:
 .quad .Lx62_0_s
.Lx62_0_s:
 .string "f1"
xchain0_n36_α:
# IR_VAR
bb37_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n37_α
 xchain0_n36_β:
 jmp xchain0_n39_α
xchain0_n37_α:
# IR_LIT_I
bb38_α:
 mov qword ptr [r12 + 576], 6
 mov rax, qword ptr [rip + .Lx65_0]
 mov qword ptr [r12 + 584], rax
 jmp xchain0_n38_α
 xchain0_n37_β:
 jmp xchain0_n39_α
.Lx65_0:
 .quad 8
xchain0_n38_α:
# IR_FIELD_SET
bb39_α:
 mov rdi, qword ptr [rip + .Lx67_0]
 mov rsi, qword ptr [r12 + 0]
 mov rdx, qword ptr [r12 + 8]
 mov rcx, qword ptr [r12 + 576]
 mov r8, qword ptr [r12 + 584]
 call dat_field_set@PLT
 jmp xchain0_n39_α
 xchain0_n38_β:
 jmp xchain0_n39_α
.Lx67_0:
 .quad .Lx67_0_s
.Lx67_0_s:
 .string "f2"
xchain0_n39_α:
# IR_VAR
bb40_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n40_α
 xchain0_n39_β:
 jmp xchain0_n45_α
xchain0_n40_α:
# IR_FIELD_GET
bb41_α:
 mov rdi, qword ptr [rip + .Lx71_0]
 mov rsi, qword ptr [r12 + 0]
 mov rdx, qword ptr [r12 + 8]
 call dat_field_get@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain0_n41_α
 xchain0_n40_β:
 jmp xchain0_n45_α
.Lx71_0:
 .quad .Lx71_0_s
.Lx71_0_s:
 .string "f1"
xchain0_n41_α:
# IR_LIT_S
bb42_α:
 mov qword ptr [r12 + 608], 1
 mov rax, qword ptr [rip + .Lx72_0]
 mov qword ptr [r12 + 616], rax
 jmp xchain0_n42_α
 xchain0_n41_β:
 jmp xchain0_n45_α
.Lx72_0:
 .quad .Lx72_0_s
.Lx72_0_s:
 .string " "
xchain0_n42_α:
# IR_VAR
bb43_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n43_α
 xchain0_n42_β:
 jmp xchain0_n45_α
xchain0_n43_α:
# IR_FIELD_GET
bb44_α:
 mov rdi, qword ptr [rip + .Lx76_0]
 mov rsi, qword ptr [r12 + 0]
 mov rdx, qword ptr [r12 + 8]
 call dat_field_get@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xchain0_n44_α
 xchain0_n43_β:
 jmp xchain0_n45_α
.Lx76_0:
 .quad .Lx76_0_s
.Lx76_0_s:
 .string "f2"
xchain0_n44_α:
bb45_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+592] -> [r12+656]
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 664], rax
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+672]
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx77_2]
 mov qword ptr [r12 + 680], rax
 jmp .Lx77_3
.Lx77_2:
 .quad .Lx77_2_s
.Lx77_2_s:
 .string " "
.Lx77_3:
# marshal arg2 = nested producer-box slot [r12+624] -> [r12+688]
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 696], rax
  .section .rodata
  .Lrkfn78: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn78]
 lea rsi, [r12 + 656]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 cmp eax, 99
 je xchain0_n45_α
 jmp xchain0_n45_α
 xchain0_n44_β:
 jmp xchain0_n45_α
xchain0_n45_α:
bb46_α:
# BOX IR_CALL rec(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+720]
 mov qword ptr [r12 + 720], 6
 movabs rax, 9
 mov qword ptr [r12 + 728], rax
# marshal arg1 = LIT_I -> [r12+736]
 mov qword ptr [r12 + 736], 6
 movabs rax, 10
 mov qword ptr [r12 + 744], rax
# marshal arg2 = LIT_I -> [r12+752]
 mov qword ptr [r12 + 752], 6
 movabs rax, 11
 mov qword ptr [r12 + 760], rax
  .section .rodata
  .Lrkfn80: .string "rec"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn80]
 lea rsi, [r12 + 720]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 cmp eax, 99
 je xchain0_n47_α
 jmp xchain0_n46_α
 xchain0_n45_β:
 jmp xchain0_n47_α
xchain0_n46_α:
bb47_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 704]
 mov rdx, qword ptr [r12 + 712]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain0_n47_α
 xchain0_n46_β:
 jmp xchain0_n47_α
xchain0_n47_α:
# IR_VAR
bb48_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n48_α
 xchain0_n47_β:
 jmp xchain0_n53_α
xchain0_n48_α:
# IR_FIELD_GET
bb49_α:
 mov rdi, qword ptr [rip + .Lx85_0]
 mov rsi, qword ptr [r12 + 0]
 mov rdx, qword ptr [r12 + 8]
 call dat_field_get@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain0_n49_α
 xchain0_n48_β:
 jmp xchain0_n53_α
.Lx85_0:
 .quad .Lx85_0_s
.Lx85_0_s:
 .string "f1"
xchain0_n49_α:
# IR_LIT_S
bb50_α:
 mov qword ptr [r12 + 800], 1
 mov rax, qword ptr [rip + .Lx86_0]
 mov qword ptr [r12 + 808], rax
 jmp xchain0_n50_α
 xchain0_n49_β:
 jmp xchain0_n53_α
.Lx86_0:
 .quad .Lx86_0_s
.Lx86_0_s:
 .string " "
xchain0_n50_α:
# IR_VAR
bb51_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n51_α
 xchain0_n50_β:
 jmp xchain0_n53_α
xchain0_n51_α:
# IR_FIELD_GET
bb52_α:
 mov rdi, qword ptr [rip + .Lx90_0]
 mov rsi, qword ptr [r12 + 0]
 mov rdx, qword ptr [r12 + 8]
 call dat_field_get@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 jmp xchain0_n52_α
 xchain0_n51_β:
 jmp xchain0_n53_α
.Lx90_0:
 .quad .Lx90_0_s
.Lx90_0_s:
 .string "f2"
xchain0_n52_α:
bb53_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+784] -> [r12+848]
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 856], rax
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+864]
 mov qword ptr [r12 + 864], 1
 mov rax, qword ptr [rip + .Lx91_2]
 mov qword ptr [r12 + 872], rax
 jmp .Lx91_3
.Lx91_2:
 .quad .Lx91_2_s
.Lx91_2_s:
 .string " "
.Lx91_3:
# marshal arg2 = nested producer-box slot [r12+816] -> [r12+880]
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 880], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 888], rax
  .section .rodata
  .Lrkfn92: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn92]
 lea rsi, [r12 + 848]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 cmp eax, 99
 je xchain0_n53_α
 jmp xchain0_n53_α
 xchain0_n52_β:
 jmp xchain0_n53_α
xchain0_n53_α:
bb54_α:
# BOX IR_CALL rec(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+912]
 mov qword ptr [r12 + 912], 6
 movabs rax, 11
 mov qword ptr [r12 + 920], rax
# marshal arg1 = LIT_I -> [r12+928]
 mov qword ptr [r12 + 928], 6
 movabs rax, 12
 mov qword ptr [r12 + 936], rax
  .section .rodata
  .Lrkfn94: .string "rec"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn94]
 lea rsi, [r12 + 912]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 cmp eax, 99
 je xchain0_n55_α
 jmp xchain0_n54_α
 xchain0_n53_β:
 jmp xchain0_n55_α
xchain0_n54_α:
bb55_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 896]
 mov rdx, qword ptr [r12 + 904]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 jmp xchain0_n55_α
 xchain0_n54_β:
 jmp xchain0_n55_α
xchain0_n55_α:
# IR_VAR
bb56_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xbang96_iter_done
 xbang96_iter_β:
 jmp xchain0_n57_α
xbang96_iter_done:
# IR_LIST_BANG
bb57_α:
 mov qword ptr [r12 + 960], 0
.Lx100_0:
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 960]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 968], rax
 mov qword ptr [r12 + 976], rdx
 cmp rax, 99
 je xchain0_n57_α
 jmp xchain0_n56_α
 xchain0_n55_β:
 inc qword ptr [r12 + 960]
 jmp .Lx100_0
xchain0_n56_α:
bb58_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 968]
 mov rsi, qword ptr [r12 + 976]
 call rt_write_any_nl@PLT
 jmp xchain0_n55_β
xchain0_n56_β:
xchain0_n56_β:
 jmp xchain0_n111_β
xchain0_n57_α:
# IR_EVERY
 jmp xchain0_n58_α
 xchain0_n57_β:
 jmp xchain0_n58_α
xchain0_n58_α:
# IR_VAR
bb60_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xbang103_iter_done
 xbang103_iter_β:
 jmp xchain0_n61_α
xbang103_iter_done:
# IR_LIST_BANG
bb61_α:
 mov qword ptr [r12 + 984], 0
.Lx107_0:
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 984]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 cmp rax, 99
 je xchain0_n61_α
 jmp xchain0_n59_α
 xchain0_n58_β:
 inc qword ptr [r12 + 984]
 jmp .Lx107_0
xchain0_n59_α:
# IR_LIT_I
bb62_α:
 mov qword ptr [r12 + 1008], 6
 mov rax, qword ptr [rip + .Lx108_0]
 mov qword ptr [r12 + 1016], rax
 jmp xchain0_n60_α
 xchain0_n59_β:
 jmp xchain0_n111_β
.Lx108_0:
 .quad 13
xchain0_n60_α:
# [walk_bb_node: kind=5 unhandled]
xchain0_n61_α:
# IR_EVERY
 jmp xchain0_n62_α
 xchain0_n61_β:
 jmp xchain0_n62_α
xchain0_n62_α:
# IR_VAR
bb65_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n63_α
 xchain0_n62_β:
 jmp xchain0_n65_α
xchain0_n63_α:
# IR_FIELD_GET
bb66_α:
 mov rdi, qword ptr [rip + .Lx114_0]
 mov rsi, qword ptr [r12 + 0]
 mov rdx, qword ptr [r12 + 8]
 call dat_field_get@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 jmp xchain0_n64_α
 xchain0_n63_β:
 jmp xchain0_n65_α
.Lx114_0:
 .quad .Lx114_0_s
.Lx114_0_s:
 .string "f2"
xchain0_n64_α:
bb67_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 1056]
 mov rsi, qword ptr [r12 + 1064]
 call rt_write_any_nl@PLT
 jmp xchain0_n65_α
xchain0_n64_β:
xchain0_n64_β:
 jmp xchain0_n65_α
xchain0_n65_α:
bb68_α:
# BOX IR_CALL simple(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+1088]
 mov qword ptr [r12 + 1088], 6
 movabs rax, 14
 mov qword ptr [r12 + 1096], rax
  .section .rodata
  .Lrkfn117: .string "simple"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn117]
 lea rsi, [r12 + 1088]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 cmp eax, 99
 je xchain0_n67_α
 jmp xchain0_n66_α
 xchain0_n65_β:
 jmp xchain0_n67_α
xchain0_n66_α:
bb69_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1072]
 mov rdx, qword ptr [r12 + 1080]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 jmp xchain0_n67_α
 xchain0_n66_β:
 jmp xchain0_n67_α
xchain0_n67_α:
# IR_VAR
bb70_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n68_α
 xchain0_n67_β:
 jmp xchain0_n70_α
xchain0_n68_α:
xchain0_n69_α:
bb72_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 1120]
 mov rsi, qword ptr [r12 + 1128]
 call rt_write_any_nl@PLT
 jmp xchain0_n70_α
xchain0_n69_β:
xchain0_n69_β:
 jmp xchain0_n70_α
xchain0_n70_α:
# IR_VAR
bb73_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n71_α
 xchain0_n70_β:
 jmp xchain0_n74_α
xchain0_n71_α:
xchain0_n72_α:
# IR_LIT_I
bb75_α:
 mov qword ptr [r12 + 1152], 6
 mov rax, qword ptr [rip + .Lx126_0]
 mov qword ptr [r12 + 1160], rax
 jmp xchain0_n73_α
 xchain0_n72_β:
 jmp xchain0_n74_α
.Lx126_0:
 .quad 15
xchain0_n73_α:
# [walk_bb_node: kind=5 unhandled]
xchain0_n74_α:
# IR_VAR
bb77_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xbang128_iter_done
 xbang128_iter_β:
 jmp xchain0_n76_α
xbang128_iter_done:
# IR_LIST_BANG
bb78_α:
 mov qword ptr [r12 + 1184], 0
.Lx132_0:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 1184]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 1192], rax
 mov qword ptr [r12 + 1200], rdx
 cmp rax, 99
 je xchain0_n76_α
 jmp xchain0_n75_α
 xchain0_n74_β:
 inc qword ptr [r12 + 1184]
 jmp .Lx132_0
xchain0_n75_α:
bb79_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 1192]
 mov rsi, qword ptr [r12 + 1200]
 call rt_write_any_nl@PLT
 jmp xchain0_n76_α
xchain0_n75_β:
xchain0_n75_β:
 jmp xchain0_n76_α
xchain0_n76_α:
bb80_α:
# BOX IR_CALL rec(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+1224]
 mov qword ptr [r12 + 1224], 6
 movabs rax, 3
 mov qword ptr [r12 + 1232], rax
# marshal arg1 = LIT_I -> [r12+1240]
 mov qword ptr [r12 + 1240], 6
 movabs rax, 7
 mov qword ptr [r12 + 1248], rax
  .section .rodata
  .Lrkfn135: .string "rec"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn135]
 lea rsi, [r12 + 1224]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1208], rax
 mov qword ptr [r12 + 1216], rdx
 cmp eax, 99
 je xchain0_n78_α
 jmp xchain0_n77_α
 xchain0_n76_β:
 jmp xchain0_n78_α
xchain0_n77_α:
bb81_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1208]
 mov rdx, qword ptr [r12 + 1216]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 1256], rax
 mov qword ptr [r12 + 1264], rdx
 jmp xchain0_n78_α
 xchain0_n77_β:
 jmp xchain0_n78_α
xchain0_n78_α:
# IR_VAR
bb82_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n79_α
 xchain0_n78_β:
 jmp xchain0_n111_β
xchain0_n79_α:
# IR_LIT_I
bb83_α:
 mov qword ptr [r12 + 1272], 6
 mov rax, qword ptr [rip + .Lx139_0]
 mov qword ptr [r12 + 1280], rax
 jmp xchain0_n80_α
 xchain0_n79_β:
 jmp xchain0_n111_β
.Lx139_0:
 .quad 1
xchain0_n80_α:
# IR_LIT_I
bb84_α:
 mov qword ptr [r12 + 1288], 6
 mov rax, qword ptr [rip + .Lx140_0]
 mov qword ptr [r12 + 1296], rax
 jmp xchain0_n81_α
 xchain0_n80_β:
 jmp xchain0_n111_β
.Lx140_0:
 .quad 3
xchain0_n81_α:
# IR_TO
bb85_α:
 mov rax, qword ptr [r12 + 1280]
 mov qword ptr [r12 + 1320], rax
.Lx142_0:
 mov rax, qword ptr [r12 + 1320]
 mov rcx, qword ptr [r12 + 1296]
 cmp rax, rcx
 jg xchain0_n83_α
 mov qword ptr [r12 + 1304], 6
 mov qword ptr [r12 + 1312], rax
 jmp xchain0_n82_α
 xchain0_n81_β:
 inc qword ptr [r12 + 1320]
 jmp .Lx142_0
xchain0_n82_α:
bb86_α:
# BOX IR_CALL [](...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+1344]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1344], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1352], rax
# marshal arg1 = nested producer-box slot [r12+1304] -> [r12+1360]
 mov rax, qword ptr [r12 + 1304]
 mov qword ptr [r12 + 1360], rax
 mov rax, qword ptr [r12 + 1312]
 mov qword ptr [r12 + 1368], rax
  .section .rodata
  .Lrkfn144: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn144]
 lea rsi, [r12 + 1344]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 cmp eax, 99
 je xchain0_n111_β
 jmp xchain0_n84_α
 xchain0_n82_β:
 jmp xchain0_n111_β
xchain0_n83_α:
# IR_EVERY
 jmp xchain0_n85_α
 xchain0_n83_β:
 jmp xchain0_n85_α
xchain0_n84_α:
bb88_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 1328]
 mov rsi, qword ptr [r12 + 1336]
 call rt_write_any_nl@PLT
 jmp xchain0_n81_β
xchain0_n84_β:
xchain0_n84_β:
 jmp xchain0_n111_β
xchain0_n85_α:
# IR_VAR
bb89_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n86_α
 xchain0_n85_β:
 jmp xchain0_n111_β
xchain0_n86_α:
# IR_LIT_S
bb90_α:
 mov qword ptr [r12 + 1376], 1
 mov rax, qword ptr [rip + .Lx149_0]
 mov qword ptr [r12 + 1384], rax
 jmp xchain0_n87_α
 xchain0_n86_β:
 jmp xchain0_n111_β
.Lx149_0:
 .quad .Lx149_0_s
.Lx149_0_s:
 .string "f"
xchain0_n87_α:
# IR_LIT_I
bb91_α:
 mov qword ptr [r12 + 1392], 6
 mov rax, qword ptr [rip + .Lx150_0]
 mov qword ptr [r12 + 1400], rax
 jmp xchain0_n88_α
 xchain0_n87_β:
 jmp xchain0_n111_β
.Lx150_0:
 .quad 1
xchain0_n88_α:
# IR_LIT_I
bb92_α:
 mov qword ptr [r12 + 1408], 6
 mov rax, qword ptr [rip + .Lx151_0]
 mov qword ptr [r12 + 1416], rax
 jmp xchain0_n89_α
 xchain0_n88_β:
 jmp xchain0_n111_β
.Lx151_0:
 .quad 3
xchain0_n89_α:
# IR_TO
bb93_α:
 mov rax, qword ptr [r12 + 1400]
 mov qword ptr [r12 + 1440], rax
.Lx153_0:
 mov rax, qword ptr [r12 + 1440]
 mov rcx, qword ptr [r12 + 1416]
 cmp rax, rcx
 jg xchain0_n91_α
 mov qword ptr [r12 + 1424], 6
 mov qword ptr [r12 + 1432], rax
 jmp xchain0_n90_α
 xchain0_n89_β:
 inc qword ptr [r12 + 1440]
 jmp .Lx153_0
xchain0_n90_α:
bb94_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 1376]
 mov rsi, qword ptr [r12 + 1384]
 mov rdx, qword ptr [r12 + 1424]
 mov rcx, qword ptr [r12 + 1432]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1448], rax
 mov qword ptr [r12 + 1456], rdx
 jmp xchain0_n92_α
 xchain0_n90_β:
 jmp xchain0_n111_β
xchain0_n91_α:
# IR_EVERY
 jmp xchain0_n93_α
 xchain0_n91_β:
 jmp xchain0_n93_α
xchain0_n92_α:
bb96_α:
# BOX IR_CALL [](...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+1480]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1480], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1488], rax
# marshal arg1 = nested producer-box slot [r12+1448] -> [r12+1496]
 mov rax, qword ptr [r12 + 1448]
 mov qword ptr [r12 + 1496], rax
 mov rax, qword ptr [r12 + 1456]
 mov qword ptr [r12 + 1504], rax
  .section .rodata
  .Lrkfn157: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn157]
 lea rsi, [r12 + 1480]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1464], rax
 mov qword ptr [r12 + 1472], rdx
 cmp eax, 99
 je xchain0_n111_β
 jmp xchain0_n94_α
 xchain0_n92_β:
 jmp xchain0_n111_β
xchain0_n93_α:
bb97_α:
# BOX IR_CALL rec(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+1528]
 mov qword ptr [r12 + 1528], 6
 movabs rax, 1
 mov qword ptr [r12 + 1536], rax
# marshal arg1 = LIT_I -> [r12+1544]
 mov qword ptr [r12 + 1544], 6
 movabs rax, 2
 mov qword ptr [r12 + 1552], rax
  .section .rodata
  .Lrkfn159: .string "rec"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn159]
 lea rsi, [r12 + 1528]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1512], rax
 mov qword ptr [r12 + 1520], rdx
 cmp eax, 99
 je xchain0_n96_α
 jmp xchain0_n95_α
 xchain0_n93_β:
 jmp xchain0_n96_α
xchain0_n94_α:
bb98_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 1464]
 mov rsi, qword ptr [r12 + 1472]
 call rt_write_any_nl@PLT
 jmp xchain0_n89_β
xchain0_n94_β:
xchain0_n94_β:
 jmp xchain0_n111_β
xchain0_n95_α:
bb99_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1512]
 mov rdx, qword ptr [r12 + 1520]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 mov qword ptr [r12 + 1560], rax
 mov qword ptr [r12 + 1568], rdx
 jmp xchain0_n96_α
 xchain0_n95_β:
 jmp xchain0_n96_α
xchain0_n96_α:
bb100_α:
# BOX IR_CALL rec(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+1592]
 mov qword ptr [r12 + 1592], 6
 movabs rax, 3
 mov qword ptr [r12 + 1600], rax
# marshal arg1 = LIT_I -> [r12+1608]
 mov qword ptr [r12 + 1608], 6
 movabs rax, 4
 mov qword ptr [r12 + 1616], rax
  .section .rodata
  .Lrkfn163: .string "rec"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn163]
 lea rsi, [r12 + 1592]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1576], rax
 mov qword ptr [r12 + 1584], rdx
 cmp eax, 99
 je xchain0_n98_α
 jmp xchain0_n97_α
 xchain0_n96_β:
 jmp xchain0_n98_α
xchain0_n97_α:
bb101_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1576]
 mov rdx, qword ptr [r12 + 1584]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 1624], rax
 mov qword ptr [r12 + 1632], rdx
 jmp xchain0_n98_α
 xchain0_n97_β:
 jmp xchain0_n98_α
xchain0_n98_α:
# IR_VAR
bb102_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n99_α
 xchain0_n98_β:
 jmp xchain0_n102_α
xchain0_n99_α:
# IR_FIELD_GET
bb103_α:
 mov rdi, qword ptr [rip + .Lx168_0]
 mov rsi, qword ptr [r12 + 0]
 mov rdx, qword ptr [r12 + 8]
 call dat_field_get@PLT
 mov qword ptr [r12 + 1640], rax
 mov qword ptr [r12 + 1648], rdx
 jmp xchain0_n100_α
 xchain0_n99_β:
 jmp xchain0_n102_α
.Lx168_0:
 .quad .Lx168_0_s
.Lx168_0_s:
 .string "f1"
xchain0_n100_α:
# IR_LIT_I
bb104_α:
 mov qword ptr [r12 + 1656], 6
 mov rax, qword ptr [rip + .Lx169_0]
 mov qword ptr [r12 + 1664], rax
 jmp xchain0_n101_α
 xchain0_n100_β:
 jmp xchain0_n102_α
.Lx169_0:
 .quad 10
xchain0_n101_α:
bb105_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 1648]
 mov rcx, qword ptr [r12 + 1664]
 add rax, rcx
 mov qword ptr [r12 + 1672], 6
 mov qword ptr [r12 + 1680], rax
 jmp xchain0_n102_α
 xchain0_n101_β:
 jmp xchain0_n102_α
xchain0_n102_α:
# IR_VAR
bb106_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n103_α
 xchain0_n102_β:
 jmp xchain0_n106_α
xchain0_n103_α:
# IR_FIELD_GET
bb107_α:
 mov rdi, qword ptr [rip + .Lx174_0]
 mov rsi, qword ptr [r12 + 0]
 mov rdx, qword ptr [r12 + 8]
 call dat_field_get@PLT
 mov qword ptr [r12 + 1688], rax
 mov qword ptr [r12 + 1696], rdx
 jmp xchain0_n104_α
 xchain0_n103_β:
 jmp xchain0_n106_α
.Lx174_0:
 .quad .Lx174_0_s
.Lx174_0_s:
 .string "f2"
xchain0_n104_α:
# IR_LIT_I
bb108_α:
 mov qword ptr [r12 + 1704], 6
 mov rax, qword ptr [rip + .Lx175_0]
 mov qword ptr [r12 + 1712], rax
 jmp xchain0_n105_α
 xchain0_n104_β:
 jmp xchain0_n106_α
.Lx175_0:
 .quad 20
xchain0_n105_α:
bb109_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 1696]
 mov rcx, qword ptr [r12 + 1712]
 add rax, rcx
 mov qword ptr [r12 + 1720], 6
 mov qword ptr [r12 + 1728], rax
 jmp xchain0_n106_α
 xchain0_n105_β:
 jmp xchain0_n106_α
xchain0_n106_α:
# IR_VAR
bb110_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xbang177_iter_done
 xbang177_iter_β:
 jmp xchain0_n108_α
xbang177_iter_done:
# IR_LIST_BANG
bb111_α:
 mov qword ptr [r12 + 1736], 0
.Lx181_0:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 1736]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 1744], rax
 mov qword ptr [r12 + 1752], rdx
 cmp rax, 99
 je xchain0_n108_α
 jmp xchain0_n107_α
 xchain0_n106_β:
 inc qword ptr [r12 + 1736]
 jmp .Lx181_0
xchain0_n107_α:
# IR_LIT_I
bb112_α:
 mov qword ptr [r12 + 1760], 6
 mov rax, qword ptr [rip + .Lx182_0]
 mov qword ptr [r12 + 1768], rax
 jmp xchain0_n109_α
 xchain0_n107_β:
 jmp xchain0_n111_β
.Lx182_0:
 .quad 70
xchain0_n108_α:
# IR_EVERY
 jmp xchain0_n110_α
 xchain0_n108_β:
 jmp xchain0_n110_α
xchain0_n109_α:
bb114_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 1752]
 mov rcx, qword ptr [r12 + 1768]
 add rax, rcx
 mov qword ptr [r12 + 1776], 6
 mov qword ptr [r12 + 1784], rax
 jmp xchain0_n108_α
 xchain0_n109_β:
 jmp xchain0_n111_β
xchain0_n110_α:
# IR_LIT_S
bb115_α:
 mov qword ptr [r12 + 1792], 1
 mov rax, qword ptr [rip + .Lx185_0]
 mov qword ptr [r12 + 1800], rax
 jmp xchain0_n111_α
 xchain0_n110_β:
 jmp xchain0_n111_β
.Lx185_0:
 .quad .Lx185_0_s
.Lx185_0_s:
 .string " "
xchain0_n111_α:
xaltg186_a0_start:
# IR_VAR
bb116_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xbang187_iter_done
 xbang187_iter_β:
 jmp xaltg186_a1_start
xbang187_iter_done:
# IR_LIST_BANG
bb117_α:
 mov qword ptr [r12 + 1832], 0
.Lx191_0:
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 1832]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 1840], rax
 mov qword ptr [r12 + 1848], rdx
 cmp rax, 99
 je xaltg186_a1_start
 jmp xaltg186_a0_succ
 xaltg186_a0_beta:
 inc qword ptr [r12 + 1832]
 jmp .Lx191_0
xaltg186_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1840]
 mov qword ptr [r12 + 1808], rax
 mov rax, qword ptr [r12 + 1848]
 mov qword ptr [r12 + 1816], rax
 mov qword ptr [r12 + 1824], 1
jmp xchain0_n112_α
xaltg186_a1_start:
# IR_VAR
bb118_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xbang193_iter_done
 xbang193_iter_β:
 jmp xaltg186_a2_start
xbang193_iter_done:
# IR_LIST_BANG
bb119_α:
 mov qword ptr [r12 + 1856], 0
.Lx197_0:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 1856]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 1864], rax
 mov qword ptr [r12 + 1872], rdx
 cmp rax, 99
 je xaltg186_a2_start
 jmp xaltg186_a1_succ
 xaltg186_a1_beta:
 inc qword ptr [r12 + 1856]
 jmp .Lx197_0
xaltg186_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1864]
 mov qword ptr [r12 + 1808], rax
 mov rax, qword ptr [r12 + 1872]
 mov qword ptr [r12 + 1816], rax
 mov qword ptr [r12 + 1824], 1
jmp xchain0_n112_α
xaltg186_a2_start:
# IR_LIT_S
bb120_α:
 mov qword ptr [r12 + 1880], 1
 mov rax, qword ptr [rip + .Lx199_0]
 mov qword ptr [r12 + 1888], rax
 jmp xaltg186_a2_succ
 xaltg186_a2_beta:
 jmp xchain0_n113_α
.Lx199_0:
 .quad .Lx199_0_s
.Lx199_0_s:
 .string "\n"
xaltg186_a2_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1880]
 mov qword ptr [r12 + 1808], rax
 mov rax, qword ptr [r12 + 1888]
 mov qword ptr [r12 + 1816], rax
 mov qword ptr [r12 + 1824], 1
jmp xchain0_n112_α
xchain0_n111_β:
jmp xchain0_n113_α
xchain0_n112_α:
bb121_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1912]
 mov qword ptr [r12 + 1912], 1
 mov rax, qword ptr [rip + .Lx201_0]
 mov qword ptr [r12 + 1920], rax
 jmp .Lx201_1
.Lx201_0:
 .quad .Lx201_0_s
.Lx201_0_s:
 .string " "
.Lx201_1:
# marshal arg1 = nested producer-box slot [r12+1808] -> [r12+1928]
 mov rax, qword ptr [r12 + 1808]
 mov qword ptr [r12 + 1928], rax
 mov rax, qword ptr [r12 + 1816]
 mov qword ptr [r12 + 1936], rax
  .section .rodata
  .Lrkfn202: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn202]
 lea rsi, [r12 + 1912]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1896], rax
 mov qword ptr [r12 + 1904], rdx
 cmp eax, 99
 je xchain0_n111_β
 jmp xchain0_n111_β
 xchain0_n112_β:
 jmp xchain0_n111_β
xchain0_n113_α:
# IR_EVERY
 jmp main_ω
 xchain0_n113_β:
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
