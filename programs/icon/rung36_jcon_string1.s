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
 .string "abcde"
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
 jmp xchain0_n5_α
.Lx3_0:
 .quad .Lx3_0_s
.Lx3_0_s:
 .string "type "
xchain0_n3_α:
bb4_α:
# BOX IR_CALL type(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+0] -> [r12+96]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lrkfn5: .string "type"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn5]
 lea rsi, [r12 + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n5_α
xchain0_n4_α:
bb5_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+128]
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx6_0]
 mov qword ptr [r12 + 136], rax
 jmp .Lx6_1
.Lx6_0:
 .quad .Lx6_0_s
.Lx6_0_s:
 .string "type "
.Lx6_1:
# marshal arg0 = varslot [r12+0] -> [r12+160]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lcallfn7: .string "type"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn7]
 lea rsi, [r12 + 160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
  .section .rodata
  .Lrkfn8: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn8]
 lea rsi, [r12 + 128]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp xchain0_n5_α
xchain0_n5_α:
# IR_LIT_S
bb6_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx9_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain0_n6_α
 xchain0_n5_β:
 jmp xchain0_n9_α
.Lx9_0:
 .quad .Lx9_0_s
.Lx9_0_s:
 .string "*s  "
xchain0_n6_α:
# IR_VAR
bb7_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp xchain0_n9_α
xchain0_n7_α:
# IR_UNOP
bb8_α:
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 call rt_size_d@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain0_n8_α
 xchain0_n7_β:
 jmp xchain0_n9_α
xchain0_n8_α:
bb9_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+224]
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx13_0]
 mov qword ptr [r12 + 232], rax
 jmp .Lx13_1
.Lx13_0:
 .quad .Lx13_0_s
.Lx13_0_s:
 .string "*s  "
.Lx13_1:
# marshal arg1 = nested producer-box slot [r12+192] -> [r12+240]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 248], rax
  .section .rodata
  .Lrkfn14: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn14]
 lea rsi, [r12 + 224]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xchain0_n9_α
 jmp xchain0_n9_α
 xchain0_n8_β:
 jmp xchain0_n9_α
xchain0_n9_α:
# IR_LIT_S
bb10_α:
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx15_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain0_n10_α
 xchain0_n9_β:
 jmp xchain0_n12_α
.Lx15_0:
 .quad .Lx15_0_s
.Lx15_0_s:
 .string "s:  "
xchain0_n10_α:
# IR_VAR
bb11_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n11_α
 xchain0_n10_β:
 jmp xchain0_n12_α
xchain0_n11_α:
bb12_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+288]
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx18_0]
 mov qword ptr [r12 + 296], rax
 jmp .Lx18_1
.Lx18_0:
 .quad .Lx18_0_s
.Lx18_0_s:
 .string "s:  "
.Lx18_1:
# marshal arg1 = varslot [r12+0] -> [r12+304]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 312], rax
  .section .rodata
  .Lrkfn19: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn19]
 lea rsi, [r12 + 288]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je xchain0_n12_α
 jmp xchain0_n12_α
 xchain0_n11_β:
 jmp xchain0_n12_α
xchain0_n12_α:
# IR_LIT_S
bb13_α:
 mov qword ptr [r12 + 320], 1
 mov rax, qword ptr [rip + .Lx20_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain0_n13_α
 xchain0_n12_β:
 jmp xchain0_n15_α
.Lx20_0:
 .quad .Lx20_0_s
.Lx20_0_s:
 .string "s:  "
xchain0_n13_α:
bb14_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+0] -> [r12+352]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 360], rax
  .section .rodata
  .Lrkfn22: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn22]
 lea rsi, [r12 + 352]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 cmp eax, 99
 je xchain0_n15_α
 jmp xchain0_n14_α
 xchain0_n13_β:
 jmp xchain0_n15_α
xchain0_n14_α:
bb15_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+384]
 mov qword ptr [r12 + 384], 1
 mov rax, qword ptr [rip + .Lx23_0]
 mov qword ptr [r12 + 392], rax
 jmp .Lx23_1
.Lx23_0:
 .quad .Lx23_0_s
.Lx23_0_s:
 .string "s:  "
.Lx23_1:
# marshal arg0 = varslot [r12+0] -> [r12+416]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 424], rax
  .section .rodata
  .Lcallfn24: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn24]
 lea rsi, [r12 + 416]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
  .section .rodata
  .Lrkfn25: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn25]
 lea rsi, [r12 + 384]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je xchain0_n15_α
 jmp xchain0_n15_α
 xchain0_n14_β:
 jmp xchain0_n15_α
xchain0_n15_α:
xaltg26_a0_start:
# IR_LIT_S
bb16_α:
 mov qword ptr [r12 + 456], 1
 mov rax, qword ptr [rip + .Lx27_0]
 mov qword ptr [r12 + 464], rax
 jmp xaltg26_a0_succ
 xaltg26_a0_beta:
 jmp xaltg26_a1_start
.Lx27_0:
 .quad .Lx27_0_s
.Lx27_0_s:
 .string "!:  "
xaltg26_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 440], rax
 mov qword ptr [r12 + 448], 1
jmp xchain0_n16_α
xaltg26_a1_start:
# IR_VAR
bb17_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xbang29_iter_done
 xbang29_iter_β:
 jmp xaltg26_a2_start
xbang29_iter_done:
# IR_LIST_BANG
bb18_α:
 mov qword ptr [r12 + 472], 0
.Lx33_0:
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 472]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 cmp rax, 99
 je xaltg26_a2_start
 jmp xaltg26_a1_succ
 xaltg26_a1_beta:
 inc qword ptr [r12 + 472]
 jmp .Lx33_0
xaltg26_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 440], rax
 mov qword ptr [r12 + 448], 1
jmp xchain0_n16_α
xaltg26_a2_start:
# IR_LIT_S
bb19_α:
 mov qword ptr [r12 + 496], 1
 mov rax, qword ptr [rip + .Lx35_0]
 mov qword ptr [r12 + 504], rax
 jmp xaltg26_a2_succ
 xaltg26_a2_beta:
 jmp xchain0_n17_α
.Lx35_0:
 .quad .Lx35_0_s
.Lx35_0_s:
 .string "\n"
xaltg26_a2_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 440], rax
 mov qword ptr [r12 + 448], 1
jmp xchain0_n16_α
xchain0_n15_β:
jmp xchain0_n17_α
xchain0_n16_α:
bb20_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+432] -> [r12+528]
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 536], rax
  .section .rodata
  .Lrkfn38: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn38]
 lea rsi, [r12 + 528]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je xchain0_n109_β
 jmp xchain0_n15_β
 xchain0_n16_β:
 jmp xchain0_n109_β
xchain0_n17_α:
# IR_LIT_S
bb21_α:
 mov qword ptr [r12 + 544], 1
 mov rax, qword ptr [rip + .Lx40_0]
 mov qword ptr [r12 + 552], rax
 jmp xevery39_body_β
 xevery39_body_β:
 jmp xchain0_n18_α
.Lx40_0:
 .quad .Lx40_0_s
.Lx40_0_s:
 .string "!:  "
# IR_EVERY
 jmp xchain0_n18_α
 xchain0_n17_β:
 jmp xchain0_n18_α
xchain0_n18_α:
xaltg42_a0_start:
# IR_LIT_S
bb23_α:
 mov qword ptr [r12 + 584], 1
 mov rax, qword ptr [rip + .Lx43_0]
 mov qword ptr [r12 + 592], rax
 jmp xaltg42_a0_succ
 xaltg42_a0_beta:
 jmp xaltg42_a1_start
.Lx43_0:
 .quad .Lx43_0_s
.Lx43_0_s:
 .string "1:  "
xaltg42_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 568], rax
 mov qword ptr [r12 + 576], 1
jmp xchain0_n19_α
xaltg42_a1_start:
bb24_α:
# BOX IR_CALL [](...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+0] -> [r12+616]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 616], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 624], rax
# marshal arg1 = nested producer-box slot [r12+632] -> [r12+632]
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 632], rax
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 640], rax
  .section .rodata
  .Lrkfn46: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn46]
 lea rsi, [r12 + 616]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 600], rax
 mov qword ptr [r12 + 608], rdx
 cmp eax, 99
 je xaltg42_a2_start
 jmp xaltg42_a1_succ
 xaltg42_a1_beta:
 jmp xaltg42_a2_start
xaltg42_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 568], rax
 mov qword ptr [r12 + 576], 1
jmp xchain0_n19_α
xaltg42_a2_start:
# IR_LIT_S
bb25_α:
 mov qword ptr [r12 + 648], 1
 mov rax, qword ptr [rip + .Lx48_0]
 mov qword ptr [r12 + 656], rax
 jmp xaltg42_a2_succ
 xaltg42_a2_beta:
 jmp xchain0_n20_α
.Lx48_0:
 .quad .Lx48_0_s
.Lx48_0_s:
 .string "\n"
xaltg42_a2_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 568], rax
 mov qword ptr [r12 + 576], 1
jmp xchain0_n19_α
xchain0_n18_β:
jmp xchain0_n20_α
xchain0_n19_α:
bb26_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+560] -> [r12+680]
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 680], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 688], rax
  .section .rodata
  .Lrkfn51: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn51]
 lea rsi, [r12 + 680]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 664], rax
 mov qword ptr [r12 + 672], rdx
 cmp eax, 99
 je xchain0_n109_β
 jmp xchain0_n18_β
 xchain0_n19_β:
 jmp xchain0_n109_β
xchain0_n20_α:
# IR_LIT_S
bb27_α:
 mov qword ptr [r12 + 696], 1
 mov rax, qword ptr [rip + .Lx53_0]
 mov qword ptr [r12 + 704], rax
 jmp xevery52_body_β
 xevery52_body_β:
 jmp xchain0_n21_α
.Lx53_0:
 .quad .Lx53_0_s
.Lx53_0_s:
 .string "1:  "
# IR_EVERY
 jmp xchain0_n21_α
 xchain0_n20_β:
 jmp xchain0_n21_α
xchain0_n21_α:
xaltg55_a0_start:
# IR_LIT_S
bb29_α:
 mov qword ptr [r12 + 736], 1
 mov rax, qword ptr [rip + .Lx56_0]
 mov qword ptr [r12 + 744], rax
 jmp xaltg55_a0_succ
 xaltg55_a0_beta:
 jmp xaltg55_a1_start
.Lx56_0:
 .quad .Lx56_0_s
.Lx56_0_s:
 .string "0:  "
xaltg55_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 712], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], 1
jmp xchain0_n22_α
xaltg55_a1_start:
bb30_α:
# BOX IR_CALL [](...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+0] -> [r12+768]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 768], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 776], rax
# marshal arg1 = nested producer-box slot [r12+784] -> [r12+784]
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 792], rax
  .section .rodata
  .Lrkfn59: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn59]
 lea rsi, [r12 + 768]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 cmp eax, 99
 je xaltg55_a2_start
 jmp xaltg55_a1_succ
 xaltg55_a1_beta:
 jmp xaltg55_a2_start
xaltg55_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 712], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], 1
jmp xchain0_n22_α
xaltg55_a2_start:
# IR_LIT_S
bb31_α:
 mov qword ptr [r12 + 800], 1
 mov rax, qword ptr [rip + .Lx61_0]
 mov qword ptr [r12 + 808], rax
 jmp xaltg55_a2_succ
 xaltg55_a2_beta:
 jmp xchain0_n23_α
.Lx61_0:
 .quad .Lx61_0_s
.Lx61_0_s:
 .string "\n"
xaltg55_a2_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 800]
 mov qword ptr [r12 + 712], rax
 mov rax, qword ptr [r12 + 808]
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], 1
jmp xchain0_n22_α
xchain0_n21_β:
jmp xchain0_n23_α
xchain0_n22_α:
bb32_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+712] -> [r12+832]
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 840], rax
  .section .rodata
  .Lrkfn64: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn64]
 lea rsi, [r12 + 832]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 cmp eax, 99
 je xchain0_n109_β
 jmp xchain0_n21_β
 xchain0_n22_β:
 jmp xchain0_n109_β
xchain0_n23_α:
# IR_LIT_S
bb33_α:
 mov qword ptr [r12 + 848], 1
 mov rax, qword ptr [rip + .Lx66_0]
 mov qword ptr [r12 + 856], rax
 jmp xevery65_body_β
 xevery65_body_β:
 jmp xchain0_n24_α
.Lx66_0:
 .quad .Lx66_0_s
.Lx66_0_s:
 .string "0:  "
# IR_EVERY
 jmp xchain0_n24_α
 xchain0_n23_β:
 jmp xchain0_n24_α
xchain0_n24_α:
xaltg68_a0_start:
# IR_LIT_S
bb35_α:
 mov qword ptr [r12 + 888], 1
 mov rax, qword ptr [rip + .Lx69_0]
 mov qword ptr [r12 + 896], rax
 jmp xaltg68_a0_succ
 xaltg68_a0_beta:
 jmp xaltg68_a1_start
.Lx69_0:
 .quad .Lx69_0_s
.Lx69_0_s:
 .string "-5: "
xaltg68_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 888]
 mov qword ptr [r12 + 864], rax
 mov rax, qword ptr [r12 + 896]
 mov qword ptr [r12 + 872], rax
 mov qword ptr [r12 + 880], 1
jmp xchain0_n25_α
xaltg68_a1_start:
bb36_α:
# BOX IR_CALL [](...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+0] -> [r12+920]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 920], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 928], rax
# marshal arg1 = nested producer-box slot [r12+936] -> [r12+936]
 mov rax, qword ptr [r12 + 936]
 mov qword ptr [r12 + 936], rax
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 944], rax
  .section .rodata
  .Lrkfn72: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn72]
 lea rsi, [r12 + 920]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 904], rax
 mov qword ptr [r12 + 912], rdx
 cmp eax, 99
 je xaltg68_a2_start
 jmp xaltg68_a1_succ
 xaltg68_a1_beta:
 jmp xaltg68_a2_start
xaltg68_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 904]
 mov qword ptr [r12 + 864], rax
 mov rax, qword ptr [r12 + 912]
 mov qword ptr [r12 + 872], rax
 mov qword ptr [r12 + 880], 1
jmp xchain0_n25_α
xaltg68_a2_start:
# IR_LIT_S
bb37_α:
 mov qword ptr [r12 + 952], 1
 mov rax, qword ptr [rip + .Lx74_0]
 mov qword ptr [r12 + 960], rax
 jmp xaltg68_a2_succ
 xaltg68_a2_beta:
 jmp xchain0_n26_α
.Lx74_0:
 .quad .Lx74_0_s
.Lx74_0_s:
 .string "\n"
xaltg68_a2_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 864], rax
 mov rax, qword ptr [r12 + 960]
 mov qword ptr [r12 + 872], rax
 mov qword ptr [r12 + 880], 1
jmp xchain0_n25_α
xchain0_n24_β:
jmp xchain0_n26_α
xchain0_n25_α:
bb38_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+864] -> [r12+984]
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 984], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 992], rax
  .section .rodata
  .Lrkfn77: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn77]
 lea rsi, [r12 + 984]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 968], rax
 mov qword ptr [r12 + 976], rdx
 cmp eax, 99
 je xchain0_n109_β
 jmp xchain0_n24_β
 xchain0_n25_β:
 jmp xchain0_n109_β
xchain0_n26_α:
# IR_LIT_S
bb39_α:
 mov qword ptr [r12 + 1000], 1
 mov rax, qword ptr [rip + .Lx79_0]
 mov qword ptr [r12 + 1008], rax
 jmp xevery78_body_β
 xevery78_body_β:
 jmp xchain0_n27_α
.Lx79_0:
 .quad .Lx79_0_s
.Lx79_0_s:
 .string "-5: "
# IR_EVERY
 jmp xchain0_n27_α
 xchain0_n26_β:
 jmp xchain0_n27_α
xchain0_n27_α:
xaltg81_a0_start:
# IR_LIT_S
bb41_α:
 mov qword ptr [r12 + 1040], 1
 mov rax, qword ptr [rip + .Lx82_0]
 mov qword ptr [r12 + 1048], rax
 jmp xaltg81_a0_succ
 xaltg81_a0_beta:
 jmp xaltg81_a1_start
.Lx82_0:
 .quad .Lx82_0_s
.Lx82_0_s:
 .string "-7: "
xaltg81_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1040]
 mov qword ptr [r12 + 1016], rax
 mov rax, qword ptr [r12 + 1048]
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], 1
jmp xchain0_n28_α
xaltg81_a1_start:
bb42_α:
# BOX IR_CALL [](...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+0] -> [r12+1072]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 1080], rax
# marshal arg1 = nested producer-box slot [r12+1088] -> [r12+1088]
 mov rax, qword ptr [r12 + 1088]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 1096]
 mov qword ptr [r12 + 1096], rax
  .section .rodata
  .Lrkfn85: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn85]
 lea rsi, [r12 + 1072]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je xaltg81_a2_start
 jmp xaltg81_a1_succ
 xaltg81_a1_beta:
 jmp xaltg81_a2_start
xaltg81_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1056]
 mov qword ptr [r12 + 1016], rax
 mov rax, qword ptr [r12 + 1064]
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], 1
jmp xchain0_n28_α
xaltg81_a2_start:
# IR_LIT_S
bb43_α:
 mov qword ptr [r12 + 1104], 1
 mov rax, qword ptr [rip + .Lx87_0]
 mov qword ptr [r12 + 1112], rax
 jmp xaltg81_a2_succ
 xaltg81_a2_beta:
 jmp xchain0_n29_α
.Lx87_0:
 .quad .Lx87_0_s
.Lx87_0_s:
 .string "\n"
xaltg81_a2_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1104]
 mov qword ptr [r12 + 1016], rax
 mov rax, qword ptr [r12 + 1112]
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], 1
jmp xchain0_n28_α
xchain0_n27_β:
jmp xchain0_n29_α
xchain0_n28_α:
bb44_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+1016] -> [r12+1136]
 mov rax, qword ptr [r12 + 1016]
 mov qword ptr [r12 + 1136], rax
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 1144], rax
  .section .rodata
  .Lrkfn90: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn90]
 lea rsi, [r12 + 1136]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1120], rax
 mov qword ptr [r12 + 1128], rdx
 cmp eax, 99
 je xchain0_n109_β
 jmp xchain0_n27_β
 xchain0_n28_β:
 jmp xchain0_n109_β
xchain0_n29_α:
# IR_LIT_S
bb45_α:
 mov qword ptr [r12 + 1152], 1
 mov rax, qword ptr [rip + .Lx92_0]
 mov qword ptr [r12 + 1160], rax
 jmp xevery91_body_β
 xevery91_body_β:
 jmp xchain0_n30_α
.Lx92_0:
 .quad .Lx92_0_s
.Lx92_0_s:
 .string "-7: "
# IR_EVERY
 jmp xchain0_n30_α
 xchain0_n29_β:
 jmp xchain0_n30_α
xchain0_n30_α:
# IR_LIT_S
bb47_α:
 mov qword ptr [r12 + 1168], 1
 mov rax, qword ptr [rip + .Lx94_0]
 mov qword ptr [r12 + 1176], rax
 jmp xchain0_n31_α
 xchain0_n30_β:
 jmp xchain0_n34_α
.Lx94_0:
 .quad .Lx94_0_s
.Lx94_0_s:
 .string "s1: "
xchain0_n31_α:
# IR_VAR
bb48_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n32_α
 xchain0_n31_β:
 jmp xchain0_n34_α
xchain0_n32_α:
# IR_LIT_I
bb49_α:
 mov qword ptr [r12 + 1184], 6
 mov rax, qword ptr [rip + .Lx98_0]
 mov qword ptr [r12 + 1192], rax
 jmp xsec97_i1_done
 xsec97_i1_b:
 jmp xchain0_n34_α
.Lx98_0:
 .quad 1
xsec97_i1_done:
# IR_LIT_I
bb50_α:
 mov qword ptr [r12 + 1200], 6
 mov rax, qword ptr [rip + .Lx99_0]
 mov qword ptr [r12 + 1208], rax
 jmp xsec97_i2_done
 xsec97_i2_b:
 jmp xchain0_n34_α
.Lx99_0:
 .quad 6
xsec97_i2_done:
# IR_SECTION
bb51_α:
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 1184]
 mov rcx, qword ptr [r12 + 1192]
 mov r8, qword ptr [r12 + 1200]
 mov r9, qword ptr [r12 + 1208]
 call subscript_get2@PLT
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
 jmp xchain0_n33_α
 xchain0_n32_β:
 jmp xchain0_n34_α
xchain0_n33_α:
bb52_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+0] -> [r12+1248]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 1248], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 1256], rax
# marshal arg1 = nested producer-box slot [r12+1216] -> [r12+1264]
 mov rax, qword ptr [r12 + 1216]
 mov qword ptr [r12 + 1264], rax
 mov rax, qword ptr [r12 + 1224]
 mov qword ptr [r12 + 1272], rax
  .section .rodata
  .Lrkfn102: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn102]
 lea rsi, [r12 + 1248]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
 cmp eax, 99
 je xchain0_n34_α
 jmp xchain0_n34_α
 xchain0_n33_β:
 jmp xchain0_n34_α
xchain0_n34_α:
# IR_LIT_S
bb53_α:
 mov qword ptr [r12 + 1280], 1
 mov rax, qword ptr [rip + .Lx103_0]
 mov qword ptr [r12 + 1288], rax
 jmp xchain0_n35_α
 xchain0_n34_β:
 jmp xchain0_n38_α
.Lx103_0:
 .quad .Lx103_0_s
.Lx103_0_s:
 .string "s2: "
xchain0_n35_α:
# IR_VAR
bb54_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n36_α
 xchain0_n35_β:
 jmp xchain0_n38_α
xchain0_n36_α:
# IR_LIT_I
bb55_α:
 mov qword ptr [r12 + 1296], 6
 mov rax, qword ptr [rip + .Lx107_0]
 mov qword ptr [r12 + 1304], rax
 jmp xsec106_i1_done
 xsec106_i1_b:
 jmp xchain0_n38_α
.Lx107_0:
 .quad 1
xsec106_i1_done:
# IR_LIT_I
bb56_α:
 mov qword ptr [r12 + 1312], 6
 mov rax, qword ptr [rip + .Lx108_0]
 mov qword ptr [r12 + 1320], rax
 jmp xsec106_i2_done
 xsec106_i2_b:
 jmp xchain0_n38_α
.Lx108_0:
 .quad 5
xsec106_i2_done:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xchain0_n37_α:
bb58_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+0] -> [r12+1360]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 1360], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 1368], rax
# marshal arg1 = nested producer-box slot [r12+1328] -> [r12+1376]
 mov rax, qword ptr [r12 + 1328]
 mov qword ptr [r12 + 1376], rax
 mov rax, qword ptr [r12 + 1336]
 mov qword ptr [r12 + 1384], rax
  .section .rodata
  .Lrkfn111: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn111]
 lea rsi, [r12 + 1360]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1344], rax
 mov qword ptr [r12 + 1352], rdx
 cmp eax, 99
 je xchain0_n38_α
 jmp xchain0_n38_α
 xchain0_n37_β:
 jmp xchain0_n38_α
xchain0_n38_α:
# IR_LIT_S
bb59_α:
 mov qword ptr [r12 + 1392], 1
 mov rax, qword ptr [rip + .Lx112_0]
 mov qword ptr [r12 + 1400], rax
 jmp xchain0_n39_α
 xchain0_n38_β:
 jmp xchain0_n42_α
.Lx112_0:
 .quad .Lx112_0_s
.Lx112_0_s:
 .string "s3: "
xchain0_n39_α:
# IR_VAR
bb60_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n40_α
 xchain0_n39_β:
 jmp xchain0_n42_α
xchain0_n40_α:
# IR_LIT_I
bb61_α:
 mov qword ptr [r12 + 1408], 6
 mov rax, qword ptr [rip + .Lx116_0]
 mov qword ptr [r12 + 1416], rax
 jmp xsec115_i1_done
 xsec115_i1_b:
 jmp xchain0_n42_α
.Lx116_0:
 .quad 1
xsec115_i1_done:
# IR_LIT_I
bb62_α:
 mov qword ptr [r12 + 1424], 6
 mov rax, qword ptr [rip + .Lx117_0]
 mov qword ptr [r12 + 1432], rax
 jmp xsec115_i2_done
 xsec115_i2_b:
 jmp xchain0_n42_α
.Lx117_0:
 .quad 18446744073709551611
xsec115_i2_done:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xchain0_n41_α:
bb64_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+0] -> [r12+1472]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 1472], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 1480], rax
# marshal arg1 = nested producer-box slot [r12+1440] -> [r12+1488]
 mov rax, qword ptr [r12 + 1440]
 mov qword ptr [r12 + 1488], rax
 mov rax, qword ptr [r12 + 1448]
 mov qword ptr [r12 + 1496], rax
  .section .rodata
  .Lrkfn120: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn120]
 lea rsi, [r12 + 1472]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1456], rax
 mov qword ptr [r12 + 1464], rdx
 cmp eax, 99
 je xchain0_n42_α
 jmp xchain0_n42_α
 xchain0_n41_β:
 jmp xchain0_n42_α
xchain0_n42_α:
# IR_LIT_S
bb65_α:
 mov qword ptr [r12 + 1504], 1
 mov rax, qword ptr [rip + .Lx121_0]
 mov qword ptr [r12 + 1512], rax
 jmp xchain0_n43_α
 xchain0_n42_β:
 jmp xchain0_n46_α
.Lx121_0:
 .quad .Lx121_0_s
.Lx121_0_s:
 .string "s4: "
xchain0_n43_α:
# IR_VAR
bb66_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n44_α
 xchain0_n43_β:
 jmp xchain0_n46_α
xchain0_n44_α:
# IR_LIT_I
bb67_α:
 mov qword ptr [r12 + 1520], 6
 mov rax, qword ptr [rip + .Lx125_0]
 mov qword ptr [r12 + 1528], rax
 jmp xsec124_i1_done
 xsec124_i1_b:
 jmp xchain0_n46_α
.Lx125_0:
 .quad 1
xsec124_i1_done:
# IR_LIT_I
bb68_α:
 mov qword ptr [r12 + 1536], 6
 mov rax, qword ptr [rip + .Lx126_0]
 mov qword ptr [r12 + 1544], rax
 jmp xsec124_i2_done
 xsec124_i2_b:
 jmp xchain0_n46_α
.Lx126_0:
 .quad 0
xsec124_i2_done:
# IR_SECTION
bb69_α:
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 1520]
 mov rcx, qword ptr [r12 + 1528]
 mov r8, qword ptr [r12 + 1536]
 mov r9, qword ptr [r12 + 1544]
 call subscript_get2@PLT
 mov qword ptr [r12 + 1552], rax
 mov qword ptr [r12 + 1560], rdx
 jmp xchain0_n45_α
 xchain0_n44_β:
 jmp xchain0_n46_α
xchain0_n45_α:
bb70_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+0] -> [r12+1584]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 1584], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 1592], rax
# marshal arg1 = nested producer-box slot [r12+1552] -> [r12+1600]
 mov rax, qword ptr [r12 + 1552]
 mov qword ptr [r12 + 1600], rax
 mov rax, qword ptr [r12 + 1560]
 mov qword ptr [r12 + 1608], rax
  .section .rodata
  .Lrkfn129: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn129]
 lea rsi, [r12 + 1584]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1568], rax
 mov qword ptr [r12 + 1576], rdx
 cmp eax, 99
 je xchain0_n46_α
 jmp xchain0_n46_α
 xchain0_n45_β:
 jmp xchain0_n46_α
xchain0_n46_α:
# IR_LIT_S
bb71_α:
 mov qword ptr [r12 + 1616], 1
 mov rax, qword ptr [rip + .Lx130_0]
 mov qword ptr [r12 + 1624], rax
 jmp xchain0_n47_α
 xchain0_n46_β:
 jmp xchain0_n50_α
.Lx130_0:
 .quad .Lx130_0_s
.Lx130_0_s:
 .string "s5: "
xchain0_n47_α:
# IR_VAR
bb72_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n48_α
 xchain0_n47_β:
 jmp xchain0_n50_α
xchain0_n48_α:
# IR_LIT_I
bb73_α:
 mov qword ptr [r12 + 1632], 6
 mov rax, qword ptr [rip + .Lx134_0]
 mov qword ptr [r12 + 1640], rax
 jmp xsec133_i1_done
 xsec133_i1_b:
 jmp xchain0_n50_α
.Lx134_0:
 .quad 18446744073709551611
xsec133_i1_done:
# IR_LIT_I
bb74_α:
 mov qword ptr [r12 + 1648], 6
 mov rax, qword ptr [rip + .Lx135_0]
 mov qword ptr [r12 + 1656], rax
 jmp xsec133_i2_done
 xsec133_i2_b:
 jmp xchain0_n50_α
.Lx135_0:
 .quad 0
xsec133_i2_done:
# IR_SECTION
bb75_α:
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 1632]
 mov rcx, qword ptr [r12 + 1640]
 mov r8, qword ptr [r12 + 1648]
 mov r9, qword ptr [r12 + 1656]
 call subscript_get2@PLT
 mov qword ptr [r12 + 1664], rax
 mov qword ptr [r12 + 1672], rdx
 jmp xchain0_n49_α
 xchain0_n48_β:
 jmp xchain0_n50_α
xchain0_n49_α:
bb76_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+0] -> [r12+1696]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 1696], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 1704], rax
# marshal arg1 = nested producer-box slot [r12+1664] -> [r12+1712]
 mov rax, qword ptr [r12 + 1664]
 mov qword ptr [r12 + 1712], rax
 mov rax, qword ptr [r12 + 1672]
 mov qword ptr [r12 + 1720], rax
  .section .rodata
  .Lrkfn138: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn138]
 lea rsi, [r12 + 1696]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1680], rax
 mov qword ptr [r12 + 1688], rdx
 cmp eax, 99
 je xchain0_n50_α
 jmp xchain0_n50_α
 xchain0_n49_β:
 jmp xchain0_n50_α
xchain0_n50_α:
# IR_LIT_S
bb77_α:
 mov qword ptr [r12 + 1728], 1
 mov rax, qword ptr [rip + .Lx139_0]
 mov qword ptr [r12 + 1736], rax
 jmp xchain0_n51_α
 xchain0_n50_β:
 jmp xchain0_n54_α
.Lx139_0:
 .quad .Lx139_0_s
.Lx139_0_s:
 .string "s6: "
xchain0_n51_α:
# IR_VAR
bb78_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n52_α
 xchain0_n51_β:
 jmp xchain0_n54_α
xchain0_n52_α:
# IR_LIT_I
bb79_α:
 mov qword ptr [r12 + 1744], 6
 mov rax, qword ptr [rip + .Lx143_0]
 mov qword ptr [r12 + 1752], rax
 jmp xsec142_i1_done
 xsec142_i1_b:
 jmp xchain0_n54_α
.Lx143_0:
 .quad 6
xsec142_i1_done:
# IR_LIT_I
bb80_α:
 mov qword ptr [r12 + 1760], 6
 mov rax, qword ptr [rip + .Lx144_0]
 mov qword ptr [r12 + 1768], rax
 jmp xsec142_i2_done
 xsec142_i2_b:
 jmp xchain0_n54_α
.Lx144_0:
 .quad 1
xsec142_i2_done:
# IR_SECTION
bb81_α:
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 1744]
 mov rcx, qword ptr [r12 + 1752]
 mov r8, qword ptr [r12 + 1760]
 mov r9, qword ptr [r12 + 1768]
 call subscript_get2@PLT
 mov qword ptr [r12 + 1776], rax
 mov qword ptr [r12 + 1784], rdx
 jmp xchain0_n53_α
 xchain0_n52_β:
 jmp xchain0_n54_α
xchain0_n53_α:
bb82_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+0] -> [r12+1808]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 1808], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 1816], rax
# marshal arg1 = nested producer-box slot [r12+1776] -> [r12+1824]
 mov rax, qword ptr [r12 + 1776]
 mov qword ptr [r12 + 1824], rax
 mov rax, qword ptr [r12 + 1784]
 mov qword ptr [r12 + 1832], rax
  .section .rodata
  .Lrkfn147: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn147]
 lea rsi, [r12 + 1808]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1792], rax
 mov qword ptr [r12 + 1800], rdx
 cmp eax, 99
 je xchain0_n54_α
 jmp xchain0_n54_α
 xchain0_n53_β:
 jmp xchain0_n54_α
xchain0_n54_α:
# IR_LIT_S
bb83_α:
 mov qword ptr [r12 + 1840], 1
 mov rax, qword ptr [rip + .Lx148_0]
 mov qword ptr [r12 + 1848], rax
 jmp xchain0_n55_α
 xchain0_n54_β:
 jmp xchain0_n58_α
.Lx148_0:
 .quad .Lx148_0_s
.Lx148_0_s:
 .string "s7: "
xchain0_n55_α:
# IR_VAR
bb84_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n56_α
 xchain0_n55_β:
 jmp xchain0_n58_α
xchain0_n56_α:
# IR_LIT_I
bb85_α:
 mov qword ptr [r12 + 1856], 6
 mov rax, qword ptr [rip + .Lx152_0]
 mov qword ptr [r12 + 1864], rax
 jmp xsec151_i1_done
 xsec151_i1_b:
 jmp xchain0_n58_α
.Lx152_0:
 .quad 0
xsec151_i1_done:
# IR_LIT_I
bb86_α:
 mov qword ptr [r12 + 1872], 6
 mov rax, qword ptr [rip + .Lx153_0]
 mov qword ptr [r12 + 1880], rax
 jmp xsec151_i2_done
 xsec151_i2_b:
 jmp xchain0_n58_α
.Lx153_0:
 .quad 18446744073709551611
xsec151_i2_done:
# IR_SECTION
bb87_α:
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 1856]
 mov rcx, qword ptr [r12 + 1864]
 mov r8, qword ptr [r12 + 1872]
 mov r9, qword ptr [r12 + 1880]
 call subscript_get2@PLT
 mov qword ptr [r12 + 1888], rax
 mov qword ptr [r12 + 1896], rdx
 jmp xchain0_n57_α
 xchain0_n56_β:
 jmp xchain0_n58_α
xchain0_n57_α:
bb88_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+0] -> [r12+1920]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 1920], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 1928], rax
# marshal arg1 = nested producer-box slot [r12+1888] -> [r12+1936]
 mov rax, qword ptr [r12 + 1888]
 mov qword ptr [r12 + 1936], rax
 mov rax, qword ptr [r12 + 1896]
 mov qword ptr [r12 + 1944], rax
  .section .rodata
  .Lrkfn156: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn156]
 lea rsi, [r12 + 1920]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1904], rax
 mov qword ptr [r12 + 1912], rdx
 cmp eax, 99
 je xchain0_n58_α
 jmp xchain0_n58_α
 xchain0_n57_β:
 jmp xchain0_n58_α
xchain0_n58_α:
# IR_LIT_S
bb89_α:
 mov qword ptr [r12 + 1952], 1
 mov rax, qword ptr [rip + .Lx157_0]
 mov qword ptr [r12 + 1960], rax
 jmp xchain0_n59_α
 xchain0_n58_β:
 jmp xchain0_n62_α
.Lx157_0:
 .quad .Lx157_0_s
.Lx157_0_s:
 .string "s8: "
xchain0_n59_α:
# IR_VAR
bb90_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n60_α
 xchain0_n59_β:
 jmp xchain0_n62_α
xchain0_n60_α:
# IR_LIT_I
bb91_α:
 mov qword ptr [r12 + 1968], 6
 mov rax, qword ptr [rip + .Lx161_0]
 mov qword ptr [r12 + 1976], rax
 jmp xsec160_i1_done
 xsec160_i1_b:
 jmp xchain0_n62_α
.Lx161_0:
 .quad 2
xsec160_i1_done:
# IR_LIT_I
bb92_α:
 mov qword ptr [r12 + 1984], 6
 mov rax, qword ptr [rip + .Lx162_0]
 mov qword ptr [r12 + 1992], rax
 jmp xsec160_i2_done
 xsec160_i2_b:
 jmp xchain0_n62_α
.Lx162_0:
 .quad 4
xsec160_i2_done:
# IR_SECTION
bb93_α:
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 1968]
 mov rcx, qword ptr [r12 + 1976]
 mov r8, qword ptr [r12 + 1984]
 mov r9, qword ptr [r12 + 1992]
 call subscript_get2@PLT
 mov qword ptr [r12 + 2000], rax
 mov qword ptr [r12 + 2008], rdx
 jmp xchain0_n61_α
 xchain0_n60_β:
 jmp xchain0_n62_α
xchain0_n61_α:
bb94_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+0] -> [r12+2032]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 2032], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 2040], rax
# marshal arg1 = nested producer-box slot [r12+2000] -> [r12+2048]
 mov rax, qword ptr [r12 + 2000]
 mov qword ptr [r12 + 2048], rax
 mov rax, qword ptr [r12 + 2008]
 mov qword ptr [r12 + 2056], rax
  .section .rodata
  .Lrkfn165: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn165]
 lea rsi, [r12 + 2032]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2016], rax
 mov qword ptr [r12 + 2024], rdx
 cmp eax, 99
 je xchain0_n62_α
 jmp xchain0_n62_α
 xchain0_n61_β:
 jmp xchain0_n62_α
xchain0_n62_α:
# IR_LIT_S
bb95_α:
 mov qword ptr [r12 + 2064], 1
 mov rax, qword ptr [rip + .Lx166_0]
 mov qword ptr [r12 + 2072], rax
 jmp xchain0_n63_α
 xchain0_n62_β:
 jmp xchain0_n66_α
.Lx166_0:
 .quad .Lx166_0_s
.Lx166_0_s:
 .string "s9: "
xchain0_n63_α:
# IR_VAR
bb96_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n64_α
 xchain0_n63_β:
 jmp xchain0_n66_α
xchain0_n64_α:
# IR_LIT_I
bb97_α:
 mov qword ptr [r12 + 2080], 6
 mov rax, qword ptr [rip + .Lx170_0]
 mov qword ptr [r12 + 2088], rax
 jmp xsec169_i1_done
 xsec169_i1_b:
 jmp xchain0_n66_α
.Lx170_0:
 .quad 18446744073709551614
xsec169_i1_done:
# IR_LIT_I
bb98_α:
 mov qword ptr [r12 + 2096], 6
 mov rax, qword ptr [rip + .Lx171_0]
 mov qword ptr [r12 + 2104], rax
 jmp xsec169_i2_done
 xsec169_i2_b:
 jmp xchain0_n66_α
.Lx171_0:
 .quad 18446744073709551612
xsec169_i2_done:
# IR_SECTION
bb99_α:
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 2080]
 mov rcx, qword ptr [r12 + 2088]
 mov r8, qword ptr [r12 + 2096]
 mov r9, qword ptr [r12 + 2104]
 call subscript_get2@PLT
 mov qword ptr [r12 + 2112], rax
 mov qword ptr [r12 + 2120], rdx
 jmp xchain0_n65_α
 xchain0_n64_β:
 jmp xchain0_n66_α
xchain0_n65_α:
bb100_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+0] -> [r12+2144]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 2144], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 2152], rax
# marshal arg1 = nested producer-box slot [r12+2112] -> [r12+2160]
 mov rax, qword ptr [r12 + 2112]
 mov qword ptr [r12 + 2160], rax
 mov rax, qword ptr [r12 + 2120]
 mov qword ptr [r12 + 2168], rax
  .section .rodata
  .Lrkfn174: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn174]
 lea rsi, [r12 + 2144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2128], rax
 mov qword ptr [r12 + 2136], rdx
 cmp eax, 99
 je xchain0_n66_α
 jmp xchain0_n66_α
 xchain0_n65_β:
 jmp xchain0_n66_α
xchain0_n66_α:
# IR_LIT_S
bb101_α:
 mov qword ptr [r12 + 2176], 1
 mov rax, qword ptr [rip + .Lx175_0]
 mov qword ptr [r12 + 2184], rax
 jmp xchain0_n67_α
 xchain0_n66_β:
 jmp xchain0_n70_α
.Lx175_0:
 .quad .Lx175_0_s
.Lx175_0_s:
 .string "k1: "
xchain0_n67_α:
# IR_LIT_S
bb102_α:
 mov qword ptr [r12 + 2192], 1
 mov rax, qword ptr [rip + .Lx176_0]
 mov qword ptr [r12 + 2200], rax
 jmp xchain0_n68_α
 xchain0_n67_β:
 jmp xchain0_n70_α
.Lx176_0:
 .quad .Lx176_0_s
.Lx176_0_s:
 .string "ABCDE"
xchain0_n68_α:
# IR_LIT_I
bb103_α:
 mov qword ptr [r12 + 2208], 6
 mov rax, qword ptr [rip + .Lx178_0]
 mov qword ptr [r12 + 2216], rax
 jmp xsec177_i1_done
 xsec177_i1_b:
 jmp xchain0_n70_α
.Lx178_0:
 .quad 1
xsec177_i1_done:
# IR_LIT_I
bb104_α:
 mov qword ptr [r12 + 2224], 6
 mov rax, qword ptr [rip + .Lx179_0]
 mov qword ptr [r12 + 2232], rax
 jmp xsec177_i2_done
 xsec177_i2_b:
 jmp xchain0_n70_α
.Lx179_0:
 .quad 6
xsec177_i2_done:
# IR_SECTION
bb105_α:
 mov rdi, qword ptr [r12 + 2192]
 mov rsi, qword ptr [r12 + 2200]
 mov rdx, qword ptr [r12 + 2208]
 mov rcx, qword ptr [r12 + 2216]
 mov r8, qword ptr [r12 + 2224]
 mov r9, qword ptr [r12 + 2232]
 call subscript_get2@PLT
 mov qword ptr [r12 + 2240], rax
 mov qword ptr [r12 + 2248], rdx
 jmp xchain0_n69_α
 xchain0_n68_β:
 jmp xchain0_n70_α
xchain0_n69_α:
bb106_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+2272]
 mov qword ptr [r12 + 2272], 1
 mov rax, qword ptr [rip + .Lx181_0]
 mov qword ptr [r12 + 2280], rax
 jmp .Lx181_1
.Lx181_0:
 .quad .Lx181_0_s
.Lx181_0_s:
 .string "ABCDE"
.Lx181_1:
# marshal arg1 = nested producer-box slot [r12+2240] -> [r12+2288]
 mov rax, qword ptr [r12 + 2240]
 mov qword ptr [r12 + 2288], rax
 mov rax, qword ptr [r12 + 2248]
 mov qword ptr [r12 + 2296], rax
  .section .rodata
  .Lrkfn182: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn182]
 lea rsi, [r12 + 2272]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2256], rax
 mov qword ptr [r12 + 2264], rdx
 cmp eax, 99
 je xchain0_n70_α
 jmp xchain0_n70_α
 xchain0_n69_β:
 jmp xchain0_n70_α
xchain0_n70_α:
# IR_LIT_S
bb107_α:
 mov qword ptr [r12 + 2304], 1
 mov rax, qword ptr [rip + .Lx183_0]
 mov qword ptr [r12 + 2312], rax
 jmp xchain0_n71_α
 xchain0_n70_β:
 jmp xchain0_n74_α
.Lx183_0:
 .quad .Lx183_0_s
.Lx183_0_s:
 .string "k2: "
xchain0_n71_α:
# IR_LIT_S
bb108_α:
 mov qword ptr [r12 + 2320], 1
 mov rax, qword ptr [rip + .Lx184_0]
 mov qword ptr [r12 + 2328], rax
 jmp xchain0_n72_α
 xchain0_n71_β:
 jmp xchain0_n74_α
.Lx184_0:
 .quad .Lx184_0_s
.Lx184_0_s:
 .string "ABCDE"
xchain0_n72_α:
# IR_LIT_I
bb109_α:
 mov qword ptr [r12 + 2336], 6
 mov rax, qword ptr [rip + .Lx186_0]
 mov qword ptr [r12 + 2344], rax
 jmp xsec185_i1_done
 xsec185_i1_b:
 jmp xchain0_n74_α
.Lx186_0:
 .quad 1
xsec185_i1_done:
# IR_LIT_I
bb110_α:
 mov qword ptr [r12 + 2352], 6
 mov rax, qword ptr [rip + .Lx187_0]
 mov qword ptr [r12 + 2360], rax
 jmp xsec185_i2_done
 xsec185_i2_b:
 jmp xchain0_n74_α
.Lx187_0:
 .quad 5
xsec185_i2_done:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xchain0_n73_α:
bb112_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+2400]
 mov qword ptr [r12 + 2400], 1
 mov rax, qword ptr [rip + .Lx189_0]
 mov qword ptr [r12 + 2408], rax
 jmp .Lx189_1
.Lx189_0:
 .quad .Lx189_0_s
.Lx189_0_s:
 .string "ABCDE"
.Lx189_1:
# marshal arg1 = nested producer-box slot [r12+2368] -> [r12+2416]
 mov rax, qword ptr [r12 + 2368]
 mov qword ptr [r12 + 2416], rax
 mov rax, qword ptr [r12 + 2376]
 mov qword ptr [r12 + 2424], rax
  .section .rodata
  .Lrkfn190: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn190]
 lea rsi, [r12 + 2400]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2384], rax
 mov qword ptr [r12 + 2392], rdx
 cmp eax, 99
 je xchain0_n74_α
 jmp xchain0_n74_α
 xchain0_n73_β:
 jmp xchain0_n74_α
xchain0_n74_α:
# IR_LIT_S
bb113_α:
 mov qword ptr [r12 + 2432], 1
 mov rax, qword ptr [rip + .Lx191_0]
 mov qword ptr [r12 + 2440], rax
 jmp xchain0_n75_α
 xchain0_n74_β:
 jmp xchain0_n78_α
.Lx191_0:
 .quad .Lx191_0_s
.Lx191_0_s:
 .string "k3: "
xchain0_n75_α:
# IR_LIT_S
bb114_α:
 mov qword ptr [r12 + 2448], 1
 mov rax, qword ptr [rip + .Lx192_0]
 mov qword ptr [r12 + 2456], rax
 jmp xchain0_n76_α
 xchain0_n75_β:
 jmp xchain0_n78_α
.Lx192_0:
 .quad .Lx192_0_s
.Lx192_0_s:
 .string "ABCDE"
xchain0_n76_α:
# IR_LIT_I
bb115_α:
 mov qword ptr [r12 + 2464], 6
 mov rax, qword ptr [rip + .Lx194_0]
 mov qword ptr [r12 + 2472], rax
 jmp xsec193_i1_done
 xsec193_i1_b:
 jmp xchain0_n78_α
.Lx194_0:
 .quad 1
xsec193_i1_done:
# IR_LIT_I
bb116_α:
 mov qword ptr [r12 + 2480], 6
 mov rax, qword ptr [rip + .Lx195_0]
 mov qword ptr [r12 + 2488], rax
 jmp xsec193_i2_done
 xsec193_i2_b:
 jmp xchain0_n78_α
.Lx195_0:
 .quad 18446744073709551611
xsec193_i2_done:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xchain0_n77_α:
bb118_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+2528]
 mov qword ptr [r12 + 2528], 1
 mov rax, qword ptr [rip + .Lx197_0]
 mov qword ptr [r12 + 2536], rax
 jmp .Lx197_1
.Lx197_0:
 .quad .Lx197_0_s
.Lx197_0_s:
 .string "ABCDE"
.Lx197_1:
# marshal arg1 = nested producer-box slot [r12+2496] -> [r12+2544]
 mov rax, qword ptr [r12 + 2496]
 mov qword ptr [r12 + 2544], rax
 mov rax, qword ptr [r12 + 2504]
 mov qword ptr [r12 + 2552], rax
  .section .rodata
  .Lrkfn198: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn198]
 lea rsi, [r12 + 2528]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2512], rax
 mov qword ptr [r12 + 2520], rdx
 cmp eax, 99
 je xchain0_n78_α
 jmp xchain0_n78_α
 xchain0_n77_β:
 jmp xchain0_n78_α
xchain0_n78_α:
# IR_LIT_S
bb119_α:
 mov qword ptr [r12 + 2560], 1
 mov rax, qword ptr [rip + .Lx199_0]
 mov qword ptr [r12 + 2568], rax
 jmp xchain0_n79_α
 xchain0_n78_β:
 jmp xchain0_n82_α
.Lx199_0:
 .quad .Lx199_0_s
.Lx199_0_s:
 .string "k4: "
xchain0_n79_α:
# IR_LIT_S
bb120_α:
 mov qword ptr [r12 + 2576], 1
 mov rax, qword ptr [rip + .Lx200_0]
 mov qword ptr [r12 + 2584], rax
 jmp xchain0_n80_α
 xchain0_n79_β:
 jmp xchain0_n82_α
.Lx200_0:
 .quad .Lx200_0_s
.Lx200_0_s:
 .string "ABCDE"
xchain0_n80_α:
# IR_LIT_I
bb121_α:
 mov qword ptr [r12 + 2592], 6
 mov rax, qword ptr [rip + .Lx202_0]
 mov qword ptr [r12 + 2600], rax
 jmp xsec201_i1_done
 xsec201_i1_b:
 jmp xchain0_n82_α
.Lx202_0:
 .quad 1
xsec201_i1_done:
# IR_LIT_I
bb122_α:
 mov qword ptr [r12 + 2608], 6
 mov rax, qword ptr [rip + .Lx203_0]
 mov qword ptr [r12 + 2616], rax
 jmp xsec201_i2_done
 xsec201_i2_b:
 jmp xchain0_n82_α
.Lx203_0:
 .quad 0
xsec201_i2_done:
# IR_SECTION
bb123_α:
 mov rdi, qword ptr [r12 + 2576]
 mov rsi, qword ptr [r12 + 2584]
 mov rdx, qword ptr [r12 + 2592]
 mov rcx, qword ptr [r12 + 2600]
 mov r8, qword ptr [r12 + 2608]
 mov r9, qword ptr [r12 + 2616]
 call subscript_get2@PLT
 mov qword ptr [r12 + 2624], rax
 mov qword ptr [r12 + 2632], rdx
 jmp xchain0_n81_α
 xchain0_n80_β:
 jmp xchain0_n82_α
xchain0_n81_α:
bb124_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+2656]
 mov qword ptr [r12 + 2656], 1
 mov rax, qword ptr [rip + .Lx205_0]
 mov qword ptr [r12 + 2664], rax
 jmp .Lx205_1
.Lx205_0:
 .quad .Lx205_0_s
.Lx205_0_s:
 .string "ABCDE"
.Lx205_1:
# marshal arg1 = nested producer-box slot [r12+2624] -> [r12+2672]
 mov rax, qword ptr [r12 + 2624]
 mov qword ptr [r12 + 2672], rax
 mov rax, qword ptr [r12 + 2632]
 mov qword ptr [r12 + 2680], rax
  .section .rodata
  .Lrkfn206: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn206]
 lea rsi, [r12 + 2656]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2640], rax
 mov qword ptr [r12 + 2648], rdx
 cmp eax, 99
 je xchain0_n82_α
 jmp xchain0_n82_α
 xchain0_n81_β:
 jmp xchain0_n82_α
xchain0_n82_α:
# IR_LIT_S
bb125_α:
 mov qword ptr [r12 + 2688], 1
 mov rax, qword ptr [rip + .Lx207_0]
 mov qword ptr [r12 + 2696], rax
 jmp xchain0_n83_α
 xchain0_n82_β:
 jmp xchain0_n86_α
.Lx207_0:
 .quad .Lx207_0_s
.Lx207_0_s:
 .string "k5: "
xchain0_n83_α:
# IR_LIT_S
bb126_α:
 mov qword ptr [r12 + 2704], 1
 mov rax, qword ptr [rip + .Lx208_0]
 mov qword ptr [r12 + 2712], rax
 jmp xchain0_n84_α
 xchain0_n83_β:
 jmp xchain0_n86_α
.Lx208_0:
 .quad .Lx208_0_s
.Lx208_0_s:
 .string "ABCDE"
xchain0_n84_α:
# IR_LIT_I
bb127_α:
 mov qword ptr [r12 + 2720], 6
 mov rax, qword ptr [rip + .Lx210_0]
 mov qword ptr [r12 + 2728], rax
 jmp xsec209_i1_done
 xsec209_i1_b:
 jmp xchain0_n86_α
.Lx210_0:
 .quad 18446744073709551611
xsec209_i1_done:
# IR_LIT_I
bb128_α:
 mov qword ptr [r12 + 2736], 6
 mov rax, qword ptr [rip + .Lx211_0]
 mov qword ptr [r12 + 2744], rax
 jmp xsec209_i2_done
 xsec209_i2_b:
 jmp xchain0_n86_α
.Lx211_0:
 .quad 0
xsec209_i2_done:
# IR_SECTION
bb129_α:
 mov rdi, qword ptr [r12 + 2704]
 mov rsi, qword ptr [r12 + 2712]
 mov rdx, qword ptr [r12 + 2720]
 mov rcx, qword ptr [r12 + 2728]
 mov r8, qword ptr [r12 + 2736]
 mov r9, qword ptr [r12 + 2744]
 call subscript_get2@PLT
 mov qword ptr [r12 + 2752], rax
 mov qword ptr [r12 + 2760], rdx
 jmp xchain0_n85_α
 xchain0_n84_β:
 jmp xchain0_n86_α
xchain0_n85_α:
bb130_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+2784]
 mov qword ptr [r12 + 2784], 1
 mov rax, qword ptr [rip + .Lx213_0]
 mov qword ptr [r12 + 2792], rax
 jmp .Lx213_1
.Lx213_0:
 .quad .Lx213_0_s
.Lx213_0_s:
 .string "ABCDE"
.Lx213_1:
# marshal arg1 = nested producer-box slot [r12+2752] -> [r12+2800]
 mov rax, qword ptr [r12 + 2752]
 mov qword ptr [r12 + 2800], rax
 mov rax, qword ptr [r12 + 2760]
 mov qword ptr [r12 + 2808], rax
  .section .rodata
  .Lrkfn214: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn214]
 lea rsi, [r12 + 2784]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2768], rax
 mov qword ptr [r12 + 2776], rdx
 cmp eax, 99
 je xchain0_n86_α
 jmp xchain0_n86_α
 xchain0_n85_β:
 jmp xchain0_n86_α
xchain0_n86_α:
# IR_LIT_S
bb131_α:
 mov qword ptr [r12 + 2816], 1
 mov rax, qword ptr [rip + .Lx215_0]
 mov qword ptr [r12 + 2824], rax
 jmp xchain0_n87_α
 xchain0_n86_β:
 jmp xchain0_n90_α
.Lx215_0:
 .quad .Lx215_0_s
.Lx215_0_s:
 .string "k6: "
xchain0_n87_α:
# IR_LIT_S
bb132_α:
 mov qword ptr [r12 + 2832], 1
 mov rax, qword ptr [rip + .Lx216_0]
 mov qword ptr [r12 + 2840], rax
 jmp xchain0_n88_α
 xchain0_n87_β:
 jmp xchain0_n90_α
.Lx216_0:
 .quad .Lx216_0_s
.Lx216_0_s:
 .string "ABCDE"
xchain0_n88_α:
# IR_LIT_I
bb133_α:
 mov qword ptr [r12 + 2848], 6
 mov rax, qword ptr [rip + .Lx218_0]
 mov qword ptr [r12 + 2856], rax
 jmp xsec217_i1_done
 xsec217_i1_b:
 jmp xchain0_n90_α
.Lx218_0:
 .quad 6
xsec217_i1_done:
# IR_LIT_I
bb134_α:
 mov qword ptr [r12 + 2864], 6
 mov rax, qword ptr [rip + .Lx219_0]
 mov qword ptr [r12 + 2872], rax
 jmp xsec217_i2_done
 xsec217_i2_b:
 jmp xchain0_n90_α
.Lx219_0:
 .quad 1
xsec217_i2_done:
# IR_SECTION
bb135_α:
 mov rdi, qword ptr [r12 + 2832]
 mov rsi, qword ptr [r12 + 2840]
 mov rdx, qword ptr [r12 + 2848]
 mov rcx, qword ptr [r12 + 2856]
 mov r8, qword ptr [r12 + 2864]
 mov r9, qword ptr [r12 + 2872]
 call subscript_get2@PLT
 mov qword ptr [r12 + 2880], rax
 mov qword ptr [r12 + 2888], rdx
 jmp xchain0_n89_α
 xchain0_n88_β:
 jmp xchain0_n90_α
xchain0_n89_α:
bb136_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+2912]
 mov qword ptr [r12 + 2912], 1
 mov rax, qword ptr [rip + .Lx221_0]
 mov qword ptr [r12 + 2920], rax
 jmp .Lx221_1
.Lx221_0:
 .quad .Lx221_0_s
.Lx221_0_s:
 .string "ABCDE"
.Lx221_1:
# marshal arg1 = nested producer-box slot [r12+2880] -> [r12+2928]
 mov rax, qword ptr [r12 + 2880]
 mov qword ptr [r12 + 2928], rax
 mov rax, qword ptr [r12 + 2888]
 mov qword ptr [r12 + 2936], rax
  .section .rodata
  .Lrkfn222: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn222]
 lea rsi, [r12 + 2912]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2896], rax
 mov qword ptr [r12 + 2904], rdx
 cmp eax, 99
 je xchain0_n90_α
 jmp xchain0_n90_α
 xchain0_n89_β:
 jmp xchain0_n90_α
xchain0_n90_α:
# IR_LIT_S
bb137_α:
 mov qword ptr [r12 + 2944], 1
 mov rax, qword ptr [rip + .Lx223_0]
 mov qword ptr [r12 + 2952], rax
 jmp xchain0_n91_α
 xchain0_n90_β:
 jmp xchain0_n94_α
.Lx223_0:
 .quad .Lx223_0_s
.Lx223_0_s:
 .string "k7: "
xchain0_n91_α:
# IR_LIT_S
bb138_α:
 mov qword ptr [r12 + 2960], 1
 mov rax, qword ptr [rip + .Lx224_0]
 mov qword ptr [r12 + 2968], rax
 jmp xchain0_n92_α
 xchain0_n91_β:
 jmp xchain0_n94_α
.Lx224_0:
 .quad .Lx224_0_s
.Lx224_0_s:
 .string "ABCDE"
xchain0_n92_α:
# IR_LIT_I
bb139_α:
 mov qword ptr [r12 + 2976], 6
 mov rax, qword ptr [rip + .Lx226_0]
 mov qword ptr [r12 + 2984], rax
 jmp xsec225_i1_done
 xsec225_i1_b:
 jmp xchain0_n94_α
.Lx226_0:
 .quad 0
xsec225_i1_done:
# IR_LIT_I
bb140_α:
 mov qword ptr [r12 + 2992], 6
 mov rax, qword ptr [rip + .Lx227_0]
 mov qword ptr [r12 + 3000], rax
 jmp xsec225_i2_done
 xsec225_i2_b:
 jmp xchain0_n94_α
.Lx227_0:
 .quad 18446744073709551611
xsec225_i2_done:
# IR_SECTION
bb141_α:
 mov rdi, qword ptr [r12 + 2960]
 mov rsi, qword ptr [r12 + 2968]
 mov rdx, qword ptr [r12 + 2976]
 mov rcx, qword ptr [r12 + 2984]
 mov r8, qword ptr [r12 + 2992]
 mov r9, qword ptr [r12 + 3000]
 call subscript_get2@PLT
 mov qword ptr [r12 + 3008], rax
 mov qword ptr [r12 + 3016], rdx
 jmp xchain0_n93_α
 xchain0_n92_β:
 jmp xchain0_n94_α
xchain0_n93_α:
bb142_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+3040]
 mov qword ptr [r12 + 3040], 1
 mov rax, qword ptr [rip + .Lx229_0]
 mov qword ptr [r12 + 3048], rax
 jmp .Lx229_1
.Lx229_0:
 .quad .Lx229_0_s
.Lx229_0_s:
 .string "ABCDE"
.Lx229_1:
# marshal arg1 = nested producer-box slot [r12+3008] -> [r12+3056]
 mov rax, qword ptr [r12 + 3008]
 mov qword ptr [r12 + 3056], rax
 mov rax, qword ptr [r12 + 3016]
 mov qword ptr [r12 + 3064], rax
  .section .rodata
  .Lrkfn230: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn230]
 lea rsi, [r12 + 3040]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3024], rax
 mov qword ptr [r12 + 3032], rdx
 cmp eax, 99
 je xchain0_n94_α
 jmp xchain0_n94_α
 xchain0_n93_β:
 jmp xchain0_n94_α
xchain0_n94_α:
# IR_LIT_S
bb143_α:
 mov qword ptr [r12 + 3072], 1
 mov rax, qword ptr [rip + .Lx231_0]
 mov qword ptr [r12 + 3080], rax
 jmp xchain0_n95_α
 xchain0_n94_β:
 jmp xchain0_n98_α
.Lx231_0:
 .quad .Lx231_0_s
.Lx231_0_s:
 .string "k8: "
xchain0_n95_α:
# IR_LIT_S
bb144_α:
 mov qword ptr [r12 + 3088], 1
 mov rax, qword ptr [rip + .Lx232_0]
 mov qword ptr [r12 + 3096], rax
 jmp xchain0_n96_α
 xchain0_n95_β:
 jmp xchain0_n98_α
.Lx232_0:
 .quad .Lx232_0_s
.Lx232_0_s:
 .string "ABCDE"
xchain0_n96_α:
# IR_LIT_I
bb145_α:
 mov qword ptr [r12 + 3104], 6
 mov rax, qword ptr [rip + .Lx234_0]
 mov qword ptr [r12 + 3112], rax
 jmp xsec233_i1_done
 xsec233_i1_b:
 jmp xchain0_n98_α
.Lx234_0:
 .quad 2
xsec233_i1_done:
# IR_LIT_I
bb146_α:
 mov qword ptr [r12 + 3120], 6
 mov rax, qword ptr [rip + .Lx235_0]
 mov qword ptr [r12 + 3128], rax
 jmp xsec233_i2_done
 xsec233_i2_b:
 jmp xchain0_n98_α
.Lx235_0:
 .quad 4
xsec233_i2_done:
# IR_SECTION
bb147_α:
 mov rdi, qword ptr [r12 + 3088]
 mov rsi, qword ptr [r12 + 3096]
 mov rdx, qword ptr [r12 + 3104]
 mov rcx, qword ptr [r12 + 3112]
 mov r8, qword ptr [r12 + 3120]
 mov r9, qword ptr [r12 + 3128]
 call subscript_get2@PLT
 mov qword ptr [r12 + 3136], rax
 mov qword ptr [r12 + 3144], rdx
 jmp xchain0_n97_α
 xchain0_n96_β:
 jmp xchain0_n98_α
xchain0_n97_α:
bb148_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+3168]
 mov qword ptr [r12 + 3168], 1
 mov rax, qword ptr [rip + .Lx237_0]
 mov qword ptr [r12 + 3176], rax
 jmp .Lx237_1
.Lx237_0:
 .quad .Lx237_0_s
.Lx237_0_s:
 .string "ABCDE"
.Lx237_1:
# marshal arg1 = nested producer-box slot [r12+3136] -> [r12+3184]
 mov rax, qword ptr [r12 + 3136]
 mov qword ptr [r12 + 3184], rax
 mov rax, qword ptr [r12 + 3144]
 mov qword ptr [r12 + 3192], rax
  .section .rodata
  .Lrkfn238: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn238]
 lea rsi, [r12 + 3168]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3152], rax
 mov qword ptr [r12 + 3160], rdx
 cmp eax, 99
 je xchain0_n98_α
 jmp xchain0_n98_α
 xchain0_n97_β:
 jmp xchain0_n98_α
xchain0_n98_α:
# IR_LIT_S
bb149_α:
 mov qword ptr [r12 + 3200], 1
 mov rax, qword ptr [rip + .Lx239_0]
 mov qword ptr [r12 + 3208], rax
 jmp xchain0_n99_α
 xchain0_n98_β:
 jmp xchain0_n102_α
.Lx239_0:
 .quad .Lx239_0_s
.Lx239_0_s:
 .string "k9: "
xchain0_n99_α:
# IR_LIT_S
bb150_α:
 mov qword ptr [r12 + 3216], 1
 mov rax, qword ptr [rip + .Lx240_0]
 mov qword ptr [r12 + 3224], rax
 jmp xchain0_n100_α
 xchain0_n99_β:
 jmp xchain0_n102_α
.Lx240_0:
 .quad .Lx240_0_s
.Lx240_0_s:
 .string "ABCDE"
xchain0_n100_α:
# IR_LIT_I
bb151_α:
 mov qword ptr [r12 + 3232], 6
 mov rax, qword ptr [rip + .Lx242_0]
 mov qword ptr [r12 + 3240], rax
 jmp xsec241_i1_done
 xsec241_i1_b:
 jmp xchain0_n102_α
.Lx242_0:
 .quad 18446744073709551614
xsec241_i1_done:
# IR_LIT_I
bb152_α:
 mov qword ptr [r12 + 3248], 6
 mov rax, qword ptr [rip + .Lx243_0]
 mov qword ptr [r12 + 3256], rax
 jmp xsec241_i2_done
 xsec241_i2_b:
 jmp xchain0_n102_α
.Lx243_0:
 .quad 18446744073709551612
xsec241_i2_done:
# IR_SECTION
bb153_α:
 mov rdi, qword ptr [r12 + 3216]
 mov rsi, qword ptr [r12 + 3224]
 mov rdx, qword ptr [r12 + 3232]
 mov rcx, qword ptr [r12 + 3240]
 mov r8, qword ptr [r12 + 3248]
 mov r9, qword ptr [r12 + 3256]
 call subscript_get2@PLT
 mov qword ptr [r12 + 3264], rax
 mov qword ptr [r12 + 3272], rdx
 jmp xchain0_n101_α
 xchain0_n100_β:
 jmp xchain0_n102_α
xchain0_n101_α:
bb154_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+3296]
 mov qword ptr [r12 + 3296], 1
 mov rax, qword ptr [rip + .Lx245_0]
 mov qword ptr [r12 + 3304], rax
 jmp .Lx245_1
.Lx245_0:
 .quad .Lx245_0_s
.Lx245_0_s:
 .string "ABCDE"
.Lx245_1:
# marshal arg1 = nested producer-box slot [r12+3264] -> [r12+3312]
 mov rax, qword ptr [r12 + 3264]
 mov qword ptr [r12 + 3312], rax
 mov rax, qword ptr [r12 + 3272]
 mov qword ptr [r12 + 3320], rax
  .section .rodata
  .Lrkfn246: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn246]
 lea rsi, [r12 + 3296]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3280], rax
 mov qword ptr [r12 + 3288], rdx
 cmp eax, 99
 je xchain0_n102_α
 jmp xchain0_n102_α
 xchain0_n101_β:
 jmp xchain0_n102_α
xchain0_n102_α:
# IR_LIT_S
bb155_α:
 mov qword ptr [r12 + 3328], 1
 mov rax, qword ptr [rip + .Lx247_0]
 mov qword ptr [r12 + 3336], rax
 jmp xchain0_n103_α
 xchain0_n102_β:
 jmp xchain0_n106_α
.Lx247_0:
 .quad .Lx247_0_s
.Lx247_0_s:
 .string "abc"
xchain0_n103_α:
# IR_LIT_S
bb156_α:
 mov qword ptr [r12 + 3344], 1
 mov rax, qword ptr [rip + .Lx248_0]
 mov qword ptr [r12 + 3352], rax
 jmp xchain0_n104_α
 xchain0_n103_β:
 jmp xchain0_n106_α
.Lx248_0:
 .quad .Lx248_0_s
.Lx248_0_s:
 .string "de"
xchain0_n104_α:
bb157_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 3328]
 mov rsi, qword ptr [r12 + 3336]
 mov rdx, qword ptr [r12 + 3344]
 mov rcx, qword ptr [r12 + 3352]
 call str_concat_d@PLT
 mov qword ptr [r12 + 3360], rax
 mov qword ptr [r12 + 3368], rdx
 jmp xchain0_n105_α
 xchain0_n104_β:
 jmp xchain0_n106_α
xchain0_n105_α:
bb158_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 3360]
 mov rdx, qword ptr [r12 + 3368]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 3376], rax
 mov qword ptr [r12 + 3384], rdx
 jmp xchain0_n106_α
 xchain0_n105_β:
 jmp xchain0_n106_α
xchain0_n106_α:
# IR_LIT_S
bb159_α:
 mov qword ptr [r12 + 3392], 1
 mov rax, qword ptr [rip + .Lx251_0]
 mov qword ptr [r12 + 3400], rax
 jmp xchain0_n107_α
 xchain0_n106_β:
 jmp xchain0_n109_α
.Lx251_0:
 .quad .Lx251_0_s
.Lx251_0_s:
 .string "t:  "
xchain0_n107_α:
bb160_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+3424]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 3424], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 3432], rax
  .section .rodata
  .Lrkfn253: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn253]
 lea rsi, [r12 + 3424]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3408], rax
 mov qword ptr [r12 + 3416], rdx
 cmp eax, 99
 je xchain0_n109_α
 jmp xchain0_n108_α
 xchain0_n107_β:
 jmp xchain0_n109_α
xchain0_n108_α:
bb161_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+3456]
 mov qword ptr [r12 + 3456], 1
 mov rax, qword ptr [rip + .Lx254_0]
 mov qword ptr [r12 + 3464], rax
 jmp .Lx254_1
.Lx254_0:
 .quad .Lx254_0_s
.Lx254_0_s:
 .string "t:  "
.Lx254_1:
# marshal arg0 = varslot [r12+16] -> [r12+3488]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 3488], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 3496], rax
  .section .rodata
  .Lcallfn255: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn255]
 lea rsi, [r12 + 3488]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3472], rax
 mov qword ptr [r12 + 3480], rdx
  .section .rodata
  .Lrkfn256: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn256]
 lea rsi, [r12 + 3456]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3440], rax
 mov qword ptr [r12 + 3448], rdx
 cmp eax, 99
 je xchain0_n109_α
 jmp main_γ
 xchain0_n108_β:
 jmp xchain0_n109_α
xchain0_n109_α:
xaltg257_a0_start:
# IR_SUCCEED
bb162_α:
 jmp xaltg257_a0_succ
 xaltg257_a0_beta:
 jmp xaltg257_a1_start
xaltg257_a0_succ:
 lea rdi, [rip + .S1]
 call rt_bomb@PLT
 ud2
jmp main_γ
xaltg257_a1_start:
bb163_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn261: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn261]
 lea rsi, [r12 + 3544]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3528], rax
 mov qword ptr [r12 + 3536], rdx
 cmp eax, 99
 je main_ω
 jmp xaltg257_a1_succ
 xaltg257_a1_beta:
 jmp main_ω
xaltg257_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 3528]
 mov qword ptr [r12 + 3504], rax
 mov rax, qword ptr [r12 + 3536]
 mov qword ptr [r12 + 3512], rax
 mov qword ptr [r12 + 3520], 1
jmp main_γ
xchain0_n109_β:
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
.S0: .string "bb_section: only plain s[i:j] has a native arm (s[i+:n]/s[i-:n] pending)"
.S1: .string "bb_repalt_yield: sub-expression value slot not materialised"
.text
