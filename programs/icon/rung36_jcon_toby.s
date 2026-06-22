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
bb00001_α:
 mov qword ptr [r12 + 0], 1
 mov rax, qword ptr [rip + .Lx1_0]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n63_β
.Lx1_0:
 .quad .Lx1_0_s
.Lx1_0_s:
 .string "a. "
xchain0_n1_α:
# IR_LIT_I
bb00002_α:
 mov qword ptr [r12 + 16], 6
 mov rax, qword ptr [rip + .Lx2_0]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n63_β
.Lx2_0:
 .quad 9223372036854775805
xchain0_n2_α:
# IR_LIT_I
bb00003_α:
 mov qword ptr [r12 + 32], 6
 mov rax, qword ptr [rip + .Lx3_0]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n63_β
.Lx3_0:
 .quad 9223372036854775807
xchain0_n3_α:
# IR_TO
bb00004_α:
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 64], rax
.Lx5_0:
 mov rax, qword ptr [r12 + 64]
 mov rcx, qword ptr [r12 + 40]
 cmp rax, rcx
 jg xchain0_n5_α
 mov qword ptr [r12 + 48], 6
 mov qword ptr [r12 + 56], rax
 jmp xchain0_n4_α
 xchain0_n3_β:
 inc qword ptr [r12 + 64]
 jmp .Lx5_0
xchain0_n4_α:
bb00005_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+88]
 mov qword ptr [r12 + 88], 1
 mov rax, qword ptr [rip + .Lx6_0]
 mov qword ptr [r12 + 96], rax
 jmp .Lx6_1
.Lx6_0:
 .quad .Lx6_0_s
.Lx6_0_s:
 .string "a. "
.Lx6_1:
# marshal arg1 = nested producer-box slot [r12+48] -> [r12+104]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 104], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 112], rax
  .section .rodata
  .Lrkfn7: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn7]
 lea rsi, [r12 + 88]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 72], rax
 mov qword ptr [r12 + 80], rdx
 cmp eax, 99
 je xchain0_n63_β
 jmp xchain0_n3_β
 xchain0_n4_β:
 jmp xchain0_n63_β
xchain0_n5_α:
# IR_EVERY
 jmp xchain0_n6_α
 xchain0_n5_β:
 jmp xchain0_n6_α
xchain0_n6_α:
# IR_LIT_S
bb00006_α:
 mov qword ptr [r12 + 120], 1
 mov rax, qword ptr [rip + .Lx9_0]
 mov qword ptr [r12 + 128], rax
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp xchain0_n63_β
.Lx9_0:
 .quad .Lx9_0_s
.Lx9_0_s:
 .string "b. "
xchain0_n7_α:
# IR_LIT_I
bb00007_α:
 mov qword ptr [r12 + 136], 6
 mov rax, qword ptr [rip + .Lx10_0]
 mov qword ptr [r12 + 144], rax
 jmp xchain0_n8_α
 xchain0_n7_β:
 jmp xchain0_n63_β
.Lx10_0:
 .quad 9223372036854775792
xchain0_n8_α:
# IR_LIT_I
bb00008_α:
 mov qword ptr [r12 + 152], 6
 mov rax, qword ptr [rip + .Lx11_0]
 mov qword ptr [r12 + 160], rax
 jmp xchain0_n9_α
 xchain0_n8_β:
 jmp xchain0_n63_β
.Lx11_0:
 .quad 9223372036854775807
xchain0_n9_α:
# IR_TO
bb00009_α:
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 184], rax
.Lx13_0:
 mov rax, qword ptr [r12 + 184]
 mov rcx, qword ptr [r12 + 160]
 cmp rax, rcx
 jg xchain0_n11_α
 mov qword ptr [r12 + 168], 6
 mov qword ptr [r12 + 176], rax
 jmp xchain0_n10_α
 xchain0_n9_β:
 mov rax, qword ptr [r12 + 184]
 add rax, 5
 mov qword ptr [r12 + 184], rax
 jmp .Lx13_0
xchain0_n10_α:
bb00010_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+208]
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx14_0]
 mov qword ptr [r12 + 216], rax
 jmp .Lx14_1
.Lx14_0:
 .quad .Lx14_0_s
.Lx14_0_s:
 .string "b. "
.Lx14_1:
# marshal arg1 = nested producer-box slot [r12+168] -> [r12+224]
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 232], rax
  .section .rodata
  .Lrkfn15: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn15]
 lea rsi, [r12 + 208]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain0_n63_β
 jmp xchain0_n9_β
 xchain0_n10_β:
 jmp xchain0_n63_β
xchain0_n11_α:
# IR_EVERY
 jmp xchain0_n12_α
 xchain0_n11_β:
 jmp xchain0_n12_α
xchain0_n12_α:
# IR_LIT_S
bb00011_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx17_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain0_n13_α
 xchain0_n12_β:
 jmp xchain0_n63_β
.Lx17_0:
 .quad .Lx17_0_s
.Lx17_0_s:
 .string "c. "
xchain0_n13_α:
# IR_LIT_I
bb00012_α:
 mov qword ptr [r12 + 256], 6
 mov rax, qword ptr [rip + .Lx18_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain0_n14_α
 xchain0_n13_β:
 jmp xchain0_n63_β
.Lx18_0:
 .quad 9223372036854775794
xchain0_n14_α:
# IR_LIT_I
bb00013_α:
 mov qword ptr [r12 + 272], 6
 mov rax, qword ptr [rip + .Lx19_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain0_n15_α
 xchain0_n14_β:
 jmp xchain0_n63_β
.Lx19_0:
 .quad 9223372036854775807
xchain0_n15_α:
# IR_TO
bb00014_α:
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 304], rax
.Lx21_0:
 mov rax, qword ptr [r12 + 304]
 mov rcx, qword ptr [r12 + 280]
 cmp rax, rcx
 jg xchain0_n17_α
 mov qword ptr [r12 + 288], 6
 mov qword ptr [r12 + 296], rax
 jmp xchain0_n16_α
 xchain0_n15_β:
 mov rax, qword ptr [r12 + 304]
 add rax, 5
 mov qword ptr [r12 + 304], rax
 jmp .Lx21_0
xchain0_n16_α:
bb00015_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+328]
 mov qword ptr [r12 + 328], 1
 mov rax, qword ptr [rip + .Lx22_0]
 mov qword ptr [r12 + 336], rax
 jmp .Lx22_1
.Lx22_0:
 .quad .Lx22_0_s
.Lx22_0_s:
 .string "c. "
.Lx22_1:
# marshal arg1 = nested producer-box slot [r12+288] -> [r12+344]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 344], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 352], rax
  .section .rodata
  .Lrkfn23: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn23]
 lea rsi, [r12 + 328]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 312], rax
 mov qword ptr [r12 + 320], rdx
 cmp eax, 99
 je xchain0_n63_β
 jmp xchain0_n15_β
 xchain0_n16_β:
 jmp xchain0_n63_β
xchain0_n17_α:
# IR_EVERY
 jmp xchain0_n18_α
 xchain0_n17_β:
 jmp xchain0_n18_α
xchain0_n18_α:
# IR_LIT_S
bb00016_α:
 mov qword ptr [r12 + 360], 1
 mov rax, qword ptr [rip + .Lx25_0]
 mov qword ptr [r12 + 368], rax
 jmp xchain0_n19_α
 xchain0_n18_β:
 jmp xchain0_n63_β
.Lx25_0:
 .quad .Lx25_0_s
.Lx25_0_s:
 .string "d. "
xchain0_n19_α:
# IR_LIT_I
bb00017_α:
 mov qword ptr [r12 + 376], 6
 mov rax, qword ptr [rip + .Lx26_0]
 mov qword ptr [r12 + 384], rax
 jmp xchain0_n20_α
 xchain0_n19_β:
 jmp xchain0_n63_β
.Lx26_0:
 .quad 9223372036854775796
xchain0_n20_α:
# IR_LIT_I
bb00018_α:
 mov qword ptr [r12 + 392], 6
 mov rax, qword ptr [rip + .Lx27_0]
 mov qword ptr [r12 + 400], rax
 jmp xchain0_n21_α
 xchain0_n20_β:
 jmp xchain0_n63_β
.Lx27_0:
 .quad 9223372036854775807
xchain0_n21_α:
# IR_TO
bb00019_α:
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 424], rax
.Lx29_0:
 mov rax, qword ptr [r12 + 424]
 mov rcx, qword ptr [r12 + 400]
 cmp rax, rcx
 jg xchain0_n23_α
 mov qword ptr [r12 + 408], 6
 mov qword ptr [r12 + 416], rax
 jmp xchain0_n22_α
 xchain0_n21_β:
 mov rax, qword ptr [r12 + 424]
 add rax, 5
 mov qword ptr [r12 + 424], rax
 jmp .Lx29_0
xchain0_n22_α:
bb00020_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+448]
 mov qword ptr [r12 + 448], 1
 mov rax, qword ptr [rip + .Lx30_0]
 mov qword ptr [r12 + 456], rax
 jmp .Lx30_1
.Lx30_0:
 .quad .Lx30_0_s
.Lx30_0_s:
 .string "d. "
.Lx30_1:
# marshal arg1 = nested producer-box slot [r12+408] -> [r12+464]
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 472], rax
  .section .rodata
  .Lrkfn31: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn31]
 lea rsi, [r12 + 448]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 cmp eax, 99
 je xchain0_n63_β
 jmp xchain0_n21_β
 xchain0_n22_β:
 jmp xchain0_n63_β
xchain0_n23_α:
# IR_EVERY
 jmp xchain0_n24_α
 xchain0_n23_β:
 jmp xchain0_n24_α
xchain0_n24_α:
# IR_LIT_S
bb00021_α:
 mov qword ptr [r12 + 480], 1
 mov rax, qword ptr [rip + .Lx33_0]
 mov qword ptr [r12 + 488], rax
 jmp xchain0_n25_α
 xchain0_n24_β:
 jmp xchain0_n63_β
.Lx33_0:
 .quad .Lx33_0_s
.Lx33_0_s:
 .string "e. "
xchain0_n25_α:
# IR_LIT_I
bb00022_α:
 mov qword ptr [r12 + 496], 6
 mov rax, qword ptr [rip + .Lx34_0]
 mov qword ptr [r12 + 504], rax
 jmp xchain0_n26_α
 xchain0_n25_β:
 jmp xchain0_n63_β
.Lx34_0:
 .quad 9223372036854775811
xchain0_n26_α:
# IR_LIT_I
bb00023_α:
 mov qword ptr [r12 + 512], 6
 mov rax, qword ptr [rip + .Lx35_0]
 mov qword ptr [r12 + 520], rax
 jmp xchain0_n27_α
 xchain0_n26_β:
 jmp xchain0_n63_β
.Lx35_0:
 .quad 9223372036854775809
xchain0_n27_α:
# IR_TO
bb00024_α:
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 544], rax
.Lx37_0:
 mov rax, qword ptr [r12 + 544]
 mov rcx, qword ptr [r12 + 520]
 cmp rax, rcx
 jl xchain0_n29_α
 mov qword ptr [r12 + 528], 6
 mov qword ptr [r12 + 536], rax
 jmp xchain0_n28_α
 xchain0_n27_β:
 mov rax, qword ptr [r12 + 544]
 add rax, -1
 mov qword ptr [r12 + 544], rax
 jmp .Lx37_0
xchain0_n28_α:
bb00025_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+568]
 mov qword ptr [r12 + 568], 1
 mov rax, qword ptr [rip + .Lx38_0]
 mov qword ptr [r12 + 576], rax
 jmp .Lx38_1
.Lx38_0:
 .quad .Lx38_0_s
.Lx38_0_s:
 .string "e. "
.Lx38_1:
# marshal arg1 = nested producer-box slot [r12+528] -> [r12+584]
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 584], rax
 mov rax, qword ptr [r12 + 536]
 mov qword ptr [r12 + 592], rax
  .section .rodata
  .Lrkfn39: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn39]
 lea rsi, [r12 + 568]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 552], rax
 mov qword ptr [r12 + 560], rdx
 cmp eax, 99
 je xchain0_n63_β
 jmp xchain0_n27_β
 xchain0_n28_β:
 jmp xchain0_n63_β
xchain0_n29_α:
# IR_EVERY
 jmp xchain0_n30_α
 xchain0_n29_β:
 jmp xchain0_n30_α
xchain0_n30_α:
# IR_LIT_S
bb00026_α:
 mov qword ptr [r12 + 600], 1
 mov rax, qword ptr [rip + .Lx41_0]
 mov qword ptr [r12 + 608], rax
 jmp xchain0_n31_α
 xchain0_n30_β:
 jmp xchain0_n63_β
.Lx41_0:
 .quad .Lx41_0_s
.Lx41_0_s:
 .string "f. "
xchain0_n31_α:
# IR_LIT_I
bb00027_α:
 mov qword ptr [r12 + 616], 6
 mov rax, qword ptr [rip + .Lx42_0]
 mov qword ptr [r12 + 624], rax
 jmp xchain0_n32_α
 xchain0_n31_β:
 jmp xchain0_n63_β
.Lx42_0:
 .quad 9223372036854775824
xchain0_n32_α:
# IR_LIT_I
bb00028_α:
 mov qword ptr [r12 + 632], 6
 mov rax, qword ptr [rip + .Lx43_0]
 mov qword ptr [r12 + 640], rax
 jmp xchain0_n33_α
 xchain0_n32_β:
 jmp xchain0_n63_β
.Lx43_0:
 .quad 9223372036854775809
xchain0_n33_α:
# IR_TO
bb00029_α:
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 664], rax
.Lx45_0:
 mov rax, qword ptr [r12 + 664]
 mov rcx, qword ptr [r12 + 640]
 cmp rax, rcx
 jl xchain0_n35_α
 mov qword ptr [r12 + 648], 6
 mov qword ptr [r12 + 656], rax
 jmp xchain0_n34_α
 xchain0_n33_β:
 mov rax, qword ptr [r12 + 664]
 add rax, -5
 mov qword ptr [r12 + 664], rax
 jmp .Lx45_0
xchain0_n34_α:
bb00030_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+688]
 mov qword ptr [r12 + 688], 1
 mov rax, qword ptr [rip + .Lx46_0]
 mov qword ptr [r12 + 696], rax
 jmp .Lx46_1
.Lx46_0:
 .quad .Lx46_0_s
.Lx46_0_s:
 .string "f. "
.Lx46_1:
# marshal arg1 = nested producer-box slot [r12+648] -> [r12+704]
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 712], rax
  .section .rodata
  .Lrkfn47: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn47]
 lea rsi, [r12 + 688]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 cmp eax, 99
 je xchain0_n63_β
 jmp xchain0_n33_β
 xchain0_n34_β:
 jmp xchain0_n63_β
xchain0_n35_α:
# IR_EVERY
 jmp xchain0_n36_α
 xchain0_n35_β:
 jmp xchain0_n36_α
xchain0_n36_α:
# IR_LIT_S
bb00031_α:
 mov qword ptr [r12 + 720], 1
 mov rax, qword ptr [rip + .Lx49_0]
 mov qword ptr [r12 + 728], rax
 jmp xchain0_n37_α
 xchain0_n36_β:
 jmp xchain0_n63_β
.Lx49_0:
 .quad .Lx49_0_s
.Lx49_0_s:
 .string "g. "
xchain0_n37_α:
# IR_LIT_I
bb00032_α:
 mov qword ptr [r12 + 736], 6
 mov rax, qword ptr [rip + .Lx50_0]
 mov qword ptr [r12 + 744], rax
 jmp xchain0_n38_α
 xchain0_n37_β:
 jmp xchain0_n63_β
.Lx50_0:
 .quad 9223372036854775822
xchain0_n38_α:
# IR_LIT_I
bb00033_α:
 mov qword ptr [r12 + 752], 6
 mov rax, qword ptr [rip + .Lx51_0]
 mov qword ptr [r12 + 760], rax
 jmp xchain0_n39_α
 xchain0_n38_β:
 jmp xchain0_n63_β
.Lx51_0:
 .quad 9223372036854775809
xchain0_n39_α:
# IR_TO
bb00034_α:
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 784], rax
.Lx53_0:
 mov rax, qword ptr [r12 + 784]
 mov rcx, qword ptr [r12 + 760]
 cmp rax, rcx
 jl xchain0_n41_α
 mov qword ptr [r12 + 768], 6
 mov qword ptr [r12 + 776], rax
 jmp xchain0_n40_α
 xchain0_n39_β:
 mov rax, qword ptr [r12 + 784]
 add rax, -5
 mov qword ptr [r12 + 784], rax
 jmp .Lx53_0
xchain0_n40_α:
bb00035_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+808]
 mov qword ptr [r12 + 808], 1
 mov rax, qword ptr [rip + .Lx54_0]
 mov qword ptr [r12 + 816], rax
 jmp .Lx54_1
.Lx54_0:
 .quad .Lx54_0_s
.Lx54_0_s:
 .string "g. "
.Lx54_1:
# marshal arg1 = nested producer-box slot [r12+768] -> [r12+824]
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 824], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 832], rax
  .section .rodata
  .Lrkfn55: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn55]
 lea rsi, [r12 + 808]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 792], rax
 mov qword ptr [r12 + 800], rdx
 cmp eax, 99
 je xchain0_n63_β
 jmp xchain0_n39_β
 xchain0_n40_β:
 jmp xchain0_n63_β
xchain0_n41_α:
# IR_EVERY
 jmp xchain0_n42_α
 xchain0_n41_β:
 jmp xchain0_n42_α
xchain0_n42_α:
# IR_LIT_S
bb00036_α:
 mov qword ptr [r12 + 840], 1
 mov rax, qword ptr [rip + .Lx57_0]
 mov qword ptr [r12 + 848], rax
 jmp xchain0_n43_α
 xchain0_n42_β:
 jmp xchain0_n63_β
.Lx57_0:
 .quad .Lx57_0_s
.Lx57_0_s:
 .string "h. "
xchain0_n43_α:
# IR_LIT_I
bb00037_α:
 mov qword ptr [r12 + 856], 6
 mov rax, qword ptr [rip + .Lx58_0]
 mov qword ptr [r12 + 864], rax
 jmp xchain0_n44_α
 xchain0_n43_β:
 jmp xchain0_n63_β
.Lx58_0:
 .quad 9223372036854775820
xchain0_n44_α:
# IR_LIT_I
bb00038_α:
 mov qword ptr [r12 + 872], 6
 mov rax, qword ptr [rip + .Lx59_0]
 mov qword ptr [r12 + 880], rax
 jmp xchain0_n45_α
 xchain0_n44_β:
 jmp xchain0_n63_β
.Lx59_0:
 .quad 9223372036854775809
xchain0_n45_α:
# IR_TO
bb00039_α:
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 904], rax
.Lx61_0:
 mov rax, qword ptr [r12 + 904]
 mov rcx, qword ptr [r12 + 880]
 cmp rax, rcx
 jl xchain0_n47_α
 mov qword ptr [r12 + 888], 6
 mov qword ptr [r12 + 896], rax
 jmp xchain0_n46_α
 xchain0_n45_β:
 mov rax, qword ptr [r12 + 904]
 add rax, -5
 mov qword ptr [r12 + 904], rax
 jmp .Lx61_0
xchain0_n46_α:
bb00040_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+928]
 mov qword ptr [r12 + 928], 1
 mov rax, qword ptr [rip + .Lx62_0]
 mov qword ptr [r12 + 936], rax
 jmp .Lx62_1
.Lx62_0:
 .quad .Lx62_0_s
.Lx62_0_s:
 .string "h. "
.Lx62_1:
# marshal arg1 = nested producer-box slot [r12+888] -> [r12+944]
 mov rax, qword ptr [r12 + 888]
 mov qword ptr [r12 + 944], rax
 mov rax, qword ptr [r12 + 896]
 mov qword ptr [r12 + 952], rax
  .section .rodata
  .Lrkfn63: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn63]
 lea rsi, [r12 + 928]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 cmp eax, 99
 je xchain0_n63_β
 jmp xchain0_n45_β
 xchain0_n46_β:
 jmp xchain0_n63_β
xchain0_n47_α:
# IR_EVERY
 jmp xchain0_n48_α
 xchain0_n47_β:
 jmp xchain0_n48_α
xchain0_n48_α:
# IR_LIT_S
bb00041_α:
 mov qword ptr [r12 + 960], 1
 mov rax, qword ptr [rip + .Lx65_0]
 mov qword ptr [r12 + 968], rax
 jmp xchain0_n49_α
 xchain0_n48_β:
 jmp xchain0_n63_β
.Lx65_0:
 .quad .Lx65_0_s
.Lx65_0_s:
 .string "i. "
xchain0_n49_α:
# IR_LIT_I
bb00042_α:
 mov qword ptr [r12 + 976], 6
 mov rax, qword ptr [rip + .Lx66_0]
 mov qword ptr [r12 + 984], rax
 jmp xchain0_n50_α
 xchain0_n49_β:
 jmp xchain0_n63_β
.Lx66_0:
 .quad 9223372002495037440
xchain0_n50_α:
# IR_LIT_I
bb00043_α:
 mov qword ptr [r12 + 992], 6
 mov rax, qword ptr [rip + .Lx67_0]
 mov qword ptr [r12 + 1000], rax
 jmp xchain0_n51_α
 xchain0_n50_β:
 jmp xchain0_n63_β
.Lx67_0:
 .quad 9223372032559808512
xchain0_n51_α:
# IR_TO
bb00044_α:
 mov rax, qword ptr [r12 + 984]
 mov qword ptr [r12 + 1024], rax
.Lx69_0:
 mov rax, qword ptr [r12 + 1024]
 mov rcx, qword ptr [r12 + 1000]
 cmp rax, rcx
 jg xchain0_n53_α
 mov qword ptr [r12 + 1008], 6
 mov qword ptr [r12 + 1016], rax
 jmp xchain0_n52_α
 xchain0_n51_β:
 mov rax, qword ptr [r12 + 1024]
 add rax, 4294967296
 mov qword ptr [r12 + 1024], rax
 jmp .Lx69_0
xchain0_n52_α:
bb00045_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1048]
 mov qword ptr [r12 + 1048], 1
 mov rax, qword ptr [rip + .Lx70_0]
 mov qword ptr [r12 + 1056], rax
 jmp .Lx70_1
.Lx70_0:
 .quad .Lx70_0_s
.Lx70_0_s:
 .string "i. "
.Lx70_1:
# marshal arg1 = nested producer-box slot [r12+1008] -> [r12+1064]
 mov rax, qword ptr [r12 + 1008]
 mov qword ptr [r12 + 1064], rax
 mov rax, qword ptr [r12 + 1016]
 mov qword ptr [r12 + 1072], rax
  .section .rodata
  .Lrkfn71: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn71]
 lea rsi, [r12 + 1048]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1032], rax
 mov qword ptr [r12 + 1040], rdx
 cmp eax, 99
 je xchain0_n63_β
 jmp xchain0_n51_β
 xchain0_n52_β:
 jmp xchain0_n63_β
xchain0_n53_α:
# IR_EVERY
 jmp xchain0_n54_α
 xchain0_n53_β:
 jmp xchain0_n54_α
xchain0_n54_α:
# IR_LIT_S
bb00046_α:
 mov qword ptr [r12 + 1080], 1
 mov rax, qword ptr [rip + .Lx73_0]
 mov qword ptr [r12 + 1088], rax
 jmp xchain0_n55_α
 xchain0_n54_β:
 jmp xchain0_n63_β
.Lx73_0:
 .quad .Lx73_0_s
.Lx73_0_s:
 .string "j. "
xchain0_n55_α:
# IR_LIT_I
bb00047_α:
 mov qword ptr [r12 + 1096], 6
 mov rax, qword ptr [rip + .Lx74_0]
 mov qword ptr [r12 + 1104], rax
 jmp xchain0_n56_α
 xchain0_n55_β:
 jmp xchain0_n63_β
.Lx74_0:
 .quad 10376293541461622785
xchain0_n56_α:
# IR_LIT_I
bb00048_α:
 mov qword ptr [r12 + 1112], 6
 mov rax, qword ptr [rip + .Lx75_0]
 mov qword ptr [r12 + 1120], rax
 jmp xchain0_n57_α
 xchain0_n56_β:
 jmp xchain0_n63_β
.Lx75_0:
 .quad 8070450532247928831
xchain0_n57_α:
# IR_TO
bb00049_α:
 mov rax, qword ptr [r12 + 1104]
 mov qword ptr [r12 + 1144], rax
.Lx77_0:
 mov rax, qword ptr [r12 + 1144]
 mov rcx, qword ptr [r12 + 1120]
 cmp rax, rcx
 jg xchain0_n59_α
 mov qword ptr [r12 + 1128], 6
 mov qword ptr [r12 + 1136], rax
 jmp xchain0_n58_α
 xchain0_n57_β:
 mov rax, qword ptr [r12 + 1144]
 add rax, 2690150177415976277
 mov qword ptr [r12 + 1144], rax
 jmp .Lx77_0
xchain0_n58_α:
bb00050_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1168]
 mov qword ptr [r12 + 1168], 1
 mov rax, qword ptr [rip + .Lx78_0]
 mov qword ptr [r12 + 1176], rax
 jmp .Lx78_1
.Lx78_0:
 .quad .Lx78_0_s
.Lx78_0_s:
 .string "j. "
.Lx78_1:
# marshal arg1 = nested producer-box slot [r12+1128] -> [r12+1184]
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 1184], rax
 mov rax, qword ptr [r12 + 1136]
 mov qword ptr [r12 + 1192], rax
  .section .rodata
  .Lrkfn79: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn79]
 lea rsi, [r12 + 1168]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 cmp eax, 99
 je xchain0_n63_β
 jmp xchain0_n57_β
 xchain0_n58_β:
 jmp xchain0_n63_β
xchain0_n59_α:
# IR_EVERY
 jmp xchain0_n60_α
 xchain0_n59_β:
 jmp xchain0_n60_α
xchain0_n60_α:
# IR_LIT_S
bb00051_α:
 mov qword ptr [r12 + 1200], 1
 mov rax, qword ptr [rip + .Lx81_0]
 mov qword ptr [r12 + 1208], rax
 jmp xchain0_n61_α
 xchain0_n60_β:
 jmp xchain0_n63_β
.Lx81_0:
 .quad .Lx81_0_s
.Lx81_0_s:
 .string "k. "
xchain0_n61_α:
# IR_LIT_I
bb00052_α:
 mov qword ptr [r12 + 1216], 6
 mov rax, qword ptr [rip + .Lx82_0]
 mov qword ptr [r12 + 1224], rax
 jmp xchain0_n62_α
 xchain0_n61_β:
 jmp xchain0_n63_β
.Lx82_0:
 .quad 8070450532247928831
xchain0_n62_α:
# IR_LIT_I
bb00053_α:
 mov qword ptr [r12 + 1232], 6
 mov rax, qword ptr [rip + .Lx83_0]
 mov qword ptr [r12 + 1240], rax
 jmp xchain0_n63_α
 xchain0_n62_β:
 jmp xchain0_n63_β
.Lx83_0:
 .quad 10376293541461622785
xchain0_n63_α:
# IR_TO
bb00054_α:
 mov rax, qword ptr [r12 + 1224]
 mov qword ptr [r12 + 1264], rax
.Lx85_0:
 mov rax, qword ptr [r12 + 1264]
 mov rcx, qword ptr [r12 + 1240]
 cmp rax, rcx
 jl xchain0_n65_α
 mov qword ptr [r12 + 1248], 6
 mov qword ptr [r12 + 1256], rax
 jmp xchain0_n64_α
 xchain0_n63_β:
 mov rax, qword ptr [r12 + 1264]
 add rax, -2690150177415976277
 mov qword ptr [r12 + 1264], rax
 jmp .Lx85_0
xchain0_n64_α:
bb00055_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1288]
 mov qword ptr [r12 + 1288], 1
 mov rax, qword ptr [rip + .Lx86_0]
 mov qword ptr [r12 + 1296], rax
 jmp .Lx86_1
.Lx86_0:
 .quad .Lx86_0_s
.Lx86_0_s:
 .string "k. "
.Lx86_1:
# marshal arg1 = nested producer-box slot [r12+1248] -> [r12+1304]
 mov rax, qword ptr [r12 + 1248]
 mov qword ptr [r12 + 1304], rax
 mov rax, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 1312], rax
  .section .rodata
  .Lrkfn87: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn87]
 lea rsi, [r12 + 1288]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1272], rax
 mov qword ptr [r12 + 1280], rdx
 cmp eax, 99
 je xchain0_n63_β
 jmp xchain0_n63_β
 xchain0_n64_β:
 jmp xchain0_n63_β
xchain0_n65_α:
# IR_EVERY
 jmp main_ω
 xchain0_n65_β:
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
