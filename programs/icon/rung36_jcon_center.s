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
bb00001_α:
# BOX IR_CALL center(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+16]
 mov qword ptr [r12 + 16], 1
 mov rax, qword ptr [rip + .Lx1_0]
 mov qword ptr [r12 + 24], rax
 jmp .Lx1_1
.Lx1_0:
 .quad .Lx1_0_s
.Lx1_0_s:
 .string "12345"
.Lx1_1:
# marshal arg1 = LIT_I -> [r12+32]
 mov qword ptr [r12 + 32], 6
 movabs rax, 3
 mov qword ptr [r12 + 40], rax
# marshal arg2 = LIT_S (string REG-RO sealed in-band) -> [r12+48]
 mov qword ptr [r12 + 48], 1
 mov rax, qword ptr [rip + .Lx1_4]
 mov qword ptr [r12 + 56], rax
 jmp .Lx1_5
.Lx1_4:
 .quad .Lx1_4_s
.Lx1_4_s:
 .string ""
.Lx1_5:
  .section .rodata
  .Lrkfn2: .string "center"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2]
 lea rsi, [r12 + 16]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 cmp eax, 99
 je xchain0_n2_α
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n2_α
xchain0_n1_α:
bb00002_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 call rt_write_any_nl@PLT
 jmp xchain0_n2_α
xchain0_n1_β:
xchain0_n1_β:
 jmp xchain0_n2_α
xchain0_n2_α:
bb00003_α:
# BOX IR_CALL center(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+80]
 mov qword ptr [r12 + 80], 1
 mov rax, qword ptr [rip + .Lx4_0]
 mov qword ptr [r12 + 88], rax
 jmp .Lx4_1
.Lx4_0:
 .quad .Lx4_0_s
.Lx4_0_s:
 .string "1"
.Lx4_1:
# marshal arg1 = LIT_I -> [r12+96]
 mov qword ptr [r12 + 96], 6
 movabs rax, 3
 mov qword ptr [r12 + 104], rax
# marshal arg2 = LIT_S (string REG-RO sealed in-band) -> [r12+112]
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx4_4]
 mov qword ptr [r12 + 120], rax
 jmp .Lx4_5
.Lx4_4:
 .quad .Lx4_4_s
.Lx4_4_s:
 .string ""
.Lx4_5:
  .section .rodata
  .Lrkfn5: .string "center"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn5]
 lea rsi, [r12 + 80]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je xchain0_n4_α
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n4_α
xchain0_n3_α:
bb00004_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 64]
 mov rsi, qword ptr [r12 + 72]
 call rt_write_any_nl@PLT
 jmp xchain0_n4_α
xchain0_n3_β:
xchain0_n3_β:
 jmp xchain0_n4_α
xchain0_n4_α:
bb00005_α:
# BOX IR_CALL center(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+144]
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx7_0]
 mov qword ptr [r12 + 152], rax
 jmp .Lx7_1
.Lx7_0:
 .quad .Lx7_0_s
.Lx7_0_s:
 .string "123"
.Lx7_1:
  .section .rodata
  .Lrkfn8: .string "center"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn8]
 lea rsi, [r12 + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain0_n6_α
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp xchain0_n6_α
xchain0_n5_α:
bb00006_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 call rt_write_any_nl@PLT
 jmp xchain0_n6_α
xchain0_n5_β:
xchain0_n5_β:
 jmp xchain0_n6_α
xchain0_n6_α:
bb00007_α:
# BOX IR_CALL center(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+176]
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx10_0]
 mov qword ptr [r12 + 184], rax
 jmp .Lx10_1
.Lx10_0:
 .quad .Lx10_0_s
.Lx10_0_s:
 .string "12"
.Lx10_1:
  .section .rodata
  .Lrkfn11: .string "center"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn11]
 lea rsi, [r12 + 176]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je xchain0_n8_α
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp xchain0_n8_α
xchain0_n7_α:
bb00008_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 call rt_write_any_nl@PLT
 jmp xchain0_n8_α
xchain0_n7_β:
xchain0_n7_β:
 jmp xchain0_n8_α
xchain0_n8_α:
bb00009_α:
# BOX IR_CALL center(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+208]
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx13_0]
 mov qword ptr [r12 + 216], rax
 jmp .Lx13_1
.Lx13_0:
 .quad .Lx13_0_s
.Lx13_0_s:
 .string "1234"
.Lx13_1:
# marshal arg1 = LIT_I -> [r12+224]
 mov qword ptr [r12 + 224], 6
 movabs rax, 1
 mov qword ptr [r12 + 232], rax
  .section .rodata
  .Lrkfn14: .string "center"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn14]
 lea rsi, [r12 + 208]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain0_n10_α
 jmp xchain0_n9_α
 xchain0_n8_β:
 jmp xchain0_n10_α
xchain0_n9_α:
bb00010_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 192]
 mov rsi, qword ptr [r12 + 200]
 call rt_write_any_nl@PLT
 jmp xchain0_n10_α
xchain0_n9_β:
xchain0_n9_β:
 jmp xchain0_n10_α
xchain0_n10_α:
bb00011_α:
# BOX IR_CALL center(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+256]
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx16_0]
 mov qword ptr [r12 + 264], rax
 jmp .Lx16_1
.Lx16_0:
 .quad .Lx16_0_s
.Lx16_0_s:
 .string "1234"
.Lx16_1:
# marshal arg1 = LIT_I -> [r12+272]
 mov qword ptr [r12 + 272], 6
 movabs rax, 2
 mov qword ptr [r12 + 280], rax
  .section .rodata
  .Lrkfn17: .string "center"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn17]
 lea rsi, [r12 + 256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain0_n12_α
 jmp xchain0_n11_α
 xchain0_n10_β:
 jmp xchain0_n12_α
xchain0_n11_α:
bb00012_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 240]
 mov rsi, qword ptr [r12 + 248]
 call rt_write_any_nl@PLT
 jmp xchain0_n12_α
xchain0_n11_β:
xchain0_n11_β:
 jmp xchain0_n12_α
xchain0_n12_α:
bb00013_α:
# BOX IR_CALL center(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+304]
 mov qword ptr [r12 + 304], 1
 mov rax, qword ptr [rip + .Lx19_0]
 mov qword ptr [r12 + 312], rax
 jmp .Lx19_1
.Lx19_0:
 .quad .Lx19_0_s
.Lx19_0_s:
 .string "1234"
.Lx19_1:
# marshal arg1 = LIT_I -> [r12+320]
 mov qword ptr [r12 + 320], 6
 movabs rax, 3
 mov qword ptr [r12 + 328], rax
  .section .rodata
  .Lrkfn20: .string "center"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn20]
 lea rsi, [r12 + 304]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n13_α
 xchain0_n12_β:
 jmp xchain0_n14_α
xchain0_n13_α:
bb00014_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 288]
 mov rsi, qword ptr [r12 + 296]
 call rt_write_any_nl@PLT
 jmp xchain0_n14_α
xchain0_n13_β:
xchain0_n13_β:
 jmp xchain0_n14_α
xchain0_n14_α:
bb00015_α:
# BOX IR_CALL center(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+352]
 mov qword ptr [r12 + 352], 1
 mov rax, qword ptr [rip + .Lx22_0]
 mov qword ptr [r12 + 360], rax
 jmp .Lx22_1
.Lx22_0:
 .quad .Lx22_0_s
.Lx22_0_s:
 .string "12345"
.Lx22_1:
# marshal arg1 = LIT_I -> [r12+368]
 mov qword ptr [r12 + 368], 6
 movabs rax, 1
 mov qword ptr [r12 + 376], rax
  .section .rodata
  .Lrkfn23: .string "center"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn23]
 lea rsi, [r12 + 352]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 cmp eax, 99
 je xchain0_n16_α
 jmp xchain0_n15_α
 xchain0_n14_β:
 jmp xchain0_n16_α
xchain0_n15_α:
bb00016_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 336]
 mov rsi, qword ptr [r12 + 344]
 call rt_write_any_nl@PLT
 jmp xchain0_n16_α
xchain0_n15_β:
xchain0_n15_β:
 jmp xchain0_n16_α
xchain0_n16_α:
bb00017_α:
# BOX IR_CALL center(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+400]
 mov qword ptr [r12 + 400], 1
 mov rax, qword ptr [rip + .Lx25_0]
 mov qword ptr [r12 + 408], rax
 jmp .Lx25_1
.Lx25_0:
 .quad .Lx25_0_s
.Lx25_0_s:
 .string "12345"
.Lx25_1:
# marshal arg1 = LIT_I -> [r12+416]
 mov qword ptr [r12 + 416], 6
 movabs rax, 2
 mov qword ptr [r12 + 424], rax
  .section .rodata
  .Lrkfn26: .string "center"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn26]
 lea rsi, [r12 + 400]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je xchain0_n18_α
 jmp xchain0_n17_α
 xchain0_n16_β:
 jmp xchain0_n18_α
xchain0_n17_α:
bb00018_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 384]
 mov rsi, qword ptr [r12 + 392]
 call rt_write_any_nl@PLT
 jmp xchain0_n18_α
xchain0_n17_β:
xchain0_n17_β:
 jmp xchain0_n18_α
xchain0_n18_α:
bb00019_α:
# BOX IR_CALL center(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+448]
 mov qword ptr [r12 + 448], 1
 mov rax, qword ptr [rip + .Lx28_0]
 mov qword ptr [r12 + 456], rax
 jmp .Lx28_1
.Lx28_0:
 .quad .Lx28_0_s
.Lx28_0_s:
 .string "12345"
.Lx28_1:
# marshal arg1 = LIT_I -> [r12+464]
 mov qword ptr [r12 + 464], 6
 movabs rax, 3
 mov qword ptr [r12 + 472], rax
  .section .rodata
  .Lrkfn29: .string "center"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn29]
 lea rsi, [r12 + 448]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 cmp eax, 99
 je xchain0_n20_α
 jmp xchain0_n19_α
 xchain0_n18_β:
 jmp xchain0_n20_α
xchain0_n19_α:
bb00020_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 432]
 mov rsi, qword ptr [r12 + 440]
 call rt_write_any_nl@PLT
 jmp xchain0_n20_α
xchain0_n19_β:
xchain0_n19_β:
 jmp xchain0_n20_α
xchain0_n20_α:
bb00021_α:
# BOX IR_CALL center(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+496]
 mov qword ptr [r12 + 496], 1
 mov rax, qword ptr [rip + .Lx31_0]
 mov qword ptr [r12 + 504], rax
 jmp .Lx31_1
.Lx31_0:
 .quad .Lx31_0_s
.Lx31_0_s:
 .string "123"
.Lx31_1:
# marshal arg1 = LIT_I -> [r12+512]
 mov qword ptr [r12 + 512], 6
 movabs rax, 8
 mov qword ptr [r12 + 520], rax
  .section .rodata
  .Lrkfn32: .string "center"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn32]
 lea rsi, [r12 + 496]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 cmp eax, 99
 je xchain0_n22_α
 jmp xchain0_n21_α
 xchain0_n20_β:
 jmp xchain0_n22_α
xchain0_n21_α:
bb00022_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 480]
 mov rsi, qword ptr [r12 + 488]
 call rt_write_any_nl@PLT
 jmp xchain0_n22_α
xchain0_n21_β:
xchain0_n21_β:
 jmp xchain0_n22_α
xchain0_n22_α:
bb00023_α:
# BOX IR_CALL center(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+544]
 mov qword ptr [r12 + 544], 1
 mov rax, qword ptr [rip + .Lx34_0]
 mov qword ptr [r12 + 552], rax
 jmp .Lx34_1
.Lx34_0:
 .quad .Lx34_0_s
.Lx34_0_s:
 .string "12"
.Lx34_1:
# marshal arg1 = LIT_I -> [r12+560]
 mov qword ptr [r12 + 560], 6
 movabs rax, 8
 mov qword ptr [r12 + 568], rax
  .section .rodata
  .Lrkfn35: .string "center"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn35]
 lea rsi, [r12 + 544]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 cmp eax, 99
 je xchain0_n24_α
 jmp xchain0_n23_α
 xchain0_n22_β:
 jmp xchain0_n24_α
xchain0_n23_α:
bb00024_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 528]
 mov rsi, qword ptr [r12 + 536]
 call rt_write_any_nl@PLT
 jmp xchain0_n24_α
xchain0_n23_β:
xchain0_n23_β:
 jmp xchain0_n24_α
xchain0_n24_α:
bb00025_α:
# BOX IR_CALL center(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+592]
 mov qword ptr [r12 + 592], 1
 mov rax, qword ptr [rip + .Lx37_0]
 mov qword ptr [r12 + 600], rax
 jmp .Lx37_1
.Lx37_0:
 .quad .Lx37_0_s
.Lx37_0_s:
 .string "123"
.Lx37_1:
# marshal arg1 = LIT_I -> [r12+608]
 mov qword ptr [r12 + 608], 6
 movabs rax, 9
 mov qword ptr [r12 + 616], rax
  .section .rodata
  .Lrkfn38: .string "center"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn38]
 lea rsi, [r12 + 592]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 cmp eax, 99
 je xchain0_n26_α
 jmp xchain0_n25_α
 xchain0_n24_β:
 jmp xchain0_n26_α
xchain0_n25_α:
bb00026_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 576]
 mov rsi, qword ptr [r12 + 584]
 call rt_write_any_nl@PLT
 jmp xchain0_n26_α
xchain0_n25_β:
xchain0_n25_β:
 jmp xchain0_n26_α
xchain0_n26_α:
bb00027_α:
# BOX IR_CALL center(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+640]
 mov qword ptr [r12 + 640], 1
 mov rax, qword ptr [rip + .Lx40_0]
 mov qword ptr [r12 + 648], rax
 jmp .Lx40_1
.Lx40_0:
 .quad .Lx40_0_s
.Lx40_0_s:
 .string "12"
.Lx40_1:
# marshal arg1 = LIT_I -> [r12+656]
 mov qword ptr [r12 + 656], 6
 movabs rax, 9
 mov qword ptr [r12 + 664], rax
  .section .rodata
  .Lrkfn41: .string "center"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn41]
 lea rsi, [r12 + 640]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 cmp eax, 99
 je xchain0_n28_α
 jmp xchain0_n27_α
 xchain0_n26_β:
 jmp xchain0_n28_α
xchain0_n27_α:
bb00028_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 624]
 mov rsi, qword ptr [r12 + 632]
 call rt_write_any_nl@PLT
 jmp xchain0_n28_α
xchain0_n27_β:
xchain0_n27_β:
 jmp xchain0_n28_α
xchain0_n28_α:
bb00029_α:
# BOX IR_CALL center(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+688]
 mov qword ptr [r12 + 688], 1
 mov rax, qword ptr [rip + .Lx43_0]
 mov qword ptr [r12 + 696], rax
 jmp .Lx43_1
.Lx43_0:
 .quad .Lx43_0_s
.Lx43_0_s:
 .string "123"
.Lx43_1:
# marshal arg1 = LIT_I -> [r12+704]
 mov qword ptr [r12 + 704], 6
 movabs rax, 8
 mov qword ptr [r12 + 712], rax
# marshal arg2 = LIT_S (string REG-RO sealed in-band) -> [r12+720]
 mov qword ptr [r12 + 720], 1
 mov rax, qword ptr [rip + .Lx43_4]
 mov qword ptr [r12 + 728], rax
 jmp .Lx43_5
.Lx43_4:
 .quad .Lx43_4_s
.Lx43_4_s:
 .string "<>"
.Lx43_5:
  .section .rodata
  .Lrkfn44: .string "center"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn44]
 lea rsi, [r12 + 688]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 cmp eax, 99
 je xchain0_n30_α
 jmp xchain0_n29_α
 xchain0_n28_β:
 jmp xchain0_n30_α
xchain0_n29_α:
bb00030_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 672]
 mov rsi, qword ptr [r12 + 680]
 call rt_write_any_nl@PLT
 jmp xchain0_n30_α
xchain0_n29_β:
xchain0_n29_β:
 jmp xchain0_n30_α
xchain0_n30_α:
bb00031_α:
# BOX IR_CALL center(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+752]
 mov qword ptr [r12 + 752], 1
 mov rax, qword ptr [rip + .Lx46_0]
 mov qword ptr [r12 + 760], rax
 jmp .Lx46_1
.Lx46_0:
 .quad .Lx46_0_s
.Lx46_0_s:
 .string "12"
.Lx46_1:
# marshal arg1 = LIT_I -> [r12+768]
 mov qword ptr [r12 + 768], 6
 movabs rax, 8
 mov qword ptr [r12 + 776], rax
# marshal arg2 = LIT_S (string REG-RO sealed in-band) -> [r12+784]
 mov qword ptr [r12 + 784], 1
 mov rax, qword ptr [rip + .Lx46_4]
 mov qword ptr [r12 + 792], rax
 jmp .Lx46_5
.Lx46_4:
 .quad .Lx46_4_s
.Lx46_4_s:
 .string "<>"
.Lx46_5:
  .section .rodata
  .Lrkfn47: .string "center"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn47]
 lea rsi, [r12 + 752]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 cmp eax, 99
 je xchain0_n32_α
 jmp xchain0_n31_α
 xchain0_n30_β:
 jmp xchain0_n32_α
xchain0_n31_α:
bb00032_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 736]
 mov rsi, qword ptr [r12 + 744]
 call rt_write_any_nl@PLT
 jmp xchain0_n32_α
xchain0_n31_β:
xchain0_n31_β:
 jmp xchain0_n32_α
xchain0_n32_α:
bb00033_α:
# BOX IR_CALL center(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+816]
 mov qword ptr [r12 + 816], 1
 mov rax, qword ptr [rip + .Lx49_0]
 mov qword ptr [r12 + 824], rax
 jmp .Lx49_1
.Lx49_0:
 .quad .Lx49_0_s
.Lx49_0_s:
 .string "123"
.Lx49_1:
# marshal arg1 = LIT_I -> [r12+832]
 mov qword ptr [r12 + 832], 6
 movabs rax, 9
 mov qword ptr [r12 + 840], rax
# marshal arg2 = LIT_S (string REG-RO sealed in-band) -> [r12+848]
 mov qword ptr [r12 + 848], 1
 mov rax, qword ptr [rip + .Lx49_4]
 mov qword ptr [r12 + 856], rax
 jmp .Lx49_5
.Lx49_4:
 .quad .Lx49_4_s
.Lx49_4_s:
 .string "<>"
.Lx49_5:
  .section .rodata
  .Lrkfn50: .string "center"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn50]
 lea rsi, [r12 + 816]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 cmp eax, 99
 je xchain0_n34_α
 jmp xchain0_n33_α
 xchain0_n32_β:
 jmp xchain0_n34_α
xchain0_n33_α:
bb00034_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 800]
 mov rsi, qword ptr [r12 + 808]
 call rt_write_any_nl@PLT
 jmp xchain0_n34_α
xchain0_n33_β:
xchain0_n33_β:
 jmp xchain0_n34_α
xchain0_n34_α:
bb00035_α:
# BOX IR_CALL center(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+880]
 mov qword ptr [r12 + 880], 1
 mov rax, qword ptr [rip + .Lx52_0]
 mov qword ptr [r12 + 888], rax
 jmp .Lx52_1
.Lx52_0:
 .quad .Lx52_0_s
.Lx52_0_s:
 .string "12"
.Lx52_1:
# marshal arg1 = LIT_I -> [r12+896]
 mov qword ptr [r12 + 896], 6
 movabs rax, 9
 mov qword ptr [r12 + 904], rax
# marshal arg2 = LIT_S (string REG-RO sealed in-band) -> [r12+912]
 mov qword ptr [r12 + 912], 1
 mov rax, qword ptr [rip + .Lx52_4]
 mov qword ptr [r12 + 920], rax
 jmp .Lx52_5
.Lx52_4:
 .quad .Lx52_4_s
.Lx52_4_s:
 .string "<>"
.Lx52_5:
  .section .rodata
  .Lrkfn53: .string "center"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn53]
 lea rsi, [r12 + 880]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 cmp eax, 99
 je main_ω
 jmp xchain0_n35_α
 xchain0_n34_β:
 jmp main_ω
xchain0_n35_α:
bb00036_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 864]
 mov rsi, qword ptr [r12 + 872]
 call rt_write_any_nl@PLT
 jmp main_γ
xchain0_n35_β:
xchain0_n35_β:
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
