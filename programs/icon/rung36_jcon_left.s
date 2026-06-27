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
bb1_α:
# BOX IR_CALL left(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+16]
 mov qword ptr [r12 + 16], 1
 mov rax, qword ptr [rip + .Lx1_0]
 mov qword ptr [r12 + 24], rax
 jmp .Lx1_1
.Lx1_0:
 .quad .Lx1_0_s
.Lx1_0_s:
 .string "abc"
.Lx1_1:
  .section .rodata
  .Lrkfn2: .string "left"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2]
 lea rsi, [r12 + 16]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 cmp eax, 99
 je xchain0_n2_α
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n2_α
xchain0_n1_α:
bb2_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 call rt_write_any_nl@PLT
 jmp xchain0_n2_α
xchain0_n1_β:
xchain0_n1_β:
 jmp xchain0_n2_α
xchain0_n2_α:
bb3_α:
# BOX IR_CALL left(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+48]
 mov qword ptr [r12 + 48], 1
 mov rax, qword ptr [rip + .Lx4_0]
 mov qword ptr [r12 + 56], rax
 jmp .Lx4_1
.Lx4_0:
 .quad .Lx4_0_s
.Lx4_0_s:
 .string "def"
.Lx4_1:
# marshal arg1 = nested producer-box slot [r12+64] -> [r12+64]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 72], rax
  .section .rodata
  .Lrkfn5: .string "left"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn5]
 lea rsi, [r12 + 48]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je xchain0_n4_α
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n4_α
xchain0_n3_α:
bb4_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 call rt_write_any_nl@PLT
 jmp xchain0_n4_α
xchain0_n3_β:
xchain0_n3_β:
 jmp xchain0_n4_α
xchain0_n4_α:
bb5_α:
# BOX IR_CALL left(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+96]
 mov qword ptr [r12 + 96], 1
 mov rax, qword ptr [rip + .Lx7_0]
 mov qword ptr [r12 + 104], rax
 jmp .Lx7_1
.Lx7_0:
 .quad .Lx7_0_s
.Lx7_0_s:
 .string "ghi"
.Lx7_1:
# marshal arg1 = nested producer-box slot [r12+112] -> [r12+112]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn8: .string "left"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn8]
 lea rsi, [r12 + 96]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je xchain0_n6_α
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp xchain0_n6_α
xchain0_n5_α:
bb6_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 80]
 mov rsi, qword ptr [r12 + 88]
 call rt_write_any_nl@PLT
 jmp xchain0_n6_α
xchain0_n5_β:
xchain0_n5_β:
 jmp xchain0_n6_α
xchain0_n6_α:
bb7_α:
# BOX IR_CALL left(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+144]
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx10_0]
 mov qword ptr [r12 + 152], rax
 jmp .Lx10_1
.Lx10_0:
 .quad .Lx10_0_s
.Lx10_0_s:
 .string "jkl"
.Lx10_1:
# marshal arg1 = LIT_I -> [r12+160]
 mov qword ptr [r12 + 160], 6
 movabs rax, 2
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn11: .string "left"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn11]
 lea rsi, [r12 + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain0_n8_α
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp xchain0_n8_α
xchain0_n7_α:
bb8_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 call rt_write_any_nl@PLT
 jmp xchain0_n8_α
xchain0_n7_β:
xchain0_n7_β:
 jmp xchain0_n8_α
xchain0_n8_α:
bb9_α:
# BOX IR_CALL left(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+192]
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx13_0]
 mov qword ptr [r12 + 200], rax
 jmp .Lx13_1
.Lx13_0:
 .quad .Lx13_0_s
.Lx13_0_s:
 .string "mno"
.Lx13_1:
# marshal arg1 = LIT_I -> [r12+208]
 mov qword ptr [r12 + 208], 6
 movabs rax, 3
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lrkfn14: .string "left"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn14]
 lea rsi, [r12 + 192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp eax, 99
 je xchain0_n10_α
 jmp xchain0_n9_α
 xchain0_n8_β:
 jmp xchain0_n10_α
xchain0_n9_α:
bb10_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 176]
 mov rsi, qword ptr [r12 + 184]
 call rt_write_any_nl@PLT
 jmp xchain0_n10_α
xchain0_n9_β:
xchain0_n9_β:
 jmp xchain0_n10_α
xchain0_n10_α:
bb11_α:
# BOX IR_CALL left(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+240]
 mov qword ptr [r12 + 240], 6
 movabs rax, 237
 mov qword ptr [r12 + 248], rax
# marshal arg1 = LIT_I -> [r12+256]
 mov qword ptr [r12 + 256], 6
 movabs rax, 4
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lrkfn17: .string "left"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn17]
 lea rsi, [r12 + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain0_n12_α
 jmp xchain0_n11_α
 xchain0_n10_β:
 jmp xchain0_n12_α
xchain0_n11_α:
bb12_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 224]
 mov rsi, qword ptr [r12 + 232]
 call rt_write_any_nl@PLT
 jmp xchain0_n12_α
xchain0_n11_β:
xchain0_n11_β:
 jmp xchain0_n12_α
xchain0_n12_α:
bb13_α:
# BOX IR_CALL left(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+288]
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx19_0]
 mov qword ptr [r12 + 296], rax
 jmp .Lx19_1
.Lx19_0:
 .quad .Lx19_0_s
.Lx19_0_s:
 .string "stu"
.Lx19_1:
# marshal arg1 = LIT_I -> [r12+304]
 mov qword ptr [r12 + 304], 6
 movabs rax, 5
 mov qword ptr [r12 + 312], rax
  .section .rodata
  .Lrkfn20: .string "left"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn20]
 lea rsi, [r12 + 288]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n13_α
 xchain0_n12_β:
 jmp xchain0_n14_α
xchain0_n13_α:
bb14_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 272]
 mov rsi, qword ptr [r12 + 280]
 call rt_write_any_nl@PLT
 jmp xchain0_n14_α
xchain0_n13_β:
xchain0_n13_β:
 jmp xchain0_n14_α
xchain0_n14_α:
bb15_α:
# BOX IR_CALL left(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+336]
 mov qword ptr [r12 + 336], 1
 mov rax, qword ptr [rip + .Lx22_0]
 mov qword ptr [r12 + 344], rax
 jmp .Lx22_1
.Lx22_0:
 .quad .Lx22_0_s
.Lx22_0_s:
 .string "vwx"
.Lx22_1:
# marshal arg1 = LIT_I -> [r12+352]
 mov qword ptr [r12 + 352], 6
 movabs rax, 6
 mov qword ptr [r12 + 360], rax
  .section .rodata
  .Lrkfn23: .string "left"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn23]
 lea rsi, [r12 + 336]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je xchain0_n16_α
 jmp xchain0_n15_α
 xchain0_n14_β:
 jmp xchain0_n16_α
xchain0_n15_α:
bb16_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 320]
 mov rsi, qword ptr [r12 + 328]
 call rt_write_any_nl@PLT
 jmp xchain0_n16_α
xchain0_n15_β:
xchain0_n15_β:
 jmp xchain0_n16_α
xchain0_n16_α:
bb17_α:
# BOX IR_CALL left(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+384]
 mov qword ptr [r12 + 384], 1
 mov rax, qword ptr [rip + .Lx25_0]
 mov qword ptr [r12 + 392], rax
 jmp .Lx25_1
.Lx25_0:
 .quad .Lx25_0_s
.Lx25_0_s:
 .string "abc"
.Lx25_1:
# marshal arg1 = LIT_I -> [r12+400]
 mov qword ptr [r12 + 400], 6
 movabs rax, 3
 mov qword ptr [r12 + 408], rax
# marshal arg2 = nested producer-box slot [r12+416] -> [r12+416]
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 424], rax
  .section .rodata
  .Lrkfn26: .string "left"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn26]
 lea rsi, [r12 + 384]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je xchain0_n18_α
 jmp xchain0_n17_α
 xchain0_n16_β:
 jmp xchain0_n18_α
xchain0_n17_α:
bb18_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 368]
 mov rsi, qword ptr [r12 + 376]
 call rt_write_any_nl@PLT
 jmp xchain0_n18_α
xchain0_n17_β:
xchain0_n17_β:
 jmp xchain0_n18_α
xchain0_n18_α:
bb19_α:
# BOX IR_CALL left(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+448]
 mov qword ptr [r12 + 448], 1
 mov rax, qword ptr [rip + .Lx28_0]
 mov qword ptr [r12 + 456], rax
 jmp .Lx28_1
.Lx28_0:
 .quad .Lx28_0_s
.Lx28_0_s:
 .string "def"
.Lx28_1:
# marshal arg1 = nested producer-box slot [r12+464] -> [r12+464]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 472], rax
# marshal arg2 = LIT_S (string REG-RO sealed in-band) -> [r12+480]
 mov qword ptr [r12 + 480], 1
 mov rax, qword ptr [rip + .Lx28_4]
 mov qword ptr [r12 + 488], rax
 jmp .Lx28_5
.Lx28_4:
 .quad .Lx28_4_s
.Lx28_4_s:
 .string "."
.Lx28_5:
  .section .rodata
  .Lrkfn29: .string "left"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn29]
 lea rsi, [r12 + 448]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 cmp eax, 99
 je xchain0_n20_α
 jmp xchain0_n19_α
 xchain0_n18_β:
 jmp xchain0_n20_α
xchain0_n19_α:
bb20_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 432]
 mov rsi, qword ptr [r12 + 440]
 call rt_write_any_nl@PLT
 jmp xchain0_n20_α
xchain0_n19_β:
xchain0_n19_β:
 jmp xchain0_n20_α
xchain0_n20_α:
bb21_α:
# BOX IR_CALL left(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+512]
 mov qword ptr [r12 + 512], 1
 mov rax, qword ptr [rip + .Lx31_0]
 mov qword ptr [r12 + 520], rax
 jmp .Lx31_1
.Lx31_0:
 .quad .Lx31_0_s
.Lx31_0_s:
 .string "ghi"
.Lx31_1:
# marshal arg1 = nested producer-box slot [r12+528] -> [r12+528]
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 536]
 mov qword ptr [r12 + 536], rax
# marshal arg2 = LIT_S (string REG-RO sealed in-band) -> [r12+544]
 mov qword ptr [r12 + 544], 1
 mov rax, qword ptr [rip + .Lx31_4]
 mov qword ptr [r12 + 552], rax
 jmp .Lx31_5
.Lx31_4:
 .quad .Lx31_4_s
.Lx31_4_s:
 .string "."
.Lx31_5:
  .section .rodata
  .Lrkfn32: .string "left"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn32]
 lea rsi, [r12 + 512]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 cmp eax, 99
 je xchain0_n22_α
 jmp xchain0_n21_α
 xchain0_n20_β:
 jmp xchain0_n22_α
xchain0_n21_α:
bb22_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 496]
 mov rsi, qword ptr [r12 + 504]
 call rt_write_any_nl@PLT
 jmp xchain0_n22_α
xchain0_n21_β:
xchain0_n21_β:
 jmp xchain0_n22_α
xchain0_n22_α:
bb23_α:
# BOX IR_CALL left(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+576]
 mov qword ptr [r12 + 576], 1
 mov rax, qword ptr [rip + .Lx34_0]
 mov qword ptr [r12 + 584], rax
 jmp .Lx34_1
.Lx34_0:
 .quad .Lx34_0_s
.Lx34_0_s:
 .string "jkl"
.Lx34_1:
# marshal arg1 = LIT_I -> [r12+592]
 mov qword ptr [r12 + 592], 6
 movabs rax, 2
 mov qword ptr [r12 + 600], rax
# marshal arg2 = LIT_S (string REG-RO sealed in-band) -> [r12+608]
 mov qword ptr [r12 + 608], 1
 mov rax, qword ptr [rip + .Lx34_4]
 mov qword ptr [r12 + 616], rax
 jmp .Lx34_5
.Lx34_4:
 .quad .Lx34_4_s
.Lx34_4_s:
 .string "."
.Lx34_5:
  .section .rodata
  .Lrkfn35: .string "left"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn35]
 lea rsi, [r12 + 576]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 cmp eax, 99
 je xchain0_n24_α
 jmp xchain0_n23_α
 xchain0_n22_β:
 jmp xchain0_n24_α
xchain0_n23_α:
bb24_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 560]
 mov rsi, qword ptr [r12 + 568]
 call rt_write_any_nl@PLT
 jmp xchain0_n24_α
xchain0_n23_β:
xchain0_n23_β:
 jmp xchain0_n24_α
xchain0_n24_α:
bb25_α:
# BOX IR_CALL left(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+640]
 mov qword ptr [r12 + 640], 1
 mov rax, qword ptr [rip + .Lx37_0]
 mov qword ptr [r12 + 648], rax
 jmp .Lx37_1
.Lx37_0:
 .quad .Lx37_0_s
.Lx37_0_s:
 .string "mno"
.Lx37_1:
# marshal arg1 = LIT_I -> [r12+656]
 mov qword ptr [r12 + 656], 6
 movabs rax, 3
 mov qword ptr [r12 + 664], rax
# marshal arg2 = LIT_S (string REG-RO sealed in-band) -> [r12+672]
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx37_4]
 mov qword ptr [r12 + 680], rax
 jmp .Lx37_5
.Lx37_4:
 .quad .Lx37_4_s
.Lx37_4_s:
 .string "."
.Lx37_5:
  .section .rodata
  .Lrkfn38: .string "left"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn38]
 lea rsi, [r12 + 640]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 cmp eax, 99
 je xchain0_n26_α
 jmp xchain0_n25_α
 xchain0_n24_β:
 jmp xchain0_n26_α
xchain0_n25_α:
bb26_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 624]
 mov rsi, qword ptr [r12 + 632]
 call rt_write_any_nl@PLT
 jmp xchain0_n26_α
xchain0_n25_β:
xchain0_n25_β:
 jmp xchain0_n26_α
xchain0_n26_α:
bb27_α:
# BOX IR_CALL left(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+704]
 mov qword ptr [r12 + 704], 6
 movabs rax, 237
 mov qword ptr [r12 + 712], rax
# marshal arg1 = LIT_I -> [r12+720]
 mov qword ptr [r12 + 720], 6
 movabs rax, 4
 mov qword ptr [r12 + 728], rax
# marshal arg2 = LIT_S (string REG-RO sealed in-band) -> [r12+736]
 mov qword ptr [r12 + 736], 1
 mov rax, qword ptr [rip + .Lx40_4]
 mov qword ptr [r12 + 744], rax
 jmp .Lx40_5
.Lx40_4:
 .quad .Lx40_4_s
.Lx40_4_s:
 .string "."
.Lx40_5:
  .section .rodata
  .Lrkfn41: .string "left"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn41]
 lea rsi, [r12 + 704]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 cmp eax, 99
 je xchain0_n28_α
 jmp xchain0_n27_α
 xchain0_n26_β:
 jmp xchain0_n28_α
xchain0_n27_α:
bb28_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 688]
 mov rsi, qword ptr [r12 + 696]
 call rt_write_any_nl@PLT
 jmp xchain0_n28_α
xchain0_n27_β:
xchain0_n27_β:
 jmp xchain0_n28_α
xchain0_n28_α:
bb29_α:
# BOX IR_CALL left(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+768]
 mov qword ptr [r12 + 768], 1
 mov rax, qword ptr [rip + .Lx43_0]
 mov qword ptr [r12 + 776], rax
 jmp .Lx43_1
.Lx43_0:
 .quad .Lx43_0_s
.Lx43_0_s:
 .string "stu"
.Lx43_1:
# marshal arg1 = LIT_I -> [r12+784]
 mov qword ptr [r12 + 784], 6
 movabs rax, 5
 mov qword ptr [r12 + 792], rax
# marshal arg2 = LIT_S (string REG-RO sealed in-band) -> [r12+800]
 mov qword ptr [r12 + 800], 1
 mov rax, qword ptr [rip + .Lx43_4]
 mov qword ptr [r12 + 808], rax
 jmp .Lx43_5
.Lx43_4:
 .quad .Lx43_4_s
.Lx43_4_s:
 .string "."
.Lx43_5:
  .section .rodata
  .Lrkfn44: .string "left"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn44]
 lea rsi, [r12 + 768]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 cmp eax, 99
 je xchain0_n30_α
 jmp xchain0_n29_α
 xchain0_n28_β:
 jmp xchain0_n30_α
xchain0_n29_α:
bb30_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 752]
 mov rsi, qword ptr [r12 + 760]
 call rt_write_any_nl@PLT
 jmp xchain0_n30_α
xchain0_n29_β:
xchain0_n29_β:
 jmp xchain0_n30_α
xchain0_n30_α:
bb31_α:
# BOX IR_CALL left(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+832]
 mov qword ptr [r12 + 832], 1
 mov rax, qword ptr [rip + .Lx46_0]
 mov qword ptr [r12 + 840], rax
 jmp .Lx46_1
.Lx46_0:
 .quad .Lx46_0_s
.Lx46_0_s:
 .string "vwx"
.Lx46_1:
# marshal arg1 = LIT_I -> [r12+848]
 mov qword ptr [r12 + 848], 6
 movabs rax, 6
 mov qword ptr [r12 + 856], rax
# marshal arg2 = LIT_S (string REG-RO sealed in-band) -> [r12+864]
 mov qword ptr [r12 + 864], 1
 mov rax, qword ptr [rip + .Lx46_4]
 mov qword ptr [r12 + 872], rax
 jmp .Lx46_5
.Lx46_4:
 .quad .Lx46_4_s
.Lx46_4_s:
 .string "."
.Lx46_5:
  .section .rodata
  .Lrkfn47: .string "left"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn47]
 lea rsi, [r12 + 832]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 cmp eax, 99
 je xchain0_n32_α
 jmp xchain0_n31_α
 xchain0_n30_β:
 jmp xchain0_n32_α
xchain0_n31_α:
bb32_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 816]
 mov rsi, qword ptr [r12 + 824]
 call rt_write_any_nl@PLT
 jmp xchain0_n32_α
xchain0_n31_β:
xchain0_n31_β:
 jmp xchain0_n32_α
xchain0_n32_α:
bb33_α:
# BOX IR_CALL left(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+896]
 mov qword ptr [r12 + 896], 1
 mov rax, qword ptr [rip + .Lx49_0]
 mov qword ptr [r12 + 904], rax
 jmp .Lx49_1
.Lx49_0:
 .quad .Lx49_0_s
.Lx49_0_s:
 .string "abc"
.Lx49_1:
# marshal arg1 = LIT_I -> [r12+912]
 mov qword ptr [r12 + 912], 6
 movabs rax, 3
 mov qword ptr [r12 + 920], rax
# marshal arg2 = nested producer-box slot [r12+928] -> [r12+928]
 mov rax, qword ptr [r12 + 928]
 mov qword ptr [r12 + 928], rax
 mov rax, qword ptr [r12 + 936]
 mov qword ptr [r12 + 936], rax
  .section .rodata
  .Lrkfn50: .string "left"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn50]
 lea rsi, [r12 + 896]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 cmp eax, 99
 je xchain0_n34_α
 jmp xchain0_n33_α
 xchain0_n32_β:
 jmp xchain0_n34_α
xchain0_n33_α:
bb34_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 880]
 mov rsi, qword ptr [r12 + 888]
 call rt_write_any_nl@PLT
 jmp xchain0_n34_α
xchain0_n33_β:
xchain0_n33_β:
 jmp xchain0_n34_α
xchain0_n34_α:
bb35_α:
# BOX IR_CALL left(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+960]
 mov qword ptr [r12 + 960], 1
 mov rax, qword ptr [rip + .Lx52_0]
 mov qword ptr [r12 + 968], rax
 jmp .Lx52_1
.Lx52_0:
 .quad .Lx52_0_s
.Lx52_0_s:
 .string "def"
.Lx52_1:
# marshal arg1 = nested producer-box slot [r12+976] -> [r12+976]
 mov rax, qword ptr [r12 + 976]
 mov qword ptr [r12 + 976], rax
 mov rax, qword ptr [r12 + 984]
 mov qword ptr [r12 + 984], rax
# marshal arg2 = LIT_S (string REG-RO sealed in-band) -> [r12+992]
 mov qword ptr [r12 + 992], 1
 mov rax, qword ptr [rip + .Lx52_4]
 mov qword ptr [r12 + 1000], rax
 jmp .Lx52_5
.Lx52_4:
 .quad .Lx52_4_s
.Lx52_4_s:
 .string "<>"
.Lx52_5:
  .section .rodata
  .Lrkfn53: .string "left"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn53]
 lea rsi, [r12 + 960]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 cmp eax, 99
 je xchain0_n36_α
 jmp xchain0_n35_α
 xchain0_n34_β:
 jmp xchain0_n36_α
xchain0_n35_α:
bb36_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 944]
 mov rsi, qword ptr [r12 + 952]
 call rt_write_any_nl@PLT
 jmp xchain0_n36_α
xchain0_n35_β:
xchain0_n35_β:
 jmp xchain0_n36_α
xchain0_n36_α:
bb37_α:
# BOX IR_CALL left(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1024]
 mov qword ptr [r12 + 1024], 1
 mov rax, qword ptr [rip + .Lx55_0]
 mov qword ptr [r12 + 1032], rax
 jmp .Lx55_1
.Lx55_0:
 .quad .Lx55_0_s
.Lx55_0_s:
 .string "ghi"
.Lx55_1:
# marshal arg1 = nested producer-box slot [r12+1040] -> [r12+1040]
 mov rax, qword ptr [r12 + 1040]
 mov qword ptr [r12 + 1040], rax
 mov rax, qword ptr [r12 + 1048]
 mov qword ptr [r12 + 1048], rax
# marshal arg2 = LIT_S (string REG-RO sealed in-band) -> [r12+1056]
 mov qword ptr [r12 + 1056], 1
 mov rax, qword ptr [rip + .Lx55_4]
 mov qword ptr [r12 + 1064], rax
 jmp .Lx55_5
.Lx55_4:
 .quad .Lx55_4_s
.Lx55_4_s:
 .string "<>"
.Lx55_5:
  .section .rodata
  .Lrkfn56: .string "left"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn56]
 lea rsi, [r12 + 1024]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 cmp eax, 99
 je xchain0_n38_α
 jmp xchain0_n37_α
 xchain0_n36_β:
 jmp xchain0_n38_α
xchain0_n37_α:
bb38_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 1008]
 mov rsi, qword ptr [r12 + 1016]
 call rt_write_any_nl@PLT
 jmp xchain0_n38_α
xchain0_n37_β:
xchain0_n37_β:
 jmp xchain0_n38_α
xchain0_n38_α:
bb39_α:
# BOX IR_CALL left(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1088]
 mov qword ptr [r12 + 1088], 1
 mov rax, qword ptr [rip + .Lx58_0]
 mov qword ptr [r12 + 1096], rax
 jmp .Lx58_1
.Lx58_0:
 .quad .Lx58_0_s
.Lx58_0_s:
 .string "jkl"
.Lx58_1:
# marshal arg1 = LIT_I -> [r12+1104]
 mov qword ptr [r12 + 1104], 6
 movabs rax, 2
 mov qword ptr [r12 + 1112], rax
# marshal arg2 = LIT_S (string REG-RO sealed in-band) -> [r12+1120]
 mov qword ptr [r12 + 1120], 1
 mov rax, qword ptr [rip + .Lx58_4]
 mov qword ptr [r12 + 1128], rax
 jmp .Lx58_5
.Lx58_4:
 .quad .Lx58_4_s
.Lx58_4_s:
 .string "<>"
.Lx58_5:
  .section .rodata
  .Lrkfn59: .string "left"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn59]
 lea rsi, [r12 + 1088]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 cmp eax, 99
 je xchain0_n40_α
 jmp xchain0_n39_α
 xchain0_n38_β:
 jmp xchain0_n40_α
xchain0_n39_α:
bb40_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 1072]
 mov rsi, qword ptr [r12 + 1080]
 call rt_write_any_nl@PLT
 jmp xchain0_n40_α
xchain0_n39_β:
xchain0_n39_β:
 jmp xchain0_n40_α
xchain0_n40_α:
bb41_α:
# BOX IR_CALL left(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1152]
 mov qword ptr [r12 + 1152], 1
 mov rax, qword ptr [rip + .Lx61_0]
 mov qword ptr [r12 + 1160], rax
 jmp .Lx61_1
.Lx61_0:
 .quad .Lx61_0_s
.Lx61_0_s:
 .string "mno"
.Lx61_1:
# marshal arg1 = LIT_I -> [r12+1168]
 mov qword ptr [r12 + 1168], 6
 movabs rax, 3
 mov qword ptr [r12 + 1176], rax
# marshal arg2 = LIT_S (string REG-RO sealed in-band) -> [r12+1184]
 mov qword ptr [r12 + 1184], 1
 mov rax, qword ptr [rip + .Lx61_4]
 mov qword ptr [r12 + 1192], rax
 jmp .Lx61_5
.Lx61_4:
 .quad .Lx61_4_s
.Lx61_4_s:
 .string "<>"
.Lx61_5:
  .section .rodata
  .Lrkfn62: .string "left"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn62]
 lea rsi, [r12 + 1152]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 cmp eax, 99
 je xchain0_n42_α
 jmp xchain0_n41_α
 xchain0_n40_β:
 jmp xchain0_n42_α
xchain0_n41_α:
bb42_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 1136]
 mov rsi, qword ptr [r12 + 1144]
 call rt_write_any_nl@PLT
 jmp xchain0_n42_α
xchain0_n41_β:
xchain0_n41_β:
 jmp xchain0_n42_α
xchain0_n42_α:
bb43_α:
# BOX IR_CALL left(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+1216]
 mov qword ptr [r12 + 1216], 6
 movabs rax, 237
 mov qword ptr [r12 + 1224], rax
# marshal arg1 = LIT_I -> [r12+1232]
 mov qword ptr [r12 + 1232], 6
 movabs rax, 4
 mov qword ptr [r12 + 1240], rax
# marshal arg2 = LIT_S (string REG-RO sealed in-band) -> [r12+1248]
 mov qword ptr [r12 + 1248], 1
 mov rax, qword ptr [rip + .Lx64_4]
 mov qword ptr [r12 + 1256], rax
 jmp .Lx64_5
.Lx64_4:
 .quad .Lx64_4_s
.Lx64_4_s:
 .string "<>"
.Lx64_5:
  .section .rodata
  .Lrkfn65: .string "left"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn65]
 lea rsi, [r12 + 1216]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1200], rax
 mov qword ptr [r12 + 1208], rdx
 cmp eax, 99
 je xchain0_n44_α
 jmp xchain0_n43_α
 xchain0_n42_β:
 jmp xchain0_n44_α
xchain0_n43_α:
bb44_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 1200]
 mov rsi, qword ptr [r12 + 1208]
 call rt_write_any_nl@PLT
 jmp xchain0_n44_α
xchain0_n43_β:
xchain0_n43_β:
 jmp xchain0_n44_α
xchain0_n44_α:
bb45_α:
# BOX IR_CALL left(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1280]
 mov qword ptr [r12 + 1280], 1
 mov rax, qword ptr [rip + .Lx67_0]
 mov qword ptr [r12 + 1288], rax
 jmp .Lx67_1
.Lx67_0:
 .quad .Lx67_0_s
.Lx67_0_s:
 .string "stu"
.Lx67_1:
# marshal arg1 = LIT_I -> [r12+1296]
 mov qword ptr [r12 + 1296], 6
 movabs rax, 5
 mov qword ptr [r12 + 1304], rax
# marshal arg2 = LIT_S (string REG-RO sealed in-band) -> [r12+1312]
 mov qword ptr [r12 + 1312], 1
 mov rax, qword ptr [rip + .Lx67_4]
 mov qword ptr [r12 + 1320], rax
 jmp .Lx67_5
.Lx67_4:
 .quad .Lx67_4_s
.Lx67_4_s:
 .string "<>"
.Lx67_5:
  .section .rodata
  .Lrkfn68: .string "left"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn68]
 lea rsi, [r12 + 1280]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], rdx
 cmp eax, 99
 je xchain0_n46_α
 jmp xchain0_n45_α
 xchain0_n44_β:
 jmp xchain0_n46_α
xchain0_n45_α:
bb46_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 1264]
 mov rsi, qword ptr [r12 + 1272]
 call rt_write_any_nl@PLT
 jmp xchain0_n46_α
xchain0_n45_β:
xchain0_n45_β:
 jmp xchain0_n46_α
xchain0_n46_α:
bb47_α:
# BOX IR_CALL left(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1344]
 mov qword ptr [r12 + 1344], 1
 mov rax, qword ptr [rip + .Lx70_0]
 mov qword ptr [r12 + 1352], rax
 jmp .Lx70_1
.Lx70_0:
 .quad .Lx70_0_s
.Lx70_0_s:
 .string "vwx"
.Lx70_1:
# marshal arg1 = LIT_I -> [r12+1360]
 mov qword ptr [r12 + 1360], 6
 movabs rax, 6
 mov qword ptr [r12 + 1368], rax
# marshal arg2 = LIT_S (string REG-RO sealed in-band) -> [r12+1376]
 mov qword ptr [r12 + 1376], 1
 mov rax, qword ptr [rip + .Lx70_4]
 mov qword ptr [r12 + 1384], rax
 jmp .Lx70_5
.Lx70_4:
 .quad .Lx70_4_s
.Lx70_4_s:
 .string "<>"
.Lx70_5:
  .section .rodata
  .Lrkfn71: .string "left"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn71]
 lea rsi, [r12 + 1344]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 cmp eax, 99
 je main_ω
 jmp xchain0_n47_α
 xchain0_n46_β:
 jmp main_ω
xchain0_n47_α:
bb48_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 1328]
 mov rsi, qword ptr [r12 + 1336]
 call rt_write_any_nl@PLT
 jmp main_γ
xchain0_n47_β:
xchain0_n47_β:
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
