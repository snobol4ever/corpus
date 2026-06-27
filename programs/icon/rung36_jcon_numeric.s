  .intel_syntax noprefix
  .text
  .globl proc_p1_α
proc_p1_α:
#=======================================================================================================================
    .global proc_p1_α
    .global proc_p1_β
    .global proc_p1_γ
    .global proc_p1_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_p1_α_body:
xchain0_n0_α:
# IR_LIT_S
bb1_α:
 mov qword ptr [r12 + 16], 1
 mov rax, qword ptr [rip + .Lx1_0]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n3_α
.Lx1_0:
 .quad .Lx1_0_s
.Lx1_0_s:
 .string "integer(2) ----> "
xchain0_n1_α:
xaltg2_a0_start:
bb2_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+88]
 mov qword ptr [r12 + 88], 6
 movabs rax, 2
 mov qword ptr [r12 + 96], rax
  .section .rodata
  .Lcallfn4: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn4]
 lea rsi, [r12 + 88]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 72], rax
 mov qword ptr [r12 + 80], rdx
  .section .rodata
  .Lrkfn5: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn5]
 lea rsi, [r12 + 72]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 56], rax
 mov qword ptr [r12 + 64], rdx
 cmp eax, 99
 je xaltg2_a1_start
 jmp xaltg2_a0_succ
 xaltg2_a0_beta:
 jmp xaltg2_a1_start
xaltg2_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain0_n2_α
xaltg2_a1_start:
# IR_LIT_S
bb3_α:
 mov qword ptr [r12 + 104], 1
 mov rax, qword ptr [rip + .Lx7_0]
 mov qword ptr [r12 + 112], rax
 jmp xaltg2_a1_succ
 xaltg2_a1_beta:
 jmp xchain0_n3_α
.Lx7_0:
 .quad .Lx7_0_s
.Lx7_0_s:
 .string "none"
xaltg2_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain0_n2_α
xchain0_n1_β:
jmp xchain0_n3_α
xchain0_n2_α:
bb4_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+136]
 mov qword ptr [r12 + 136], 1
 mov rax, qword ptr [rip + .Lx9_0]
 mov qword ptr [r12 + 144], rax
 jmp .Lx9_1
.Lx9_0:
 .quad .Lx9_0_s
.Lx9_0_s:
 .string "integer(2) ----> "
.Lx9_1:
# marshal arg1 = nested producer-box slot [r12+32] -> [r12+152]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 152], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 160], rax
  .section .rodata
  .Lrkfn10: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn10]
 lea rsi, [r12 + 136]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 120], rax
 mov qword ptr [r12 + 128], rdx
 cmp eax, 99
 je xchain0_n3_α
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n3_α
xchain0_n3_α:
# IR_LIT_S
bb5_α:
 mov qword ptr [r12 + 168], 1
 mov rax, qword ptr [rip + .Lx11_0]
 mov qword ptr [r12 + 176], rax
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n6_α
.Lx11_0:
 .quad .Lx11_0_s
.Lx11_0_s:
 .string "integer(\"2\") ----> "
xchain0_n4_α:
xaltg12_a0_start:
bb6_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+240]
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx13_0]
 mov qword ptr [r12 + 248], rax
 jmp .Lx13_1
.Lx13_0:
 .quad .Lx13_0_s
.Lx13_0_s:
 .string "2"
.Lx13_1:
  .section .rodata
  .Lcallfn14: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn14]
 lea rsi, [r12 + 240]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
  .section .rodata
  .Lrkfn15: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn15]
 lea rsi, [r12 + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xaltg12_a1_start
 jmp xaltg12_a0_succ
 xaltg12_a0_beta:
 jmp xaltg12_a1_start
xaltg12_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 184], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], 1
jmp xchain0_n5_α
xaltg12_a1_start:
# IR_LIT_S
bb7_α:
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx17_0]
 mov qword ptr [r12 + 264], rax
 jmp xaltg12_a1_succ
 xaltg12_a1_beta:
 jmp xchain0_n6_α
.Lx17_0:
 .quad .Lx17_0_s
.Lx17_0_s:
 .string "none"
xaltg12_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 184], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], 1
jmp xchain0_n5_α
xchain0_n4_β:
jmp xchain0_n6_α
xchain0_n5_α:
bb8_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+288]
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx19_0]
 mov qword ptr [r12 + 296], rax
 jmp .Lx19_1
.Lx19_0:
 .quad .Lx19_0_s
.Lx19_0_s:
 .string "integer(\"2\") ----> "
.Lx19_1:
# marshal arg1 = nested producer-box slot [r12+184] -> [r12+304]
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 312], rax
  .section .rodata
  .Lrkfn20: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn20]
 lea rsi, [r12 + 288]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je xchain0_n6_α
 jmp xchain0_n6_α
 xchain0_n5_β:
 jmp xchain0_n6_α
xchain0_n6_α:
# IR_LIT_S
bb9_α:
 mov qword ptr [r12 + 320], 1
 mov rax, qword ptr [rip + .Lx21_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp xchain0_n9_α
.Lx21_0:
 .quad .Lx21_0_s
.Lx21_0_s:
 .string "integer(\" 2\") ----> "
xchain0_n7_α:
xaltg22_a0_start:
bb10_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+392]
 mov qword ptr [r12 + 392], 1
 mov rax, qword ptr [rip + .Lx23_0]
 mov qword ptr [r12 + 400], rax
 jmp .Lx23_1
.Lx23_0:
 .quad .Lx23_0_s
.Lx23_0_s:
 .string " 2"
.Lx23_1:
  .section .rodata
  .Lcallfn24: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn24]
 lea rsi, [r12 + 392]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 376], rax
 mov qword ptr [r12 + 384], rdx
  .section .rodata
  .Lrkfn25: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn25]
 lea rsi, [r12 + 376]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 360], rax
 mov qword ptr [r12 + 368], rdx
 cmp eax, 99
 je xaltg22_a1_start
 jmp xaltg22_a0_succ
 xaltg22_a0_beta:
 jmp xaltg22_a1_start
xaltg22_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 344], rax
 mov qword ptr [r12 + 352], 1
jmp xchain0_n8_α
xaltg22_a1_start:
# IR_LIT_S
bb11_α:
 mov qword ptr [r12 + 408], 1
 mov rax, qword ptr [rip + .Lx27_0]
 mov qword ptr [r12 + 416], rax
 jmp xaltg22_a1_succ
 xaltg22_a1_beta:
 jmp xchain0_n9_α
.Lx27_0:
 .quad .Lx27_0_s
.Lx27_0_s:
 .string "none"
xaltg22_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 344], rax
 mov qword ptr [r12 + 352], 1
jmp xchain0_n8_α
xchain0_n7_β:
jmp xchain0_n9_α
xchain0_n8_α:
bb12_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+440]
 mov qword ptr [r12 + 440], 1
 mov rax, qword ptr [rip + .Lx29_0]
 mov qword ptr [r12 + 448], rax
 jmp .Lx29_1
.Lx29_0:
 .quad .Lx29_0_s
.Lx29_0_s:
 .string "integer(\" 2\") ----> "
.Lx29_1:
# marshal arg1 = nested producer-box slot [r12+336] -> [r12+456]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 456], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 464], rax
  .section .rodata
  .Lrkfn30: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn30]
 lea rsi, [r12 + 440]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 424], rax
 mov qword ptr [r12 + 432], rdx
 cmp eax, 99
 je xchain0_n9_α
 jmp xchain0_n9_α
 xchain0_n8_β:
 jmp xchain0_n9_α
xchain0_n9_α:
# IR_LIT_S
bb13_α:
 mov qword ptr [r12 + 472], 1
 mov rax, qword ptr [rip + .Lx31_0]
 mov qword ptr [r12 + 480], rax
 jmp xchain0_n10_α
 xchain0_n9_β:
 jmp xchain0_n12_α
.Lx31_0:
 .quad .Lx31_0_s
.Lx31_0_s:
 .string "integer(\"2 \") ----> "
xchain0_n10_α:
xaltg32_a0_start:
bb14_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+544]
 mov qword ptr [r12 + 544], 1
 mov rax, qword ptr [rip + .Lx33_0]
 mov qword ptr [r12 + 552], rax
 jmp .Lx33_1
.Lx33_0:
 .quad .Lx33_0_s
.Lx33_0_s:
 .string "2 "
.Lx33_1:
  .section .rodata
  .Lcallfn34: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn34]
 lea rsi, [r12 + 544]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
  .section .rodata
  .Lrkfn35: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn35]
 lea rsi, [r12 + 528]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je xaltg32_a1_start
 jmp xaltg32_a0_succ
 xaltg32_a0_beta:
 jmp xaltg32_a1_start
xaltg32_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 488], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], 1
jmp xchain0_n11_α
xaltg32_a1_start:
# IR_LIT_S
bb15_α:
 mov qword ptr [r12 + 560], 1
 mov rax, qword ptr [rip + .Lx37_0]
 mov qword ptr [r12 + 568], rax
 jmp xaltg32_a1_succ
 xaltg32_a1_beta:
 jmp xchain0_n12_α
.Lx37_0:
 .quad .Lx37_0_s
.Lx37_0_s:
 .string "none"
xaltg32_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 488], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], 1
jmp xchain0_n11_α
xchain0_n10_β:
jmp xchain0_n12_α
xchain0_n11_α:
bb16_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+592]
 mov qword ptr [r12 + 592], 1
 mov rax, qword ptr [rip + .Lx39_0]
 mov qword ptr [r12 + 600], rax
 jmp .Lx39_1
.Lx39_0:
 .quad .Lx39_0_s
.Lx39_0_s:
 .string "integer(\"2 \") ----> "
.Lx39_1:
# marshal arg1 = nested producer-box slot [r12+488] -> [r12+608]
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 616], rax
  .section .rodata
  .Lrkfn40: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn40]
 lea rsi, [r12 + 592]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 cmp eax, 99
 je xchain0_n12_α
 jmp xchain0_n12_α
 xchain0_n11_β:
 jmp xchain0_n12_α
xchain0_n12_α:
# IR_LIT_S
bb17_α:
 mov qword ptr [r12 + 624], 1
 mov rax, qword ptr [rip + .Lx41_0]
 mov qword ptr [r12 + 632], rax
 jmp xchain0_n13_α
 xchain0_n12_β:
 jmp xchain0_n15_α
.Lx41_0:
 .quad .Lx41_0_s
.Lx41_0_s:
 .string "integer(\"+2\") ----> "
xchain0_n13_α:
xaltg42_a0_start:
bb18_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+696]
 mov qword ptr [r12 + 696], 1
 mov rax, qword ptr [rip + .Lx43_0]
 mov qword ptr [r12 + 704], rax
 jmp .Lx43_1
.Lx43_0:
 .quad .Lx43_0_s
.Lx43_0_s:
 .string "+2"
.Lx43_1:
  .section .rodata
  .Lcallfn44: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn44]
 lea rsi, [r12 + 696]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 680], rax
 mov qword ptr [r12 + 688], rdx
  .section .rodata
  .Lrkfn45: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn45]
 lea rsi, [r12 + 680]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 664], rax
 mov qword ptr [r12 + 672], rdx
 cmp eax, 99
 je xaltg42_a1_start
 jmp xaltg42_a0_succ
 xaltg42_a0_beta:
 jmp xaltg42_a1_start
xaltg42_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 648], rax
 mov qword ptr [r12 + 656], 1
jmp xchain0_n14_α
xaltg42_a1_start:
# IR_LIT_S
bb19_α:
 mov qword ptr [r12 + 712], 1
 mov rax, qword ptr [rip + .Lx47_0]
 mov qword ptr [r12 + 720], rax
 jmp xaltg42_a1_succ
 xaltg42_a1_beta:
 jmp xchain0_n15_α
.Lx47_0:
 .quad .Lx47_0_s
.Lx47_0_s:
 .string "none"
xaltg42_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 648], rax
 mov qword ptr [r12 + 656], 1
jmp xchain0_n14_α
xchain0_n13_β:
jmp xchain0_n15_α
xchain0_n14_α:
bb20_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+744]
 mov qword ptr [r12 + 744], 1
 mov rax, qword ptr [rip + .Lx49_0]
 mov qword ptr [r12 + 752], rax
 jmp .Lx49_1
.Lx49_0:
 .quad .Lx49_0_s
.Lx49_0_s:
 .string "integer(\"+2\") ----> "
.Lx49_1:
# marshal arg1 = nested producer-box slot [r12+640] -> [r12+760]
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 760], rax
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 768], rax
  .section .rodata
  .Lrkfn50: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn50]
 lea rsi, [r12 + 744]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 728], rax
 mov qword ptr [r12 + 736], rdx
 cmp eax, 99
 je xchain0_n15_α
 jmp xchain0_n15_α
 xchain0_n14_β:
 jmp xchain0_n15_α
xchain0_n15_α:
# IR_LIT_S
bb21_α:
 mov qword ptr [r12 + 776], 1
 mov rax, qword ptr [rip + .Lx51_0]
 mov qword ptr [r12 + 784], rax
 jmp xchain0_n16_α
 xchain0_n15_β:
 jmp xchain0_n18_α
.Lx51_0:
 .quad .Lx51_0_s
.Lx51_0_s:
 .string "integer(\"-2\") ----> "
xchain0_n16_α:
xaltg52_a0_start:
bb22_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+848]
 mov qword ptr [r12 + 848], 1
 mov rax, qword ptr [rip + .Lx53_0]
 mov qword ptr [r12 + 856], rax
 jmp .Lx53_1
.Lx53_0:
 .quad .Lx53_0_s
.Lx53_0_s:
 .string "-2"
.Lx53_1:
  .section .rodata
  .Lcallfn54: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn54]
 lea rsi, [r12 + 848]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
  .section .rodata
  .Lrkfn55: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn55]
 lea rsi, [r12 + 832]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 cmp eax, 99
 je xaltg52_a1_start
 jmp xaltg52_a0_succ
 xaltg52_a0_beta:
 jmp xaltg52_a1_start
xaltg52_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 792], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], 1
jmp xchain0_n17_α
xaltg52_a1_start:
# IR_LIT_S
bb23_α:
 mov qword ptr [r12 + 864], 1
 mov rax, qword ptr [rip + .Lx57_0]
 mov qword ptr [r12 + 872], rax
 jmp xaltg52_a1_succ
 xaltg52_a1_beta:
 jmp xchain0_n18_α
.Lx57_0:
 .quad .Lx57_0_s
.Lx57_0_s:
 .string "none"
xaltg52_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 792], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], 1
jmp xchain0_n17_α
xchain0_n16_β:
jmp xchain0_n18_α
xchain0_n17_α:
bb24_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+896]
 mov qword ptr [r12 + 896], 1
 mov rax, qword ptr [rip + .Lx59_0]
 mov qword ptr [r12 + 904], rax
 jmp .Lx59_1
.Lx59_0:
 .quad .Lx59_0_s
.Lx59_0_s:
 .string "integer(\"-2\") ----> "
.Lx59_1:
# marshal arg1 = nested producer-box slot [r12+792] -> [r12+912]
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 800]
 mov qword ptr [r12 + 920], rax
  .section .rodata
  .Lrkfn60: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn60]
 lea rsi, [r12 + 896]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 cmp eax, 99
 je xchain0_n18_α
 jmp xchain0_n18_α
 xchain0_n17_β:
 jmp xchain0_n18_α
xchain0_n18_α:
# IR_LIT_S
bb25_α:
 mov qword ptr [r12 + 928], 1
 mov rax, qword ptr [rip + .Lx61_0]
 mov qword ptr [r12 + 936], rax
 jmp xchain0_n19_α
 xchain0_n18_β:
 jmp xchain0_n21_α
.Lx61_0:
 .quad .Lx61_0_s
.Lx61_0_s:
 .string "integer(\"- 2\") ----> "
xchain0_n19_α:
xaltg62_a0_start:
bb26_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1000]
 mov qword ptr [r12 + 1000], 1
 mov rax, qword ptr [rip + .Lx63_0]
 mov qword ptr [r12 + 1008], rax
 jmp .Lx63_1
.Lx63_0:
 .quad .Lx63_0_s
.Lx63_0_s:
 .string "- 2"
.Lx63_1:
  .section .rodata
  .Lcallfn64: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn64]
 lea rsi, [r12 + 1000]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 984], rax
 mov qword ptr [r12 + 992], rdx
  .section .rodata
  .Lrkfn65: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn65]
 lea rsi, [r12 + 984]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 968], rax
 mov qword ptr [r12 + 976], rdx
 cmp eax, 99
 je xaltg62_a1_start
 jmp xaltg62_a0_succ
 xaltg62_a0_beta:
 jmp xaltg62_a1_start
xaltg62_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 968]
 mov qword ptr [r12 + 944], rax
 mov rax, qword ptr [r12 + 976]
 mov qword ptr [r12 + 952], rax
 mov qword ptr [r12 + 960], 1
jmp xchain0_n20_α
xaltg62_a1_start:
# IR_LIT_S
bb27_α:
 mov qword ptr [r12 + 1016], 1
 mov rax, qword ptr [rip + .Lx67_0]
 mov qword ptr [r12 + 1024], rax
 jmp xaltg62_a1_succ
 xaltg62_a1_beta:
 jmp xchain0_n21_α
.Lx67_0:
 .quad .Lx67_0_s
.Lx67_0_s:
 .string "none"
xaltg62_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1016]
 mov qword ptr [r12 + 944], rax
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 952], rax
 mov qword ptr [r12 + 960], 1
jmp xchain0_n20_α
xchain0_n19_β:
jmp xchain0_n21_α
xchain0_n20_α:
bb28_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1048]
 mov qword ptr [r12 + 1048], 1
 mov rax, qword ptr [rip + .Lx69_0]
 mov qword ptr [r12 + 1056], rax
 jmp .Lx69_1
.Lx69_0:
 .quad .Lx69_0_s
.Lx69_0_s:
 .string "integer(\"- 2\") ----> "
.Lx69_1:
# marshal arg1 = nested producer-box slot [r12+944] -> [r12+1064]
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 1064], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 1072], rax
  .section .rodata
  .Lrkfn70: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn70]
 lea rsi, [r12 + 1048]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1032], rax
 mov qword ptr [r12 + 1040], rdx
 cmp eax, 99
 je xchain0_n21_α
 jmp xchain0_n21_α
 xchain0_n20_β:
 jmp xchain0_n21_α
xchain0_n21_α:
# IR_LIT_S
bb29_α:
 mov qword ptr [r12 + 1080], 1
 mov rax, qword ptr [rip + .Lx71_0]
 mov qword ptr [r12 + 1088], rax
 jmp xchain0_n22_α
 xchain0_n21_β:
 jmp xchain0_n24_α
.Lx71_0:
 .quad .Lx71_0_s
.Lx71_0_s:
 .string "integer(\" -    2 \") ----> "
xchain0_n22_α:
xaltg72_a0_start:
bb30_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1152]
 mov qword ptr [r12 + 1152], 1
 mov rax, qword ptr [rip + .Lx73_0]
 mov qword ptr [r12 + 1160], rax
 jmp .Lx73_1
.Lx73_0:
 .quad .Lx73_0_s
.Lx73_0_s:
 .string " -    2 "
.Lx73_1:
  .section .rodata
  .Lcallfn74: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn74]
 lea rsi, [r12 + 1152]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
  .section .rodata
  .Lrkfn75: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn75]
 lea rsi, [r12 + 1136]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1120], rax
 mov qword ptr [r12 + 1128], rdx
 cmp eax, 99
 je xaltg72_a1_start
 jmp xaltg72_a0_succ
 xaltg72_a0_beta:
 jmp xaltg72_a1_start
xaltg72_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 1096], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], 1
jmp xchain0_n23_α
xaltg72_a1_start:
# IR_LIT_S
bb31_α:
 mov qword ptr [r12 + 1168], 1
 mov rax, qword ptr [rip + .Lx77_0]
 mov qword ptr [r12 + 1176], rax
 jmp xaltg72_a1_succ
 xaltg72_a1_beta:
 jmp xchain0_n24_α
.Lx77_0:
 .quad .Lx77_0_s
.Lx77_0_s:
 .string "none"
xaltg72_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1168]
 mov qword ptr [r12 + 1096], rax
 mov rax, qword ptr [r12 + 1176]
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], 1
jmp xchain0_n23_α
xchain0_n22_β:
jmp xchain0_n24_α
xchain0_n23_α:
bb32_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1200]
 mov qword ptr [r12 + 1200], 1
 mov rax, qword ptr [rip + .Lx79_0]
 mov qword ptr [r12 + 1208], rax
 jmp .Lx79_1
.Lx79_0:
 .quad .Lx79_0_s
.Lx79_0_s:
 .string "integer(\" -    2 \") ----> "
.Lx79_1:
# marshal arg1 = nested producer-box slot [r12+1096] -> [r12+1216]
 mov rax, qword ptr [r12 + 1096]
 mov qword ptr [r12 + 1216], rax
 mov rax, qword ptr [r12 + 1104]
 mov qword ptr [r12 + 1224], rax
  .section .rodata
  .Lrkfn80: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn80]
 lea rsi, [r12 + 1200]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], rdx
 cmp eax, 99
 je xchain0_n24_α
 jmp xchain0_n24_α
 xchain0_n23_β:
 jmp xchain0_n24_α
xchain0_n24_α:
# IR_LIT_S
bb33_α:
 mov qword ptr [r12 + 1232], 1
 mov rax, qword ptr [rip + .Lx81_0]
 mov qword ptr [r12 + 1240], rax
 jmp xchain0_n25_α
 xchain0_n24_β:
 jmp proc_p1_ω
.Lx81_0:
 .quad .Lx81_0_s
.Lx81_0_s:
 .string "integer(\"\") ----> "
xchain0_n25_α:
xaltg82_a0_start:
bb34_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1304]
 mov qword ptr [r12 + 1304], 1
 mov rax, qword ptr [rip + .Lx83_0]
 mov qword ptr [r12 + 1312], rax
 jmp .Lx83_1
.Lx83_0:
 .quad .Lx83_0_s
.Lx83_0_s:
 .string ""
.Lx83_1:
  .section .rodata
  .Lcallfn84: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn84]
 lea rsi, [r12 + 1304]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1288], rax
 mov qword ptr [r12 + 1296], rdx
  .section .rodata
  .Lrkfn85: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn85]
 lea rsi, [r12 + 1288]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1272], rax
 mov qword ptr [r12 + 1280], rdx
 cmp eax, 99
 je xaltg82_a1_start
 jmp xaltg82_a0_succ
 xaltg82_a0_beta:
 jmp xaltg82_a1_start
xaltg82_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1272]
 mov qword ptr [r12 + 1248], rax
 mov rax, qword ptr [r12 + 1280]
 mov qword ptr [r12 + 1256], rax
 mov qword ptr [r12 + 1264], 1
jmp xchain0_n26_α
xaltg82_a1_start:
# IR_LIT_S
bb35_α:
 mov qword ptr [r12 + 1320], 1
 mov rax, qword ptr [rip + .Lx87_0]
 mov qword ptr [r12 + 1328], rax
 jmp xaltg82_a1_succ
 xaltg82_a1_beta:
 jmp proc_p1_ω
.Lx87_0:
 .quad .Lx87_0_s
.Lx87_0_s:
 .string "none"
xaltg82_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 1248], rax
 mov rax, qword ptr [r12 + 1328]
 mov qword ptr [r12 + 1256], rax
 mov qword ptr [r12 + 1264], 1
jmp xchain0_n26_α
xchain0_n25_β:
jmp proc_p1_ω
xchain0_n26_α:
bb36_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1352]
 mov qword ptr [r12 + 1352], 1
 mov rax, qword ptr [rip + .Lx89_0]
 mov qword ptr [r12 + 1360], rax
 jmp .Lx89_1
.Lx89_0:
 .quad .Lx89_0_s
.Lx89_0_s:
 .string "integer(\"\") ----> "
.Lx89_1:
# marshal arg1 = nested producer-box slot [r12+1248] -> [r12+1368]
 mov rax, qword ptr [r12 + 1248]
 mov qword ptr [r12 + 1368], rax
 mov rax, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 1376], rax
  .section .rodata
  .Lrkfn90: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn90]
 lea rsi, [r12 + 1352]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1336], rax
 mov qword ptr [r12 + 1344], rdx
 cmp eax, 99
 je proc_p1_ω
 jmp proc_p1_γ
 xchain0_n26_β:
 jmp proc_p1_ω
proc_p1_β:
jmp proc_p1_ω
proc_p1_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_p1_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_p2_α
proc_p2_α:
#=======================================================================================================================
    .global proc_p2_α
    .global proc_p2_β
    .global proc_p2_γ
    .global proc_p2_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_p2_α_body:
xchain91_n0_α:
# IR_LIT_S
bb37_α:
 mov qword ptr [r12 + 16], 1
 mov rax, qword ptr [rip + .Lx92_0]
 mov qword ptr [r12 + 24], rax
 jmp xchain91_n1_α
 xchain91_n0_β:
 jmp xchain91_n3_α
.Lx92_0:
 .quad .Lx92_0_s
.Lx92_0_s:
 .string "integer(\"--2\") ----> "
xchain91_n1_α:
xaltg93_a0_start:
bb38_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+88]
 mov qword ptr [r12 + 88], 1
 mov rax, qword ptr [rip + .Lx94_0]
 mov qword ptr [r12 + 96], rax
 jmp .Lx94_1
.Lx94_0:
 .quad .Lx94_0_s
.Lx94_0_s:
 .string "--2"
.Lx94_1:
  .section .rodata
  .Lcallfn95: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn95]
 lea rsi, [r12 + 88]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 72], rax
 mov qword ptr [r12 + 80], rdx
  .section .rodata
  .Lrkfn96: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn96]
 lea rsi, [r12 + 72]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 56], rax
 mov qword ptr [r12 + 64], rdx
 cmp eax, 99
 je xaltg93_a1_start
 jmp xaltg93_a0_succ
 xaltg93_a0_beta:
 jmp xaltg93_a1_start
xaltg93_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain91_n2_α
xaltg93_a1_start:
# IR_LIT_S
bb39_α:
 mov qword ptr [r12 + 104], 1
 mov rax, qword ptr [rip + .Lx98_0]
 mov qword ptr [r12 + 112], rax
 jmp xaltg93_a1_succ
 xaltg93_a1_beta:
 jmp xchain91_n3_α
.Lx98_0:
 .quad .Lx98_0_s
.Lx98_0_s:
 .string "none"
xaltg93_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain91_n2_α
xchain91_n1_β:
jmp xchain91_n3_α
xchain91_n2_α:
bb40_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+136]
 mov qword ptr [r12 + 136], 1
 mov rax, qword ptr [rip + .Lx100_0]
 mov qword ptr [r12 + 144], rax
 jmp .Lx100_1
.Lx100_0:
 .quad .Lx100_0_s
.Lx100_0_s:
 .string "integer(\"--2\") ----> "
.Lx100_1:
# marshal arg1 = nested producer-box slot [r12+32] -> [r12+152]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 152], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 160], rax
  .section .rodata
  .Lrkfn101: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn101]
 lea rsi, [r12 + 136]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 120], rax
 mov qword ptr [r12 + 128], rdx
 cmp eax, 99
 je xchain91_n3_α
 jmp xchain91_n3_α
 xchain91_n2_β:
 jmp xchain91_n3_α
xchain91_n3_α:
# IR_LIT_S
bb41_α:
 mov qword ptr [r12 + 168], 1
 mov rax, qword ptr [rip + .Lx102_0]
 mov qword ptr [r12 + 176], rax
 jmp xchain91_n4_α
 xchain91_n3_β:
 jmp xchain91_n6_α
.Lx102_0:
 .quad .Lx102_0_s
.Lx102_0_s:
 .string "integer(\" \") ----> "
xchain91_n4_α:
xaltg103_a0_start:
bb42_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+240]
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx104_0]
 mov qword ptr [r12 + 248], rax
 jmp .Lx104_1
.Lx104_0:
 .quad .Lx104_0_s
.Lx104_0_s:
 .string " "
.Lx104_1:
  .section .rodata
  .Lcallfn105: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn105]
 lea rsi, [r12 + 240]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
  .section .rodata
  .Lrkfn106: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn106]
 lea rsi, [r12 + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xaltg103_a1_start
 jmp xaltg103_a0_succ
 xaltg103_a0_beta:
 jmp xaltg103_a1_start
xaltg103_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 184], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], 1
jmp xchain91_n5_α
xaltg103_a1_start:
# IR_LIT_S
bb43_α:
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx108_0]
 mov qword ptr [r12 + 264], rax
 jmp xaltg103_a1_succ
 xaltg103_a1_beta:
 jmp xchain91_n6_α
.Lx108_0:
 .quad .Lx108_0_s
.Lx108_0_s:
 .string "none"
xaltg103_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 184], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], 1
jmp xchain91_n5_α
xchain91_n4_β:
jmp xchain91_n6_α
xchain91_n5_α:
bb44_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+288]
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx110_0]
 mov qword ptr [r12 + 296], rax
 jmp .Lx110_1
.Lx110_0:
 .quad .Lx110_0_s
.Lx110_0_s:
 .string "integer(\" \") ----> "
.Lx110_1:
# marshal arg1 = nested producer-box slot [r12+184] -> [r12+304]
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 312], rax
  .section .rodata
  .Lrkfn111: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn111]
 lea rsi, [r12 + 288]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je xchain91_n6_α
 jmp xchain91_n6_α
 xchain91_n5_β:
 jmp xchain91_n6_α
xchain91_n6_α:
# IR_LIT_S
bb45_α:
 mov qword ptr [r12 + 320], 1
 mov rax, qword ptr [rip + .Lx112_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain91_n7_α
 xchain91_n6_β:
 jmp xchain91_n9_α
.Lx112_0:
 .quad .Lx112_0_s
.Lx112_0_s:
 .string "integer(\"-\") ----> "
xchain91_n7_α:
xaltg113_a0_start:
bb46_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+392]
 mov qword ptr [r12 + 392], 1
 mov rax, qword ptr [rip + .Lx114_0]
 mov qword ptr [r12 + 400], rax
 jmp .Lx114_1
.Lx114_0:
 .quad .Lx114_0_s
.Lx114_0_s:
 .string "-"
.Lx114_1:
  .section .rodata
  .Lcallfn115: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn115]
 lea rsi, [r12 + 392]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 376], rax
 mov qword ptr [r12 + 384], rdx
  .section .rodata
  .Lrkfn116: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn116]
 lea rsi, [r12 + 376]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 360], rax
 mov qword ptr [r12 + 368], rdx
 cmp eax, 99
 je xaltg113_a1_start
 jmp xaltg113_a0_succ
 xaltg113_a0_beta:
 jmp xaltg113_a1_start
xaltg113_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 344], rax
 mov qword ptr [r12 + 352], 1
jmp xchain91_n8_α
xaltg113_a1_start:
# IR_LIT_S
bb47_α:
 mov qword ptr [r12 + 408], 1
 mov rax, qword ptr [rip + .Lx118_0]
 mov qword ptr [r12 + 416], rax
 jmp xaltg113_a1_succ
 xaltg113_a1_beta:
 jmp xchain91_n9_α
.Lx118_0:
 .quad .Lx118_0_s
.Lx118_0_s:
 .string "none"
xaltg113_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 344], rax
 mov qword ptr [r12 + 352], 1
jmp xchain91_n8_α
xchain91_n7_β:
jmp xchain91_n9_α
xchain91_n8_α:
bb48_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+440]
 mov qword ptr [r12 + 440], 1
 mov rax, qword ptr [rip + .Lx120_0]
 mov qword ptr [r12 + 448], rax
 jmp .Lx120_1
.Lx120_0:
 .quad .Lx120_0_s
.Lx120_0_s:
 .string "integer(\"-\") ----> "
.Lx120_1:
# marshal arg1 = nested producer-box slot [r12+336] -> [r12+456]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 456], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 464], rax
  .section .rodata
  .Lrkfn121: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn121]
 lea rsi, [r12 + 440]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 424], rax
 mov qword ptr [r12 + 432], rdx
 cmp eax, 99
 je xchain91_n9_α
 jmp xchain91_n9_α
 xchain91_n8_β:
 jmp xchain91_n9_α
xchain91_n9_α:
# IR_LIT_S
bb49_α:
 mov qword ptr [r12 + 472], 1
 mov rax, qword ptr [rip + .Lx122_0]
 mov qword ptr [r12 + 480], rax
 jmp xchain91_n10_α
 xchain91_n9_β:
 jmp xchain91_n12_α
.Lx122_0:
 .quad .Lx122_0_s
.Lx122_0_s:
 .string "integer(\"+\") ----> "
xchain91_n10_α:
xaltg123_a0_start:
bb50_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+544]
 mov qword ptr [r12 + 544], 1
 mov rax, qword ptr [rip + .Lx124_0]
 mov qword ptr [r12 + 552], rax
 jmp .Lx124_1
.Lx124_0:
 .quad .Lx124_0_s
.Lx124_0_s:
 .string "+"
.Lx124_1:
  .section .rodata
  .Lcallfn125: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn125]
 lea rsi, [r12 + 544]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
  .section .rodata
  .Lrkfn126: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn126]
 lea rsi, [r12 + 528]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je xaltg123_a1_start
 jmp xaltg123_a0_succ
 xaltg123_a0_beta:
 jmp xaltg123_a1_start
xaltg123_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 488], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], 1
jmp xchain91_n11_α
xaltg123_a1_start:
# IR_LIT_S
bb51_α:
 mov qword ptr [r12 + 560], 1
 mov rax, qword ptr [rip + .Lx128_0]
 mov qword ptr [r12 + 568], rax
 jmp xaltg123_a1_succ
 xaltg123_a1_beta:
 jmp xchain91_n12_α
.Lx128_0:
 .quad .Lx128_0_s
.Lx128_0_s:
 .string "none"
xaltg123_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 488], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], 1
jmp xchain91_n11_α
xchain91_n10_β:
jmp xchain91_n12_α
xchain91_n11_α:
bb52_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+592]
 mov qword ptr [r12 + 592], 1
 mov rax, qword ptr [rip + .Lx130_0]
 mov qword ptr [r12 + 600], rax
 jmp .Lx130_1
.Lx130_0:
 .quad .Lx130_0_s
.Lx130_0_s:
 .string "integer(\"+\") ----> "
.Lx130_1:
# marshal arg1 = nested producer-box slot [r12+488] -> [r12+608]
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 616], rax
  .section .rodata
  .Lrkfn131: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn131]
 lea rsi, [r12 + 592]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 cmp eax, 99
 je xchain91_n12_α
 jmp xchain91_n12_α
 xchain91_n11_β:
 jmp xchain91_n12_α
xchain91_n12_α:
# IR_LIT_S
bb53_α:
 mov qword ptr [r12 + 624], 1
 mov rax, qword ptr [rip + .Lx132_0]
 mov qword ptr [r12 + 632], rax
 jmp xchain91_n13_α
 xchain91_n12_β:
 jmp proc_p2_ω
.Lx132_0:
 .quad .Lx132_0_s
.Lx132_0_s:
 .string "integer(\"7r4\") ----> "
xchain91_n13_α:
xaltg133_a0_start:
bb54_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+696]
 mov qword ptr [r12 + 696], 1
 mov rax, qword ptr [rip + .Lx134_0]
 mov qword ptr [r12 + 704], rax
 jmp .Lx134_1
.Lx134_0:
 .quad .Lx134_0_s
.Lx134_0_s:
 .string "7r4"
.Lx134_1:
  .section .rodata
  .Lcallfn135: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn135]
 lea rsi, [r12 + 696]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 680], rax
 mov qword ptr [r12 + 688], rdx
  .section .rodata
  .Lrkfn136: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn136]
 lea rsi, [r12 + 680]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 664], rax
 mov qword ptr [r12 + 672], rdx
 cmp eax, 99
 je xaltg133_a1_start
 jmp xaltg133_a0_succ
 xaltg133_a0_beta:
 jmp xaltg133_a1_start
xaltg133_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 648], rax
 mov qword ptr [r12 + 656], 1
jmp xchain91_n14_α
xaltg133_a1_start:
# IR_LIT_S
bb55_α:
 mov qword ptr [r12 + 712], 1
 mov rax, qword ptr [rip + .Lx138_0]
 mov qword ptr [r12 + 720], rax
 jmp xaltg133_a1_succ
 xaltg133_a1_beta:
 jmp proc_p2_ω
.Lx138_0:
 .quad .Lx138_0_s
.Lx138_0_s:
 .string "none"
xaltg133_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 648], rax
 mov qword ptr [r12 + 656], 1
jmp xchain91_n14_α
xchain91_n13_β:
jmp proc_p2_ω
xchain91_n14_α:
bb56_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+744]
 mov qword ptr [r12 + 744], 1
 mov rax, qword ptr [rip + .Lx140_0]
 mov qword ptr [r12 + 752], rax
 jmp .Lx140_1
.Lx140_0:
 .quad .Lx140_0_s
.Lx140_0_s:
 .string "integer(\"7r4\") ----> "
.Lx140_1:
# marshal arg1 = nested producer-box slot [r12+640] -> [r12+760]
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 760], rax
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 768], rax
  .section .rodata
  .Lrkfn141: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn141]
 lea rsi, [r12 + 744]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 728], rax
 mov qword ptr [r12 + 736], rdx
 cmp eax, 99
 je proc_p2_ω
 jmp proc_p2_γ
 xchain91_n14_β:
 jmp proc_p2_ω
proc_p2_β:
jmp proc_p2_ω
proc_p2_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_p2_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_p3_α
proc_p3_α:
#=======================================================================================================================
    .global proc_p3_α
    .global proc_p3_β
    .global proc_p3_γ
    .global proc_p3_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_p3_α_body:
xchain142_n0_α:
# IR_LIT_S
bb57_α:
 mov qword ptr [r12 + 16], 1
 mov rax, qword ptr [rip + .Lx143_0]
 mov qword ptr [r12 + 24], rax
 jmp xchain142_n1_α
 xchain142_n0_β:
 jmp xchain142_n3_α
.Lx143_0:
 .quad .Lx143_0_s
.Lx143_0_s:
 .string "integer(\"4r7\") ----> "
xchain142_n1_α:
xaltg144_a0_start:
bb58_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+88]
 mov qword ptr [r12 + 88], 1
 mov rax, qword ptr [rip + .Lx145_0]
 mov qword ptr [r12 + 96], rax
 jmp .Lx145_1
.Lx145_0:
 .quad .Lx145_0_s
.Lx145_0_s:
 .string "4r7"
.Lx145_1:
  .section .rodata
  .Lcallfn146: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn146]
 lea rsi, [r12 + 88]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 72], rax
 mov qword ptr [r12 + 80], rdx
  .section .rodata
  .Lrkfn147: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn147]
 lea rsi, [r12 + 72]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 56], rax
 mov qword ptr [r12 + 64], rdx
 cmp eax, 99
 je xaltg144_a1_start
 jmp xaltg144_a0_succ
 xaltg144_a0_beta:
 jmp xaltg144_a1_start
xaltg144_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain142_n2_α
xaltg144_a1_start:
# IR_LIT_S
bb59_α:
 mov qword ptr [r12 + 104], 1
 mov rax, qword ptr [rip + .Lx149_0]
 mov qword ptr [r12 + 112], rax
 jmp xaltg144_a1_succ
 xaltg144_a1_beta:
 jmp xchain142_n3_α
.Lx149_0:
 .quad .Lx149_0_s
.Lx149_0_s:
 .string "none"
xaltg144_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain142_n2_α
xchain142_n1_β:
jmp xchain142_n3_α
xchain142_n2_α:
bb60_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+136]
 mov qword ptr [r12 + 136], 1
 mov rax, qword ptr [rip + .Lx151_0]
 mov qword ptr [r12 + 144], rax
 jmp .Lx151_1
.Lx151_0:
 .quad .Lx151_0_s
.Lx151_0_s:
 .string "integer(\"4r7\") ----> "
.Lx151_1:
# marshal arg1 = nested producer-box slot [r12+32] -> [r12+152]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 152], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 160], rax
  .section .rodata
  .Lrkfn152: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn152]
 lea rsi, [r12 + 136]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 120], rax
 mov qword ptr [r12 + 128], rdx
 cmp eax, 99
 je xchain142_n3_α
 jmp xchain142_n3_α
 xchain142_n2_β:
 jmp xchain142_n3_α
xchain142_n3_α:
# IR_LIT_S
bb61_α:
 mov qword ptr [r12 + 168], 1
 mov rax, qword ptr [rip + .Lx153_0]
 mov qword ptr [r12 + 176], rax
 jmp xchain142_n4_α
 xchain142_n3_β:
 jmp xchain142_n6_α
.Lx153_0:
 .quad .Lx153_0_s
.Lx153_0_s:
 .string "integer(\"4r 7\") ----> "
xchain142_n4_α:
xaltg154_a0_start:
bb62_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+240]
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx155_0]
 mov qword ptr [r12 + 248], rax
 jmp .Lx155_1
.Lx155_0:
 .quad .Lx155_0_s
.Lx155_0_s:
 .string "4r 7"
.Lx155_1:
  .section .rodata
  .Lcallfn156: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn156]
 lea rsi, [r12 + 240]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
  .section .rodata
  .Lrkfn157: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn157]
 lea rsi, [r12 + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xaltg154_a1_start
 jmp xaltg154_a0_succ
 xaltg154_a0_beta:
 jmp xaltg154_a1_start
xaltg154_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 184], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], 1
jmp xchain142_n5_α
xaltg154_a1_start:
# IR_LIT_S
bb63_α:
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx159_0]
 mov qword ptr [r12 + 264], rax
 jmp xaltg154_a1_succ
 xaltg154_a1_beta:
 jmp xchain142_n6_α
.Lx159_0:
 .quad .Lx159_0_s
.Lx159_0_s:
 .string "none"
xaltg154_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 184], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], 1
jmp xchain142_n5_α
xchain142_n4_β:
jmp xchain142_n6_α
xchain142_n5_α:
bb64_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+288]
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx161_0]
 mov qword ptr [r12 + 296], rax
 jmp .Lx161_1
.Lx161_0:
 .quad .Lx161_0_s
.Lx161_0_s:
 .string "integer(\"4r 7\") ----> "
.Lx161_1:
# marshal arg1 = nested producer-box slot [r12+184] -> [r12+304]
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 312], rax
  .section .rodata
  .Lrkfn162: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn162]
 lea rsi, [r12 + 288]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je xchain142_n6_α
 jmp xchain142_n6_α
 xchain142_n5_β:
 jmp xchain142_n6_α
xchain142_n6_α:
# IR_LIT_S
bb65_α:
 mov qword ptr [r12 + 320], 1
 mov rax, qword ptr [rip + .Lx163_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain142_n7_α
 xchain142_n6_β:
 jmp xchain142_n9_α
.Lx163_0:
 .quad .Lx163_0_s
.Lx163_0_s:
 .string "integer(\"7r 4\") ----> "
xchain142_n7_α:
xaltg164_a0_start:
bb66_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+392]
 mov qword ptr [r12 + 392], 1
 mov rax, qword ptr [rip + .Lx165_0]
 mov qword ptr [r12 + 400], rax
 jmp .Lx165_1
.Lx165_0:
 .quad .Lx165_0_s
.Lx165_0_s:
 .string "7r 4"
.Lx165_1:
  .section .rodata
  .Lcallfn166: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn166]
 lea rsi, [r12 + 392]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 376], rax
 mov qword ptr [r12 + 384], rdx
  .section .rodata
  .Lrkfn167: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn167]
 lea rsi, [r12 + 376]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 360], rax
 mov qword ptr [r12 + 368], rdx
 cmp eax, 99
 je xaltg164_a1_start
 jmp xaltg164_a0_succ
 xaltg164_a0_beta:
 jmp xaltg164_a1_start
xaltg164_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 344], rax
 mov qword ptr [r12 + 352], 1
jmp xchain142_n8_α
xaltg164_a1_start:
# IR_LIT_S
bb67_α:
 mov qword ptr [r12 + 408], 1
 mov rax, qword ptr [rip + .Lx169_0]
 mov qword ptr [r12 + 416], rax
 jmp xaltg164_a1_succ
 xaltg164_a1_beta:
 jmp xchain142_n9_α
.Lx169_0:
 .quad .Lx169_0_s
.Lx169_0_s:
 .string "none"
xaltg164_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 344], rax
 mov qword ptr [r12 + 352], 1
jmp xchain142_n8_α
xchain142_n7_β:
jmp xchain142_n9_α
xchain142_n8_α:
bb68_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+440]
 mov qword ptr [r12 + 440], 1
 mov rax, qword ptr [rip + .Lx171_0]
 mov qword ptr [r12 + 448], rax
 jmp .Lx171_1
.Lx171_0:
 .quad .Lx171_0_s
.Lx171_0_s:
 .string "integer(\"7r 4\") ----> "
.Lx171_1:
# marshal arg1 = nested producer-box slot [r12+336] -> [r12+456]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 456], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 464], rax
  .section .rodata
  .Lrkfn172: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn172]
 lea rsi, [r12 + 440]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 424], rax
 mov qword ptr [r12 + 432], rdx
 cmp eax, 99
 je xchain142_n9_α
 jmp xchain142_n9_α
 xchain142_n8_β:
 jmp xchain142_n9_α
xchain142_n9_α:
# IR_LIT_S
bb69_α:
 mov qword ptr [r12 + 472], 1
 mov rax, qword ptr [rip + .Lx173_0]
 mov qword ptr [r12 + 480], rax
 jmp xchain142_n10_α
 xchain142_n9_β:
 jmp xchain142_n12_α
.Lx173_0:
 .quad .Lx173_0_s
.Lx173_0_s:
 .string "integer(\"16rff\") ----> "
xchain142_n10_α:
xaltg174_a0_start:
bb70_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+544]
 mov qword ptr [r12 + 544], 1
 mov rax, qword ptr [rip + .Lx175_0]
 mov qword ptr [r12 + 552], rax
 jmp .Lx175_1
.Lx175_0:
 .quad .Lx175_0_s
.Lx175_0_s:
 .string "16rff"
.Lx175_1:
  .section .rodata
  .Lcallfn176: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn176]
 lea rsi, [r12 + 544]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
  .section .rodata
  .Lrkfn177: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn177]
 lea rsi, [r12 + 528]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je xaltg174_a1_start
 jmp xaltg174_a0_succ
 xaltg174_a0_beta:
 jmp xaltg174_a1_start
xaltg174_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 488], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], 1
jmp xchain142_n11_α
xaltg174_a1_start:
# IR_LIT_S
bb71_α:
 mov qword ptr [r12 + 560], 1
 mov rax, qword ptr [rip + .Lx179_0]
 mov qword ptr [r12 + 568], rax
 jmp xaltg174_a1_succ
 xaltg174_a1_beta:
 jmp xchain142_n12_α
.Lx179_0:
 .quad .Lx179_0_s
.Lx179_0_s:
 .string "none"
xaltg174_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 488], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], 1
jmp xchain142_n11_α
xchain142_n10_β:
jmp xchain142_n12_α
xchain142_n11_α:
bb72_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+592]
 mov qword ptr [r12 + 592], 1
 mov rax, qword ptr [rip + .Lx181_0]
 mov qword ptr [r12 + 600], rax
 jmp .Lx181_1
.Lx181_0:
 .quad .Lx181_0_s
.Lx181_0_s:
 .string "integer(\"16rff\") ----> "
.Lx181_1:
# marshal arg1 = nested producer-box slot [r12+488] -> [r12+608]
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 616], rax
  .section .rodata
  .Lrkfn182: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn182]
 lea rsi, [r12 + 592]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 cmp eax, 99
 je xchain142_n12_α
 jmp xchain142_n12_α
 xchain142_n11_β:
 jmp xchain142_n12_α
xchain142_n12_α:
# IR_LIT_S
bb73_α:
 mov qword ptr [r12 + 624], 1
 mov rax, qword ptr [rip + .Lx183_0]
 mov qword ptr [r12 + 632], rax
 jmp xchain142_n13_α
 xchain142_n12_β:
 jmp xchain142_n15_α
.Lx183_0:
 .quad .Lx183_0_s
.Lx183_0_s:
 .string "integer(\"36rcat\") ----> "
xchain142_n13_α:
xaltg184_a0_start:
bb74_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+696]
 mov qword ptr [r12 + 696], 1
 mov rax, qword ptr [rip + .Lx185_0]
 mov qword ptr [r12 + 704], rax
 jmp .Lx185_1
.Lx185_0:
 .quad .Lx185_0_s
.Lx185_0_s:
 .string "36rcat"
.Lx185_1:
  .section .rodata
  .Lcallfn186: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn186]
 lea rsi, [r12 + 696]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 680], rax
 mov qword ptr [r12 + 688], rdx
  .section .rodata
  .Lrkfn187: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn187]
 lea rsi, [r12 + 680]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 664], rax
 mov qword ptr [r12 + 672], rdx
 cmp eax, 99
 je xaltg184_a1_start
 jmp xaltg184_a0_succ
 xaltg184_a0_beta:
 jmp xaltg184_a1_start
xaltg184_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 648], rax
 mov qword ptr [r12 + 656], 1
jmp xchain142_n14_α
xaltg184_a1_start:
# IR_LIT_S
bb75_α:
 mov qword ptr [r12 + 712], 1
 mov rax, qword ptr [rip + .Lx189_0]
 mov qword ptr [r12 + 720], rax
 jmp xaltg184_a1_succ
 xaltg184_a1_beta:
 jmp xchain142_n15_α
.Lx189_0:
 .quad .Lx189_0_s
.Lx189_0_s:
 .string "none"
xaltg184_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 648], rax
 mov qword ptr [r12 + 656], 1
jmp xchain142_n14_α
xchain142_n13_β:
jmp xchain142_n15_α
xchain142_n14_α:
bb76_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+744]
 mov qword ptr [r12 + 744], 1
 mov rax, qword ptr [rip + .Lx191_0]
 mov qword ptr [r12 + 752], rax
 jmp .Lx191_1
.Lx191_0:
 .quad .Lx191_0_s
.Lx191_0_s:
 .string "integer(\"36rcat\") ----> "
.Lx191_1:
# marshal arg1 = nested producer-box slot [r12+640] -> [r12+760]
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 760], rax
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 768], rax
  .section .rodata
  .Lrkfn192: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn192]
 lea rsi, [r12 + 744]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 728], rax
 mov qword ptr [r12 + 736], rdx
 cmp eax, 99
 je xchain142_n15_α
 jmp xchain142_n15_α
 xchain142_n14_β:
 jmp xchain142_n15_α
xchain142_n15_α:
# IR_LIT_S
bb77_α:
 mov qword ptr [r12 + 776], 1
 mov rax, qword ptr [rip + .Lx193_0]
 mov qword ptr [r12 + 784], rax
 jmp xchain142_n16_α
 xchain142_n15_β:
 jmp xchain142_n18_α
.Lx193_0:
 .quad .Lx193_0_s
.Lx193_0_s:
 .string "integer(\"36Rcat\") ----> "
xchain142_n16_α:
xaltg194_a0_start:
bb78_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+848]
 mov qword ptr [r12 + 848], 1
 mov rax, qword ptr [rip + .Lx195_0]
 mov qword ptr [r12 + 856], rax
 jmp .Lx195_1
.Lx195_0:
 .quad .Lx195_0_s
.Lx195_0_s:
 .string "36Rcat"
.Lx195_1:
  .section .rodata
  .Lcallfn196: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn196]
 lea rsi, [r12 + 848]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
  .section .rodata
  .Lrkfn197: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn197]
 lea rsi, [r12 + 832]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 cmp eax, 99
 je xaltg194_a1_start
 jmp xaltg194_a0_succ
 xaltg194_a0_beta:
 jmp xaltg194_a1_start
xaltg194_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 792], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], 1
jmp xchain142_n17_α
xaltg194_a1_start:
# IR_LIT_S
bb79_α:
 mov qword ptr [r12 + 864], 1
 mov rax, qword ptr [rip + .Lx199_0]
 mov qword ptr [r12 + 872], rax
 jmp xaltg194_a1_succ
 xaltg194_a1_beta:
 jmp xchain142_n18_α
.Lx199_0:
 .quad .Lx199_0_s
.Lx199_0_s:
 .string "none"
xaltg194_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 792], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], 1
jmp xchain142_n17_α
xchain142_n16_β:
jmp xchain142_n18_α
xchain142_n17_α:
bb80_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+896]
 mov qword ptr [r12 + 896], 1
 mov rax, qword ptr [rip + .Lx201_0]
 mov qword ptr [r12 + 904], rax
 jmp .Lx201_1
.Lx201_0:
 .quad .Lx201_0_s
.Lx201_0_s:
 .string "integer(\"36Rcat\") ----> "
.Lx201_1:
# marshal arg1 = nested producer-box slot [r12+792] -> [r12+912]
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 800]
 mov qword ptr [r12 + 920], rax
  .section .rodata
  .Lrkfn202: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn202]
 lea rsi, [r12 + 896]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 cmp eax, 99
 je xchain142_n18_α
 jmp xchain142_n18_α
 xchain142_n17_β:
 jmp xchain142_n18_α
xchain142_n18_α:
# IR_LIT_S
bb81_α:
 mov qword ptr [r12 + 928], 1
 mov rax, qword ptr [rip + .Lx203_0]
 mov qword ptr [r12 + 936], rax
 jmp xchain142_n19_α
 xchain142_n18_β:
 jmp xchain142_n21_α
.Lx203_0:
 .quad .Lx203_0_s
.Lx203_0_s:
 .string "integer(\"36rCAT\") ----> "
xchain142_n19_α:
xaltg204_a0_start:
bb82_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1000]
 mov qword ptr [r12 + 1000], 1
 mov rax, qword ptr [rip + .Lx205_0]
 mov qword ptr [r12 + 1008], rax
 jmp .Lx205_1
.Lx205_0:
 .quad .Lx205_0_s
.Lx205_0_s:
 .string "36rCAT"
.Lx205_1:
  .section .rodata
  .Lcallfn206: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn206]
 lea rsi, [r12 + 1000]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 984], rax
 mov qword ptr [r12 + 992], rdx
  .section .rodata
  .Lrkfn207: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn207]
 lea rsi, [r12 + 984]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 968], rax
 mov qword ptr [r12 + 976], rdx
 cmp eax, 99
 je xaltg204_a1_start
 jmp xaltg204_a0_succ
 xaltg204_a0_beta:
 jmp xaltg204_a1_start
xaltg204_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 968]
 mov qword ptr [r12 + 944], rax
 mov rax, qword ptr [r12 + 976]
 mov qword ptr [r12 + 952], rax
 mov qword ptr [r12 + 960], 1
jmp xchain142_n20_α
xaltg204_a1_start:
# IR_LIT_S
bb83_α:
 mov qword ptr [r12 + 1016], 1
 mov rax, qword ptr [rip + .Lx209_0]
 mov qword ptr [r12 + 1024], rax
 jmp xaltg204_a1_succ
 xaltg204_a1_beta:
 jmp xchain142_n21_α
.Lx209_0:
 .quad .Lx209_0_s
.Lx209_0_s:
 .string "none"
xaltg204_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1016]
 mov qword ptr [r12 + 944], rax
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 952], rax
 mov qword ptr [r12 + 960], 1
jmp xchain142_n20_α
xchain142_n19_β:
jmp xchain142_n21_α
xchain142_n20_α:
bb84_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1048]
 mov qword ptr [r12 + 1048], 1
 mov rax, qword ptr [rip + .Lx211_0]
 mov qword ptr [r12 + 1056], rax
 jmp .Lx211_1
.Lx211_0:
 .quad .Lx211_0_s
.Lx211_0_s:
 .string "integer(\"36rCAT\") ----> "
.Lx211_1:
# marshal arg1 = nested producer-box slot [r12+944] -> [r12+1064]
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 1064], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 1072], rax
  .section .rodata
  .Lrkfn212: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn212]
 lea rsi, [r12 + 1048]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1032], rax
 mov qword ptr [r12 + 1040], rdx
 cmp eax, 99
 je xchain142_n21_α
 jmp xchain142_n21_α
 xchain142_n20_β:
 jmp xchain142_n21_α
xchain142_n21_α:
# IR_LIT_S
bb85_α:
 mov qword ptr [r12 + 1080], 1
 mov rax, qword ptr [rip + .Lx213_0]
 mov qword ptr [r12 + 1088], rax
 jmp xchain142_n22_α
 xchain142_n21_β:
 jmp xchain142_n24_α
.Lx213_0:
 .quad .Lx213_0_s
.Lx213_0_s:
 .string "integer(\"1r1\") ----> "
xchain142_n22_α:
xaltg214_a0_start:
bb86_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1152]
 mov qword ptr [r12 + 1152], 1
 mov rax, qword ptr [rip + .Lx215_0]
 mov qword ptr [r12 + 1160], rax
 jmp .Lx215_1
.Lx215_0:
 .quad .Lx215_0_s
.Lx215_0_s:
 .string "1r1"
.Lx215_1:
  .section .rodata
  .Lcallfn216: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn216]
 lea rsi, [r12 + 1152]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
  .section .rodata
  .Lrkfn217: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn217]
 lea rsi, [r12 + 1136]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1120], rax
 mov qword ptr [r12 + 1128], rdx
 cmp eax, 99
 je xaltg214_a1_start
 jmp xaltg214_a0_succ
 xaltg214_a0_beta:
 jmp xaltg214_a1_start
xaltg214_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 1096], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], 1
jmp xchain142_n23_α
xaltg214_a1_start:
# IR_LIT_S
bb87_α:
 mov qword ptr [r12 + 1168], 1
 mov rax, qword ptr [rip + .Lx219_0]
 mov qword ptr [r12 + 1176], rax
 jmp xaltg214_a1_succ
 xaltg214_a1_beta:
 jmp xchain142_n24_α
.Lx219_0:
 .quad .Lx219_0_s
.Lx219_0_s:
 .string "none"
xaltg214_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1168]
 mov qword ptr [r12 + 1096], rax
 mov rax, qword ptr [r12 + 1176]
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], 1
jmp xchain142_n23_α
xchain142_n22_β:
jmp xchain142_n24_α
xchain142_n23_α:
bb88_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1200]
 mov qword ptr [r12 + 1200], 1
 mov rax, qword ptr [rip + .Lx221_0]
 mov qword ptr [r12 + 1208], rax
 jmp .Lx221_1
.Lx221_0:
 .quad .Lx221_0_s
.Lx221_0_s:
 .string "integer(\"1r1\") ----> "
.Lx221_1:
# marshal arg1 = nested producer-box slot [r12+1096] -> [r12+1216]
 mov rax, qword ptr [r12 + 1096]
 mov qword ptr [r12 + 1216], rax
 mov rax, qword ptr [r12 + 1104]
 mov qword ptr [r12 + 1224], rax
  .section .rodata
  .Lrkfn222: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn222]
 lea rsi, [r12 + 1200]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], rdx
 cmp eax, 99
 je xchain142_n24_α
 jmp xchain142_n24_α
 xchain142_n23_β:
 jmp xchain142_n24_α
xchain142_n24_α:
# IR_LIT_S
bb89_α:
 mov qword ptr [r12 + 1232], 1
 mov rax, qword ptr [rip + .Lx223_0]
 mov qword ptr [r12 + 1240], rax
 jmp xchain142_n25_α
 xchain142_n24_β:
 jmp xchain142_n27_α
.Lx223_0:
 .quad .Lx223_0_s
.Lx223_0_s:
 .string "integer(\"2r0\") ----> "
xchain142_n25_α:
xaltg224_a0_start:
bb90_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1304]
 mov qword ptr [r12 + 1304], 1
 mov rax, qword ptr [rip + .Lx225_0]
 mov qword ptr [r12 + 1312], rax
 jmp .Lx225_1
.Lx225_0:
 .quad .Lx225_0_s
.Lx225_0_s:
 .string "2r0"
.Lx225_1:
  .section .rodata
  .Lcallfn226: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn226]
 lea rsi, [r12 + 1304]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1288], rax
 mov qword ptr [r12 + 1296], rdx
  .section .rodata
  .Lrkfn227: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn227]
 lea rsi, [r12 + 1288]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1272], rax
 mov qword ptr [r12 + 1280], rdx
 cmp eax, 99
 je xaltg224_a1_start
 jmp xaltg224_a0_succ
 xaltg224_a0_beta:
 jmp xaltg224_a1_start
xaltg224_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1272]
 mov qword ptr [r12 + 1248], rax
 mov rax, qword ptr [r12 + 1280]
 mov qword ptr [r12 + 1256], rax
 mov qword ptr [r12 + 1264], 1
jmp xchain142_n26_α
xaltg224_a1_start:
# IR_LIT_S
bb91_α:
 mov qword ptr [r12 + 1320], 1
 mov rax, qword ptr [rip + .Lx229_0]
 mov qword ptr [r12 + 1328], rax
 jmp xaltg224_a1_succ
 xaltg224_a1_beta:
 jmp xchain142_n27_α
.Lx229_0:
 .quad .Lx229_0_s
.Lx229_0_s:
 .string "none"
xaltg224_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 1248], rax
 mov rax, qword ptr [r12 + 1328]
 mov qword ptr [r12 + 1256], rax
 mov qword ptr [r12 + 1264], 1
jmp xchain142_n26_α
xchain142_n25_β:
jmp xchain142_n27_α
xchain142_n26_α:
bb92_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1352]
 mov qword ptr [r12 + 1352], 1
 mov rax, qword ptr [rip + .Lx231_0]
 mov qword ptr [r12 + 1360], rax
 jmp .Lx231_1
.Lx231_0:
 .quad .Lx231_0_s
.Lx231_0_s:
 .string "integer(\"2r0\") ----> "
.Lx231_1:
# marshal arg1 = nested producer-box slot [r12+1248] -> [r12+1368]
 mov rax, qword ptr [r12 + 1248]
 mov qword ptr [r12 + 1368], rax
 mov rax, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 1376], rax
  .section .rodata
  .Lrkfn232: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn232]
 lea rsi, [r12 + 1352]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1336], rax
 mov qword ptr [r12 + 1344], rdx
 cmp eax, 99
 je xchain142_n27_α
 jmp xchain142_n27_α
 xchain142_n26_β:
 jmp xchain142_n27_α
xchain142_n27_α:
# IR_LIT_S
bb93_α:
 mov qword ptr [r12 + 1384], 1
 mov rax, qword ptr [rip + .Lx233_0]
 mov qword ptr [r12 + 1392], rax
 jmp xchain142_n28_α
 xchain142_n27_β:
 jmp xchain142_n30_α
.Lx233_0:
 .quad .Lx233_0_s
.Lx233_0_s:
 .string "integer(integer) ----> "
xchain142_n28_α:
xaltg234_a0_start:
bb94_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+1472] -> [r12+1456]
 mov rax, qword ptr [r12 + 1472]
 mov qword ptr [r12 + 1456], rax
 mov rax, qword ptr [r12 + 1480]
 mov qword ptr [r12 + 1464], rax
  .section .rodata
  .Lcallfn236: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn236]
 lea rsi, [r12 + 1456]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1440], rax
 mov qword ptr [r12 + 1448], rdx
  .section .rodata
  .Lrkfn237: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn237]
 lea rsi, [r12 + 1440]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1424], rax
 mov qword ptr [r12 + 1432], rdx
 cmp eax, 99
 je xaltg234_a1_start
 jmp xaltg234_a0_succ
 xaltg234_a0_beta:
 jmp xaltg234_a1_start
xaltg234_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1424]
 mov qword ptr [r12 + 1400], rax
 mov rax, qword ptr [r12 + 1432]
 mov qword ptr [r12 + 1408], rax
 mov qword ptr [r12 + 1416], 1
jmp xchain142_n29_α
xaltg234_a1_start:
# IR_LIT_S
bb95_α:
 mov qword ptr [r12 + 1488], 1
 mov rax, qword ptr [rip + .Lx239_0]
 mov qword ptr [r12 + 1496], rax
 jmp xaltg234_a1_succ
 xaltg234_a1_beta:
 jmp xchain142_n30_α
.Lx239_0:
 .quad .Lx239_0_s
.Lx239_0_s:
 .string "none"
xaltg234_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1488]
 mov qword ptr [r12 + 1400], rax
 mov rax, qword ptr [r12 + 1496]
 mov qword ptr [r12 + 1408], rax
 mov qword ptr [r12 + 1416], 1
jmp xchain142_n29_α
xchain142_n28_β:
jmp xchain142_n30_α
xchain142_n29_α:
bb96_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1520]
 mov qword ptr [r12 + 1520], 1
 mov rax, qword ptr [rip + .Lx241_0]
 mov qword ptr [r12 + 1528], rax
 jmp .Lx241_1
.Lx241_0:
 .quad .Lx241_0_s
.Lx241_0_s:
 .string "integer(integer) ----> "
.Lx241_1:
# marshal arg1 = nested producer-box slot [r12+1400] -> [r12+1536]
 mov rax, qword ptr [r12 + 1400]
 mov qword ptr [r12 + 1536], rax
 mov rax, qword ptr [r12 + 1408]
 mov qword ptr [r12 + 1544], rax
  .section .rodata
  .Lrkfn242: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn242]
 lea rsi, [r12 + 1520]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1504], rax
 mov qword ptr [r12 + 1512], rdx
 cmp eax, 99
 je xchain142_n30_α
 jmp xchain142_n30_α
 xchain142_n29_β:
 jmp xchain142_n30_α
xchain142_n30_α:
# IR_LIT_S
bb97_α:
 mov qword ptr [r12 + 1552], 1
 mov rax, qword ptr [rip + .Lx243_0]
 mov qword ptr [r12 + 1560], rax
 jmp xchain142_n31_α
 xchain142_n30_β:
 jmp proc_p3_ω
.Lx243_0:
 .quad .Lx243_0_s
.Lx243_0_s:
 .string "integer := abs ----> "
xchain142_n31_α:
xaltg244_a0_start:
bb98_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+1624] -> [r12+1608]
 mov rax, qword ptr [r12 + 1624]
 mov qword ptr [r12 + 1608], rax
 mov rax, qword ptr [r12 + 1632]
 mov qword ptr [r12 + 1616], rax
  .section .rodata
  .Lrkfn246: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn246]
 lea rsi, [r12 + 1608]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1592], rax
 mov qword ptr [r12 + 1600], rdx
 cmp eax, 99
 je xaltg244_a1_start
 jmp xaltg244_a0_succ
 xaltg244_a0_beta:
 jmp xaltg244_a1_start
xaltg244_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1592]
 mov qword ptr [r12 + 1568], rax
 mov rax, qword ptr [r12 + 1600]
 mov qword ptr [r12 + 1576], rax
 mov qword ptr [r12 + 1584], 1
jmp xchain142_n32_α
xaltg244_a1_start:
# IR_LIT_S
bb99_α:
 mov qword ptr [r12 + 1640], 1
 mov rax, qword ptr [rip + .Lx248_0]
 mov qword ptr [r12 + 1648], rax
 jmp xaltg244_a1_succ
 xaltg244_a1_beta:
 jmp proc_p3_ω
.Lx248_0:
 .quad .Lx248_0_s
.Lx248_0_s:
 .string "none"
xaltg244_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1640]
 mov qword ptr [r12 + 1568], rax
 mov rax, qword ptr [r12 + 1648]
 mov qword ptr [r12 + 1576], rax
 mov qword ptr [r12 + 1584], 1
jmp xchain142_n32_α
xchain142_n31_β:
jmp proc_p3_ω
xchain142_n32_α:
bb100_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1672]
 mov qword ptr [r12 + 1672], 1
 mov rax, qword ptr [rip + .Lx250_0]
 mov qword ptr [r12 + 1680], rax
 jmp .Lx250_1
.Lx250_0:
 .quad .Lx250_0_s
.Lx250_0_s:
 .string "integer := abs ----> "
.Lx250_1:
# marshal arg1 = nested producer-box slot [r12+1568] -> [r12+1688]
 mov rax, qword ptr [r12 + 1568]
 mov qword ptr [r12 + 1688], rax
 mov rax, qword ptr [r12 + 1576]
 mov qword ptr [r12 + 1696], rax
  .section .rodata
  .Lrkfn251: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn251]
 lea rsi, [r12 + 1672]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1656], rax
 mov qword ptr [r12 + 1664], rdx
 cmp eax, 99
 je proc_p3_ω
 jmp proc_p3_γ
 xchain142_n32_β:
 jmp proc_p3_ω
proc_p3_β:
jmp proc_p3_ω
proc_p3_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_p3_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_p4_α
proc_p4_α:
#=======================================================================================================================
    .global proc_p4_α
    .global proc_p4_β
    .global proc_p4_γ
    .global proc_p4_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_p4_α_body:
xchain252_n0_α:
# IR_LIT_S
bb101_α:
 mov qword ptr [r12 + 16], 1
 mov rax, qword ptr [rip + .Lx253_0]
 mov qword ptr [r12 + 24], rax
 jmp xchain252_n1_α
 xchain252_n0_β:
 jmp xchain252_n3_α
.Lx253_0:
 .quad .Lx253_0_s
.Lx253_0_s:
 .string "numeric(2) ----> "
xchain252_n1_α:
xaltg254_a0_start:
bb102_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+88]
 mov qword ptr [r12 + 88], 6
 movabs rax, 2
 mov qword ptr [r12 + 96], rax
  .section .rodata
  .Lcallfn256: .string "numeric"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn256]
 lea rsi, [r12 + 88]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 72], rax
 mov qword ptr [r12 + 80], rdx
  .section .rodata
  .Lrkfn257: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn257]
 lea rsi, [r12 + 72]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 56], rax
 mov qword ptr [r12 + 64], rdx
 cmp eax, 99
 je xaltg254_a1_start
 jmp xaltg254_a0_succ
 xaltg254_a0_beta:
 jmp xaltg254_a1_start
xaltg254_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain252_n2_α
xaltg254_a1_start:
# IR_LIT_S
bb103_α:
 mov qword ptr [r12 + 104], 1
 mov rax, qword ptr [rip + .Lx259_0]
 mov qword ptr [r12 + 112], rax
 jmp xaltg254_a1_succ
 xaltg254_a1_beta:
 jmp xchain252_n3_α
.Lx259_0:
 .quad .Lx259_0_s
.Lx259_0_s:
 .string "none"
xaltg254_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain252_n2_α
xchain252_n1_β:
jmp xchain252_n3_α
xchain252_n2_α:
bb104_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+136]
 mov qword ptr [r12 + 136], 1
 mov rax, qword ptr [rip + .Lx261_0]
 mov qword ptr [r12 + 144], rax
 jmp .Lx261_1
.Lx261_0:
 .quad .Lx261_0_s
.Lx261_0_s:
 .string "numeric(2) ----> "
.Lx261_1:
# marshal arg1 = nested producer-box slot [r12+32] -> [r12+152]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 152], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 160], rax
  .section .rodata
  .Lrkfn262: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn262]
 lea rsi, [r12 + 136]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 120], rax
 mov qword ptr [r12 + 128], rdx
 cmp eax, 99
 je xchain252_n3_α
 jmp xchain252_n3_α
 xchain252_n2_β:
 jmp xchain252_n3_α
xchain252_n3_α:
# IR_LIT_S
bb105_α:
 mov qword ptr [r12 + 168], 1
 mov rax, qword ptr [rip + .Lx263_0]
 mov qword ptr [r12 + 176], rax
 jmp xchain252_n4_α
 xchain252_n3_β:
 jmp xchain252_n6_α
.Lx263_0:
 .quad .Lx263_0_s
.Lx263_0_s:
 .string "numeric(\"2\") ----> "
xchain252_n4_α:
xaltg264_a0_start:
bb106_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+240]
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx265_0]
 mov qword ptr [r12 + 248], rax
 jmp .Lx265_1
.Lx265_0:
 .quad .Lx265_0_s
.Lx265_0_s:
 .string "2"
.Lx265_1:
  .section .rodata
  .Lcallfn266: .string "numeric"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn266]
 lea rsi, [r12 + 240]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
  .section .rodata
  .Lrkfn267: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn267]
 lea rsi, [r12 + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xaltg264_a1_start
 jmp xaltg264_a0_succ
 xaltg264_a0_beta:
 jmp xaltg264_a1_start
xaltg264_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 184], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], 1
jmp xchain252_n5_α
xaltg264_a1_start:
# IR_LIT_S
bb107_α:
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx269_0]
 mov qword ptr [r12 + 264], rax
 jmp xaltg264_a1_succ
 xaltg264_a1_beta:
 jmp xchain252_n6_α
.Lx269_0:
 .quad .Lx269_0_s
.Lx269_0_s:
 .string "none"
xaltg264_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 184], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], 1
jmp xchain252_n5_α
xchain252_n4_β:
jmp xchain252_n6_α
xchain252_n5_α:
bb108_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+288]
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx271_0]
 mov qword ptr [r12 + 296], rax
 jmp .Lx271_1
.Lx271_0:
 .quad .Lx271_0_s
.Lx271_0_s:
 .string "numeric(\"2\") ----> "
.Lx271_1:
# marshal arg1 = nested producer-box slot [r12+184] -> [r12+304]
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 312], rax
  .section .rodata
  .Lrkfn272: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn272]
 lea rsi, [r12 + 288]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je xchain252_n6_α
 jmp xchain252_n6_α
 xchain252_n5_β:
 jmp xchain252_n6_α
xchain252_n6_α:
# IR_LIT_S
bb109_α:
 mov qword ptr [r12 + 320], 1
 mov rax, qword ptr [rip + .Lx273_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain252_n7_α
 xchain252_n6_β:
 jmp xchain252_n9_α
.Lx273_0:
 .quad .Lx273_0_s
.Lx273_0_s:
 .string "numeric(\" 2\") ----> "
xchain252_n7_α:
xaltg274_a0_start:
bb110_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+392]
 mov qword ptr [r12 + 392], 1
 mov rax, qword ptr [rip + .Lx275_0]
 mov qword ptr [r12 + 400], rax
 jmp .Lx275_1
.Lx275_0:
 .quad .Lx275_0_s
.Lx275_0_s:
 .string " 2"
.Lx275_1:
  .section .rodata
  .Lcallfn276: .string "numeric"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn276]
 lea rsi, [r12 + 392]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 376], rax
 mov qword ptr [r12 + 384], rdx
  .section .rodata
  .Lrkfn277: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn277]
 lea rsi, [r12 + 376]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 360], rax
 mov qword ptr [r12 + 368], rdx
 cmp eax, 99
 je xaltg274_a1_start
 jmp xaltg274_a0_succ
 xaltg274_a0_beta:
 jmp xaltg274_a1_start
xaltg274_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 344], rax
 mov qword ptr [r12 + 352], 1
jmp xchain252_n8_α
xaltg274_a1_start:
# IR_LIT_S
bb111_α:
 mov qword ptr [r12 + 408], 1
 mov rax, qword ptr [rip + .Lx279_0]
 mov qword ptr [r12 + 416], rax
 jmp xaltg274_a1_succ
 xaltg274_a1_beta:
 jmp xchain252_n9_α
.Lx279_0:
 .quad .Lx279_0_s
.Lx279_0_s:
 .string "none"
xaltg274_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 344], rax
 mov qword ptr [r12 + 352], 1
jmp xchain252_n8_α
xchain252_n7_β:
jmp xchain252_n9_α
xchain252_n8_α:
bb112_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+440]
 mov qword ptr [r12 + 440], 1
 mov rax, qword ptr [rip + .Lx281_0]
 mov qword ptr [r12 + 448], rax
 jmp .Lx281_1
.Lx281_0:
 .quad .Lx281_0_s
.Lx281_0_s:
 .string "numeric(\" 2\") ----> "
.Lx281_1:
# marshal arg1 = nested producer-box slot [r12+336] -> [r12+456]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 456], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 464], rax
  .section .rodata
  .Lrkfn282: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn282]
 lea rsi, [r12 + 440]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 424], rax
 mov qword ptr [r12 + 432], rdx
 cmp eax, 99
 je xchain252_n9_α
 jmp xchain252_n9_α
 xchain252_n8_β:
 jmp xchain252_n9_α
xchain252_n9_α:
# IR_LIT_S
bb113_α:
 mov qword ptr [r12 + 472], 1
 mov rax, qword ptr [rip + .Lx283_0]
 mov qword ptr [r12 + 480], rax
 jmp xchain252_n10_α
 xchain252_n9_β:
 jmp xchain252_n12_α
.Lx283_0:
 .quad .Lx283_0_s
.Lx283_0_s:
 .string "numeric(\"2 \") ----> "
xchain252_n10_α:
xaltg284_a0_start:
bb114_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+544]
 mov qword ptr [r12 + 544], 1
 mov rax, qword ptr [rip + .Lx285_0]
 mov qword ptr [r12 + 552], rax
 jmp .Lx285_1
.Lx285_0:
 .quad .Lx285_0_s
.Lx285_0_s:
 .string "2 "
.Lx285_1:
  .section .rodata
  .Lcallfn286: .string "numeric"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn286]
 lea rsi, [r12 + 544]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
  .section .rodata
  .Lrkfn287: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn287]
 lea rsi, [r12 + 528]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je xaltg284_a1_start
 jmp xaltg284_a0_succ
 xaltg284_a0_beta:
 jmp xaltg284_a1_start
xaltg284_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 488], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], 1
jmp xchain252_n11_α
xaltg284_a1_start:
# IR_LIT_S
bb115_α:
 mov qword ptr [r12 + 560], 1
 mov rax, qword ptr [rip + .Lx289_0]
 mov qword ptr [r12 + 568], rax
 jmp xaltg284_a1_succ
 xaltg284_a1_beta:
 jmp xchain252_n12_α
.Lx289_0:
 .quad .Lx289_0_s
.Lx289_0_s:
 .string "none"
xaltg284_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 488], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], 1
jmp xchain252_n11_α
xchain252_n10_β:
jmp xchain252_n12_α
xchain252_n11_α:
bb116_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+592]
 mov qword ptr [r12 + 592], 1
 mov rax, qword ptr [rip + .Lx291_0]
 mov qword ptr [r12 + 600], rax
 jmp .Lx291_1
.Lx291_0:
 .quad .Lx291_0_s
.Lx291_0_s:
 .string "numeric(\"2 \") ----> "
.Lx291_1:
# marshal arg1 = nested producer-box slot [r12+488] -> [r12+608]
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 616], rax
  .section .rodata
  .Lrkfn292: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn292]
 lea rsi, [r12 + 592]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 cmp eax, 99
 je xchain252_n12_α
 jmp xchain252_n12_α
 xchain252_n11_β:
 jmp xchain252_n12_α
xchain252_n12_α:
# IR_LIT_S
bb117_α:
 mov qword ptr [r12 + 624], 1
 mov rax, qword ptr [rip + .Lx293_0]
 mov qword ptr [r12 + 632], rax
 jmp xchain252_n13_α
 xchain252_n12_β:
 jmp xchain252_n15_α
.Lx293_0:
 .quad .Lx293_0_s
.Lx293_0_s:
 .string "numeric(\"+2\") ----> "
xchain252_n13_α:
xaltg294_a0_start:
bb118_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+696]
 mov qword ptr [r12 + 696], 1
 mov rax, qword ptr [rip + .Lx295_0]
 mov qword ptr [r12 + 704], rax
 jmp .Lx295_1
.Lx295_0:
 .quad .Lx295_0_s
.Lx295_0_s:
 .string "+2"
.Lx295_1:
  .section .rodata
  .Lcallfn296: .string "numeric"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn296]
 lea rsi, [r12 + 696]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 680], rax
 mov qword ptr [r12 + 688], rdx
  .section .rodata
  .Lrkfn297: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn297]
 lea rsi, [r12 + 680]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 664], rax
 mov qword ptr [r12 + 672], rdx
 cmp eax, 99
 je xaltg294_a1_start
 jmp xaltg294_a0_succ
 xaltg294_a0_beta:
 jmp xaltg294_a1_start
xaltg294_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 648], rax
 mov qword ptr [r12 + 656], 1
jmp xchain252_n14_α
xaltg294_a1_start:
# IR_LIT_S
bb119_α:
 mov qword ptr [r12 + 712], 1
 mov rax, qword ptr [rip + .Lx299_0]
 mov qword ptr [r12 + 720], rax
 jmp xaltg294_a1_succ
 xaltg294_a1_beta:
 jmp xchain252_n15_α
.Lx299_0:
 .quad .Lx299_0_s
.Lx299_0_s:
 .string "none"
xaltg294_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 648], rax
 mov qword ptr [r12 + 656], 1
jmp xchain252_n14_α
xchain252_n13_β:
jmp xchain252_n15_α
xchain252_n14_α:
bb120_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+744]
 mov qword ptr [r12 + 744], 1
 mov rax, qword ptr [rip + .Lx301_0]
 mov qword ptr [r12 + 752], rax
 jmp .Lx301_1
.Lx301_0:
 .quad .Lx301_0_s
.Lx301_0_s:
 .string "numeric(\"+2\") ----> "
.Lx301_1:
# marshal arg1 = nested producer-box slot [r12+640] -> [r12+760]
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 760], rax
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 768], rax
  .section .rodata
  .Lrkfn302: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn302]
 lea rsi, [r12 + 744]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 728], rax
 mov qword ptr [r12 + 736], rdx
 cmp eax, 99
 je xchain252_n15_α
 jmp xchain252_n15_α
 xchain252_n14_β:
 jmp xchain252_n15_α
xchain252_n15_α:
# IR_LIT_S
bb121_α:
 mov qword ptr [r12 + 776], 1
 mov rax, qword ptr [rip + .Lx303_0]
 mov qword ptr [r12 + 784], rax
 jmp xchain252_n16_α
 xchain252_n15_β:
 jmp xchain252_n18_α
.Lx303_0:
 .quad .Lx303_0_s
.Lx303_0_s:
 .string "numeric(\"-2\") ----> "
xchain252_n16_α:
xaltg304_a0_start:
bb122_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+848]
 mov qword ptr [r12 + 848], 1
 mov rax, qword ptr [rip + .Lx305_0]
 mov qword ptr [r12 + 856], rax
 jmp .Lx305_1
.Lx305_0:
 .quad .Lx305_0_s
.Lx305_0_s:
 .string "-2"
.Lx305_1:
  .section .rodata
  .Lcallfn306: .string "numeric"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn306]
 lea rsi, [r12 + 848]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
  .section .rodata
  .Lrkfn307: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn307]
 lea rsi, [r12 + 832]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 cmp eax, 99
 je xaltg304_a1_start
 jmp xaltg304_a0_succ
 xaltg304_a0_beta:
 jmp xaltg304_a1_start
xaltg304_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 792], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], 1
jmp xchain252_n17_α
xaltg304_a1_start:
# IR_LIT_S
bb123_α:
 mov qword ptr [r12 + 864], 1
 mov rax, qword ptr [rip + .Lx309_0]
 mov qword ptr [r12 + 872], rax
 jmp xaltg304_a1_succ
 xaltg304_a1_beta:
 jmp xchain252_n18_α
.Lx309_0:
 .quad .Lx309_0_s
.Lx309_0_s:
 .string "none"
xaltg304_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 792], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], 1
jmp xchain252_n17_α
xchain252_n16_β:
jmp xchain252_n18_α
xchain252_n17_α:
bb124_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+896]
 mov qword ptr [r12 + 896], 1
 mov rax, qword ptr [rip + .Lx311_0]
 mov qword ptr [r12 + 904], rax
 jmp .Lx311_1
.Lx311_0:
 .quad .Lx311_0_s
.Lx311_0_s:
 .string "numeric(\"-2\") ----> "
.Lx311_1:
# marshal arg1 = nested producer-box slot [r12+792] -> [r12+912]
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 800]
 mov qword ptr [r12 + 920], rax
  .section .rodata
  .Lrkfn312: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn312]
 lea rsi, [r12 + 896]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 cmp eax, 99
 je xchain252_n18_α
 jmp xchain252_n18_α
 xchain252_n17_β:
 jmp xchain252_n18_α
xchain252_n18_α:
# IR_LIT_S
bb125_α:
 mov qword ptr [r12 + 928], 1
 mov rax, qword ptr [rip + .Lx313_0]
 mov qword ptr [r12 + 936], rax
 jmp xchain252_n19_α
 xchain252_n18_β:
 jmp xchain252_n21_α
.Lx313_0:
 .quad .Lx313_0_s
.Lx313_0_s:
 .string "numeric(\"- 2\") ----> "
xchain252_n19_α:
xaltg314_a0_start:
bb126_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1000]
 mov qword ptr [r12 + 1000], 1
 mov rax, qword ptr [rip + .Lx315_0]
 mov qword ptr [r12 + 1008], rax
 jmp .Lx315_1
.Lx315_0:
 .quad .Lx315_0_s
.Lx315_0_s:
 .string "- 2"
.Lx315_1:
  .section .rodata
  .Lcallfn316: .string "numeric"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn316]
 lea rsi, [r12 + 1000]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 984], rax
 mov qword ptr [r12 + 992], rdx
  .section .rodata
  .Lrkfn317: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn317]
 lea rsi, [r12 + 984]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 968], rax
 mov qword ptr [r12 + 976], rdx
 cmp eax, 99
 je xaltg314_a1_start
 jmp xaltg314_a0_succ
 xaltg314_a0_beta:
 jmp xaltg314_a1_start
xaltg314_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 968]
 mov qword ptr [r12 + 944], rax
 mov rax, qword ptr [r12 + 976]
 mov qword ptr [r12 + 952], rax
 mov qword ptr [r12 + 960], 1
jmp xchain252_n20_α
xaltg314_a1_start:
# IR_LIT_S
bb127_α:
 mov qword ptr [r12 + 1016], 1
 mov rax, qword ptr [rip + .Lx319_0]
 mov qword ptr [r12 + 1024], rax
 jmp xaltg314_a1_succ
 xaltg314_a1_beta:
 jmp xchain252_n21_α
.Lx319_0:
 .quad .Lx319_0_s
.Lx319_0_s:
 .string "none"
xaltg314_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1016]
 mov qword ptr [r12 + 944], rax
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 952], rax
 mov qword ptr [r12 + 960], 1
jmp xchain252_n20_α
xchain252_n19_β:
jmp xchain252_n21_α
xchain252_n20_α:
bb128_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1048]
 mov qword ptr [r12 + 1048], 1
 mov rax, qword ptr [rip + .Lx321_0]
 mov qword ptr [r12 + 1056], rax
 jmp .Lx321_1
.Lx321_0:
 .quad .Lx321_0_s
.Lx321_0_s:
 .string "numeric(\"- 2\") ----> "
.Lx321_1:
# marshal arg1 = nested producer-box slot [r12+944] -> [r12+1064]
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 1064], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 1072], rax
  .section .rodata
  .Lrkfn322: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn322]
 lea rsi, [r12 + 1048]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1032], rax
 mov qword ptr [r12 + 1040], rdx
 cmp eax, 99
 je xchain252_n21_α
 jmp xchain252_n21_α
 xchain252_n20_β:
 jmp xchain252_n21_α
xchain252_n21_α:
# IR_LIT_S
bb129_α:
 mov qword ptr [r12 + 1080], 1
 mov rax, qword ptr [rip + .Lx323_0]
 mov qword ptr [r12 + 1088], rax
 jmp xchain252_n22_α
 xchain252_n21_β:
 jmp xchain252_n24_α
.Lx323_0:
 .quad .Lx323_0_s
.Lx323_0_s:
 .string "numeric(\" -    2 \") ----> "
xchain252_n22_α:
xaltg324_a0_start:
bb130_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1152]
 mov qword ptr [r12 + 1152], 1
 mov rax, qword ptr [rip + .Lx325_0]
 mov qword ptr [r12 + 1160], rax
 jmp .Lx325_1
.Lx325_0:
 .quad .Lx325_0_s
.Lx325_0_s:
 .string " -    2 "
.Lx325_1:
  .section .rodata
  .Lcallfn326: .string "numeric"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn326]
 lea rsi, [r12 + 1152]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
  .section .rodata
  .Lrkfn327: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn327]
 lea rsi, [r12 + 1136]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1120], rax
 mov qword ptr [r12 + 1128], rdx
 cmp eax, 99
 je xaltg324_a1_start
 jmp xaltg324_a0_succ
 xaltg324_a0_beta:
 jmp xaltg324_a1_start
xaltg324_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 1096], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], 1
jmp xchain252_n23_α
xaltg324_a1_start:
# IR_LIT_S
bb131_α:
 mov qword ptr [r12 + 1168], 1
 mov rax, qword ptr [rip + .Lx329_0]
 mov qword ptr [r12 + 1176], rax
 jmp xaltg324_a1_succ
 xaltg324_a1_beta:
 jmp xchain252_n24_α
.Lx329_0:
 .quad .Lx329_0_s
.Lx329_0_s:
 .string "none"
xaltg324_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1168]
 mov qword ptr [r12 + 1096], rax
 mov rax, qword ptr [r12 + 1176]
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], 1
jmp xchain252_n23_α
xchain252_n22_β:
jmp xchain252_n24_α
xchain252_n23_α:
bb132_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1200]
 mov qword ptr [r12 + 1200], 1
 mov rax, qword ptr [rip + .Lx331_0]
 mov qword ptr [r12 + 1208], rax
 jmp .Lx331_1
.Lx331_0:
 .quad .Lx331_0_s
.Lx331_0_s:
 .string "numeric(\" -    2 \") ----> "
.Lx331_1:
# marshal arg1 = nested producer-box slot [r12+1096] -> [r12+1216]
 mov rax, qword ptr [r12 + 1096]
 mov qword ptr [r12 + 1216], rax
 mov rax, qword ptr [r12 + 1104]
 mov qword ptr [r12 + 1224], rax
  .section .rodata
  .Lrkfn332: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn332]
 lea rsi, [r12 + 1200]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], rdx
 cmp eax, 99
 je xchain252_n24_α
 jmp xchain252_n24_α
 xchain252_n23_β:
 jmp xchain252_n24_α
xchain252_n24_α:
# IR_LIT_S
bb133_α:
 mov qword ptr [r12 + 1232], 1
 mov rax, qword ptr [rip + .Lx333_0]
 mov qword ptr [r12 + 1240], rax
 jmp xchain252_n25_α
 xchain252_n24_β:
 jmp proc_p4_ω
.Lx333_0:
 .quad .Lx333_0_s
.Lx333_0_s:
 .string "numeric(\"\") ----> "
xchain252_n25_α:
xaltg334_a0_start:
bb134_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1304]
 mov qword ptr [r12 + 1304], 1
 mov rax, qword ptr [rip + .Lx335_0]
 mov qword ptr [r12 + 1312], rax
 jmp .Lx335_1
.Lx335_0:
 .quad .Lx335_0_s
.Lx335_0_s:
 .string ""
.Lx335_1:
  .section .rodata
  .Lcallfn336: .string "numeric"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn336]
 lea rsi, [r12 + 1304]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1288], rax
 mov qword ptr [r12 + 1296], rdx
  .section .rodata
  .Lrkfn337: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn337]
 lea rsi, [r12 + 1288]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1272], rax
 mov qword ptr [r12 + 1280], rdx
 cmp eax, 99
 je xaltg334_a1_start
 jmp xaltg334_a0_succ
 xaltg334_a0_beta:
 jmp xaltg334_a1_start
xaltg334_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1272]
 mov qword ptr [r12 + 1248], rax
 mov rax, qword ptr [r12 + 1280]
 mov qword ptr [r12 + 1256], rax
 mov qword ptr [r12 + 1264], 1
jmp xchain252_n26_α
xaltg334_a1_start:
# IR_LIT_S
bb135_α:
 mov qword ptr [r12 + 1320], 1
 mov rax, qword ptr [rip + .Lx339_0]
 mov qword ptr [r12 + 1328], rax
 jmp xaltg334_a1_succ
 xaltg334_a1_beta:
 jmp proc_p4_ω
.Lx339_0:
 .quad .Lx339_0_s
.Lx339_0_s:
 .string "none"
xaltg334_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 1248], rax
 mov rax, qword ptr [r12 + 1328]
 mov qword ptr [r12 + 1256], rax
 mov qword ptr [r12 + 1264], 1
jmp xchain252_n26_α
xchain252_n25_β:
jmp proc_p4_ω
xchain252_n26_α:
bb136_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1352]
 mov qword ptr [r12 + 1352], 1
 mov rax, qword ptr [rip + .Lx341_0]
 mov qword ptr [r12 + 1360], rax
 jmp .Lx341_1
.Lx341_0:
 .quad .Lx341_0_s
.Lx341_0_s:
 .string "numeric(\"\") ----> "
.Lx341_1:
# marshal arg1 = nested producer-box slot [r12+1248] -> [r12+1368]
 mov rax, qword ptr [r12 + 1248]
 mov qword ptr [r12 + 1368], rax
 mov rax, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 1376], rax
  .section .rodata
  .Lrkfn342: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn342]
 lea rsi, [r12 + 1352]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1336], rax
 mov qword ptr [r12 + 1344], rdx
 cmp eax, 99
 je proc_p4_ω
 jmp proc_p4_γ
 xchain252_n26_β:
 jmp proc_p4_ω
proc_p4_β:
jmp proc_p4_ω
proc_p4_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_p4_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_p5_α
proc_p5_α:
#=======================================================================================================================
    .global proc_p5_α
    .global proc_p5_β
    .global proc_p5_γ
    .global proc_p5_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_p5_α_body:
xchain343_n0_α:
# IR_LIT_S
bb137_α:
 mov qword ptr [r12 + 16], 1
 mov rax, qword ptr [rip + .Lx344_0]
 mov qword ptr [r12 + 24], rax
 jmp xchain343_n1_α
 xchain343_n0_β:
 jmp xchain343_n3_α
.Lx344_0:
 .quad .Lx344_0_s
.Lx344_0_s:
 .string "numeric(\"--2\") ----> "
xchain343_n1_α:
xaltg345_a0_start:
bb138_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+88]
 mov qword ptr [r12 + 88], 1
 mov rax, qword ptr [rip + .Lx346_0]
 mov qword ptr [r12 + 96], rax
 jmp .Lx346_1
.Lx346_0:
 .quad .Lx346_0_s
.Lx346_0_s:
 .string "--2"
.Lx346_1:
  .section .rodata
  .Lcallfn347: .string "numeric"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn347]
 lea rsi, [r12 + 88]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 72], rax
 mov qword ptr [r12 + 80], rdx
  .section .rodata
  .Lrkfn348: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn348]
 lea rsi, [r12 + 72]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 56], rax
 mov qword ptr [r12 + 64], rdx
 cmp eax, 99
 je xaltg345_a1_start
 jmp xaltg345_a0_succ
 xaltg345_a0_beta:
 jmp xaltg345_a1_start
xaltg345_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain343_n2_α
xaltg345_a1_start:
# IR_LIT_S
bb139_α:
 mov qword ptr [r12 + 104], 1
 mov rax, qword ptr [rip + .Lx350_0]
 mov qword ptr [r12 + 112], rax
 jmp xaltg345_a1_succ
 xaltg345_a1_beta:
 jmp xchain343_n3_α
.Lx350_0:
 .quad .Lx350_0_s
.Lx350_0_s:
 .string "none"
xaltg345_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain343_n2_α
xchain343_n1_β:
jmp xchain343_n3_α
xchain343_n2_α:
bb140_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+136]
 mov qword ptr [r12 + 136], 1
 mov rax, qword ptr [rip + .Lx352_0]
 mov qword ptr [r12 + 144], rax
 jmp .Lx352_1
.Lx352_0:
 .quad .Lx352_0_s
.Lx352_0_s:
 .string "numeric(\"--2\") ----> "
.Lx352_1:
# marshal arg1 = nested producer-box slot [r12+32] -> [r12+152]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 152], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 160], rax
  .section .rodata
  .Lrkfn353: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn353]
 lea rsi, [r12 + 136]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 120], rax
 mov qword ptr [r12 + 128], rdx
 cmp eax, 99
 je xchain343_n3_α
 jmp xchain343_n3_α
 xchain343_n2_β:
 jmp xchain343_n3_α
xchain343_n3_α:
# IR_LIT_S
bb141_α:
 mov qword ptr [r12 + 168], 1
 mov rax, qword ptr [rip + .Lx354_0]
 mov qword ptr [r12 + 176], rax
 jmp xchain343_n4_α
 xchain343_n3_β:
 jmp xchain343_n6_α
.Lx354_0:
 .quad .Lx354_0_s
.Lx354_0_s:
 .string "numeric(\" \") ----> "
xchain343_n4_α:
xaltg355_a0_start:
bb142_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+240]
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx356_0]
 mov qword ptr [r12 + 248], rax
 jmp .Lx356_1
.Lx356_0:
 .quad .Lx356_0_s
.Lx356_0_s:
 .string " "
.Lx356_1:
  .section .rodata
  .Lcallfn357: .string "numeric"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn357]
 lea rsi, [r12 + 240]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
  .section .rodata
  .Lrkfn358: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn358]
 lea rsi, [r12 + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xaltg355_a1_start
 jmp xaltg355_a0_succ
 xaltg355_a0_beta:
 jmp xaltg355_a1_start
xaltg355_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 184], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], 1
jmp xchain343_n5_α
xaltg355_a1_start:
# IR_LIT_S
bb143_α:
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx360_0]
 mov qword ptr [r12 + 264], rax
 jmp xaltg355_a1_succ
 xaltg355_a1_beta:
 jmp xchain343_n6_α
.Lx360_0:
 .quad .Lx360_0_s
.Lx360_0_s:
 .string "none"
xaltg355_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 184], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], 1
jmp xchain343_n5_α
xchain343_n4_β:
jmp xchain343_n6_α
xchain343_n5_α:
bb144_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+288]
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx362_0]
 mov qword ptr [r12 + 296], rax
 jmp .Lx362_1
.Lx362_0:
 .quad .Lx362_0_s
.Lx362_0_s:
 .string "numeric(\" \") ----> "
.Lx362_1:
# marshal arg1 = nested producer-box slot [r12+184] -> [r12+304]
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 312], rax
  .section .rodata
  .Lrkfn363: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn363]
 lea rsi, [r12 + 288]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je xchain343_n6_α
 jmp xchain343_n6_α
 xchain343_n5_β:
 jmp xchain343_n6_α
xchain343_n6_α:
# IR_LIT_S
bb145_α:
 mov qword ptr [r12 + 320], 1
 mov rax, qword ptr [rip + .Lx364_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain343_n7_α
 xchain343_n6_β:
 jmp xchain343_n9_α
.Lx364_0:
 .quad .Lx364_0_s
.Lx364_0_s:
 .string "numeric(\"-\") ----> "
xchain343_n7_α:
xaltg365_a0_start:
bb146_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+392]
 mov qword ptr [r12 + 392], 1
 mov rax, qword ptr [rip + .Lx366_0]
 mov qword ptr [r12 + 400], rax
 jmp .Lx366_1
.Lx366_0:
 .quad .Lx366_0_s
.Lx366_0_s:
 .string "-"
.Lx366_1:
  .section .rodata
  .Lcallfn367: .string "numeric"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn367]
 lea rsi, [r12 + 392]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 376], rax
 mov qword ptr [r12 + 384], rdx
  .section .rodata
  .Lrkfn368: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn368]
 lea rsi, [r12 + 376]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 360], rax
 mov qword ptr [r12 + 368], rdx
 cmp eax, 99
 je xaltg365_a1_start
 jmp xaltg365_a0_succ
 xaltg365_a0_beta:
 jmp xaltg365_a1_start
xaltg365_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 344], rax
 mov qword ptr [r12 + 352], 1
jmp xchain343_n8_α
xaltg365_a1_start:
# IR_LIT_S
bb147_α:
 mov qword ptr [r12 + 408], 1
 mov rax, qword ptr [rip + .Lx370_0]
 mov qword ptr [r12 + 416], rax
 jmp xaltg365_a1_succ
 xaltg365_a1_beta:
 jmp xchain343_n9_α
.Lx370_0:
 .quad .Lx370_0_s
.Lx370_0_s:
 .string "none"
xaltg365_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 344], rax
 mov qword ptr [r12 + 352], 1
jmp xchain343_n8_α
xchain343_n7_β:
jmp xchain343_n9_α
xchain343_n8_α:
bb148_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+440]
 mov qword ptr [r12 + 440], 1
 mov rax, qword ptr [rip + .Lx372_0]
 mov qword ptr [r12 + 448], rax
 jmp .Lx372_1
.Lx372_0:
 .quad .Lx372_0_s
.Lx372_0_s:
 .string "numeric(\"-\") ----> "
.Lx372_1:
# marshal arg1 = nested producer-box slot [r12+336] -> [r12+456]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 456], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 464], rax
  .section .rodata
  .Lrkfn373: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn373]
 lea rsi, [r12 + 440]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 424], rax
 mov qword ptr [r12 + 432], rdx
 cmp eax, 99
 je xchain343_n9_α
 jmp xchain343_n9_α
 xchain343_n8_β:
 jmp xchain343_n9_α
xchain343_n9_α:
# IR_LIT_S
bb149_α:
 mov qword ptr [r12 + 472], 1
 mov rax, qword ptr [rip + .Lx374_0]
 mov qword ptr [r12 + 480], rax
 jmp xchain343_n10_α
 xchain343_n9_β:
 jmp xchain343_n12_α
.Lx374_0:
 .quad .Lx374_0_s
.Lx374_0_s:
 .string "numeric(\"+\") ----> "
xchain343_n10_α:
xaltg375_a0_start:
bb150_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+544]
 mov qword ptr [r12 + 544], 1
 mov rax, qword ptr [rip + .Lx376_0]
 mov qword ptr [r12 + 552], rax
 jmp .Lx376_1
.Lx376_0:
 .quad .Lx376_0_s
.Lx376_0_s:
 .string "+"
.Lx376_1:
  .section .rodata
  .Lcallfn377: .string "numeric"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn377]
 lea rsi, [r12 + 544]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
  .section .rodata
  .Lrkfn378: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn378]
 lea rsi, [r12 + 528]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je xaltg375_a1_start
 jmp xaltg375_a0_succ
 xaltg375_a0_beta:
 jmp xaltg375_a1_start
xaltg375_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 488], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], 1
jmp xchain343_n11_α
xaltg375_a1_start:
# IR_LIT_S
bb151_α:
 mov qword ptr [r12 + 560], 1
 mov rax, qword ptr [rip + .Lx380_0]
 mov qword ptr [r12 + 568], rax
 jmp xaltg375_a1_succ
 xaltg375_a1_beta:
 jmp xchain343_n12_α
.Lx380_0:
 .quad .Lx380_0_s
.Lx380_0_s:
 .string "none"
xaltg375_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 488], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], 1
jmp xchain343_n11_α
xchain343_n10_β:
jmp xchain343_n12_α
xchain343_n11_α:
bb152_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+592]
 mov qword ptr [r12 + 592], 1
 mov rax, qword ptr [rip + .Lx382_0]
 mov qword ptr [r12 + 600], rax
 jmp .Lx382_1
.Lx382_0:
 .quad .Lx382_0_s
.Lx382_0_s:
 .string "numeric(\"+\") ----> "
.Lx382_1:
# marshal arg1 = nested producer-box slot [r12+488] -> [r12+608]
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 616], rax
  .section .rodata
  .Lrkfn383: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn383]
 lea rsi, [r12 + 592]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 cmp eax, 99
 je xchain343_n12_α
 jmp xchain343_n12_α
 xchain343_n11_β:
 jmp xchain343_n12_α
xchain343_n12_α:
# IR_LIT_S
bb153_α:
 mov qword ptr [r12 + 624], 1
 mov rax, qword ptr [rip + .Lx384_0]
 mov qword ptr [r12 + 632], rax
 jmp xchain343_n13_α
 xchain343_n12_β:
 jmp proc_p5_ω
.Lx384_0:
 .quad .Lx384_0_s
.Lx384_0_s:
 .string "numeric(\"7r4\") ----> "
xchain343_n13_α:
xaltg385_a0_start:
bb154_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+696]
 mov qword ptr [r12 + 696], 1
 mov rax, qword ptr [rip + .Lx386_0]
 mov qword ptr [r12 + 704], rax
 jmp .Lx386_1
.Lx386_0:
 .quad .Lx386_0_s
.Lx386_0_s:
 .string "7r4"
.Lx386_1:
  .section .rodata
  .Lcallfn387: .string "numeric"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn387]
 lea rsi, [r12 + 696]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 680], rax
 mov qword ptr [r12 + 688], rdx
  .section .rodata
  .Lrkfn388: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn388]
 lea rsi, [r12 + 680]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 664], rax
 mov qword ptr [r12 + 672], rdx
 cmp eax, 99
 je xaltg385_a1_start
 jmp xaltg385_a0_succ
 xaltg385_a0_beta:
 jmp xaltg385_a1_start
xaltg385_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 648], rax
 mov qword ptr [r12 + 656], 1
jmp xchain343_n14_α
xaltg385_a1_start:
# IR_LIT_S
bb155_α:
 mov qword ptr [r12 + 712], 1
 mov rax, qword ptr [rip + .Lx390_0]
 mov qword ptr [r12 + 720], rax
 jmp xaltg385_a1_succ
 xaltg385_a1_beta:
 jmp proc_p5_ω
.Lx390_0:
 .quad .Lx390_0_s
.Lx390_0_s:
 .string "none"
xaltg385_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 648], rax
 mov qword ptr [r12 + 656], 1
jmp xchain343_n14_α
xchain343_n13_β:
jmp proc_p5_ω
xchain343_n14_α:
bb156_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+744]
 mov qword ptr [r12 + 744], 1
 mov rax, qword ptr [rip + .Lx392_0]
 mov qword ptr [r12 + 752], rax
 jmp .Lx392_1
.Lx392_0:
 .quad .Lx392_0_s
.Lx392_0_s:
 .string "numeric(\"7r4\") ----> "
.Lx392_1:
# marshal arg1 = nested producer-box slot [r12+640] -> [r12+760]
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 760], rax
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 768], rax
  .section .rodata
  .Lrkfn393: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn393]
 lea rsi, [r12 + 744]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 728], rax
 mov qword ptr [r12 + 736], rdx
 cmp eax, 99
 je proc_p5_ω
 jmp proc_p5_γ
 xchain343_n14_β:
 jmp proc_p5_ω
proc_p5_β:
jmp proc_p5_ω
proc_p5_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_p5_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_p6_α
proc_p6_α:
#=======================================================================================================================
    .global proc_p6_α
    .global proc_p6_β
    .global proc_p6_γ
    .global proc_p6_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_p6_α_body:
xchain394_n0_α:
# IR_LIT_S
bb157_α:
 mov qword ptr [r12 + 16], 1
 mov rax, qword ptr [rip + .Lx395_0]
 mov qword ptr [r12 + 24], rax
 jmp xchain394_n1_α
 xchain394_n0_β:
 jmp xchain394_n3_α
.Lx395_0:
 .quad .Lx395_0_s
.Lx395_0_s:
 .string "numeric(\"4r7\") ----> "
xchain394_n1_α:
xaltg396_a0_start:
bb158_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+88]
 mov qword ptr [r12 + 88], 1
 mov rax, qword ptr [rip + .Lx397_0]
 mov qword ptr [r12 + 96], rax
 jmp .Lx397_1
.Lx397_0:
 .quad .Lx397_0_s
.Lx397_0_s:
 .string "4r7"
.Lx397_1:
  .section .rodata
  .Lcallfn398: .string "numeric"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn398]
 lea rsi, [r12 + 88]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 72], rax
 mov qword ptr [r12 + 80], rdx
  .section .rodata
  .Lrkfn399: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn399]
 lea rsi, [r12 + 72]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 56], rax
 mov qword ptr [r12 + 64], rdx
 cmp eax, 99
 je xaltg396_a1_start
 jmp xaltg396_a0_succ
 xaltg396_a0_beta:
 jmp xaltg396_a1_start
xaltg396_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain394_n2_α
xaltg396_a1_start:
# IR_LIT_S
bb159_α:
 mov qword ptr [r12 + 104], 1
 mov rax, qword ptr [rip + .Lx401_0]
 mov qword ptr [r12 + 112], rax
 jmp xaltg396_a1_succ
 xaltg396_a1_beta:
 jmp xchain394_n3_α
.Lx401_0:
 .quad .Lx401_0_s
.Lx401_0_s:
 .string "none"
xaltg396_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain394_n2_α
xchain394_n1_β:
jmp xchain394_n3_α
xchain394_n2_α:
bb160_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+136]
 mov qword ptr [r12 + 136], 1
 mov rax, qword ptr [rip + .Lx403_0]
 mov qword ptr [r12 + 144], rax
 jmp .Lx403_1
.Lx403_0:
 .quad .Lx403_0_s
.Lx403_0_s:
 .string "numeric(\"4r7\") ----> "
.Lx403_1:
# marshal arg1 = nested producer-box slot [r12+32] -> [r12+152]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 152], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 160], rax
  .section .rodata
  .Lrkfn404: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn404]
 lea rsi, [r12 + 136]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 120], rax
 mov qword ptr [r12 + 128], rdx
 cmp eax, 99
 je xchain394_n3_α
 jmp xchain394_n3_α
 xchain394_n2_β:
 jmp xchain394_n3_α
xchain394_n3_α:
# IR_LIT_S
bb161_α:
 mov qword ptr [r12 + 168], 1
 mov rax, qword ptr [rip + .Lx405_0]
 mov qword ptr [r12 + 176], rax
 jmp xchain394_n4_α
 xchain394_n3_β:
 jmp xchain394_n6_α
.Lx405_0:
 .quad .Lx405_0_s
.Lx405_0_s:
 .string "numeric(\"4r 7\") ----> "
xchain394_n4_α:
xaltg406_a0_start:
bb162_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+240]
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx407_0]
 mov qword ptr [r12 + 248], rax
 jmp .Lx407_1
.Lx407_0:
 .quad .Lx407_0_s
.Lx407_0_s:
 .string "4r 7"
.Lx407_1:
  .section .rodata
  .Lcallfn408: .string "numeric"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn408]
 lea rsi, [r12 + 240]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
  .section .rodata
  .Lrkfn409: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn409]
 lea rsi, [r12 + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xaltg406_a1_start
 jmp xaltg406_a0_succ
 xaltg406_a0_beta:
 jmp xaltg406_a1_start
xaltg406_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 184], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], 1
jmp xchain394_n5_α
xaltg406_a1_start:
# IR_LIT_S
bb163_α:
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx411_0]
 mov qword ptr [r12 + 264], rax
 jmp xaltg406_a1_succ
 xaltg406_a1_beta:
 jmp xchain394_n6_α
.Lx411_0:
 .quad .Lx411_0_s
.Lx411_0_s:
 .string "none"
xaltg406_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 184], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], 1
jmp xchain394_n5_α
xchain394_n4_β:
jmp xchain394_n6_α
xchain394_n5_α:
bb164_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+288]
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx413_0]
 mov qword ptr [r12 + 296], rax
 jmp .Lx413_1
.Lx413_0:
 .quad .Lx413_0_s
.Lx413_0_s:
 .string "numeric(\"4r 7\") ----> "
.Lx413_1:
# marshal arg1 = nested producer-box slot [r12+184] -> [r12+304]
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 312], rax
  .section .rodata
  .Lrkfn414: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn414]
 lea rsi, [r12 + 288]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je xchain394_n6_α
 jmp xchain394_n6_α
 xchain394_n5_β:
 jmp xchain394_n6_α
xchain394_n6_α:
# IR_LIT_S
bb165_α:
 mov qword ptr [r12 + 320], 1
 mov rax, qword ptr [rip + .Lx415_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain394_n7_α
 xchain394_n6_β:
 jmp xchain394_n9_α
.Lx415_0:
 .quad .Lx415_0_s
.Lx415_0_s:
 .string "numeric(\"7r 4\") ----> "
xchain394_n7_α:
xaltg416_a0_start:
bb166_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+392]
 mov qword ptr [r12 + 392], 1
 mov rax, qword ptr [rip + .Lx417_0]
 mov qword ptr [r12 + 400], rax
 jmp .Lx417_1
.Lx417_0:
 .quad .Lx417_0_s
.Lx417_0_s:
 .string "7r 4"
.Lx417_1:
  .section .rodata
  .Lcallfn418: .string "numeric"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn418]
 lea rsi, [r12 + 392]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 376], rax
 mov qword ptr [r12 + 384], rdx
  .section .rodata
  .Lrkfn419: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn419]
 lea rsi, [r12 + 376]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 360], rax
 mov qword ptr [r12 + 368], rdx
 cmp eax, 99
 je xaltg416_a1_start
 jmp xaltg416_a0_succ
 xaltg416_a0_beta:
 jmp xaltg416_a1_start
xaltg416_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 344], rax
 mov qword ptr [r12 + 352], 1
jmp xchain394_n8_α
xaltg416_a1_start:
# IR_LIT_S
bb167_α:
 mov qword ptr [r12 + 408], 1
 mov rax, qword ptr [rip + .Lx421_0]
 mov qword ptr [r12 + 416], rax
 jmp xaltg416_a1_succ
 xaltg416_a1_beta:
 jmp xchain394_n9_α
.Lx421_0:
 .quad .Lx421_0_s
.Lx421_0_s:
 .string "none"
xaltg416_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 344], rax
 mov qword ptr [r12 + 352], 1
jmp xchain394_n8_α
xchain394_n7_β:
jmp xchain394_n9_α
xchain394_n8_α:
bb168_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+440]
 mov qword ptr [r12 + 440], 1
 mov rax, qword ptr [rip + .Lx423_0]
 mov qword ptr [r12 + 448], rax
 jmp .Lx423_1
.Lx423_0:
 .quad .Lx423_0_s
.Lx423_0_s:
 .string "numeric(\"7r 4\") ----> "
.Lx423_1:
# marshal arg1 = nested producer-box slot [r12+336] -> [r12+456]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 456], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 464], rax
  .section .rodata
  .Lrkfn424: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn424]
 lea rsi, [r12 + 440]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 424], rax
 mov qword ptr [r12 + 432], rdx
 cmp eax, 99
 je xchain394_n9_α
 jmp xchain394_n9_α
 xchain394_n8_β:
 jmp xchain394_n9_α
xchain394_n9_α:
# IR_LIT_S
bb169_α:
 mov qword ptr [r12 + 472], 1
 mov rax, qword ptr [rip + .Lx425_0]
 mov qword ptr [r12 + 480], rax
 jmp xchain394_n10_α
 xchain394_n9_β:
 jmp xchain394_n12_α
.Lx425_0:
 .quad .Lx425_0_s
.Lx425_0_s:
 .string "numeric(\"16rff\") ----> "
xchain394_n10_α:
xaltg426_a0_start:
bb170_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+544]
 mov qword ptr [r12 + 544], 1
 mov rax, qword ptr [rip + .Lx427_0]
 mov qword ptr [r12 + 552], rax
 jmp .Lx427_1
.Lx427_0:
 .quad .Lx427_0_s
.Lx427_0_s:
 .string "16rff"
.Lx427_1:
  .section .rodata
  .Lcallfn428: .string "numeric"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn428]
 lea rsi, [r12 + 544]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
  .section .rodata
  .Lrkfn429: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn429]
 lea rsi, [r12 + 528]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je xaltg426_a1_start
 jmp xaltg426_a0_succ
 xaltg426_a0_beta:
 jmp xaltg426_a1_start
xaltg426_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 488], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], 1
jmp xchain394_n11_α
xaltg426_a1_start:
# IR_LIT_S
bb171_α:
 mov qword ptr [r12 + 560], 1
 mov rax, qword ptr [rip + .Lx431_0]
 mov qword ptr [r12 + 568], rax
 jmp xaltg426_a1_succ
 xaltg426_a1_beta:
 jmp xchain394_n12_α
.Lx431_0:
 .quad .Lx431_0_s
.Lx431_0_s:
 .string "none"
xaltg426_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 488], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], 1
jmp xchain394_n11_α
xchain394_n10_β:
jmp xchain394_n12_α
xchain394_n11_α:
bb172_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+592]
 mov qword ptr [r12 + 592], 1
 mov rax, qword ptr [rip + .Lx433_0]
 mov qword ptr [r12 + 600], rax
 jmp .Lx433_1
.Lx433_0:
 .quad .Lx433_0_s
.Lx433_0_s:
 .string "numeric(\"16rff\") ----> "
.Lx433_1:
# marshal arg1 = nested producer-box slot [r12+488] -> [r12+608]
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 616], rax
  .section .rodata
  .Lrkfn434: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn434]
 lea rsi, [r12 + 592]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 cmp eax, 99
 je xchain394_n12_α
 jmp xchain394_n12_α
 xchain394_n11_β:
 jmp xchain394_n12_α
xchain394_n12_α:
# IR_LIT_S
bb173_α:
 mov qword ptr [r12 + 624], 1
 mov rax, qword ptr [rip + .Lx435_0]
 mov qword ptr [r12 + 632], rax
 jmp xchain394_n13_α
 xchain394_n12_β:
 jmp xchain394_n15_α
.Lx435_0:
 .quad .Lx435_0_s
.Lx435_0_s:
 .string "numeric(\"36rcat\") ----> "
xchain394_n13_α:
xaltg436_a0_start:
bb174_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+696]
 mov qword ptr [r12 + 696], 1
 mov rax, qword ptr [rip + .Lx437_0]
 mov qword ptr [r12 + 704], rax
 jmp .Lx437_1
.Lx437_0:
 .quad .Lx437_0_s
.Lx437_0_s:
 .string "36rcat"
.Lx437_1:
  .section .rodata
  .Lcallfn438: .string "numeric"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn438]
 lea rsi, [r12 + 696]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 680], rax
 mov qword ptr [r12 + 688], rdx
  .section .rodata
  .Lrkfn439: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn439]
 lea rsi, [r12 + 680]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 664], rax
 mov qword ptr [r12 + 672], rdx
 cmp eax, 99
 je xaltg436_a1_start
 jmp xaltg436_a0_succ
 xaltg436_a0_beta:
 jmp xaltg436_a1_start
xaltg436_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 648], rax
 mov qword ptr [r12 + 656], 1
jmp xchain394_n14_α
xaltg436_a1_start:
# IR_LIT_S
bb175_α:
 mov qword ptr [r12 + 712], 1
 mov rax, qword ptr [rip + .Lx441_0]
 mov qword ptr [r12 + 720], rax
 jmp xaltg436_a1_succ
 xaltg436_a1_beta:
 jmp xchain394_n15_α
.Lx441_0:
 .quad .Lx441_0_s
.Lx441_0_s:
 .string "none"
xaltg436_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 648], rax
 mov qword ptr [r12 + 656], 1
jmp xchain394_n14_α
xchain394_n13_β:
jmp xchain394_n15_α
xchain394_n14_α:
bb176_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+744]
 mov qword ptr [r12 + 744], 1
 mov rax, qword ptr [rip + .Lx443_0]
 mov qword ptr [r12 + 752], rax
 jmp .Lx443_1
.Lx443_0:
 .quad .Lx443_0_s
.Lx443_0_s:
 .string "numeric(\"36rcat\") ----> "
.Lx443_1:
# marshal arg1 = nested producer-box slot [r12+640] -> [r12+760]
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 760], rax
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 768], rax
  .section .rodata
  .Lrkfn444: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn444]
 lea rsi, [r12 + 744]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 728], rax
 mov qword ptr [r12 + 736], rdx
 cmp eax, 99
 je xchain394_n15_α
 jmp xchain394_n15_α
 xchain394_n14_β:
 jmp xchain394_n15_α
xchain394_n15_α:
# IR_LIT_S
bb177_α:
 mov qword ptr [r12 + 776], 1
 mov rax, qword ptr [rip + .Lx445_0]
 mov qword ptr [r12 + 784], rax
 jmp xchain394_n16_α
 xchain394_n15_β:
 jmp xchain394_n18_α
.Lx445_0:
 .quad .Lx445_0_s
.Lx445_0_s:
 .string "numeric(\"36Rcat\") ----> "
xchain394_n16_α:
xaltg446_a0_start:
bb178_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+848]
 mov qword ptr [r12 + 848], 1
 mov rax, qword ptr [rip + .Lx447_0]
 mov qword ptr [r12 + 856], rax
 jmp .Lx447_1
.Lx447_0:
 .quad .Lx447_0_s
.Lx447_0_s:
 .string "36Rcat"
.Lx447_1:
  .section .rodata
  .Lcallfn448: .string "numeric"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn448]
 lea rsi, [r12 + 848]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
  .section .rodata
  .Lrkfn449: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn449]
 lea rsi, [r12 + 832]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 cmp eax, 99
 je xaltg446_a1_start
 jmp xaltg446_a0_succ
 xaltg446_a0_beta:
 jmp xaltg446_a1_start
xaltg446_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 792], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], 1
jmp xchain394_n17_α
xaltg446_a1_start:
# IR_LIT_S
bb179_α:
 mov qword ptr [r12 + 864], 1
 mov rax, qword ptr [rip + .Lx451_0]
 mov qword ptr [r12 + 872], rax
 jmp xaltg446_a1_succ
 xaltg446_a1_beta:
 jmp xchain394_n18_α
.Lx451_0:
 .quad .Lx451_0_s
.Lx451_0_s:
 .string "none"
xaltg446_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 792], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], 1
jmp xchain394_n17_α
xchain394_n16_β:
jmp xchain394_n18_α
xchain394_n17_α:
bb180_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+896]
 mov qword ptr [r12 + 896], 1
 mov rax, qword ptr [rip + .Lx453_0]
 mov qword ptr [r12 + 904], rax
 jmp .Lx453_1
.Lx453_0:
 .quad .Lx453_0_s
.Lx453_0_s:
 .string "numeric(\"36Rcat\") ----> "
.Lx453_1:
# marshal arg1 = nested producer-box slot [r12+792] -> [r12+912]
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 800]
 mov qword ptr [r12 + 920], rax
  .section .rodata
  .Lrkfn454: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn454]
 lea rsi, [r12 + 896]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 cmp eax, 99
 je xchain394_n18_α
 jmp xchain394_n18_α
 xchain394_n17_β:
 jmp xchain394_n18_α
xchain394_n18_α:
# IR_LIT_S
bb181_α:
 mov qword ptr [r12 + 928], 1
 mov rax, qword ptr [rip + .Lx455_0]
 mov qword ptr [r12 + 936], rax
 jmp xchain394_n19_α
 xchain394_n18_β:
 jmp xchain394_n21_α
.Lx455_0:
 .quad .Lx455_0_s
.Lx455_0_s:
 .string "numeric(\"36rCAT\") ----> "
xchain394_n19_α:
xaltg456_a0_start:
bb182_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1000]
 mov qword ptr [r12 + 1000], 1
 mov rax, qword ptr [rip + .Lx457_0]
 mov qword ptr [r12 + 1008], rax
 jmp .Lx457_1
.Lx457_0:
 .quad .Lx457_0_s
.Lx457_0_s:
 .string "36rCAT"
.Lx457_1:
  .section .rodata
  .Lcallfn458: .string "numeric"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn458]
 lea rsi, [r12 + 1000]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 984], rax
 mov qword ptr [r12 + 992], rdx
  .section .rodata
  .Lrkfn459: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn459]
 lea rsi, [r12 + 984]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 968], rax
 mov qword ptr [r12 + 976], rdx
 cmp eax, 99
 je xaltg456_a1_start
 jmp xaltg456_a0_succ
 xaltg456_a0_beta:
 jmp xaltg456_a1_start
xaltg456_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 968]
 mov qword ptr [r12 + 944], rax
 mov rax, qword ptr [r12 + 976]
 mov qword ptr [r12 + 952], rax
 mov qword ptr [r12 + 960], 1
jmp xchain394_n20_α
xaltg456_a1_start:
# IR_LIT_S
bb183_α:
 mov qword ptr [r12 + 1016], 1
 mov rax, qword ptr [rip + .Lx461_0]
 mov qword ptr [r12 + 1024], rax
 jmp xaltg456_a1_succ
 xaltg456_a1_beta:
 jmp xchain394_n21_α
.Lx461_0:
 .quad .Lx461_0_s
.Lx461_0_s:
 .string "none"
xaltg456_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1016]
 mov qword ptr [r12 + 944], rax
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 952], rax
 mov qword ptr [r12 + 960], 1
jmp xchain394_n20_α
xchain394_n19_β:
jmp xchain394_n21_α
xchain394_n20_α:
bb184_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1048]
 mov qword ptr [r12 + 1048], 1
 mov rax, qword ptr [rip + .Lx463_0]
 mov qword ptr [r12 + 1056], rax
 jmp .Lx463_1
.Lx463_0:
 .quad .Lx463_0_s
.Lx463_0_s:
 .string "numeric(\"36rCAT\") ----> "
.Lx463_1:
# marshal arg1 = nested producer-box slot [r12+944] -> [r12+1064]
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 1064], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 1072], rax
  .section .rodata
  .Lrkfn464: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn464]
 lea rsi, [r12 + 1048]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1032], rax
 mov qword ptr [r12 + 1040], rdx
 cmp eax, 99
 je xchain394_n21_α
 jmp xchain394_n21_α
 xchain394_n20_β:
 jmp xchain394_n21_α
xchain394_n21_α:
# IR_LIT_S
bb185_α:
 mov qword ptr [r12 + 1080], 1
 mov rax, qword ptr [rip + .Lx465_0]
 mov qword ptr [r12 + 1088], rax
 jmp xchain394_n22_α
 xchain394_n21_β:
 jmp xchain394_n24_α
.Lx465_0:
 .quad .Lx465_0_s
.Lx465_0_s:
 .string "numeric(\"1r1\") ----> "
xchain394_n22_α:
xaltg466_a0_start:
bb186_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1152]
 mov qword ptr [r12 + 1152], 1
 mov rax, qword ptr [rip + .Lx467_0]
 mov qword ptr [r12 + 1160], rax
 jmp .Lx467_1
.Lx467_0:
 .quad .Lx467_0_s
.Lx467_0_s:
 .string "1r1"
.Lx467_1:
  .section .rodata
  .Lcallfn468: .string "numeric"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn468]
 lea rsi, [r12 + 1152]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
  .section .rodata
  .Lrkfn469: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn469]
 lea rsi, [r12 + 1136]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1120], rax
 mov qword ptr [r12 + 1128], rdx
 cmp eax, 99
 je xaltg466_a1_start
 jmp xaltg466_a0_succ
 xaltg466_a0_beta:
 jmp xaltg466_a1_start
xaltg466_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 1096], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], 1
jmp xchain394_n23_α
xaltg466_a1_start:
# IR_LIT_S
bb187_α:
 mov qword ptr [r12 + 1168], 1
 mov rax, qword ptr [rip + .Lx471_0]
 mov qword ptr [r12 + 1176], rax
 jmp xaltg466_a1_succ
 xaltg466_a1_beta:
 jmp xchain394_n24_α
.Lx471_0:
 .quad .Lx471_0_s
.Lx471_0_s:
 .string "none"
xaltg466_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1168]
 mov qword ptr [r12 + 1096], rax
 mov rax, qword ptr [r12 + 1176]
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], 1
jmp xchain394_n23_α
xchain394_n22_β:
jmp xchain394_n24_α
xchain394_n23_α:
bb188_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1200]
 mov qword ptr [r12 + 1200], 1
 mov rax, qword ptr [rip + .Lx473_0]
 mov qword ptr [r12 + 1208], rax
 jmp .Lx473_1
.Lx473_0:
 .quad .Lx473_0_s
.Lx473_0_s:
 .string "numeric(\"1r1\") ----> "
.Lx473_1:
# marshal arg1 = nested producer-box slot [r12+1096] -> [r12+1216]
 mov rax, qword ptr [r12 + 1096]
 mov qword ptr [r12 + 1216], rax
 mov rax, qword ptr [r12 + 1104]
 mov qword ptr [r12 + 1224], rax
  .section .rodata
  .Lrkfn474: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn474]
 lea rsi, [r12 + 1200]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], rdx
 cmp eax, 99
 je xchain394_n24_α
 jmp xchain394_n24_α
 xchain394_n23_β:
 jmp xchain394_n24_α
xchain394_n24_α:
# IR_LIT_S
bb189_α:
 mov qword ptr [r12 + 1232], 1
 mov rax, qword ptr [rip + .Lx475_0]
 mov qword ptr [r12 + 1240], rax
 jmp xchain394_n25_α
 xchain394_n24_β:
 jmp proc_p6_ω
.Lx475_0:
 .quad .Lx475_0_s
.Lx475_0_s:
 .string "numeric(\"2r0\") ----> "
xchain394_n25_α:
xaltg476_a0_start:
bb190_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1304]
 mov qword ptr [r12 + 1304], 1
 mov rax, qword ptr [rip + .Lx477_0]
 mov qword ptr [r12 + 1312], rax
 jmp .Lx477_1
.Lx477_0:
 .quad .Lx477_0_s
.Lx477_0_s:
 .string "2r0"
.Lx477_1:
  .section .rodata
  .Lcallfn478: .string "numeric"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn478]
 lea rsi, [r12 + 1304]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1288], rax
 mov qword ptr [r12 + 1296], rdx
  .section .rodata
  .Lrkfn479: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn479]
 lea rsi, [r12 + 1288]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1272], rax
 mov qword ptr [r12 + 1280], rdx
 cmp eax, 99
 je xaltg476_a1_start
 jmp xaltg476_a0_succ
 xaltg476_a0_beta:
 jmp xaltg476_a1_start
xaltg476_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1272]
 mov qword ptr [r12 + 1248], rax
 mov rax, qword ptr [r12 + 1280]
 mov qword ptr [r12 + 1256], rax
 mov qword ptr [r12 + 1264], 1
jmp xchain394_n26_α
xaltg476_a1_start:
# IR_LIT_S
bb191_α:
 mov qword ptr [r12 + 1320], 1
 mov rax, qword ptr [rip + .Lx481_0]
 mov qword ptr [r12 + 1328], rax
 jmp xaltg476_a1_succ
 xaltg476_a1_beta:
 jmp proc_p6_ω
.Lx481_0:
 .quad .Lx481_0_s
.Lx481_0_s:
 .string "none"
xaltg476_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 1248], rax
 mov rax, qword ptr [r12 + 1328]
 mov qword ptr [r12 + 1256], rax
 mov qword ptr [r12 + 1264], 1
jmp xchain394_n26_α
xchain394_n25_β:
jmp proc_p6_ω
xchain394_n26_α:
bb192_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1352]
 mov qword ptr [r12 + 1352], 1
 mov rax, qword ptr [rip + .Lx483_0]
 mov qword ptr [r12 + 1360], rax
 jmp .Lx483_1
.Lx483_0:
 .quad .Lx483_0_s
.Lx483_0_s:
 .string "numeric(\"2r0\") ----> "
.Lx483_1:
# marshal arg1 = nested producer-box slot [r12+1248] -> [r12+1368]
 mov rax, qword ptr [r12 + 1248]
 mov qword ptr [r12 + 1368], rax
 mov rax, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 1376], rax
  .section .rodata
  .Lrkfn484: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn484]
 lea rsi, [r12 + 1352]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1336], rax
 mov qword ptr [r12 + 1344], rdx
 cmp eax, 99
 je proc_p6_ω
 jmp proc_p6_γ
 xchain394_n26_β:
 jmp proc_p6_ω
proc_p6_β:
jmp proc_p6_ω
proc_p6_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_p6_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_p9_α
proc_p9_α:
#=======================================================================================================================
    .global proc_p9_α
    .global proc_p9_β
    .global proc_p9_γ
    .global proc_p9_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_p9_α_body:
xchain485_n0_α:
# IR_LIT_S
bb193_α:
 mov qword ptr [r12 + 16], 1
 mov rax, qword ptr [rip + .Lx486_0]
 mov qword ptr [r12 + 24], rax
 jmp xchain485_n1_α
 xchain485_n0_β:
 jmp xchain485_n3_α
.Lx486_0:
 .quad .Lx486_0_s
.Lx486_0_s:
 .string "100 - - 4 ----> "
xchain485_n1_α:
xaltg487_a0_start:
bb194_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+72]
 mov qword ptr [r12 + 72], 6
 movabs rax, 100
 mov qword ptr [r12 + 80], rax
  .section .rodata
  .Lrkfn489: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn489]
 lea rsi, [r12 + 72]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 56], rax
 mov qword ptr [r12 + 64], rdx
 cmp eax, 99
 je xaltg487_a1_start
 jmp xaltg487_a0_succ
 xaltg487_a0_beta:
 jmp xaltg487_a1_start
xaltg487_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain485_n2_α
xaltg487_a1_start:
# IR_LIT_S
bb195_α:
 mov qword ptr [r12 + 88], 1
 mov rax, qword ptr [rip + .Lx491_0]
 mov qword ptr [r12 + 96], rax
 jmp xaltg487_a1_succ
 xaltg487_a1_beta:
 jmp xchain485_n3_α
.Lx491_0:
 .quad .Lx491_0_s
.Lx491_0_s:
 .string "none"
xaltg487_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain485_n2_α
xchain485_n1_β:
jmp xchain485_n3_α
xchain485_n2_α:
bb196_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+120]
 mov qword ptr [r12 + 120], 1
 mov rax, qword ptr [rip + .Lx493_0]
 mov qword ptr [r12 + 128], rax
 jmp .Lx493_1
.Lx493_0:
 .quad .Lx493_0_s
.Lx493_0_s:
 .string "100 - - 4 ----> "
.Lx493_1:
# marshal arg1 = nested producer-box slot [r12+32] -> [r12+136]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 136], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 144], rax
  .section .rodata
  .Lrkfn494: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn494]
 lea rsi, [r12 + 120]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 104], rax
 mov qword ptr [r12 + 112], rdx
 cmp eax, 99
 je xchain485_n3_α
 jmp xchain485_n3_α
 xchain485_n2_β:
 jmp xchain485_n3_α
xchain485_n3_α:
# IR_LIT_S
bb197_α:
 mov qword ptr [r12 + 152], 1
 mov rax, qword ptr [rip + .Lx495_0]
 mov qword ptr [r12 + 160], rax
 jmp xchain485_n4_α
 xchain485_n3_β:
 jmp xchain485_n6_α
.Lx495_0:
 .quad .Lx495_0_s
.Lx495_0_s:
 .string "100 --4 ----> "
xchain485_n4_α:
xaltg496_a0_start:
bb198_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+208]
 mov qword ptr [r12 + 208], 6
 movabs rax, 100
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lrkfn498: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn498]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xaltg496_a1_start
 jmp xaltg496_a0_succ
 xaltg496_a0_beta:
 jmp xaltg496_a1_start
xaltg496_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 168], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], 1
jmp xchain485_n5_α
xaltg496_a1_start:
# IR_LIT_S
bb199_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx500_0]
 mov qword ptr [r12 + 232], rax
 jmp xaltg496_a1_succ
 xaltg496_a1_beta:
 jmp xchain485_n6_α
.Lx500_0:
 .quad .Lx500_0_s
.Lx500_0_s:
 .string "none"
xaltg496_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 168], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], 1
jmp xchain485_n5_α
xchain485_n4_β:
jmp xchain485_n6_α
xchain485_n5_α:
bb200_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+256]
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx502_0]
 mov qword ptr [r12 + 264], rax
 jmp .Lx502_1
.Lx502_0:
 .quad .Lx502_0_s
.Lx502_0_s:
 .string "100 --4 ----> "
.Lx502_1:
# marshal arg1 = nested producer-box slot [r12+168] -> [r12+272]
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 280], rax
  .section .rodata
  .Lrkfn503: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn503]
 lea rsi, [r12 + 256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain485_n6_α
 jmp xchain485_n6_α
 xchain485_n5_β:
 jmp xchain485_n6_α
xchain485_n6_α:
# IR_LIT_S
bb201_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx504_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain485_n7_α
 xchain485_n6_β:
 jmp xchain485_n9_α
.Lx504_0:
 .quad .Lx504_0_s
.Lx504_0_s:
 .string "100- - 4 ----> "
xchain485_n7_α:
xaltg505_a0_start:
bb202_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+344]
 mov qword ptr [r12 + 344], 6
 movabs rax, 100
 mov qword ptr [r12 + 352], rax
  .section .rodata
  .Lrkfn507: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn507]
 lea rsi, [r12 + 344]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 328], rax
 mov qword ptr [r12 + 336], rdx
 cmp eax, 99
 je xaltg505_a1_start
 jmp xaltg505_a0_succ
 xaltg505_a0_beta:
 jmp xaltg505_a1_start
xaltg505_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 312], rax
 mov qword ptr [r12 + 320], 1
jmp xchain485_n8_α
xaltg505_a1_start:
# IR_LIT_S
bb203_α:
 mov qword ptr [r12 + 360], 1
 mov rax, qword ptr [rip + .Lx509_0]
 mov qword ptr [r12 + 368], rax
 jmp xaltg505_a1_succ
 xaltg505_a1_beta:
 jmp xchain485_n9_α
.Lx509_0:
 .quad .Lx509_0_s
.Lx509_0_s:
 .string "none"
xaltg505_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 312], rax
 mov qword ptr [r12 + 320], 1
jmp xchain485_n8_α
xchain485_n7_β:
jmp xchain485_n9_α
xchain485_n8_α:
bb204_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+392]
 mov qword ptr [r12 + 392], 1
 mov rax, qword ptr [rip + .Lx511_0]
 mov qword ptr [r12 + 400], rax
 jmp .Lx511_1
.Lx511_0:
 .quad .Lx511_0_s
.Lx511_0_s:
 .string "100- - 4 ----> "
.Lx511_1:
# marshal arg1 = nested producer-box slot [r12+304] -> [r12+408]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 408], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 416], rax
  .section .rodata
  .Lrkfn512: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn512]
 lea rsi, [r12 + 392]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 376], rax
 mov qword ptr [r12 + 384], rdx
 cmp eax, 99
 je xchain485_n9_α
 jmp xchain485_n9_α
 xchain485_n8_β:
 jmp xchain485_n9_α
xchain485_n9_α:
# IR_LIT_S
bb205_α:
 mov qword ptr [r12 + 424], 1
 mov rax, qword ptr [rip + .Lx513_0]
 mov qword ptr [r12 + 432], rax
 jmp xchain485_n10_α
 xchain485_n9_β:
 jmp xchain485_n12_α
.Lx513_0:
 .quad .Lx513_0_s
.Lx513_0_s:
 .string "100 -- 4 ----> "
xchain485_n10_α:
xaltg514_a0_start:
bb206_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+480]
 mov qword ptr [r12 + 480], 6
 movabs rax, 100
 mov qword ptr [r12 + 488], rax
  .section .rodata
  .Lrkfn516: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn516]
 lea rsi, [r12 + 480]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 cmp eax, 99
 je xaltg514_a1_start
 jmp xaltg514_a0_succ
 xaltg514_a0_beta:
 jmp xaltg514_a1_start
xaltg514_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 440], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], 1
jmp xchain485_n11_α
xaltg514_a1_start:
# IR_LIT_S
bb207_α:
 mov qword ptr [r12 + 496], 1
 mov rax, qword ptr [rip + .Lx518_0]
 mov qword ptr [r12 + 504], rax
 jmp xaltg514_a1_succ
 xaltg514_a1_beta:
 jmp xchain485_n12_α
.Lx518_0:
 .quad .Lx518_0_s
.Lx518_0_s:
 .string "none"
xaltg514_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 440], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], 1
jmp xchain485_n11_α
xchain485_n10_β:
jmp xchain485_n12_α
xchain485_n11_α:
bb208_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+528]
 mov qword ptr [r12 + 528], 1
 mov rax, qword ptr [rip + .Lx520_0]
 mov qword ptr [r12 + 536], rax
 jmp .Lx520_1
.Lx520_0:
 .quad .Lx520_0_s
.Lx520_0_s:
 .string "100 -- 4 ----> "
.Lx520_1:
# marshal arg1 = nested producer-box slot [r12+440] -> [r12+544]
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 552], rax
  .section .rodata
  .Lrkfn521: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn521]
 lea rsi, [r12 + 528]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je xchain485_n12_α
 jmp xchain485_n12_α
 xchain485_n11_β:
 jmp xchain485_n12_α
xchain485_n12_α:
# IR_LIT_S
bb209_α:
 mov qword ptr [r12 + 560], 1
 mov rax, qword ptr [rip + .Lx522_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain485_n13_α
 xchain485_n12_β:
 jmp proc_p9_ω
.Lx522_0:
 .quad .Lx522_0_s
.Lx522_0_s:
 .string "100 - -4 ----> "
xchain485_n13_α:
xaltg523_a0_start:
bb210_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+616]
 mov qword ptr [r12 + 616], 6
 movabs rax, 100
 mov qword ptr [r12 + 624], rax
  .section .rodata
  .Lrkfn525: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn525]
 lea rsi, [r12 + 616]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 600], rax
 mov qword ptr [r12 + 608], rdx
 cmp eax, 99
 je xaltg523_a1_start
 jmp xaltg523_a0_succ
 xaltg523_a0_beta:
 jmp xaltg523_a1_start
xaltg523_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 584], rax
 mov qword ptr [r12 + 592], 1
jmp xchain485_n14_α
xaltg523_a1_start:
# IR_LIT_S
bb211_α:
 mov qword ptr [r12 + 632], 1
 mov rax, qword ptr [rip + .Lx527_0]
 mov qword ptr [r12 + 640], rax
 jmp xaltg523_a1_succ
 xaltg523_a1_beta:
 jmp proc_p9_ω
.Lx527_0:
 .quad .Lx527_0_s
.Lx527_0_s:
 .string "none"
xaltg523_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 584], rax
 mov qword ptr [r12 + 592], 1
jmp xchain485_n14_α
xchain485_n13_β:
jmp proc_p9_ω
xchain485_n14_α:
bb212_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+664]
 mov qword ptr [r12 + 664], 1
 mov rax, qword ptr [rip + .Lx529_0]
 mov qword ptr [r12 + 672], rax
 jmp .Lx529_1
.Lx529_0:
 .quad .Lx529_0_s
.Lx529_0_s:
 .string "100 - -4 ----> "
.Lx529_1:
# marshal arg1 = nested producer-box slot [r12+576] -> [r12+680]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 680], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 688], rax
  .section .rodata
  .Lrkfn530: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn530]
 lea rsi, [r12 + 664]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 648], rax
 mov qword ptr [r12 + 656], rdx
 cmp eax, 99
 je proc_p9_ω
 jmp proc_p9_γ
 xchain485_n14_β:
 jmp proc_p9_ω
proc_p9_β:
jmp proc_p9_ω
proc_p9_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_p9_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_p10_α
proc_p10_α:
#=======================================================================================================================
    .global proc_p10_α
    .global proc_p10_β
    .global proc_p10_γ
    .global proc_p10_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_p10_α_body:
xchain531_n0_α:
# IR_LIT_S
bb213_α:
 mov qword ptr [r12 + 16], 1
 mov rax, qword ptr [rip + .Lx532_0]
 mov qword ptr [r12 + 24], rax
 jmp xchain531_n1_α
 xchain531_n0_β:
 jmp xchain531_n3_α
.Lx532_0:
 .quad .Lx532_0_s
.Lx532_0_s:
 .string "abs(1) ----> "
xchain531_n1_α:
xaltg533_a0_start:
bb214_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+88]
 mov qword ptr [r12 + 88], 6
 movabs rax, 1
 mov qword ptr [r12 + 96], rax
  .section .rodata
  .Lcallfn535: .string "abs"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn535]
 lea rsi, [r12 + 88]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 72], rax
 mov qword ptr [r12 + 80], rdx
  .section .rodata
  .Lrkfn536: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn536]
 lea rsi, [r12 + 72]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 56], rax
 mov qword ptr [r12 + 64], rdx
 cmp eax, 99
 je xaltg533_a1_start
 jmp xaltg533_a0_succ
 xaltg533_a0_beta:
 jmp xaltg533_a1_start
xaltg533_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain531_n2_α
xaltg533_a1_start:
# IR_LIT_S
bb215_α:
 mov qword ptr [r12 + 104], 1
 mov rax, qword ptr [rip + .Lx538_0]
 mov qword ptr [r12 + 112], rax
 jmp xaltg533_a1_succ
 xaltg533_a1_beta:
 jmp xchain531_n3_α
.Lx538_0:
 .quad .Lx538_0_s
.Lx538_0_s:
 .string "none"
xaltg533_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain531_n2_α
xchain531_n1_β:
jmp xchain531_n3_α
xchain531_n2_α:
bb216_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+136]
 mov qword ptr [r12 + 136], 1
 mov rax, qword ptr [rip + .Lx540_0]
 mov qword ptr [r12 + 144], rax
 jmp .Lx540_1
.Lx540_0:
 .quad .Lx540_0_s
.Lx540_0_s:
 .string "abs(1) ----> "
.Lx540_1:
# marshal arg1 = nested producer-box slot [r12+32] -> [r12+152]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 152], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 160], rax
  .section .rodata
  .Lrkfn541: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn541]
 lea rsi, [r12 + 136]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 120], rax
 mov qword ptr [r12 + 128], rdx
 cmp eax, 99
 je xchain531_n3_α
 jmp xchain531_n3_α
 xchain531_n2_β:
 jmp xchain531_n3_α
xchain531_n3_α:
# IR_LIT_S
bb217_α:
 mov qword ptr [r12 + 168], 1
 mov rax, qword ptr [rip + .Lx542_0]
 mov qword ptr [r12 + 176], rax
 jmp xchain531_n4_α
 xchain531_n3_β:
 jmp xchain531_n6_α
.Lx542_0:
 .quad .Lx542_0_s
.Lx542_0_s:
 .string "abs(-1) ----> "
xchain531_n4_α:
xaltg543_a0_start:
bb218_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+240]
 mov qword ptr [r12 + 240], 6
 movabs rax, 18446744073709551615
 mov qword ptr [r12 + 248], rax
  .section .rodata
  .Lcallfn545: .string "abs"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn545]
 lea rsi, [r12 + 240]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
  .section .rodata
  .Lrkfn546: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn546]
 lea rsi, [r12 + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xaltg543_a1_start
 jmp xaltg543_a0_succ
 xaltg543_a0_beta:
 jmp xaltg543_a1_start
xaltg543_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 184], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], 1
jmp xchain531_n5_α
xaltg543_a1_start:
# IR_LIT_S
bb219_α:
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx548_0]
 mov qword ptr [r12 + 264], rax
 jmp xaltg543_a1_succ
 xaltg543_a1_beta:
 jmp xchain531_n6_α
.Lx548_0:
 .quad .Lx548_0_s
.Lx548_0_s:
 .string "none"
xaltg543_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 184], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], 1
jmp xchain531_n5_α
xchain531_n4_β:
jmp xchain531_n6_α
xchain531_n5_α:
bb220_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+288]
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx550_0]
 mov qword ptr [r12 + 296], rax
 jmp .Lx550_1
.Lx550_0:
 .quad .Lx550_0_s
.Lx550_0_s:
 .string "abs(-1) ----> "
.Lx550_1:
# marshal arg1 = nested producer-box slot [r12+184] -> [r12+304]
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 312], rax
  .section .rodata
  .Lrkfn551: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn551]
 lea rsi, [r12 + 288]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je xchain531_n6_α
 jmp xchain531_n6_α
 xchain531_n5_β:
 jmp xchain531_n6_α
xchain531_n6_α:
# IR_LIT_S
bb221_α:
 mov qword ptr [r12 + 320], 1
 mov rax, qword ptr [rip + .Lx552_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain531_n7_α
 xchain531_n6_β:
 jmp xchain531_n9_α
.Lx552_0:
 .quad .Lx552_0_s
.Lx552_0_s:
 .string "abs(0) ----> "
xchain531_n7_α:
xaltg553_a0_start:
bb222_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+392]
 mov qword ptr [r12 + 392], 6
 movabs rax, 0
 mov qword ptr [r12 + 400], rax
  .section .rodata
  .Lcallfn555: .string "abs"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn555]
 lea rsi, [r12 + 392]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 376], rax
 mov qword ptr [r12 + 384], rdx
  .section .rodata
  .Lrkfn556: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn556]
 lea rsi, [r12 + 376]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 360], rax
 mov qword ptr [r12 + 368], rdx
 cmp eax, 99
 je xaltg553_a1_start
 jmp xaltg553_a0_succ
 xaltg553_a0_beta:
 jmp xaltg553_a1_start
xaltg553_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 344], rax
 mov qword ptr [r12 + 352], 1
jmp xchain531_n8_α
xaltg553_a1_start:
# IR_LIT_S
bb223_α:
 mov qword ptr [r12 + 408], 1
 mov rax, qword ptr [rip + .Lx558_0]
 mov qword ptr [r12 + 416], rax
 jmp xaltg553_a1_succ
 xaltg553_a1_beta:
 jmp xchain531_n9_α
.Lx558_0:
 .quad .Lx558_0_s
.Lx558_0_s:
 .string "none"
xaltg553_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 344], rax
 mov qword ptr [r12 + 352], 1
jmp xchain531_n8_α
xchain531_n7_β:
jmp xchain531_n9_α
xchain531_n8_α:
bb224_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+440]
 mov qword ptr [r12 + 440], 1
 mov rax, qword ptr [rip + .Lx560_0]
 mov qword ptr [r12 + 448], rax
 jmp .Lx560_1
.Lx560_0:
 .quad .Lx560_0_s
.Lx560_0_s:
 .string "abs(0) ----> "
.Lx560_1:
# marshal arg1 = nested producer-box slot [r12+336] -> [r12+456]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 456], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 464], rax
  .section .rodata
  .Lrkfn561: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn561]
 lea rsi, [r12 + 440]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 424], rax
 mov qword ptr [r12 + 432], rdx
 cmp eax, 99
 je xchain531_n9_α
 jmp xchain531_n9_α
 xchain531_n8_β:
 jmp xchain531_n9_α
xchain531_n9_α:
# IR_LIT_S
bb225_α:
 mov qword ptr [r12 + 472], 1
 mov rax, qword ptr [rip + .Lx562_0]
 mov qword ptr [r12 + 480], rax
 jmp xchain531_n10_α
 xchain531_n9_β:
 jmp xchain531_n12_α
.Lx562_0:
 .quad .Lx562_0_s
.Lx562_0_s:
 .string "36 % 7 ----> "
xchain531_n10_α:
xaltg563_a0_start:
bb226_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+528]
 mov qword ptr [r12 + 528], 6
 movabs rax, 36
 mov qword ptr [r12 + 536], rax
  .section .rodata
  .Lrkfn565: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn565]
 lea rsi, [r12 + 528]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je xaltg563_a1_start
 jmp xaltg563_a0_succ
 xaltg563_a0_beta:
 jmp xaltg563_a1_start
xaltg563_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 488], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], 1
jmp xchain531_n11_α
xaltg563_a1_start:
# IR_LIT_S
bb227_α:
 mov qword ptr [r12 + 544], 1
 mov rax, qword ptr [rip + .Lx567_0]
 mov qword ptr [r12 + 552], rax
 jmp xaltg563_a1_succ
 xaltg563_a1_beta:
 jmp xchain531_n12_α
.Lx567_0:
 .quad .Lx567_0_s
.Lx567_0_s:
 .string "none"
xaltg563_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 488], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], 1
jmp xchain531_n11_α
xchain531_n10_β:
jmp xchain531_n12_α
xchain531_n11_α:
bb228_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+576]
 mov qword ptr [r12 + 576], 1
 mov rax, qword ptr [rip + .Lx569_0]
 mov qword ptr [r12 + 584], rax
 jmp .Lx569_1
.Lx569_0:
 .quad .Lx569_0_s
.Lx569_0_s:
 .string "36 % 7 ----> "
.Lx569_1:
# marshal arg1 = nested producer-box slot [r12+488] -> [r12+592]
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 600], rax
  .section .rodata
  .Lrkfn570: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn570]
 lea rsi, [r12 + 576]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 cmp eax, 99
 je xchain531_n12_α
 jmp xchain531_n12_α
 xchain531_n11_β:
 jmp xchain531_n12_α
xchain531_n12_α:
# IR_LIT_S
bb229_α:
 mov qword ptr [r12 + 608], 1
 mov rax, qword ptr [rip + .Lx571_0]
 mov qword ptr [r12 + 616], rax
 jmp xchain531_n13_α
 xchain531_n12_β:
 jmp xchain531_n15_α
.Lx571_0:
 .quad .Lx571_0_s
.Lx571_0_s:
 .string "-36 % 7 ----> "
xchain531_n13_α:
xaltg572_a0_start:
bb230_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+664]
 mov qword ptr [r12 + 664], 6
 movabs rax, 18446744073709551580
 mov qword ptr [r12 + 672], rax
  .section .rodata
  .Lrkfn574: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn574]
 lea rsi, [r12 + 664]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 648], rax
 mov qword ptr [r12 + 656], rdx
 cmp eax, 99
 je xaltg572_a1_start
 jmp xaltg572_a0_succ
 xaltg572_a0_beta:
 jmp xaltg572_a1_start
xaltg572_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 632], rax
 mov qword ptr [r12 + 640], 1
jmp xchain531_n14_α
xaltg572_a1_start:
# IR_LIT_S
bb231_α:
 mov qword ptr [r12 + 680], 1
 mov rax, qword ptr [rip + .Lx576_0]
 mov qword ptr [r12 + 688], rax
 jmp xaltg572_a1_succ
 xaltg572_a1_beta:
 jmp xchain531_n15_α
.Lx576_0:
 .quad .Lx576_0_s
.Lx576_0_s:
 .string "none"
xaltg572_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 632], rax
 mov qword ptr [r12 + 640], 1
jmp xchain531_n14_α
xchain531_n13_β:
jmp xchain531_n15_α
xchain531_n14_α:
bb232_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+712]
 mov qword ptr [r12 + 712], 1
 mov rax, qword ptr [rip + .Lx578_0]
 mov qword ptr [r12 + 720], rax
 jmp .Lx578_1
.Lx578_0:
 .quad .Lx578_0_s
.Lx578_0_s:
 .string "-36 % 7 ----> "
.Lx578_1:
# marshal arg1 = nested producer-box slot [r12+624] -> [r12+728]
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 728], rax
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 736], rax
  .section .rodata
  .Lrkfn579: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn579]
 lea rsi, [r12 + 712]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 696], rax
 mov qword ptr [r12 + 704], rdx
 cmp eax, 99
 je xchain531_n15_α
 jmp xchain531_n15_α
 xchain531_n14_β:
 jmp xchain531_n15_α
xchain531_n15_α:
# IR_LIT_S
bb233_α:
 mov qword ptr [r12 + 744], 1
 mov rax, qword ptr [rip + .Lx580_0]
 mov qword ptr [r12 + 752], rax
 jmp xchain531_n16_α
 xchain531_n15_β:
 jmp xchain531_n18_α
.Lx580_0:
 .quad .Lx580_0_s
.Lx580_0_s:
 .string "36 % -7 ----> "
xchain531_n16_α:
xaltg581_a0_start:
bb234_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+800]
 mov qword ptr [r12 + 800], 6
 movabs rax, 36
 mov qword ptr [r12 + 808], rax
  .section .rodata
  .Lrkfn583: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn583]
 lea rsi, [r12 + 800]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 cmp eax, 99
 je xaltg581_a1_start
 jmp xaltg581_a0_succ
 xaltg581_a0_beta:
 jmp xaltg581_a1_start
xaltg581_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 760], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], 1
jmp xchain531_n17_α
xaltg581_a1_start:
# IR_LIT_S
bb235_α:
 mov qword ptr [r12 + 816], 1
 mov rax, qword ptr [rip + .Lx585_0]
 mov qword ptr [r12 + 824], rax
 jmp xaltg581_a1_succ
 xaltg581_a1_beta:
 jmp xchain531_n18_α
.Lx585_0:
 .quad .Lx585_0_s
.Lx585_0_s:
 .string "none"
xaltg581_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 760], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], 1
jmp xchain531_n17_α
xchain531_n16_β:
jmp xchain531_n18_α
xchain531_n17_α:
bb236_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+848]
 mov qword ptr [r12 + 848], 1
 mov rax, qword ptr [rip + .Lx587_0]
 mov qword ptr [r12 + 856], rax
 jmp .Lx587_1
.Lx587_0:
 .quad .Lx587_0_s
.Lx587_0_s:
 .string "36 % -7 ----> "
.Lx587_1:
# marshal arg1 = nested producer-box slot [r12+760] -> [r12+864]
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 864], rax
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 872], rax
  .section .rodata
  .Lrkfn588: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn588]
 lea rsi, [r12 + 848]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 cmp eax, 99
 je xchain531_n18_α
 jmp xchain531_n18_α
 xchain531_n17_β:
 jmp xchain531_n18_α
xchain531_n18_α:
# IR_LIT_S
bb237_α:
 mov qword ptr [r12 + 880], 1
 mov rax, qword ptr [rip + .Lx589_0]
 mov qword ptr [r12 + 888], rax
 jmp xchain531_n19_α
 xchain531_n18_β:
 jmp proc_p10_ω
.Lx589_0:
 .quad .Lx589_0_s
.Lx589_0_s:
 .string "-36 % -7 ----> "
xchain531_n19_α:
xaltg590_a0_start:
bb238_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+936]
 mov qword ptr [r12 + 936], 6
 movabs rax, 18446744073709551580
 mov qword ptr [r12 + 944], rax
  .section .rodata
  .Lrkfn592: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn592]
 lea rsi, [r12 + 936]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 920], rax
 mov qword ptr [r12 + 928], rdx
 cmp eax, 99
 je xaltg590_a1_start
 jmp xaltg590_a0_succ
 xaltg590_a0_beta:
 jmp xaltg590_a1_start
xaltg590_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 920]
 mov qword ptr [r12 + 896], rax
 mov rax, qword ptr [r12 + 928]
 mov qword ptr [r12 + 904], rax
 mov qword ptr [r12 + 912], 1
jmp xchain531_n20_α
xaltg590_a1_start:
# IR_LIT_S
bb239_α:
 mov qword ptr [r12 + 952], 1
 mov rax, qword ptr [rip + .Lx594_0]
 mov qword ptr [r12 + 960], rax
 jmp xaltg590_a1_succ
 xaltg590_a1_beta:
 jmp proc_p10_ω
.Lx594_0:
 .quad .Lx594_0_s
.Lx594_0_s:
 .string "none"
xaltg590_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 896], rax
 mov rax, qword ptr [r12 + 960]
 mov qword ptr [r12 + 904], rax
 mov qword ptr [r12 + 912], 1
jmp xchain531_n20_α
xchain531_n19_β:
jmp proc_p10_ω
xchain531_n20_α:
bb240_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+984]
 mov qword ptr [r12 + 984], 1
 mov rax, qword ptr [rip + .Lx596_0]
 mov qword ptr [r12 + 992], rax
 jmp .Lx596_1
.Lx596_0:
 .quad .Lx596_0_s
.Lx596_0_s:
 .string "-36 % -7 ----> "
.Lx596_1:
# marshal arg1 = nested producer-box slot [r12+896] -> [r12+1000]
 mov rax, qword ptr [r12 + 896]
 mov qword ptr [r12 + 1000], rax
 mov rax, qword ptr [r12 + 904]
 mov qword ptr [r12 + 1008], rax
  .section .rodata
  .Lrkfn597: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn597]
 lea rsi, [r12 + 984]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 968], rax
 mov qword ptr [r12 + 976], rdx
 cmp eax, 99
 je proc_p10_ω
 jmp proc_p10_γ
 xchain531_n20_β:
 jmp proc_p10_ω
proc_p10_β:
jmp proc_p10_ω
proc_p10_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_p10_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_p11_α
proc_p11_α:
#=======================================================================================================================
    .global proc_p11_α
    .global proc_p11_β
    .global proc_p11_γ
    .global proc_p11_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_p11_α_body:
xchain598_n0_α:
# IR_LIT_S
bb241_α:
 mov qword ptr [r12 + 16], 1
 mov rax, qword ptr [rip + .Lx599_0]
 mov qword ptr [r12 + 24], rax
 jmp xchain598_n1_α
 xchain598_n0_β:
 jmp xchain598_n3_α
.Lx599_0:
 .quad .Lx599_0_s
.Lx599_0_s:
 .string "36 * 9 ----> "
xchain598_n1_α:
xaltg600_a0_start:
bb242_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+72]
 mov qword ptr [r12 + 72], 6
 movabs rax, 36
 mov qword ptr [r12 + 80], rax
  .section .rodata
  .Lrkfn602: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn602]
 lea rsi, [r12 + 72]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 56], rax
 mov qword ptr [r12 + 64], rdx
 cmp eax, 99
 je xaltg600_a1_start
 jmp xaltg600_a0_succ
 xaltg600_a0_beta:
 jmp xaltg600_a1_start
xaltg600_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain598_n2_α
xaltg600_a1_start:
# IR_LIT_S
bb243_α:
 mov qword ptr [r12 + 88], 1
 mov rax, qword ptr [rip + .Lx604_0]
 mov qword ptr [r12 + 96], rax
 jmp xaltg600_a1_succ
 xaltg600_a1_beta:
 jmp xchain598_n3_α
.Lx604_0:
 .quad .Lx604_0_s
.Lx604_0_s:
 .string "none"
xaltg600_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain598_n2_α
xchain598_n1_β:
jmp xchain598_n3_α
xchain598_n2_α:
bb244_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+120]
 mov qword ptr [r12 + 120], 1
 mov rax, qword ptr [rip + .Lx606_0]
 mov qword ptr [r12 + 128], rax
 jmp .Lx606_1
.Lx606_0:
 .quad .Lx606_0_s
.Lx606_0_s:
 .string "36 * 9 ----> "
.Lx606_1:
# marshal arg1 = nested producer-box slot [r12+32] -> [r12+136]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 136], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 144], rax
  .section .rodata
  .Lrkfn607: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn607]
 lea rsi, [r12 + 120]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 104], rax
 mov qword ptr [r12 + 112], rdx
 cmp eax, 99
 je xchain598_n3_α
 jmp xchain598_n3_α
 xchain598_n2_β:
 jmp xchain598_n3_α
xchain598_n3_α:
# IR_LIT_S
bb245_α:
 mov qword ptr [r12 + 152], 1
 mov rax, qword ptr [rip + .Lx608_0]
 mov qword ptr [r12 + 160], rax
 jmp xchain598_n4_α
 xchain598_n3_β:
 jmp xchain598_n6_α
.Lx608_0:
 .quad .Lx608_0_s
.Lx608_0_s:
 .string "-36 * 9 ----> "
xchain598_n4_α:
xaltg609_a0_start:
bb246_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+208]
 mov qword ptr [r12 + 208], 6
 movabs rax, 18446744073709551580
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lrkfn611: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn611]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xaltg609_a1_start
 jmp xaltg609_a0_succ
 xaltg609_a0_beta:
 jmp xaltg609_a1_start
xaltg609_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 168], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], 1
jmp xchain598_n5_α
xaltg609_a1_start:
# IR_LIT_S
bb247_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx613_0]
 mov qword ptr [r12 + 232], rax
 jmp xaltg609_a1_succ
 xaltg609_a1_beta:
 jmp xchain598_n6_α
.Lx613_0:
 .quad .Lx613_0_s
.Lx613_0_s:
 .string "none"
xaltg609_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 168], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], 1
jmp xchain598_n5_α
xchain598_n4_β:
jmp xchain598_n6_α
xchain598_n5_α:
bb248_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+256]
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx615_0]
 mov qword ptr [r12 + 264], rax
 jmp .Lx615_1
.Lx615_0:
 .quad .Lx615_0_s
.Lx615_0_s:
 .string "-36 * 9 ----> "
.Lx615_1:
# marshal arg1 = nested producer-box slot [r12+168] -> [r12+272]
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 280], rax
  .section .rodata
  .Lrkfn616: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn616]
 lea rsi, [r12 + 256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain598_n6_α
 jmp xchain598_n6_α
 xchain598_n5_β:
 jmp xchain598_n6_α
xchain598_n6_α:
# IR_LIT_S
bb249_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx617_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain598_n7_α
 xchain598_n6_β:
 jmp xchain598_n9_α
.Lx617_0:
 .quad .Lx617_0_s
.Lx617_0_s:
 .string "36 * -9 ----> "
xchain598_n7_α:
xaltg618_a0_start:
bb250_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+344]
 mov qword ptr [r12 + 344], 6
 movabs rax, 36
 mov qword ptr [r12 + 352], rax
  .section .rodata
  .Lrkfn620: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn620]
 lea rsi, [r12 + 344]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 328], rax
 mov qword ptr [r12 + 336], rdx
 cmp eax, 99
 je xaltg618_a1_start
 jmp xaltg618_a0_succ
 xaltg618_a0_beta:
 jmp xaltg618_a1_start
xaltg618_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 312], rax
 mov qword ptr [r12 + 320], 1
jmp xchain598_n8_α
xaltg618_a1_start:
# IR_LIT_S
bb251_α:
 mov qword ptr [r12 + 360], 1
 mov rax, qword ptr [rip + .Lx622_0]
 mov qword ptr [r12 + 368], rax
 jmp xaltg618_a1_succ
 xaltg618_a1_beta:
 jmp xchain598_n9_α
.Lx622_0:
 .quad .Lx622_0_s
.Lx622_0_s:
 .string "none"
xaltg618_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 312], rax
 mov qword ptr [r12 + 320], 1
jmp xchain598_n8_α
xchain598_n7_β:
jmp xchain598_n9_α
xchain598_n8_α:
bb252_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+392]
 mov qword ptr [r12 + 392], 1
 mov rax, qword ptr [rip + .Lx624_0]
 mov qword ptr [r12 + 400], rax
 jmp .Lx624_1
.Lx624_0:
 .quad .Lx624_0_s
.Lx624_0_s:
 .string "36 * -9 ----> "
.Lx624_1:
# marshal arg1 = nested producer-box slot [r12+304] -> [r12+408]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 408], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 416], rax
  .section .rodata
  .Lrkfn625: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn625]
 lea rsi, [r12 + 392]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 376], rax
 mov qword ptr [r12 + 384], rdx
 cmp eax, 99
 je xchain598_n9_α
 jmp xchain598_n9_α
 xchain598_n8_β:
 jmp xchain598_n9_α
xchain598_n9_α:
# IR_LIT_S
bb253_α:
 mov qword ptr [r12 + 424], 1
 mov rax, qword ptr [rip + .Lx626_0]
 mov qword ptr [r12 + 432], rax
 jmp xchain598_n10_α
 xchain598_n9_β:
 jmp proc_p11_ω
.Lx626_0:
 .quad .Lx626_0_s
.Lx626_0_s:
 .string "-36 * -9 ----> "
xchain598_n10_α:
xaltg627_a0_start:
bb254_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+480]
 mov qword ptr [r12 + 480], 6
 movabs rax, 18446744073709551580
 mov qword ptr [r12 + 488], rax
  .section .rodata
  .Lrkfn629: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn629]
 lea rsi, [r12 + 480]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 cmp eax, 99
 je xaltg627_a1_start
 jmp xaltg627_a0_succ
 xaltg627_a0_beta:
 jmp xaltg627_a1_start
xaltg627_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 440], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], 1
jmp xchain598_n11_α
xaltg627_a1_start:
# IR_LIT_S
bb255_α:
 mov qword ptr [r12 + 496], 1
 mov rax, qword ptr [rip + .Lx631_0]
 mov qword ptr [r12 + 504], rax
 jmp xaltg627_a1_succ
 xaltg627_a1_beta:
 jmp proc_p11_ω
.Lx631_0:
 .quad .Lx631_0_s
.Lx631_0_s:
 .string "none"
xaltg627_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 440], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], 1
jmp xchain598_n11_α
xchain598_n10_β:
jmp proc_p11_ω
xchain598_n11_α:
bb256_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+528]
 mov qword ptr [r12 + 528], 1
 mov rax, qword ptr [rip + .Lx633_0]
 mov qword ptr [r12 + 536], rax
 jmp .Lx633_1
.Lx633_0:
 .quad .Lx633_0_s
.Lx633_0_s:
 .string "-36 * -9 ----> "
.Lx633_1:
# marshal arg1 = nested producer-box slot [r12+440] -> [r12+544]
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 552], rax
  .section .rodata
  .Lrkfn634: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn634]
 lea rsi, [r12 + 528]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je proc_p11_ω
 jmp proc_p11_γ
 xchain598_n11_β:
 jmp proc_p11_ω
proc_p11_β:
jmp proc_p11_ω
proc_p11_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_p11_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_p12_α
proc_p12_α:
#=======================================================================================================================
    .global proc_p12_α
    .global proc_p12_β
    .global proc_p12_γ
    .global proc_p12_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_p12_α_body:
xchain635_n0_α:
# IR_LIT_S
bb257_α:
 mov qword ptr [r12 + 16], 1
 mov rax, qword ptr [rip + .Lx636_0]
 mov qword ptr [r12 + 24], rax
 jmp xchain635_n1_α
 xchain635_n0_β:
 jmp xchain635_n3_α
.Lx636_0:
 .quad .Lx636_0_s
.Lx636_0_s:
 .string "36 / 9 ----> "
xchain635_n1_α:
xaltg637_a0_start:
bb258_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+72]
 mov qword ptr [r12 + 72], 6
 movabs rax, 36
 mov qword ptr [r12 + 80], rax
  .section .rodata
  .Lrkfn639: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn639]
 lea rsi, [r12 + 72]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 56], rax
 mov qword ptr [r12 + 64], rdx
 cmp eax, 99
 je xaltg637_a1_start
 jmp xaltg637_a0_succ
 xaltg637_a0_beta:
 jmp xaltg637_a1_start
xaltg637_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain635_n2_α
xaltg637_a1_start:
# IR_LIT_S
bb259_α:
 mov qword ptr [r12 + 88], 1
 mov rax, qword ptr [rip + .Lx641_0]
 mov qword ptr [r12 + 96], rax
 jmp xaltg637_a1_succ
 xaltg637_a1_beta:
 jmp xchain635_n3_α
.Lx641_0:
 .quad .Lx641_0_s
.Lx641_0_s:
 .string "none"
xaltg637_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain635_n2_α
xchain635_n1_β:
jmp xchain635_n3_α
xchain635_n2_α:
bb260_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+120]
 mov qword ptr [r12 + 120], 1
 mov rax, qword ptr [rip + .Lx643_0]
 mov qword ptr [r12 + 128], rax
 jmp .Lx643_1
.Lx643_0:
 .quad .Lx643_0_s
.Lx643_0_s:
 .string "36 / 9 ----> "
.Lx643_1:
# marshal arg1 = nested producer-box slot [r12+32] -> [r12+136]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 136], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 144], rax
  .section .rodata
  .Lrkfn644: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn644]
 lea rsi, [r12 + 120]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 104], rax
 mov qword ptr [r12 + 112], rdx
 cmp eax, 99
 je xchain635_n3_α
 jmp xchain635_n3_α
 xchain635_n2_β:
 jmp xchain635_n3_α
xchain635_n3_α:
# IR_LIT_S
bb261_α:
 mov qword ptr [r12 + 152], 1
 mov rax, qword ptr [rip + .Lx645_0]
 mov qword ptr [r12 + 160], rax
 jmp xchain635_n4_α
 xchain635_n3_β:
 jmp xchain635_n6_α
.Lx645_0:
 .quad .Lx645_0_s
.Lx645_0_s:
 .string "-36 / 9 ----> "
xchain635_n4_α:
xaltg646_a0_start:
bb262_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+208]
 mov qword ptr [r12 + 208], 6
 movabs rax, 18446744073709551580
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lrkfn648: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn648]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xaltg646_a1_start
 jmp xaltg646_a0_succ
 xaltg646_a0_beta:
 jmp xaltg646_a1_start
xaltg646_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 168], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], 1
jmp xchain635_n5_α
xaltg646_a1_start:
# IR_LIT_S
bb263_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx650_0]
 mov qword ptr [r12 + 232], rax
 jmp xaltg646_a1_succ
 xaltg646_a1_beta:
 jmp xchain635_n6_α
.Lx650_0:
 .quad .Lx650_0_s
.Lx650_0_s:
 .string "none"
xaltg646_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 168], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], 1
jmp xchain635_n5_α
xchain635_n4_β:
jmp xchain635_n6_α
xchain635_n5_α:
bb264_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+256]
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx652_0]
 mov qword ptr [r12 + 264], rax
 jmp .Lx652_1
.Lx652_0:
 .quad .Lx652_0_s
.Lx652_0_s:
 .string "-36 / 9 ----> "
.Lx652_1:
# marshal arg1 = nested producer-box slot [r12+168] -> [r12+272]
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 280], rax
  .section .rodata
  .Lrkfn653: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn653]
 lea rsi, [r12 + 256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain635_n6_α
 jmp xchain635_n6_α
 xchain635_n5_β:
 jmp xchain635_n6_α
xchain635_n6_α:
# IR_LIT_S
bb265_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx654_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain635_n7_α
 xchain635_n6_β:
 jmp xchain635_n9_α
.Lx654_0:
 .quad .Lx654_0_s
.Lx654_0_s:
 .string "36 / -9 ----> "
xchain635_n7_α:
xaltg655_a0_start:
bb266_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+344]
 mov qword ptr [r12 + 344], 6
 movabs rax, 36
 mov qword ptr [r12 + 352], rax
  .section .rodata
  .Lrkfn657: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn657]
 lea rsi, [r12 + 344]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 328], rax
 mov qword ptr [r12 + 336], rdx
 cmp eax, 99
 je xaltg655_a1_start
 jmp xaltg655_a0_succ
 xaltg655_a0_beta:
 jmp xaltg655_a1_start
xaltg655_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 312], rax
 mov qword ptr [r12 + 320], 1
jmp xchain635_n8_α
xaltg655_a1_start:
# IR_LIT_S
bb267_α:
 mov qword ptr [r12 + 360], 1
 mov rax, qword ptr [rip + .Lx659_0]
 mov qword ptr [r12 + 368], rax
 jmp xaltg655_a1_succ
 xaltg655_a1_beta:
 jmp xchain635_n9_α
.Lx659_0:
 .quad .Lx659_0_s
.Lx659_0_s:
 .string "none"
xaltg655_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 312], rax
 mov qword ptr [r12 + 320], 1
jmp xchain635_n8_α
xchain635_n7_β:
jmp xchain635_n9_α
xchain635_n8_α:
bb268_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+392]
 mov qword ptr [r12 + 392], 1
 mov rax, qword ptr [rip + .Lx661_0]
 mov qword ptr [r12 + 400], rax
 jmp .Lx661_1
.Lx661_0:
 .quad .Lx661_0_s
.Lx661_0_s:
 .string "36 / -9 ----> "
.Lx661_1:
# marshal arg1 = nested producer-box slot [r12+304] -> [r12+408]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 408], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 416], rax
  .section .rodata
  .Lrkfn662: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn662]
 lea rsi, [r12 + 392]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 376], rax
 mov qword ptr [r12 + 384], rdx
 cmp eax, 99
 je xchain635_n9_α
 jmp xchain635_n9_α
 xchain635_n8_β:
 jmp xchain635_n9_α
xchain635_n9_α:
# IR_LIT_S
bb269_α:
 mov qword ptr [r12 + 424], 1
 mov rax, qword ptr [rip + .Lx663_0]
 mov qword ptr [r12 + 432], rax
 jmp xchain635_n10_α
 xchain635_n9_β:
 jmp proc_p12_ω
.Lx663_0:
 .quad .Lx663_0_s
.Lx663_0_s:
 .string "-36 / -9 ----> "
xchain635_n10_α:
xaltg664_a0_start:
bb270_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+480]
 mov qword ptr [r12 + 480], 6
 movabs rax, 18446744073709551580
 mov qword ptr [r12 + 488], rax
  .section .rodata
  .Lrkfn666: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn666]
 lea rsi, [r12 + 480]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 cmp eax, 99
 je xaltg664_a1_start
 jmp xaltg664_a0_succ
 xaltg664_a0_beta:
 jmp xaltg664_a1_start
xaltg664_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 440], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], 1
jmp xchain635_n11_α
xaltg664_a1_start:
# IR_LIT_S
bb271_α:
 mov qword ptr [r12 + 496], 1
 mov rax, qword ptr [rip + .Lx668_0]
 mov qword ptr [r12 + 504], rax
 jmp xaltg664_a1_succ
 xaltg664_a1_beta:
 jmp proc_p12_ω
.Lx668_0:
 .quad .Lx668_0_s
.Lx668_0_s:
 .string "none"
xaltg664_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 440], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], 1
jmp xchain635_n11_α
xchain635_n10_β:
jmp proc_p12_ω
xchain635_n11_α:
bb272_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+528]
 mov qword ptr [r12 + 528], 1
 mov rax, qword ptr [rip + .Lx670_0]
 mov qword ptr [r12 + 536], rax
 jmp .Lx670_1
.Lx670_0:
 .quad .Lx670_0_s
.Lx670_0_s:
 .string "-36 / -9 ----> "
.Lx670_1:
# marshal arg1 = nested producer-box slot [r12+440] -> [r12+544]
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 552], rax
  .section .rodata
  .Lrkfn671: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn671]
 lea rsi, [r12 + 528]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je proc_p12_ω
 jmp proc_p12_γ
 xchain635_n11_β:
 jmp proc_p12_ω
proc_p12_β:
jmp proc_p12_ω
proc_p12_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_p12_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_p13_α
proc_p13_α:
#=======================================================================================================================
    .global proc_p13_α
    .global proc_p13_β
    .global proc_p13_γ
    .global proc_p13_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_p13_α_body:
xchain672_n0_α:
# IR_LIT_S
bb273_α:
 mov qword ptr [r12 + 16], 1
 mov rax, qword ptr [rip + .Lx673_0]
 mov qword ptr [r12 + 24], rax
 jmp xchain672_n1_α
 xchain672_n0_β:
 jmp xchain672_n3_α
.Lx673_0:
 .quad .Lx673_0_s
.Lx673_0_s:
 .string "36 + 9 ----> "
xchain672_n1_α:
xaltg674_a0_start:
bb274_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+72]
 mov qword ptr [r12 + 72], 6
 movabs rax, 36
 mov qword ptr [r12 + 80], rax
  .section .rodata
  .Lrkfn676: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn676]
 lea rsi, [r12 + 72]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 56], rax
 mov qword ptr [r12 + 64], rdx
 cmp eax, 99
 je xaltg674_a1_start
 jmp xaltg674_a0_succ
 xaltg674_a0_beta:
 jmp xaltg674_a1_start
xaltg674_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain672_n2_α
xaltg674_a1_start:
# IR_LIT_S
bb275_α:
 mov qword ptr [r12 + 88], 1
 mov rax, qword ptr [rip + .Lx678_0]
 mov qword ptr [r12 + 96], rax
 jmp xaltg674_a1_succ
 xaltg674_a1_beta:
 jmp xchain672_n3_α
.Lx678_0:
 .quad .Lx678_0_s
.Lx678_0_s:
 .string "none"
xaltg674_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain672_n2_α
xchain672_n1_β:
jmp xchain672_n3_α
xchain672_n2_α:
bb276_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+120]
 mov qword ptr [r12 + 120], 1
 mov rax, qword ptr [rip + .Lx680_0]
 mov qword ptr [r12 + 128], rax
 jmp .Lx680_1
.Lx680_0:
 .quad .Lx680_0_s
.Lx680_0_s:
 .string "36 + 9 ----> "
.Lx680_1:
# marshal arg1 = nested producer-box slot [r12+32] -> [r12+136]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 136], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 144], rax
  .section .rodata
  .Lrkfn681: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn681]
 lea rsi, [r12 + 120]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 104], rax
 mov qword ptr [r12 + 112], rdx
 cmp eax, 99
 je xchain672_n3_α
 jmp xchain672_n3_α
 xchain672_n2_β:
 jmp xchain672_n3_α
xchain672_n3_α:
# IR_LIT_S
bb277_α:
 mov qword ptr [r12 + 152], 1
 mov rax, qword ptr [rip + .Lx682_0]
 mov qword ptr [r12 + 160], rax
 jmp xchain672_n4_α
 xchain672_n3_β:
 jmp xchain672_n6_α
.Lx682_0:
 .quad .Lx682_0_s
.Lx682_0_s:
 .string "-36 + 9 ----> "
xchain672_n4_α:
xaltg683_a0_start:
bb278_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+208]
 mov qword ptr [r12 + 208], 6
 movabs rax, 18446744073709551580
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lrkfn685: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn685]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xaltg683_a1_start
 jmp xaltg683_a0_succ
 xaltg683_a0_beta:
 jmp xaltg683_a1_start
xaltg683_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 168], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], 1
jmp xchain672_n5_α
xaltg683_a1_start:
# IR_LIT_S
bb279_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx687_0]
 mov qword ptr [r12 + 232], rax
 jmp xaltg683_a1_succ
 xaltg683_a1_beta:
 jmp xchain672_n6_α
.Lx687_0:
 .quad .Lx687_0_s
.Lx687_0_s:
 .string "none"
xaltg683_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 168], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], 1
jmp xchain672_n5_α
xchain672_n4_β:
jmp xchain672_n6_α
xchain672_n5_α:
bb280_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+256]
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx689_0]
 mov qword ptr [r12 + 264], rax
 jmp .Lx689_1
.Lx689_0:
 .quad .Lx689_0_s
.Lx689_0_s:
 .string "-36 + 9 ----> "
.Lx689_1:
# marshal arg1 = nested producer-box slot [r12+168] -> [r12+272]
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 280], rax
  .section .rodata
  .Lrkfn690: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn690]
 lea rsi, [r12 + 256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain672_n6_α
 jmp xchain672_n6_α
 xchain672_n5_β:
 jmp xchain672_n6_α
xchain672_n6_α:
# IR_LIT_S
bb281_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx691_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain672_n7_α
 xchain672_n6_β:
 jmp xchain672_n9_α
.Lx691_0:
 .quad .Lx691_0_s
.Lx691_0_s:
 .string "36 + -9 ----> "
xchain672_n7_α:
xaltg692_a0_start:
bb282_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+344]
 mov qword ptr [r12 + 344], 6
 movabs rax, 36
 mov qword ptr [r12 + 352], rax
  .section .rodata
  .Lrkfn694: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn694]
 lea rsi, [r12 + 344]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 328], rax
 mov qword ptr [r12 + 336], rdx
 cmp eax, 99
 je xaltg692_a1_start
 jmp xaltg692_a0_succ
 xaltg692_a0_beta:
 jmp xaltg692_a1_start
xaltg692_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 312], rax
 mov qword ptr [r12 + 320], 1
jmp xchain672_n8_α
xaltg692_a1_start:
# IR_LIT_S
bb283_α:
 mov qword ptr [r12 + 360], 1
 mov rax, qword ptr [rip + .Lx696_0]
 mov qword ptr [r12 + 368], rax
 jmp xaltg692_a1_succ
 xaltg692_a1_beta:
 jmp xchain672_n9_α
.Lx696_0:
 .quad .Lx696_0_s
.Lx696_0_s:
 .string "none"
xaltg692_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 312], rax
 mov qword ptr [r12 + 320], 1
jmp xchain672_n8_α
xchain672_n7_β:
jmp xchain672_n9_α
xchain672_n8_α:
bb284_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+392]
 mov qword ptr [r12 + 392], 1
 mov rax, qword ptr [rip + .Lx698_0]
 mov qword ptr [r12 + 400], rax
 jmp .Lx698_1
.Lx698_0:
 .quad .Lx698_0_s
.Lx698_0_s:
 .string "36 + -9 ----> "
.Lx698_1:
# marshal arg1 = nested producer-box slot [r12+304] -> [r12+408]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 408], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 416], rax
  .section .rodata
  .Lrkfn699: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn699]
 lea rsi, [r12 + 392]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 376], rax
 mov qword ptr [r12 + 384], rdx
 cmp eax, 99
 je xchain672_n9_α
 jmp xchain672_n9_α
 xchain672_n8_β:
 jmp xchain672_n9_α
xchain672_n9_α:
# IR_LIT_S
bb285_α:
 mov qword ptr [r12 + 424], 1
 mov rax, qword ptr [rip + .Lx700_0]
 mov qword ptr [r12 + 432], rax
 jmp xchain672_n10_α
 xchain672_n9_β:
 jmp proc_p13_ω
.Lx700_0:
 .quad .Lx700_0_s
.Lx700_0_s:
 .string "-36 + -9 ----> "
xchain672_n10_α:
xaltg701_a0_start:
bb286_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+480]
 mov qword ptr [r12 + 480], 6
 movabs rax, 18446744073709551580
 mov qword ptr [r12 + 488], rax
  .section .rodata
  .Lrkfn703: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn703]
 lea rsi, [r12 + 480]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 cmp eax, 99
 je xaltg701_a1_start
 jmp xaltg701_a0_succ
 xaltg701_a0_beta:
 jmp xaltg701_a1_start
xaltg701_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 440], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], 1
jmp xchain672_n11_α
xaltg701_a1_start:
# IR_LIT_S
bb287_α:
 mov qword ptr [r12 + 496], 1
 mov rax, qword ptr [rip + .Lx705_0]
 mov qword ptr [r12 + 504], rax
 jmp xaltg701_a1_succ
 xaltg701_a1_beta:
 jmp proc_p13_ω
.Lx705_0:
 .quad .Lx705_0_s
.Lx705_0_s:
 .string "none"
xaltg701_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 440], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], 1
jmp xchain672_n11_α
xchain672_n10_β:
jmp proc_p13_ω
xchain672_n11_α:
bb288_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+528]
 mov qword ptr [r12 + 528], 1
 mov rax, qword ptr [rip + .Lx707_0]
 mov qword ptr [r12 + 536], rax
 jmp .Lx707_1
.Lx707_0:
 .quad .Lx707_0_s
.Lx707_0_s:
 .string "-36 + -9 ----> "
.Lx707_1:
# marshal arg1 = nested producer-box slot [r12+440] -> [r12+544]
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 552], rax
  .section .rodata
  .Lrkfn708: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn708]
 lea rsi, [r12 + 528]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je proc_p13_ω
 jmp proc_p13_γ
 xchain672_n11_β:
 jmp proc_p13_ω
proc_p13_β:
jmp proc_p13_ω
proc_p13_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_p13_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_p14_α
proc_p14_α:
#=======================================================================================================================
    .global proc_p14_α
    .global proc_p14_β
    .global proc_p14_γ
    .global proc_p14_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_p14_α_body:
xchain709_n0_α:
# IR_LIT_S
bb289_α:
 mov qword ptr [r12 + 16], 1
 mov rax, qword ptr [rip + .Lx710_0]
 mov qword ptr [r12 + 24], rax
 jmp xchain709_n1_α
 xchain709_n0_β:
 jmp xchain709_n3_α
.Lx710_0:
 .quad .Lx710_0_s
.Lx710_0_s:
 .string "36 ^ -9 ----> "
xchain709_n1_α:
xaltg711_a0_start:
bb290_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_F -> [r12+72]
 mov qword ptr [r12 + 72], 7
 movabs rax, 4397250534387514593
 mov qword ptr [r12 + 80], rax
  .section .rodata
  .Lrkfn713: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn713]
 lea rsi, [r12 + 72]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 56], rax
 mov qword ptr [r12 + 64], rdx
 cmp eax, 99
 je xaltg711_a1_start
 jmp xaltg711_a0_succ
 xaltg711_a0_beta:
 jmp xaltg711_a1_start
xaltg711_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain709_n2_α
xaltg711_a1_start:
# IR_LIT_S
bb291_α:
 mov qword ptr [r12 + 88], 1
 mov rax, qword ptr [rip + .Lx715_0]
 mov qword ptr [r12 + 96], rax
 jmp xaltg711_a1_succ
 xaltg711_a1_beta:
 jmp xchain709_n3_α
.Lx715_0:
 .quad .Lx715_0_s
.Lx715_0_s:
 .string "none"
xaltg711_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain709_n2_α
xchain709_n1_β:
jmp xchain709_n3_α
xchain709_n2_α:
bb292_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+120]
 mov qword ptr [r12 + 120], 1
 mov rax, qword ptr [rip + .Lx717_0]
 mov qword ptr [r12 + 128], rax
 jmp .Lx717_1
.Lx717_0:
 .quad .Lx717_0_s
.Lx717_0_s:
 .string "36 ^ -9 ----> "
.Lx717_1:
# marshal arg1 = nested producer-box slot [r12+32] -> [r12+136]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 136], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 144], rax
  .section .rodata
  .Lrkfn718: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn718]
 lea rsi, [r12 + 120]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 104], rax
 mov qword ptr [r12 + 112], rdx
 cmp eax, 99
 je xchain709_n3_α
 jmp xchain709_n3_α
 xchain709_n2_β:
 jmp xchain709_n3_α
xchain709_n3_α:
# IR_LIT_S
bb293_α:
 mov qword ptr [r12 + 152], 1
 mov rax, qword ptr [rip + .Lx719_0]
 mov qword ptr [r12 + 160], rax
 jmp xchain709_n4_α
 xchain709_n3_β:
 jmp xchain709_n6_α
.Lx719_0:
 .quad .Lx719_0_s
.Lx719_0_s:
 .string "1 < 1 ----> "
xchain709_n4_α:
xaltg720_a0_start:
bb294_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+208]
 mov qword ptr [r12 + 208], 6
 movabs rax, 1
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lrkfn722: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn722]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xaltg720_a1_start
 jmp xaltg720_a0_succ
 xaltg720_a0_beta:
 jmp xaltg720_a1_start
xaltg720_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 168], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], 1
jmp xchain709_n5_α
xaltg720_a1_start:
# IR_LIT_S
bb295_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx724_0]
 mov qword ptr [r12 + 232], rax
 jmp xaltg720_a1_succ
 xaltg720_a1_beta:
 jmp xchain709_n6_α
.Lx724_0:
 .quad .Lx724_0_s
.Lx724_0_s:
 .string "none"
xaltg720_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 168], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], 1
jmp xchain709_n5_α
xchain709_n4_β:
jmp xchain709_n6_α
xchain709_n5_α:
bb296_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+256]
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx726_0]
 mov qword ptr [r12 + 264], rax
 jmp .Lx726_1
.Lx726_0:
 .quad .Lx726_0_s
.Lx726_0_s:
 .string "1 < 1 ----> "
.Lx726_1:
# marshal arg1 = nested producer-box slot [r12+168] -> [r12+272]
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 280], rax
  .section .rodata
  .Lrkfn727: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn727]
 lea rsi, [r12 + 256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain709_n6_α
 jmp xchain709_n6_α
 xchain709_n5_β:
 jmp xchain709_n6_α
xchain709_n6_α:
# IR_LIT_S
bb297_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx728_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain709_n7_α
 xchain709_n6_β:
 jmp xchain709_n9_α
.Lx728_0:
 .quad .Lx728_0_s
.Lx728_0_s:
 .string "1 < 2 ----> "
xchain709_n7_α:
xaltg729_a0_start:
bb298_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+344]
 mov qword ptr [r12 + 344], 6
 movabs rax, 1
 mov qword ptr [r12 + 352], rax
  .section .rodata
  .Lrkfn731: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn731]
 lea rsi, [r12 + 344]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 328], rax
 mov qword ptr [r12 + 336], rdx
 cmp eax, 99
 je xaltg729_a1_start
 jmp xaltg729_a0_succ
 xaltg729_a0_beta:
 jmp xaltg729_a1_start
xaltg729_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 312], rax
 mov qword ptr [r12 + 320], 1
jmp xchain709_n8_α
xaltg729_a1_start:
# IR_LIT_S
bb299_α:
 mov qword ptr [r12 + 360], 1
 mov rax, qword ptr [rip + .Lx733_0]
 mov qword ptr [r12 + 368], rax
 jmp xaltg729_a1_succ
 xaltg729_a1_beta:
 jmp xchain709_n9_α
.Lx733_0:
 .quad .Lx733_0_s
.Lx733_0_s:
 .string "none"
xaltg729_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 312], rax
 mov qword ptr [r12 + 320], 1
jmp xchain709_n8_α
xchain709_n7_β:
jmp xchain709_n9_α
xchain709_n8_α:
bb300_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+392]
 mov qword ptr [r12 + 392], 1
 mov rax, qword ptr [rip + .Lx735_0]
 mov qword ptr [r12 + 400], rax
 jmp .Lx735_1
.Lx735_0:
 .quad .Lx735_0_s
.Lx735_0_s:
 .string "1 < 2 ----> "
.Lx735_1:
# marshal arg1 = nested producer-box slot [r12+304] -> [r12+408]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 408], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 416], rax
  .section .rodata
  .Lrkfn736: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn736]
 lea rsi, [r12 + 392]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 376], rax
 mov qword ptr [r12 + 384], rdx
 cmp eax, 99
 je xchain709_n9_α
 jmp xchain709_n9_α
 xchain709_n8_β:
 jmp xchain709_n9_α
xchain709_n9_α:
# IR_LIT_S
bb301_α:
 mov qword ptr [r12 + 424], 1
 mov rax, qword ptr [rip + .Lx737_0]
 mov qword ptr [r12 + 432], rax
 jmp xchain709_n10_α
 xchain709_n9_β:
 jmp xchain709_n12_α
.Lx737_0:
 .quad .Lx737_0_s
.Lx737_0_s:
 .string "1 < 0 ----> "
xchain709_n10_α:
xaltg738_a0_start:
bb302_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+480]
 mov qword ptr [r12 + 480], 6
 movabs rax, 1
 mov qword ptr [r12 + 488], rax
  .section .rodata
  .Lrkfn740: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn740]
 lea rsi, [r12 + 480]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 cmp eax, 99
 je xaltg738_a1_start
 jmp xaltg738_a0_succ
 xaltg738_a0_beta:
 jmp xaltg738_a1_start
xaltg738_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 440], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], 1
jmp xchain709_n11_α
xaltg738_a1_start:
# IR_LIT_S
bb303_α:
 mov qword ptr [r12 + 496], 1
 mov rax, qword ptr [rip + .Lx742_0]
 mov qword ptr [r12 + 504], rax
 jmp xaltg738_a1_succ
 xaltg738_a1_beta:
 jmp xchain709_n12_α
.Lx742_0:
 .quad .Lx742_0_s
.Lx742_0_s:
 .string "none"
xaltg738_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 440], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], 1
jmp xchain709_n11_α
xchain709_n10_β:
jmp xchain709_n12_α
xchain709_n11_α:
bb304_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+528]
 mov qword ptr [r12 + 528], 1
 mov rax, qword ptr [rip + .Lx744_0]
 mov qword ptr [r12 + 536], rax
 jmp .Lx744_1
.Lx744_0:
 .quad .Lx744_0_s
.Lx744_0_s:
 .string "1 < 0 ----> "
.Lx744_1:
# marshal arg1 = nested producer-box slot [r12+440] -> [r12+544]
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 552], rax
  .section .rodata
  .Lrkfn745: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn745]
 lea rsi, [r12 + 528]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je xchain709_n12_α
 jmp xchain709_n12_α
 xchain709_n11_β:
 jmp xchain709_n12_α
xchain709_n12_α:
# IR_LIT_S
bb305_α:
 mov qword ptr [r12 + 560], 1
 mov rax, qword ptr [rip + .Lx746_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain709_n13_α
 xchain709_n12_β:
 jmp xchain709_n15_α
.Lx746_0:
 .quad .Lx746_0_s
.Lx746_0_s:
 .string "-1 < 0 ----> "
xchain709_n13_α:
xaltg747_a0_start:
bb306_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+616]
 mov qword ptr [r12 + 616], 6
 movabs rax, 18446744073709551615
 mov qword ptr [r12 + 624], rax
  .section .rodata
  .Lrkfn749: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn749]
 lea rsi, [r12 + 616]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 600], rax
 mov qword ptr [r12 + 608], rdx
 cmp eax, 99
 je xaltg747_a1_start
 jmp xaltg747_a0_succ
 xaltg747_a0_beta:
 jmp xaltg747_a1_start
xaltg747_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 584], rax
 mov qword ptr [r12 + 592], 1
jmp xchain709_n14_α
xaltg747_a1_start:
# IR_LIT_S
bb307_α:
 mov qword ptr [r12 + 632], 1
 mov rax, qword ptr [rip + .Lx751_0]
 mov qword ptr [r12 + 640], rax
 jmp xaltg747_a1_succ
 xaltg747_a1_beta:
 jmp xchain709_n15_α
.Lx751_0:
 .quad .Lx751_0_s
.Lx751_0_s:
 .string "none"
xaltg747_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 584], rax
 mov qword ptr [r12 + 592], 1
jmp xchain709_n14_α
xchain709_n13_β:
jmp xchain709_n15_α
xchain709_n14_α:
bb308_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+664]
 mov qword ptr [r12 + 664], 1
 mov rax, qword ptr [rip + .Lx753_0]
 mov qword ptr [r12 + 672], rax
 jmp .Lx753_1
.Lx753_0:
 .quad .Lx753_0_s
.Lx753_0_s:
 .string "-1 < 0 ----> "
.Lx753_1:
# marshal arg1 = nested producer-box slot [r12+576] -> [r12+680]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 680], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 688], rax
  .section .rodata
  .Lrkfn754: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn754]
 lea rsi, [r12 + 664]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 648], rax
 mov qword ptr [r12 + 656], rdx
 cmp eax, 99
 je xchain709_n15_α
 jmp xchain709_n15_α
 xchain709_n14_β:
 jmp xchain709_n15_α
xchain709_n15_α:
# IR_LIT_S
bb309_α:
 mov qword ptr [r12 + 696], 1
 mov rax, qword ptr [rip + .Lx755_0]
 mov qword ptr [r12 + 704], rax
 jmp xchain709_n16_α
 xchain709_n15_β:
 jmp xchain709_n18_α
.Lx755_0:
 .quad .Lx755_0_s
.Lx755_0_s:
 .string "1 < -2 ----> "
xchain709_n16_α:
xaltg756_a0_start:
bb310_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+752]
 mov qword ptr [r12 + 752], 6
 movabs rax, 1
 mov qword ptr [r12 + 760], rax
  .section .rodata
  .Lrkfn758: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn758]
 lea rsi, [r12 + 752]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 cmp eax, 99
 je xaltg756_a1_start
 jmp xaltg756_a0_succ
 xaltg756_a0_beta:
 jmp xaltg756_a1_start
xaltg756_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 712], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], 1
jmp xchain709_n17_α
xaltg756_a1_start:
# IR_LIT_S
bb311_α:
 mov qword ptr [r12 + 768], 1
 mov rax, qword ptr [rip + .Lx760_0]
 mov qword ptr [r12 + 776], rax
 jmp xaltg756_a1_succ
 xaltg756_a1_beta:
 jmp xchain709_n18_α
.Lx760_0:
 .quad .Lx760_0_s
.Lx760_0_s:
 .string "none"
xaltg756_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 712], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], 1
jmp xchain709_n17_α
xchain709_n16_β:
jmp xchain709_n18_α
xchain709_n17_α:
bb312_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+800]
 mov qword ptr [r12 + 800], 1
 mov rax, qword ptr [rip + .Lx762_0]
 mov qword ptr [r12 + 808], rax
 jmp .Lx762_1
.Lx762_0:
 .quad .Lx762_0_s
.Lx762_0_s:
 .string "1 < -2 ----> "
.Lx762_1:
# marshal arg1 = nested producer-box slot [r12+712] -> [r12+816]
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 824], rax
  .section .rodata
  .Lrkfn763: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn763]
 lea rsi, [r12 + 800]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 cmp eax, 99
 je xchain709_n18_α
 jmp xchain709_n18_α
 xchain709_n17_β:
 jmp xchain709_n18_α
xchain709_n18_α:
# IR_LIT_S
bb313_α:
 mov qword ptr [r12 + 832], 1
 mov rax, qword ptr [rip + .Lx764_0]
 mov qword ptr [r12 + 840], rax
 jmp xchain709_n19_α
 xchain709_n18_β:
 jmp proc_p14_ω
.Lx764_0:
 .quad .Lx764_0_s
.Lx764_0_s:
 .string "-1 < -0 ----> "
xchain709_n19_α:
xaltg765_a0_start:
bb314_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+888]
 mov qword ptr [r12 + 888], 6
 movabs rax, 18446744073709551615
 mov qword ptr [r12 + 896], rax
  .section .rodata
  .Lrkfn767: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn767]
 lea rsi, [r12 + 888]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 872], rax
 mov qword ptr [r12 + 880], rdx
 cmp eax, 99
 je xaltg765_a1_start
 jmp xaltg765_a0_succ
 xaltg765_a0_beta:
 jmp xaltg765_a1_start
xaltg765_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 856], rax
 mov qword ptr [r12 + 864], 1
jmp xchain709_n20_α
xaltg765_a1_start:
# IR_LIT_S
bb315_α:
 mov qword ptr [r12 + 904], 1
 mov rax, qword ptr [rip + .Lx769_0]
 mov qword ptr [r12 + 912], rax
 jmp xaltg765_a1_succ
 xaltg765_a1_beta:
 jmp proc_p14_ω
.Lx769_0:
 .quad .Lx769_0_s
.Lx769_0_s:
 .string "none"
xaltg765_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 904]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 912]
 mov qword ptr [r12 + 856], rax
 mov qword ptr [r12 + 864], 1
jmp xchain709_n20_α
xchain709_n19_β:
jmp proc_p14_ω
xchain709_n20_α:
bb316_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+936]
 mov qword ptr [r12 + 936], 1
 mov rax, qword ptr [rip + .Lx771_0]
 mov qword ptr [r12 + 944], rax
 jmp .Lx771_1
.Lx771_0:
 .quad .Lx771_0_s
.Lx771_0_s:
 .string "-1 < -0 ----> "
.Lx771_1:
# marshal arg1 = nested producer-box slot [r12+848] -> [r12+952]
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 952], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 960], rax
  .section .rodata
  .Lrkfn772: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn772]
 lea rsi, [r12 + 936]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 920], rax
 mov qword ptr [r12 + 928], rdx
 cmp eax, 99
 je proc_p14_ω
 jmp proc_p14_γ
 xchain709_n20_β:
 jmp proc_p14_ω
proc_p14_β:
jmp proc_p14_ω
proc_p14_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_p14_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_p15_α
proc_p15_α:
#=======================================================================================================================
    .global proc_p15_α
    .global proc_p15_β
    .global proc_p15_γ
    .global proc_p15_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_p15_α_body:
xchain773_n0_α:
# IR_LIT_S
bb317_α:
 mov qword ptr [r12 + 16], 1
 mov rax, qword ptr [rip + .Lx774_0]
 mov qword ptr [r12 + 24], rax
 jmp xchain773_n1_α
 xchain773_n0_β:
 jmp xchain773_n3_α
.Lx774_0:
 .quad .Lx774_0_s
.Lx774_0_s:
 .string "1 > 1 ----> "
xchain773_n1_α:
xaltg775_a0_start:
bb318_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+72]
 mov qword ptr [r12 + 72], 6
 movabs rax, 1
 mov qword ptr [r12 + 80], rax
  .section .rodata
  .Lrkfn777: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn777]
 lea rsi, [r12 + 72]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 56], rax
 mov qword ptr [r12 + 64], rdx
 cmp eax, 99
 je xaltg775_a1_start
 jmp xaltg775_a0_succ
 xaltg775_a0_beta:
 jmp xaltg775_a1_start
xaltg775_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain773_n2_α
xaltg775_a1_start:
# IR_LIT_S
bb319_α:
 mov qword ptr [r12 + 88], 1
 mov rax, qword ptr [rip + .Lx779_0]
 mov qword ptr [r12 + 96], rax
 jmp xaltg775_a1_succ
 xaltg775_a1_beta:
 jmp xchain773_n3_α
.Lx779_0:
 .quad .Lx779_0_s
.Lx779_0_s:
 .string "none"
xaltg775_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain773_n2_α
xchain773_n1_β:
jmp xchain773_n3_α
xchain773_n2_α:
bb320_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+120]
 mov qword ptr [r12 + 120], 1
 mov rax, qword ptr [rip + .Lx781_0]
 mov qword ptr [r12 + 128], rax
 jmp .Lx781_1
.Lx781_0:
 .quad .Lx781_0_s
.Lx781_0_s:
 .string "1 > 1 ----> "
.Lx781_1:
# marshal arg1 = nested producer-box slot [r12+32] -> [r12+136]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 136], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 144], rax
  .section .rodata
  .Lrkfn782: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn782]
 lea rsi, [r12 + 120]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 104], rax
 mov qword ptr [r12 + 112], rdx
 cmp eax, 99
 je xchain773_n3_α
 jmp xchain773_n3_α
 xchain773_n2_β:
 jmp xchain773_n3_α
xchain773_n3_α:
# IR_LIT_S
bb321_α:
 mov qword ptr [r12 + 152], 1
 mov rax, qword ptr [rip + .Lx783_0]
 mov qword ptr [r12 + 160], rax
 jmp xchain773_n4_α
 xchain773_n3_β:
 jmp xchain773_n6_α
.Lx783_0:
 .quad .Lx783_0_s
.Lx783_0_s:
 .string "1 > 2 ----> "
xchain773_n4_α:
xaltg784_a0_start:
bb322_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+208]
 mov qword ptr [r12 + 208], 6
 movabs rax, 1
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lrkfn786: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn786]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xaltg784_a1_start
 jmp xaltg784_a0_succ
 xaltg784_a0_beta:
 jmp xaltg784_a1_start
xaltg784_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 168], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], 1
jmp xchain773_n5_α
xaltg784_a1_start:
# IR_LIT_S
bb323_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx788_0]
 mov qword ptr [r12 + 232], rax
 jmp xaltg784_a1_succ
 xaltg784_a1_beta:
 jmp xchain773_n6_α
.Lx788_0:
 .quad .Lx788_0_s
.Lx788_0_s:
 .string "none"
xaltg784_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 168], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], 1
jmp xchain773_n5_α
xchain773_n4_β:
jmp xchain773_n6_α
xchain773_n5_α:
bb324_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+256]
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx790_0]
 mov qword ptr [r12 + 264], rax
 jmp .Lx790_1
.Lx790_0:
 .quad .Lx790_0_s
.Lx790_0_s:
 .string "1 > 2 ----> "
.Lx790_1:
# marshal arg1 = nested producer-box slot [r12+168] -> [r12+272]
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 280], rax
  .section .rodata
  .Lrkfn791: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn791]
 lea rsi, [r12 + 256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain773_n6_α
 jmp xchain773_n6_α
 xchain773_n5_β:
 jmp xchain773_n6_α
xchain773_n6_α:
# IR_LIT_S
bb325_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx792_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain773_n7_α
 xchain773_n6_β:
 jmp xchain773_n9_α
.Lx792_0:
 .quad .Lx792_0_s
.Lx792_0_s:
 .string "1 > 0 ----> "
xchain773_n7_α:
xaltg793_a0_start:
bb326_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+344]
 mov qword ptr [r12 + 344], 6
 movabs rax, 1
 mov qword ptr [r12 + 352], rax
  .section .rodata
  .Lrkfn795: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn795]
 lea rsi, [r12 + 344]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 328], rax
 mov qword ptr [r12 + 336], rdx
 cmp eax, 99
 je xaltg793_a1_start
 jmp xaltg793_a0_succ
 xaltg793_a0_beta:
 jmp xaltg793_a1_start
xaltg793_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 312], rax
 mov qword ptr [r12 + 320], 1
jmp xchain773_n8_α
xaltg793_a1_start:
# IR_LIT_S
bb327_α:
 mov qword ptr [r12 + 360], 1
 mov rax, qword ptr [rip + .Lx797_0]
 mov qword ptr [r12 + 368], rax
 jmp xaltg793_a1_succ
 xaltg793_a1_beta:
 jmp xchain773_n9_α
.Lx797_0:
 .quad .Lx797_0_s
.Lx797_0_s:
 .string "none"
xaltg793_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 312], rax
 mov qword ptr [r12 + 320], 1
jmp xchain773_n8_α
xchain773_n7_β:
jmp xchain773_n9_α
xchain773_n8_α:
bb328_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+392]
 mov qword ptr [r12 + 392], 1
 mov rax, qword ptr [rip + .Lx799_0]
 mov qword ptr [r12 + 400], rax
 jmp .Lx799_1
.Lx799_0:
 .quad .Lx799_0_s
.Lx799_0_s:
 .string "1 > 0 ----> "
.Lx799_1:
# marshal arg1 = nested producer-box slot [r12+304] -> [r12+408]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 408], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 416], rax
  .section .rodata
  .Lrkfn800: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn800]
 lea rsi, [r12 + 392]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 376], rax
 mov qword ptr [r12 + 384], rdx
 cmp eax, 99
 je xchain773_n9_α
 jmp xchain773_n9_α
 xchain773_n8_β:
 jmp xchain773_n9_α
xchain773_n9_α:
# IR_LIT_S
bb329_α:
 mov qword ptr [r12 + 424], 1
 mov rax, qword ptr [rip + .Lx801_0]
 mov qword ptr [r12 + 432], rax
 jmp xchain773_n10_α
 xchain773_n9_β:
 jmp xchain773_n12_α
.Lx801_0:
 .quad .Lx801_0_s
.Lx801_0_s:
 .string "-1 > 0 ----> "
xchain773_n10_α:
xaltg802_a0_start:
bb330_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+480]
 mov qword ptr [r12 + 480], 6
 movabs rax, 18446744073709551615
 mov qword ptr [r12 + 488], rax
  .section .rodata
  .Lrkfn804: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn804]
 lea rsi, [r12 + 480]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 cmp eax, 99
 je xaltg802_a1_start
 jmp xaltg802_a0_succ
 xaltg802_a0_beta:
 jmp xaltg802_a1_start
xaltg802_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 440], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], 1
jmp xchain773_n11_α
xaltg802_a1_start:
# IR_LIT_S
bb331_α:
 mov qword ptr [r12 + 496], 1
 mov rax, qword ptr [rip + .Lx806_0]
 mov qword ptr [r12 + 504], rax
 jmp xaltg802_a1_succ
 xaltg802_a1_beta:
 jmp xchain773_n12_α
.Lx806_0:
 .quad .Lx806_0_s
.Lx806_0_s:
 .string "none"
xaltg802_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 440], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], 1
jmp xchain773_n11_α
xchain773_n10_β:
jmp xchain773_n12_α
xchain773_n11_α:
bb332_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+528]
 mov qword ptr [r12 + 528], 1
 mov rax, qword ptr [rip + .Lx808_0]
 mov qword ptr [r12 + 536], rax
 jmp .Lx808_1
.Lx808_0:
 .quad .Lx808_0_s
.Lx808_0_s:
 .string "-1 > 0 ----> "
.Lx808_1:
# marshal arg1 = nested producer-box slot [r12+440] -> [r12+544]
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 552], rax
  .section .rodata
  .Lrkfn809: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn809]
 lea rsi, [r12 + 528]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je xchain773_n12_α
 jmp xchain773_n12_α
 xchain773_n11_β:
 jmp xchain773_n12_α
xchain773_n12_α:
# IR_LIT_S
bb333_α:
 mov qword ptr [r12 + 560], 1
 mov rax, qword ptr [rip + .Lx810_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain773_n13_α
 xchain773_n12_β:
 jmp proc_p15_ω
.Lx810_0:
 .quad .Lx810_0_s
.Lx810_0_s:
 .string "1 > -2 ----> "
xchain773_n13_α:
xaltg811_a0_start:
bb334_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+616]
 mov qword ptr [r12 + 616], 6
 movabs rax, 1
 mov qword ptr [r12 + 624], rax
  .section .rodata
  .Lrkfn813: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn813]
 lea rsi, [r12 + 616]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 600], rax
 mov qword ptr [r12 + 608], rdx
 cmp eax, 99
 je xaltg811_a1_start
 jmp xaltg811_a0_succ
 xaltg811_a0_beta:
 jmp xaltg811_a1_start
xaltg811_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 584], rax
 mov qword ptr [r12 + 592], 1
jmp xchain773_n14_α
xaltg811_a1_start:
# IR_LIT_S
bb335_α:
 mov qword ptr [r12 + 632], 1
 mov rax, qword ptr [rip + .Lx815_0]
 mov qword ptr [r12 + 640], rax
 jmp xaltg811_a1_succ
 xaltg811_a1_beta:
 jmp proc_p15_ω
.Lx815_0:
 .quad .Lx815_0_s
.Lx815_0_s:
 .string "none"
xaltg811_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 584], rax
 mov qword ptr [r12 + 592], 1
jmp xchain773_n14_α
xchain773_n13_β:
jmp proc_p15_ω
xchain773_n14_α:
bb336_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+664]
 mov qword ptr [r12 + 664], 1
 mov rax, qword ptr [rip + .Lx817_0]
 mov qword ptr [r12 + 672], rax
 jmp .Lx817_1
.Lx817_0:
 .quad .Lx817_0_s
.Lx817_0_s:
 .string "1 > -2 ----> "
.Lx817_1:
# marshal arg1 = nested producer-box slot [r12+576] -> [r12+680]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 680], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 688], rax
  .section .rodata
  .Lrkfn818: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn818]
 lea rsi, [r12 + 664]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 648], rax
 mov qword ptr [r12 + 656], rdx
 cmp eax, 99
 je proc_p15_ω
 jmp proc_p15_γ
 xchain773_n14_β:
 jmp proc_p15_ω
proc_p15_β:
jmp proc_p15_ω
proc_p15_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_p15_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_p16_α
proc_p16_α:
#=======================================================================================================================
    .global proc_p16_α
    .global proc_p16_β
    .global proc_p16_γ
    .global proc_p16_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_p16_α_body:
xchain819_n0_α:
# IR_LIT_S
bb337_α:
 mov qword ptr [r12 + 16], 1
 mov rax, qword ptr [rip + .Lx820_0]
 mov qword ptr [r12 + 24], rax
 jmp xchain819_n1_α
 xchain819_n0_β:
 jmp xchain819_n3_α
.Lx820_0:
 .quad .Lx820_0_s
.Lx820_0_s:
 .string "-1 > -0 ----> "
xchain819_n1_α:
xaltg821_a0_start:
bb338_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+72]
 mov qword ptr [r12 + 72], 6
 movabs rax, 18446744073709551615
 mov qword ptr [r12 + 80], rax
  .section .rodata
  .Lrkfn823: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn823]
 lea rsi, [r12 + 72]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 56], rax
 mov qword ptr [r12 + 64], rdx
 cmp eax, 99
 je xaltg821_a1_start
 jmp xaltg821_a0_succ
 xaltg821_a0_beta:
 jmp xaltg821_a1_start
xaltg821_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain819_n2_α
xaltg821_a1_start:
# IR_LIT_S
bb339_α:
 mov qword ptr [r12 + 88], 1
 mov rax, qword ptr [rip + .Lx825_0]
 mov qword ptr [r12 + 96], rax
 jmp xaltg821_a1_succ
 xaltg821_a1_beta:
 jmp xchain819_n3_α
.Lx825_0:
 .quad .Lx825_0_s
.Lx825_0_s:
 .string "none"
xaltg821_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain819_n2_α
xchain819_n1_β:
jmp xchain819_n3_α
xchain819_n2_α:
bb340_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+120]
 mov qword ptr [r12 + 120], 1
 mov rax, qword ptr [rip + .Lx827_0]
 mov qword ptr [r12 + 128], rax
 jmp .Lx827_1
.Lx827_0:
 .quad .Lx827_0_s
.Lx827_0_s:
 .string "-1 > -0 ----> "
.Lx827_1:
# marshal arg1 = nested producer-box slot [r12+32] -> [r12+136]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 136], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 144], rax
  .section .rodata
  .Lrkfn828: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn828]
 lea rsi, [r12 + 120]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 104], rax
 mov qword ptr [r12 + 112], rdx
 cmp eax, 99
 je xchain819_n3_α
 jmp xchain819_n3_α
 xchain819_n2_β:
 jmp xchain819_n3_α
xchain819_n3_α:
# IR_LIT_S
bb341_α:
 mov qword ptr [r12 + 152], 1
 mov rax, qword ptr [rip + .Lx829_0]
 mov qword ptr [r12 + 160], rax
 jmp xchain819_n4_α
 xchain819_n3_β:
 jmp xchain819_n6_α
.Lx829_0:
 .quad .Lx829_0_s
.Lx829_0_s:
 .string "1 <= 1 ----> "
xchain819_n4_α:
xaltg830_a0_start:
bb342_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+208]
 mov qword ptr [r12 + 208], 6
 movabs rax, 1
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lrkfn832: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn832]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xaltg830_a1_start
 jmp xaltg830_a0_succ
 xaltg830_a0_beta:
 jmp xaltg830_a1_start
xaltg830_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 168], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], 1
jmp xchain819_n5_α
xaltg830_a1_start:
# IR_LIT_S
bb343_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx834_0]
 mov qword ptr [r12 + 232], rax
 jmp xaltg830_a1_succ
 xaltg830_a1_beta:
 jmp xchain819_n6_α
.Lx834_0:
 .quad .Lx834_0_s
.Lx834_0_s:
 .string "none"
xaltg830_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 168], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], 1
jmp xchain819_n5_α
xchain819_n4_β:
jmp xchain819_n6_α
xchain819_n5_α:
bb344_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+256]
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx836_0]
 mov qword ptr [r12 + 264], rax
 jmp .Lx836_1
.Lx836_0:
 .quad .Lx836_0_s
.Lx836_0_s:
 .string "1 <= 1 ----> "
.Lx836_1:
# marshal arg1 = nested producer-box slot [r12+168] -> [r12+272]
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 280], rax
  .section .rodata
  .Lrkfn837: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn837]
 lea rsi, [r12 + 256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain819_n6_α
 jmp xchain819_n6_α
 xchain819_n5_β:
 jmp xchain819_n6_α
xchain819_n6_α:
# IR_LIT_S
bb345_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx838_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain819_n7_α
 xchain819_n6_β:
 jmp xchain819_n9_α
.Lx838_0:
 .quad .Lx838_0_s
.Lx838_0_s:
 .string "1 <= 2 ----> "
xchain819_n7_α:
xaltg839_a0_start:
bb346_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+344]
 mov qword ptr [r12 + 344], 6
 movabs rax, 1
 mov qword ptr [r12 + 352], rax
  .section .rodata
  .Lrkfn841: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn841]
 lea rsi, [r12 + 344]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 328], rax
 mov qword ptr [r12 + 336], rdx
 cmp eax, 99
 je xaltg839_a1_start
 jmp xaltg839_a0_succ
 xaltg839_a0_beta:
 jmp xaltg839_a1_start
xaltg839_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 312], rax
 mov qword ptr [r12 + 320], 1
jmp xchain819_n8_α
xaltg839_a1_start:
# IR_LIT_S
bb347_α:
 mov qword ptr [r12 + 360], 1
 mov rax, qword ptr [rip + .Lx843_0]
 mov qword ptr [r12 + 368], rax
 jmp xaltg839_a1_succ
 xaltg839_a1_beta:
 jmp xchain819_n9_α
.Lx843_0:
 .quad .Lx843_0_s
.Lx843_0_s:
 .string "none"
xaltg839_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 312], rax
 mov qword ptr [r12 + 320], 1
jmp xchain819_n8_α
xchain819_n7_β:
jmp xchain819_n9_α
xchain819_n8_α:
bb348_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+392]
 mov qword ptr [r12 + 392], 1
 mov rax, qword ptr [rip + .Lx845_0]
 mov qword ptr [r12 + 400], rax
 jmp .Lx845_1
.Lx845_0:
 .quad .Lx845_0_s
.Lx845_0_s:
 .string "1 <= 2 ----> "
.Lx845_1:
# marshal arg1 = nested producer-box slot [r12+304] -> [r12+408]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 408], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 416], rax
  .section .rodata
  .Lrkfn846: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn846]
 lea rsi, [r12 + 392]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 376], rax
 mov qword ptr [r12 + 384], rdx
 cmp eax, 99
 je xchain819_n9_α
 jmp xchain819_n9_α
 xchain819_n8_β:
 jmp xchain819_n9_α
xchain819_n9_α:
# IR_LIT_S
bb349_α:
 mov qword ptr [r12 + 424], 1
 mov rax, qword ptr [rip + .Lx847_0]
 mov qword ptr [r12 + 432], rax
 jmp xchain819_n10_α
 xchain819_n9_β:
 jmp xchain819_n12_α
.Lx847_0:
 .quad .Lx847_0_s
.Lx847_0_s:
 .string "1 <= 0 ----> "
xchain819_n10_α:
xaltg848_a0_start:
bb350_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+480]
 mov qword ptr [r12 + 480], 6
 movabs rax, 1
 mov qword ptr [r12 + 488], rax
  .section .rodata
  .Lrkfn850: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn850]
 lea rsi, [r12 + 480]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 cmp eax, 99
 je xaltg848_a1_start
 jmp xaltg848_a0_succ
 xaltg848_a0_beta:
 jmp xaltg848_a1_start
xaltg848_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 440], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], 1
jmp xchain819_n11_α
xaltg848_a1_start:
# IR_LIT_S
bb351_α:
 mov qword ptr [r12 + 496], 1
 mov rax, qword ptr [rip + .Lx852_0]
 mov qword ptr [r12 + 504], rax
 jmp xaltg848_a1_succ
 xaltg848_a1_beta:
 jmp xchain819_n12_α
.Lx852_0:
 .quad .Lx852_0_s
.Lx852_0_s:
 .string "none"
xaltg848_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 440], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], 1
jmp xchain819_n11_α
xchain819_n10_β:
jmp xchain819_n12_α
xchain819_n11_α:
bb352_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+528]
 mov qword ptr [r12 + 528], 1
 mov rax, qword ptr [rip + .Lx854_0]
 mov qword ptr [r12 + 536], rax
 jmp .Lx854_1
.Lx854_0:
 .quad .Lx854_0_s
.Lx854_0_s:
 .string "1 <= 0 ----> "
.Lx854_1:
# marshal arg1 = nested producer-box slot [r12+440] -> [r12+544]
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 552], rax
  .section .rodata
  .Lrkfn855: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn855]
 lea rsi, [r12 + 528]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je xchain819_n12_α
 jmp xchain819_n12_α
 xchain819_n11_β:
 jmp xchain819_n12_α
xchain819_n12_α:
# IR_LIT_S
bb353_α:
 mov qword ptr [r12 + 560], 1
 mov rax, qword ptr [rip + .Lx856_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain819_n13_α
 xchain819_n12_β:
 jmp proc_p16_ω
.Lx856_0:
 .quad .Lx856_0_s
.Lx856_0_s:
 .string "-1 <= 0 ----> "
xchain819_n13_α:
xaltg857_a0_start:
bb354_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+616]
 mov qword ptr [r12 + 616], 6
 movabs rax, 18446744073709551615
 mov qword ptr [r12 + 624], rax
  .section .rodata
  .Lrkfn859: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn859]
 lea rsi, [r12 + 616]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 600], rax
 mov qword ptr [r12 + 608], rdx
 cmp eax, 99
 je xaltg857_a1_start
 jmp xaltg857_a0_succ
 xaltg857_a0_beta:
 jmp xaltg857_a1_start
xaltg857_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 584], rax
 mov qword ptr [r12 + 592], 1
jmp xchain819_n14_α
xaltg857_a1_start:
# IR_LIT_S
bb355_α:
 mov qword ptr [r12 + 632], 1
 mov rax, qword ptr [rip + .Lx861_0]
 mov qword ptr [r12 + 640], rax
 jmp xaltg857_a1_succ
 xaltg857_a1_beta:
 jmp proc_p16_ω
.Lx861_0:
 .quad .Lx861_0_s
.Lx861_0_s:
 .string "none"
xaltg857_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 584], rax
 mov qword ptr [r12 + 592], 1
jmp xchain819_n14_α
xchain819_n13_β:
jmp proc_p16_ω
xchain819_n14_α:
bb356_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+664]
 mov qword ptr [r12 + 664], 1
 mov rax, qword ptr [rip + .Lx863_0]
 mov qword ptr [r12 + 672], rax
 jmp .Lx863_1
.Lx863_0:
 .quad .Lx863_0_s
.Lx863_0_s:
 .string "-1 <= 0 ----> "
.Lx863_1:
# marshal arg1 = nested producer-box slot [r12+576] -> [r12+680]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 680], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 688], rax
  .section .rodata
  .Lrkfn864: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn864]
 lea rsi, [r12 + 664]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 648], rax
 mov qword ptr [r12 + 656], rdx
 cmp eax, 99
 je proc_p16_ω
 jmp proc_p16_γ
 xchain819_n14_β:
 jmp proc_p16_ω
proc_p16_β:
jmp proc_p16_ω
proc_p16_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_p16_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_p17_α
proc_p17_α:
#=======================================================================================================================
    .global proc_p17_α
    .global proc_p17_β
    .global proc_p17_γ
    .global proc_p17_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_p17_α_body:
xchain865_n0_α:
# IR_LIT_S
bb357_α:
 mov qword ptr [r12 + 16], 1
 mov rax, qword ptr [rip + .Lx866_0]
 mov qword ptr [r12 + 24], rax
 jmp xchain865_n1_α
 xchain865_n0_β:
 jmp xchain865_n3_α
.Lx866_0:
 .quad .Lx866_0_s
.Lx866_0_s:
 .string "1 <= -2 ----> "
xchain865_n1_α:
xaltg867_a0_start:
bb358_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+72]
 mov qword ptr [r12 + 72], 6
 movabs rax, 1
 mov qword ptr [r12 + 80], rax
  .section .rodata
  .Lrkfn869: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn869]
 lea rsi, [r12 + 72]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 56], rax
 mov qword ptr [r12 + 64], rdx
 cmp eax, 99
 je xaltg867_a1_start
 jmp xaltg867_a0_succ
 xaltg867_a0_beta:
 jmp xaltg867_a1_start
xaltg867_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain865_n2_α
xaltg867_a1_start:
# IR_LIT_S
bb359_α:
 mov qword ptr [r12 + 88], 1
 mov rax, qword ptr [rip + .Lx871_0]
 mov qword ptr [r12 + 96], rax
 jmp xaltg867_a1_succ
 xaltg867_a1_beta:
 jmp xchain865_n3_α
.Lx871_0:
 .quad .Lx871_0_s
.Lx871_0_s:
 .string "none"
xaltg867_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain865_n2_α
xchain865_n1_β:
jmp xchain865_n3_α
xchain865_n2_α:
bb360_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+120]
 mov qword ptr [r12 + 120], 1
 mov rax, qword ptr [rip + .Lx873_0]
 mov qword ptr [r12 + 128], rax
 jmp .Lx873_1
.Lx873_0:
 .quad .Lx873_0_s
.Lx873_0_s:
 .string "1 <= -2 ----> "
.Lx873_1:
# marshal arg1 = nested producer-box slot [r12+32] -> [r12+136]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 136], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 144], rax
  .section .rodata
  .Lrkfn874: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn874]
 lea rsi, [r12 + 120]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 104], rax
 mov qword ptr [r12 + 112], rdx
 cmp eax, 99
 je xchain865_n3_α
 jmp xchain865_n3_α
 xchain865_n2_β:
 jmp xchain865_n3_α
xchain865_n3_α:
# IR_LIT_S
bb361_α:
 mov qword ptr [r12 + 152], 1
 mov rax, qword ptr [rip + .Lx875_0]
 mov qword ptr [r12 + 160], rax
 jmp xchain865_n4_α
 xchain865_n3_β:
 jmp xchain865_n6_α
.Lx875_0:
 .quad .Lx875_0_s
.Lx875_0_s:
 .string "-1 <= -0 ----> "
xchain865_n4_α:
xaltg876_a0_start:
bb362_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+208]
 mov qword ptr [r12 + 208], 6
 movabs rax, 18446744073709551615
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lrkfn878: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn878]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xaltg876_a1_start
 jmp xaltg876_a0_succ
 xaltg876_a0_beta:
 jmp xaltg876_a1_start
xaltg876_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 168], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], 1
jmp xchain865_n5_α
xaltg876_a1_start:
# IR_LIT_S
bb363_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx880_0]
 mov qword ptr [r12 + 232], rax
 jmp xaltg876_a1_succ
 xaltg876_a1_beta:
 jmp xchain865_n6_α
.Lx880_0:
 .quad .Lx880_0_s
.Lx880_0_s:
 .string "none"
xaltg876_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 168], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], 1
jmp xchain865_n5_α
xchain865_n4_β:
jmp xchain865_n6_α
xchain865_n5_α:
bb364_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+256]
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx882_0]
 mov qword ptr [r12 + 264], rax
 jmp .Lx882_1
.Lx882_0:
 .quad .Lx882_0_s
.Lx882_0_s:
 .string "-1 <= -0 ----> "
.Lx882_1:
# marshal arg1 = nested producer-box slot [r12+168] -> [r12+272]
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 280], rax
  .section .rodata
  .Lrkfn883: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn883]
 lea rsi, [r12 + 256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain865_n6_α
 jmp xchain865_n6_α
 xchain865_n5_β:
 jmp xchain865_n6_α
xchain865_n6_α:
# IR_LIT_S
bb365_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx884_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain865_n7_α
 xchain865_n6_β:
 jmp xchain865_n9_α
.Lx884_0:
 .quad .Lx884_0_s
.Lx884_0_s:
 .string "1 >= 1 ----> "
xchain865_n7_α:
xaltg885_a0_start:
bb366_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+344]
 mov qword ptr [r12 + 344], 6
 movabs rax, 1
 mov qword ptr [r12 + 352], rax
  .section .rodata
  .Lrkfn887: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn887]
 lea rsi, [r12 + 344]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 328], rax
 mov qword ptr [r12 + 336], rdx
 cmp eax, 99
 je xaltg885_a1_start
 jmp xaltg885_a0_succ
 xaltg885_a0_beta:
 jmp xaltg885_a1_start
xaltg885_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 312], rax
 mov qword ptr [r12 + 320], 1
jmp xchain865_n8_α
xaltg885_a1_start:
# IR_LIT_S
bb367_α:
 mov qword ptr [r12 + 360], 1
 mov rax, qword ptr [rip + .Lx889_0]
 mov qword ptr [r12 + 368], rax
 jmp xaltg885_a1_succ
 xaltg885_a1_beta:
 jmp xchain865_n9_α
.Lx889_0:
 .quad .Lx889_0_s
.Lx889_0_s:
 .string "none"
xaltg885_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 312], rax
 mov qword ptr [r12 + 320], 1
jmp xchain865_n8_α
xchain865_n7_β:
jmp xchain865_n9_α
xchain865_n8_α:
bb368_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+392]
 mov qword ptr [r12 + 392], 1
 mov rax, qword ptr [rip + .Lx891_0]
 mov qword ptr [r12 + 400], rax
 jmp .Lx891_1
.Lx891_0:
 .quad .Lx891_0_s
.Lx891_0_s:
 .string "1 >= 1 ----> "
.Lx891_1:
# marshal arg1 = nested producer-box slot [r12+304] -> [r12+408]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 408], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 416], rax
  .section .rodata
  .Lrkfn892: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn892]
 lea rsi, [r12 + 392]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 376], rax
 mov qword ptr [r12 + 384], rdx
 cmp eax, 99
 je xchain865_n9_α
 jmp xchain865_n9_α
 xchain865_n8_β:
 jmp xchain865_n9_α
xchain865_n9_α:
# IR_LIT_S
bb369_α:
 mov qword ptr [r12 + 424], 1
 mov rax, qword ptr [rip + .Lx893_0]
 mov qword ptr [r12 + 432], rax
 jmp xchain865_n10_α
 xchain865_n9_β:
 jmp xchain865_n12_α
.Lx893_0:
 .quad .Lx893_0_s
.Lx893_0_s:
 .string "1 >= 2 ----> "
xchain865_n10_α:
xaltg894_a0_start:
bb370_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+480]
 mov qword ptr [r12 + 480], 6
 movabs rax, 1
 mov qword ptr [r12 + 488], rax
  .section .rodata
  .Lrkfn896: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn896]
 lea rsi, [r12 + 480]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 cmp eax, 99
 je xaltg894_a1_start
 jmp xaltg894_a0_succ
 xaltg894_a0_beta:
 jmp xaltg894_a1_start
xaltg894_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 440], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], 1
jmp xchain865_n11_α
xaltg894_a1_start:
# IR_LIT_S
bb371_α:
 mov qword ptr [r12 + 496], 1
 mov rax, qword ptr [rip + .Lx898_0]
 mov qword ptr [r12 + 504], rax
 jmp xaltg894_a1_succ
 xaltg894_a1_beta:
 jmp xchain865_n12_α
.Lx898_0:
 .quad .Lx898_0_s
.Lx898_0_s:
 .string "none"
xaltg894_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 440], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], 1
jmp xchain865_n11_α
xchain865_n10_β:
jmp xchain865_n12_α
xchain865_n11_α:
bb372_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+528]
 mov qword ptr [r12 + 528], 1
 mov rax, qword ptr [rip + .Lx900_0]
 mov qword ptr [r12 + 536], rax
 jmp .Lx900_1
.Lx900_0:
 .quad .Lx900_0_s
.Lx900_0_s:
 .string "1 >= 2 ----> "
.Lx900_1:
# marshal arg1 = nested producer-box slot [r12+440] -> [r12+544]
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 552], rax
  .section .rodata
  .Lrkfn901: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn901]
 lea rsi, [r12 + 528]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je xchain865_n12_α
 jmp xchain865_n12_α
 xchain865_n11_β:
 jmp xchain865_n12_α
xchain865_n12_α:
# IR_LIT_S
bb373_α:
 mov qword ptr [r12 + 560], 1
 mov rax, qword ptr [rip + .Lx902_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain865_n13_α
 xchain865_n12_β:
 jmp proc_p17_ω
.Lx902_0:
 .quad .Lx902_0_s
.Lx902_0_s:
 .string "1 >= 0 ----> "
xchain865_n13_α:
xaltg903_a0_start:
bb374_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+616]
 mov qword ptr [r12 + 616], 6
 movabs rax, 1
 mov qword ptr [r12 + 624], rax
  .section .rodata
  .Lrkfn905: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn905]
 lea rsi, [r12 + 616]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 600], rax
 mov qword ptr [r12 + 608], rdx
 cmp eax, 99
 je xaltg903_a1_start
 jmp xaltg903_a0_succ
 xaltg903_a0_beta:
 jmp xaltg903_a1_start
xaltg903_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 584], rax
 mov qword ptr [r12 + 592], 1
jmp xchain865_n14_α
xaltg903_a1_start:
# IR_LIT_S
bb375_α:
 mov qword ptr [r12 + 632], 1
 mov rax, qword ptr [rip + .Lx907_0]
 mov qword ptr [r12 + 640], rax
 jmp xaltg903_a1_succ
 xaltg903_a1_beta:
 jmp proc_p17_ω
.Lx907_0:
 .quad .Lx907_0_s
.Lx907_0_s:
 .string "none"
xaltg903_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 584], rax
 mov qword ptr [r12 + 592], 1
jmp xchain865_n14_α
xchain865_n13_β:
jmp proc_p17_ω
xchain865_n14_α:
bb376_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+664]
 mov qword ptr [r12 + 664], 1
 mov rax, qword ptr [rip + .Lx909_0]
 mov qword ptr [r12 + 672], rax
 jmp .Lx909_1
.Lx909_0:
 .quad .Lx909_0_s
.Lx909_0_s:
 .string "1 >= 0 ----> "
.Lx909_1:
# marshal arg1 = nested producer-box slot [r12+576] -> [r12+680]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 680], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 688], rax
  .section .rodata
  .Lrkfn910: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn910]
 lea rsi, [r12 + 664]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 648], rax
 mov qword ptr [r12 + 656], rdx
 cmp eax, 99
 je proc_p17_ω
 jmp proc_p17_γ
 xchain865_n14_β:
 jmp proc_p17_ω
proc_p17_β:
jmp proc_p17_ω
proc_p17_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_p17_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_p18_α
proc_p18_α:
#=======================================================================================================================
    .global proc_p18_α
    .global proc_p18_β
    .global proc_p18_γ
    .global proc_p18_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_p18_α_body:
xchain911_n0_α:
# IR_LIT_S
bb377_α:
 mov qword ptr [r12 + 16], 1
 mov rax, qword ptr [rip + .Lx912_0]
 mov qword ptr [r12 + 24], rax
 jmp xchain911_n1_α
 xchain911_n0_β:
 jmp xchain911_n3_α
.Lx912_0:
 .quad .Lx912_0_s
.Lx912_0_s:
 .string "-1 >= 0 ----> "
xchain911_n1_α:
xaltg913_a0_start:
bb378_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+72]
 mov qword ptr [r12 + 72], 6
 movabs rax, 18446744073709551615
 mov qword ptr [r12 + 80], rax
  .section .rodata
  .Lrkfn915: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn915]
 lea rsi, [r12 + 72]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 56], rax
 mov qword ptr [r12 + 64], rdx
 cmp eax, 99
 je xaltg913_a1_start
 jmp xaltg913_a0_succ
 xaltg913_a0_beta:
 jmp xaltg913_a1_start
xaltg913_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain911_n2_α
xaltg913_a1_start:
# IR_LIT_S
bb379_α:
 mov qword ptr [r12 + 88], 1
 mov rax, qword ptr [rip + .Lx917_0]
 mov qword ptr [r12 + 96], rax
 jmp xaltg913_a1_succ
 xaltg913_a1_beta:
 jmp xchain911_n3_α
.Lx917_0:
 .quad .Lx917_0_s
.Lx917_0_s:
 .string "none"
xaltg913_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain911_n2_α
xchain911_n1_β:
jmp xchain911_n3_α
xchain911_n2_α:
bb380_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+120]
 mov qword ptr [r12 + 120], 1
 mov rax, qword ptr [rip + .Lx919_0]
 mov qword ptr [r12 + 128], rax
 jmp .Lx919_1
.Lx919_0:
 .quad .Lx919_0_s
.Lx919_0_s:
 .string "-1 >= 0 ----> "
.Lx919_1:
# marshal arg1 = nested producer-box slot [r12+32] -> [r12+136]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 136], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 144], rax
  .section .rodata
  .Lrkfn920: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn920]
 lea rsi, [r12 + 120]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 104], rax
 mov qword ptr [r12 + 112], rdx
 cmp eax, 99
 je xchain911_n3_α
 jmp xchain911_n3_α
 xchain911_n2_β:
 jmp xchain911_n3_α
xchain911_n3_α:
# IR_LIT_S
bb381_α:
 mov qword ptr [r12 + 152], 1
 mov rax, qword ptr [rip + .Lx921_0]
 mov qword ptr [r12 + 160], rax
 jmp xchain911_n4_α
 xchain911_n3_β:
 jmp xchain911_n6_α
.Lx921_0:
 .quad .Lx921_0_s
.Lx921_0_s:
 .string "1 >= -2 ----> "
xchain911_n4_α:
xaltg922_a0_start:
bb382_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+208]
 mov qword ptr [r12 + 208], 6
 movabs rax, 1
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lrkfn924: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn924]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xaltg922_a1_start
 jmp xaltg922_a0_succ
 xaltg922_a0_beta:
 jmp xaltg922_a1_start
xaltg922_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 168], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], 1
jmp xchain911_n5_α
xaltg922_a1_start:
# IR_LIT_S
bb383_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx926_0]
 mov qword ptr [r12 + 232], rax
 jmp xaltg922_a1_succ
 xaltg922_a1_beta:
 jmp xchain911_n6_α
.Lx926_0:
 .quad .Lx926_0_s
.Lx926_0_s:
 .string "none"
xaltg922_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 168], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], 1
jmp xchain911_n5_α
xchain911_n4_β:
jmp xchain911_n6_α
xchain911_n5_α:
bb384_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+256]
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx928_0]
 mov qword ptr [r12 + 264], rax
 jmp .Lx928_1
.Lx928_0:
 .quad .Lx928_0_s
.Lx928_0_s:
 .string "1 >= -2 ----> "
.Lx928_1:
# marshal arg1 = nested producer-box slot [r12+168] -> [r12+272]
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 280], rax
  .section .rodata
  .Lrkfn929: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn929]
 lea rsi, [r12 + 256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain911_n6_α
 jmp xchain911_n6_α
 xchain911_n5_β:
 jmp xchain911_n6_α
xchain911_n6_α:
# IR_LIT_S
bb385_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx930_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain911_n7_α
 xchain911_n6_β:
 jmp xchain911_n9_α
.Lx930_0:
 .quad .Lx930_0_s
.Lx930_0_s:
 .string "-1 >= -0 ----> "
xchain911_n7_α:
xaltg931_a0_start:
bb386_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+344]
 mov qword ptr [r12 + 344], 6
 movabs rax, 18446744073709551615
 mov qword ptr [r12 + 352], rax
  .section .rodata
  .Lrkfn933: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn933]
 lea rsi, [r12 + 344]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 328], rax
 mov qword ptr [r12 + 336], rdx
 cmp eax, 99
 je xaltg931_a1_start
 jmp xaltg931_a0_succ
 xaltg931_a0_beta:
 jmp xaltg931_a1_start
xaltg931_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 312], rax
 mov qword ptr [r12 + 320], 1
jmp xchain911_n8_α
xaltg931_a1_start:
# IR_LIT_S
bb387_α:
 mov qword ptr [r12 + 360], 1
 mov rax, qword ptr [rip + .Lx935_0]
 mov qword ptr [r12 + 368], rax
 jmp xaltg931_a1_succ
 xaltg931_a1_beta:
 jmp xchain911_n9_α
.Lx935_0:
 .quad .Lx935_0_s
.Lx935_0_s:
 .string "none"
xaltg931_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 312], rax
 mov qword ptr [r12 + 320], 1
jmp xchain911_n8_α
xchain911_n7_β:
jmp xchain911_n9_α
xchain911_n8_α:
bb388_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+392]
 mov qword ptr [r12 + 392], 1
 mov rax, qword ptr [rip + .Lx937_0]
 mov qword ptr [r12 + 400], rax
 jmp .Lx937_1
.Lx937_0:
 .quad .Lx937_0_s
.Lx937_0_s:
 .string "-1 >= -0 ----> "
.Lx937_1:
# marshal arg1 = nested producer-box slot [r12+304] -> [r12+408]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 408], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 416], rax
  .section .rodata
  .Lrkfn938: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn938]
 lea rsi, [r12 + 392]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 376], rax
 mov qword ptr [r12 + 384], rdx
 cmp eax, 99
 je xchain911_n9_α
 jmp xchain911_n9_α
 xchain911_n8_β:
 jmp xchain911_n9_α
xchain911_n9_α:
# IR_LIT_S
bb389_α:
 mov qword ptr [r12 + 424], 1
 mov rax, qword ptr [rip + .Lx939_0]
 mov qword ptr [r12 + 432], rax
 jmp xchain911_n10_α
 xchain911_n9_β:
 jmp xchain911_n12_α
.Lx939_0:
 .quad .Lx939_0_s
.Lx939_0_s:
 .string "1 = 1 ----> "
xchain911_n10_α:
xaltg940_a0_start:
bb390_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+480]
 mov qword ptr [r12 + 480], 6
 movabs rax, 1
 mov qword ptr [r12 + 488], rax
  .section .rodata
  .Lrkfn942: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn942]
 lea rsi, [r12 + 480]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 cmp eax, 99
 je xaltg940_a1_start
 jmp xaltg940_a0_succ
 xaltg940_a0_beta:
 jmp xaltg940_a1_start
xaltg940_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 440], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], 1
jmp xchain911_n11_α
xaltg940_a1_start:
# IR_LIT_S
bb391_α:
 mov qword ptr [r12 + 496], 1
 mov rax, qword ptr [rip + .Lx944_0]
 mov qword ptr [r12 + 504], rax
 jmp xaltg940_a1_succ
 xaltg940_a1_beta:
 jmp xchain911_n12_α
.Lx944_0:
 .quad .Lx944_0_s
.Lx944_0_s:
 .string "none"
xaltg940_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 440], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], 1
jmp xchain911_n11_α
xchain911_n10_β:
jmp xchain911_n12_α
xchain911_n11_α:
bb392_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+528]
 mov qword ptr [r12 + 528], 1
 mov rax, qword ptr [rip + .Lx946_0]
 mov qword ptr [r12 + 536], rax
 jmp .Lx946_1
.Lx946_0:
 .quad .Lx946_0_s
.Lx946_0_s:
 .string "1 = 1 ----> "
.Lx946_1:
# marshal arg1 = nested producer-box slot [r12+440] -> [r12+544]
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 552], rax
  .section .rodata
  .Lrkfn947: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn947]
 lea rsi, [r12 + 528]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je xchain911_n12_α
 jmp xchain911_n12_α
 xchain911_n11_β:
 jmp xchain911_n12_α
xchain911_n12_α:
# IR_LIT_S
bb393_α:
 mov qword ptr [r12 + 560], 1
 mov rax, qword ptr [rip + .Lx948_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain911_n13_α
 xchain911_n12_β:
 jmp proc_p18_ω
.Lx948_0:
 .quad .Lx948_0_s
.Lx948_0_s:
 .string "1 = 2 ----> "
xchain911_n13_α:
xaltg949_a0_start:
bb394_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+616]
 mov qword ptr [r12 + 616], 6
 movabs rax, 1
 mov qword ptr [r12 + 624], rax
  .section .rodata
  .Lrkfn951: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn951]
 lea rsi, [r12 + 616]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 600], rax
 mov qword ptr [r12 + 608], rdx
 cmp eax, 99
 je xaltg949_a1_start
 jmp xaltg949_a0_succ
 xaltg949_a0_beta:
 jmp xaltg949_a1_start
xaltg949_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 584], rax
 mov qword ptr [r12 + 592], 1
jmp xchain911_n14_α
xaltg949_a1_start:
# IR_LIT_S
bb395_α:
 mov qword ptr [r12 + 632], 1
 mov rax, qword ptr [rip + .Lx953_0]
 mov qword ptr [r12 + 640], rax
 jmp xaltg949_a1_succ
 xaltg949_a1_beta:
 jmp proc_p18_ω
.Lx953_0:
 .quad .Lx953_0_s
.Lx953_0_s:
 .string "none"
xaltg949_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 584], rax
 mov qword ptr [r12 + 592], 1
jmp xchain911_n14_α
xchain911_n13_β:
jmp proc_p18_ω
xchain911_n14_α:
bb396_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+664]
 mov qword ptr [r12 + 664], 1
 mov rax, qword ptr [rip + .Lx955_0]
 mov qword ptr [r12 + 672], rax
 jmp .Lx955_1
.Lx955_0:
 .quad .Lx955_0_s
.Lx955_0_s:
 .string "1 = 2 ----> "
.Lx955_1:
# marshal arg1 = nested producer-box slot [r12+576] -> [r12+680]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 680], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 688], rax
  .section .rodata
  .Lrkfn956: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn956]
 lea rsi, [r12 + 664]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 648], rax
 mov qword ptr [r12 + 656], rdx
 cmp eax, 99
 je proc_p18_ω
 jmp proc_p18_γ
 xchain911_n14_β:
 jmp proc_p18_ω
proc_p18_β:
jmp proc_p18_ω
proc_p18_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_p18_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_p19_α
proc_p19_α:
#=======================================================================================================================
    .global proc_p19_α
    .global proc_p19_β
    .global proc_p19_γ
    .global proc_p19_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_p19_α_body:
xchain957_n0_α:
# IR_LIT_S
bb397_α:
 mov qword ptr [r12 + 16], 1
 mov rax, qword ptr [rip + .Lx958_0]
 mov qword ptr [r12 + 24], rax
 jmp xchain957_n1_α
 xchain957_n0_β:
 jmp xchain957_n3_α
.Lx958_0:
 .quad .Lx958_0_s
.Lx958_0_s:
 .string "1 = 0 ----> "
xchain957_n1_α:
xaltg959_a0_start:
bb398_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+72]
 mov qword ptr [r12 + 72], 6
 movabs rax, 1
 mov qword ptr [r12 + 80], rax
  .section .rodata
  .Lrkfn961: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn961]
 lea rsi, [r12 + 72]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 56], rax
 mov qword ptr [r12 + 64], rdx
 cmp eax, 99
 je xaltg959_a1_start
 jmp xaltg959_a0_succ
 xaltg959_a0_beta:
 jmp xaltg959_a1_start
xaltg959_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain957_n2_α
xaltg959_a1_start:
# IR_LIT_S
bb399_α:
 mov qword ptr [r12 + 88], 1
 mov rax, qword ptr [rip + .Lx963_0]
 mov qword ptr [r12 + 96], rax
 jmp xaltg959_a1_succ
 xaltg959_a1_beta:
 jmp xchain957_n3_α
.Lx963_0:
 .quad .Lx963_0_s
.Lx963_0_s:
 .string "none"
xaltg959_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain957_n2_α
xchain957_n1_β:
jmp xchain957_n3_α
xchain957_n2_α:
bb400_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+120]
 mov qword ptr [r12 + 120], 1
 mov rax, qword ptr [rip + .Lx965_0]
 mov qword ptr [r12 + 128], rax
 jmp .Lx965_1
.Lx965_0:
 .quad .Lx965_0_s
.Lx965_0_s:
 .string "1 = 0 ----> "
.Lx965_1:
# marshal arg1 = nested producer-box slot [r12+32] -> [r12+136]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 136], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 144], rax
  .section .rodata
  .Lrkfn966: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn966]
 lea rsi, [r12 + 120]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 104], rax
 mov qword ptr [r12 + 112], rdx
 cmp eax, 99
 je xchain957_n3_α
 jmp xchain957_n3_α
 xchain957_n2_β:
 jmp xchain957_n3_α
xchain957_n3_α:
# IR_LIT_S
bb401_α:
 mov qword ptr [r12 + 152], 1
 mov rax, qword ptr [rip + .Lx967_0]
 mov qword ptr [r12 + 160], rax
 jmp xchain957_n4_α
 xchain957_n3_β:
 jmp xchain957_n6_α
.Lx967_0:
 .quad .Lx967_0_s
.Lx967_0_s:
 .string "-1 = 0 ----> "
xchain957_n4_α:
xaltg968_a0_start:
bb402_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+208]
 mov qword ptr [r12 + 208], 6
 movabs rax, 18446744073709551615
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lrkfn970: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn970]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xaltg968_a1_start
 jmp xaltg968_a0_succ
 xaltg968_a0_beta:
 jmp xaltg968_a1_start
xaltg968_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 168], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], 1
jmp xchain957_n5_α
xaltg968_a1_start:
# IR_LIT_S
bb403_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx972_0]
 mov qword ptr [r12 + 232], rax
 jmp xaltg968_a1_succ
 xaltg968_a1_beta:
 jmp xchain957_n6_α
.Lx972_0:
 .quad .Lx972_0_s
.Lx972_0_s:
 .string "none"
xaltg968_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 168], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], 1
jmp xchain957_n5_α
xchain957_n4_β:
jmp xchain957_n6_α
xchain957_n5_α:
bb404_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+256]
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx974_0]
 mov qword ptr [r12 + 264], rax
 jmp .Lx974_1
.Lx974_0:
 .quad .Lx974_0_s
.Lx974_0_s:
 .string "-1 = 0 ----> "
.Lx974_1:
# marshal arg1 = nested producer-box slot [r12+168] -> [r12+272]
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 280], rax
  .section .rodata
  .Lrkfn975: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn975]
 lea rsi, [r12 + 256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain957_n6_α
 jmp xchain957_n6_α
 xchain957_n5_β:
 jmp xchain957_n6_α
xchain957_n6_α:
# IR_LIT_S
bb405_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx976_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain957_n7_α
 xchain957_n6_β:
 jmp xchain957_n9_α
.Lx976_0:
 .quad .Lx976_0_s
.Lx976_0_s:
 .string "1 = -2 ----> "
xchain957_n7_α:
xaltg977_a0_start:
bb406_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+344]
 mov qword ptr [r12 + 344], 6
 movabs rax, 1
 mov qword ptr [r12 + 352], rax
  .section .rodata
  .Lrkfn979: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn979]
 lea rsi, [r12 + 344]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 328], rax
 mov qword ptr [r12 + 336], rdx
 cmp eax, 99
 je xaltg977_a1_start
 jmp xaltg977_a0_succ
 xaltg977_a0_beta:
 jmp xaltg977_a1_start
xaltg977_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 312], rax
 mov qword ptr [r12 + 320], 1
jmp xchain957_n8_α
xaltg977_a1_start:
# IR_LIT_S
bb407_α:
 mov qword ptr [r12 + 360], 1
 mov rax, qword ptr [rip + .Lx981_0]
 mov qword ptr [r12 + 368], rax
 jmp xaltg977_a1_succ
 xaltg977_a1_beta:
 jmp xchain957_n9_α
.Lx981_0:
 .quad .Lx981_0_s
.Lx981_0_s:
 .string "none"
xaltg977_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 312], rax
 mov qword ptr [r12 + 320], 1
jmp xchain957_n8_α
xchain957_n7_β:
jmp xchain957_n9_α
xchain957_n8_α:
bb408_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+392]
 mov qword ptr [r12 + 392], 1
 mov rax, qword ptr [rip + .Lx983_0]
 mov qword ptr [r12 + 400], rax
 jmp .Lx983_1
.Lx983_0:
 .quad .Lx983_0_s
.Lx983_0_s:
 .string "1 = -2 ----> "
.Lx983_1:
# marshal arg1 = nested producer-box slot [r12+304] -> [r12+408]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 408], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 416], rax
  .section .rodata
  .Lrkfn984: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn984]
 lea rsi, [r12 + 392]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 376], rax
 mov qword ptr [r12 + 384], rdx
 cmp eax, 99
 je xchain957_n9_α
 jmp xchain957_n9_α
 xchain957_n8_β:
 jmp xchain957_n9_α
xchain957_n9_α:
# IR_LIT_S
bb409_α:
 mov qword ptr [r12 + 424], 1
 mov rax, qword ptr [rip + .Lx985_0]
 mov qword ptr [r12 + 432], rax
 jmp xchain957_n10_α
 xchain957_n9_β:
 jmp xchain957_n12_α
.Lx985_0:
 .quad .Lx985_0_s
.Lx985_0_s:
 .string "-1 = -0 ----> "
xchain957_n10_α:
xaltg986_a0_start:
bb410_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+480]
 mov qword ptr [r12 + 480], 6
 movabs rax, 18446744073709551615
 mov qword ptr [r12 + 488], rax
  .section .rodata
  .Lrkfn988: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn988]
 lea rsi, [r12 + 480]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 cmp eax, 99
 je xaltg986_a1_start
 jmp xaltg986_a0_succ
 xaltg986_a0_beta:
 jmp xaltg986_a1_start
xaltg986_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 440], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], 1
jmp xchain957_n11_α
xaltg986_a1_start:
# IR_LIT_S
bb411_α:
 mov qword ptr [r12 + 496], 1
 mov rax, qword ptr [rip + .Lx990_0]
 mov qword ptr [r12 + 504], rax
 jmp xaltg986_a1_succ
 xaltg986_a1_beta:
 jmp xchain957_n12_α
.Lx990_0:
 .quad .Lx990_0_s
.Lx990_0_s:
 .string "none"
xaltg986_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 440], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], 1
jmp xchain957_n11_α
xchain957_n10_β:
jmp xchain957_n12_α
xchain957_n11_α:
bb412_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+528]
 mov qword ptr [r12 + 528], 1
 mov rax, qword ptr [rip + .Lx992_0]
 mov qword ptr [r12 + 536], rax
 jmp .Lx992_1
.Lx992_0:
 .quad .Lx992_0_s
.Lx992_0_s:
 .string "-1 = -0 ----> "
.Lx992_1:
# marshal arg1 = nested producer-box slot [r12+440] -> [r12+544]
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 552], rax
  .section .rodata
  .Lrkfn993: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn993]
 lea rsi, [r12 + 528]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je xchain957_n12_α
 jmp xchain957_n12_α
 xchain957_n11_β:
 jmp xchain957_n12_α
xchain957_n12_α:
# IR_LIT_S
bb413_α:
 mov qword ptr [r12 + 560], 1
 mov rax, qword ptr [rip + .Lx994_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain957_n13_α
 xchain957_n12_β:
 jmp proc_p19_ω
.Lx994_0:
 .quad .Lx994_0_s
.Lx994_0_s:
 .string "1 ~= 1 ----> "
xchain957_n13_α:
xaltg995_a0_start:
bb414_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+616]
 mov qword ptr [r12 + 616], 6
 movabs rax, 1
 mov qword ptr [r12 + 624], rax
  .section .rodata
  .Lrkfn997: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn997]
 lea rsi, [r12 + 616]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 600], rax
 mov qword ptr [r12 + 608], rdx
 cmp eax, 99
 je xaltg995_a1_start
 jmp xaltg995_a0_succ
 xaltg995_a0_beta:
 jmp xaltg995_a1_start
xaltg995_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 584], rax
 mov qword ptr [r12 + 592], 1
jmp xchain957_n14_α
xaltg995_a1_start:
# IR_LIT_S
bb415_α:
 mov qword ptr [r12 + 632], 1
 mov rax, qword ptr [rip + .Lx999_0]
 mov qword ptr [r12 + 640], rax
 jmp xaltg995_a1_succ
 xaltg995_a1_beta:
 jmp proc_p19_ω
.Lx999_0:
 .quad .Lx999_0_s
.Lx999_0_s:
 .string "none"
xaltg995_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 584], rax
 mov qword ptr [r12 + 592], 1
jmp xchain957_n14_α
xchain957_n13_β:
jmp proc_p19_ω
xchain957_n14_α:
bb416_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+664]
 mov qword ptr [r12 + 664], 1
 mov rax, qword ptr [rip + .Lx1001_0]
 mov qword ptr [r12 + 672], rax
 jmp .Lx1001_1
.Lx1001_0:
 .quad .Lx1001_0_s
.Lx1001_0_s:
 .string "1 ~= 1 ----> "
.Lx1001_1:
# marshal arg1 = nested producer-box slot [r12+576] -> [r12+680]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 680], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 688], rax
  .section .rodata
  .Lrkfn1002: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1002]
 lea rsi, [r12 + 664]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 648], rax
 mov qword ptr [r12 + 656], rdx
 cmp eax, 99
 je proc_p19_ω
 jmp proc_p19_γ
 xchain957_n14_β:
 jmp proc_p19_ω
proc_p19_β:
jmp proc_p19_ω
proc_p19_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_p19_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_p20_α
proc_p20_α:
#=======================================================================================================================
    .global proc_p20_α
    .global proc_p20_β
    .global proc_p20_γ
    .global proc_p20_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_p20_α_body:
xchain1003_n0_α:
# IR_LIT_S
bb417_α:
 mov qword ptr [r12 + 16], 1
 mov rax, qword ptr [rip + .Lx1004_0]
 mov qword ptr [r12 + 24], rax
 jmp xchain1003_n1_α
 xchain1003_n0_β:
 jmp xchain1003_n3_α
.Lx1004_0:
 .quad .Lx1004_0_s
.Lx1004_0_s:
 .string "1 ~= 2 ----> "
xchain1003_n1_α:
xaltg1005_a0_start:
bb418_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+72]
 mov qword ptr [r12 + 72], 6
 movabs rax, 1
 mov qword ptr [r12 + 80], rax
  .section .rodata
  .Lrkfn1007: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1007]
 lea rsi, [r12 + 72]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 56], rax
 mov qword ptr [r12 + 64], rdx
 cmp eax, 99
 je xaltg1005_a1_start
 jmp xaltg1005_a0_succ
 xaltg1005_a0_beta:
 jmp xaltg1005_a1_start
xaltg1005_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain1003_n2_α
xaltg1005_a1_start:
# IR_LIT_S
bb419_α:
 mov qword ptr [r12 + 88], 1
 mov rax, qword ptr [rip + .Lx1009_0]
 mov qword ptr [r12 + 96], rax
 jmp xaltg1005_a1_succ
 xaltg1005_a1_beta:
 jmp xchain1003_n3_α
.Lx1009_0:
 .quad .Lx1009_0_s
.Lx1009_0_s:
 .string "none"
xaltg1005_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain1003_n2_α
xchain1003_n1_β:
jmp xchain1003_n3_α
xchain1003_n2_α:
bb420_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+120]
 mov qword ptr [r12 + 120], 1
 mov rax, qword ptr [rip + .Lx1011_0]
 mov qword ptr [r12 + 128], rax
 jmp .Lx1011_1
.Lx1011_0:
 .quad .Lx1011_0_s
.Lx1011_0_s:
 .string "1 ~= 2 ----> "
.Lx1011_1:
# marshal arg1 = nested producer-box slot [r12+32] -> [r12+136]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 136], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 144], rax
  .section .rodata
  .Lrkfn1012: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1012]
 lea rsi, [r12 + 120]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 104], rax
 mov qword ptr [r12 + 112], rdx
 cmp eax, 99
 je xchain1003_n3_α
 jmp xchain1003_n3_α
 xchain1003_n2_β:
 jmp xchain1003_n3_α
xchain1003_n3_α:
# IR_LIT_S
bb421_α:
 mov qword ptr [r12 + 152], 1
 mov rax, qword ptr [rip + .Lx1013_0]
 mov qword ptr [r12 + 160], rax
 jmp xchain1003_n4_α
 xchain1003_n3_β:
 jmp xchain1003_n6_α
.Lx1013_0:
 .quad .Lx1013_0_s
.Lx1013_0_s:
 .string "1 ~= 0 ----> "
xchain1003_n4_α:
xaltg1014_a0_start:
bb422_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+208]
 mov qword ptr [r12 + 208], 6
 movabs rax, 1
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lrkfn1016: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1016]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xaltg1014_a1_start
 jmp xaltg1014_a0_succ
 xaltg1014_a0_beta:
 jmp xaltg1014_a1_start
xaltg1014_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 168], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], 1
jmp xchain1003_n5_α
xaltg1014_a1_start:
# IR_LIT_S
bb423_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx1018_0]
 mov qword ptr [r12 + 232], rax
 jmp xaltg1014_a1_succ
 xaltg1014_a1_beta:
 jmp xchain1003_n6_α
.Lx1018_0:
 .quad .Lx1018_0_s
.Lx1018_0_s:
 .string "none"
xaltg1014_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 168], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], 1
jmp xchain1003_n5_α
xchain1003_n4_β:
jmp xchain1003_n6_α
xchain1003_n5_α:
bb424_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+256]
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx1020_0]
 mov qword ptr [r12 + 264], rax
 jmp .Lx1020_1
.Lx1020_0:
 .quad .Lx1020_0_s
.Lx1020_0_s:
 .string "1 ~= 0 ----> "
.Lx1020_1:
# marshal arg1 = nested producer-box slot [r12+168] -> [r12+272]
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 280], rax
  .section .rodata
  .Lrkfn1021: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1021]
 lea rsi, [r12 + 256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain1003_n6_α
 jmp xchain1003_n6_α
 xchain1003_n5_β:
 jmp xchain1003_n6_α
xchain1003_n6_α:
# IR_LIT_S
bb425_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx1022_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain1003_n7_α
 xchain1003_n6_β:
 jmp xchain1003_n9_α
.Lx1022_0:
 .quad .Lx1022_0_s
.Lx1022_0_s:
 .string "-1 ~= 0 ----> "
xchain1003_n7_α:
xaltg1023_a0_start:
bb426_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+344]
 mov qword ptr [r12 + 344], 6
 movabs rax, 18446744073709551615
 mov qword ptr [r12 + 352], rax
  .section .rodata
  .Lrkfn1025: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1025]
 lea rsi, [r12 + 344]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 328], rax
 mov qword ptr [r12 + 336], rdx
 cmp eax, 99
 je xaltg1023_a1_start
 jmp xaltg1023_a0_succ
 xaltg1023_a0_beta:
 jmp xaltg1023_a1_start
xaltg1023_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 312], rax
 mov qword ptr [r12 + 320], 1
jmp xchain1003_n8_α
xaltg1023_a1_start:
# IR_LIT_S
bb427_α:
 mov qword ptr [r12 + 360], 1
 mov rax, qword ptr [rip + .Lx1027_0]
 mov qword ptr [r12 + 368], rax
 jmp xaltg1023_a1_succ
 xaltg1023_a1_beta:
 jmp xchain1003_n9_α
.Lx1027_0:
 .quad .Lx1027_0_s
.Lx1027_0_s:
 .string "none"
xaltg1023_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 312], rax
 mov qword ptr [r12 + 320], 1
jmp xchain1003_n8_α
xchain1003_n7_β:
jmp xchain1003_n9_α
xchain1003_n8_α:
bb428_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+392]
 mov qword ptr [r12 + 392], 1
 mov rax, qword ptr [rip + .Lx1029_0]
 mov qword ptr [r12 + 400], rax
 jmp .Lx1029_1
.Lx1029_0:
 .quad .Lx1029_0_s
.Lx1029_0_s:
 .string "-1 ~= 0 ----> "
.Lx1029_1:
# marshal arg1 = nested producer-box slot [r12+304] -> [r12+408]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 408], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 416], rax
  .section .rodata
  .Lrkfn1030: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1030]
 lea rsi, [r12 + 392]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 376], rax
 mov qword ptr [r12 + 384], rdx
 cmp eax, 99
 je xchain1003_n9_α
 jmp xchain1003_n9_α
 xchain1003_n8_β:
 jmp xchain1003_n9_α
xchain1003_n9_α:
# IR_LIT_S
bb429_α:
 mov qword ptr [r12 + 424], 1
 mov rax, qword ptr [rip + .Lx1031_0]
 mov qword ptr [r12 + 432], rax
 jmp xchain1003_n10_α
 xchain1003_n9_β:
 jmp xchain1003_n12_α
.Lx1031_0:
 .quad .Lx1031_0_s
.Lx1031_0_s:
 .string "1 ~= -2 ----> "
xchain1003_n10_α:
xaltg1032_a0_start:
bb430_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+480]
 mov qword ptr [r12 + 480], 6
 movabs rax, 1
 mov qword ptr [r12 + 488], rax
  .section .rodata
  .Lrkfn1034: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1034]
 lea rsi, [r12 + 480]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 cmp eax, 99
 je xaltg1032_a1_start
 jmp xaltg1032_a0_succ
 xaltg1032_a0_beta:
 jmp xaltg1032_a1_start
xaltg1032_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 440], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], 1
jmp xchain1003_n11_α
xaltg1032_a1_start:
# IR_LIT_S
bb431_α:
 mov qword ptr [r12 + 496], 1
 mov rax, qword ptr [rip + .Lx1036_0]
 mov qword ptr [r12 + 504], rax
 jmp xaltg1032_a1_succ
 xaltg1032_a1_beta:
 jmp xchain1003_n12_α
.Lx1036_0:
 .quad .Lx1036_0_s
.Lx1036_0_s:
 .string "none"
xaltg1032_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 440], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], 1
jmp xchain1003_n11_α
xchain1003_n10_β:
jmp xchain1003_n12_α
xchain1003_n11_α:
bb432_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+528]
 mov qword ptr [r12 + 528], 1
 mov rax, qword ptr [rip + .Lx1038_0]
 mov qword ptr [r12 + 536], rax
 jmp .Lx1038_1
.Lx1038_0:
 .quad .Lx1038_0_s
.Lx1038_0_s:
 .string "1 ~= -2 ----> "
.Lx1038_1:
# marshal arg1 = nested producer-box slot [r12+440] -> [r12+544]
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 552], rax
  .section .rodata
  .Lrkfn1039: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1039]
 lea rsi, [r12 + 528]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je xchain1003_n12_α
 jmp xchain1003_n12_α
 xchain1003_n11_β:
 jmp xchain1003_n12_α
xchain1003_n12_α:
# IR_LIT_S
bb433_α:
 mov qword ptr [r12 + 560], 1
 mov rax, qword ptr [rip + .Lx1040_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain1003_n13_α
 xchain1003_n12_β:
 jmp proc_p20_ω
.Lx1040_0:
 .quad .Lx1040_0_s
.Lx1040_0_s:
 .string "-1 ~= -0 ----> "
xchain1003_n13_α:
xaltg1041_a0_start:
bb434_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+616]
 mov qword ptr [r12 + 616], 6
 movabs rax, 18446744073709551615
 mov qword ptr [r12 + 624], rax
  .section .rodata
  .Lrkfn1043: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1043]
 lea rsi, [r12 + 616]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 600], rax
 mov qword ptr [r12 + 608], rdx
 cmp eax, 99
 je xaltg1041_a1_start
 jmp xaltg1041_a0_succ
 xaltg1041_a0_beta:
 jmp xaltg1041_a1_start
xaltg1041_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 584], rax
 mov qword ptr [r12 + 592], 1
jmp xchain1003_n14_α
xaltg1041_a1_start:
# IR_LIT_S
bb435_α:
 mov qword ptr [r12 + 632], 1
 mov rax, qword ptr [rip + .Lx1045_0]
 mov qword ptr [r12 + 640], rax
 jmp xaltg1041_a1_succ
 xaltg1041_a1_beta:
 jmp proc_p20_ω
.Lx1045_0:
 .quad .Lx1045_0_s
.Lx1045_0_s:
 .string "none"
xaltg1041_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 584], rax
 mov qword ptr [r12 + 592], 1
jmp xchain1003_n14_α
xchain1003_n13_β:
jmp proc_p20_ω
xchain1003_n14_α:
bb436_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+664]
 mov qword ptr [r12 + 664], 1
 mov rax, qword ptr [rip + .Lx1047_0]
 mov qword ptr [r12 + 672], rax
 jmp .Lx1047_1
.Lx1047_0:
 .quad .Lx1047_0_s
.Lx1047_0_s:
 .string "-1 ~= -0 ----> "
.Lx1047_1:
# marshal arg1 = nested producer-box slot [r12+576] -> [r12+680]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 680], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 688], rax
  .section .rodata
  .Lrkfn1048: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1048]
 lea rsi, [r12 + 664]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 648], rax
 mov qword ptr [r12 + 656], rdx
 cmp eax, 99
 je proc_p20_ω
 jmp proc_p20_γ
 xchain1003_n14_β:
 jmp proc_p20_ω
proc_p20_β:
jmp proc_p20_ω
proc_p20_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_p20_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_p21_α
proc_p21_α:
#=======================================================================================================================
    .global proc_p21_α
    .global proc_p21_β
    .global proc_p21_γ
    .global proc_p21_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_p21_α_body:
xchain1049_n0_α:
# IR_LIT_S
bb437_α:
 mov qword ptr [r12 + 16], 1
 mov rax, qword ptr [rip + .Lx1050_0]
 mov qword ptr [r12 + 24], rax
 jmp xchain1049_n1_α
 xchain1049_n0_β:
 jmp xchain1049_n3_α
.Lx1050_0:
 .quad .Lx1050_0_s
.Lx1050_0_s:
 .string "36 ^ -9 ----> "
xchain1049_n1_α:
xaltg1051_a0_start:
bb438_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_F -> [r12+72]
 mov qword ptr [r12 + 72], 7
 movabs rax, 4397250534387514593
 mov qword ptr [r12 + 80], rax
  .section .rodata
  .Lrkfn1053: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1053]
 lea rsi, [r12 + 72]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 56], rax
 mov qword ptr [r12 + 64], rdx
 cmp eax, 99
 je xaltg1051_a1_start
 jmp xaltg1051_a0_succ
 xaltg1051_a0_beta:
 jmp xaltg1051_a1_start
xaltg1051_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain1049_n2_α
xaltg1051_a1_start:
# IR_LIT_S
bb439_α:
 mov qword ptr [r12 + 88], 1
 mov rax, qword ptr [rip + .Lx1055_0]
 mov qword ptr [r12 + 96], rax
 jmp xaltg1051_a1_succ
 xaltg1051_a1_beta:
 jmp xchain1049_n3_α
.Lx1055_0:
 .quad .Lx1055_0_s
.Lx1055_0_s:
 .string "none"
xaltg1051_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain1049_n2_α
xchain1049_n1_β:
jmp xchain1049_n3_α
xchain1049_n2_α:
bb440_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+120]
 mov qword ptr [r12 + 120], 1
 mov rax, qword ptr [rip + .Lx1057_0]
 mov qword ptr [r12 + 128], rax
 jmp .Lx1057_1
.Lx1057_0:
 .quad .Lx1057_0_s
.Lx1057_0_s:
 .string "36 ^ -9 ----> "
.Lx1057_1:
# marshal arg1 = nested producer-box slot [r12+32] -> [r12+136]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 136], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 144], rax
  .section .rodata
  .Lrkfn1058: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1058]
 lea rsi, [r12 + 120]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 104], rax
 mov qword ptr [r12 + 112], rdx
 cmp eax, 99
 je xchain1049_n3_α
 jmp xchain1049_n3_α
 xchain1049_n2_β:
 jmp xchain1049_n3_α
xchain1049_n3_α:
# IR_LIT_S
bb441_α:
 mov qword ptr [r12 + 152], 1
 mov rax, qword ptr [rip + .Lx1059_0]
 mov qword ptr [r12 + 160], rax
 jmp xchain1049_n4_α
 xchain1049_n3_β:
 jmp proc_p21_ω
.Lx1059_0:
 .quad .Lx1059_0_s
.Lx1059_0_s:
 .string "-36 ^ -9 ----> "
xchain1049_n4_α:
xaltg1060_a0_start:
bb442_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_F -> [r12+208]
 mov qword ptr [r12 + 208], 7
 movabs rax, 13620622571242290401
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lrkfn1062: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1062]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xaltg1060_a1_start
 jmp xaltg1060_a0_succ
 xaltg1060_a0_beta:
 jmp xaltg1060_a1_start
xaltg1060_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 168], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], 1
jmp xchain1049_n5_α
xaltg1060_a1_start:
# IR_LIT_S
bb443_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx1064_0]
 mov qword ptr [r12 + 232], rax
 jmp xaltg1060_a1_succ
 xaltg1060_a1_beta:
 jmp proc_p21_ω
.Lx1064_0:
 .quad .Lx1064_0_s
.Lx1064_0_s:
 .string "none"
xaltg1060_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 168], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], 1
jmp xchain1049_n5_α
xchain1049_n4_β:
jmp proc_p21_ω
xchain1049_n5_α:
bb444_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+256]
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx1066_0]
 mov qword ptr [r12 + 264], rax
 jmp .Lx1066_1
.Lx1066_0:
 .quad .Lx1066_0_s
.Lx1066_0_s:
 .string "-36 ^ -9 ----> "
.Lx1066_1:
# marshal arg1 = nested producer-box slot [r12+168] -> [r12+272]
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 280], rax
  .section .rodata
  .Lrkfn1067: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1067]
 lea rsi, [r12 + 256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je proc_p21_ω
 jmp proc_p21_γ
 xchain1049_n5_β:
 jmp proc_p21_ω
proc_p21_β:
jmp proc_p21_ω
proc_p21_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_p21_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
proc_startup:
  push rbp
  mov rbp, rsp
  .section .rodata
  .Lclassspec0: .string "array(a,b,c,d,e,f,g)"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lclassspec0]
  call record_register@PLT
  .section .rodata
  .Lstartup_pname0: .string "p1"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_p1_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname1: .string "p2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_p2_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname2: .string "p3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_p3_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname3: .string "p4"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_p4_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname4: .string "p5"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname4]
  lea rsi, [rip + proc_p5_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname5: .string "p6"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname5]
  lea rsi, [rip + proc_p6_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname6: .string "p9"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname6]
  lea rsi, [rip + proc_p9_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname7: .string "p10"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname7]
  lea rsi, [rip + proc_p10_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname8: .string "p11"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname8]
  lea rsi, [rip + proc_p11_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname9: .string "p12"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname9]
  lea rsi, [rip + proc_p12_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname10: .string "p13"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname10]
  lea rsi, [rip + proc_p13_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname11: .string "p14"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname11]
  lea rsi, [rip + proc_p14_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname12: .string "p15"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname12]
  lea rsi, [rip + proc_p15_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname13: .string "p16"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname13]
  lea rsi, [rip + proc_p16_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname14: .string "p17"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname14]
  lea rsi, [rip + proc_p17_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname15: .string "p18"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname15]
  lea rsi, [rip + proc_p18_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname16: .string "p19"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname16]
  lea rsi, [rip + proc_p19_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname17: .string "p20"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname17]
  lea rsi, [rip + proc_p20_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname18: .string "p21"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname18]
  lea rsi, [rip + proc_p21_α]
  call rt_proc_set_fn@PLT
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
xchain1068_n0_α:
bb445_α:
  .section .rodata
  .Lcall495_pname: .string "p1"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall495_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 cmp eax, 99
 je xchain1068_n1_α
 jmp xchain1068_n1_α
xchain1068_n0_β:
 jmp xchain1068_n1_α
xchain1068_n1_α:
bb446_α:
  .section .rodata
  .Lcall496_pname: .string "p2"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall496_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je xchain1068_n2_α
 jmp xchain1068_n2_α
xchain1068_n1_β:
 jmp xchain1068_n2_α
xchain1068_n2_α:
bb447_α:
  .section .rodata
  .Lcall497_pname: .string "p3"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall497_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je xchain1068_n3_α
 jmp xchain1068_n3_α
xchain1068_n2_β:
 jmp xchain1068_n3_α
xchain1068_n3_α:
bb448_α:
  .section .rodata
  .Lcall498_pname: .string "p4"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall498_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je xchain1068_n4_α
 jmp xchain1068_n4_α
xchain1068_n3_β:
 jmp xchain1068_n4_α
xchain1068_n4_α:
bb449_α:
  .section .rodata
  .Lcall499_pname: .string "p5"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall499_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je xchain1068_n5_α
 jmp xchain1068_n5_α
xchain1068_n4_β:
 jmp xchain1068_n5_α
xchain1068_n5_α:
bb450_α:
  .section .rodata
  .Lcall500_pname: .string "p6"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall500_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je xchain1068_n6_α
 jmp xchain1068_n6_α
xchain1068_n5_β:
 jmp xchain1068_n6_α
xchain1068_n6_α:
bb451_α:
  .section .rodata
  .Lcall501_pname: .string "p9"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall501_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain1068_n7_α
 jmp xchain1068_n7_α
xchain1068_n6_β:
 jmp xchain1068_n7_α
xchain1068_n7_α:
bb452_α:
  .section .rodata
  .Lcall502_pname: .string "p10"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall502_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain1068_n8_α
 jmp xchain1068_n8_α
xchain1068_n7_β:
 jmp xchain1068_n8_α
xchain1068_n8_α:
bb453_α:
  .section .rodata
  .Lcall503_pname: .string "p11"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall503_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain1068_n9_α
 jmp xchain1068_n9_α
xchain1068_n8_β:
 jmp xchain1068_n9_α
xchain1068_n9_α:
bb454_α:
  .section .rodata
  .Lcall504_pname: .string "p12"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall504_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain1068_n10_α
 jmp xchain1068_n10_α
xchain1068_n9_β:
 jmp xchain1068_n10_α
xchain1068_n10_α:
bb455_α:
  .section .rodata
  .Lcall505_pname: .string "p13"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall505_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je xchain1068_n11_α
 jmp xchain1068_n11_α
xchain1068_n10_β:
 jmp xchain1068_n11_α
xchain1068_n11_α:
bb456_α:
  .section .rodata
  .Lcall506_pname: .string "p14"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall506_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp eax, 99
 je xchain1068_n12_α
 jmp xchain1068_n12_α
xchain1068_n11_β:
 jmp xchain1068_n12_α
xchain1068_n12_α:
bb457_α:
  .section .rodata
  .Lcall507_pname: .string "p15"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall507_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain1068_n13_α
 jmp xchain1068_n13_α
xchain1068_n12_β:
 jmp xchain1068_n13_α
xchain1068_n13_α:
bb458_α:
  .section .rodata
  .Lcall508_pname: .string "p16"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall508_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xchain1068_n14_α
 jmp xchain1068_n14_α
xchain1068_n13_β:
 jmp xchain1068_n14_α
xchain1068_n14_α:
bb459_α:
  .section .rodata
  .Lcall509_pname: .string "p17"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall509_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain1068_n15_α
 jmp xchain1068_n15_α
xchain1068_n14_β:
 jmp xchain1068_n15_α
xchain1068_n15_α:
bb460_α:
  .section .rodata
  .Lcall510_pname: .string "p18"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall510_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain1068_n16_α
 jmp xchain1068_n16_α
xchain1068_n15_β:
 jmp xchain1068_n16_α
xchain1068_n16_α:
bb461_α:
  .section .rodata
  .Lcall511_pname: .string "p19"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall511_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je xchain1068_n17_α
 jmp xchain1068_n17_α
xchain1068_n16_β:
 jmp xchain1068_n17_α
xchain1068_n17_α:
bb462_α:
  .section .rodata
  .Lcall512_pname: .string "p20"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall512_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je xchain1068_n18_α
 jmp xchain1068_n18_α
xchain1068_n17_β:
 jmp xchain1068_n18_α
xchain1068_n18_α:
bb463_α:
  .section .rodata
  .Lcall513_pname: .string "p21"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall513_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je main_ω
 jmp main_γ
xchain1068_n18_β:
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
