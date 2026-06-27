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
 .string "i := 10 ----> "
xchain0_n1_α:
xaltg2_a0_start:
bb2_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+72]
 mov qword ptr [r12 + 72], 6
 movabs rax, 10
 mov qword ptr [r12 + 80], rax
  .section .rodata
  .Lrkfn4: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn4]
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
 mov qword ptr [r12 + 88], 1
 mov rax, qword ptr [rip + .Lx6_0]
 mov qword ptr [r12 + 96], rax
 jmp xaltg2_a1_succ
 xaltg2_a1_beta:
 jmp xchain0_n3_α
.Lx6_0:
 .quad .Lx6_0_s
.Lx6_0_s:
 .string "none"
xaltg2_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain0_n2_α
xchain0_n1_β:
jmp xchain0_n3_α
xchain0_n2_α:
bb4_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+120]
 mov qword ptr [r12 + 120], 1
 mov rax, qword ptr [rip + .Lx8_0]
 mov qword ptr [r12 + 128], rax
 jmp .Lx8_1
.Lx8_0:
 .quad .Lx8_0_s
.Lx8_0_s:
 .string "i := 10 ----> "
.Lx8_1:
# marshal arg1 = nested producer-box slot [r12+32] -> [r12+136]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 136], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 144], rax
  .section .rodata
  .Lrkfn9: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn9]
 lea rsi, [r12 + 120]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 104], rax
 mov qword ptr [r12 + 112], rdx
 cmp eax, 99
 je xchain0_n3_α
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n3_α
xchain0_n3_α:
# IR_LIT_S
bb5_α:
 mov qword ptr [r12 + 152], 1
 mov rax, qword ptr [rip + .Lx10_0]
 mov qword ptr [r12 + 160], rax
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n6_α
.Lx10_0:
 .quad .Lx10_0_s
.Lx10_0_s:
 .string "i =:= 9 ----> "
xchain0_n4_α:
xaltg11_a0_start:
bb6_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+208]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
  .section .rodata
  .Lrkfn13: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn13]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xaltg11_a1_start
 jmp xaltg11_a0_succ
 xaltg11_a0_beta:
 jmp xaltg11_a1_start
xaltg11_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 168], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], 1
jmp xchain0_n5_α
xaltg11_a1_start:
# IR_LIT_S
bb7_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx15_0]
 mov qword ptr [r12 + 232], rax
 jmp xaltg11_a1_succ
 xaltg11_a1_beta:
 jmp xchain0_n6_α
.Lx15_0:
 .quad .Lx15_0_s
.Lx15_0_s:
 .string "none"
xaltg11_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 168], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], 1
jmp xchain0_n5_α
xchain0_n4_β:
jmp xchain0_n6_α
xchain0_n5_α:
bb8_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+256]
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx17_0]
 mov qword ptr [r12 + 264], rax
 jmp .Lx17_1
.Lx17_0:
 .quad .Lx17_0_s
.Lx17_0_s:
 .string "i =:= 9 ----> "
.Lx17_1:
# marshal arg1 = nested producer-box slot [r12+168] -> [r12+272]
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 280], rax
  .section .rodata
  .Lrkfn18: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn18]
 lea rsi, [r12 + 256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain0_n6_α
 jmp xchain0_n6_α
 xchain0_n5_β:
 jmp xchain0_n6_α
xchain0_n6_α:
# IR_LIT_S
bb9_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx19_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp xchain0_n9_α
.Lx19_0:
 .quad .Lx19_0_s
.Lx19_0_s:
 .string "i ----> "
xchain0_n7_α:
xaltg20_a0_start:
bb10_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+344]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 344], rax
 mov qword ptr [r12 + 352], rdx
  .section .rodata
  .Lrkfn22: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn22]
 lea rsi, [r12 + 344]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 328], rax
 mov qword ptr [r12 + 336], rdx
 cmp eax, 99
 je xaltg20_a1_start
 jmp xaltg20_a0_succ
 xaltg20_a0_beta:
 jmp xaltg20_a1_start
xaltg20_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 312], rax
 mov qword ptr [r12 + 320], 1
jmp xchain0_n8_α
xaltg20_a1_start:
# IR_LIT_S
bb11_α:
 mov qword ptr [r12 + 360], 1
 mov rax, qword ptr [rip + .Lx24_0]
 mov qword ptr [r12 + 368], rax
 jmp xaltg20_a1_succ
 xaltg20_a1_beta:
 jmp xchain0_n9_α
.Lx24_0:
 .quad .Lx24_0_s
.Lx24_0_s:
 .string "none"
xaltg20_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 312], rax
 mov qword ptr [r12 + 320], 1
jmp xchain0_n8_α
xchain0_n7_β:
jmp xchain0_n9_α
xchain0_n8_α:
bb12_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+392]
 mov qword ptr [r12 + 392], 1
 mov rax, qword ptr [rip + .Lx26_0]
 mov qword ptr [r12 + 400], rax
 jmp .Lx26_1
.Lx26_0:
 .quad .Lx26_0_s
.Lx26_0_s:
 .string "i ----> "
.Lx26_1:
# marshal arg1 = nested producer-box slot [r12+304] -> [r12+408]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 408], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 416], rax
  .section .rodata
  .Lrkfn27: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn27]
 lea rsi, [r12 + 392]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 376], rax
 mov qword ptr [r12 + 384], rdx
 cmp eax, 99
 je xchain0_n9_α
 jmp xchain0_n9_α
 xchain0_n8_β:
 jmp xchain0_n9_α
xchain0_n9_α:
# IR_LIT_S
bb13_α:
 mov qword ptr [r12 + 424], 1
 mov rax, qword ptr [rip + .Lx28_0]
 mov qword ptr [r12 + 432], rax
 jmp xchain0_n10_α
 xchain0_n9_β:
 jmp xchain0_n12_α
.Lx28_0:
 .quad .Lx28_0_s
.Lx28_0_s:
 .string "i := 10 ----> "
xchain0_n10_α:
xaltg29_a0_start:
bb14_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+480]
 mov qword ptr [r12 + 480], 6
 movabs rax, 10
 mov qword ptr [r12 + 488], rax
  .section .rodata
  .Lrkfn31: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn31]
 lea rsi, [r12 + 480]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 cmp eax, 99
 je xaltg29_a1_start
 jmp xaltg29_a0_succ
 xaltg29_a0_beta:
 jmp xaltg29_a1_start
xaltg29_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 440], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], 1
jmp xchain0_n11_α
xaltg29_a1_start:
# IR_LIT_S
bb15_α:
 mov qword ptr [r12 + 496], 1
 mov rax, qword ptr [rip + .Lx33_0]
 mov qword ptr [r12 + 504], rax
 jmp xaltg29_a1_succ
 xaltg29_a1_beta:
 jmp xchain0_n12_α
.Lx33_0:
 .quad .Lx33_0_s
.Lx33_0_s:
 .string "none"
xaltg29_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 440], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], 1
jmp xchain0_n11_α
xchain0_n10_β:
jmp xchain0_n12_α
xchain0_n11_α:
bb16_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+528]
 mov qword ptr [r12 + 528], 1
 mov rax, qword ptr [rip + .Lx35_0]
 mov qword ptr [r12 + 536], rax
 jmp .Lx35_1
.Lx35_0:
 .quad .Lx35_0_s
.Lx35_0_s:
 .string "i := 10 ----> "
.Lx35_1:
# marshal arg1 = nested producer-box slot [r12+440] -> [r12+544]
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 552], rax
  .section .rodata
  .Lrkfn36: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn36]
 lea rsi, [r12 + 528]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je xchain0_n12_α
 jmp xchain0_n12_α
 xchain0_n11_β:
 jmp xchain0_n12_α
xchain0_n12_α:
# IR_LIT_S
bb17_α:
 mov qword ptr [r12 + 560], 1
 mov rax, qword ptr [rip + .Lx37_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain0_n13_α
 xchain0_n12_β:
 jmp xchain0_n15_α
.Lx37_0:
 .quad .Lx37_0_s
.Lx37_0_s:
 .string "i =:= 10 ----> "
xchain0_n13_α:
xaltg38_a0_start:
bb18_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+616]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 616], rax
 mov qword ptr [r12 + 624], rdx
  .section .rodata
  .Lrkfn40: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn40]
 lea rsi, [r12 + 616]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 600], rax
 mov qword ptr [r12 + 608], rdx
 cmp eax, 99
 je xaltg38_a1_start
 jmp xaltg38_a0_succ
 xaltg38_a0_beta:
 jmp xaltg38_a1_start
xaltg38_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 584], rax
 mov qword ptr [r12 + 592], 1
jmp xchain0_n14_α
xaltg38_a1_start:
# IR_LIT_S
bb19_α:
 mov qword ptr [r12 + 632], 1
 mov rax, qword ptr [rip + .Lx42_0]
 mov qword ptr [r12 + 640], rax
 jmp xaltg38_a1_succ
 xaltg38_a1_beta:
 jmp xchain0_n15_α
.Lx42_0:
 .quad .Lx42_0_s
.Lx42_0_s:
 .string "none"
xaltg38_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 584], rax
 mov qword ptr [r12 + 592], 1
jmp xchain0_n14_α
xchain0_n13_β:
jmp xchain0_n15_α
xchain0_n14_α:
bb20_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+664]
 mov qword ptr [r12 + 664], 1
 mov rax, qword ptr [rip + .Lx44_0]
 mov qword ptr [r12 + 672], rax
 jmp .Lx44_1
.Lx44_0:
 .quad .Lx44_0_s
.Lx44_0_s:
 .string "i =:= 10 ----> "
.Lx44_1:
# marshal arg1 = nested producer-box slot [r12+576] -> [r12+680]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 680], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 688], rax
  .section .rodata
  .Lrkfn45: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn45]
 lea rsi, [r12 + 664]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 648], rax
 mov qword ptr [r12 + 656], rdx
 cmp eax, 99
 je xchain0_n15_α
 jmp xchain0_n15_α
 xchain0_n14_β:
 jmp xchain0_n15_α
xchain0_n15_α:
# IR_LIT_S
bb21_α:
 mov qword ptr [r12 + 696], 1
 mov rax, qword ptr [rip + .Lx46_0]
 mov qword ptr [r12 + 704], rax
 jmp xchain0_n16_α
 xchain0_n15_β:
 jmp xchain0_n18_α
.Lx46_0:
 .quad .Lx46_0_s
.Lx46_0_s:
 .string "i ----> "
xchain0_n16_α:
xaltg47_a0_start:
bb22_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+752]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
  .section .rodata
  .Lrkfn49: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn49]
 lea rsi, [r12 + 752]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 cmp eax, 99
 je xaltg47_a1_start
 jmp xaltg47_a0_succ
 xaltg47_a0_beta:
 jmp xaltg47_a1_start
xaltg47_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 712], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], 1
jmp xchain0_n17_α
xaltg47_a1_start:
# IR_LIT_S
bb23_α:
 mov qword ptr [r12 + 768], 1
 mov rax, qword ptr [rip + .Lx51_0]
 mov qword ptr [r12 + 776], rax
 jmp xaltg47_a1_succ
 xaltg47_a1_beta:
 jmp xchain0_n18_α
.Lx51_0:
 .quad .Lx51_0_s
.Lx51_0_s:
 .string "none"
xaltg47_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 712], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], 1
jmp xchain0_n17_α
xchain0_n16_β:
jmp xchain0_n18_α
xchain0_n17_α:
bb24_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+800]
 mov qword ptr [r12 + 800], 1
 mov rax, qword ptr [rip + .Lx53_0]
 mov qword ptr [r12 + 808], rax
 jmp .Lx53_1
.Lx53_0:
 .quad .Lx53_0_s
.Lx53_0_s:
 .string "i ----> "
.Lx53_1:
# marshal arg1 = nested producer-box slot [r12+712] -> [r12+816]
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 824], rax
  .section .rodata
  .Lrkfn54: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn54]
 lea rsi, [r12 + 800]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 cmp eax, 99
 je xchain0_n18_α
 jmp xchain0_n18_α
 xchain0_n17_β:
 jmp xchain0_n18_α
xchain0_n18_α:
# IR_LIT_S
bb25_α:
 mov qword ptr [r12 + 832], 1
 mov rax, qword ptr [rip + .Lx55_0]
 mov qword ptr [r12 + 840], rax
 jmp xchain0_n19_α
 xchain0_n18_β:
 jmp xchain0_n21_α
.Lx55_0:
 .quad .Lx55_0_s
.Lx55_0_s:
 .string "i := 10 ----> "
xchain0_n19_α:
xaltg56_a0_start:
bb26_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+888]
 mov qword ptr [r12 + 888], 6
 movabs rax, 10
 mov qword ptr [r12 + 896], rax
  .section .rodata
  .Lrkfn58: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn58]
 lea rsi, [r12 + 888]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 872], rax
 mov qword ptr [r12 + 880], rdx
 cmp eax, 99
 je xaltg56_a1_start
 jmp xaltg56_a0_succ
 xaltg56_a0_beta:
 jmp xaltg56_a1_start
xaltg56_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 856], rax
 mov qword ptr [r12 + 864], 1
jmp xchain0_n20_α
xaltg56_a1_start:
# IR_LIT_S
bb27_α:
 mov qword ptr [r12 + 904], 1
 mov rax, qword ptr [rip + .Lx60_0]
 mov qword ptr [r12 + 912], rax
 jmp xaltg56_a1_succ
 xaltg56_a1_beta:
 jmp xchain0_n21_α
.Lx60_0:
 .quad .Lx60_0_s
.Lx60_0_s:
 .string "none"
xaltg56_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 904]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 912]
 mov qword ptr [r12 + 856], rax
 mov qword ptr [r12 + 864], 1
jmp xchain0_n20_α
xchain0_n19_β:
jmp xchain0_n21_α
xchain0_n20_α:
bb28_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+936]
 mov qword ptr [r12 + 936], 1
 mov rax, qword ptr [rip + .Lx62_0]
 mov qword ptr [r12 + 944], rax
 jmp .Lx62_1
.Lx62_0:
 .quad .Lx62_0_s
.Lx62_0_s:
 .string "i := 10 ----> "
.Lx62_1:
# marshal arg1 = nested producer-box slot [r12+848] -> [r12+952]
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 952], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 960], rax
  .section .rodata
  .Lrkfn63: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn63]
 lea rsi, [r12 + 936]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 920], rax
 mov qword ptr [r12 + 928], rdx
 cmp eax, 99
 je xchain0_n21_α
 jmp xchain0_n21_α
 xchain0_n20_β:
 jmp xchain0_n21_α
xchain0_n21_α:
# IR_LIT_S
bb29_α:
 mov qword ptr [r12 + 968], 1
 mov rax, qword ptr [rip + .Lx64_0]
 mov qword ptr [r12 + 976], rax
 jmp xchain0_n22_α
 xchain0_n21_β:
 jmp xchain0_n24_α
.Lx64_0:
 .quad .Lx64_0_s
.Lx64_0_s:
 .string "i =:= 11 ----> "
xchain0_n22_α:
xaltg65_a0_start:
bb30_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+1024]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
  .section .rodata
  .Lrkfn67: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn67]
 lea rsi, [r12 + 1024]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 cmp eax, 99
 je xaltg65_a1_start
 jmp xaltg65_a0_succ
 xaltg65_a0_beta:
 jmp xaltg65_a1_start
xaltg65_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1008]
 mov qword ptr [r12 + 984], rax
 mov rax, qword ptr [r12 + 1016]
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], 1
jmp xchain0_n23_α
xaltg65_a1_start:
# IR_LIT_S
bb31_α:
 mov qword ptr [r12 + 1040], 1
 mov rax, qword ptr [rip + .Lx69_0]
 mov qword ptr [r12 + 1048], rax
 jmp xaltg65_a1_succ
 xaltg65_a1_beta:
 jmp xchain0_n24_α
.Lx69_0:
 .quad .Lx69_0_s
.Lx69_0_s:
 .string "none"
xaltg65_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1040]
 mov qword ptr [r12 + 984], rax
 mov rax, qword ptr [r12 + 1048]
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], 1
jmp xchain0_n23_α
xchain0_n22_β:
jmp xchain0_n24_α
xchain0_n23_α:
bb32_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1072]
 mov qword ptr [r12 + 1072], 1
 mov rax, qword ptr [rip + .Lx71_0]
 mov qword ptr [r12 + 1080], rax
 jmp .Lx71_1
.Lx71_0:
 .quad .Lx71_0_s
.Lx71_0_s:
 .string "i =:= 11 ----> "
.Lx71_1:
# marshal arg1 = nested producer-box slot [r12+984] -> [r12+1088]
 mov rax, qword ptr [r12 + 984]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 992]
 mov qword ptr [r12 + 1096], rax
  .section .rodata
  .Lrkfn72: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn72]
 lea rsi, [r12 + 1072]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je xchain0_n24_α
 jmp xchain0_n24_α
 xchain0_n23_β:
 jmp xchain0_n24_α
xchain0_n24_α:
# IR_LIT_S
bb33_α:
 mov qword ptr [r12 + 1104], 1
 mov rax, qword ptr [rip + .Lx73_0]
 mov qword ptr [r12 + 1112], rax
 jmp xchain0_n25_α
 xchain0_n24_β:
 jmp xchain0_n27_α
.Lx73_0:
 .quad .Lx73_0_s
.Lx73_0_s:
 .string "i ----> "
xchain0_n25_α:
xaltg74_a0_start:
bb34_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+1160]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1160], rax
 mov qword ptr [r12 + 1168], rdx
  .section .rodata
  .Lrkfn76: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn76]
 lea rsi, [r12 + 1160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1144], rax
 mov qword ptr [r12 + 1152], rdx
 cmp eax, 99
 je xaltg74_a1_start
 jmp xaltg74_a0_succ
 xaltg74_a0_beta:
 jmp xaltg74_a1_start
xaltg74_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 1152]
 mov qword ptr [r12 + 1128], rax
 mov qword ptr [r12 + 1136], 1
jmp xchain0_n26_α
xaltg74_a1_start:
# IR_LIT_S
bb35_α:
 mov qword ptr [r12 + 1176], 1
 mov rax, qword ptr [rip + .Lx78_0]
 mov qword ptr [r12 + 1184], rax
 jmp xaltg74_a1_succ
 xaltg74_a1_beta:
 jmp xchain0_n27_α
.Lx78_0:
 .quad .Lx78_0_s
.Lx78_0_s:
 .string "none"
xaltg74_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1176]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 1184]
 mov qword ptr [r12 + 1128], rax
 mov qword ptr [r12 + 1136], 1
jmp xchain0_n26_α
xchain0_n25_β:
jmp xchain0_n27_α
xchain0_n26_α:
bb36_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1208]
 mov qword ptr [r12 + 1208], 1
 mov rax, qword ptr [rip + .Lx80_0]
 mov qword ptr [r12 + 1216], rax
 jmp .Lx80_1
.Lx80_0:
 .quad .Lx80_0_s
.Lx80_0_s:
 .string "i ----> "
.Lx80_1:
# marshal arg1 = nested producer-box slot [r12+1120] -> [r12+1224]
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 1224], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 1232], rax
  .section .rodata
  .Lrkfn81: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn81]
 lea rsi, [r12 + 1208]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1192], rax
 mov qword ptr [r12 + 1200], rdx
 cmp eax, 99
 je xchain0_n27_α
 jmp xchain0_n27_α
 xchain0_n26_β:
 jmp xchain0_n27_α
xchain0_n27_α:
# IR_LIT_S
bb37_α:
 mov qword ptr [r12 + 1240], 1
 mov rax, qword ptr [rip + .Lx82_0]
 mov qword ptr [r12 + 1248], rax
 jmp xchain0_n28_α
 xchain0_n27_β:
 jmp xchain0_n30_α
.Lx82_0:
 .quad .Lx82_0_s
.Lx82_0_s:
 .string "i := 10 ----> "
xchain0_n28_α:
xaltg83_a0_start:
bb38_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+1296]
 mov qword ptr [r12 + 1296], 6
 movabs rax, 10
 mov qword ptr [r12 + 1304], rax
  .section .rodata
  .Lrkfn85: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn85]
 lea rsi, [r12 + 1296]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 cmp eax, 99
 je xaltg83_a1_start
 jmp xaltg83_a0_succ
 xaltg83_a0_beta:
 jmp xaltg83_a1_start
xaltg83_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1280]
 mov qword ptr [r12 + 1256], rax
 mov rax, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], 1
jmp xchain0_n29_α
xaltg83_a1_start:
# IR_LIT_S
bb39_α:
 mov qword ptr [r12 + 1312], 1
 mov rax, qword ptr [rip + .Lx87_0]
 mov qword ptr [r12 + 1320], rax
 jmp xaltg83_a1_succ
 xaltg83_a1_beta:
 jmp xchain0_n30_α
.Lx87_0:
 .quad .Lx87_0_s
.Lx87_0_s:
 .string "none"
xaltg83_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1312]
 mov qword ptr [r12 + 1256], rax
 mov rax, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], 1
jmp xchain0_n29_α
xchain0_n28_β:
jmp xchain0_n30_α
xchain0_n29_α:
bb40_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1344]
 mov qword ptr [r12 + 1344], 1
 mov rax, qword ptr [rip + .Lx89_0]
 mov qword ptr [r12 + 1352], rax
 jmp .Lx89_1
.Lx89_0:
 .quad .Lx89_0_s
.Lx89_0_s:
 .string "i := 10 ----> "
.Lx89_1:
# marshal arg1 = nested producer-box slot [r12+1256] -> [r12+1360]
 mov rax, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 1360], rax
 mov rax, qword ptr [r12 + 1264]
 mov qword ptr [r12 + 1368], rax
  .section .rodata
  .Lrkfn90: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn90]
 lea rsi, [r12 + 1344]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 cmp eax, 99
 je xchain0_n30_α
 jmp xchain0_n30_α
 xchain0_n29_β:
 jmp xchain0_n30_α
xchain0_n30_α:
# IR_LIT_S
bb41_α:
 mov qword ptr [r12 + 1376], 1
 mov rax, qword ptr [rip + .Lx91_0]
 mov qword ptr [r12 + 1384], rax
 jmp xchain0_n31_α
 xchain0_n30_β:
 jmp proc_p1_ω
.Lx91_0:
 .quad .Lx91_0_s
.Lx91_0_s:
 .string "i >=:= 9 ----> "
xchain0_n31_α:
xaltg92_a0_start:
bb42_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+1432]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1432], rax
 mov qword ptr [r12 + 1440], rdx
  .section .rodata
  .Lrkfn94: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn94]
 lea rsi, [r12 + 1432]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1416], rax
 mov qword ptr [r12 + 1424], rdx
 cmp eax, 99
 je xaltg92_a1_start
 jmp xaltg92_a0_succ
 xaltg92_a0_beta:
 jmp xaltg92_a1_start
xaltg92_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1416]
 mov qword ptr [r12 + 1392], rax
 mov rax, qword ptr [r12 + 1424]
 mov qword ptr [r12 + 1400], rax
 mov qword ptr [r12 + 1408], 1
jmp xchain0_n32_α
xaltg92_a1_start:
# IR_LIT_S
bb43_α:
 mov qword ptr [r12 + 1448], 1
 mov rax, qword ptr [rip + .Lx96_0]
 mov qword ptr [r12 + 1456], rax
 jmp xaltg92_a1_succ
 xaltg92_a1_beta:
 jmp proc_p1_ω
.Lx96_0:
 .quad .Lx96_0_s
.Lx96_0_s:
 .string "none"
xaltg92_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1448]
 mov qword ptr [r12 + 1392], rax
 mov rax, qword ptr [r12 + 1456]
 mov qword ptr [r12 + 1400], rax
 mov qword ptr [r12 + 1408], 1
jmp xchain0_n32_α
xchain0_n31_β:
jmp proc_p1_ω
xchain0_n32_α:
bb44_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1480]
 mov qword ptr [r12 + 1480], 1
 mov rax, qword ptr [rip + .Lx98_0]
 mov qword ptr [r12 + 1488], rax
 jmp .Lx98_1
.Lx98_0:
 .quad .Lx98_0_s
.Lx98_0_s:
 .string "i >=:= 9 ----> "
.Lx98_1:
# marshal arg1 = nested producer-box slot [r12+1392] -> [r12+1496]
 mov rax, qword ptr [r12 + 1392]
 mov qword ptr [r12 + 1496], rax
 mov rax, qword ptr [r12 + 1400]
 mov qword ptr [r12 + 1504], rax
  .section .rodata
  .Lrkfn99: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn99]
 lea rsi, [r12 + 1480]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1464], rax
 mov qword ptr [r12 + 1472], rdx
 cmp eax, 99
 je proc_p1_ω
 jmp proc_p1_γ
 xchain0_n32_β:
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
xchain100_n0_α:
# IR_LIT_S
bb45_α:
 mov qword ptr [r12 + 16], 1
 mov rax, qword ptr [rip + .Lx101_0]
 mov qword ptr [r12 + 24], rax
 jmp xchain100_n1_α
 xchain100_n0_β:
 jmp xchain100_n3_α
.Lx101_0:
 .quad .Lx101_0_s
.Lx101_0_s:
 .string "i ----> "
xchain100_n1_α:
xaltg102_a0_start:
bb46_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+72]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 72], rax
 mov qword ptr [r12 + 80], rdx
  .section .rodata
  .Lrkfn104: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn104]
 lea rsi, [r12 + 72]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 56], rax
 mov qword ptr [r12 + 64], rdx
 cmp eax, 99
 je xaltg102_a1_start
 jmp xaltg102_a0_succ
 xaltg102_a0_beta:
 jmp xaltg102_a1_start
xaltg102_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain100_n2_α
xaltg102_a1_start:
# IR_LIT_S
bb47_α:
 mov qword ptr [r12 + 88], 1
 mov rax, qword ptr [rip + .Lx106_0]
 mov qword ptr [r12 + 96], rax
 jmp xaltg102_a1_succ
 xaltg102_a1_beta:
 jmp xchain100_n3_α
.Lx106_0:
 .quad .Lx106_0_s
.Lx106_0_s:
 .string "none"
xaltg102_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain100_n2_α
xchain100_n1_β:
jmp xchain100_n3_α
xchain100_n2_α:
bb48_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+120]
 mov qword ptr [r12 + 120], 1
 mov rax, qword ptr [rip + .Lx108_0]
 mov qword ptr [r12 + 128], rax
 jmp .Lx108_1
.Lx108_0:
 .quad .Lx108_0_s
.Lx108_0_s:
 .string "i ----> "
.Lx108_1:
# marshal arg1 = nested producer-box slot [r12+32] -> [r12+136]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 136], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 144], rax
  .section .rodata
  .Lrkfn109: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn109]
 lea rsi, [r12 + 120]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 104], rax
 mov qword ptr [r12 + 112], rdx
 cmp eax, 99
 je xchain100_n3_α
 jmp xchain100_n3_α
 xchain100_n2_β:
 jmp xchain100_n3_α
xchain100_n3_α:
# IR_LIT_S
bb49_α:
 mov qword ptr [r12 + 152], 1
 mov rax, qword ptr [rip + .Lx110_0]
 mov qword ptr [r12 + 160], rax
 jmp xchain100_n4_α
 xchain100_n3_β:
 jmp xchain100_n6_α
.Lx110_0:
 .quad .Lx110_0_s
.Lx110_0_s:
 .string "i := 10 ----> "
xchain100_n4_α:
xaltg111_a0_start:
bb50_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+208]
 mov qword ptr [r12 + 208], 6
 movabs rax, 10
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lrkfn113: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn113]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xaltg111_a1_start
 jmp xaltg111_a0_succ
 xaltg111_a0_beta:
 jmp xaltg111_a1_start
xaltg111_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 168], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], 1
jmp xchain100_n5_α
xaltg111_a1_start:
# IR_LIT_S
bb51_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx115_0]
 mov qword ptr [r12 + 232], rax
 jmp xaltg111_a1_succ
 xaltg111_a1_beta:
 jmp xchain100_n6_α
.Lx115_0:
 .quad .Lx115_0_s
.Lx115_0_s:
 .string "none"
xaltg111_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 168], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], 1
jmp xchain100_n5_α
xchain100_n4_β:
jmp xchain100_n6_α
xchain100_n5_α:
bb52_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+256]
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx117_0]
 mov qword ptr [r12 + 264], rax
 jmp .Lx117_1
.Lx117_0:
 .quad .Lx117_0_s
.Lx117_0_s:
 .string "i := 10 ----> "
.Lx117_1:
# marshal arg1 = nested producer-box slot [r12+168] -> [r12+272]
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 280], rax
  .section .rodata
  .Lrkfn118: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn118]
 lea rsi, [r12 + 256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain100_n6_α
 jmp xchain100_n6_α
 xchain100_n5_β:
 jmp xchain100_n6_α
xchain100_n6_α:
# IR_LIT_S
bb53_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx119_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain100_n7_α
 xchain100_n6_β:
 jmp xchain100_n9_α
.Lx119_0:
 .quad .Lx119_0_s
.Lx119_0_s:
 .string "i >=:= 10 ----> "
xchain100_n7_α:
xaltg120_a0_start:
bb54_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+344]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 344], rax
 mov qword ptr [r12 + 352], rdx
  .section .rodata
  .Lrkfn122: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn122]
 lea rsi, [r12 + 344]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 328], rax
 mov qword ptr [r12 + 336], rdx
 cmp eax, 99
 je xaltg120_a1_start
 jmp xaltg120_a0_succ
 xaltg120_a0_beta:
 jmp xaltg120_a1_start
xaltg120_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 312], rax
 mov qword ptr [r12 + 320], 1
jmp xchain100_n8_α
xaltg120_a1_start:
# IR_LIT_S
bb55_α:
 mov qword ptr [r12 + 360], 1
 mov rax, qword ptr [rip + .Lx124_0]
 mov qword ptr [r12 + 368], rax
 jmp xaltg120_a1_succ
 xaltg120_a1_beta:
 jmp xchain100_n9_α
.Lx124_0:
 .quad .Lx124_0_s
.Lx124_0_s:
 .string "none"
xaltg120_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 312], rax
 mov qword ptr [r12 + 320], 1
jmp xchain100_n8_α
xchain100_n7_β:
jmp xchain100_n9_α
xchain100_n8_α:
bb56_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+392]
 mov qword ptr [r12 + 392], 1
 mov rax, qword ptr [rip + .Lx126_0]
 mov qword ptr [r12 + 400], rax
 jmp .Lx126_1
.Lx126_0:
 .quad .Lx126_0_s
.Lx126_0_s:
 .string "i >=:= 10 ----> "
.Lx126_1:
# marshal arg1 = nested producer-box slot [r12+304] -> [r12+408]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 408], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 416], rax
  .section .rodata
  .Lrkfn127: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn127]
 lea rsi, [r12 + 392]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 376], rax
 mov qword ptr [r12 + 384], rdx
 cmp eax, 99
 je xchain100_n9_α
 jmp xchain100_n9_α
 xchain100_n8_β:
 jmp xchain100_n9_α
xchain100_n9_α:
# IR_LIT_S
bb57_α:
 mov qword ptr [r12 + 424], 1
 mov rax, qword ptr [rip + .Lx128_0]
 mov qword ptr [r12 + 432], rax
 jmp xchain100_n10_α
 xchain100_n9_β:
 jmp xchain100_n12_α
.Lx128_0:
 .quad .Lx128_0_s
.Lx128_0_s:
 .string "i ----> "
xchain100_n10_α:
xaltg129_a0_start:
bb58_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+480]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
  .section .rodata
  .Lrkfn131: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn131]
 lea rsi, [r12 + 480]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 cmp eax, 99
 je xaltg129_a1_start
 jmp xaltg129_a0_succ
 xaltg129_a0_beta:
 jmp xaltg129_a1_start
xaltg129_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 440], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], 1
jmp xchain100_n11_α
xaltg129_a1_start:
# IR_LIT_S
bb59_α:
 mov qword ptr [r12 + 496], 1
 mov rax, qword ptr [rip + .Lx133_0]
 mov qword ptr [r12 + 504], rax
 jmp xaltg129_a1_succ
 xaltg129_a1_beta:
 jmp xchain100_n12_α
.Lx133_0:
 .quad .Lx133_0_s
.Lx133_0_s:
 .string "none"
xaltg129_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 440], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], 1
jmp xchain100_n11_α
xchain100_n10_β:
jmp xchain100_n12_α
xchain100_n11_α:
bb60_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+528]
 mov qword ptr [r12 + 528], 1
 mov rax, qword ptr [rip + .Lx135_0]
 mov qword ptr [r12 + 536], rax
 jmp .Lx135_1
.Lx135_0:
 .quad .Lx135_0_s
.Lx135_0_s:
 .string "i ----> "
.Lx135_1:
# marshal arg1 = nested producer-box slot [r12+440] -> [r12+544]
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 552], rax
  .section .rodata
  .Lrkfn136: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn136]
 lea rsi, [r12 + 528]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je xchain100_n12_α
 jmp xchain100_n12_α
 xchain100_n11_β:
 jmp xchain100_n12_α
xchain100_n12_α:
# IR_LIT_S
bb61_α:
 mov qword ptr [r12 + 560], 1
 mov rax, qword ptr [rip + .Lx137_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain100_n13_α
 xchain100_n12_β:
 jmp xchain100_n15_α
.Lx137_0:
 .quad .Lx137_0_s
.Lx137_0_s:
 .string "i := 10 ----> "
xchain100_n13_α:
xaltg138_a0_start:
bb62_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+616]
 mov qword ptr [r12 + 616], 6
 movabs rax, 10
 mov qword ptr [r12 + 624], rax
  .section .rodata
  .Lrkfn140: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn140]
 lea rsi, [r12 + 616]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 600], rax
 mov qword ptr [r12 + 608], rdx
 cmp eax, 99
 je xaltg138_a1_start
 jmp xaltg138_a0_succ
 xaltg138_a0_beta:
 jmp xaltg138_a1_start
xaltg138_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 584], rax
 mov qword ptr [r12 + 592], 1
jmp xchain100_n14_α
xaltg138_a1_start:
# IR_LIT_S
bb63_α:
 mov qword ptr [r12 + 632], 1
 mov rax, qword ptr [rip + .Lx142_0]
 mov qword ptr [r12 + 640], rax
 jmp xaltg138_a1_succ
 xaltg138_a1_beta:
 jmp xchain100_n15_α
.Lx142_0:
 .quad .Lx142_0_s
.Lx142_0_s:
 .string "none"
xaltg138_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 584], rax
 mov qword ptr [r12 + 592], 1
jmp xchain100_n14_α
xchain100_n13_β:
jmp xchain100_n15_α
xchain100_n14_α:
bb64_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+664]
 mov qword ptr [r12 + 664], 1
 mov rax, qword ptr [rip + .Lx144_0]
 mov qword ptr [r12 + 672], rax
 jmp .Lx144_1
.Lx144_0:
 .quad .Lx144_0_s
.Lx144_0_s:
 .string "i := 10 ----> "
.Lx144_1:
# marshal arg1 = nested producer-box slot [r12+576] -> [r12+680]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 680], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 688], rax
  .section .rodata
  .Lrkfn145: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn145]
 lea rsi, [r12 + 664]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 648], rax
 mov qword ptr [r12 + 656], rdx
 cmp eax, 99
 je xchain100_n15_α
 jmp xchain100_n15_α
 xchain100_n14_β:
 jmp xchain100_n15_α
xchain100_n15_α:
# IR_LIT_S
bb65_α:
 mov qword ptr [r12 + 696], 1
 mov rax, qword ptr [rip + .Lx146_0]
 mov qword ptr [r12 + 704], rax
 jmp xchain100_n16_α
 xchain100_n15_β:
 jmp xchain100_n18_α
.Lx146_0:
 .quad .Lx146_0_s
.Lx146_0_s:
 .string "i >=:= 11 ----> "
xchain100_n16_α:
xaltg147_a0_start:
bb66_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+752]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
  .section .rodata
  .Lrkfn149: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn149]
 lea rsi, [r12 + 752]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 cmp eax, 99
 je xaltg147_a1_start
 jmp xaltg147_a0_succ
 xaltg147_a0_beta:
 jmp xaltg147_a1_start
xaltg147_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 712], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], 1
jmp xchain100_n17_α
xaltg147_a1_start:
# IR_LIT_S
bb67_α:
 mov qword ptr [r12 + 768], 1
 mov rax, qword ptr [rip + .Lx151_0]
 mov qword ptr [r12 + 776], rax
 jmp xaltg147_a1_succ
 xaltg147_a1_beta:
 jmp xchain100_n18_α
.Lx151_0:
 .quad .Lx151_0_s
.Lx151_0_s:
 .string "none"
xaltg147_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 712], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], 1
jmp xchain100_n17_α
xchain100_n16_β:
jmp xchain100_n18_α
xchain100_n17_α:
bb68_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+800]
 mov qword ptr [r12 + 800], 1
 mov rax, qword ptr [rip + .Lx153_0]
 mov qword ptr [r12 + 808], rax
 jmp .Lx153_1
.Lx153_0:
 .quad .Lx153_0_s
.Lx153_0_s:
 .string "i >=:= 11 ----> "
.Lx153_1:
# marshal arg1 = nested producer-box slot [r12+712] -> [r12+816]
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 824], rax
  .section .rodata
  .Lrkfn154: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn154]
 lea rsi, [r12 + 800]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 cmp eax, 99
 je xchain100_n18_α
 jmp xchain100_n18_α
 xchain100_n17_β:
 jmp xchain100_n18_α
xchain100_n18_α:
# IR_LIT_S
bb69_α:
 mov qword ptr [r12 + 832], 1
 mov rax, qword ptr [rip + .Lx155_0]
 mov qword ptr [r12 + 840], rax
 jmp xchain100_n19_α
 xchain100_n18_β:
 jmp xchain100_n21_α
.Lx155_0:
 .quad .Lx155_0_s
.Lx155_0_s:
 .string "i ----> "
xchain100_n19_α:
xaltg156_a0_start:
bb70_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+888]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 888], rax
 mov qword ptr [r12 + 896], rdx
  .section .rodata
  .Lrkfn158: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn158]
 lea rsi, [r12 + 888]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 872], rax
 mov qword ptr [r12 + 880], rdx
 cmp eax, 99
 je xaltg156_a1_start
 jmp xaltg156_a0_succ
 xaltg156_a0_beta:
 jmp xaltg156_a1_start
xaltg156_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 856], rax
 mov qword ptr [r12 + 864], 1
jmp xchain100_n20_α
xaltg156_a1_start:
# IR_LIT_S
bb71_α:
 mov qword ptr [r12 + 904], 1
 mov rax, qword ptr [rip + .Lx160_0]
 mov qword ptr [r12 + 912], rax
 jmp xaltg156_a1_succ
 xaltg156_a1_beta:
 jmp xchain100_n21_α
.Lx160_0:
 .quad .Lx160_0_s
.Lx160_0_s:
 .string "none"
xaltg156_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 904]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 912]
 mov qword ptr [r12 + 856], rax
 mov qword ptr [r12 + 864], 1
jmp xchain100_n20_α
xchain100_n19_β:
jmp xchain100_n21_α
xchain100_n20_α:
bb72_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+936]
 mov qword ptr [r12 + 936], 1
 mov rax, qword ptr [rip + .Lx162_0]
 mov qword ptr [r12 + 944], rax
 jmp .Lx162_1
.Lx162_0:
 .quad .Lx162_0_s
.Lx162_0_s:
 .string "i ----> "
.Lx162_1:
# marshal arg1 = nested producer-box slot [r12+848] -> [r12+952]
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 952], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 960], rax
  .section .rodata
  .Lrkfn163: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn163]
 lea rsi, [r12 + 936]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 920], rax
 mov qword ptr [r12 + 928], rdx
 cmp eax, 99
 je xchain100_n21_α
 jmp xchain100_n21_α
 xchain100_n20_β:
 jmp xchain100_n21_α
xchain100_n21_α:
# IR_LIT_S
bb73_α:
 mov qword ptr [r12 + 968], 1
 mov rax, qword ptr [rip + .Lx164_0]
 mov qword ptr [r12 + 976], rax
 jmp xchain100_n22_α
 xchain100_n21_β:
 jmp xchain100_n24_α
.Lx164_0:
 .quad .Lx164_0_s
.Lx164_0_s:
 .string "i := 10 ----> "
xchain100_n22_α:
xaltg165_a0_start:
bb74_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+1024]
 mov qword ptr [r12 + 1024], 6
 movabs rax, 10
 mov qword ptr [r12 + 1032], rax
  .section .rodata
  .Lrkfn167: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn167]
 lea rsi, [r12 + 1024]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 cmp eax, 99
 je xaltg165_a1_start
 jmp xaltg165_a0_succ
 xaltg165_a0_beta:
 jmp xaltg165_a1_start
xaltg165_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1008]
 mov qword ptr [r12 + 984], rax
 mov rax, qword ptr [r12 + 1016]
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], 1
jmp xchain100_n23_α
xaltg165_a1_start:
# IR_LIT_S
bb75_α:
 mov qword ptr [r12 + 1040], 1
 mov rax, qword ptr [rip + .Lx169_0]
 mov qword ptr [r12 + 1048], rax
 jmp xaltg165_a1_succ
 xaltg165_a1_beta:
 jmp xchain100_n24_α
.Lx169_0:
 .quad .Lx169_0_s
.Lx169_0_s:
 .string "none"
xaltg165_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1040]
 mov qword ptr [r12 + 984], rax
 mov rax, qword ptr [r12 + 1048]
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], 1
jmp xchain100_n23_α
xchain100_n22_β:
jmp xchain100_n24_α
xchain100_n23_α:
bb76_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1072]
 mov qword ptr [r12 + 1072], 1
 mov rax, qword ptr [rip + .Lx171_0]
 mov qword ptr [r12 + 1080], rax
 jmp .Lx171_1
.Lx171_0:
 .quad .Lx171_0_s
.Lx171_0_s:
 .string "i := 10 ----> "
.Lx171_1:
# marshal arg1 = nested producer-box slot [r12+984] -> [r12+1088]
 mov rax, qword ptr [r12 + 984]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 992]
 mov qword ptr [r12 + 1096], rax
  .section .rodata
  .Lrkfn172: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn172]
 lea rsi, [r12 + 1072]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je xchain100_n24_α
 jmp xchain100_n24_α
 xchain100_n23_β:
 jmp xchain100_n24_α
xchain100_n24_α:
# IR_LIT_S
bb77_α:
 mov qword ptr [r12 + 1104], 1
 mov rax, qword ptr [rip + .Lx173_0]
 mov qword ptr [r12 + 1112], rax
 jmp xchain100_n25_α
 xchain100_n24_β:
 jmp xchain100_n27_α
.Lx173_0:
 .quad .Lx173_0_s
.Lx173_0_s:
 .string "i >:= 9 ----> "
xchain100_n25_α:
xaltg174_a0_start:
bb78_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+1160]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1160], rax
 mov qword ptr [r12 + 1168], rdx
  .section .rodata
  .Lrkfn176: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn176]
 lea rsi, [r12 + 1160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1144], rax
 mov qword ptr [r12 + 1152], rdx
 cmp eax, 99
 je xaltg174_a1_start
 jmp xaltg174_a0_succ
 xaltg174_a0_beta:
 jmp xaltg174_a1_start
xaltg174_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 1152]
 mov qword ptr [r12 + 1128], rax
 mov qword ptr [r12 + 1136], 1
jmp xchain100_n26_α
xaltg174_a1_start:
# IR_LIT_S
bb79_α:
 mov qword ptr [r12 + 1176], 1
 mov rax, qword ptr [rip + .Lx178_0]
 mov qword ptr [r12 + 1184], rax
 jmp xaltg174_a1_succ
 xaltg174_a1_beta:
 jmp xchain100_n27_α
.Lx178_0:
 .quad .Lx178_0_s
.Lx178_0_s:
 .string "none"
xaltg174_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1176]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 1184]
 mov qword ptr [r12 + 1128], rax
 mov qword ptr [r12 + 1136], 1
jmp xchain100_n26_α
xchain100_n25_β:
jmp xchain100_n27_α
xchain100_n26_α:
bb80_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1208]
 mov qword ptr [r12 + 1208], 1
 mov rax, qword ptr [rip + .Lx180_0]
 mov qword ptr [r12 + 1216], rax
 jmp .Lx180_1
.Lx180_0:
 .quad .Lx180_0_s
.Lx180_0_s:
 .string "i >:= 9 ----> "
.Lx180_1:
# marshal arg1 = nested producer-box slot [r12+1120] -> [r12+1224]
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 1224], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 1232], rax
  .section .rodata
  .Lrkfn181: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn181]
 lea rsi, [r12 + 1208]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1192], rax
 mov qword ptr [r12 + 1200], rdx
 cmp eax, 99
 je xchain100_n27_α
 jmp xchain100_n27_α
 xchain100_n26_β:
 jmp xchain100_n27_α
xchain100_n27_α:
# IR_LIT_S
bb81_α:
 mov qword ptr [r12 + 1240], 1
 mov rax, qword ptr [rip + .Lx182_0]
 mov qword ptr [r12 + 1248], rax
 jmp xchain100_n28_α
 xchain100_n27_β:
 jmp xchain100_n30_α
.Lx182_0:
 .quad .Lx182_0_s
.Lx182_0_s:
 .string "i ----> "
xchain100_n28_α:
xaltg183_a0_start:
bb82_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+1296]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1296], rax
 mov qword ptr [r12 + 1304], rdx
  .section .rodata
  .Lrkfn185: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn185]
 lea rsi, [r12 + 1296]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 cmp eax, 99
 je xaltg183_a1_start
 jmp xaltg183_a0_succ
 xaltg183_a0_beta:
 jmp xaltg183_a1_start
xaltg183_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1280]
 mov qword ptr [r12 + 1256], rax
 mov rax, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], 1
jmp xchain100_n29_α
xaltg183_a1_start:
# IR_LIT_S
bb83_α:
 mov qword ptr [r12 + 1312], 1
 mov rax, qword ptr [rip + .Lx187_0]
 mov qword ptr [r12 + 1320], rax
 jmp xaltg183_a1_succ
 xaltg183_a1_beta:
 jmp xchain100_n30_α
.Lx187_0:
 .quad .Lx187_0_s
.Lx187_0_s:
 .string "none"
xaltg183_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1312]
 mov qword ptr [r12 + 1256], rax
 mov rax, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], 1
jmp xchain100_n29_α
xchain100_n28_β:
jmp xchain100_n30_α
xchain100_n29_α:
bb84_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1344]
 mov qword ptr [r12 + 1344], 1
 mov rax, qword ptr [rip + .Lx189_0]
 mov qword ptr [r12 + 1352], rax
 jmp .Lx189_1
.Lx189_0:
 .quad .Lx189_0_s
.Lx189_0_s:
 .string "i ----> "
.Lx189_1:
# marshal arg1 = nested producer-box slot [r12+1256] -> [r12+1360]
 mov rax, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 1360], rax
 mov rax, qword ptr [r12 + 1264]
 mov qword ptr [r12 + 1368], rax
  .section .rodata
  .Lrkfn190: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn190]
 lea rsi, [r12 + 1344]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 cmp eax, 99
 je xchain100_n30_α
 jmp xchain100_n30_α
 xchain100_n29_β:
 jmp xchain100_n30_α
xchain100_n30_α:
# IR_LIT_S
bb85_α:
 mov qword ptr [r12 + 1376], 1
 mov rax, qword ptr [rip + .Lx191_0]
 mov qword ptr [r12 + 1384], rax
 jmp xchain100_n31_α
 xchain100_n30_β:
 jmp proc_p2_ω
.Lx191_0:
 .quad .Lx191_0_s
.Lx191_0_s:
 .string "i := 10 ----> "
xchain100_n31_α:
xaltg192_a0_start:
bb86_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+1432]
 mov qword ptr [r12 + 1432], 6
 movabs rax, 10
 mov qword ptr [r12 + 1440], rax
  .section .rodata
  .Lrkfn194: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn194]
 lea rsi, [r12 + 1432]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1416], rax
 mov qword ptr [r12 + 1424], rdx
 cmp eax, 99
 je xaltg192_a1_start
 jmp xaltg192_a0_succ
 xaltg192_a0_beta:
 jmp xaltg192_a1_start
xaltg192_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1416]
 mov qword ptr [r12 + 1392], rax
 mov rax, qword ptr [r12 + 1424]
 mov qword ptr [r12 + 1400], rax
 mov qword ptr [r12 + 1408], 1
jmp xchain100_n32_α
xaltg192_a1_start:
# IR_LIT_S
bb87_α:
 mov qword ptr [r12 + 1448], 1
 mov rax, qword ptr [rip + .Lx196_0]
 mov qword ptr [r12 + 1456], rax
 jmp xaltg192_a1_succ
 xaltg192_a1_beta:
 jmp proc_p2_ω
.Lx196_0:
 .quad .Lx196_0_s
.Lx196_0_s:
 .string "none"
xaltg192_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1448]
 mov qword ptr [r12 + 1392], rax
 mov rax, qword ptr [r12 + 1456]
 mov qword ptr [r12 + 1400], rax
 mov qword ptr [r12 + 1408], 1
jmp xchain100_n32_α
xchain100_n31_β:
jmp proc_p2_ω
xchain100_n32_α:
bb88_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1480]
 mov qword ptr [r12 + 1480], 1
 mov rax, qword ptr [rip + .Lx198_0]
 mov qword ptr [r12 + 1488], rax
 jmp .Lx198_1
.Lx198_0:
 .quad .Lx198_0_s
.Lx198_0_s:
 .string "i := 10 ----> "
.Lx198_1:
# marshal arg1 = nested producer-box slot [r12+1392] -> [r12+1496]
 mov rax, qword ptr [r12 + 1392]
 mov qword ptr [r12 + 1496], rax
 mov rax, qword ptr [r12 + 1400]
 mov qword ptr [r12 + 1504], rax
  .section .rodata
  .Lrkfn199: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn199]
 lea rsi, [r12 + 1480]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1464], rax
 mov qword ptr [r12 + 1472], rdx
 cmp eax, 99
 je proc_p2_ω
 jmp proc_p2_γ
 xchain100_n32_β:
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
xchain200_n0_α:
# IR_LIT_S
bb89_α:
 mov qword ptr [r12 + 16], 1
 mov rax, qword ptr [rip + .Lx201_0]
 mov qword ptr [r12 + 24], rax
 jmp xchain200_n1_α
 xchain200_n0_β:
 jmp xchain200_n3_α
.Lx201_0:
 .quad .Lx201_0_s
.Lx201_0_s:
 .string "i >:= 10 ----> "
xchain200_n1_α:
xaltg202_a0_start:
bb90_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+72]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 72], rax
 mov qword ptr [r12 + 80], rdx
  .section .rodata
  .Lrkfn204: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn204]
 lea rsi, [r12 + 72]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 56], rax
 mov qword ptr [r12 + 64], rdx
 cmp eax, 99
 je xaltg202_a1_start
 jmp xaltg202_a0_succ
 xaltg202_a0_beta:
 jmp xaltg202_a1_start
xaltg202_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain200_n2_α
xaltg202_a1_start:
# IR_LIT_S
bb91_α:
 mov qword ptr [r12 + 88], 1
 mov rax, qword ptr [rip + .Lx206_0]
 mov qword ptr [r12 + 96], rax
 jmp xaltg202_a1_succ
 xaltg202_a1_beta:
 jmp xchain200_n3_α
.Lx206_0:
 .quad .Lx206_0_s
.Lx206_0_s:
 .string "none"
xaltg202_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain200_n2_α
xchain200_n1_β:
jmp xchain200_n3_α
xchain200_n2_α:
bb92_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+120]
 mov qword ptr [r12 + 120], 1
 mov rax, qword ptr [rip + .Lx208_0]
 mov qword ptr [r12 + 128], rax
 jmp .Lx208_1
.Lx208_0:
 .quad .Lx208_0_s
.Lx208_0_s:
 .string "i >:= 10 ----> "
.Lx208_1:
# marshal arg1 = nested producer-box slot [r12+32] -> [r12+136]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 136], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 144], rax
  .section .rodata
  .Lrkfn209: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn209]
 lea rsi, [r12 + 120]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 104], rax
 mov qword ptr [r12 + 112], rdx
 cmp eax, 99
 je xchain200_n3_α
 jmp xchain200_n3_α
 xchain200_n2_β:
 jmp xchain200_n3_α
xchain200_n3_α:
# IR_LIT_S
bb93_α:
 mov qword ptr [r12 + 152], 1
 mov rax, qword ptr [rip + .Lx210_0]
 mov qword ptr [r12 + 160], rax
 jmp xchain200_n4_α
 xchain200_n3_β:
 jmp xchain200_n6_α
.Lx210_0:
 .quad .Lx210_0_s
.Lx210_0_s:
 .string "i ----> "
xchain200_n4_α:
xaltg211_a0_start:
bb94_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+208]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
  .section .rodata
  .Lrkfn213: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn213]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xaltg211_a1_start
 jmp xaltg211_a0_succ
 xaltg211_a0_beta:
 jmp xaltg211_a1_start
xaltg211_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 168], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], 1
jmp xchain200_n5_α
xaltg211_a1_start:
# IR_LIT_S
bb95_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx215_0]
 mov qword ptr [r12 + 232], rax
 jmp xaltg211_a1_succ
 xaltg211_a1_beta:
 jmp xchain200_n6_α
.Lx215_0:
 .quad .Lx215_0_s
.Lx215_0_s:
 .string "none"
xaltg211_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 168], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], 1
jmp xchain200_n5_α
xchain200_n4_β:
jmp xchain200_n6_α
xchain200_n5_α:
bb96_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+256]
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx217_0]
 mov qword ptr [r12 + 264], rax
 jmp .Lx217_1
.Lx217_0:
 .quad .Lx217_0_s
.Lx217_0_s:
 .string "i ----> "
.Lx217_1:
# marshal arg1 = nested producer-box slot [r12+168] -> [r12+272]
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 280], rax
  .section .rodata
  .Lrkfn218: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn218]
 lea rsi, [r12 + 256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain200_n6_α
 jmp xchain200_n6_α
 xchain200_n5_β:
 jmp xchain200_n6_α
xchain200_n6_α:
# IR_LIT_S
bb97_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx219_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain200_n7_α
 xchain200_n6_β:
 jmp xchain200_n9_α
.Lx219_0:
 .quad .Lx219_0_s
.Lx219_0_s:
 .string "i := 10 ----> "
xchain200_n7_α:
xaltg220_a0_start:
bb98_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+344]
 mov qword ptr [r12 + 344], 6
 movabs rax, 10
 mov qword ptr [r12 + 352], rax
  .section .rodata
  .Lrkfn222: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn222]
 lea rsi, [r12 + 344]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 328], rax
 mov qword ptr [r12 + 336], rdx
 cmp eax, 99
 je xaltg220_a1_start
 jmp xaltg220_a0_succ
 xaltg220_a0_beta:
 jmp xaltg220_a1_start
xaltg220_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 312], rax
 mov qword ptr [r12 + 320], 1
jmp xchain200_n8_α
xaltg220_a1_start:
# IR_LIT_S
bb99_α:
 mov qword ptr [r12 + 360], 1
 mov rax, qword ptr [rip + .Lx224_0]
 mov qword ptr [r12 + 368], rax
 jmp xaltg220_a1_succ
 xaltg220_a1_beta:
 jmp xchain200_n9_α
.Lx224_0:
 .quad .Lx224_0_s
.Lx224_0_s:
 .string "none"
xaltg220_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 312], rax
 mov qword ptr [r12 + 320], 1
jmp xchain200_n8_α
xchain200_n7_β:
jmp xchain200_n9_α
xchain200_n8_α:
bb100_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+392]
 mov qword ptr [r12 + 392], 1
 mov rax, qword ptr [rip + .Lx226_0]
 mov qword ptr [r12 + 400], rax
 jmp .Lx226_1
.Lx226_0:
 .quad .Lx226_0_s
.Lx226_0_s:
 .string "i := 10 ----> "
.Lx226_1:
# marshal arg1 = nested producer-box slot [r12+304] -> [r12+408]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 408], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 416], rax
  .section .rodata
  .Lrkfn227: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn227]
 lea rsi, [r12 + 392]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 376], rax
 mov qword ptr [r12 + 384], rdx
 cmp eax, 99
 je xchain200_n9_α
 jmp xchain200_n9_α
 xchain200_n8_β:
 jmp xchain200_n9_α
xchain200_n9_α:
# IR_LIT_S
bb101_α:
 mov qword ptr [r12 + 424], 1
 mov rax, qword ptr [rip + .Lx228_0]
 mov qword ptr [r12 + 432], rax
 jmp xchain200_n10_α
 xchain200_n9_β:
 jmp xchain200_n12_α
.Lx228_0:
 .quad .Lx228_0_s
.Lx228_0_s:
 .string "i >:= 11 ----> "
xchain200_n10_α:
xaltg229_a0_start:
bb102_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+480]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
  .section .rodata
  .Lrkfn231: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn231]
 lea rsi, [r12 + 480]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 cmp eax, 99
 je xaltg229_a1_start
 jmp xaltg229_a0_succ
 xaltg229_a0_beta:
 jmp xaltg229_a1_start
xaltg229_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 440], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], 1
jmp xchain200_n11_α
xaltg229_a1_start:
# IR_LIT_S
bb103_α:
 mov qword ptr [r12 + 496], 1
 mov rax, qword ptr [rip + .Lx233_0]
 mov qword ptr [r12 + 504], rax
 jmp xaltg229_a1_succ
 xaltg229_a1_beta:
 jmp xchain200_n12_α
.Lx233_0:
 .quad .Lx233_0_s
.Lx233_0_s:
 .string "none"
xaltg229_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 440], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], 1
jmp xchain200_n11_α
xchain200_n10_β:
jmp xchain200_n12_α
xchain200_n11_α:
bb104_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+528]
 mov qword ptr [r12 + 528], 1
 mov rax, qword ptr [rip + .Lx235_0]
 mov qword ptr [r12 + 536], rax
 jmp .Lx235_1
.Lx235_0:
 .quad .Lx235_0_s
.Lx235_0_s:
 .string "i >:= 11 ----> "
.Lx235_1:
# marshal arg1 = nested producer-box slot [r12+440] -> [r12+544]
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 552], rax
  .section .rodata
  .Lrkfn236: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn236]
 lea rsi, [r12 + 528]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je xchain200_n12_α
 jmp xchain200_n12_α
 xchain200_n11_β:
 jmp xchain200_n12_α
xchain200_n12_α:
# IR_LIT_S
bb105_α:
 mov qword ptr [r12 + 560], 1
 mov rax, qword ptr [rip + .Lx237_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain200_n13_α
 xchain200_n12_β:
 jmp xchain200_n15_α
.Lx237_0:
 .quad .Lx237_0_s
.Lx237_0_s:
 .string "i ----> "
xchain200_n13_α:
xaltg238_a0_start:
bb106_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+616]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 616], rax
 mov qword ptr [r12 + 624], rdx
  .section .rodata
  .Lrkfn240: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn240]
 lea rsi, [r12 + 616]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 600], rax
 mov qword ptr [r12 + 608], rdx
 cmp eax, 99
 je xaltg238_a1_start
 jmp xaltg238_a0_succ
 xaltg238_a0_beta:
 jmp xaltg238_a1_start
xaltg238_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 584], rax
 mov qword ptr [r12 + 592], 1
jmp xchain200_n14_α
xaltg238_a1_start:
# IR_LIT_S
bb107_α:
 mov qword ptr [r12 + 632], 1
 mov rax, qword ptr [rip + .Lx242_0]
 mov qword ptr [r12 + 640], rax
 jmp xaltg238_a1_succ
 xaltg238_a1_beta:
 jmp xchain200_n15_α
.Lx242_0:
 .quad .Lx242_0_s
.Lx242_0_s:
 .string "none"
xaltg238_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 584], rax
 mov qword ptr [r12 + 592], 1
jmp xchain200_n14_α
xchain200_n13_β:
jmp xchain200_n15_α
xchain200_n14_α:
bb108_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+664]
 mov qword ptr [r12 + 664], 1
 mov rax, qword ptr [rip + .Lx244_0]
 mov qword ptr [r12 + 672], rax
 jmp .Lx244_1
.Lx244_0:
 .quad .Lx244_0_s
.Lx244_0_s:
 .string "i ----> "
.Lx244_1:
# marshal arg1 = nested producer-box slot [r12+576] -> [r12+680]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 680], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 688], rax
  .section .rodata
  .Lrkfn245: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn245]
 lea rsi, [r12 + 664]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 648], rax
 mov qword ptr [r12 + 656], rdx
 cmp eax, 99
 je xchain200_n15_α
 jmp xchain200_n15_α
 xchain200_n14_β:
 jmp xchain200_n15_α
xchain200_n15_α:
# IR_LIT_S
bb109_α:
 mov qword ptr [r12 + 696], 1
 mov rax, qword ptr [rip + .Lx246_0]
 mov qword ptr [r12 + 704], rax
 jmp xchain200_n16_α
 xchain200_n15_β:
 jmp xchain200_n18_α
.Lx246_0:
 .quad .Lx246_0_s
.Lx246_0_s:
 .string "i := 10 ----> "
xchain200_n16_α:
xaltg247_a0_start:
bb110_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+752]
 mov qword ptr [r12 + 752], 6
 movabs rax, 10
 mov qword ptr [r12 + 760], rax
  .section .rodata
  .Lrkfn249: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn249]
 lea rsi, [r12 + 752]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 cmp eax, 99
 je xaltg247_a1_start
 jmp xaltg247_a0_succ
 xaltg247_a0_beta:
 jmp xaltg247_a1_start
xaltg247_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 712], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], 1
jmp xchain200_n17_α
xaltg247_a1_start:
# IR_LIT_S
bb111_α:
 mov qword ptr [r12 + 768], 1
 mov rax, qword ptr [rip + .Lx251_0]
 mov qword ptr [r12 + 776], rax
 jmp xaltg247_a1_succ
 xaltg247_a1_beta:
 jmp xchain200_n18_α
.Lx251_0:
 .quad .Lx251_0_s
.Lx251_0_s:
 .string "none"
xaltg247_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 712], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], 1
jmp xchain200_n17_α
xchain200_n16_β:
jmp xchain200_n18_α
xchain200_n17_α:
bb112_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+800]
 mov qword ptr [r12 + 800], 1
 mov rax, qword ptr [rip + .Lx253_0]
 mov qword ptr [r12 + 808], rax
 jmp .Lx253_1
.Lx253_0:
 .quad .Lx253_0_s
.Lx253_0_s:
 .string "i := 10 ----> "
.Lx253_1:
# marshal arg1 = nested producer-box slot [r12+712] -> [r12+816]
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 824], rax
  .section .rodata
  .Lrkfn254: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn254]
 lea rsi, [r12 + 800]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 cmp eax, 99
 je xchain200_n18_α
 jmp xchain200_n18_α
 xchain200_n17_β:
 jmp xchain200_n18_α
xchain200_n18_α:
# IR_LIT_S
bb113_α:
 mov qword ptr [r12 + 832], 1
 mov rax, qword ptr [rip + .Lx255_0]
 mov qword ptr [r12 + 840], rax
 jmp xchain200_n19_α
 xchain200_n18_β:
 jmp xchain200_n21_α
.Lx255_0:
 .quad .Lx255_0_s
.Lx255_0_s:
 .string "i <=:= 9 ----> "
xchain200_n19_α:
xaltg256_a0_start:
bb114_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+888]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 888], rax
 mov qword ptr [r12 + 896], rdx
  .section .rodata
  .Lrkfn258: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn258]
 lea rsi, [r12 + 888]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 872], rax
 mov qword ptr [r12 + 880], rdx
 cmp eax, 99
 je xaltg256_a1_start
 jmp xaltg256_a0_succ
 xaltg256_a0_beta:
 jmp xaltg256_a1_start
xaltg256_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 856], rax
 mov qword ptr [r12 + 864], 1
jmp xchain200_n20_α
xaltg256_a1_start:
# IR_LIT_S
bb115_α:
 mov qword ptr [r12 + 904], 1
 mov rax, qword ptr [rip + .Lx260_0]
 mov qword ptr [r12 + 912], rax
 jmp xaltg256_a1_succ
 xaltg256_a1_beta:
 jmp xchain200_n21_α
.Lx260_0:
 .quad .Lx260_0_s
.Lx260_0_s:
 .string "none"
xaltg256_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 904]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 912]
 mov qword ptr [r12 + 856], rax
 mov qword ptr [r12 + 864], 1
jmp xchain200_n20_α
xchain200_n19_β:
jmp xchain200_n21_α
xchain200_n20_α:
bb116_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+936]
 mov qword ptr [r12 + 936], 1
 mov rax, qword ptr [rip + .Lx262_0]
 mov qword ptr [r12 + 944], rax
 jmp .Lx262_1
.Lx262_0:
 .quad .Lx262_0_s
.Lx262_0_s:
 .string "i <=:= 9 ----> "
.Lx262_1:
# marshal arg1 = nested producer-box slot [r12+848] -> [r12+952]
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 952], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 960], rax
  .section .rodata
  .Lrkfn263: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn263]
 lea rsi, [r12 + 936]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 920], rax
 mov qword ptr [r12 + 928], rdx
 cmp eax, 99
 je xchain200_n21_α
 jmp xchain200_n21_α
 xchain200_n20_β:
 jmp xchain200_n21_α
xchain200_n21_α:
# IR_LIT_S
bb117_α:
 mov qword ptr [r12 + 968], 1
 mov rax, qword ptr [rip + .Lx264_0]
 mov qword ptr [r12 + 976], rax
 jmp xchain200_n22_α
 xchain200_n21_β:
 jmp xchain200_n24_α
.Lx264_0:
 .quad .Lx264_0_s
.Lx264_0_s:
 .string "i ----> "
xchain200_n22_α:
xaltg265_a0_start:
bb118_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+1024]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
  .section .rodata
  .Lrkfn267: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn267]
 lea rsi, [r12 + 1024]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 cmp eax, 99
 je xaltg265_a1_start
 jmp xaltg265_a0_succ
 xaltg265_a0_beta:
 jmp xaltg265_a1_start
xaltg265_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1008]
 mov qword ptr [r12 + 984], rax
 mov rax, qword ptr [r12 + 1016]
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], 1
jmp xchain200_n23_α
xaltg265_a1_start:
# IR_LIT_S
bb119_α:
 mov qword ptr [r12 + 1040], 1
 mov rax, qword ptr [rip + .Lx269_0]
 mov qword ptr [r12 + 1048], rax
 jmp xaltg265_a1_succ
 xaltg265_a1_beta:
 jmp xchain200_n24_α
.Lx269_0:
 .quad .Lx269_0_s
.Lx269_0_s:
 .string "none"
xaltg265_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1040]
 mov qword ptr [r12 + 984], rax
 mov rax, qword ptr [r12 + 1048]
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], 1
jmp xchain200_n23_α
xchain200_n22_β:
jmp xchain200_n24_α
xchain200_n23_α:
bb120_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1072]
 mov qword ptr [r12 + 1072], 1
 mov rax, qword ptr [rip + .Lx271_0]
 mov qword ptr [r12 + 1080], rax
 jmp .Lx271_1
.Lx271_0:
 .quad .Lx271_0_s
.Lx271_0_s:
 .string "i ----> "
.Lx271_1:
# marshal arg1 = nested producer-box slot [r12+984] -> [r12+1088]
 mov rax, qword ptr [r12 + 984]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 992]
 mov qword ptr [r12 + 1096], rax
  .section .rodata
  .Lrkfn272: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn272]
 lea rsi, [r12 + 1072]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je xchain200_n24_α
 jmp xchain200_n24_α
 xchain200_n23_β:
 jmp xchain200_n24_α
xchain200_n24_α:
# IR_LIT_S
bb121_α:
 mov qword ptr [r12 + 1104], 1
 mov rax, qword ptr [rip + .Lx273_0]
 mov qword ptr [r12 + 1112], rax
 jmp xchain200_n25_α
 xchain200_n24_β:
 jmp xchain200_n27_α
.Lx273_0:
 .quad .Lx273_0_s
.Lx273_0_s:
 .string "i := 10 ----> "
xchain200_n25_α:
xaltg274_a0_start:
bb122_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+1160]
 mov qword ptr [r12 + 1160], 6
 movabs rax, 10
 mov qword ptr [r12 + 1168], rax
  .section .rodata
  .Lrkfn276: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn276]
 lea rsi, [r12 + 1160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1144], rax
 mov qword ptr [r12 + 1152], rdx
 cmp eax, 99
 je xaltg274_a1_start
 jmp xaltg274_a0_succ
 xaltg274_a0_beta:
 jmp xaltg274_a1_start
xaltg274_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 1152]
 mov qword ptr [r12 + 1128], rax
 mov qword ptr [r12 + 1136], 1
jmp xchain200_n26_α
xaltg274_a1_start:
# IR_LIT_S
bb123_α:
 mov qword ptr [r12 + 1176], 1
 mov rax, qword ptr [rip + .Lx278_0]
 mov qword ptr [r12 + 1184], rax
 jmp xaltg274_a1_succ
 xaltg274_a1_beta:
 jmp xchain200_n27_α
.Lx278_0:
 .quad .Lx278_0_s
.Lx278_0_s:
 .string "none"
xaltg274_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1176]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 1184]
 mov qword ptr [r12 + 1128], rax
 mov qword ptr [r12 + 1136], 1
jmp xchain200_n26_α
xchain200_n25_β:
jmp xchain200_n27_α
xchain200_n26_α:
bb124_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1208]
 mov qword ptr [r12 + 1208], 1
 mov rax, qword ptr [rip + .Lx280_0]
 mov qword ptr [r12 + 1216], rax
 jmp .Lx280_1
.Lx280_0:
 .quad .Lx280_0_s
.Lx280_0_s:
 .string "i := 10 ----> "
.Lx280_1:
# marshal arg1 = nested producer-box slot [r12+1120] -> [r12+1224]
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 1224], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 1232], rax
  .section .rodata
  .Lrkfn281: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn281]
 lea rsi, [r12 + 1208]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1192], rax
 mov qword ptr [r12 + 1200], rdx
 cmp eax, 99
 je xchain200_n27_α
 jmp xchain200_n27_α
 xchain200_n26_β:
 jmp xchain200_n27_α
xchain200_n27_α:
# IR_LIT_S
bb125_α:
 mov qword ptr [r12 + 1240], 1
 mov rax, qword ptr [rip + .Lx282_0]
 mov qword ptr [r12 + 1248], rax
 jmp xchain200_n28_α
 xchain200_n27_β:
 jmp xchain200_n30_α
.Lx282_0:
 .quad .Lx282_0_s
.Lx282_0_s:
 .string "i <=:= 10 ----> "
xchain200_n28_α:
xaltg283_a0_start:
bb126_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+1296]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1296], rax
 mov qword ptr [r12 + 1304], rdx
  .section .rodata
  .Lrkfn285: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn285]
 lea rsi, [r12 + 1296]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 cmp eax, 99
 je xaltg283_a1_start
 jmp xaltg283_a0_succ
 xaltg283_a0_beta:
 jmp xaltg283_a1_start
xaltg283_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1280]
 mov qword ptr [r12 + 1256], rax
 mov rax, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], 1
jmp xchain200_n29_α
xaltg283_a1_start:
# IR_LIT_S
bb127_α:
 mov qword ptr [r12 + 1312], 1
 mov rax, qword ptr [rip + .Lx287_0]
 mov qword ptr [r12 + 1320], rax
 jmp xaltg283_a1_succ
 xaltg283_a1_beta:
 jmp xchain200_n30_α
.Lx287_0:
 .quad .Lx287_0_s
.Lx287_0_s:
 .string "none"
xaltg283_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1312]
 mov qword ptr [r12 + 1256], rax
 mov rax, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], 1
jmp xchain200_n29_α
xchain200_n28_β:
jmp xchain200_n30_α
xchain200_n29_α:
bb128_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1344]
 mov qword ptr [r12 + 1344], 1
 mov rax, qword ptr [rip + .Lx289_0]
 mov qword ptr [r12 + 1352], rax
 jmp .Lx289_1
.Lx289_0:
 .quad .Lx289_0_s
.Lx289_0_s:
 .string "i <=:= 10 ----> "
.Lx289_1:
# marshal arg1 = nested producer-box slot [r12+1256] -> [r12+1360]
 mov rax, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 1360], rax
 mov rax, qword ptr [r12 + 1264]
 mov qword ptr [r12 + 1368], rax
  .section .rodata
  .Lrkfn290: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn290]
 lea rsi, [r12 + 1344]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 cmp eax, 99
 je xchain200_n30_α
 jmp xchain200_n30_α
 xchain200_n29_β:
 jmp xchain200_n30_α
xchain200_n30_α:
# IR_LIT_S
bb129_α:
 mov qword ptr [r12 + 1376], 1
 mov rax, qword ptr [rip + .Lx291_0]
 mov qword ptr [r12 + 1384], rax
 jmp xchain200_n31_α
 xchain200_n30_β:
 jmp proc_p3_ω
.Lx291_0:
 .quad .Lx291_0_s
.Lx291_0_s:
 .string "i ----> "
xchain200_n31_α:
xaltg292_a0_start:
bb130_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+1432]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1432], rax
 mov qword ptr [r12 + 1440], rdx
  .section .rodata
  .Lrkfn294: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn294]
 lea rsi, [r12 + 1432]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1416], rax
 mov qword ptr [r12 + 1424], rdx
 cmp eax, 99
 je xaltg292_a1_start
 jmp xaltg292_a0_succ
 xaltg292_a0_beta:
 jmp xaltg292_a1_start
xaltg292_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1416]
 mov qword ptr [r12 + 1392], rax
 mov rax, qword ptr [r12 + 1424]
 mov qword ptr [r12 + 1400], rax
 mov qword ptr [r12 + 1408], 1
jmp xchain200_n32_α
xaltg292_a1_start:
# IR_LIT_S
bb131_α:
 mov qword ptr [r12 + 1448], 1
 mov rax, qword ptr [rip + .Lx296_0]
 mov qword ptr [r12 + 1456], rax
 jmp xaltg292_a1_succ
 xaltg292_a1_beta:
 jmp proc_p3_ω
.Lx296_0:
 .quad .Lx296_0_s
.Lx296_0_s:
 .string "none"
xaltg292_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1448]
 mov qword ptr [r12 + 1392], rax
 mov rax, qword ptr [r12 + 1456]
 mov qword ptr [r12 + 1400], rax
 mov qword ptr [r12 + 1408], 1
jmp xchain200_n32_α
xchain200_n31_β:
jmp proc_p3_ω
xchain200_n32_α:
bb132_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1480]
 mov qword ptr [r12 + 1480], 1
 mov rax, qword ptr [rip + .Lx298_0]
 mov qword ptr [r12 + 1488], rax
 jmp .Lx298_1
.Lx298_0:
 .quad .Lx298_0_s
.Lx298_0_s:
 .string "i ----> "
.Lx298_1:
# marshal arg1 = nested producer-box slot [r12+1392] -> [r12+1496]
 mov rax, qword ptr [r12 + 1392]
 mov qword ptr [r12 + 1496], rax
 mov rax, qword ptr [r12 + 1400]
 mov qword ptr [r12 + 1504], rax
  .section .rodata
  .Lrkfn299: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn299]
 lea rsi, [r12 + 1480]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1464], rax
 mov qword ptr [r12 + 1472], rdx
 cmp eax, 99
 je proc_p3_ω
 jmp proc_p3_γ
 xchain200_n32_β:
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
xchain300_n0_α:
# IR_LIT_S
bb133_α:
 mov qword ptr [r12 + 16], 1
 mov rax, qword ptr [rip + .Lx301_0]
 mov qword ptr [r12 + 24], rax
 jmp xchain300_n1_α
 xchain300_n0_β:
 jmp xchain300_n3_α
.Lx301_0:
 .quad .Lx301_0_s
.Lx301_0_s:
 .string "i := 10 ----> "
xchain300_n1_α:
xaltg302_a0_start:
bb134_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+72]
 mov qword ptr [r12 + 72], 6
 movabs rax, 10
 mov qword ptr [r12 + 80], rax
  .section .rodata
  .Lrkfn304: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn304]
 lea rsi, [r12 + 72]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 56], rax
 mov qword ptr [r12 + 64], rdx
 cmp eax, 99
 je xaltg302_a1_start
 jmp xaltg302_a0_succ
 xaltg302_a0_beta:
 jmp xaltg302_a1_start
xaltg302_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain300_n2_α
xaltg302_a1_start:
# IR_LIT_S
bb135_α:
 mov qword ptr [r12 + 88], 1
 mov rax, qword ptr [rip + .Lx306_0]
 mov qword ptr [r12 + 96], rax
 jmp xaltg302_a1_succ
 xaltg302_a1_beta:
 jmp xchain300_n3_α
.Lx306_0:
 .quad .Lx306_0_s
.Lx306_0_s:
 .string "none"
xaltg302_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain300_n2_α
xchain300_n1_β:
jmp xchain300_n3_α
xchain300_n2_α:
bb136_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+120]
 mov qword ptr [r12 + 120], 1
 mov rax, qword ptr [rip + .Lx308_0]
 mov qword ptr [r12 + 128], rax
 jmp .Lx308_1
.Lx308_0:
 .quad .Lx308_0_s
.Lx308_0_s:
 .string "i := 10 ----> "
.Lx308_1:
# marshal arg1 = nested producer-box slot [r12+32] -> [r12+136]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 136], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 144], rax
  .section .rodata
  .Lrkfn309: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn309]
 lea rsi, [r12 + 120]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 104], rax
 mov qword ptr [r12 + 112], rdx
 cmp eax, 99
 je xchain300_n3_α
 jmp xchain300_n3_α
 xchain300_n2_β:
 jmp xchain300_n3_α
xchain300_n3_α:
# IR_LIT_S
bb137_α:
 mov qword ptr [r12 + 152], 1
 mov rax, qword ptr [rip + .Lx310_0]
 mov qword ptr [r12 + 160], rax
 jmp xchain300_n4_α
 xchain300_n3_β:
 jmp xchain300_n6_α
.Lx310_0:
 .quad .Lx310_0_s
.Lx310_0_s:
 .string "i <=:= 11 ----> "
xchain300_n4_α:
xaltg311_a0_start:
bb138_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+208]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
  .section .rodata
  .Lrkfn313: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn313]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xaltg311_a1_start
 jmp xaltg311_a0_succ
 xaltg311_a0_beta:
 jmp xaltg311_a1_start
xaltg311_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 168], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], 1
jmp xchain300_n5_α
xaltg311_a1_start:
# IR_LIT_S
bb139_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx315_0]
 mov qword ptr [r12 + 232], rax
 jmp xaltg311_a1_succ
 xaltg311_a1_beta:
 jmp xchain300_n6_α
.Lx315_0:
 .quad .Lx315_0_s
.Lx315_0_s:
 .string "none"
xaltg311_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 168], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], 1
jmp xchain300_n5_α
xchain300_n4_β:
jmp xchain300_n6_α
xchain300_n5_α:
bb140_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+256]
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx317_0]
 mov qword ptr [r12 + 264], rax
 jmp .Lx317_1
.Lx317_0:
 .quad .Lx317_0_s
.Lx317_0_s:
 .string "i <=:= 11 ----> "
.Lx317_1:
# marshal arg1 = nested producer-box slot [r12+168] -> [r12+272]
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 280], rax
  .section .rodata
  .Lrkfn318: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn318]
 lea rsi, [r12 + 256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain300_n6_α
 jmp xchain300_n6_α
 xchain300_n5_β:
 jmp xchain300_n6_α
xchain300_n6_α:
# IR_LIT_S
bb141_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx319_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain300_n7_α
 xchain300_n6_β:
 jmp xchain300_n9_α
.Lx319_0:
 .quad .Lx319_0_s
.Lx319_0_s:
 .string "i ----> "
xchain300_n7_α:
xaltg320_a0_start:
bb142_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+344]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 344], rax
 mov qword ptr [r12 + 352], rdx
  .section .rodata
  .Lrkfn322: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn322]
 lea rsi, [r12 + 344]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 328], rax
 mov qword ptr [r12 + 336], rdx
 cmp eax, 99
 je xaltg320_a1_start
 jmp xaltg320_a0_succ
 xaltg320_a0_beta:
 jmp xaltg320_a1_start
xaltg320_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 312], rax
 mov qword ptr [r12 + 320], 1
jmp xchain300_n8_α
xaltg320_a1_start:
# IR_LIT_S
bb143_α:
 mov qword ptr [r12 + 360], 1
 mov rax, qword ptr [rip + .Lx324_0]
 mov qword ptr [r12 + 368], rax
 jmp xaltg320_a1_succ
 xaltg320_a1_beta:
 jmp xchain300_n9_α
.Lx324_0:
 .quad .Lx324_0_s
.Lx324_0_s:
 .string "none"
xaltg320_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 312], rax
 mov qword ptr [r12 + 320], 1
jmp xchain300_n8_α
xchain300_n7_β:
jmp xchain300_n9_α
xchain300_n8_α:
bb144_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+392]
 mov qword ptr [r12 + 392], 1
 mov rax, qword ptr [rip + .Lx326_0]
 mov qword ptr [r12 + 400], rax
 jmp .Lx326_1
.Lx326_0:
 .quad .Lx326_0_s
.Lx326_0_s:
 .string "i ----> "
.Lx326_1:
# marshal arg1 = nested producer-box slot [r12+304] -> [r12+408]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 408], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 416], rax
  .section .rodata
  .Lrkfn327: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn327]
 lea rsi, [r12 + 392]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 376], rax
 mov qword ptr [r12 + 384], rdx
 cmp eax, 99
 je xchain300_n9_α
 jmp xchain300_n9_α
 xchain300_n8_β:
 jmp xchain300_n9_α
xchain300_n9_α:
# IR_LIT_S
bb145_α:
 mov qword ptr [r12 + 424], 1
 mov rax, qword ptr [rip + .Lx328_0]
 mov qword ptr [r12 + 432], rax
 jmp xchain300_n10_α
 xchain300_n9_β:
 jmp xchain300_n12_α
.Lx328_0:
 .quad .Lx328_0_s
.Lx328_0_s:
 .string "i := 10 ----> "
xchain300_n10_α:
xaltg329_a0_start:
bb146_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+480]
 mov qword ptr [r12 + 480], 6
 movabs rax, 10
 mov qword ptr [r12 + 488], rax
  .section .rodata
  .Lrkfn331: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn331]
 lea rsi, [r12 + 480]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 cmp eax, 99
 je xaltg329_a1_start
 jmp xaltg329_a0_succ
 xaltg329_a0_beta:
 jmp xaltg329_a1_start
xaltg329_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 440], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], 1
jmp xchain300_n11_α
xaltg329_a1_start:
# IR_LIT_S
bb147_α:
 mov qword ptr [r12 + 496], 1
 mov rax, qword ptr [rip + .Lx333_0]
 mov qword ptr [r12 + 504], rax
 jmp xaltg329_a1_succ
 xaltg329_a1_beta:
 jmp xchain300_n12_α
.Lx333_0:
 .quad .Lx333_0_s
.Lx333_0_s:
 .string "none"
xaltg329_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 440], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], 1
jmp xchain300_n11_α
xchain300_n10_β:
jmp xchain300_n12_α
xchain300_n11_α:
bb148_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+528]
 mov qword ptr [r12 + 528], 1
 mov rax, qword ptr [rip + .Lx335_0]
 mov qword ptr [r12 + 536], rax
 jmp .Lx335_1
.Lx335_0:
 .quad .Lx335_0_s
.Lx335_0_s:
 .string "i := 10 ----> "
.Lx335_1:
# marshal arg1 = nested producer-box slot [r12+440] -> [r12+544]
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 552], rax
  .section .rodata
  .Lrkfn336: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn336]
 lea rsi, [r12 + 528]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je xchain300_n12_α
 jmp xchain300_n12_α
 xchain300_n11_β:
 jmp xchain300_n12_α
xchain300_n12_α:
# IR_LIT_S
bb149_α:
 mov qword ptr [r12 + 560], 1
 mov rax, qword ptr [rip + .Lx337_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain300_n13_α
 xchain300_n12_β:
 jmp xchain300_n15_α
.Lx337_0:
 .quad .Lx337_0_s
.Lx337_0_s:
 .string "i <:= 9 ----> "
xchain300_n13_α:
xaltg338_a0_start:
bb150_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+616]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 616], rax
 mov qword ptr [r12 + 624], rdx
  .section .rodata
  .Lrkfn340: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn340]
 lea rsi, [r12 + 616]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 600], rax
 mov qword ptr [r12 + 608], rdx
 cmp eax, 99
 je xaltg338_a1_start
 jmp xaltg338_a0_succ
 xaltg338_a0_beta:
 jmp xaltg338_a1_start
xaltg338_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 584], rax
 mov qword ptr [r12 + 592], 1
jmp xchain300_n14_α
xaltg338_a1_start:
# IR_LIT_S
bb151_α:
 mov qword ptr [r12 + 632], 1
 mov rax, qword ptr [rip + .Lx342_0]
 mov qword ptr [r12 + 640], rax
 jmp xaltg338_a1_succ
 xaltg338_a1_beta:
 jmp xchain300_n15_α
.Lx342_0:
 .quad .Lx342_0_s
.Lx342_0_s:
 .string "none"
xaltg338_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 584], rax
 mov qword ptr [r12 + 592], 1
jmp xchain300_n14_α
xchain300_n13_β:
jmp xchain300_n15_α
xchain300_n14_α:
bb152_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+664]
 mov qword ptr [r12 + 664], 1
 mov rax, qword ptr [rip + .Lx344_0]
 mov qword ptr [r12 + 672], rax
 jmp .Lx344_1
.Lx344_0:
 .quad .Lx344_0_s
.Lx344_0_s:
 .string "i <:= 9 ----> "
.Lx344_1:
# marshal arg1 = nested producer-box slot [r12+576] -> [r12+680]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 680], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 688], rax
  .section .rodata
  .Lrkfn345: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn345]
 lea rsi, [r12 + 664]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 648], rax
 mov qword ptr [r12 + 656], rdx
 cmp eax, 99
 je xchain300_n15_α
 jmp xchain300_n15_α
 xchain300_n14_β:
 jmp xchain300_n15_α
xchain300_n15_α:
# IR_LIT_S
bb153_α:
 mov qword ptr [r12 + 696], 1
 mov rax, qword ptr [rip + .Lx346_0]
 mov qword ptr [r12 + 704], rax
 jmp xchain300_n16_α
 xchain300_n15_β:
 jmp xchain300_n18_α
.Lx346_0:
 .quad .Lx346_0_s
.Lx346_0_s:
 .string "i ----> "
xchain300_n16_α:
xaltg347_a0_start:
bb154_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+752]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
  .section .rodata
  .Lrkfn349: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn349]
 lea rsi, [r12 + 752]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 cmp eax, 99
 je xaltg347_a1_start
 jmp xaltg347_a0_succ
 xaltg347_a0_beta:
 jmp xaltg347_a1_start
xaltg347_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 712], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], 1
jmp xchain300_n17_α
xaltg347_a1_start:
# IR_LIT_S
bb155_α:
 mov qword ptr [r12 + 768], 1
 mov rax, qword ptr [rip + .Lx351_0]
 mov qword ptr [r12 + 776], rax
 jmp xaltg347_a1_succ
 xaltg347_a1_beta:
 jmp xchain300_n18_α
.Lx351_0:
 .quad .Lx351_0_s
.Lx351_0_s:
 .string "none"
xaltg347_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 712], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], 1
jmp xchain300_n17_α
xchain300_n16_β:
jmp xchain300_n18_α
xchain300_n17_α:
bb156_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+800]
 mov qword ptr [r12 + 800], 1
 mov rax, qword ptr [rip + .Lx353_0]
 mov qword ptr [r12 + 808], rax
 jmp .Lx353_1
.Lx353_0:
 .quad .Lx353_0_s
.Lx353_0_s:
 .string "i ----> "
.Lx353_1:
# marshal arg1 = nested producer-box slot [r12+712] -> [r12+816]
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 824], rax
  .section .rodata
  .Lrkfn354: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn354]
 lea rsi, [r12 + 800]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 cmp eax, 99
 je xchain300_n18_α
 jmp xchain300_n18_α
 xchain300_n17_β:
 jmp xchain300_n18_α
xchain300_n18_α:
# IR_LIT_S
bb157_α:
 mov qword ptr [r12 + 832], 1
 mov rax, qword ptr [rip + .Lx355_0]
 mov qword ptr [r12 + 840], rax
 jmp xchain300_n19_α
 xchain300_n18_β:
 jmp xchain300_n21_α
.Lx355_0:
 .quad .Lx355_0_s
.Lx355_0_s:
 .string "i := 10 ----> "
xchain300_n19_α:
xaltg356_a0_start:
bb158_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+888]
 mov qword ptr [r12 + 888], 6
 movabs rax, 10
 mov qword ptr [r12 + 896], rax
  .section .rodata
  .Lrkfn358: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn358]
 lea rsi, [r12 + 888]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 872], rax
 mov qword ptr [r12 + 880], rdx
 cmp eax, 99
 je xaltg356_a1_start
 jmp xaltg356_a0_succ
 xaltg356_a0_beta:
 jmp xaltg356_a1_start
xaltg356_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 856], rax
 mov qword ptr [r12 + 864], 1
jmp xchain300_n20_α
xaltg356_a1_start:
# IR_LIT_S
bb159_α:
 mov qword ptr [r12 + 904], 1
 mov rax, qword ptr [rip + .Lx360_0]
 mov qword ptr [r12 + 912], rax
 jmp xaltg356_a1_succ
 xaltg356_a1_beta:
 jmp xchain300_n21_α
.Lx360_0:
 .quad .Lx360_0_s
.Lx360_0_s:
 .string "none"
xaltg356_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 904]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 912]
 mov qword ptr [r12 + 856], rax
 mov qword ptr [r12 + 864], 1
jmp xchain300_n20_α
xchain300_n19_β:
jmp xchain300_n21_α
xchain300_n20_α:
bb160_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+936]
 mov qword ptr [r12 + 936], 1
 mov rax, qword ptr [rip + .Lx362_0]
 mov qword ptr [r12 + 944], rax
 jmp .Lx362_1
.Lx362_0:
 .quad .Lx362_0_s
.Lx362_0_s:
 .string "i := 10 ----> "
.Lx362_1:
# marshal arg1 = nested producer-box slot [r12+848] -> [r12+952]
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 952], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 960], rax
  .section .rodata
  .Lrkfn363: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn363]
 lea rsi, [r12 + 936]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 920], rax
 mov qword ptr [r12 + 928], rdx
 cmp eax, 99
 je xchain300_n21_α
 jmp xchain300_n21_α
 xchain300_n20_β:
 jmp xchain300_n21_α
xchain300_n21_α:
# IR_LIT_S
bb161_α:
 mov qword ptr [r12 + 968], 1
 mov rax, qword ptr [rip + .Lx364_0]
 mov qword ptr [r12 + 976], rax
 jmp xchain300_n22_α
 xchain300_n21_β:
 jmp xchain300_n24_α
.Lx364_0:
 .quad .Lx364_0_s
.Lx364_0_s:
 .string "i <:= 10 ----> "
xchain300_n22_α:
xaltg365_a0_start:
bb162_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+1024]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
  .section .rodata
  .Lrkfn367: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn367]
 lea rsi, [r12 + 1024]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 cmp eax, 99
 je xaltg365_a1_start
 jmp xaltg365_a0_succ
 xaltg365_a0_beta:
 jmp xaltg365_a1_start
xaltg365_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1008]
 mov qword ptr [r12 + 984], rax
 mov rax, qword ptr [r12 + 1016]
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], 1
jmp xchain300_n23_α
xaltg365_a1_start:
# IR_LIT_S
bb163_α:
 mov qword ptr [r12 + 1040], 1
 mov rax, qword ptr [rip + .Lx369_0]
 mov qword ptr [r12 + 1048], rax
 jmp xaltg365_a1_succ
 xaltg365_a1_beta:
 jmp xchain300_n24_α
.Lx369_0:
 .quad .Lx369_0_s
.Lx369_0_s:
 .string "none"
xaltg365_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1040]
 mov qword ptr [r12 + 984], rax
 mov rax, qword ptr [r12 + 1048]
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], 1
jmp xchain300_n23_α
xchain300_n22_β:
jmp xchain300_n24_α
xchain300_n23_α:
bb164_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1072]
 mov qword ptr [r12 + 1072], 1
 mov rax, qword ptr [rip + .Lx371_0]
 mov qword ptr [r12 + 1080], rax
 jmp .Lx371_1
.Lx371_0:
 .quad .Lx371_0_s
.Lx371_0_s:
 .string "i <:= 10 ----> "
.Lx371_1:
# marshal arg1 = nested producer-box slot [r12+984] -> [r12+1088]
 mov rax, qword ptr [r12 + 984]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 992]
 mov qword ptr [r12 + 1096], rax
  .section .rodata
  .Lrkfn372: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn372]
 lea rsi, [r12 + 1072]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je xchain300_n24_α
 jmp xchain300_n24_α
 xchain300_n23_β:
 jmp xchain300_n24_α
xchain300_n24_α:
# IR_LIT_S
bb165_α:
 mov qword ptr [r12 + 1104], 1
 mov rax, qword ptr [rip + .Lx373_0]
 mov qword ptr [r12 + 1112], rax
 jmp xchain300_n25_α
 xchain300_n24_β:
 jmp xchain300_n27_α
.Lx373_0:
 .quad .Lx373_0_s
.Lx373_0_s:
 .string "i ----> "
xchain300_n25_α:
xaltg374_a0_start:
bb166_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+1160]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1160], rax
 mov qword ptr [r12 + 1168], rdx
  .section .rodata
  .Lrkfn376: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn376]
 lea rsi, [r12 + 1160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1144], rax
 mov qword ptr [r12 + 1152], rdx
 cmp eax, 99
 je xaltg374_a1_start
 jmp xaltg374_a0_succ
 xaltg374_a0_beta:
 jmp xaltg374_a1_start
xaltg374_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 1152]
 mov qword ptr [r12 + 1128], rax
 mov qword ptr [r12 + 1136], 1
jmp xchain300_n26_α
xaltg374_a1_start:
# IR_LIT_S
bb167_α:
 mov qword ptr [r12 + 1176], 1
 mov rax, qword ptr [rip + .Lx378_0]
 mov qword ptr [r12 + 1184], rax
 jmp xaltg374_a1_succ
 xaltg374_a1_beta:
 jmp xchain300_n27_α
.Lx378_0:
 .quad .Lx378_0_s
.Lx378_0_s:
 .string "none"
xaltg374_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1176]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 1184]
 mov qword ptr [r12 + 1128], rax
 mov qword ptr [r12 + 1136], 1
jmp xchain300_n26_α
xchain300_n25_β:
jmp xchain300_n27_α
xchain300_n26_α:
bb168_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1208]
 mov qword ptr [r12 + 1208], 1
 mov rax, qword ptr [rip + .Lx380_0]
 mov qword ptr [r12 + 1216], rax
 jmp .Lx380_1
.Lx380_0:
 .quad .Lx380_0_s
.Lx380_0_s:
 .string "i ----> "
.Lx380_1:
# marshal arg1 = nested producer-box slot [r12+1120] -> [r12+1224]
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 1224], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 1232], rax
  .section .rodata
  .Lrkfn381: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn381]
 lea rsi, [r12 + 1208]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1192], rax
 mov qword ptr [r12 + 1200], rdx
 cmp eax, 99
 je xchain300_n27_α
 jmp xchain300_n27_α
 xchain300_n26_β:
 jmp xchain300_n27_α
xchain300_n27_α:
# IR_LIT_S
bb169_α:
 mov qword ptr [r12 + 1240], 1
 mov rax, qword ptr [rip + .Lx382_0]
 mov qword ptr [r12 + 1248], rax
 jmp xchain300_n28_α
 xchain300_n27_β:
 jmp xchain300_n30_α
.Lx382_0:
 .quad .Lx382_0_s
.Lx382_0_s:
 .string "i := 10 ----> "
xchain300_n28_α:
xaltg383_a0_start:
bb170_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+1296]
 mov qword ptr [r12 + 1296], 6
 movabs rax, 10
 mov qword ptr [r12 + 1304], rax
  .section .rodata
  .Lrkfn385: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn385]
 lea rsi, [r12 + 1296]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 cmp eax, 99
 je xaltg383_a1_start
 jmp xaltg383_a0_succ
 xaltg383_a0_beta:
 jmp xaltg383_a1_start
xaltg383_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1280]
 mov qword ptr [r12 + 1256], rax
 mov rax, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], 1
jmp xchain300_n29_α
xaltg383_a1_start:
# IR_LIT_S
bb171_α:
 mov qword ptr [r12 + 1312], 1
 mov rax, qword ptr [rip + .Lx387_0]
 mov qword ptr [r12 + 1320], rax
 jmp xaltg383_a1_succ
 xaltg383_a1_beta:
 jmp xchain300_n30_α
.Lx387_0:
 .quad .Lx387_0_s
.Lx387_0_s:
 .string "none"
xaltg383_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1312]
 mov qword ptr [r12 + 1256], rax
 mov rax, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], 1
jmp xchain300_n29_α
xchain300_n28_β:
jmp xchain300_n30_α
xchain300_n29_α:
bb172_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1344]
 mov qword ptr [r12 + 1344], 1
 mov rax, qword ptr [rip + .Lx389_0]
 mov qword ptr [r12 + 1352], rax
 jmp .Lx389_1
.Lx389_0:
 .quad .Lx389_0_s
.Lx389_0_s:
 .string "i := 10 ----> "
.Lx389_1:
# marshal arg1 = nested producer-box slot [r12+1256] -> [r12+1360]
 mov rax, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 1360], rax
 mov rax, qword ptr [r12 + 1264]
 mov qword ptr [r12 + 1368], rax
  .section .rodata
  .Lrkfn390: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn390]
 lea rsi, [r12 + 1344]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 cmp eax, 99
 je xchain300_n30_α
 jmp xchain300_n30_α
 xchain300_n29_β:
 jmp xchain300_n30_α
xchain300_n30_α:
# IR_LIT_S
bb173_α:
 mov qword ptr [r12 + 1376], 1
 mov rax, qword ptr [rip + .Lx391_0]
 mov qword ptr [r12 + 1384], rax
 jmp xchain300_n31_α
 xchain300_n30_β:
 jmp proc_p4_ω
.Lx391_0:
 .quad .Lx391_0_s
.Lx391_0_s:
 .string "i <:= 11 ----> "
xchain300_n31_α:
xaltg392_a0_start:
bb174_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+1432]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1432], rax
 mov qword ptr [r12 + 1440], rdx
  .section .rodata
  .Lrkfn394: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn394]
 lea rsi, [r12 + 1432]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1416], rax
 mov qword ptr [r12 + 1424], rdx
 cmp eax, 99
 je xaltg392_a1_start
 jmp xaltg392_a0_succ
 xaltg392_a0_beta:
 jmp xaltg392_a1_start
xaltg392_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1416]
 mov qword ptr [r12 + 1392], rax
 mov rax, qword ptr [r12 + 1424]
 mov qword ptr [r12 + 1400], rax
 mov qword ptr [r12 + 1408], 1
jmp xchain300_n32_α
xaltg392_a1_start:
# IR_LIT_S
bb175_α:
 mov qword ptr [r12 + 1448], 1
 mov rax, qword ptr [rip + .Lx396_0]
 mov qword ptr [r12 + 1456], rax
 jmp xaltg392_a1_succ
 xaltg392_a1_beta:
 jmp proc_p4_ω
.Lx396_0:
 .quad .Lx396_0_s
.Lx396_0_s:
 .string "none"
xaltg392_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1448]
 mov qword ptr [r12 + 1392], rax
 mov rax, qword ptr [r12 + 1456]
 mov qword ptr [r12 + 1400], rax
 mov qword ptr [r12 + 1408], 1
jmp xchain300_n32_α
xchain300_n31_β:
jmp proc_p4_ω
xchain300_n32_α:
bb176_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1480]
 mov qword ptr [r12 + 1480], 1
 mov rax, qword ptr [rip + .Lx398_0]
 mov qword ptr [r12 + 1488], rax
 jmp .Lx398_1
.Lx398_0:
 .quad .Lx398_0_s
.Lx398_0_s:
 .string "i <:= 11 ----> "
.Lx398_1:
# marshal arg1 = nested producer-box slot [r12+1392] -> [r12+1496]
 mov rax, qword ptr [r12 + 1392]
 mov qword ptr [r12 + 1496], rax
 mov rax, qword ptr [r12 + 1400]
 mov qword ptr [r12 + 1504], rax
  .section .rodata
  .Lrkfn399: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn399]
 lea rsi, [r12 + 1480]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1464], rax
 mov qword ptr [r12 + 1472], rdx
 cmp eax, 99
 je proc_p4_ω
 jmp proc_p4_γ
 xchain300_n32_β:
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
xchain400_n0_α:
# IR_LIT_S
bb177_α:
 mov qword ptr [r12 + 16], 1
 mov rax, qword ptr [rip + .Lx401_0]
 mov qword ptr [r12 + 24], rax
 jmp xchain400_n1_α
 xchain400_n0_β:
 jmp xchain400_n3_α
.Lx401_0:
 .quad .Lx401_0_s
.Lx401_0_s:
 .string "i ----> "
xchain400_n1_α:
xaltg402_a0_start:
bb178_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+72]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 72], rax
 mov qword ptr [r12 + 80], rdx
  .section .rodata
  .Lrkfn404: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn404]
 lea rsi, [r12 + 72]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 56], rax
 mov qword ptr [r12 + 64], rdx
 cmp eax, 99
 je xaltg402_a1_start
 jmp xaltg402_a0_succ
 xaltg402_a0_beta:
 jmp xaltg402_a1_start
xaltg402_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain400_n2_α
xaltg402_a1_start:
# IR_LIT_S
bb179_α:
 mov qword ptr [r12 + 88], 1
 mov rax, qword ptr [rip + .Lx406_0]
 mov qword ptr [r12 + 96], rax
 jmp xaltg402_a1_succ
 xaltg402_a1_beta:
 jmp xchain400_n3_α
.Lx406_0:
 .quad .Lx406_0_s
.Lx406_0_s:
 .string "none"
xaltg402_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain400_n2_α
xchain400_n1_β:
jmp xchain400_n3_α
xchain400_n2_α:
bb180_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+120]
 mov qword ptr [r12 + 120], 1
 mov rax, qword ptr [rip + .Lx408_0]
 mov qword ptr [r12 + 128], rax
 jmp .Lx408_1
.Lx408_0:
 .quad .Lx408_0_s
.Lx408_0_s:
 .string "i ----> "
.Lx408_1:
# marshal arg1 = nested producer-box slot [r12+32] -> [r12+136]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 136], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 144], rax
  .section .rodata
  .Lrkfn409: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn409]
 lea rsi, [r12 + 120]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 104], rax
 mov qword ptr [r12 + 112], rdx
 cmp eax, 99
 je xchain400_n3_α
 jmp xchain400_n3_α
 xchain400_n2_β:
 jmp xchain400_n3_α
xchain400_n3_α:
# IR_LIT_S
bb181_α:
 mov qword ptr [r12 + 152], 1
 mov rax, qword ptr [rip + .Lx410_0]
 mov qword ptr [r12 + 160], rax
 jmp xchain400_n4_α
 xchain400_n3_β:
 jmp xchain400_n6_α
.Lx410_0:
 .quad .Lx410_0_s
.Lx410_0_s:
 .string "i := 10 ----> "
xchain400_n4_α:
xaltg411_a0_start:
bb182_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+208]
 mov qword ptr [r12 + 208], 6
 movabs rax, 10
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lrkfn413: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn413]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xaltg411_a1_start
 jmp xaltg411_a0_succ
 xaltg411_a0_beta:
 jmp xaltg411_a1_start
xaltg411_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 168], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], 1
jmp xchain400_n5_α
xaltg411_a1_start:
# IR_LIT_S
bb183_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx415_0]
 mov qword ptr [r12 + 232], rax
 jmp xaltg411_a1_succ
 xaltg411_a1_beta:
 jmp xchain400_n6_α
.Lx415_0:
 .quad .Lx415_0_s
.Lx415_0_s:
 .string "none"
xaltg411_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 168], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], 1
jmp xchain400_n5_α
xchain400_n4_β:
jmp xchain400_n6_α
xchain400_n5_α:
bb184_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+256]
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx417_0]
 mov qword ptr [r12 + 264], rax
 jmp .Lx417_1
.Lx417_0:
 .quad .Lx417_0_s
.Lx417_0_s:
 .string "i := 10 ----> "
.Lx417_1:
# marshal arg1 = nested producer-box slot [r12+168] -> [r12+272]
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 280], rax
  .section .rodata
  .Lrkfn418: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn418]
 lea rsi, [r12 + 256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain400_n6_α
 jmp xchain400_n6_α
 xchain400_n5_β:
 jmp xchain400_n6_α
xchain400_n6_α:
# IR_LIT_S
bb185_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx419_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain400_n7_α
 xchain400_n6_β:
 jmp xchain400_n9_α
.Lx419_0:
 .quad .Lx419_0_s
.Lx419_0_s:
 .string "i ~=:= 9 ----> "
xchain400_n7_α:
xaltg420_a0_start:
bb186_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+344]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 344], rax
 mov qword ptr [r12 + 352], rdx
  .section .rodata
  .Lrkfn422: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn422]
 lea rsi, [r12 + 344]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 328], rax
 mov qword ptr [r12 + 336], rdx
 cmp eax, 99
 je xaltg420_a1_start
 jmp xaltg420_a0_succ
 xaltg420_a0_beta:
 jmp xaltg420_a1_start
xaltg420_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 312], rax
 mov qword ptr [r12 + 320], 1
jmp xchain400_n8_α
xaltg420_a1_start:
# IR_LIT_S
bb187_α:
 mov qword ptr [r12 + 360], 1
 mov rax, qword ptr [rip + .Lx424_0]
 mov qword ptr [r12 + 368], rax
 jmp xaltg420_a1_succ
 xaltg420_a1_beta:
 jmp xchain400_n9_α
.Lx424_0:
 .quad .Lx424_0_s
.Lx424_0_s:
 .string "none"
xaltg420_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 312], rax
 mov qword ptr [r12 + 320], 1
jmp xchain400_n8_α
xchain400_n7_β:
jmp xchain400_n9_α
xchain400_n8_α:
bb188_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+392]
 mov qword ptr [r12 + 392], 1
 mov rax, qword ptr [rip + .Lx426_0]
 mov qword ptr [r12 + 400], rax
 jmp .Lx426_1
.Lx426_0:
 .quad .Lx426_0_s
.Lx426_0_s:
 .string "i ~=:= 9 ----> "
.Lx426_1:
# marshal arg1 = nested producer-box slot [r12+304] -> [r12+408]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 408], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 416], rax
  .section .rodata
  .Lrkfn427: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn427]
 lea rsi, [r12 + 392]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 376], rax
 mov qword ptr [r12 + 384], rdx
 cmp eax, 99
 je xchain400_n9_α
 jmp xchain400_n9_α
 xchain400_n8_β:
 jmp xchain400_n9_α
xchain400_n9_α:
# IR_LIT_S
bb189_α:
 mov qword ptr [r12 + 424], 1
 mov rax, qword ptr [rip + .Lx428_0]
 mov qword ptr [r12 + 432], rax
 jmp xchain400_n10_α
 xchain400_n9_β:
 jmp xchain400_n12_α
.Lx428_0:
 .quad .Lx428_0_s
.Lx428_0_s:
 .string "i ----> "
xchain400_n10_α:
xaltg429_a0_start:
bb190_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+480]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
  .section .rodata
  .Lrkfn431: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn431]
 lea rsi, [r12 + 480]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 cmp eax, 99
 je xaltg429_a1_start
 jmp xaltg429_a0_succ
 xaltg429_a0_beta:
 jmp xaltg429_a1_start
xaltg429_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 440], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], 1
jmp xchain400_n11_α
xaltg429_a1_start:
# IR_LIT_S
bb191_α:
 mov qword ptr [r12 + 496], 1
 mov rax, qword ptr [rip + .Lx433_0]
 mov qword ptr [r12 + 504], rax
 jmp xaltg429_a1_succ
 xaltg429_a1_beta:
 jmp xchain400_n12_α
.Lx433_0:
 .quad .Lx433_0_s
.Lx433_0_s:
 .string "none"
xaltg429_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 440], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], 1
jmp xchain400_n11_α
xchain400_n10_β:
jmp xchain400_n12_α
xchain400_n11_α:
bb192_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+528]
 mov qword ptr [r12 + 528], 1
 mov rax, qword ptr [rip + .Lx435_0]
 mov qword ptr [r12 + 536], rax
 jmp .Lx435_1
.Lx435_0:
 .quad .Lx435_0_s
.Lx435_0_s:
 .string "i ----> "
.Lx435_1:
# marshal arg1 = nested producer-box slot [r12+440] -> [r12+544]
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 552], rax
  .section .rodata
  .Lrkfn436: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn436]
 lea rsi, [r12 + 528]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je xchain400_n12_α
 jmp xchain400_n12_α
 xchain400_n11_β:
 jmp xchain400_n12_α
xchain400_n12_α:
# IR_LIT_S
bb193_α:
 mov qword ptr [r12 + 560], 1
 mov rax, qword ptr [rip + .Lx437_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain400_n13_α
 xchain400_n12_β:
 jmp xchain400_n15_α
.Lx437_0:
 .quad .Lx437_0_s
.Lx437_0_s:
 .string "i := 10 ----> "
xchain400_n13_α:
xaltg438_a0_start:
bb194_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+616]
 mov qword ptr [r12 + 616], 6
 movabs rax, 10
 mov qword ptr [r12 + 624], rax
  .section .rodata
  .Lrkfn440: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn440]
 lea rsi, [r12 + 616]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 600], rax
 mov qword ptr [r12 + 608], rdx
 cmp eax, 99
 je xaltg438_a1_start
 jmp xaltg438_a0_succ
 xaltg438_a0_beta:
 jmp xaltg438_a1_start
xaltg438_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 584], rax
 mov qword ptr [r12 + 592], 1
jmp xchain400_n14_α
xaltg438_a1_start:
# IR_LIT_S
bb195_α:
 mov qword ptr [r12 + 632], 1
 mov rax, qword ptr [rip + .Lx442_0]
 mov qword ptr [r12 + 640], rax
 jmp xaltg438_a1_succ
 xaltg438_a1_beta:
 jmp xchain400_n15_α
.Lx442_0:
 .quad .Lx442_0_s
.Lx442_0_s:
 .string "none"
xaltg438_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 584], rax
 mov qword ptr [r12 + 592], 1
jmp xchain400_n14_α
xchain400_n13_β:
jmp xchain400_n15_α
xchain400_n14_α:
bb196_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+664]
 mov qword ptr [r12 + 664], 1
 mov rax, qword ptr [rip + .Lx444_0]
 mov qword ptr [r12 + 672], rax
 jmp .Lx444_1
.Lx444_0:
 .quad .Lx444_0_s
.Lx444_0_s:
 .string "i := 10 ----> "
.Lx444_1:
# marshal arg1 = nested producer-box slot [r12+576] -> [r12+680]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 680], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 688], rax
  .section .rodata
  .Lrkfn445: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn445]
 lea rsi, [r12 + 664]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 648], rax
 mov qword ptr [r12 + 656], rdx
 cmp eax, 99
 je xchain400_n15_α
 jmp xchain400_n15_α
 xchain400_n14_β:
 jmp xchain400_n15_α
xchain400_n15_α:
# IR_LIT_S
bb197_α:
 mov qword ptr [r12 + 696], 1
 mov rax, qword ptr [rip + .Lx446_0]
 mov qword ptr [r12 + 704], rax
 jmp xchain400_n16_α
 xchain400_n15_β:
 jmp xchain400_n18_α
.Lx446_0:
 .quad .Lx446_0_s
.Lx446_0_s:
 .string "i ~=:= 10 ----> "
xchain400_n16_α:
xaltg447_a0_start:
bb198_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+752]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
  .section .rodata
  .Lrkfn449: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn449]
 lea rsi, [r12 + 752]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 cmp eax, 99
 je xaltg447_a1_start
 jmp xaltg447_a0_succ
 xaltg447_a0_beta:
 jmp xaltg447_a1_start
xaltg447_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 712], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], 1
jmp xchain400_n17_α
xaltg447_a1_start:
# IR_LIT_S
bb199_α:
 mov qword ptr [r12 + 768], 1
 mov rax, qword ptr [rip + .Lx451_0]
 mov qword ptr [r12 + 776], rax
 jmp xaltg447_a1_succ
 xaltg447_a1_beta:
 jmp xchain400_n18_α
.Lx451_0:
 .quad .Lx451_0_s
.Lx451_0_s:
 .string "none"
xaltg447_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 712], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], 1
jmp xchain400_n17_α
xchain400_n16_β:
jmp xchain400_n18_α
xchain400_n17_α:
bb200_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+800]
 mov qword ptr [r12 + 800], 1
 mov rax, qword ptr [rip + .Lx453_0]
 mov qword ptr [r12 + 808], rax
 jmp .Lx453_1
.Lx453_0:
 .quad .Lx453_0_s
.Lx453_0_s:
 .string "i ~=:= 10 ----> "
.Lx453_1:
# marshal arg1 = nested producer-box slot [r12+712] -> [r12+816]
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 824], rax
  .section .rodata
  .Lrkfn454: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn454]
 lea rsi, [r12 + 800]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 cmp eax, 99
 je xchain400_n18_α
 jmp xchain400_n18_α
 xchain400_n17_β:
 jmp xchain400_n18_α
xchain400_n18_α:
# IR_LIT_S
bb201_α:
 mov qword ptr [r12 + 832], 1
 mov rax, qword ptr [rip + .Lx455_0]
 mov qword ptr [r12 + 840], rax
 jmp xchain400_n19_α
 xchain400_n18_β:
 jmp xchain400_n21_α
.Lx455_0:
 .quad .Lx455_0_s
.Lx455_0_s:
 .string "i ----> "
xchain400_n19_α:
xaltg456_a0_start:
bb202_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+888]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 888], rax
 mov qword ptr [r12 + 896], rdx
  .section .rodata
  .Lrkfn458: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn458]
 lea rsi, [r12 + 888]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 872], rax
 mov qword ptr [r12 + 880], rdx
 cmp eax, 99
 je xaltg456_a1_start
 jmp xaltg456_a0_succ
 xaltg456_a0_beta:
 jmp xaltg456_a1_start
xaltg456_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 856], rax
 mov qword ptr [r12 + 864], 1
jmp xchain400_n20_α
xaltg456_a1_start:
# IR_LIT_S
bb203_α:
 mov qword ptr [r12 + 904], 1
 mov rax, qword ptr [rip + .Lx460_0]
 mov qword ptr [r12 + 912], rax
 jmp xaltg456_a1_succ
 xaltg456_a1_beta:
 jmp xchain400_n21_α
.Lx460_0:
 .quad .Lx460_0_s
.Lx460_0_s:
 .string "none"
xaltg456_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 904]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 912]
 mov qword ptr [r12 + 856], rax
 mov qword ptr [r12 + 864], 1
jmp xchain400_n20_α
xchain400_n19_β:
jmp xchain400_n21_α
xchain400_n20_α:
bb204_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+936]
 mov qword ptr [r12 + 936], 1
 mov rax, qword ptr [rip + .Lx462_0]
 mov qword ptr [r12 + 944], rax
 jmp .Lx462_1
.Lx462_0:
 .quad .Lx462_0_s
.Lx462_0_s:
 .string "i ----> "
.Lx462_1:
# marshal arg1 = nested producer-box slot [r12+848] -> [r12+952]
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 952], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 960], rax
  .section .rodata
  .Lrkfn463: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn463]
 lea rsi, [r12 + 936]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 920], rax
 mov qword ptr [r12 + 928], rdx
 cmp eax, 99
 je xchain400_n21_α
 jmp xchain400_n21_α
 xchain400_n20_β:
 jmp xchain400_n21_α
xchain400_n21_α:
# IR_LIT_S
bb205_α:
 mov qword ptr [r12 + 968], 1
 mov rax, qword ptr [rip + .Lx464_0]
 mov qword ptr [r12 + 976], rax
 jmp xchain400_n22_α
 xchain400_n21_β:
 jmp xchain400_n24_α
.Lx464_0:
 .quad .Lx464_0_s
.Lx464_0_s:
 .string "i := 10 ----> "
xchain400_n22_α:
xaltg465_a0_start:
bb206_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+1024]
 mov qword ptr [r12 + 1024], 6
 movabs rax, 10
 mov qword ptr [r12 + 1032], rax
  .section .rodata
  .Lrkfn467: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn467]
 lea rsi, [r12 + 1024]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 cmp eax, 99
 je xaltg465_a1_start
 jmp xaltg465_a0_succ
 xaltg465_a0_beta:
 jmp xaltg465_a1_start
xaltg465_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1008]
 mov qword ptr [r12 + 984], rax
 mov rax, qword ptr [r12 + 1016]
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], 1
jmp xchain400_n23_α
xaltg465_a1_start:
# IR_LIT_S
bb207_α:
 mov qword ptr [r12 + 1040], 1
 mov rax, qword ptr [rip + .Lx469_0]
 mov qword ptr [r12 + 1048], rax
 jmp xaltg465_a1_succ
 xaltg465_a1_beta:
 jmp xchain400_n24_α
.Lx469_0:
 .quad .Lx469_0_s
.Lx469_0_s:
 .string "none"
xaltg465_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1040]
 mov qword ptr [r12 + 984], rax
 mov rax, qword ptr [r12 + 1048]
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], 1
jmp xchain400_n23_α
xchain400_n22_β:
jmp xchain400_n24_α
xchain400_n23_α:
bb208_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1072]
 mov qword ptr [r12 + 1072], 1
 mov rax, qword ptr [rip + .Lx471_0]
 mov qword ptr [r12 + 1080], rax
 jmp .Lx471_1
.Lx471_0:
 .quad .Lx471_0_s
.Lx471_0_s:
 .string "i := 10 ----> "
.Lx471_1:
# marshal arg1 = nested producer-box slot [r12+984] -> [r12+1088]
 mov rax, qword ptr [r12 + 984]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 992]
 mov qword ptr [r12 + 1096], rax
  .section .rodata
  .Lrkfn472: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn472]
 lea rsi, [r12 + 1072]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je xchain400_n24_α
 jmp xchain400_n24_α
 xchain400_n23_β:
 jmp xchain400_n24_α
xchain400_n24_α:
# IR_LIT_S
bb209_α:
 mov qword ptr [r12 + 1104], 1
 mov rax, qword ptr [rip + .Lx473_0]
 mov qword ptr [r12 + 1112], rax
 jmp xchain400_n25_α
 xchain400_n24_β:
 jmp xchain400_n27_α
.Lx473_0:
 .quad .Lx473_0_s
.Lx473_0_s:
 .string "i ~=:= 11 ----> "
xchain400_n25_α:
xaltg474_a0_start:
bb210_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+1160]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1160], rax
 mov qword ptr [r12 + 1168], rdx
  .section .rodata
  .Lrkfn476: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn476]
 lea rsi, [r12 + 1160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1144], rax
 mov qword ptr [r12 + 1152], rdx
 cmp eax, 99
 je xaltg474_a1_start
 jmp xaltg474_a0_succ
 xaltg474_a0_beta:
 jmp xaltg474_a1_start
xaltg474_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 1152]
 mov qword ptr [r12 + 1128], rax
 mov qword ptr [r12 + 1136], 1
jmp xchain400_n26_α
xaltg474_a1_start:
# IR_LIT_S
bb211_α:
 mov qword ptr [r12 + 1176], 1
 mov rax, qword ptr [rip + .Lx478_0]
 mov qword ptr [r12 + 1184], rax
 jmp xaltg474_a1_succ
 xaltg474_a1_beta:
 jmp xchain400_n27_α
.Lx478_0:
 .quad .Lx478_0_s
.Lx478_0_s:
 .string "none"
xaltg474_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1176]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 1184]
 mov qword ptr [r12 + 1128], rax
 mov qword ptr [r12 + 1136], 1
jmp xchain400_n26_α
xchain400_n25_β:
jmp xchain400_n27_α
xchain400_n26_α:
bb212_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1208]
 mov qword ptr [r12 + 1208], 1
 mov rax, qword ptr [rip + .Lx480_0]
 mov qword ptr [r12 + 1216], rax
 jmp .Lx480_1
.Lx480_0:
 .quad .Lx480_0_s
.Lx480_0_s:
 .string "i ~=:= 11 ----> "
.Lx480_1:
# marshal arg1 = nested producer-box slot [r12+1120] -> [r12+1224]
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 1224], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 1232], rax
  .section .rodata
  .Lrkfn481: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn481]
 lea rsi, [r12 + 1208]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1192], rax
 mov qword ptr [r12 + 1200], rdx
 cmp eax, 99
 je xchain400_n27_α
 jmp xchain400_n27_α
 xchain400_n26_β:
 jmp xchain400_n27_α
xchain400_n27_α:
# IR_LIT_S
bb213_α:
 mov qword ptr [r12 + 1240], 1
 mov rax, qword ptr [rip + .Lx482_0]
 mov qword ptr [r12 + 1248], rax
 jmp xchain400_n28_α
 xchain400_n27_β:
 jmp xchain400_n30_α
.Lx482_0:
 .quad .Lx482_0_s
.Lx482_0_s:
 .string "i ----> "
xchain400_n28_α:
xaltg483_a0_start:
bb214_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+1296]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1296], rax
 mov qword ptr [r12 + 1304], rdx
  .section .rodata
  .Lrkfn485: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn485]
 lea rsi, [r12 + 1296]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 cmp eax, 99
 je xaltg483_a1_start
 jmp xaltg483_a0_succ
 xaltg483_a0_beta:
 jmp xaltg483_a1_start
xaltg483_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1280]
 mov qword ptr [r12 + 1256], rax
 mov rax, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], 1
jmp xchain400_n29_α
xaltg483_a1_start:
# IR_LIT_S
bb215_α:
 mov qword ptr [r12 + 1312], 1
 mov rax, qword ptr [rip + .Lx487_0]
 mov qword ptr [r12 + 1320], rax
 jmp xaltg483_a1_succ
 xaltg483_a1_beta:
 jmp xchain400_n30_α
.Lx487_0:
 .quad .Lx487_0_s
.Lx487_0_s:
 .string "none"
xaltg483_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1312]
 mov qword ptr [r12 + 1256], rax
 mov rax, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], 1
jmp xchain400_n29_α
xchain400_n28_β:
jmp xchain400_n30_α
xchain400_n29_α:
bb216_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1344]
 mov qword ptr [r12 + 1344], 1
 mov rax, qword ptr [rip + .Lx489_0]
 mov qword ptr [r12 + 1352], rax
 jmp .Lx489_1
.Lx489_0:
 .quad .Lx489_0_s
.Lx489_0_s:
 .string "i ----> "
.Lx489_1:
# marshal arg1 = nested producer-box slot [r12+1256] -> [r12+1360]
 mov rax, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 1360], rax
 mov rax, qword ptr [r12 + 1264]
 mov qword ptr [r12 + 1368], rax
  .section .rodata
  .Lrkfn490: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn490]
 lea rsi, [r12 + 1344]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 cmp eax, 99
 je xchain400_n30_α
 jmp xchain400_n30_α
 xchain400_n29_β:
 jmp xchain400_n30_α
xchain400_n30_α:
# IR_LIT_S
bb217_α:
 mov qword ptr [r12 + 1376], 1
 mov rax, qword ptr [rip + .Lx491_0]
 mov qword ptr [r12 + 1384], rax
 jmp xchain400_n31_α
 xchain400_n30_β:
 jmp proc_p5_ω
.Lx491_0:
 .quad .Lx491_0_s
.Lx491_0_s:
 .string "i := 10 ----> "
xchain400_n31_α:
xaltg492_a0_start:
bb218_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+1432]
 mov qword ptr [r12 + 1432], 6
 movabs rax, 10
 mov qword ptr [r12 + 1440], rax
  .section .rodata
  .Lrkfn494: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn494]
 lea rsi, [r12 + 1432]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1416], rax
 mov qword ptr [r12 + 1424], rdx
 cmp eax, 99
 je xaltg492_a1_start
 jmp xaltg492_a0_succ
 xaltg492_a0_beta:
 jmp xaltg492_a1_start
xaltg492_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1416]
 mov qword ptr [r12 + 1392], rax
 mov rax, qword ptr [r12 + 1424]
 mov qword ptr [r12 + 1400], rax
 mov qword ptr [r12 + 1408], 1
jmp xchain400_n32_α
xaltg492_a1_start:
# IR_LIT_S
bb219_α:
 mov qword ptr [r12 + 1448], 1
 mov rax, qword ptr [rip + .Lx496_0]
 mov qword ptr [r12 + 1456], rax
 jmp xaltg492_a1_succ
 xaltg492_a1_beta:
 jmp proc_p5_ω
.Lx496_0:
 .quad .Lx496_0_s
.Lx496_0_s:
 .string "none"
xaltg492_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1448]
 mov qword ptr [r12 + 1392], rax
 mov rax, qword ptr [r12 + 1456]
 mov qword ptr [r12 + 1400], rax
 mov qword ptr [r12 + 1408], 1
jmp xchain400_n32_α
xchain400_n31_β:
jmp proc_p5_ω
xchain400_n32_α:
bb220_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1480]
 mov qword ptr [r12 + 1480], 1
 mov rax, qword ptr [rip + .Lx498_0]
 mov qword ptr [r12 + 1488], rax
 jmp .Lx498_1
.Lx498_0:
 .quad .Lx498_0_s
.Lx498_0_s:
 .string "i := 10 ----> "
.Lx498_1:
# marshal arg1 = nested producer-box slot [r12+1392] -> [r12+1496]
 mov rax, qword ptr [r12 + 1392]
 mov qword ptr [r12 + 1496], rax
 mov rax, qword ptr [r12 + 1400]
 mov qword ptr [r12 + 1504], rax
  .section .rodata
  .Lrkfn499: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn499]
 lea rsi, [r12 + 1480]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1464], rax
 mov qword ptr [r12 + 1472], rdx
 cmp eax, 99
 je proc_p5_ω
 jmp proc_p5_γ
 xchain400_n32_β:
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
xchain500_n0_α:
# IR_LIT_S
bb221_α:
 mov qword ptr [r12 + 16], 1
 mov rax, qword ptr [rip + .Lx501_0]
 mov qword ptr [r12 + 24], rax
 jmp xchain500_n1_α
 xchain500_n0_β:
 jmp xchain500_n3_α
.Lx501_0:
 .quad .Lx501_0_s
.Lx501_0_s:
 .string "i +:= 9 ----> "
xchain500_n1_α:
xaltg502_a0_start:
bb222_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+72]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 72], rax
 mov qword ptr [r12 + 80], rdx
  .section .rodata
  .Lrkfn504: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn504]
 lea rsi, [r12 + 72]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 56], rax
 mov qword ptr [r12 + 64], rdx
 cmp eax, 99
 je xaltg502_a1_start
 jmp xaltg502_a0_succ
 xaltg502_a0_beta:
 jmp xaltg502_a1_start
xaltg502_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain500_n2_α
xaltg502_a1_start:
# IR_LIT_S
bb223_α:
 mov qword ptr [r12 + 88], 1
 mov rax, qword ptr [rip + .Lx506_0]
 mov qword ptr [r12 + 96], rax
 jmp xaltg502_a1_succ
 xaltg502_a1_beta:
 jmp xchain500_n3_α
.Lx506_0:
 .quad .Lx506_0_s
.Lx506_0_s:
 .string "none"
xaltg502_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain500_n2_α
xchain500_n1_β:
jmp xchain500_n3_α
xchain500_n2_α:
bb224_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+120]
 mov qword ptr [r12 + 120], 1
 mov rax, qword ptr [rip + .Lx508_0]
 mov qword ptr [r12 + 128], rax
 jmp .Lx508_1
.Lx508_0:
 .quad .Lx508_0_s
.Lx508_0_s:
 .string "i +:= 9 ----> "
.Lx508_1:
# marshal arg1 = nested producer-box slot [r12+32] -> [r12+136]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 136], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 144], rax
  .section .rodata
  .Lrkfn509: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn509]
 lea rsi, [r12 + 120]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 104], rax
 mov qword ptr [r12 + 112], rdx
 cmp eax, 99
 je xchain500_n3_α
 jmp xchain500_n3_α
 xchain500_n2_β:
 jmp xchain500_n3_α
xchain500_n3_α:
# IR_LIT_S
bb225_α:
 mov qword ptr [r12 + 152], 1
 mov rax, qword ptr [rip + .Lx510_0]
 mov qword ptr [r12 + 160], rax
 jmp xchain500_n4_α
 xchain500_n3_β:
 jmp xchain500_n6_α
.Lx510_0:
 .quad .Lx510_0_s
.Lx510_0_s:
 .string "i ----> "
xchain500_n4_α:
xaltg511_a0_start:
bb226_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+208]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
  .section .rodata
  .Lrkfn513: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn513]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xaltg511_a1_start
 jmp xaltg511_a0_succ
 xaltg511_a0_beta:
 jmp xaltg511_a1_start
xaltg511_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 168], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], 1
jmp xchain500_n5_α
xaltg511_a1_start:
# IR_LIT_S
bb227_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx515_0]
 mov qword ptr [r12 + 232], rax
 jmp xaltg511_a1_succ
 xaltg511_a1_beta:
 jmp xchain500_n6_α
.Lx515_0:
 .quad .Lx515_0_s
.Lx515_0_s:
 .string "none"
xaltg511_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 168], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], 1
jmp xchain500_n5_α
xchain500_n4_β:
jmp xchain500_n6_α
xchain500_n5_α:
bb228_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+256]
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx517_0]
 mov qword ptr [r12 + 264], rax
 jmp .Lx517_1
.Lx517_0:
 .quad .Lx517_0_s
.Lx517_0_s:
 .string "i ----> "
.Lx517_1:
# marshal arg1 = nested producer-box slot [r12+168] -> [r12+272]
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 280], rax
  .section .rodata
  .Lrkfn518: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn518]
 lea rsi, [r12 + 256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain500_n6_α
 jmp xchain500_n6_α
 xchain500_n5_β:
 jmp xchain500_n6_α
xchain500_n6_α:
# IR_LIT_S
bb229_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx519_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain500_n7_α
 xchain500_n6_β:
 jmp xchain500_n9_α
.Lx519_0:
 .quad .Lx519_0_s
.Lx519_0_s:
 .string "i := 10 ----> "
xchain500_n7_α:
xaltg520_a0_start:
bb230_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+344]
 mov qword ptr [r12 + 344], 6
 movabs rax, 10
 mov qword ptr [r12 + 352], rax
  .section .rodata
  .Lrkfn522: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn522]
 lea rsi, [r12 + 344]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 328], rax
 mov qword ptr [r12 + 336], rdx
 cmp eax, 99
 je xaltg520_a1_start
 jmp xaltg520_a0_succ
 xaltg520_a0_beta:
 jmp xaltg520_a1_start
xaltg520_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 312], rax
 mov qword ptr [r12 + 320], 1
jmp xchain500_n8_α
xaltg520_a1_start:
# IR_LIT_S
bb231_α:
 mov qword ptr [r12 + 360], 1
 mov rax, qword ptr [rip + .Lx524_0]
 mov qword ptr [r12 + 368], rax
 jmp xaltg520_a1_succ
 xaltg520_a1_beta:
 jmp xchain500_n9_α
.Lx524_0:
 .quad .Lx524_0_s
.Lx524_0_s:
 .string "none"
xaltg520_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 312], rax
 mov qword ptr [r12 + 320], 1
jmp xchain500_n8_α
xchain500_n7_β:
jmp xchain500_n9_α
xchain500_n8_α:
bb232_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+392]
 mov qword ptr [r12 + 392], 1
 mov rax, qword ptr [rip + .Lx526_0]
 mov qword ptr [r12 + 400], rax
 jmp .Lx526_1
.Lx526_0:
 .quad .Lx526_0_s
.Lx526_0_s:
 .string "i := 10 ----> "
.Lx526_1:
# marshal arg1 = nested producer-box slot [r12+304] -> [r12+408]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 408], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 416], rax
  .section .rodata
  .Lrkfn527: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn527]
 lea rsi, [r12 + 392]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 376], rax
 mov qword ptr [r12 + 384], rdx
 cmp eax, 99
 je xchain500_n9_α
 jmp xchain500_n9_α
 xchain500_n8_β:
 jmp xchain500_n9_α
xchain500_n9_α:
# IR_LIT_S
bb233_α:
 mov qword ptr [r12 + 424], 1
 mov rax, qword ptr [rip + .Lx528_0]
 mov qword ptr [r12 + 432], rax
 jmp xchain500_n10_α
 xchain500_n9_β:
 jmp xchain500_n12_α
.Lx528_0:
 .quad .Lx528_0_s
.Lx528_0_s:
 .string "i +:= 10 ----> "
xchain500_n10_α:
xaltg529_a0_start:
bb234_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+480]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
  .section .rodata
  .Lrkfn531: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn531]
 lea rsi, [r12 + 480]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 cmp eax, 99
 je xaltg529_a1_start
 jmp xaltg529_a0_succ
 xaltg529_a0_beta:
 jmp xaltg529_a1_start
xaltg529_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 440], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], 1
jmp xchain500_n11_α
xaltg529_a1_start:
# IR_LIT_S
bb235_α:
 mov qword ptr [r12 + 496], 1
 mov rax, qword ptr [rip + .Lx533_0]
 mov qword ptr [r12 + 504], rax
 jmp xaltg529_a1_succ
 xaltg529_a1_beta:
 jmp xchain500_n12_α
.Lx533_0:
 .quad .Lx533_0_s
.Lx533_0_s:
 .string "none"
xaltg529_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 440], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], 1
jmp xchain500_n11_α
xchain500_n10_β:
jmp xchain500_n12_α
xchain500_n11_α:
bb236_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+528]
 mov qword ptr [r12 + 528], 1
 mov rax, qword ptr [rip + .Lx535_0]
 mov qword ptr [r12 + 536], rax
 jmp .Lx535_1
.Lx535_0:
 .quad .Lx535_0_s
.Lx535_0_s:
 .string "i +:= 10 ----> "
.Lx535_1:
# marshal arg1 = nested producer-box slot [r12+440] -> [r12+544]
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 552], rax
  .section .rodata
  .Lrkfn536: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn536]
 lea rsi, [r12 + 528]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je xchain500_n12_α
 jmp xchain500_n12_α
 xchain500_n11_β:
 jmp xchain500_n12_α
xchain500_n12_α:
# IR_LIT_S
bb237_α:
 mov qword ptr [r12 + 560], 1
 mov rax, qword ptr [rip + .Lx537_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain500_n13_α
 xchain500_n12_β:
 jmp xchain500_n15_α
.Lx537_0:
 .quad .Lx537_0_s
.Lx537_0_s:
 .string "i ----> "
xchain500_n13_α:
xaltg538_a0_start:
bb238_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+616]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 616], rax
 mov qword ptr [r12 + 624], rdx
  .section .rodata
  .Lrkfn540: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn540]
 lea rsi, [r12 + 616]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 600], rax
 mov qword ptr [r12 + 608], rdx
 cmp eax, 99
 je xaltg538_a1_start
 jmp xaltg538_a0_succ
 xaltg538_a0_beta:
 jmp xaltg538_a1_start
xaltg538_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 584], rax
 mov qword ptr [r12 + 592], 1
jmp xchain500_n14_α
xaltg538_a1_start:
# IR_LIT_S
bb239_α:
 mov qword ptr [r12 + 632], 1
 mov rax, qword ptr [rip + .Lx542_0]
 mov qword ptr [r12 + 640], rax
 jmp xaltg538_a1_succ
 xaltg538_a1_beta:
 jmp xchain500_n15_α
.Lx542_0:
 .quad .Lx542_0_s
.Lx542_0_s:
 .string "none"
xaltg538_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 584], rax
 mov qword ptr [r12 + 592], 1
jmp xchain500_n14_α
xchain500_n13_β:
jmp xchain500_n15_α
xchain500_n14_α:
bb240_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+664]
 mov qword ptr [r12 + 664], 1
 mov rax, qword ptr [rip + .Lx544_0]
 mov qword ptr [r12 + 672], rax
 jmp .Lx544_1
.Lx544_0:
 .quad .Lx544_0_s
.Lx544_0_s:
 .string "i ----> "
.Lx544_1:
# marshal arg1 = nested producer-box slot [r12+576] -> [r12+680]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 680], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 688], rax
  .section .rodata
  .Lrkfn545: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn545]
 lea rsi, [r12 + 664]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 648], rax
 mov qword ptr [r12 + 656], rdx
 cmp eax, 99
 je xchain500_n15_α
 jmp xchain500_n15_α
 xchain500_n14_β:
 jmp xchain500_n15_α
xchain500_n15_α:
# IR_LIT_S
bb241_α:
 mov qword ptr [r12 + 696], 1
 mov rax, qword ptr [rip + .Lx546_0]
 mov qword ptr [r12 + 704], rax
 jmp xchain500_n16_α
 xchain500_n15_β:
 jmp xchain500_n18_α
.Lx546_0:
 .quad .Lx546_0_s
.Lx546_0_s:
 .string "i := 10 ----> "
xchain500_n16_α:
xaltg547_a0_start:
bb242_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+752]
 mov qword ptr [r12 + 752], 6
 movabs rax, 10
 mov qword ptr [r12 + 760], rax
  .section .rodata
  .Lrkfn549: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn549]
 lea rsi, [r12 + 752]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 cmp eax, 99
 je xaltg547_a1_start
 jmp xaltg547_a0_succ
 xaltg547_a0_beta:
 jmp xaltg547_a1_start
xaltg547_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 712], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], 1
jmp xchain500_n17_α
xaltg547_a1_start:
# IR_LIT_S
bb243_α:
 mov qword ptr [r12 + 768], 1
 mov rax, qword ptr [rip + .Lx551_0]
 mov qword ptr [r12 + 776], rax
 jmp xaltg547_a1_succ
 xaltg547_a1_beta:
 jmp xchain500_n18_α
.Lx551_0:
 .quad .Lx551_0_s
.Lx551_0_s:
 .string "none"
xaltg547_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 712], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], 1
jmp xchain500_n17_α
xchain500_n16_β:
jmp xchain500_n18_α
xchain500_n17_α:
bb244_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+800]
 mov qword ptr [r12 + 800], 1
 mov rax, qword ptr [rip + .Lx553_0]
 mov qword ptr [r12 + 808], rax
 jmp .Lx553_1
.Lx553_0:
 .quad .Lx553_0_s
.Lx553_0_s:
 .string "i := 10 ----> "
.Lx553_1:
# marshal arg1 = nested producer-box slot [r12+712] -> [r12+816]
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 824], rax
  .section .rodata
  .Lrkfn554: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn554]
 lea rsi, [r12 + 800]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 cmp eax, 99
 je xchain500_n18_α
 jmp xchain500_n18_α
 xchain500_n17_β:
 jmp xchain500_n18_α
xchain500_n18_α:
# IR_LIT_S
bb245_α:
 mov qword ptr [r12 + 832], 1
 mov rax, qword ptr [rip + .Lx555_0]
 mov qword ptr [r12 + 840], rax
 jmp xchain500_n19_α
 xchain500_n18_β:
 jmp xchain500_n21_α
.Lx555_0:
 .quad .Lx555_0_s
.Lx555_0_s:
 .string "i +:= 11 ----> "
xchain500_n19_α:
xaltg556_a0_start:
bb246_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+888]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 888], rax
 mov qword ptr [r12 + 896], rdx
  .section .rodata
  .Lrkfn558: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn558]
 lea rsi, [r12 + 888]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 872], rax
 mov qword ptr [r12 + 880], rdx
 cmp eax, 99
 je xaltg556_a1_start
 jmp xaltg556_a0_succ
 xaltg556_a0_beta:
 jmp xaltg556_a1_start
xaltg556_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 856], rax
 mov qword ptr [r12 + 864], 1
jmp xchain500_n20_α
xaltg556_a1_start:
# IR_LIT_S
bb247_α:
 mov qword ptr [r12 + 904], 1
 mov rax, qword ptr [rip + .Lx560_0]
 mov qword ptr [r12 + 912], rax
 jmp xaltg556_a1_succ
 xaltg556_a1_beta:
 jmp xchain500_n21_α
.Lx560_0:
 .quad .Lx560_0_s
.Lx560_0_s:
 .string "none"
xaltg556_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 904]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 912]
 mov qword ptr [r12 + 856], rax
 mov qword ptr [r12 + 864], 1
jmp xchain500_n20_α
xchain500_n19_β:
jmp xchain500_n21_α
xchain500_n20_α:
bb248_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+936]
 mov qword ptr [r12 + 936], 1
 mov rax, qword ptr [rip + .Lx562_0]
 mov qword ptr [r12 + 944], rax
 jmp .Lx562_1
.Lx562_0:
 .quad .Lx562_0_s
.Lx562_0_s:
 .string "i +:= 11 ----> "
.Lx562_1:
# marshal arg1 = nested producer-box slot [r12+848] -> [r12+952]
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 952], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 960], rax
  .section .rodata
  .Lrkfn563: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn563]
 lea rsi, [r12 + 936]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 920], rax
 mov qword ptr [r12 + 928], rdx
 cmp eax, 99
 je xchain500_n21_α
 jmp xchain500_n21_α
 xchain500_n20_β:
 jmp xchain500_n21_α
xchain500_n21_α:
# IR_LIT_S
bb249_α:
 mov qword ptr [r12 + 968], 1
 mov rax, qword ptr [rip + .Lx564_0]
 mov qword ptr [r12 + 976], rax
 jmp xchain500_n22_α
 xchain500_n21_β:
 jmp xchain500_n24_α
.Lx564_0:
 .quad .Lx564_0_s
.Lx564_0_s:
 .string "i ----> "
xchain500_n22_α:
xaltg565_a0_start:
bb250_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+1024]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
  .section .rodata
  .Lrkfn567: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn567]
 lea rsi, [r12 + 1024]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 cmp eax, 99
 je xaltg565_a1_start
 jmp xaltg565_a0_succ
 xaltg565_a0_beta:
 jmp xaltg565_a1_start
xaltg565_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1008]
 mov qword ptr [r12 + 984], rax
 mov rax, qword ptr [r12 + 1016]
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], 1
jmp xchain500_n23_α
xaltg565_a1_start:
# IR_LIT_S
bb251_α:
 mov qword ptr [r12 + 1040], 1
 mov rax, qword ptr [rip + .Lx569_0]
 mov qword ptr [r12 + 1048], rax
 jmp xaltg565_a1_succ
 xaltg565_a1_beta:
 jmp xchain500_n24_α
.Lx569_0:
 .quad .Lx569_0_s
.Lx569_0_s:
 .string "none"
xaltg565_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1040]
 mov qword ptr [r12 + 984], rax
 mov rax, qword ptr [r12 + 1048]
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], 1
jmp xchain500_n23_α
xchain500_n22_β:
jmp xchain500_n24_α
xchain500_n23_α:
bb252_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1072]
 mov qword ptr [r12 + 1072], 1
 mov rax, qword ptr [rip + .Lx571_0]
 mov qword ptr [r12 + 1080], rax
 jmp .Lx571_1
.Lx571_0:
 .quad .Lx571_0_s
.Lx571_0_s:
 .string "i ----> "
.Lx571_1:
# marshal arg1 = nested producer-box slot [r12+984] -> [r12+1088]
 mov rax, qword ptr [r12 + 984]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 992]
 mov qword ptr [r12 + 1096], rax
  .section .rodata
  .Lrkfn572: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn572]
 lea rsi, [r12 + 1072]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je xchain500_n24_α
 jmp xchain500_n24_α
 xchain500_n23_β:
 jmp xchain500_n24_α
xchain500_n24_α:
# IR_LIT_S
bb253_α:
 mov qword ptr [r12 + 1104], 1
 mov rax, qword ptr [rip + .Lx573_0]
 mov qword ptr [r12 + 1112], rax
 jmp xchain500_n25_α
 xchain500_n24_β:
 jmp xchain500_n27_α
.Lx573_0:
 .quad .Lx573_0_s
.Lx573_0_s:
 .string "i := 10 ----> "
xchain500_n25_α:
xaltg574_a0_start:
bb254_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+1160]
 mov qword ptr [r12 + 1160], 6
 movabs rax, 10
 mov qword ptr [r12 + 1168], rax
  .section .rodata
  .Lrkfn576: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn576]
 lea rsi, [r12 + 1160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1144], rax
 mov qword ptr [r12 + 1152], rdx
 cmp eax, 99
 je xaltg574_a1_start
 jmp xaltg574_a0_succ
 xaltg574_a0_beta:
 jmp xaltg574_a1_start
xaltg574_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 1152]
 mov qword ptr [r12 + 1128], rax
 mov qword ptr [r12 + 1136], 1
jmp xchain500_n26_α
xaltg574_a1_start:
# IR_LIT_S
bb255_α:
 mov qword ptr [r12 + 1176], 1
 mov rax, qword ptr [rip + .Lx578_0]
 mov qword ptr [r12 + 1184], rax
 jmp xaltg574_a1_succ
 xaltg574_a1_beta:
 jmp xchain500_n27_α
.Lx578_0:
 .quad .Lx578_0_s
.Lx578_0_s:
 .string "none"
xaltg574_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1176]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 1184]
 mov qword ptr [r12 + 1128], rax
 mov qword ptr [r12 + 1136], 1
jmp xchain500_n26_α
xchain500_n25_β:
jmp xchain500_n27_α
xchain500_n26_α:
bb256_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1208]
 mov qword ptr [r12 + 1208], 1
 mov rax, qword ptr [rip + .Lx580_0]
 mov qword ptr [r12 + 1216], rax
 jmp .Lx580_1
.Lx580_0:
 .quad .Lx580_0_s
.Lx580_0_s:
 .string "i := 10 ----> "
.Lx580_1:
# marshal arg1 = nested producer-box slot [r12+1120] -> [r12+1224]
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 1224], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 1232], rax
  .section .rodata
  .Lrkfn581: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn581]
 lea rsi, [r12 + 1208]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1192], rax
 mov qword ptr [r12 + 1200], rdx
 cmp eax, 99
 je xchain500_n27_α
 jmp xchain500_n27_α
 xchain500_n26_β:
 jmp xchain500_n27_α
xchain500_n27_α:
# IR_LIT_S
bb257_α:
 mov qword ptr [r12 + 1240], 1
 mov rax, qword ptr [rip + .Lx582_0]
 mov qword ptr [r12 + 1248], rax
 jmp xchain500_n28_α
 xchain500_n27_β:
 jmp xchain500_n30_α
.Lx582_0:
 .quad .Lx582_0_s
.Lx582_0_s:
 .string "i -:= 9 ----> "
xchain500_n28_α:
xaltg583_a0_start:
bb258_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+1296]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1296], rax
 mov qword ptr [r12 + 1304], rdx
  .section .rodata
  .Lrkfn585: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn585]
 lea rsi, [r12 + 1296]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 cmp eax, 99
 je xaltg583_a1_start
 jmp xaltg583_a0_succ
 xaltg583_a0_beta:
 jmp xaltg583_a1_start
xaltg583_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1280]
 mov qword ptr [r12 + 1256], rax
 mov rax, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], 1
jmp xchain500_n29_α
xaltg583_a1_start:
# IR_LIT_S
bb259_α:
 mov qword ptr [r12 + 1312], 1
 mov rax, qword ptr [rip + .Lx587_0]
 mov qword ptr [r12 + 1320], rax
 jmp xaltg583_a1_succ
 xaltg583_a1_beta:
 jmp xchain500_n30_α
.Lx587_0:
 .quad .Lx587_0_s
.Lx587_0_s:
 .string "none"
xaltg583_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1312]
 mov qword ptr [r12 + 1256], rax
 mov rax, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], 1
jmp xchain500_n29_α
xchain500_n28_β:
jmp xchain500_n30_α
xchain500_n29_α:
bb260_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1344]
 mov qword ptr [r12 + 1344], 1
 mov rax, qword ptr [rip + .Lx589_0]
 mov qword ptr [r12 + 1352], rax
 jmp .Lx589_1
.Lx589_0:
 .quad .Lx589_0_s
.Lx589_0_s:
 .string "i -:= 9 ----> "
.Lx589_1:
# marshal arg1 = nested producer-box slot [r12+1256] -> [r12+1360]
 mov rax, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 1360], rax
 mov rax, qword ptr [r12 + 1264]
 mov qword ptr [r12 + 1368], rax
  .section .rodata
  .Lrkfn590: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn590]
 lea rsi, [r12 + 1344]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 cmp eax, 99
 je xchain500_n30_α
 jmp xchain500_n30_α
 xchain500_n29_β:
 jmp xchain500_n30_α
xchain500_n30_α:
# IR_LIT_S
bb261_α:
 mov qword ptr [r12 + 1376], 1
 mov rax, qword ptr [rip + .Lx591_0]
 mov qword ptr [r12 + 1384], rax
 jmp xchain500_n31_α
 xchain500_n30_β:
 jmp proc_p6_ω
.Lx591_0:
 .quad .Lx591_0_s
.Lx591_0_s:
 .string "i ----> "
xchain500_n31_α:
xaltg592_a0_start:
bb262_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+1432]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1432], rax
 mov qword ptr [r12 + 1440], rdx
  .section .rodata
  .Lrkfn594: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn594]
 lea rsi, [r12 + 1432]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1416], rax
 mov qword ptr [r12 + 1424], rdx
 cmp eax, 99
 je xaltg592_a1_start
 jmp xaltg592_a0_succ
 xaltg592_a0_beta:
 jmp xaltg592_a1_start
xaltg592_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1416]
 mov qword ptr [r12 + 1392], rax
 mov rax, qword ptr [r12 + 1424]
 mov qword ptr [r12 + 1400], rax
 mov qword ptr [r12 + 1408], 1
jmp xchain500_n32_α
xaltg592_a1_start:
# IR_LIT_S
bb263_α:
 mov qword ptr [r12 + 1448], 1
 mov rax, qword ptr [rip + .Lx596_0]
 mov qword ptr [r12 + 1456], rax
 jmp xaltg592_a1_succ
 xaltg592_a1_beta:
 jmp proc_p6_ω
.Lx596_0:
 .quad .Lx596_0_s
.Lx596_0_s:
 .string "none"
xaltg592_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1448]
 mov qword ptr [r12 + 1392], rax
 mov rax, qword ptr [r12 + 1456]
 mov qword ptr [r12 + 1400], rax
 mov qword ptr [r12 + 1408], 1
jmp xchain500_n32_α
xchain500_n31_β:
jmp proc_p6_ω
xchain500_n32_α:
bb264_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1480]
 mov qword ptr [r12 + 1480], 1
 mov rax, qword ptr [rip + .Lx598_0]
 mov qword ptr [r12 + 1488], rax
 jmp .Lx598_1
.Lx598_0:
 .quad .Lx598_0_s
.Lx598_0_s:
 .string "i ----> "
.Lx598_1:
# marshal arg1 = nested producer-box slot [r12+1392] -> [r12+1496]
 mov rax, qword ptr [r12 + 1392]
 mov qword ptr [r12 + 1496], rax
 mov rax, qword ptr [r12 + 1400]
 mov qword ptr [r12 + 1504], rax
  .section .rodata
  .Lrkfn599: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn599]
 lea rsi, [r12 + 1480]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1464], rax
 mov qword ptr [r12 + 1472], rdx
 cmp eax, 99
 je proc_p6_ω
 jmp proc_p6_γ
 xchain500_n32_β:
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
  .globl proc_p7_α
proc_p7_α:
#=======================================================================================================================
    .global proc_p7_α
    .global proc_p7_β
    .global proc_p7_γ
    .global proc_p7_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_p7_α_body:
xchain600_n0_α:
# IR_LIT_S
bb265_α:
 mov qword ptr [r12 + 16], 1
 mov rax, qword ptr [rip + .Lx601_0]
 mov qword ptr [r12 + 24], rax
 jmp xchain600_n1_α
 xchain600_n0_β:
 jmp xchain600_n3_α
.Lx601_0:
 .quad .Lx601_0_s
.Lx601_0_s:
 .string "i := 10 ----> "
xchain600_n1_α:
xaltg602_a0_start:
bb266_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+72]
 mov qword ptr [r12 + 72], 6
 movabs rax, 10
 mov qword ptr [r12 + 80], rax
  .section .rodata
  .Lrkfn604: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn604]
 lea rsi, [r12 + 72]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 56], rax
 mov qword ptr [r12 + 64], rdx
 cmp eax, 99
 je xaltg602_a1_start
 jmp xaltg602_a0_succ
 xaltg602_a0_beta:
 jmp xaltg602_a1_start
xaltg602_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain600_n2_α
xaltg602_a1_start:
# IR_LIT_S
bb267_α:
 mov qword ptr [r12 + 88], 1
 mov rax, qword ptr [rip + .Lx606_0]
 mov qword ptr [r12 + 96], rax
 jmp xaltg602_a1_succ
 xaltg602_a1_beta:
 jmp xchain600_n3_α
.Lx606_0:
 .quad .Lx606_0_s
.Lx606_0_s:
 .string "none"
xaltg602_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain600_n2_α
xchain600_n1_β:
jmp xchain600_n3_α
xchain600_n2_α:
bb268_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+120]
 mov qword ptr [r12 + 120], 1
 mov rax, qword ptr [rip + .Lx608_0]
 mov qword ptr [r12 + 128], rax
 jmp .Lx608_1
.Lx608_0:
 .quad .Lx608_0_s
.Lx608_0_s:
 .string "i := 10 ----> "
.Lx608_1:
# marshal arg1 = nested producer-box slot [r12+32] -> [r12+136]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 136], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 144], rax
  .section .rodata
  .Lrkfn609: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn609]
 lea rsi, [r12 + 120]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 104], rax
 mov qword ptr [r12 + 112], rdx
 cmp eax, 99
 je xchain600_n3_α
 jmp xchain600_n3_α
 xchain600_n2_β:
 jmp xchain600_n3_α
xchain600_n3_α:
# IR_LIT_S
bb269_α:
 mov qword ptr [r12 + 152], 1
 mov rax, qword ptr [rip + .Lx610_0]
 mov qword ptr [r12 + 160], rax
 jmp xchain600_n4_α
 xchain600_n3_β:
 jmp xchain600_n6_α
.Lx610_0:
 .quad .Lx610_0_s
.Lx610_0_s:
 .string "i -:= 10 ----> "
xchain600_n4_α:
xaltg611_a0_start:
bb270_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+208]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
  .section .rodata
  .Lrkfn613: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn613]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xaltg611_a1_start
 jmp xaltg611_a0_succ
 xaltg611_a0_beta:
 jmp xaltg611_a1_start
xaltg611_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 168], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], 1
jmp xchain600_n5_α
xaltg611_a1_start:
# IR_LIT_S
bb271_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx615_0]
 mov qword ptr [r12 + 232], rax
 jmp xaltg611_a1_succ
 xaltg611_a1_beta:
 jmp xchain600_n6_α
.Lx615_0:
 .quad .Lx615_0_s
.Lx615_0_s:
 .string "none"
xaltg611_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 168], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], 1
jmp xchain600_n5_α
xchain600_n4_β:
jmp xchain600_n6_α
xchain600_n5_α:
bb272_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+256]
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx617_0]
 mov qword ptr [r12 + 264], rax
 jmp .Lx617_1
.Lx617_0:
 .quad .Lx617_0_s
.Lx617_0_s:
 .string "i -:= 10 ----> "
.Lx617_1:
# marshal arg1 = nested producer-box slot [r12+168] -> [r12+272]
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 280], rax
  .section .rodata
  .Lrkfn618: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn618]
 lea rsi, [r12 + 256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain600_n6_α
 jmp xchain600_n6_α
 xchain600_n5_β:
 jmp xchain600_n6_α
xchain600_n6_α:
# IR_LIT_S
bb273_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx619_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain600_n7_α
 xchain600_n6_β:
 jmp xchain600_n9_α
.Lx619_0:
 .quad .Lx619_0_s
.Lx619_0_s:
 .string "i ----> "
xchain600_n7_α:
xaltg620_a0_start:
bb274_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+344]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 344], rax
 mov qword ptr [r12 + 352], rdx
  .section .rodata
  .Lrkfn622: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn622]
 lea rsi, [r12 + 344]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 328], rax
 mov qword ptr [r12 + 336], rdx
 cmp eax, 99
 je xaltg620_a1_start
 jmp xaltg620_a0_succ
 xaltg620_a0_beta:
 jmp xaltg620_a1_start
xaltg620_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 312], rax
 mov qword ptr [r12 + 320], 1
jmp xchain600_n8_α
xaltg620_a1_start:
# IR_LIT_S
bb275_α:
 mov qword ptr [r12 + 360], 1
 mov rax, qword ptr [rip + .Lx624_0]
 mov qword ptr [r12 + 368], rax
 jmp xaltg620_a1_succ
 xaltg620_a1_beta:
 jmp xchain600_n9_α
.Lx624_0:
 .quad .Lx624_0_s
.Lx624_0_s:
 .string "none"
xaltg620_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 312], rax
 mov qword ptr [r12 + 320], 1
jmp xchain600_n8_α
xchain600_n7_β:
jmp xchain600_n9_α
xchain600_n8_α:
bb276_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+392]
 mov qword ptr [r12 + 392], 1
 mov rax, qword ptr [rip + .Lx626_0]
 mov qword ptr [r12 + 400], rax
 jmp .Lx626_1
.Lx626_0:
 .quad .Lx626_0_s
.Lx626_0_s:
 .string "i ----> "
.Lx626_1:
# marshal arg1 = nested producer-box slot [r12+304] -> [r12+408]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 408], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 416], rax
  .section .rodata
  .Lrkfn627: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn627]
 lea rsi, [r12 + 392]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 376], rax
 mov qword ptr [r12 + 384], rdx
 cmp eax, 99
 je xchain600_n9_α
 jmp xchain600_n9_α
 xchain600_n8_β:
 jmp xchain600_n9_α
xchain600_n9_α:
# IR_LIT_S
bb277_α:
 mov qword ptr [r12 + 424], 1
 mov rax, qword ptr [rip + .Lx628_0]
 mov qword ptr [r12 + 432], rax
 jmp xchain600_n10_α
 xchain600_n9_β:
 jmp xchain600_n12_α
.Lx628_0:
 .quad .Lx628_0_s
.Lx628_0_s:
 .string "i := 10 ----> "
xchain600_n10_α:
xaltg629_a0_start:
bb278_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+480]
 mov qword ptr [r12 + 480], 6
 movabs rax, 10
 mov qword ptr [r12 + 488], rax
  .section .rodata
  .Lrkfn631: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn631]
 lea rsi, [r12 + 480]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 cmp eax, 99
 je xaltg629_a1_start
 jmp xaltg629_a0_succ
 xaltg629_a0_beta:
 jmp xaltg629_a1_start
xaltg629_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 440], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], 1
jmp xchain600_n11_α
xaltg629_a1_start:
# IR_LIT_S
bb279_α:
 mov qword ptr [r12 + 496], 1
 mov rax, qword ptr [rip + .Lx633_0]
 mov qword ptr [r12 + 504], rax
 jmp xaltg629_a1_succ
 xaltg629_a1_beta:
 jmp xchain600_n12_α
.Lx633_0:
 .quad .Lx633_0_s
.Lx633_0_s:
 .string "none"
xaltg629_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 440], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], 1
jmp xchain600_n11_α
xchain600_n10_β:
jmp xchain600_n12_α
xchain600_n11_α:
bb280_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+528]
 mov qword ptr [r12 + 528], 1
 mov rax, qword ptr [rip + .Lx635_0]
 mov qword ptr [r12 + 536], rax
 jmp .Lx635_1
.Lx635_0:
 .quad .Lx635_0_s
.Lx635_0_s:
 .string "i := 10 ----> "
.Lx635_1:
# marshal arg1 = nested producer-box slot [r12+440] -> [r12+544]
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 552], rax
  .section .rodata
  .Lrkfn636: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn636]
 lea rsi, [r12 + 528]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je xchain600_n12_α
 jmp xchain600_n12_α
 xchain600_n11_β:
 jmp xchain600_n12_α
xchain600_n12_α:
# IR_LIT_S
bb281_α:
 mov qword ptr [r12 + 560], 1
 mov rax, qword ptr [rip + .Lx637_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain600_n13_α
 xchain600_n12_β:
 jmp xchain600_n15_α
.Lx637_0:
 .quad .Lx637_0_s
.Lx637_0_s:
 .string "i -:= 11 ----> "
xchain600_n13_α:
xaltg638_a0_start:
bb282_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+616]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 616], rax
 mov qword ptr [r12 + 624], rdx
  .section .rodata
  .Lrkfn640: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn640]
 lea rsi, [r12 + 616]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 600], rax
 mov qword ptr [r12 + 608], rdx
 cmp eax, 99
 je xaltg638_a1_start
 jmp xaltg638_a0_succ
 xaltg638_a0_beta:
 jmp xaltg638_a1_start
xaltg638_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 584], rax
 mov qword ptr [r12 + 592], 1
jmp xchain600_n14_α
xaltg638_a1_start:
# IR_LIT_S
bb283_α:
 mov qword ptr [r12 + 632], 1
 mov rax, qword ptr [rip + .Lx642_0]
 mov qword ptr [r12 + 640], rax
 jmp xaltg638_a1_succ
 xaltg638_a1_beta:
 jmp xchain600_n15_α
.Lx642_0:
 .quad .Lx642_0_s
.Lx642_0_s:
 .string "none"
xaltg638_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 584], rax
 mov qword ptr [r12 + 592], 1
jmp xchain600_n14_α
xchain600_n13_β:
jmp xchain600_n15_α
xchain600_n14_α:
bb284_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+664]
 mov qword ptr [r12 + 664], 1
 mov rax, qword ptr [rip + .Lx644_0]
 mov qword ptr [r12 + 672], rax
 jmp .Lx644_1
.Lx644_0:
 .quad .Lx644_0_s
.Lx644_0_s:
 .string "i -:= 11 ----> "
.Lx644_1:
# marshal arg1 = nested producer-box slot [r12+576] -> [r12+680]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 680], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 688], rax
  .section .rodata
  .Lrkfn645: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn645]
 lea rsi, [r12 + 664]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 648], rax
 mov qword ptr [r12 + 656], rdx
 cmp eax, 99
 je xchain600_n15_α
 jmp xchain600_n15_α
 xchain600_n14_β:
 jmp xchain600_n15_α
xchain600_n15_α:
# IR_LIT_S
bb285_α:
 mov qword ptr [r12 + 696], 1
 mov rax, qword ptr [rip + .Lx646_0]
 mov qword ptr [r12 + 704], rax
 jmp xchain600_n16_α
 xchain600_n15_β:
 jmp xchain600_n18_α
.Lx646_0:
 .quad .Lx646_0_s
.Lx646_0_s:
 .string "i ----> "
xchain600_n16_α:
xaltg647_a0_start:
bb286_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+752]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
  .section .rodata
  .Lrkfn649: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn649]
 lea rsi, [r12 + 752]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 cmp eax, 99
 je xaltg647_a1_start
 jmp xaltg647_a0_succ
 xaltg647_a0_beta:
 jmp xaltg647_a1_start
xaltg647_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 712], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], 1
jmp xchain600_n17_α
xaltg647_a1_start:
# IR_LIT_S
bb287_α:
 mov qword ptr [r12 + 768], 1
 mov rax, qword ptr [rip + .Lx651_0]
 mov qword ptr [r12 + 776], rax
 jmp xaltg647_a1_succ
 xaltg647_a1_beta:
 jmp xchain600_n18_α
.Lx651_0:
 .quad .Lx651_0_s
.Lx651_0_s:
 .string "none"
xaltg647_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 712], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], 1
jmp xchain600_n17_α
xchain600_n16_β:
jmp xchain600_n18_α
xchain600_n17_α:
bb288_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+800]
 mov qword ptr [r12 + 800], 1
 mov rax, qword ptr [rip + .Lx653_0]
 mov qword ptr [r12 + 808], rax
 jmp .Lx653_1
.Lx653_0:
 .quad .Lx653_0_s
.Lx653_0_s:
 .string "i ----> "
.Lx653_1:
# marshal arg1 = nested producer-box slot [r12+712] -> [r12+816]
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 824], rax
  .section .rodata
  .Lrkfn654: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn654]
 lea rsi, [r12 + 800]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 cmp eax, 99
 je xchain600_n18_α
 jmp xchain600_n18_α
 xchain600_n17_β:
 jmp xchain600_n18_α
xchain600_n18_α:
# IR_LIT_S
bb289_α:
 mov qword ptr [r12 + 832], 1
 mov rax, qword ptr [rip + .Lx655_0]
 mov qword ptr [r12 + 840], rax
 jmp xchain600_n19_α
 xchain600_n18_β:
 jmp xchain600_n21_α
.Lx655_0:
 .quad .Lx655_0_s
.Lx655_0_s:
 .string "i := 10 ----> "
xchain600_n19_α:
xaltg656_a0_start:
bb290_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+888]
 mov qword ptr [r12 + 888], 6
 movabs rax, 10
 mov qword ptr [r12 + 896], rax
  .section .rodata
  .Lrkfn658: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn658]
 lea rsi, [r12 + 888]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 872], rax
 mov qword ptr [r12 + 880], rdx
 cmp eax, 99
 je xaltg656_a1_start
 jmp xaltg656_a0_succ
 xaltg656_a0_beta:
 jmp xaltg656_a1_start
xaltg656_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 856], rax
 mov qword ptr [r12 + 864], 1
jmp xchain600_n20_α
xaltg656_a1_start:
# IR_LIT_S
bb291_α:
 mov qword ptr [r12 + 904], 1
 mov rax, qword ptr [rip + .Lx660_0]
 mov qword ptr [r12 + 912], rax
 jmp xaltg656_a1_succ
 xaltg656_a1_beta:
 jmp xchain600_n21_α
.Lx660_0:
 .quad .Lx660_0_s
.Lx660_0_s:
 .string "none"
xaltg656_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 904]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 912]
 mov qword ptr [r12 + 856], rax
 mov qword ptr [r12 + 864], 1
jmp xchain600_n20_α
xchain600_n19_β:
jmp xchain600_n21_α
xchain600_n20_α:
bb292_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+936]
 mov qword ptr [r12 + 936], 1
 mov rax, qword ptr [rip + .Lx662_0]
 mov qword ptr [r12 + 944], rax
 jmp .Lx662_1
.Lx662_0:
 .quad .Lx662_0_s
.Lx662_0_s:
 .string "i := 10 ----> "
.Lx662_1:
# marshal arg1 = nested producer-box slot [r12+848] -> [r12+952]
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 952], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 960], rax
  .section .rodata
  .Lrkfn663: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn663]
 lea rsi, [r12 + 936]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 920], rax
 mov qword ptr [r12 + 928], rdx
 cmp eax, 99
 je xchain600_n21_α
 jmp xchain600_n21_α
 xchain600_n20_β:
 jmp xchain600_n21_α
xchain600_n21_α:
# IR_LIT_S
bb293_α:
 mov qword ptr [r12 + 968], 1
 mov rax, qword ptr [rip + .Lx664_0]
 mov qword ptr [r12 + 976], rax
 jmp xchain600_n22_α
 xchain600_n21_β:
 jmp xchain600_n24_α
.Lx664_0:
 .quad .Lx664_0_s
.Lx664_0_s:
 .string "i *:= 9 ----> "
xchain600_n22_α:
xaltg665_a0_start:
bb294_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+1024]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
  .section .rodata
  .Lrkfn667: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn667]
 lea rsi, [r12 + 1024]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 cmp eax, 99
 je xaltg665_a1_start
 jmp xaltg665_a0_succ
 xaltg665_a0_beta:
 jmp xaltg665_a1_start
xaltg665_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1008]
 mov qword ptr [r12 + 984], rax
 mov rax, qword ptr [r12 + 1016]
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], 1
jmp xchain600_n23_α
xaltg665_a1_start:
# IR_LIT_S
bb295_α:
 mov qword ptr [r12 + 1040], 1
 mov rax, qword ptr [rip + .Lx669_0]
 mov qword ptr [r12 + 1048], rax
 jmp xaltg665_a1_succ
 xaltg665_a1_beta:
 jmp xchain600_n24_α
.Lx669_0:
 .quad .Lx669_0_s
.Lx669_0_s:
 .string "none"
xaltg665_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1040]
 mov qword ptr [r12 + 984], rax
 mov rax, qword ptr [r12 + 1048]
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], 1
jmp xchain600_n23_α
xchain600_n22_β:
jmp xchain600_n24_α
xchain600_n23_α:
bb296_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1072]
 mov qword ptr [r12 + 1072], 1
 mov rax, qword ptr [rip + .Lx671_0]
 mov qword ptr [r12 + 1080], rax
 jmp .Lx671_1
.Lx671_0:
 .quad .Lx671_0_s
.Lx671_0_s:
 .string "i *:= 9 ----> "
.Lx671_1:
# marshal arg1 = nested producer-box slot [r12+984] -> [r12+1088]
 mov rax, qword ptr [r12 + 984]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 992]
 mov qword ptr [r12 + 1096], rax
  .section .rodata
  .Lrkfn672: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn672]
 lea rsi, [r12 + 1072]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je xchain600_n24_α
 jmp xchain600_n24_α
 xchain600_n23_β:
 jmp xchain600_n24_α
xchain600_n24_α:
# IR_LIT_S
bb297_α:
 mov qword ptr [r12 + 1104], 1
 mov rax, qword ptr [rip + .Lx673_0]
 mov qword ptr [r12 + 1112], rax
 jmp xchain600_n25_α
 xchain600_n24_β:
 jmp xchain600_n27_α
.Lx673_0:
 .quad .Lx673_0_s
.Lx673_0_s:
 .string "i ----> "
xchain600_n25_α:
xaltg674_a0_start:
bb298_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+1160]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1160], rax
 mov qword ptr [r12 + 1168], rdx
  .section .rodata
  .Lrkfn676: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn676]
 lea rsi, [r12 + 1160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1144], rax
 mov qword ptr [r12 + 1152], rdx
 cmp eax, 99
 je xaltg674_a1_start
 jmp xaltg674_a0_succ
 xaltg674_a0_beta:
 jmp xaltg674_a1_start
xaltg674_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 1152]
 mov qword ptr [r12 + 1128], rax
 mov qword ptr [r12 + 1136], 1
jmp xchain600_n26_α
xaltg674_a1_start:
# IR_LIT_S
bb299_α:
 mov qword ptr [r12 + 1176], 1
 mov rax, qword ptr [rip + .Lx678_0]
 mov qword ptr [r12 + 1184], rax
 jmp xaltg674_a1_succ
 xaltg674_a1_beta:
 jmp xchain600_n27_α
.Lx678_0:
 .quad .Lx678_0_s
.Lx678_0_s:
 .string "none"
xaltg674_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1176]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 1184]
 mov qword ptr [r12 + 1128], rax
 mov qword ptr [r12 + 1136], 1
jmp xchain600_n26_α
xchain600_n25_β:
jmp xchain600_n27_α
xchain600_n26_α:
bb300_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1208]
 mov qword ptr [r12 + 1208], 1
 mov rax, qword ptr [rip + .Lx680_0]
 mov qword ptr [r12 + 1216], rax
 jmp .Lx680_1
.Lx680_0:
 .quad .Lx680_0_s
.Lx680_0_s:
 .string "i ----> "
.Lx680_1:
# marshal arg1 = nested producer-box slot [r12+1120] -> [r12+1224]
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 1224], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 1232], rax
  .section .rodata
  .Lrkfn681: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn681]
 lea rsi, [r12 + 1208]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1192], rax
 mov qword ptr [r12 + 1200], rdx
 cmp eax, 99
 je xchain600_n27_α
 jmp xchain600_n27_α
 xchain600_n26_β:
 jmp xchain600_n27_α
xchain600_n27_α:
# IR_LIT_S
bb301_α:
 mov qword ptr [r12 + 1240], 1
 mov rax, qword ptr [rip + .Lx682_0]
 mov qword ptr [r12 + 1248], rax
 jmp xchain600_n28_α
 xchain600_n27_β:
 jmp xchain600_n30_α
.Lx682_0:
 .quad .Lx682_0_s
.Lx682_0_s:
 .string "i := 10 ----> "
xchain600_n28_α:
xaltg683_a0_start:
bb302_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+1296]
 mov qword ptr [r12 + 1296], 6
 movabs rax, 10
 mov qword ptr [r12 + 1304], rax
  .section .rodata
  .Lrkfn685: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn685]
 lea rsi, [r12 + 1296]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 cmp eax, 99
 je xaltg683_a1_start
 jmp xaltg683_a0_succ
 xaltg683_a0_beta:
 jmp xaltg683_a1_start
xaltg683_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1280]
 mov qword ptr [r12 + 1256], rax
 mov rax, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], 1
jmp xchain600_n29_α
xaltg683_a1_start:
# IR_LIT_S
bb303_α:
 mov qword ptr [r12 + 1312], 1
 mov rax, qword ptr [rip + .Lx687_0]
 mov qword ptr [r12 + 1320], rax
 jmp xaltg683_a1_succ
 xaltg683_a1_beta:
 jmp xchain600_n30_α
.Lx687_0:
 .quad .Lx687_0_s
.Lx687_0_s:
 .string "none"
xaltg683_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1312]
 mov qword ptr [r12 + 1256], rax
 mov rax, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], 1
jmp xchain600_n29_α
xchain600_n28_β:
jmp xchain600_n30_α
xchain600_n29_α:
bb304_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1344]
 mov qword ptr [r12 + 1344], 1
 mov rax, qword ptr [rip + .Lx689_0]
 mov qword ptr [r12 + 1352], rax
 jmp .Lx689_1
.Lx689_0:
 .quad .Lx689_0_s
.Lx689_0_s:
 .string "i := 10 ----> "
.Lx689_1:
# marshal arg1 = nested producer-box slot [r12+1256] -> [r12+1360]
 mov rax, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 1360], rax
 mov rax, qword ptr [r12 + 1264]
 mov qword ptr [r12 + 1368], rax
  .section .rodata
  .Lrkfn690: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn690]
 lea rsi, [r12 + 1344]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 cmp eax, 99
 je xchain600_n30_α
 jmp xchain600_n30_α
 xchain600_n29_β:
 jmp xchain600_n30_α
xchain600_n30_α:
# IR_LIT_S
bb305_α:
 mov qword ptr [r12 + 1376], 1
 mov rax, qword ptr [rip + .Lx691_0]
 mov qword ptr [r12 + 1384], rax
 jmp xchain600_n31_α
 xchain600_n30_β:
 jmp proc_p7_ω
.Lx691_0:
 .quad .Lx691_0_s
.Lx691_0_s:
 .string "i *:= 10 ----> "
xchain600_n31_α:
xaltg692_a0_start:
bb306_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+1432]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1432], rax
 mov qword ptr [r12 + 1440], rdx
  .section .rodata
  .Lrkfn694: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn694]
 lea rsi, [r12 + 1432]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1416], rax
 mov qword ptr [r12 + 1424], rdx
 cmp eax, 99
 je xaltg692_a1_start
 jmp xaltg692_a0_succ
 xaltg692_a0_beta:
 jmp xaltg692_a1_start
xaltg692_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1416]
 mov qword ptr [r12 + 1392], rax
 mov rax, qword ptr [r12 + 1424]
 mov qword ptr [r12 + 1400], rax
 mov qword ptr [r12 + 1408], 1
jmp xchain600_n32_α
xaltg692_a1_start:
# IR_LIT_S
bb307_α:
 mov qword ptr [r12 + 1448], 1
 mov rax, qword ptr [rip + .Lx696_0]
 mov qword ptr [r12 + 1456], rax
 jmp xaltg692_a1_succ
 xaltg692_a1_beta:
 jmp proc_p7_ω
.Lx696_0:
 .quad .Lx696_0_s
.Lx696_0_s:
 .string "none"
xaltg692_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1448]
 mov qword ptr [r12 + 1392], rax
 mov rax, qword ptr [r12 + 1456]
 mov qword ptr [r12 + 1400], rax
 mov qword ptr [r12 + 1408], 1
jmp xchain600_n32_α
xchain600_n31_β:
jmp proc_p7_ω
xchain600_n32_α:
bb308_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1480]
 mov qword ptr [r12 + 1480], 1
 mov rax, qword ptr [rip + .Lx698_0]
 mov qword ptr [r12 + 1488], rax
 jmp .Lx698_1
.Lx698_0:
 .quad .Lx698_0_s
.Lx698_0_s:
 .string "i *:= 10 ----> "
.Lx698_1:
# marshal arg1 = nested producer-box slot [r12+1392] -> [r12+1496]
 mov rax, qword ptr [r12 + 1392]
 mov qword ptr [r12 + 1496], rax
 mov rax, qword ptr [r12 + 1400]
 mov qword ptr [r12 + 1504], rax
  .section .rodata
  .Lrkfn699: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn699]
 lea rsi, [r12 + 1480]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1464], rax
 mov qword ptr [r12 + 1472], rdx
 cmp eax, 99
 je proc_p7_ω
 jmp proc_p7_γ
 xchain600_n32_β:
 jmp proc_p7_ω
proc_p7_β:
jmp proc_p7_ω
proc_p7_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_p7_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_p8_α
proc_p8_α:
#=======================================================================================================================
    .global proc_p8_α
    .global proc_p8_β
    .global proc_p8_γ
    .global proc_p8_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_p8_α_body:
xchain700_n0_α:
# IR_LIT_S
bb309_α:
 mov qword ptr [r12 + 16], 1
 mov rax, qword ptr [rip + .Lx701_0]
 mov qword ptr [r12 + 24], rax
 jmp xchain700_n1_α
 xchain700_n0_β:
 jmp xchain700_n3_α
.Lx701_0:
 .quad .Lx701_0_s
.Lx701_0_s:
 .string "i ----> "
xchain700_n1_α:
xaltg702_a0_start:
bb310_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+72]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 72], rax
 mov qword ptr [r12 + 80], rdx
  .section .rodata
  .Lrkfn704: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn704]
 lea rsi, [r12 + 72]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 56], rax
 mov qword ptr [r12 + 64], rdx
 cmp eax, 99
 je xaltg702_a1_start
 jmp xaltg702_a0_succ
 xaltg702_a0_beta:
 jmp xaltg702_a1_start
xaltg702_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain700_n2_α
xaltg702_a1_start:
# IR_LIT_S
bb311_α:
 mov qword ptr [r12 + 88], 1
 mov rax, qword ptr [rip + .Lx706_0]
 mov qword ptr [r12 + 96], rax
 jmp xaltg702_a1_succ
 xaltg702_a1_beta:
 jmp xchain700_n3_α
.Lx706_0:
 .quad .Lx706_0_s
.Lx706_0_s:
 .string "none"
xaltg702_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain700_n2_α
xchain700_n1_β:
jmp xchain700_n3_α
xchain700_n2_α:
bb312_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+120]
 mov qword ptr [r12 + 120], 1
 mov rax, qword ptr [rip + .Lx708_0]
 mov qword ptr [r12 + 128], rax
 jmp .Lx708_1
.Lx708_0:
 .quad .Lx708_0_s
.Lx708_0_s:
 .string "i ----> "
.Lx708_1:
# marshal arg1 = nested producer-box slot [r12+32] -> [r12+136]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 136], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 144], rax
  .section .rodata
  .Lrkfn709: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn709]
 lea rsi, [r12 + 120]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 104], rax
 mov qword ptr [r12 + 112], rdx
 cmp eax, 99
 je xchain700_n3_α
 jmp xchain700_n3_α
 xchain700_n2_β:
 jmp xchain700_n3_α
xchain700_n3_α:
# IR_LIT_S
bb313_α:
 mov qword ptr [r12 + 152], 1
 mov rax, qword ptr [rip + .Lx710_0]
 mov qword ptr [r12 + 160], rax
 jmp xchain700_n4_α
 xchain700_n3_β:
 jmp xchain700_n6_α
.Lx710_0:
 .quad .Lx710_0_s
.Lx710_0_s:
 .string "i := 10 ----> "
xchain700_n4_α:
xaltg711_a0_start:
bb314_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+208]
 mov qword ptr [r12 + 208], 6
 movabs rax, 10
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lrkfn713: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn713]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xaltg711_a1_start
 jmp xaltg711_a0_succ
 xaltg711_a0_beta:
 jmp xaltg711_a1_start
xaltg711_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 168], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], 1
jmp xchain700_n5_α
xaltg711_a1_start:
# IR_LIT_S
bb315_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx715_0]
 mov qword ptr [r12 + 232], rax
 jmp xaltg711_a1_succ
 xaltg711_a1_beta:
 jmp xchain700_n6_α
.Lx715_0:
 .quad .Lx715_0_s
.Lx715_0_s:
 .string "none"
xaltg711_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 168], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], 1
jmp xchain700_n5_α
xchain700_n4_β:
jmp xchain700_n6_α
xchain700_n5_α:
bb316_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+256]
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx717_0]
 mov qword ptr [r12 + 264], rax
 jmp .Lx717_1
.Lx717_0:
 .quad .Lx717_0_s
.Lx717_0_s:
 .string "i := 10 ----> "
.Lx717_1:
# marshal arg1 = nested producer-box slot [r12+168] -> [r12+272]
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 280], rax
  .section .rodata
  .Lrkfn718: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn718]
 lea rsi, [r12 + 256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain700_n6_α
 jmp xchain700_n6_α
 xchain700_n5_β:
 jmp xchain700_n6_α
xchain700_n6_α:
# IR_LIT_S
bb317_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx719_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain700_n7_α
 xchain700_n6_β:
 jmp xchain700_n9_α
.Lx719_0:
 .quad .Lx719_0_s
.Lx719_0_s:
 .string "i *:= 11 ----> "
xchain700_n7_α:
xaltg720_a0_start:
bb318_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+344]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 344], rax
 mov qword ptr [r12 + 352], rdx
  .section .rodata
  .Lrkfn722: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn722]
 lea rsi, [r12 + 344]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 328], rax
 mov qword ptr [r12 + 336], rdx
 cmp eax, 99
 je xaltg720_a1_start
 jmp xaltg720_a0_succ
 xaltg720_a0_beta:
 jmp xaltg720_a1_start
xaltg720_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 312], rax
 mov qword ptr [r12 + 320], 1
jmp xchain700_n8_α
xaltg720_a1_start:
# IR_LIT_S
bb319_α:
 mov qword ptr [r12 + 360], 1
 mov rax, qword ptr [rip + .Lx724_0]
 mov qword ptr [r12 + 368], rax
 jmp xaltg720_a1_succ
 xaltg720_a1_beta:
 jmp xchain700_n9_α
.Lx724_0:
 .quad .Lx724_0_s
.Lx724_0_s:
 .string "none"
xaltg720_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 312], rax
 mov qword ptr [r12 + 320], 1
jmp xchain700_n8_α
xchain700_n7_β:
jmp xchain700_n9_α
xchain700_n8_α:
bb320_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+392]
 mov qword ptr [r12 + 392], 1
 mov rax, qword ptr [rip + .Lx726_0]
 mov qword ptr [r12 + 400], rax
 jmp .Lx726_1
.Lx726_0:
 .quad .Lx726_0_s
.Lx726_0_s:
 .string "i *:= 11 ----> "
.Lx726_1:
# marshal arg1 = nested producer-box slot [r12+304] -> [r12+408]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 408], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 416], rax
  .section .rodata
  .Lrkfn727: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn727]
 lea rsi, [r12 + 392]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 376], rax
 mov qword ptr [r12 + 384], rdx
 cmp eax, 99
 je xchain700_n9_α
 jmp xchain700_n9_α
 xchain700_n8_β:
 jmp xchain700_n9_α
xchain700_n9_α:
# IR_LIT_S
bb321_α:
 mov qword ptr [r12 + 424], 1
 mov rax, qword ptr [rip + .Lx728_0]
 mov qword ptr [r12 + 432], rax
 jmp xchain700_n10_α
 xchain700_n9_β:
 jmp xchain700_n12_α
.Lx728_0:
 .quad .Lx728_0_s
.Lx728_0_s:
 .string "i ----> "
xchain700_n10_α:
xaltg729_a0_start:
bb322_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+480]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
  .section .rodata
  .Lrkfn731: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn731]
 lea rsi, [r12 + 480]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 cmp eax, 99
 je xaltg729_a1_start
 jmp xaltg729_a0_succ
 xaltg729_a0_beta:
 jmp xaltg729_a1_start
xaltg729_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 440], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], 1
jmp xchain700_n11_α
xaltg729_a1_start:
# IR_LIT_S
bb323_α:
 mov qword ptr [r12 + 496], 1
 mov rax, qword ptr [rip + .Lx733_0]
 mov qword ptr [r12 + 504], rax
 jmp xaltg729_a1_succ
 xaltg729_a1_beta:
 jmp xchain700_n12_α
.Lx733_0:
 .quad .Lx733_0_s
.Lx733_0_s:
 .string "none"
xaltg729_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 440], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], 1
jmp xchain700_n11_α
xchain700_n10_β:
jmp xchain700_n12_α
xchain700_n11_α:
bb324_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+528]
 mov qword ptr [r12 + 528], 1
 mov rax, qword ptr [rip + .Lx735_0]
 mov qword ptr [r12 + 536], rax
 jmp .Lx735_1
.Lx735_0:
 .quad .Lx735_0_s
.Lx735_0_s:
 .string "i ----> "
.Lx735_1:
# marshal arg1 = nested producer-box slot [r12+440] -> [r12+544]
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 552], rax
  .section .rodata
  .Lrkfn736: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn736]
 lea rsi, [r12 + 528]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je xchain700_n12_α
 jmp xchain700_n12_α
 xchain700_n11_β:
 jmp xchain700_n12_α
xchain700_n12_α:
# IR_LIT_S
bb325_α:
 mov qword ptr [r12 + 560], 1
 mov rax, qword ptr [rip + .Lx737_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain700_n13_α
 xchain700_n12_β:
 jmp xchain700_n15_α
.Lx737_0:
 .quad .Lx737_0_s
.Lx737_0_s:
 .string "i := 10 ----> "
xchain700_n13_α:
xaltg738_a0_start:
bb326_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+616]
 mov qword ptr [r12 + 616], 6
 movabs rax, 10
 mov qword ptr [r12 + 624], rax
  .section .rodata
  .Lrkfn740: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn740]
 lea rsi, [r12 + 616]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 600], rax
 mov qword ptr [r12 + 608], rdx
 cmp eax, 99
 je xaltg738_a1_start
 jmp xaltg738_a0_succ
 xaltg738_a0_beta:
 jmp xaltg738_a1_start
xaltg738_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 584], rax
 mov qword ptr [r12 + 592], 1
jmp xchain700_n14_α
xaltg738_a1_start:
# IR_LIT_S
bb327_α:
 mov qword ptr [r12 + 632], 1
 mov rax, qword ptr [rip + .Lx742_0]
 mov qword ptr [r12 + 640], rax
 jmp xaltg738_a1_succ
 xaltg738_a1_beta:
 jmp xchain700_n15_α
.Lx742_0:
 .quad .Lx742_0_s
.Lx742_0_s:
 .string "none"
xaltg738_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 584], rax
 mov qword ptr [r12 + 592], 1
jmp xchain700_n14_α
xchain700_n13_β:
jmp xchain700_n15_α
xchain700_n14_α:
bb328_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+664]
 mov qword ptr [r12 + 664], 1
 mov rax, qword ptr [rip + .Lx744_0]
 mov qword ptr [r12 + 672], rax
 jmp .Lx744_1
.Lx744_0:
 .quad .Lx744_0_s
.Lx744_0_s:
 .string "i := 10 ----> "
.Lx744_1:
# marshal arg1 = nested producer-box slot [r12+576] -> [r12+680]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 680], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 688], rax
  .section .rodata
  .Lrkfn745: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn745]
 lea rsi, [r12 + 664]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 648], rax
 mov qword ptr [r12 + 656], rdx
 cmp eax, 99
 je xchain700_n15_α
 jmp xchain700_n15_α
 xchain700_n14_β:
 jmp xchain700_n15_α
xchain700_n15_α:
# IR_LIT_S
bb329_α:
 mov qword ptr [r12 + 696], 1
 mov rax, qword ptr [rip + .Lx746_0]
 mov qword ptr [r12 + 704], rax
 jmp xchain700_n16_α
 xchain700_n15_β:
 jmp xchain700_n18_α
.Lx746_0:
 .quad .Lx746_0_s
.Lx746_0_s:
 .string "i /:= 9 ----> "
xchain700_n16_α:
xaltg747_a0_start:
bb330_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+752]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
  .section .rodata
  .Lrkfn749: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn749]
 lea rsi, [r12 + 752]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 cmp eax, 99
 je xaltg747_a1_start
 jmp xaltg747_a0_succ
 xaltg747_a0_beta:
 jmp xaltg747_a1_start
xaltg747_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 712], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], 1
jmp xchain700_n17_α
xaltg747_a1_start:
# IR_LIT_S
bb331_α:
 mov qword ptr [r12 + 768], 1
 mov rax, qword ptr [rip + .Lx751_0]
 mov qword ptr [r12 + 776], rax
 jmp xaltg747_a1_succ
 xaltg747_a1_beta:
 jmp xchain700_n18_α
.Lx751_0:
 .quad .Lx751_0_s
.Lx751_0_s:
 .string "none"
xaltg747_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 712], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], 1
jmp xchain700_n17_α
xchain700_n16_β:
jmp xchain700_n18_α
xchain700_n17_α:
bb332_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+800]
 mov qword ptr [r12 + 800], 1
 mov rax, qword ptr [rip + .Lx753_0]
 mov qword ptr [r12 + 808], rax
 jmp .Lx753_1
.Lx753_0:
 .quad .Lx753_0_s
.Lx753_0_s:
 .string "i /:= 9 ----> "
.Lx753_1:
# marshal arg1 = nested producer-box slot [r12+712] -> [r12+816]
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 824], rax
  .section .rodata
  .Lrkfn754: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn754]
 lea rsi, [r12 + 800]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 cmp eax, 99
 je xchain700_n18_α
 jmp xchain700_n18_α
 xchain700_n17_β:
 jmp xchain700_n18_α
xchain700_n18_α:
# IR_LIT_S
bb333_α:
 mov qword ptr [r12 + 832], 1
 mov rax, qword ptr [rip + .Lx755_0]
 mov qword ptr [r12 + 840], rax
 jmp xchain700_n19_α
 xchain700_n18_β:
 jmp xchain700_n21_α
.Lx755_0:
 .quad .Lx755_0_s
.Lx755_0_s:
 .string "i ----> "
xchain700_n19_α:
xaltg756_a0_start:
bb334_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+888]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 888], rax
 mov qword ptr [r12 + 896], rdx
  .section .rodata
  .Lrkfn758: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn758]
 lea rsi, [r12 + 888]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 872], rax
 mov qword ptr [r12 + 880], rdx
 cmp eax, 99
 je xaltg756_a1_start
 jmp xaltg756_a0_succ
 xaltg756_a0_beta:
 jmp xaltg756_a1_start
xaltg756_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 856], rax
 mov qword ptr [r12 + 864], 1
jmp xchain700_n20_α
xaltg756_a1_start:
# IR_LIT_S
bb335_α:
 mov qword ptr [r12 + 904], 1
 mov rax, qword ptr [rip + .Lx760_0]
 mov qword ptr [r12 + 912], rax
 jmp xaltg756_a1_succ
 xaltg756_a1_beta:
 jmp xchain700_n21_α
.Lx760_0:
 .quad .Lx760_0_s
.Lx760_0_s:
 .string "none"
xaltg756_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 904]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 912]
 mov qword ptr [r12 + 856], rax
 mov qword ptr [r12 + 864], 1
jmp xchain700_n20_α
xchain700_n19_β:
jmp xchain700_n21_α
xchain700_n20_α:
bb336_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+936]
 mov qword ptr [r12 + 936], 1
 mov rax, qword ptr [rip + .Lx762_0]
 mov qword ptr [r12 + 944], rax
 jmp .Lx762_1
.Lx762_0:
 .quad .Lx762_0_s
.Lx762_0_s:
 .string "i ----> "
.Lx762_1:
# marshal arg1 = nested producer-box slot [r12+848] -> [r12+952]
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 952], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 960], rax
  .section .rodata
  .Lrkfn763: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn763]
 lea rsi, [r12 + 936]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 920], rax
 mov qword ptr [r12 + 928], rdx
 cmp eax, 99
 je xchain700_n21_α
 jmp xchain700_n21_α
 xchain700_n20_β:
 jmp xchain700_n21_α
xchain700_n21_α:
# IR_LIT_S
bb337_α:
 mov qword ptr [r12 + 968], 1
 mov rax, qword ptr [rip + .Lx764_0]
 mov qword ptr [r12 + 976], rax
 jmp xchain700_n22_α
 xchain700_n21_β:
 jmp xchain700_n24_α
.Lx764_0:
 .quad .Lx764_0_s
.Lx764_0_s:
 .string "i := 10 ----> "
xchain700_n22_α:
xaltg765_a0_start:
bb338_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+1024]
 mov qword ptr [r12 + 1024], 6
 movabs rax, 10
 mov qword ptr [r12 + 1032], rax
  .section .rodata
  .Lrkfn767: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn767]
 lea rsi, [r12 + 1024]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 cmp eax, 99
 je xaltg765_a1_start
 jmp xaltg765_a0_succ
 xaltg765_a0_beta:
 jmp xaltg765_a1_start
xaltg765_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1008]
 mov qword ptr [r12 + 984], rax
 mov rax, qword ptr [r12 + 1016]
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], 1
jmp xchain700_n23_α
xaltg765_a1_start:
# IR_LIT_S
bb339_α:
 mov qword ptr [r12 + 1040], 1
 mov rax, qword ptr [rip + .Lx769_0]
 mov qword ptr [r12 + 1048], rax
 jmp xaltg765_a1_succ
 xaltg765_a1_beta:
 jmp xchain700_n24_α
.Lx769_0:
 .quad .Lx769_0_s
.Lx769_0_s:
 .string "none"
xaltg765_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1040]
 mov qword ptr [r12 + 984], rax
 mov rax, qword ptr [r12 + 1048]
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], 1
jmp xchain700_n23_α
xchain700_n22_β:
jmp xchain700_n24_α
xchain700_n23_α:
bb340_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1072]
 mov qword ptr [r12 + 1072], 1
 mov rax, qword ptr [rip + .Lx771_0]
 mov qword ptr [r12 + 1080], rax
 jmp .Lx771_1
.Lx771_0:
 .quad .Lx771_0_s
.Lx771_0_s:
 .string "i := 10 ----> "
.Lx771_1:
# marshal arg1 = nested producer-box slot [r12+984] -> [r12+1088]
 mov rax, qword ptr [r12 + 984]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 992]
 mov qword ptr [r12 + 1096], rax
  .section .rodata
  .Lrkfn772: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn772]
 lea rsi, [r12 + 1072]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je xchain700_n24_α
 jmp xchain700_n24_α
 xchain700_n23_β:
 jmp xchain700_n24_α
xchain700_n24_α:
# IR_LIT_S
bb341_α:
 mov qword ptr [r12 + 1104], 1
 mov rax, qword ptr [rip + .Lx773_0]
 mov qword ptr [r12 + 1112], rax
 jmp xchain700_n25_α
 xchain700_n24_β:
 jmp xchain700_n27_α
.Lx773_0:
 .quad .Lx773_0_s
.Lx773_0_s:
 .string "i /:= 10 ----> "
xchain700_n25_α:
xaltg774_a0_start:
bb342_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+1160]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1160], rax
 mov qword ptr [r12 + 1168], rdx
  .section .rodata
  .Lrkfn776: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn776]
 lea rsi, [r12 + 1160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1144], rax
 mov qword ptr [r12 + 1152], rdx
 cmp eax, 99
 je xaltg774_a1_start
 jmp xaltg774_a0_succ
 xaltg774_a0_beta:
 jmp xaltg774_a1_start
xaltg774_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 1152]
 mov qword ptr [r12 + 1128], rax
 mov qword ptr [r12 + 1136], 1
jmp xchain700_n26_α
xaltg774_a1_start:
# IR_LIT_S
bb343_α:
 mov qword ptr [r12 + 1176], 1
 mov rax, qword ptr [rip + .Lx778_0]
 mov qword ptr [r12 + 1184], rax
 jmp xaltg774_a1_succ
 xaltg774_a1_beta:
 jmp xchain700_n27_α
.Lx778_0:
 .quad .Lx778_0_s
.Lx778_0_s:
 .string "none"
xaltg774_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1176]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 1184]
 mov qword ptr [r12 + 1128], rax
 mov qword ptr [r12 + 1136], 1
jmp xchain700_n26_α
xchain700_n25_β:
jmp xchain700_n27_α
xchain700_n26_α:
bb344_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1208]
 mov qword ptr [r12 + 1208], 1
 mov rax, qword ptr [rip + .Lx780_0]
 mov qword ptr [r12 + 1216], rax
 jmp .Lx780_1
.Lx780_0:
 .quad .Lx780_0_s
.Lx780_0_s:
 .string "i /:= 10 ----> "
.Lx780_1:
# marshal arg1 = nested producer-box slot [r12+1120] -> [r12+1224]
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 1224], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 1232], rax
  .section .rodata
  .Lrkfn781: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn781]
 lea rsi, [r12 + 1208]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1192], rax
 mov qword ptr [r12 + 1200], rdx
 cmp eax, 99
 je xchain700_n27_α
 jmp xchain700_n27_α
 xchain700_n26_β:
 jmp xchain700_n27_α
xchain700_n27_α:
# IR_LIT_S
bb345_α:
 mov qword ptr [r12 + 1240], 1
 mov rax, qword ptr [rip + .Lx782_0]
 mov qword ptr [r12 + 1248], rax
 jmp xchain700_n28_α
 xchain700_n27_β:
 jmp xchain700_n30_α
.Lx782_0:
 .quad .Lx782_0_s
.Lx782_0_s:
 .string "i ----> "
xchain700_n28_α:
xaltg783_a0_start:
bb346_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+1296]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1296], rax
 mov qword ptr [r12 + 1304], rdx
  .section .rodata
  .Lrkfn785: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn785]
 lea rsi, [r12 + 1296]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 cmp eax, 99
 je xaltg783_a1_start
 jmp xaltg783_a0_succ
 xaltg783_a0_beta:
 jmp xaltg783_a1_start
xaltg783_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1280]
 mov qword ptr [r12 + 1256], rax
 mov rax, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], 1
jmp xchain700_n29_α
xaltg783_a1_start:
# IR_LIT_S
bb347_α:
 mov qword ptr [r12 + 1312], 1
 mov rax, qword ptr [rip + .Lx787_0]
 mov qword ptr [r12 + 1320], rax
 jmp xaltg783_a1_succ
 xaltg783_a1_beta:
 jmp xchain700_n30_α
.Lx787_0:
 .quad .Lx787_0_s
.Lx787_0_s:
 .string "none"
xaltg783_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1312]
 mov qword ptr [r12 + 1256], rax
 mov rax, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], 1
jmp xchain700_n29_α
xchain700_n28_β:
jmp xchain700_n30_α
xchain700_n29_α:
bb348_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1344]
 mov qword ptr [r12 + 1344], 1
 mov rax, qword ptr [rip + .Lx789_0]
 mov qword ptr [r12 + 1352], rax
 jmp .Lx789_1
.Lx789_0:
 .quad .Lx789_0_s
.Lx789_0_s:
 .string "i ----> "
.Lx789_1:
# marshal arg1 = nested producer-box slot [r12+1256] -> [r12+1360]
 mov rax, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 1360], rax
 mov rax, qword ptr [r12 + 1264]
 mov qword ptr [r12 + 1368], rax
  .section .rodata
  .Lrkfn790: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn790]
 lea rsi, [r12 + 1344]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 cmp eax, 99
 je xchain700_n30_α
 jmp xchain700_n30_α
 xchain700_n29_β:
 jmp xchain700_n30_α
xchain700_n30_α:
# IR_LIT_S
bb349_α:
 mov qword ptr [r12 + 1376], 1
 mov rax, qword ptr [rip + .Lx791_0]
 mov qword ptr [r12 + 1384], rax
 jmp xchain700_n31_α
 xchain700_n30_β:
 jmp proc_p8_ω
.Lx791_0:
 .quad .Lx791_0_s
.Lx791_0_s:
 .string "i := 10 ----> "
xchain700_n31_α:
xaltg792_a0_start:
bb350_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+1432]
 mov qword ptr [r12 + 1432], 6
 movabs rax, 10
 mov qword ptr [r12 + 1440], rax
  .section .rodata
  .Lrkfn794: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn794]
 lea rsi, [r12 + 1432]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1416], rax
 mov qword ptr [r12 + 1424], rdx
 cmp eax, 99
 je xaltg792_a1_start
 jmp xaltg792_a0_succ
 xaltg792_a0_beta:
 jmp xaltg792_a1_start
xaltg792_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1416]
 mov qword ptr [r12 + 1392], rax
 mov rax, qword ptr [r12 + 1424]
 mov qword ptr [r12 + 1400], rax
 mov qword ptr [r12 + 1408], 1
jmp xchain700_n32_α
xaltg792_a1_start:
# IR_LIT_S
bb351_α:
 mov qword ptr [r12 + 1448], 1
 mov rax, qword ptr [rip + .Lx796_0]
 mov qword ptr [r12 + 1456], rax
 jmp xaltg792_a1_succ
 xaltg792_a1_beta:
 jmp proc_p8_ω
.Lx796_0:
 .quad .Lx796_0_s
.Lx796_0_s:
 .string "none"
xaltg792_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1448]
 mov qword ptr [r12 + 1392], rax
 mov rax, qword ptr [r12 + 1456]
 mov qword ptr [r12 + 1400], rax
 mov qword ptr [r12 + 1408], 1
jmp xchain700_n32_α
xchain700_n31_β:
jmp proc_p8_ω
xchain700_n32_α:
bb352_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1480]
 mov qword ptr [r12 + 1480], 1
 mov rax, qword ptr [rip + .Lx798_0]
 mov qword ptr [r12 + 1488], rax
 jmp .Lx798_1
.Lx798_0:
 .quad .Lx798_0_s
.Lx798_0_s:
 .string "i := 10 ----> "
.Lx798_1:
# marshal arg1 = nested producer-box slot [r12+1392] -> [r12+1496]
 mov rax, qword ptr [r12 + 1392]
 mov qword ptr [r12 + 1496], rax
 mov rax, qword ptr [r12 + 1400]
 mov qword ptr [r12 + 1504], rax
  .section .rodata
  .Lrkfn799: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn799]
 lea rsi, [r12 + 1480]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1464], rax
 mov qword ptr [r12 + 1472], rdx
 cmp eax, 99
 je proc_p8_ω
 jmp proc_p8_γ
 xchain700_n32_β:
 jmp proc_p8_ω
proc_p8_β:
jmp proc_p8_ω
proc_p8_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_p8_ω:
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
xchain800_n0_α:
# IR_LIT_S
bb353_α:
 mov qword ptr [r12 + 16], 1
 mov rax, qword ptr [rip + .Lx801_0]
 mov qword ptr [r12 + 24], rax
 jmp xchain800_n1_α
 xchain800_n0_β:
 jmp xchain800_n3_α
.Lx801_0:
 .quad .Lx801_0_s
.Lx801_0_s:
 .string "i /:= 11 ----> "
xchain800_n1_α:
xaltg802_a0_start:
bb354_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+72]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 72], rax
 mov qword ptr [r12 + 80], rdx
  .section .rodata
  .Lrkfn804: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn804]
 lea rsi, [r12 + 72]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 56], rax
 mov qword ptr [r12 + 64], rdx
 cmp eax, 99
 je xaltg802_a1_start
 jmp xaltg802_a0_succ
 xaltg802_a0_beta:
 jmp xaltg802_a1_start
xaltg802_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain800_n2_α
xaltg802_a1_start:
# IR_LIT_S
bb355_α:
 mov qword ptr [r12 + 88], 1
 mov rax, qword ptr [rip + .Lx806_0]
 mov qword ptr [r12 + 96], rax
 jmp xaltg802_a1_succ
 xaltg802_a1_beta:
 jmp xchain800_n3_α
.Lx806_0:
 .quad .Lx806_0_s
.Lx806_0_s:
 .string "none"
xaltg802_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain800_n2_α
xchain800_n1_β:
jmp xchain800_n3_α
xchain800_n2_α:
bb356_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+120]
 mov qword ptr [r12 + 120], 1
 mov rax, qword ptr [rip + .Lx808_0]
 mov qword ptr [r12 + 128], rax
 jmp .Lx808_1
.Lx808_0:
 .quad .Lx808_0_s
.Lx808_0_s:
 .string "i /:= 11 ----> "
.Lx808_1:
# marshal arg1 = nested producer-box slot [r12+32] -> [r12+136]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 136], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 144], rax
  .section .rodata
  .Lrkfn809: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn809]
 lea rsi, [r12 + 120]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 104], rax
 mov qword ptr [r12 + 112], rdx
 cmp eax, 99
 je xchain800_n3_α
 jmp xchain800_n3_α
 xchain800_n2_β:
 jmp xchain800_n3_α
xchain800_n3_α:
# IR_LIT_S
bb357_α:
 mov qword ptr [r12 + 152], 1
 mov rax, qword ptr [rip + .Lx810_0]
 mov qword ptr [r12 + 160], rax
 jmp xchain800_n4_α
 xchain800_n3_β:
 jmp xchain800_n6_α
.Lx810_0:
 .quad .Lx810_0_s
.Lx810_0_s:
 .string "i ----> "
xchain800_n4_α:
xaltg811_a0_start:
bb358_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+208]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
  .section .rodata
  .Lrkfn813: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn813]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xaltg811_a1_start
 jmp xaltg811_a0_succ
 xaltg811_a0_beta:
 jmp xaltg811_a1_start
xaltg811_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 168], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], 1
jmp xchain800_n5_α
xaltg811_a1_start:
# IR_LIT_S
bb359_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx815_0]
 mov qword ptr [r12 + 232], rax
 jmp xaltg811_a1_succ
 xaltg811_a1_beta:
 jmp xchain800_n6_α
.Lx815_0:
 .quad .Lx815_0_s
.Lx815_0_s:
 .string "none"
xaltg811_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 168], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], 1
jmp xchain800_n5_α
xchain800_n4_β:
jmp xchain800_n6_α
xchain800_n5_α:
bb360_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+256]
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx817_0]
 mov qword ptr [r12 + 264], rax
 jmp .Lx817_1
.Lx817_0:
 .quad .Lx817_0_s
.Lx817_0_s:
 .string "i ----> "
.Lx817_1:
# marshal arg1 = nested producer-box slot [r12+168] -> [r12+272]
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 280], rax
  .section .rodata
  .Lrkfn818: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn818]
 lea rsi, [r12 + 256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain800_n6_α
 jmp xchain800_n6_α
 xchain800_n5_β:
 jmp xchain800_n6_α
xchain800_n6_α:
# IR_LIT_S
bb361_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx819_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain800_n7_α
 xchain800_n6_β:
 jmp xchain800_n9_α
.Lx819_0:
 .quad .Lx819_0_s
.Lx819_0_s:
 .string "i := 10 ----> "
xchain800_n7_α:
xaltg820_a0_start:
bb362_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+344]
 mov qword ptr [r12 + 344], 6
 movabs rax, 10
 mov qword ptr [r12 + 352], rax
  .section .rodata
  .Lrkfn822: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn822]
 lea rsi, [r12 + 344]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 328], rax
 mov qword ptr [r12 + 336], rdx
 cmp eax, 99
 je xaltg820_a1_start
 jmp xaltg820_a0_succ
 xaltg820_a0_beta:
 jmp xaltg820_a1_start
xaltg820_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 312], rax
 mov qword ptr [r12 + 320], 1
jmp xchain800_n8_α
xaltg820_a1_start:
# IR_LIT_S
bb363_α:
 mov qword ptr [r12 + 360], 1
 mov rax, qword ptr [rip + .Lx824_0]
 mov qword ptr [r12 + 368], rax
 jmp xaltg820_a1_succ
 xaltg820_a1_beta:
 jmp xchain800_n9_α
.Lx824_0:
 .quad .Lx824_0_s
.Lx824_0_s:
 .string "none"
xaltg820_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 312], rax
 mov qword ptr [r12 + 320], 1
jmp xchain800_n8_α
xchain800_n7_β:
jmp xchain800_n9_α
xchain800_n8_α:
bb364_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+392]
 mov qword ptr [r12 + 392], 1
 mov rax, qword ptr [rip + .Lx826_0]
 mov qword ptr [r12 + 400], rax
 jmp .Lx826_1
.Lx826_0:
 .quad .Lx826_0_s
.Lx826_0_s:
 .string "i := 10 ----> "
.Lx826_1:
# marshal arg1 = nested producer-box slot [r12+304] -> [r12+408]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 408], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 416], rax
  .section .rodata
  .Lrkfn827: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn827]
 lea rsi, [r12 + 392]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 376], rax
 mov qword ptr [r12 + 384], rdx
 cmp eax, 99
 je xchain800_n9_α
 jmp xchain800_n9_α
 xchain800_n8_β:
 jmp xchain800_n9_α
xchain800_n9_α:
# IR_LIT_S
bb365_α:
 mov qword ptr [r12 + 424], 1
 mov rax, qword ptr [rip + .Lx828_0]
 mov qword ptr [r12 + 432], rax
 jmp xchain800_n10_α
 xchain800_n9_β:
 jmp xchain800_n12_α
.Lx828_0:
 .quad .Lx828_0_s
.Lx828_0_s:
 .string "i %:= 9 ----> "
xchain800_n10_α:
xaltg829_a0_start:
bb366_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+480]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
  .section .rodata
  .Lrkfn831: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn831]
 lea rsi, [r12 + 480]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 cmp eax, 99
 je xaltg829_a1_start
 jmp xaltg829_a0_succ
 xaltg829_a0_beta:
 jmp xaltg829_a1_start
xaltg829_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 440], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], 1
jmp xchain800_n11_α
xaltg829_a1_start:
# IR_LIT_S
bb367_α:
 mov qword ptr [r12 + 496], 1
 mov rax, qword ptr [rip + .Lx833_0]
 mov qword ptr [r12 + 504], rax
 jmp xaltg829_a1_succ
 xaltg829_a1_beta:
 jmp xchain800_n12_α
.Lx833_0:
 .quad .Lx833_0_s
.Lx833_0_s:
 .string "none"
xaltg829_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 440], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], 1
jmp xchain800_n11_α
xchain800_n10_β:
jmp xchain800_n12_α
xchain800_n11_α:
bb368_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+528]
 mov qword ptr [r12 + 528], 1
 mov rax, qword ptr [rip + .Lx835_0]
 mov qword ptr [r12 + 536], rax
 jmp .Lx835_1
.Lx835_0:
 .quad .Lx835_0_s
.Lx835_0_s:
 .string "i %:= 9 ----> "
.Lx835_1:
# marshal arg1 = nested producer-box slot [r12+440] -> [r12+544]
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 552], rax
  .section .rodata
  .Lrkfn836: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn836]
 lea rsi, [r12 + 528]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je xchain800_n12_α
 jmp xchain800_n12_α
 xchain800_n11_β:
 jmp xchain800_n12_α
xchain800_n12_α:
# IR_LIT_S
bb369_α:
 mov qword ptr [r12 + 560], 1
 mov rax, qword ptr [rip + .Lx837_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain800_n13_α
 xchain800_n12_β:
 jmp xchain800_n15_α
.Lx837_0:
 .quad .Lx837_0_s
.Lx837_0_s:
 .string "i ----> "
xchain800_n13_α:
xaltg838_a0_start:
bb370_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+616]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 616], rax
 mov qword ptr [r12 + 624], rdx
  .section .rodata
  .Lrkfn840: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn840]
 lea rsi, [r12 + 616]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 600], rax
 mov qword ptr [r12 + 608], rdx
 cmp eax, 99
 je xaltg838_a1_start
 jmp xaltg838_a0_succ
 xaltg838_a0_beta:
 jmp xaltg838_a1_start
xaltg838_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 584], rax
 mov qword ptr [r12 + 592], 1
jmp xchain800_n14_α
xaltg838_a1_start:
# IR_LIT_S
bb371_α:
 mov qword ptr [r12 + 632], 1
 mov rax, qword ptr [rip + .Lx842_0]
 mov qword ptr [r12 + 640], rax
 jmp xaltg838_a1_succ
 xaltg838_a1_beta:
 jmp xchain800_n15_α
.Lx842_0:
 .quad .Lx842_0_s
.Lx842_0_s:
 .string "none"
xaltg838_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 584], rax
 mov qword ptr [r12 + 592], 1
jmp xchain800_n14_α
xchain800_n13_β:
jmp xchain800_n15_α
xchain800_n14_α:
bb372_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+664]
 mov qword ptr [r12 + 664], 1
 mov rax, qword ptr [rip + .Lx844_0]
 mov qword ptr [r12 + 672], rax
 jmp .Lx844_1
.Lx844_0:
 .quad .Lx844_0_s
.Lx844_0_s:
 .string "i ----> "
.Lx844_1:
# marshal arg1 = nested producer-box slot [r12+576] -> [r12+680]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 680], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 688], rax
  .section .rodata
  .Lrkfn845: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn845]
 lea rsi, [r12 + 664]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 648], rax
 mov qword ptr [r12 + 656], rdx
 cmp eax, 99
 je xchain800_n15_α
 jmp xchain800_n15_α
 xchain800_n14_β:
 jmp xchain800_n15_α
xchain800_n15_α:
# IR_LIT_S
bb373_α:
 mov qword ptr [r12 + 696], 1
 mov rax, qword ptr [rip + .Lx846_0]
 mov qword ptr [r12 + 704], rax
 jmp xchain800_n16_α
 xchain800_n15_β:
 jmp xchain800_n18_α
.Lx846_0:
 .quad .Lx846_0_s
.Lx846_0_s:
 .string "i := 10 ----> "
xchain800_n16_α:
xaltg847_a0_start:
bb374_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+752]
 mov qword ptr [r12 + 752], 6
 movabs rax, 10
 mov qword ptr [r12 + 760], rax
  .section .rodata
  .Lrkfn849: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn849]
 lea rsi, [r12 + 752]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 cmp eax, 99
 je xaltg847_a1_start
 jmp xaltg847_a0_succ
 xaltg847_a0_beta:
 jmp xaltg847_a1_start
xaltg847_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 712], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], 1
jmp xchain800_n17_α
xaltg847_a1_start:
# IR_LIT_S
bb375_α:
 mov qword ptr [r12 + 768], 1
 mov rax, qword ptr [rip + .Lx851_0]
 mov qword ptr [r12 + 776], rax
 jmp xaltg847_a1_succ
 xaltg847_a1_beta:
 jmp xchain800_n18_α
.Lx851_0:
 .quad .Lx851_0_s
.Lx851_0_s:
 .string "none"
xaltg847_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 712], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], 1
jmp xchain800_n17_α
xchain800_n16_β:
jmp xchain800_n18_α
xchain800_n17_α:
bb376_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+800]
 mov qword ptr [r12 + 800], 1
 mov rax, qword ptr [rip + .Lx853_0]
 mov qword ptr [r12 + 808], rax
 jmp .Lx853_1
.Lx853_0:
 .quad .Lx853_0_s
.Lx853_0_s:
 .string "i := 10 ----> "
.Lx853_1:
# marshal arg1 = nested producer-box slot [r12+712] -> [r12+816]
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 824], rax
  .section .rodata
  .Lrkfn854: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn854]
 lea rsi, [r12 + 800]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 cmp eax, 99
 je xchain800_n18_α
 jmp xchain800_n18_α
 xchain800_n17_β:
 jmp xchain800_n18_α
xchain800_n18_α:
# IR_LIT_S
bb377_α:
 mov qword ptr [r12 + 832], 1
 mov rax, qword ptr [rip + .Lx855_0]
 mov qword ptr [r12 + 840], rax
 jmp xchain800_n19_α
 xchain800_n18_β:
 jmp xchain800_n21_α
.Lx855_0:
 .quad .Lx855_0_s
.Lx855_0_s:
 .string "i %:= 10 ----> "
xchain800_n19_α:
xaltg856_a0_start:
bb378_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+888]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 888], rax
 mov qword ptr [r12 + 896], rdx
  .section .rodata
  .Lrkfn858: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn858]
 lea rsi, [r12 + 888]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 872], rax
 mov qword ptr [r12 + 880], rdx
 cmp eax, 99
 je xaltg856_a1_start
 jmp xaltg856_a0_succ
 xaltg856_a0_beta:
 jmp xaltg856_a1_start
xaltg856_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 856], rax
 mov qword ptr [r12 + 864], 1
jmp xchain800_n20_α
xaltg856_a1_start:
# IR_LIT_S
bb379_α:
 mov qword ptr [r12 + 904], 1
 mov rax, qword ptr [rip + .Lx860_0]
 mov qword ptr [r12 + 912], rax
 jmp xaltg856_a1_succ
 xaltg856_a1_beta:
 jmp xchain800_n21_α
.Lx860_0:
 .quad .Lx860_0_s
.Lx860_0_s:
 .string "none"
xaltg856_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 904]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 912]
 mov qword ptr [r12 + 856], rax
 mov qword ptr [r12 + 864], 1
jmp xchain800_n20_α
xchain800_n19_β:
jmp xchain800_n21_α
xchain800_n20_α:
bb380_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+936]
 mov qword ptr [r12 + 936], 1
 mov rax, qword ptr [rip + .Lx862_0]
 mov qword ptr [r12 + 944], rax
 jmp .Lx862_1
.Lx862_0:
 .quad .Lx862_0_s
.Lx862_0_s:
 .string "i %:= 10 ----> "
.Lx862_1:
# marshal arg1 = nested producer-box slot [r12+848] -> [r12+952]
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 952], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 960], rax
  .section .rodata
  .Lrkfn863: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn863]
 lea rsi, [r12 + 936]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 920], rax
 mov qword ptr [r12 + 928], rdx
 cmp eax, 99
 je xchain800_n21_α
 jmp xchain800_n21_α
 xchain800_n20_β:
 jmp xchain800_n21_α
xchain800_n21_α:
# IR_LIT_S
bb381_α:
 mov qword ptr [r12 + 968], 1
 mov rax, qword ptr [rip + .Lx864_0]
 mov qword ptr [r12 + 976], rax
 jmp xchain800_n22_α
 xchain800_n21_β:
 jmp xchain800_n24_α
.Lx864_0:
 .quad .Lx864_0_s
.Lx864_0_s:
 .string "i ----> "
xchain800_n22_α:
xaltg865_a0_start:
bb382_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+1024]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
  .section .rodata
  .Lrkfn867: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn867]
 lea rsi, [r12 + 1024]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 cmp eax, 99
 je xaltg865_a1_start
 jmp xaltg865_a0_succ
 xaltg865_a0_beta:
 jmp xaltg865_a1_start
xaltg865_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1008]
 mov qword ptr [r12 + 984], rax
 mov rax, qword ptr [r12 + 1016]
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], 1
jmp xchain800_n23_α
xaltg865_a1_start:
# IR_LIT_S
bb383_α:
 mov qword ptr [r12 + 1040], 1
 mov rax, qword ptr [rip + .Lx869_0]
 mov qword ptr [r12 + 1048], rax
 jmp xaltg865_a1_succ
 xaltg865_a1_beta:
 jmp xchain800_n24_α
.Lx869_0:
 .quad .Lx869_0_s
.Lx869_0_s:
 .string "none"
xaltg865_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1040]
 mov qword ptr [r12 + 984], rax
 mov rax, qword ptr [r12 + 1048]
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], 1
jmp xchain800_n23_α
xchain800_n22_β:
jmp xchain800_n24_α
xchain800_n23_α:
bb384_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1072]
 mov qword ptr [r12 + 1072], 1
 mov rax, qword ptr [rip + .Lx871_0]
 mov qword ptr [r12 + 1080], rax
 jmp .Lx871_1
.Lx871_0:
 .quad .Lx871_0_s
.Lx871_0_s:
 .string "i ----> "
.Lx871_1:
# marshal arg1 = nested producer-box slot [r12+984] -> [r12+1088]
 mov rax, qword ptr [r12 + 984]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 992]
 mov qword ptr [r12 + 1096], rax
  .section .rodata
  .Lrkfn872: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn872]
 lea rsi, [r12 + 1072]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je xchain800_n24_α
 jmp xchain800_n24_α
 xchain800_n23_β:
 jmp xchain800_n24_α
xchain800_n24_α:
# IR_LIT_S
bb385_α:
 mov qword ptr [r12 + 1104], 1
 mov rax, qword ptr [rip + .Lx873_0]
 mov qword ptr [r12 + 1112], rax
 jmp xchain800_n25_α
 xchain800_n24_β:
 jmp xchain800_n27_α
.Lx873_0:
 .quad .Lx873_0_s
.Lx873_0_s:
 .string "i := 10 ----> "
xchain800_n25_α:
xaltg874_a0_start:
bb386_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+1160]
 mov qword ptr [r12 + 1160], 6
 movabs rax, 10
 mov qword ptr [r12 + 1168], rax
  .section .rodata
  .Lrkfn876: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn876]
 lea rsi, [r12 + 1160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1144], rax
 mov qword ptr [r12 + 1152], rdx
 cmp eax, 99
 je xaltg874_a1_start
 jmp xaltg874_a0_succ
 xaltg874_a0_beta:
 jmp xaltg874_a1_start
xaltg874_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 1152]
 mov qword ptr [r12 + 1128], rax
 mov qword ptr [r12 + 1136], 1
jmp xchain800_n26_α
xaltg874_a1_start:
# IR_LIT_S
bb387_α:
 mov qword ptr [r12 + 1176], 1
 mov rax, qword ptr [rip + .Lx878_0]
 mov qword ptr [r12 + 1184], rax
 jmp xaltg874_a1_succ
 xaltg874_a1_beta:
 jmp xchain800_n27_α
.Lx878_0:
 .quad .Lx878_0_s
.Lx878_0_s:
 .string "none"
xaltg874_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1176]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 1184]
 mov qword ptr [r12 + 1128], rax
 mov qword ptr [r12 + 1136], 1
jmp xchain800_n26_α
xchain800_n25_β:
jmp xchain800_n27_α
xchain800_n26_α:
bb388_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1208]
 mov qword ptr [r12 + 1208], 1
 mov rax, qword ptr [rip + .Lx880_0]
 mov qword ptr [r12 + 1216], rax
 jmp .Lx880_1
.Lx880_0:
 .quad .Lx880_0_s
.Lx880_0_s:
 .string "i := 10 ----> "
.Lx880_1:
# marshal arg1 = nested producer-box slot [r12+1120] -> [r12+1224]
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 1224], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 1232], rax
  .section .rodata
  .Lrkfn881: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn881]
 lea rsi, [r12 + 1208]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1192], rax
 mov qword ptr [r12 + 1200], rdx
 cmp eax, 99
 je xchain800_n27_α
 jmp xchain800_n27_α
 xchain800_n26_β:
 jmp xchain800_n27_α
xchain800_n27_α:
# IR_LIT_S
bb389_α:
 mov qword ptr [r12 + 1240], 1
 mov rax, qword ptr [rip + .Lx882_0]
 mov qword ptr [r12 + 1248], rax
 jmp xchain800_n28_α
 xchain800_n27_β:
 jmp xchain800_n30_α
.Lx882_0:
 .quad .Lx882_0_s
.Lx882_0_s:
 .string "i %:= 11 ----> "
xchain800_n28_α:
xaltg883_a0_start:
bb390_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+1296]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1296], rax
 mov qword ptr [r12 + 1304], rdx
  .section .rodata
  .Lrkfn885: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn885]
 lea rsi, [r12 + 1296]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 cmp eax, 99
 je xaltg883_a1_start
 jmp xaltg883_a0_succ
 xaltg883_a0_beta:
 jmp xaltg883_a1_start
xaltg883_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1280]
 mov qword ptr [r12 + 1256], rax
 mov rax, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], 1
jmp xchain800_n29_α
xaltg883_a1_start:
# IR_LIT_S
bb391_α:
 mov qword ptr [r12 + 1312], 1
 mov rax, qword ptr [rip + .Lx887_0]
 mov qword ptr [r12 + 1320], rax
 jmp xaltg883_a1_succ
 xaltg883_a1_beta:
 jmp xchain800_n30_α
.Lx887_0:
 .quad .Lx887_0_s
.Lx887_0_s:
 .string "none"
xaltg883_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1312]
 mov qword ptr [r12 + 1256], rax
 mov rax, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], 1
jmp xchain800_n29_α
xchain800_n28_β:
jmp xchain800_n30_α
xchain800_n29_α:
bb392_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1344]
 mov qword ptr [r12 + 1344], 1
 mov rax, qword ptr [rip + .Lx889_0]
 mov qword ptr [r12 + 1352], rax
 jmp .Lx889_1
.Lx889_0:
 .quad .Lx889_0_s
.Lx889_0_s:
 .string "i %:= 11 ----> "
.Lx889_1:
# marshal arg1 = nested producer-box slot [r12+1256] -> [r12+1360]
 mov rax, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 1360], rax
 mov rax, qword ptr [r12 + 1264]
 mov qword ptr [r12 + 1368], rax
  .section .rodata
  .Lrkfn890: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn890]
 lea rsi, [r12 + 1344]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 cmp eax, 99
 je xchain800_n30_α
 jmp xchain800_n30_α
 xchain800_n29_β:
 jmp xchain800_n30_α
xchain800_n30_α:
# IR_LIT_S
bb393_α:
 mov qword ptr [r12 + 1376], 1
 mov rax, qword ptr [rip + .Lx891_0]
 mov qword ptr [r12 + 1384], rax
 jmp xchain800_n31_α
 xchain800_n30_β:
 jmp proc_p9_ω
.Lx891_0:
 .quad .Lx891_0_s
.Lx891_0_s:
 .string "i ----> "
xchain800_n31_α:
xaltg892_a0_start:
bb394_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+1432]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1432], rax
 mov qword ptr [r12 + 1440], rdx
  .section .rodata
  .Lrkfn894: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn894]
 lea rsi, [r12 + 1432]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1416], rax
 mov qword ptr [r12 + 1424], rdx
 cmp eax, 99
 je xaltg892_a1_start
 jmp xaltg892_a0_succ
 xaltg892_a0_beta:
 jmp xaltg892_a1_start
xaltg892_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1416]
 mov qword ptr [r12 + 1392], rax
 mov rax, qword ptr [r12 + 1424]
 mov qword ptr [r12 + 1400], rax
 mov qword ptr [r12 + 1408], 1
jmp xchain800_n32_α
xaltg892_a1_start:
# IR_LIT_S
bb395_α:
 mov qword ptr [r12 + 1448], 1
 mov rax, qword ptr [rip + .Lx896_0]
 mov qword ptr [r12 + 1456], rax
 jmp xaltg892_a1_succ
 xaltg892_a1_beta:
 jmp proc_p9_ω
.Lx896_0:
 .quad .Lx896_0_s
.Lx896_0_s:
 .string "none"
xaltg892_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1448]
 mov qword ptr [r12 + 1392], rax
 mov rax, qword ptr [r12 + 1456]
 mov qword ptr [r12 + 1400], rax
 mov qword ptr [r12 + 1408], 1
jmp xchain800_n32_α
xchain800_n31_β:
jmp proc_p9_ω
xchain800_n32_α:
bb396_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1480]
 mov qword ptr [r12 + 1480], 1
 mov rax, qword ptr [rip + .Lx898_0]
 mov qword ptr [r12 + 1488], rax
 jmp .Lx898_1
.Lx898_0:
 .quad .Lx898_0_s
.Lx898_0_s:
 .string "i ----> "
.Lx898_1:
# marshal arg1 = nested producer-box slot [r12+1392] -> [r12+1496]
 mov rax, qword ptr [r12 + 1392]
 mov qword ptr [r12 + 1496], rax
 mov rax, qword ptr [r12 + 1400]
 mov qword ptr [r12 + 1504], rax
  .section .rodata
  .Lrkfn899: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn899]
 lea rsi, [r12 + 1480]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1464], rax
 mov qword ptr [r12 + 1472], rdx
 cmp eax, 99
 je proc_p9_ω
 jmp proc_p9_γ
 xchain800_n32_β:
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
xchain900_n0_α:
# IR_LIT_S
bb397_α:
 mov qword ptr [r12 + 16], 1
 mov rax, qword ptr [rip + .Lx901_0]
 mov qword ptr [r12 + 24], rax
 jmp xchain900_n1_α
 xchain900_n0_β:
 jmp xchain900_n3_α
.Lx901_0:
 .quad .Lx901_0_s
.Lx901_0_s:
 .string "i := 10 ----> "
xchain900_n1_α:
xaltg902_a0_start:
bb398_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+72]
 mov qword ptr [r12 + 72], 6
 movabs rax, 10
 mov qword ptr [r12 + 80], rax
  .section .rodata
  .Lrkfn904: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn904]
 lea rsi, [r12 + 72]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 56], rax
 mov qword ptr [r12 + 64], rdx
 cmp eax, 99
 je xaltg902_a1_start
 jmp xaltg902_a0_succ
 xaltg902_a0_beta:
 jmp xaltg902_a1_start
xaltg902_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain900_n2_α
xaltg902_a1_start:
# IR_LIT_S
bb399_α:
 mov qword ptr [r12 + 88], 1
 mov rax, qword ptr [rip + .Lx906_0]
 mov qword ptr [r12 + 96], rax
 jmp xaltg902_a1_succ
 xaltg902_a1_beta:
 jmp xchain900_n3_α
.Lx906_0:
 .quad .Lx906_0_s
.Lx906_0_s:
 .string "none"
xaltg902_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain900_n2_α
xchain900_n1_β:
jmp xchain900_n3_α
xchain900_n2_α:
bb400_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+120]
 mov qword ptr [r12 + 120], 1
 mov rax, qword ptr [rip + .Lx908_0]
 mov qword ptr [r12 + 128], rax
 jmp .Lx908_1
.Lx908_0:
 .quad .Lx908_0_s
.Lx908_0_s:
 .string "i := 10 ----> "
.Lx908_1:
# marshal arg1 = nested producer-box slot [r12+32] -> [r12+136]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 136], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 144], rax
  .section .rodata
  .Lrkfn909: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn909]
 lea rsi, [r12 + 120]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 104], rax
 mov qword ptr [r12 + 112], rdx
 cmp eax, 99
 je xchain900_n3_α
 jmp xchain900_n3_α
 xchain900_n2_β:
 jmp xchain900_n3_α
xchain900_n3_α:
# IR_LIT_S
bb401_α:
 mov qword ptr [r12 + 152], 1
 mov rax, qword ptr [rip + .Lx910_0]
 mov qword ptr [r12 + 160], rax
 jmp xchain900_n4_α
 xchain900_n3_β:
 jmp xchain900_n6_α
.Lx910_0:
 .quad .Lx910_0_s
.Lx910_0_s:
 .string "i ^:= 9 ----> "
xchain900_n4_α:
xaltg911_a0_start:
bb402_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+208]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
  .section .rodata
  .Lrkfn913: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn913]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xaltg911_a1_start
 jmp xaltg911_a0_succ
 xaltg911_a0_beta:
 jmp xaltg911_a1_start
xaltg911_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 168], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], 1
jmp xchain900_n5_α
xaltg911_a1_start:
# IR_LIT_S
bb403_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx915_0]
 mov qword ptr [r12 + 232], rax
 jmp xaltg911_a1_succ
 xaltg911_a1_beta:
 jmp xchain900_n6_α
.Lx915_0:
 .quad .Lx915_0_s
.Lx915_0_s:
 .string "none"
xaltg911_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 168], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], 1
jmp xchain900_n5_α
xchain900_n4_β:
jmp xchain900_n6_α
xchain900_n5_α:
bb404_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+256]
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx917_0]
 mov qword ptr [r12 + 264], rax
 jmp .Lx917_1
.Lx917_0:
 .quad .Lx917_0_s
.Lx917_0_s:
 .string "i ^:= 9 ----> "
.Lx917_1:
# marshal arg1 = nested producer-box slot [r12+168] -> [r12+272]
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 280], rax
  .section .rodata
  .Lrkfn918: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn918]
 lea rsi, [r12 + 256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain900_n6_α
 jmp xchain900_n6_α
 xchain900_n5_β:
 jmp xchain900_n6_α
xchain900_n6_α:
# IR_LIT_S
bb405_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx919_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain900_n7_α
 xchain900_n6_β:
 jmp xchain900_n9_α
.Lx919_0:
 .quad .Lx919_0_s
.Lx919_0_s:
 .string "i ----> "
xchain900_n7_α:
xaltg920_a0_start:
bb406_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+344]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 344], rax
 mov qword ptr [r12 + 352], rdx
  .section .rodata
  .Lrkfn922: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn922]
 lea rsi, [r12 + 344]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 328], rax
 mov qword ptr [r12 + 336], rdx
 cmp eax, 99
 je xaltg920_a1_start
 jmp xaltg920_a0_succ
 xaltg920_a0_beta:
 jmp xaltg920_a1_start
xaltg920_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 312], rax
 mov qword ptr [r12 + 320], 1
jmp xchain900_n8_α
xaltg920_a1_start:
# IR_LIT_S
bb407_α:
 mov qword ptr [r12 + 360], 1
 mov rax, qword ptr [rip + .Lx924_0]
 mov qword ptr [r12 + 368], rax
 jmp xaltg920_a1_succ
 xaltg920_a1_beta:
 jmp xchain900_n9_α
.Lx924_0:
 .quad .Lx924_0_s
.Lx924_0_s:
 .string "none"
xaltg920_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 312], rax
 mov qword ptr [r12 + 320], 1
jmp xchain900_n8_α
xchain900_n7_β:
jmp xchain900_n9_α
xchain900_n8_α:
bb408_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+392]
 mov qword ptr [r12 + 392], 1
 mov rax, qword ptr [rip + .Lx926_0]
 mov qword ptr [r12 + 400], rax
 jmp .Lx926_1
.Lx926_0:
 .quad .Lx926_0_s
.Lx926_0_s:
 .string "i ----> "
.Lx926_1:
# marshal arg1 = nested producer-box slot [r12+304] -> [r12+408]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 408], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 416], rax
  .section .rodata
  .Lrkfn927: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn927]
 lea rsi, [r12 + 392]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 376], rax
 mov qword ptr [r12 + 384], rdx
 cmp eax, 99
 je xchain900_n9_α
 jmp xchain900_n9_α
 xchain900_n8_β:
 jmp xchain900_n9_α
xchain900_n9_α:
# IR_LIT_S
bb409_α:
 mov qword ptr [r12 + 424], 1
 mov rax, qword ptr [rip + .Lx928_0]
 mov qword ptr [r12 + 432], rax
 jmp xchain900_n10_α
 xchain900_n9_β:
 jmp xchain900_n12_α
.Lx928_0:
 .quad .Lx928_0_s
.Lx928_0_s:
 .string "i := 10 ----> "
xchain900_n10_α:
xaltg929_a0_start:
bb410_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+480]
 mov qword ptr [r12 + 480], 6
 movabs rax, 10
 mov qword ptr [r12 + 488], rax
  .section .rodata
  .Lrkfn931: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn931]
 lea rsi, [r12 + 480]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 cmp eax, 99
 je xaltg929_a1_start
 jmp xaltg929_a0_succ
 xaltg929_a0_beta:
 jmp xaltg929_a1_start
xaltg929_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 440], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], 1
jmp xchain900_n11_α
xaltg929_a1_start:
# IR_LIT_S
bb411_α:
 mov qword ptr [r12 + 496], 1
 mov rax, qword ptr [rip + .Lx933_0]
 mov qword ptr [r12 + 504], rax
 jmp xaltg929_a1_succ
 xaltg929_a1_beta:
 jmp xchain900_n12_α
.Lx933_0:
 .quad .Lx933_0_s
.Lx933_0_s:
 .string "none"
xaltg929_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 440], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], 1
jmp xchain900_n11_α
xchain900_n10_β:
jmp xchain900_n12_α
xchain900_n11_α:
bb412_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+528]
 mov qword ptr [r12 + 528], 1
 mov rax, qword ptr [rip + .Lx935_0]
 mov qword ptr [r12 + 536], rax
 jmp .Lx935_1
.Lx935_0:
 .quad .Lx935_0_s
.Lx935_0_s:
 .string "i := 10 ----> "
.Lx935_1:
# marshal arg1 = nested producer-box slot [r12+440] -> [r12+544]
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 552], rax
  .section .rodata
  .Lrkfn936: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn936]
 lea rsi, [r12 + 528]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je xchain900_n12_α
 jmp xchain900_n12_α
 xchain900_n11_β:
 jmp xchain900_n12_α
xchain900_n12_α:
# IR_LIT_S
bb413_α:
 mov qword ptr [r12 + 560], 1
 mov rax, qword ptr [rip + .Lx937_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain900_n13_α
 xchain900_n12_β:
 jmp xchain900_n15_α
.Lx937_0:
 .quad .Lx937_0_s
.Lx937_0_s:
 .string "s := \"x\" ----> "
xchain900_n13_α:
xaltg938_a0_start:
bb414_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+616]
 mov qword ptr [r12 + 616], 1
 mov rax, qword ptr [rip + .Lx939_0]
 mov qword ptr [r12 + 624], rax
 jmp .Lx939_1
.Lx939_0:
 .quad .Lx939_0_s
.Lx939_0_s:
 .string "x"
.Lx939_1:
  .section .rodata
  .Lrkfn940: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn940]
 lea rsi, [r12 + 616]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 600], rax
 mov qword ptr [r12 + 608], rdx
 cmp eax, 99
 je xaltg938_a1_start
 jmp xaltg938_a0_succ
 xaltg938_a0_beta:
 jmp xaltg938_a1_start
xaltg938_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 584], rax
 mov qword ptr [r12 + 592], 1
jmp xchain900_n14_α
xaltg938_a1_start:
# IR_LIT_S
bb415_α:
 mov qword ptr [r12 + 632], 1
 mov rax, qword ptr [rip + .Lx942_0]
 mov qword ptr [r12 + 640], rax
 jmp xaltg938_a1_succ
 xaltg938_a1_beta:
 jmp xchain900_n15_α
.Lx942_0:
 .quad .Lx942_0_s
.Lx942_0_s:
 .string "none"
xaltg938_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 584], rax
 mov qword ptr [r12 + 592], 1
jmp xchain900_n14_α
xchain900_n13_β:
jmp xchain900_n15_α
xchain900_n14_α:
bb416_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+664]
 mov qword ptr [r12 + 664], 1
 mov rax, qword ptr [rip + .Lx944_0]
 mov qword ptr [r12 + 672], rax
 jmp .Lx944_1
.Lx944_0:
 .quad .Lx944_0_s
.Lx944_0_s:
 .string "s := \"x\" ----> "
.Lx944_1:
# marshal arg1 = nested producer-box slot [r12+576] -> [r12+680]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 680], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 688], rax
  .section .rodata
  .Lrkfn945: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn945]
 lea rsi, [r12 + 664]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 648], rax
 mov qword ptr [r12 + 656], rdx
 cmp eax, 99
 je xchain900_n15_α
 jmp xchain900_n15_α
 xchain900_n14_β:
 jmp xchain900_n15_α
xchain900_n15_α:
# IR_LIT_S
bb417_α:
 mov qword ptr [r12 + 696], 1
 mov rax, qword ptr [rip + .Lx946_0]
 mov qword ptr [r12 + 704], rax
 jmp xchain900_n16_α
 xchain900_n15_β:
 jmp proc_p10_ω
.Lx946_0:
 .quad .Lx946_0_s
.Lx946_0_s:
 .string "s <<:= \"x\" ----> "
xchain900_n16_α:
xaltg947_a0_start:
bb418_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+752]
   lea rdi, [rip + .S1]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
  .section .rodata
  .Lrkfn949: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn949]
 lea rsi, [r12 + 752]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 cmp eax, 99
 je xaltg947_a1_start
 jmp xaltg947_a0_succ
 xaltg947_a0_beta:
 jmp xaltg947_a1_start
xaltg947_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 712], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], 1
jmp xchain900_n17_α
xaltg947_a1_start:
# IR_LIT_S
bb419_α:
 mov qword ptr [r12 + 768], 1
 mov rax, qword ptr [rip + .Lx951_0]
 mov qword ptr [r12 + 776], rax
 jmp xaltg947_a1_succ
 xaltg947_a1_beta:
 jmp proc_p10_ω
.Lx951_0:
 .quad .Lx951_0_s
.Lx951_0_s:
 .string "none"
xaltg947_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 712], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], 1
jmp xchain900_n17_α
xchain900_n16_β:
jmp proc_p10_ω
xchain900_n17_α:
bb420_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+800]
 mov qword ptr [r12 + 800], 1
 mov rax, qword ptr [rip + .Lx953_0]
 mov qword ptr [r12 + 808], rax
 jmp .Lx953_1
.Lx953_0:
 .quad .Lx953_0_s
.Lx953_0_s:
 .string "s <<:= \"x\" ----> "
.Lx953_1:
# marshal arg1 = nested producer-box slot [r12+712] -> [r12+816]
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 824], rax
  .section .rodata
  .Lrkfn954: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn954]
 lea rsi, [r12 + 800]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 cmp eax, 99
 je proc_p10_ω
 jmp proc_p10_γ
 xchain900_n17_β:
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
xchain955_n0_α:
# IR_LIT_S
bb421_α:
 mov qword ptr [r12 + 16], 1
 mov rax, qword ptr [rip + .Lx956_0]
 mov qword ptr [r12 + 24], rax
 jmp xchain955_n1_α
 xchain955_n0_β:
 jmp xchain955_n3_α
.Lx956_0:
 .quad .Lx956_0_s
.Lx956_0_s:
 .string "s ----> "
xchain955_n1_α:
xaltg957_a0_start:
bb422_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+72]
   lea rdi, [rip + .S1]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 72], rax
 mov qword ptr [r12 + 80], rdx
  .section .rodata
  .Lrkfn959: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn959]
 lea rsi, [r12 + 72]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 56], rax
 mov qword ptr [r12 + 64], rdx
 cmp eax, 99
 je xaltg957_a1_start
 jmp xaltg957_a0_succ
 xaltg957_a0_beta:
 jmp xaltg957_a1_start
xaltg957_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain955_n2_α
xaltg957_a1_start:
# IR_LIT_S
bb423_α:
 mov qword ptr [r12 + 88], 1
 mov rax, qword ptr [rip + .Lx961_0]
 mov qword ptr [r12 + 96], rax
 jmp xaltg957_a1_succ
 xaltg957_a1_beta:
 jmp xchain955_n3_α
.Lx961_0:
 .quad .Lx961_0_s
.Lx961_0_s:
 .string "none"
xaltg957_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain955_n2_α
xchain955_n1_β:
jmp xchain955_n3_α
xchain955_n2_α:
bb424_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+120]
 mov qword ptr [r12 + 120], 1
 mov rax, qword ptr [rip + .Lx963_0]
 mov qword ptr [r12 + 128], rax
 jmp .Lx963_1
.Lx963_0:
 .quad .Lx963_0_s
.Lx963_0_s:
 .string "s ----> "
.Lx963_1:
# marshal arg1 = nested producer-box slot [r12+32] -> [r12+136]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 136], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 144], rax
  .section .rodata
  .Lrkfn964: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn964]
 lea rsi, [r12 + 120]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 104], rax
 mov qword ptr [r12 + 112], rdx
 cmp eax, 99
 je xchain955_n3_α
 jmp xchain955_n3_α
 xchain955_n2_β:
 jmp xchain955_n3_α
xchain955_n3_α:
# IR_LIT_S
bb425_α:
 mov qword ptr [r12 + 152], 1
 mov rax, qword ptr [rip + .Lx965_0]
 mov qword ptr [r12 + 160], rax
 jmp xchain955_n4_α
 xchain955_n3_β:
 jmp xchain955_n6_α
.Lx965_0:
 .quad .Lx965_0_s
.Lx965_0_s:
 .string "s := \"x\" ----> "
xchain955_n4_α:
xaltg966_a0_start:
bb426_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+208]
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx967_0]
 mov qword ptr [r12 + 216], rax
 jmp .Lx967_1
.Lx967_0:
 .quad .Lx967_0_s
.Lx967_0_s:
 .string "x"
.Lx967_1:
  .section .rodata
  .Lrkfn968: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn968]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xaltg966_a1_start
 jmp xaltg966_a0_succ
 xaltg966_a0_beta:
 jmp xaltg966_a1_start
xaltg966_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 168], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], 1
jmp xchain955_n5_α
xaltg966_a1_start:
# IR_LIT_S
bb427_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx970_0]
 mov qword ptr [r12 + 232], rax
 jmp xaltg966_a1_succ
 xaltg966_a1_beta:
 jmp xchain955_n6_α
.Lx970_0:
 .quad .Lx970_0_s
.Lx970_0_s:
 .string "none"
xaltg966_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 168], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], 1
jmp xchain955_n5_α
xchain955_n4_β:
jmp xchain955_n6_α
xchain955_n5_α:
bb428_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+256]
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx972_0]
 mov qword ptr [r12 + 264], rax
 jmp .Lx972_1
.Lx972_0:
 .quad .Lx972_0_s
.Lx972_0_s:
 .string "s := \"x\" ----> "
.Lx972_1:
# marshal arg1 = nested producer-box slot [r12+168] -> [r12+272]
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 280], rax
  .section .rodata
  .Lrkfn973: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn973]
 lea rsi, [r12 + 256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain955_n6_α
 jmp xchain955_n6_α
 xchain955_n5_β:
 jmp xchain955_n6_α
xchain955_n6_α:
# IR_LIT_S
bb429_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx974_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain955_n7_α
 xchain955_n6_β:
 jmp xchain955_n9_α
.Lx974_0:
 .quad .Lx974_0_s
.Lx974_0_s:
 .string "s <<:= \"xx\" ----> "
xchain955_n7_α:
xaltg975_a0_start:
bb430_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+344]
   lea rdi, [rip + .S1]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 344], rax
 mov qword ptr [r12 + 352], rdx
  .section .rodata
  .Lrkfn977: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn977]
 lea rsi, [r12 + 344]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 328], rax
 mov qword ptr [r12 + 336], rdx
 cmp eax, 99
 je xaltg975_a1_start
 jmp xaltg975_a0_succ
 xaltg975_a0_beta:
 jmp xaltg975_a1_start
xaltg975_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 312], rax
 mov qword ptr [r12 + 320], 1
jmp xchain955_n8_α
xaltg975_a1_start:
# IR_LIT_S
bb431_α:
 mov qword ptr [r12 + 360], 1
 mov rax, qword ptr [rip + .Lx979_0]
 mov qword ptr [r12 + 368], rax
 jmp xaltg975_a1_succ
 xaltg975_a1_beta:
 jmp xchain955_n9_α
.Lx979_0:
 .quad .Lx979_0_s
.Lx979_0_s:
 .string "none"
xaltg975_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 312], rax
 mov qword ptr [r12 + 320], 1
jmp xchain955_n8_α
xchain955_n7_β:
jmp xchain955_n9_α
xchain955_n8_α:
bb432_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+392]
 mov qword ptr [r12 + 392], 1
 mov rax, qword ptr [rip + .Lx981_0]
 mov qword ptr [r12 + 400], rax
 jmp .Lx981_1
.Lx981_0:
 .quad .Lx981_0_s
.Lx981_0_s:
 .string "s <<:= \"xx\" ----> "
.Lx981_1:
# marshal arg1 = nested producer-box slot [r12+304] -> [r12+408]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 408], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 416], rax
  .section .rodata
  .Lrkfn982: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn982]
 lea rsi, [r12 + 392]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 376], rax
 mov qword ptr [r12 + 384], rdx
 cmp eax, 99
 je xchain955_n9_α
 jmp xchain955_n9_α
 xchain955_n8_β:
 jmp xchain955_n9_α
xchain955_n9_α:
# IR_LIT_S
bb433_α:
 mov qword ptr [r12 + 424], 1
 mov rax, qword ptr [rip + .Lx983_0]
 mov qword ptr [r12 + 432], rax
 jmp xchain955_n10_α
 xchain955_n9_β:
 jmp xchain955_n12_α
.Lx983_0:
 .quad .Lx983_0_s
.Lx983_0_s:
 .string "s ----> "
xchain955_n10_α:
xaltg984_a0_start:
bb434_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+480]
   lea rdi, [rip + .S1]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
  .section .rodata
  .Lrkfn986: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn986]
 lea rsi, [r12 + 480]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 cmp eax, 99
 je xaltg984_a1_start
 jmp xaltg984_a0_succ
 xaltg984_a0_beta:
 jmp xaltg984_a1_start
xaltg984_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 440], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], 1
jmp xchain955_n11_α
xaltg984_a1_start:
# IR_LIT_S
bb435_α:
 mov qword ptr [r12 + 496], 1
 mov rax, qword ptr [rip + .Lx988_0]
 mov qword ptr [r12 + 504], rax
 jmp xaltg984_a1_succ
 xaltg984_a1_beta:
 jmp xchain955_n12_α
.Lx988_0:
 .quad .Lx988_0_s
.Lx988_0_s:
 .string "none"
xaltg984_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 440], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], 1
jmp xchain955_n11_α
xchain955_n10_β:
jmp xchain955_n12_α
xchain955_n11_α:
bb436_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+528]
 mov qword ptr [r12 + 528], 1
 mov rax, qword ptr [rip + .Lx990_0]
 mov qword ptr [r12 + 536], rax
 jmp .Lx990_1
.Lx990_0:
 .quad .Lx990_0_s
.Lx990_0_s:
 .string "s ----> "
.Lx990_1:
# marshal arg1 = nested producer-box slot [r12+440] -> [r12+544]
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 552], rax
  .section .rodata
  .Lrkfn991: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn991]
 lea rsi, [r12 + 528]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je xchain955_n12_α
 jmp xchain955_n12_α
 xchain955_n11_β:
 jmp xchain955_n12_α
xchain955_n12_α:
# IR_LIT_S
bb437_α:
 mov qword ptr [r12 + 560], 1
 mov rax, qword ptr [rip + .Lx992_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain955_n13_α
 xchain955_n12_β:
 jmp xchain955_n15_α
.Lx992_0:
 .quad .Lx992_0_s
.Lx992_0_s:
 .string "s := \"x\" ----> "
xchain955_n13_α:
xaltg993_a0_start:
bb438_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+616]
 mov qword ptr [r12 + 616], 1
 mov rax, qword ptr [rip + .Lx994_0]
 mov qword ptr [r12 + 624], rax
 jmp .Lx994_1
.Lx994_0:
 .quad .Lx994_0_s
.Lx994_0_s:
 .string "x"
.Lx994_1:
  .section .rodata
  .Lrkfn995: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn995]
 lea rsi, [r12 + 616]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 600], rax
 mov qword ptr [r12 + 608], rdx
 cmp eax, 99
 je xaltg993_a1_start
 jmp xaltg993_a0_succ
 xaltg993_a0_beta:
 jmp xaltg993_a1_start
xaltg993_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 584], rax
 mov qword ptr [r12 + 592], 1
jmp xchain955_n14_α
xaltg993_a1_start:
# IR_LIT_S
bb439_α:
 mov qword ptr [r12 + 632], 1
 mov rax, qword ptr [rip + .Lx997_0]
 mov qword ptr [r12 + 640], rax
 jmp xaltg993_a1_succ
 xaltg993_a1_beta:
 jmp xchain955_n15_α
.Lx997_0:
 .quad .Lx997_0_s
.Lx997_0_s:
 .string "none"
xaltg993_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 584], rax
 mov qword ptr [r12 + 592], 1
jmp xchain955_n14_α
xchain955_n13_β:
jmp xchain955_n15_α
xchain955_n14_α:
bb440_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+664]
 mov qword ptr [r12 + 664], 1
 mov rax, qword ptr [rip + .Lx999_0]
 mov qword ptr [r12 + 672], rax
 jmp .Lx999_1
.Lx999_0:
 .quad .Lx999_0_s
.Lx999_0_s:
 .string "s := \"x\" ----> "
.Lx999_1:
# marshal arg1 = nested producer-box slot [r12+576] -> [r12+680]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 680], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 688], rax
  .section .rodata
  .Lrkfn1000: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1000]
 lea rsi, [r12 + 664]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 648], rax
 mov qword ptr [r12 + 656], rdx
 cmp eax, 99
 je xchain955_n15_α
 jmp xchain955_n15_α
 xchain955_n14_β:
 jmp xchain955_n15_α
xchain955_n15_α:
# IR_LIT_S
bb441_α:
 mov qword ptr [r12 + 696], 1
 mov rax, qword ptr [rip + .Lx1001_0]
 mov qword ptr [r12 + 704], rax
 jmp xchain955_n16_α
 xchain955_n15_β:
 jmp xchain955_n18_α
.Lx1001_0:
 .quad .Lx1001_0_s
.Lx1001_0_s:
 .string "s <<:= \"X\" ----> "
xchain955_n16_α:
xaltg1002_a0_start:
bb442_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+752]
   lea rdi, [rip + .S1]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
  .section .rodata
  .Lrkfn1004: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1004]
 lea rsi, [r12 + 752]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 cmp eax, 99
 je xaltg1002_a1_start
 jmp xaltg1002_a0_succ
 xaltg1002_a0_beta:
 jmp xaltg1002_a1_start
xaltg1002_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 712], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], 1
jmp xchain955_n17_α
xaltg1002_a1_start:
# IR_LIT_S
bb443_α:
 mov qword ptr [r12 + 768], 1
 mov rax, qword ptr [rip + .Lx1006_0]
 mov qword ptr [r12 + 776], rax
 jmp xaltg1002_a1_succ
 xaltg1002_a1_beta:
 jmp xchain955_n18_α
.Lx1006_0:
 .quad .Lx1006_0_s
.Lx1006_0_s:
 .string "none"
xaltg1002_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 712], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], 1
jmp xchain955_n17_α
xchain955_n16_β:
jmp xchain955_n18_α
xchain955_n17_α:
bb444_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+800]
 mov qword ptr [r12 + 800], 1
 mov rax, qword ptr [rip + .Lx1008_0]
 mov qword ptr [r12 + 808], rax
 jmp .Lx1008_1
.Lx1008_0:
 .quad .Lx1008_0_s
.Lx1008_0_s:
 .string "s <<:= \"X\" ----> "
.Lx1008_1:
# marshal arg1 = nested producer-box slot [r12+712] -> [r12+816]
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 824], rax
  .section .rodata
  .Lrkfn1009: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1009]
 lea rsi, [r12 + 800]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 cmp eax, 99
 je xchain955_n18_α
 jmp xchain955_n18_α
 xchain955_n17_β:
 jmp xchain955_n18_α
xchain955_n18_α:
# IR_LIT_S
bb445_α:
 mov qword ptr [r12 + 832], 1
 mov rax, qword ptr [rip + .Lx1010_0]
 mov qword ptr [r12 + 840], rax
 jmp xchain955_n19_α
 xchain955_n18_β:
 jmp xchain955_n21_α
.Lx1010_0:
 .quad .Lx1010_0_s
.Lx1010_0_s:
 .string "s ----> "
xchain955_n19_α:
xaltg1011_a0_start:
bb446_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+888]
   lea rdi, [rip + .S1]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 888], rax
 mov qword ptr [r12 + 896], rdx
  .section .rodata
  .Lrkfn1013: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1013]
 lea rsi, [r12 + 888]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 872], rax
 mov qword ptr [r12 + 880], rdx
 cmp eax, 99
 je xaltg1011_a1_start
 jmp xaltg1011_a0_succ
 xaltg1011_a0_beta:
 jmp xaltg1011_a1_start
xaltg1011_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 856], rax
 mov qword ptr [r12 + 864], 1
jmp xchain955_n20_α
xaltg1011_a1_start:
# IR_LIT_S
bb447_α:
 mov qword ptr [r12 + 904], 1
 mov rax, qword ptr [rip + .Lx1015_0]
 mov qword ptr [r12 + 912], rax
 jmp xaltg1011_a1_succ
 xaltg1011_a1_beta:
 jmp xchain955_n21_α
.Lx1015_0:
 .quad .Lx1015_0_s
.Lx1015_0_s:
 .string "none"
xaltg1011_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 904]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 912]
 mov qword ptr [r12 + 856], rax
 mov qword ptr [r12 + 864], 1
jmp xchain955_n20_α
xchain955_n19_β:
jmp xchain955_n21_α
xchain955_n20_α:
bb448_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+936]
 mov qword ptr [r12 + 936], 1
 mov rax, qword ptr [rip + .Lx1017_0]
 mov qword ptr [r12 + 944], rax
 jmp .Lx1017_1
.Lx1017_0:
 .quad .Lx1017_0_s
.Lx1017_0_s:
 .string "s ----> "
.Lx1017_1:
# marshal arg1 = nested producer-box slot [r12+848] -> [r12+952]
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 952], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 960], rax
  .section .rodata
  .Lrkfn1018: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1018]
 lea rsi, [r12 + 936]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 920], rax
 mov qword ptr [r12 + 928], rdx
 cmp eax, 99
 je xchain955_n21_α
 jmp xchain955_n21_α
 xchain955_n20_β:
 jmp xchain955_n21_α
xchain955_n21_α:
# IR_LIT_S
bb449_α:
 mov qword ptr [r12 + 968], 1
 mov rax, qword ptr [rip + .Lx1019_0]
 mov qword ptr [r12 + 976], rax
 jmp xchain955_n22_α
 xchain955_n21_β:
 jmp xchain955_n24_α
.Lx1019_0:
 .quad .Lx1019_0_s
.Lx1019_0_s:
 .string "s := \"x\" ----> "
xchain955_n22_α:
xaltg1020_a0_start:
bb450_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1024]
 mov qword ptr [r12 + 1024], 1
 mov rax, qword ptr [rip + .Lx1021_0]
 mov qword ptr [r12 + 1032], rax
 jmp .Lx1021_1
.Lx1021_0:
 .quad .Lx1021_0_s
.Lx1021_0_s:
 .string "x"
.Lx1021_1:
  .section .rodata
  .Lrkfn1022: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1022]
 lea rsi, [r12 + 1024]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 cmp eax, 99
 je xaltg1020_a1_start
 jmp xaltg1020_a0_succ
 xaltg1020_a0_beta:
 jmp xaltg1020_a1_start
xaltg1020_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1008]
 mov qword ptr [r12 + 984], rax
 mov rax, qword ptr [r12 + 1016]
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], 1
jmp xchain955_n23_α
xaltg1020_a1_start:
# IR_LIT_S
bb451_α:
 mov qword ptr [r12 + 1040], 1
 mov rax, qword ptr [rip + .Lx1024_0]
 mov qword ptr [r12 + 1048], rax
 jmp xaltg1020_a1_succ
 xaltg1020_a1_beta:
 jmp xchain955_n24_α
.Lx1024_0:
 .quad .Lx1024_0_s
.Lx1024_0_s:
 .string "none"
xaltg1020_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1040]
 mov qword ptr [r12 + 984], rax
 mov rax, qword ptr [r12 + 1048]
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], 1
jmp xchain955_n23_α
xchain955_n22_β:
jmp xchain955_n24_α
xchain955_n23_α:
bb452_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1072]
 mov qword ptr [r12 + 1072], 1
 mov rax, qword ptr [rip + .Lx1026_0]
 mov qword ptr [r12 + 1080], rax
 jmp .Lx1026_1
.Lx1026_0:
 .quad .Lx1026_0_s
.Lx1026_0_s:
 .string "s := \"x\" ----> "
.Lx1026_1:
# marshal arg1 = nested producer-box slot [r12+984] -> [r12+1088]
 mov rax, qword ptr [r12 + 984]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 992]
 mov qword ptr [r12 + 1096], rax
  .section .rodata
  .Lrkfn1027: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1027]
 lea rsi, [r12 + 1072]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je xchain955_n24_α
 jmp xchain955_n24_α
 xchain955_n23_β:
 jmp xchain955_n24_α
xchain955_n24_α:
# IR_LIT_S
bb453_α:
 mov qword ptr [r12 + 1104], 1
 mov rax, qword ptr [rip + .Lx1028_0]
 mov qword ptr [r12 + 1112], rax
 jmp xchain955_n25_α
 xchain955_n24_β:
 jmp xchain955_n27_α
.Lx1028_0:
 .quad .Lx1028_0_s
.Lx1028_0_s:
 .string "s <<:= \"abc\" ----> "
xchain955_n25_α:
xaltg1029_a0_start:
bb454_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+1160]
   lea rdi, [rip + .S1]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1160], rax
 mov qword ptr [r12 + 1168], rdx
  .section .rodata
  .Lrkfn1031: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1031]
 lea rsi, [r12 + 1160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1144], rax
 mov qword ptr [r12 + 1152], rdx
 cmp eax, 99
 je xaltg1029_a1_start
 jmp xaltg1029_a0_succ
 xaltg1029_a0_beta:
 jmp xaltg1029_a1_start
xaltg1029_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 1152]
 mov qword ptr [r12 + 1128], rax
 mov qword ptr [r12 + 1136], 1
jmp xchain955_n26_α
xaltg1029_a1_start:
# IR_LIT_S
bb455_α:
 mov qword ptr [r12 + 1176], 1
 mov rax, qword ptr [rip + .Lx1033_0]
 mov qword ptr [r12 + 1184], rax
 jmp xaltg1029_a1_succ
 xaltg1029_a1_beta:
 jmp xchain955_n27_α
.Lx1033_0:
 .quad .Lx1033_0_s
.Lx1033_0_s:
 .string "none"
xaltg1029_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1176]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 1184]
 mov qword ptr [r12 + 1128], rax
 mov qword ptr [r12 + 1136], 1
jmp xchain955_n26_α
xchain955_n25_β:
jmp xchain955_n27_α
xchain955_n26_α:
bb456_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1208]
 mov qword ptr [r12 + 1208], 1
 mov rax, qword ptr [rip + .Lx1035_0]
 mov qword ptr [r12 + 1216], rax
 jmp .Lx1035_1
.Lx1035_0:
 .quad .Lx1035_0_s
.Lx1035_0_s:
 .string "s <<:= \"abc\" ----> "
.Lx1035_1:
# marshal arg1 = nested producer-box slot [r12+1120] -> [r12+1224]
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 1224], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 1232], rax
  .section .rodata
  .Lrkfn1036: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1036]
 lea rsi, [r12 + 1208]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1192], rax
 mov qword ptr [r12 + 1200], rdx
 cmp eax, 99
 je xchain955_n27_α
 jmp xchain955_n27_α
 xchain955_n26_β:
 jmp xchain955_n27_α
xchain955_n27_α:
# IR_LIT_S
bb457_α:
 mov qword ptr [r12 + 1240], 1
 mov rax, qword ptr [rip + .Lx1037_0]
 mov qword ptr [r12 + 1248], rax
 jmp xchain955_n28_α
 xchain955_n27_β:
 jmp xchain955_n30_α
.Lx1037_0:
 .quad .Lx1037_0_s
.Lx1037_0_s:
 .string "s ----> "
xchain955_n28_α:
xaltg1038_a0_start:
bb458_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+1296]
   lea rdi, [rip + .S1]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1296], rax
 mov qword ptr [r12 + 1304], rdx
  .section .rodata
  .Lrkfn1040: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1040]
 lea rsi, [r12 + 1296]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 cmp eax, 99
 je xaltg1038_a1_start
 jmp xaltg1038_a0_succ
 xaltg1038_a0_beta:
 jmp xaltg1038_a1_start
xaltg1038_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1280]
 mov qword ptr [r12 + 1256], rax
 mov rax, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], 1
jmp xchain955_n29_α
xaltg1038_a1_start:
# IR_LIT_S
bb459_α:
 mov qword ptr [r12 + 1312], 1
 mov rax, qword ptr [rip + .Lx1042_0]
 mov qword ptr [r12 + 1320], rax
 jmp xaltg1038_a1_succ
 xaltg1038_a1_beta:
 jmp xchain955_n30_α
.Lx1042_0:
 .quad .Lx1042_0_s
.Lx1042_0_s:
 .string "none"
xaltg1038_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1312]
 mov qword ptr [r12 + 1256], rax
 mov rax, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], 1
jmp xchain955_n29_α
xchain955_n28_β:
jmp xchain955_n30_α
xchain955_n29_α:
bb460_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1344]
 mov qword ptr [r12 + 1344], 1
 mov rax, qword ptr [rip + .Lx1044_0]
 mov qword ptr [r12 + 1352], rax
 jmp .Lx1044_1
.Lx1044_0:
 .quad .Lx1044_0_s
.Lx1044_0_s:
 .string "s ----> "
.Lx1044_1:
# marshal arg1 = nested producer-box slot [r12+1256] -> [r12+1360]
 mov rax, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 1360], rax
 mov rax, qword ptr [r12 + 1264]
 mov qword ptr [r12 + 1368], rax
  .section .rodata
  .Lrkfn1045: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1045]
 lea rsi, [r12 + 1344]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 cmp eax, 99
 je xchain955_n30_α
 jmp xchain955_n30_α
 xchain955_n29_β:
 jmp xchain955_n30_α
xchain955_n30_α:
# IR_LIT_S
bb461_α:
 mov qword ptr [r12 + 1376], 1
 mov rax, qword ptr [rip + .Lx1046_0]
 mov qword ptr [r12 + 1384], rax
 jmp xchain955_n31_α
 xchain955_n30_β:
 jmp proc_p11_ω
.Lx1046_0:
 .quad .Lx1046_0_s
.Lx1046_0_s:
 .string "s := \"x\" ----> "
xchain955_n31_α:
xaltg1047_a0_start:
bb462_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1432]
 mov qword ptr [r12 + 1432], 1
 mov rax, qword ptr [rip + .Lx1048_0]
 mov qword ptr [r12 + 1440], rax
 jmp .Lx1048_1
.Lx1048_0:
 .quad .Lx1048_0_s
.Lx1048_0_s:
 .string "x"
.Lx1048_1:
  .section .rodata
  .Lrkfn1049: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1049]
 lea rsi, [r12 + 1432]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1416], rax
 mov qword ptr [r12 + 1424], rdx
 cmp eax, 99
 je xaltg1047_a1_start
 jmp xaltg1047_a0_succ
 xaltg1047_a0_beta:
 jmp xaltg1047_a1_start
xaltg1047_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1416]
 mov qword ptr [r12 + 1392], rax
 mov rax, qword ptr [r12 + 1424]
 mov qword ptr [r12 + 1400], rax
 mov qword ptr [r12 + 1408], 1
jmp xchain955_n32_α
xaltg1047_a1_start:
# IR_LIT_S
bb463_α:
 mov qword ptr [r12 + 1448], 1
 mov rax, qword ptr [rip + .Lx1051_0]
 mov qword ptr [r12 + 1456], rax
 jmp xaltg1047_a1_succ
 xaltg1047_a1_beta:
 jmp proc_p11_ω
.Lx1051_0:
 .quad .Lx1051_0_s
.Lx1051_0_s:
 .string "none"
xaltg1047_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1448]
 mov qword ptr [r12 + 1392], rax
 mov rax, qword ptr [r12 + 1456]
 mov qword ptr [r12 + 1400], rax
 mov qword ptr [r12 + 1408], 1
jmp xchain955_n32_α
xchain955_n31_β:
jmp proc_p11_ω
xchain955_n32_α:
bb464_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1480]
 mov qword ptr [r12 + 1480], 1
 mov rax, qword ptr [rip + .Lx1053_0]
 mov qword ptr [r12 + 1488], rax
 jmp .Lx1053_1
.Lx1053_0:
 .quad .Lx1053_0_s
.Lx1053_0_s:
 .string "s := \"x\" ----> "
.Lx1053_1:
# marshal arg1 = nested producer-box slot [r12+1392] -> [r12+1496]
 mov rax, qword ptr [r12 + 1392]
 mov qword ptr [r12 + 1496], rax
 mov rax, qword ptr [r12 + 1400]
 mov qword ptr [r12 + 1504], rax
  .section .rodata
  .Lrkfn1054: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1054]
 lea rsi, [r12 + 1480]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1464], rax
 mov qword ptr [r12 + 1472], rdx
 cmp eax, 99
 je proc_p11_ω
 jmp proc_p11_γ
 xchain955_n32_β:
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
xchain1055_n0_α:
# IR_LIT_S
bb465_α:
 mov qword ptr [r12 + 16], 1
 mov rax, qword ptr [rip + .Lx1056_0]
 mov qword ptr [r12 + 24], rax
 jmp xchain1055_n1_α
 xchain1055_n0_β:
 jmp xchain1055_n3_α
.Lx1056_0:
 .quad .Lx1056_0_s
.Lx1056_0_s:
 .string "s ~==:= \"x\" ----> "
xchain1055_n1_α:
xaltg1057_a0_start:
bb466_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+72]
   lea rdi, [rip + .S1]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 72], rax
 mov qword ptr [r12 + 80], rdx
  .section .rodata
  .Lrkfn1059: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1059]
 lea rsi, [r12 + 72]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 56], rax
 mov qword ptr [r12 + 64], rdx
 cmp eax, 99
 je xaltg1057_a1_start
 jmp xaltg1057_a0_succ
 xaltg1057_a0_beta:
 jmp xaltg1057_a1_start
xaltg1057_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain1055_n2_α
xaltg1057_a1_start:
# IR_LIT_S
bb467_α:
 mov qword ptr [r12 + 88], 1
 mov rax, qword ptr [rip + .Lx1061_0]
 mov qword ptr [r12 + 96], rax
 jmp xaltg1057_a1_succ
 xaltg1057_a1_beta:
 jmp xchain1055_n3_α
.Lx1061_0:
 .quad .Lx1061_0_s
.Lx1061_0_s:
 .string "none"
xaltg1057_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain1055_n2_α
xchain1055_n1_β:
jmp xchain1055_n3_α
xchain1055_n2_α:
bb468_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+120]
 mov qword ptr [r12 + 120], 1
 mov rax, qword ptr [rip + .Lx1063_0]
 mov qword ptr [r12 + 128], rax
 jmp .Lx1063_1
.Lx1063_0:
 .quad .Lx1063_0_s
.Lx1063_0_s:
 .string "s ~==:= \"x\" ----> "
.Lx1063_1:
# marshal arg1 = nested producer-box slot [r12+32] -> [r12+136]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 136], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 144], rax
  .section .rodata
  .Lrkfn1064: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1064]
 lea rsi, [r12 + 120]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 104], rax
 mov qword ptr [r12 + 112], rdx
 cmp eax, 99
 je xchain1055_n3_α
 jmp xchain1055_n3_α
 xchain1055_n2_β:
 jmp xchain1055_n3_α
xchain1055_n3_α:
# IR_LIT_S
bb469_α:
 mov qword ptr [r12 + 152], 1
 mov rax, qword ptr [rip + .Lx1065_0]
 mov qword ptr [r12 + 160], rax
 jmp xchain1055_n4_α
 xchain1055_n3_β:
 jmp xchain1055_n6_α
.Lx1065_0:
 .quad .Lx1065_0_s
.Lx1065_0_s:
 .string "s ----> "
xchain1055_n4_α:
xaltg1066_a0_start:
bb470_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+208]
   lea rdi, [rip + .S1]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
  .section .rodata
  .Lrkfn1068: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1068]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xaltg1066_a1_start
 jmp xaltg1066_a0_succ
 xaltg1066_a0_beta:
 jmp xaltg1066_a1_start
xaltg1066_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 168], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], 1
jmp xchain1055_n5_α
xaltg1066_a1_start:
# IR_LIT_S
bb471_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx1070_0]
 mov qword ptr [r12 + 232], rax
 jmp xaltg1066_a1_succ
 xaltg1066_a1_beta:
 jmp xchain1055_n6_α
.Lx1070_0:
 .quad .Lx1070_0_s
.Lx1070_0_s:
 .string "none"
xaltg1066_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 168], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], 1
jmp xchain1055_n5_α
xchain1055_n4_β:
jmp xchain1055_n6_α
xchain1055_n5_α:
bb472_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+256]
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx1072_0]
 mov qword ptr [r12 + 264], rax
 jmp .Lx1072_1
.Lx1072_0:
 .quad .Lx1072_0_s
.Lx1072_0_s:
 .string "s ----> "
.Lx1072_1:
# marshal arg1 = nested producer-box slot [r12+168] -> [r12+272]
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 280], rax
  .section .rodata
  .Lrkfn1073: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1073]
 lea rsi, [r12 + 256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain1055_n6_α
 jmp xchain1055_n6_α
 xchain1055_n5_β:
 jmp xchain1055_n6_α
xchain1055_n6_α:
# IR_LIT_S
bb473_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx1074_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain1055_n7_α
 xchain1055_n6_β:
 jmp xchain1055_n9_α
.Lx1074_0:
 .quad .Lx1074_0_s
.Lx1074_0_s:
 .string "s := \"x\" ----> "
xchain1055_n7_α:
xaltg1075_a0_start:
bb474_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+344]
 mov qword ptr [r12 + 344], 1
 mov rax, qword ptr [rip + .Lx1076_0]
 mov qword ptr [r12 + 352], rax
 jmp .Lx1076_1
.Lx1076_0:
 .quad .Lx1076_0_s
.Lx1076_0_s:
 .string "x"
.Lx1076_1:
  .section .rodata
  .Lrkfn1077: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1077]
 lea rsi, [r12 + 344]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 328], rax
 mov qword ptr [r12 + 336], rdx
 cmp eax, 99
 je xaltg1075_a1_start
 jmp xaltg1075_a0_succ
 xaltg1075_a0_beta:
 jmp xaltg1075_a1_start
xaltg1075_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 312], rax
 mov qword ptr [r12 + 320], 1
jmp xchain1055_n8_α
xaltg1075_a1_start:
# IR_LIT_S
bb475_α:
 mov qword ptr [r12 + 360], 1
 mov rax, qword ptr [rip + .Lx1079_0]
 mov qword ptr [r12 + 368], rax
 jmp xaltg1075_a1_succ
 xaltg1075_a1_beta:
 jmp xchain1055_n9_α
.Lx1079_0:
 .quad .Lx1079_0_s
.Lx1079_0_s:
 .string "none"
xaltg1075_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 312], rax
 mov qword ptr [r12 + 320], 1
jmp xchain1055_n8_α
xchain1055_n7_β:
jmp xchain1055_n9_α
xchain1055_n8_α:
bb476_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+392]
 mov qword ptr [r12 + 392], 1
 mov rax, qword ptr [rip + .Lx1081_0]
 mov qword ptr [r12 + 400], rax
 jmp .Lx1081_1
.Lx1081_0:
 .quad .Lx1081_0_s
.Lx1081_0_s:
 .string "s := \"x\" ----> "
.Lx1081_1:
# marshal arg1 = nested producer-box slot [r12+304] -> [r12+408]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 408], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 416], rax
  .section .rodata
  .Lrkfn1082: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1082]
 lea rsi, [r12 + 392]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 376], rax
 mov qword ptr [r12 + 384], rdx
 cmp eax, 99
 je xchain1055_n9_α
 jmp xchain1055_n9_α
 xchain1055_n8_β:
 jmp xchain1055_n9_α
xchain1055_n9_α:
# IR_LIT_S
bb477_α:
 mov qword ptr [r12 + 424], 1
 mov rax, qword ptr [rip + .Lx1083_0]
 mov qword ptr [r12 + 432], rax
 jmp xchain1055_n10_α
 xchain1055_n9_β:
 jmp xchain1055_n12_α
.Lx1083_0:
 .quad .Lx1083_0_s
.Lx1083_0_s:
 .string "s ~==:= \"xx\" ----> "
xchain1055_n10_α:
xaltg1084_a0_start:
bb478_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+480]
   lea rdi, [rip + .S1]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
  .section .rodata
  .Lrkfn1086: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1086]
 lea rsi, [r12 + 480]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 cmp eax, 99
 je xaltg1084_a1_start
 jmp xaltg1084_a0_succ
 xaltg1084_a0_beta:
 jmp xaltg1084_a1_start
xaltg1084_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 440], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], 1
jmp xchain1055_n11_α
xaltg1084_a1_start:
# IR_LIT_S
bb479_α:
 mov qword ptr [r12 + 496], 1
 mov rax, qword ptr [rip + .Lx1088_0]
 mov qword ptr [r12 + 504], rax
 jmp xaltg1084_a1_succ
 xaltg1084_a1_beta:
 jmp xchain1055_n12_α
.Lx1088_0:
 .quad .Lx1088_0_s
.Lx1088_0_s:
 .string "none"
xaltg1084_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 440], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], 1
jmp xchain1055_n11_α
xchain1055_n10_β:
jmp xchain1055_n12_α
xchain1055_n11_α:
bb480_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+528]
 mov qword ptr [r12 + 528], 1
 mov rax, qword ptr [rip + .Lx1090_0]
 mov qword ptr [r12 + 536], rax
 jmp .Lx1090_1
.Lx1090_0:
 .quad .Lx1090_0_s
.Lx1090_0_s:
 .string "s ~==:= \"xx\" ----> "
.Lx1090_1:
# marshal arg1 = nested producer-box slot [r12+440] -> [r12+544]
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 552], rax
  .section .rodata
  .Lrkfn1091: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1091]
 lea rsi, [r12 + 528]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je xchain1055_n12_α
 jmp xchain1055_n12_α
 xchain1055_n11_β:
 jmp xchain1055_n12_α
xchain1055_n12_α:
# IR_LIT_S
bb481_α:
 mov qword ptr [r12 + 560], 1
 mov rax, qword ptr [rip + .Lx1092_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain1055_n13_α
 xchain1055_n12_β:
 jmp xchain1055_n15_α
.Lx1092_0:
 .quad .Lx1092_0_s
.Lx1092_0_s:
 .string "s ----> "
xchain1055_n13_α:
xaltg1093_a0_start:
bb482_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+616]
   lea rdi, [rip + .S1]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 616], rax
 mov qword ptr [r12 + 624], rdx
  .section .rodata
  .Lrkfn1095: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1095]
 lea rsi, [r12 + 616]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 600], rax
 mov qword ptr [r12 + 608], rdx
 cmp eax, 99
 je xaltg1093_a1_start
 jmp xaltg1093_a0_succ
 xaltg1093_a0_beta:
 jmp xaltg1093_a1_start
xaltg1093_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 584], rax
 mov qword ptr [r12 + 592], 1
jmp xchain1055_n14_α
xaltg1093_a1_start:
# IR_LIT_S
bb483_α:
 mov qword ptr [r12 + 632], 1
 mov rax, qword ptr [rip + .Lx1097_0]
 mov qword ptr [r12 + 640], rax
 jmp xaltg1093_a1_succ
 xaltg1093_a1_beta:
 jmp xchain1055_n15_α
.Lx1097_0:
 .quad .Lx1097_0_s
.Lx1097_0_s:
 .string "none"
xaltg1093_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 584], rax
 mov qword ptr [r12 + 592], 1
jmp xchain1055_n14_α
xchain1055_n13_β:
jmp xchain1055_n15_α
xchain1055_n14_α:
bb484_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+664]
 mov qword ptr [r12 + 664], 1
 mov rax, qword ptr [rip + .Lx1099_0]
 mov qword ptr [r12 + 672], rax
 jmp .Lx1099_1
.Lx1099_0:
 .quad .Lx1099_0_s
.Lx1099_0_s:
 .string "s ----> "
.Lx1099_1:
# marshal arg1 = nested producer-box slot [r12+576] -> [r12+680]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 680], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 688], rax
  .section .rodata
  .Lrkfn1100: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1100]
 lea rsi, [r12 + 664]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 648], rax
 mov qword ptr [r12 + 656], rdx
 cmp eax, 99
 je xchain1055_n15_α
 jmp xchain1055_n15_α
 xchain1055_n14_β:
 jmp xchain1055_n15_α
xchain1055_n15_α:
# IR_LIT_S
bb485_α:
 mov qword ptr [r12 + 696], 1
 mov rax, qword ptr [rip + .Lx1101_0]
 mov qword ptr [r12 + 704], rax
 jmp xchain1055_n16_α
 xchain1055_n15_β:
 jmp xchain1055_n18_α
.Lx1101_0:
 .quad .Lx1101_0_s
.Lx1101_0_s:
 .string "s := \"x\" ----> "
xchain1055_n16_α:
xaltg1102_a0_start:
bb486_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+752]
 mov qword ptr [r12 + 752], 1
 mov rax, qword ptr [rip + .Lx1103_0]
 mov qword ptr [r12 + 760], rax
 jmp .Lx1103_1
.Lx1103_0:
 .quad .Lx1103_0_s
.Lx1103_0_s:
 .string "x"
.Lx1103_1:
  .section .rodata
  .Lrkfn1104: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1104]
 lea rsi, [r12 + 752]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 cmp eax, 99
 je xaltg1102_a1_start
 jmp xaltg1102_a0_succ
 xaltg1102_a0_beta:
 jmp xaltg1102_a1_start
xaltg1102_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 712], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], 1
jmp xchain1055_n17_α
xaltg1102_a1_start:
# IR_LIT_S
bb487_α:
 mov qword ptr [r12 + 768], 1
 mov rax, qword ptr [rip + .Lx1106_0]
 mov qword ptr [r12 + 776], rax
 jmp xaltg1102_a1_succ
 xaltg1102_a1_beta:
 jmp xchain1055_n18_α
.Lx1106_0:
 .quad .Lx1106_0_s
.Lx1106_0_s:
 .string "none"
xaltg1102_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 712], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], 1
jmp xchain1055_n17_α
xchain1055_n16_β:
jmp xchain1055_n18_α
xchain1055_n17_α:
bb488_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+800]
 mov qword ptr [r12 + 800], 1
 mov rax, qword ptr [rip + .Lx1108_0]
 mov qword ptr [r12 + 808], rax
 jmp .Lx1108_1
.Lx1108_0:
 .quad .Lx1108_0_s
.Lx1108_0_s:
 .string "s := \"x\" ----> "
.Lx1108_1:
# marshal arg1 = nested producer-box slot [r12+712] -> [r12+816]
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 824], rax
  .section .rodata
  .Lrkfn1109: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1109]
 lea rsi, [r12 + 800]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 cmp eax, 99
 je xchain1055_n18_α
 jmp xchain1055_n18_α
 xchain1055_n17_β:
 jmp xchain1055_n18_α
xchain1055_n18_α:
# IR_LIT_S
bb489_α:
 mov qword ptr [r12 + 832], 1
 mov rax, qword ptr [rip + .Lx1110_0]
 mov qword ptr [r12 + 840], rax
 jmp xchain1055_n19_α
 xchain1055_n18_β:
 jmp xchain1055_n21_α
.Lx1110_0:
 .quad .Lx1110_0_s
.Lx1110_0_s:
 .string "s ~==:= \"X\" ----> "
xchain1055_n19_α:
xaltg1111_a0_start:
bb490_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+888]
   lea rdi, [rip + .S1]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 888], rax
 mov qword ptr [r12 + 896], rdx
  .section .rodata
  .Lrkfn1113: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1113]
 lea rsi, [r12 + 888]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 872], rax
 mov qword ptr [r12 + 880], rdx
 cmp eax, 99
 je xaltg1111_a1_start
 jmp xaltg1111_a0_succ
 xaltg1111_a0_beta:
 jmp xaltg1111_a1_start
xaltg1111_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 856], rax
 mov qword ptr [r12 + 864], 1
jmp xchain1055_n20_α
xaltg1111_a1_start:
# IR_LIT_S
bb491_α:
 mov qword ptr [r12 + 904], 1
 mov rax, qword ptr [rip + .Lx1115_0]
 mov qword ptr [r12 + 912], rax
 jmp xaltg1111_a1_succ
 xaltg1111_a1_beta:
 jmp xchain1055_n21_α
.Lx1115_0:
 .quad .Lx1115_0_s
.Lx1115_0_s:
 .string "none"
xaltg1111_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 904]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 912]
 mov qword ptr [r12 + 856], rax
 mov qword ptr [r12 + 864], 1
jmp xchain1055_n20_α
xchain1055_n19_β:
jmp xchain1055_n21_α
xchain1055_n20_α:
bb492_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+936]
 mov qword ptr [r12 + 936], 1
 mov rax, qword ptr [rip + .Lx1117_0]
 mov qword ptr [r12 + 944], rax
 jmp .Lx1117_1
.Lx1117_0:
 .quad .Lx1117_0_s
.Lx1117_0_s:
 .string "s ~==:= \"X\" ----> "
.Lx1117_1:
# marshal arg1 = nested producer-box slot [r12+848] -> [r12+952]
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 952], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 960], rax
  .section .rodata
  .Lrkfn1118: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1118]
 lea rsi, [r12 + 936]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 920], rax
 mov qword ptr [r12 + 928], rdx
 cmp eax, 99
 je xchain1055_n21_α
 jmp xchain1055_n21_α
 xchain1055_n20_β:
 jmp xchain1055_n21_α
xchain1055_n21_α:
# IR_LIT_S
bb493_α:
 mov qword ptr [r12 + 968], 1
 mov rax, qword ptr [rip + .Lx1119_0]
 mov qword ptr [r12 + 976], rax
 jmp xchain1055_n22_α
 xchain1055_n21_β:
 jmp xchain1055_n24_α
.Lx1119_0:
 .quad .Lx1119_0_s
.Lx1119_0_s:
 .string "s ----> "
xchain1055_n22_α:
xaltg1120_a0_start:
bb494_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+1024]
   lea rdi, [rip + .S1]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
  .section .rodata
  .Lrkfn1122: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1122]
 lea rsi, [r12 + 1024]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 cmp eax, 99
 je xaltg1120_a1_start
 jmp xaltg1120_a0_succ
 xaltg1120_a0_beta:
 jmp xaltg1120_a1_start
xaltg1120_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1008]
 mov qword ptr [r12 + 984], rax
 mov rax, qword ptr [r12 + 1016]
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], 1
jmp xchain1055_n23_α
xaltg1120_a1_start:
# IR_LIT_S
bb495_α:
 mov qword ptr [r12 + 1040], 1
 mov rax, qword ptr [rip + .Lx1124_0]
 mov qword ptr [r12 + 1048], rax
 jmp xaltg1120_a1_succ
 xaltg1120_a1_beta:
 jmp xchain1055_n24_α
.Lx1124_0:
 .quad .Lx1124_0_s
.Lx1124_0_s:
 .string "none"
xaltg1120_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1040]
 mov qword ptr [r12 + 984], rax
 mov rax, qword ptr [r12 + 1048]
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], 1
jmp xchain1055_n23_α
xchain1055_n22_β:
jmp xchain1055_n24_α
xchain1055_n23_α:
bb496_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1072]
 mov qword ptr [r12 + 1072], 1
 mov rax, qword ptr [rip + .Lx1126_0]
 mov qword ptr [r12 + 1080], rax
 jmp .Lx1126_1
.Lx1126_0:
 .quad .Lx1126_0_s
.Lx1126_0_s:
 .string "s ----> "
.Lx1126_1:
# marshal arg1 = nested producer-box slot [r12+984] -> [r12+1088]
 mov rax, qword ptr [r12 + 984]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 992]
 mov qword ptr [r12 + 1096], rax
  .section .rodata
  .Lrkfn1127: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1127]
 lea rsi, [r12 + 1072]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je xchain1055_n24_α
 jmp xchain1055_n24_α
 xchain1055_n23_β:
 jmp xchain1055_n24_α
xchain1055_n24_α:
# IR_LIT_S
bb497_α:
 mov qword ptr [r12 + 1104], 1
 mov rax, qword ptr [rip + .Lx1128_0]
 mov qword ptr [r12 + 1112], rax
 jmp xchain1055_n25_α
 xchain1055_n24_β:
 jmp xchain1055_n27_α
.Lx1128_0:
 .quad .Lx1128_0_s
.Lx1128_0_s:
 .string "s := \"x\" ----> "
xchain1055_n25_α:
xaltg1129_a0_start:
bb498_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1160]
 mov qword ptr [r12 + 1160], 1
 mov rax, qword ptr [rip + .Lx1130_0]
 mov qword ptr [r12 + 1168], rax
 jmp .Lx1130_1
.Lx1130_0:
 .quad .Lx1130_0_s
.Lx1130_0_s:
 .string "x"
.Lx1130_1:
  .section .rodata
  .Lrkfn1131: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1131]
 lea rsi, [r12 + 1160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1144], rax
 mov qword ptr [r12 + 1152], rdx
 cmp eax, 99
 je xaltg1129_a1_start
 jmp xaltg1129_a0_succ
 xaltg1129_a0_beta:
 jmp xaltg1129_a1_start
xaltg1129_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 1152]
 mov qword ptr [r12 + 1128], rax
 mov qword ptr [r12 + 1136], 1
jmp xchain1055_n26_α
xaltg1129_a1_start:
# IR_LIT_S
bb499_α:
 mov qword ptr [r12 + 1176], 1
 mov rax, qword ptr [rip + .Lx1133_0]
 mov qword ptr [r12 + 1184], rax
 jmp xaltg1129_a1_succ
 xaltg1129_a1_beta:
 jmp xchain1055_n27_α
.Lx1133_0:
 .quad .Lx1133_0_s
.Lx1133_0_s:
 .string "none"
xaltg1129_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1176]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 1184]
 mov qword ptr [r12 + 1128], rax
 mov qword ptr [r12 + 1136], 1
jmp xchain1055_n26_α
xchain1055_n25_β:
jmp xchain1055_n27_α
xchain1055_n26_α:
bb500_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1208]
 mov qword ptr [r12 + 1208], 1
 mov rax, qword ptr [rip + .Lx1135_0]
 mov qword ptr [r12 + 1216], rax
 jmp .Lx1135_1
.Lx1135_0:
 .quad .Lx1135_0_s
.Lx1135_0_s:
 .string "s := \"x\" ----> "
.Lx1135_1:
# marshal arg1 = nested producer-box slot [r12+1120] -> [r12+1224]
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 1224], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 1232], rax
  .section .rodata
  .Lrkfn1136: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1136]
 lea rsi, [r12 + 1208]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1192], rax
 mov qword ptr [r12 + 1200], rdx
 cmp eax, 99
 je xchain1055_n27_α
 jmp xchain1055_n27_α
 xchain1055_n26_β:
 jmp xchain1055_n27_α
xchain1055_n27_α:
# IR_LIT_S
bb501_α:
 mov qword ptr [r12 + 1240], 1
 mov rax, qword ptr [rip + .Lx1137_0]
 mov qword ptr [r12 + 1248], rax
 jmp xchain1055_n28_α
 xchain1055_n27_β:
 jmp xchain1055_n30_α
.Lx1137_0:
 .quad .Lx1137_0_s
.Lx1137_0_s:
 .string "s ~==:= \"abc\" ----> "
xchain1055_n28_α:
xaltg1138_a0_start:
bb502_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+1296]
   lea rdi, [rip + .S1]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1296], rax
 mov qword ptr [r12 + 1304], rdx
  .section .rodata
  .Lrkfn1140: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1140]
 lea rsi, [r12 + 1296]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 cmp eax, 99
 je xaltg1138_a1_start
 jmp xaltg1138_a0_succ
 xaltg1138_a0_beta:
 jmp xaltg1138_a1_start
xaltg1138_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1280]
 mov qword ptr [r12 + 1256], rax
 mov rax, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], 1
jmp xchain1055_n29_α
xaltg1138_a1_start:
# IR_LIT_S
bb503_α:
 mov qword ptr [r12 + 1312], 1
 mov rax, qword ptr [rip + .Lx1142_0]
 mov qword ptr [r12 + 1320], rax
 jmp xaltg1138_a1_succ
 xaltg1138_a1_beta:
 jmp xchain1055_n30_α
.Lx1142_0:
 .quad .Lx1142_0_s
.Lx1142_0_s:
 .string "none"
xaltg1138_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1312]
 mov qword ptr [r12 + 1256], rax
 mov rax, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], 1
jmp xchain1055_n29_α
xchain1055_n28_β:
jmp xchain1055_n30_α
xchain1055_n29_α:
bb504_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1344]
 mov qword ptr [r12 + 1344], 1
 mov rax, qword ptr [rip + .Lx1144_0]
 mov qword ptr [r12 + 1352], rax
 jmp .Lx1144_1
.Lx1144_0:
 .quad .Lx1144_0_s
.Lx1144_0_s:
 .string "s ~==:= \"abc\" ----> "
.Lx1144_1:
# marshal arg1 = nested producer-box slot [r12+1256] -> [r12+1360]
 mov rax, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 1360], rax
 mov rax, qword ptr [r12 + 1264]
 mov qword ptr [r12 + 1368], rax
  .section .rodata
  .Lrkfn1145: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1145]
 lea rsi, [r12 + 1344]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 cmp eax, 99
 je xchain1055_n30_α
 jmp xchain1055_n30_α
 xchain1055_n29_β:
 jmp xchain1055_n30_α
xchain1055_n30_α:
# IR_LIT_S
bb505_α:
 mov qword ptr [r12 + 1376], 1
 mov rax, qword ptr [rip + .Lx1146_0]
 mov qword ptr [r12 + 1384], rax
 jmp xchain1055_n31_α
 xchain1055_n30_β:
 jmp proc_p12_ω
.Lx1146_0:
 .quad .Lx1146_0_s
.Lx1146_0_s:
 .string "s ----> "
xchain1055_n31_α:
xaltg1147_a0_start:
bb506_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = global VAR NV_GET -> [r12+1432]
   lea rdi, [rip + .S1]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1432], rax
 mov qword ptr [r12 + 1440], rdx
  .section .rodata
  .Lrkfn1149: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1149]
 lea rsi, [r12 + 1432]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1416], rax
 mov qword ptr [r12 + 1424], rdx
 cmp eax, 99
 je xaltg1147_a1_start
 jmp xaltg1147_a0_succ
 xaltg1147_a0_beta:
 jmp xaltg1147_a1_start
xaltg1147_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1416]
 mov qword ptr [r12 + 1392], rax
 mov rax, qword ptr [r12 + 1424]
 mov qword ptr [r12 + 1400], rax
 mov qword ptr [r12 + 1408], 1
jmp xchain1055_n32_α
xaltg1147_a1_start:
# IR_LIT_S
bb507_α:
 mov qword ptr [r12 + 1448], 1
 mov rax, qword ptr [rip + .Lx1151_0]
 mov qword ptr [r12 + 1456], rax
 jmp xaltg1147_a1_succ
 xaltg1147_a1_beta:
 jmp proc_p12_ω
.Lx1151_0:
 .quad .Lx1151_0_s
.Lx1151_0_s:
 .string "none"
xaltg1147_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1448]
 mov qword ptr [r12 + 1392], rax
 mov rax, qword ptr [r12 + 1456]
 mov qword ptr [r12 + 1400], rax
 mov qword ptr [r12 + 1408], 1
jmp xchain1055_n32_α
xchain1055_n31_β:
jmp proc_p12_ω
xchain1055_n32_α:
bb508_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1480]
 mov qword ptr [r12 + 1480], 1
 mov rax, qword ptr [rip + .Lx1153_0]
 mov qword ptr [r12 + 1488], rax
 jmp .Lx1153_1
.Lx1153_0:
 .quad .Lx1153_0_s
.Lx1153_0_s:
 .string "s ----> "
.Lx1153_1:
# marshal arg1 = nested producer-box slot [r12+1392] -> [r12+1496]
 mov rax, qword ptr [r12 + 1392]
 mov qword ptr [r12 + 1496], rax
 mov rax, qword ptr [r12 + 1400]
 mov qword ptr [r12 + 1504], rax
  .section .rodata
  .Lrkfn1154: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn1154]
 lea rsi, [r12 + 1480]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1464], rax
 mov qword ptr [r12 + 1472], rdx
 cmp eax, 99
 je proc_p12_ω
 jmp proc_p12_γ
 xchain1055_n32_β:
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
  .Lstartup_pname6: .string "p7"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname6]
  lea rsi, [rip + proc_p7_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname7: .string "p8"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname7]
  lea rsi, [rip + proc_p8_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname8: .string "p9"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname8]
  lea rsi, [rip + proc_p9_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname9: .string "p10"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname9]
  lea rsi, [rip + proc_p10_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname10: .string "p11"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname10]
  lea rsi, [rip + proc_p11_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname11: .string "p12"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname11]
  lea rsi, [rip + proc_p12_α]
  call rt_proc_set_fn@PLT
  pop rbp
  ret
  .section .rodata
  .Lgvan0: .string "i"
  .Lgvan1: .string "s"
  .Lgvan2: .string "c"
  .Lgvan3: .string "one"
  .Lgvan4: .string "two"
  .Lgvan5: .string "x"
  .align 8
__gva_names:
  .quad .Lgvan0
  .quad .Lgvan1
  .quad .Lgvan2
  .quad .Lgvan3
  .quad .Lgvan4
  .quad .Lgvan5
  .section .bss
  .align 16
__gva: .space 96, 0
  .section .text
  .intel_syntax noprefix
  .globl main
main:
  push rbp
  mov rbp, rsp
  call proc_startup
  lea rdi, [rip + __gva_names]
  lea rsi, [rip + __gva]
  mov edx, 6
  call gva_register@PLT
  mov rbx, rax
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
xchain1155_n0_α:
bb509_α:
  .section .rodata
  .Lcall509_pname: .string "p1"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall509_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 cmp eax, 99
 je xchain1155_n1_α
 jmp xchain1155_n1_α
xchain1155_n0_β:
 jmp xchain1155_n1_α
xchain1155_n1_α:
bb510_α:
  .section .rodata
  .Lcall510_pname: .string "p2"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall510_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je xchain1155_n2_α
 jmp xchain1155_n2_α
xchain1155_n1_β:
 jmp xchain1155_n2_α
xchain1155_n2_α:
bb511_α:
  .section .rodata
  .Lcall511_pname: .string "p3"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall511_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je xchain1155_n3_α
 jmp xchain1155_n3_α
xchain1155_n2_β:
 jmp xchain1155_n3_α
xchain1155_n3_α:
bb512_α:
  .section .rodata
  .Lcall512_pname: .string "p4"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall512_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je xchain1155_n4_α
 jmp xchain1155_n4_α
xchain1155_n3_β:
 jmp xchain1155_n4_α
xchain1155_n4_α:
bb513_α:
  .section .rodata
  .Lcall513_pname: .string "p5"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall513_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je xchain1155_n5_α
 jmp xchain1155_n5_α
xchain1155_n4_β:
 jmp xchain1155_n5_α
xchain1155_n5_α:
bb514_α:
  .section .rodata
  .Lcall514_pname: .string "p6"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall514_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je xchain1155_n6_α
 jmp xchain1155_n6_α
xchain1155_n5_β:
 jmp xchain1155_n6_α
xchain1155_n6_α:
bb515_α:
  .section .rodata
  .Lcall515_pname: .string "p7"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall515_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain1155_n7_α
 jmp xchain1155_n7_α
xchain1155_n6_β:
 jmp xchain1155_n7_α
xchain1155_n7_α:
bb516_α:
  .section .rodata
  .Lcall516_pname: .string "p8"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall516_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain1155_n8_α
 jmp xchain1155_n8_α
xchain1155_n7_β:
 jmp xchain1155_n8_α
xchain1155_n8_α:
bb517_α:
  .section .rodata
  .Lcall517_pname: .string "p9"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall517_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain1155_n9_α
 jmp xchain1155_n9_α
xchain1155_n8_β:
 jmp xchain1155_n9_α
xchain1155_n9_α:
bb518_α:
  .section .rodata
  .Lcall518_pname: .string "p10"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall518_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain1155_n10_α
 jmp xchain1155_n10_α
xchain1155_n9_β:
 jmp xchain1155_n10_α
xchain1155_n10_α:
bb519_α:
  .section .rodata
  .Lcall519_pname: .string "p11"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall519_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je xchain1155_n11_α
 jmp xchain1155_n11_α
xchain1155_n10_β:
 jmp xchain1155_n11_α
xchain1155_n11_α:
bb520_α:
  .section .rodata
  .Lcall520_pname: .string "p12"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall520_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp eax, 99
 je main_ω
 jmp main_γ
xchain1155_n11_β:
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
.section .rodata
.S0: .string "i"
.S1: .string "s"
.text
