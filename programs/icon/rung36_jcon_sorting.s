  .intel_syntax noprefix
  .text
  .globl proc_listtest_α
proc_listtest_α:
#=======================================================================================================================
    .global proc_listtest_α
    .global proc_listtest_β
    .global proc_listtest_γ
    .global proc_listtest_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_listtest_α_body:
xchain0_n0_α:
# IR_LIT_I
bb1_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx1_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n2_α
.Lx1_0:
 .quad 0
xchain0_n1_α:
# IR_LIT_I
bb2_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx2_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n2_α
.Lx2_0:
 .quad 10
xchain0_n2_α:
xaltg3_a0_start:
# IR_TO
bb3_α:
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 168], rax
.Lx5_0:
 mov rax, qword ptr [r12 + 168]
 mov rcx, qword ptr [r12 + 120]
 cmp rax, rcx
 jg xaltg3_a1_start
 mov qword ptr [r12 + 152], 6
 mov qword ptr [r12 + 160], rax
 jmp xaltg3_a0_succ
 xaltg3_a0_beta:
 inc qword ptr [r12 + 168]
 jmp .Lx5_0
xaltg3_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 136], rax
 mov qword ptr [r12 + 144], 1
jmp xchain0_n3_α
xaltg3_a1_start:
# IR_LIT_I
bb4_α:
 mov qword ptr [r12 + 176], 6
 mov rax, qword ptr [rip + .Lx7_0]
 mov qword ptr [r12 + 184], rax
 jmp xaltg3_a1_succ
 xaltg3_a1_beta:
 jmp xaltg3_a2_start
.Lx7_0:
 .quad 23
xaltg3_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 136], rax
 mov qword ptr [r12 + 144], 1
jmp xchain0_n3_α
xaltg3_a2_start:
# IR_LIT_I
bb5_α:
 mov qword ptr [r12 + 192], 6
 mov rax, qword ptr [rip + .Lx9_0]
 mov qword ptr [r12 + 200], rax
 jmp xaltg3_a2_succ
 xaltg3_a2_beta:
 jmp xaltg3_a3_start
.Lx9_0:
 .quad 47
xaltg3_a2_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 136], rax
 mov qword ptr [r12 + 144], 1
jmp xchain0_n3_α
xaltg3_a3_start:
# IR_LIT_I
bb6_α:
 mov qword ptr [r12 + 208], 6
 mov rax, qword ptr [rip + .Lx11_0]
 mov qword ptr [r12 + 216], rax
 jmp xaltg3_a3_succ
 xaltg3_a3_beta:
 jmp xchain0_n30_α
.Lx11_0:
 .quad 91
xaltg3_a3_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 136], rax
 mov qword ptr [r12 + 144], 1
jmp xchain0_n3_α
xchain0_n2_β:
jmp xchain0_n30_α
xchain0_n3_α:
bb7_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n2_β
xchain0_n4_α:
# IR_VAR
bb8_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp xchain0_n7_α
xchain0_n5_α:
# IR_LIT_S
bb9_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx16_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain0_n6_α
 xchain0_n5_β:
 jmp xchain0_n7_α
.Lx16_0:
 .quad .Lx16_0_s
.Lx16_0_s:
 .string ":"
xchain0_n6_α:
bb10_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+272]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 280], rax
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+288]
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx17_2]
 mov qword ptr [r12 + 296], rax
 jmp .Lx17_3
.Lx17_2:
 .quad .Lx17_2_s
.Lx17_2_s:
 .string ":"
.Lx17_3:
  .section .rodata
  .Lrkfn18: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn18]
 lea rsi, [r12 + 272]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je xchain0_n7_α
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp xchain0_n7_α
xchain0_n7_α:
bb11_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn20: .string "set"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn20]
 lea rsi, [r12 + 320]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain0_n9_α
 jmp xchain0_n8_α
 xchain0_n7_β:
 jmp xchain0_n9_α
xchain0_n8_α:
bb12_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 304]
 mov rdx, qword ptr [r12 + 312]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain0_n9_α
 xchain0_n8_β:
 jmp xchain0_n9_α
xchain0_n9_α:
# IR_VAR
bb13_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n10_α
 xchain0_n9_β:
 jmp xchain0_n14_α
xchain0_n10_α:
# IR_UNOP
bb14_α:
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 call rt_size_d@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain0_n11_α
 xchain0_n10_β:
 jmp xchain0_n14_α
xchain0_n11_α:
# IR_VAR
bb15_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n12_α
 xchain0_n11_β:
 jmp xchain0_n14_α
xchain0_n12_α:
bb16_α:
# IR_BINOP_RELOP
 mov rax, qword ptr [r12 + 344]
 mov rcx, qword ptr [r12 + 24]
 cmp rax, rcx
 jge xchain0_n14_α
 mov rcx, qword ptr [r12 + 16]
 mov qword ptr [r12 + 352], rcx
 mov rcx, qword ptr [r12 + 24]
 mov qword ptr [r12 + 360], rcx
 jmp xchain0_n13_α
 xchain0_n12_β:
 jmp xchain0_n14_α
xchain0_n13_α:
bb17_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+32] -> [r12+384]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 392], rax
  .section .rodata
  .Lcallfn29: .string "randval"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn29]
 lea rsi, [r12 + 416]
 mov edx, 0
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
  .section .rodata
  .Lrkfn30: .string "insert"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn30]
 lea rsi, [r12 + 384]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je xchain0_n9_α
 jmp xchain0_n9_α
 xchain0_n13_β:
 jmp xchain0_n9_α
xchain0_n14_α:
xchain0_n14_β:
jmp xchain0_n15_α
jmp xchain0_n15_α
xchain0_n15_α:
bb18_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn32: .string "list"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn32]
 lea rsi, [r12 + 448]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 cmp eax, 99
 je xchain0_n17_α
 jmp xchain0_n16_α
 xchain0_n15_β:
 jmp xchain0_n17_α
xchain0_n16_α:
bb19_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 432]
 mov rdx, qword ptr [r12 + 440]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain0_n17_α
 xchain0_n16_β:
 jmp xchain0_n17_α
xchain0_n17_α:
bb20_α:
# BOX IR_CALL put(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+48] -> [r12+480]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 488], rax
# marshal arg1 = varslot [r12+512] -> [r12+496]
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 504], rax
  .section .rodata
  .Lbynamefn35: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn35]
 lea rsi, [r12 + 480]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 cmp eax, 99
 je xchain0_n2_β
 jmp xchain0_n18_α
xchain0_n17_β:
 jmp xchain0_n2_β
xchain0_n18_α:
# IR_EVERY
 jmp xchain0_n19_α
 xchain0_n18_β:
 jmp xchain0_n19_α
xchain0_n19_α:
bb22_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+48] -> [r12+544]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 552], rax
  .section .rodata
  .Lrkfn38: .string "sort"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn38]
 lea rsi, [r12 + 544]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 cmp eax, 99
 je xchain0_n21_α
 jmp xchain0_n20_α
 xchain0_n19_β:
 jmp xchain0_n21_α
xchain0_n20_α:
bb23_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 528]
 mov rdx, qword ptr [r12 + 536]
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain0_n21_α
 xchain0_n20_β:
 jmp xchain0_n21_α
xchain0_n21_α:
bb24_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+48] -> [r12+608]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 616], rax
  .section .rodata
  .Lcallfn41: .string "set"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn41]
 lea rsi, [r12 + 608]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
  .section .rodata
  .Lrkfn42: .string "sort"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn42]
 lea rsi, [r12 + 592]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 cmp eax, 99
 je xchain0_n23_α
 jmp xchain0_n22_α
 xchain0_n21_β:
 jmp xchain0_n23_α
xchain0_n22_α:
bb25_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 576]
 mov rdx, qword ptr [r12 + 584]
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xchain0_n23_α
 xchain0_n22_β:
 jmp xchain0_n23_α
xchain0_n23_α:
xargsub45_n0_α:
# IR_VAR
bb26_α:
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 72], rax
 jmp xicnarg44_done
 xargsub45_n0_β:
 jmp xchain0_n24_α
xicnarg44_done:
xargsub49_n0_α:
# IR_VAR
bb27_α:
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 88], rax
 jmp xicnarg48_done
 xargsub49_n0_β:
 jmp xchain0_n24_α
xicnarg48_done:
bb28_α:
  .section .rodata
  .Lcall30_pname: .string "check"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+64]
 mov rdx, qword ptr [r12+72]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+80]
 mov rdx, qword ptr [r12+88]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall30_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 cmp eax, 99
 je xchain0_n24_α
 jmp xchain0_n24_α
xchain0_n23_β:
 jmp xchain0_n24_α
xchain0_n24_α:
bb29_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+48] -> [r12+688]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 696], rax
  .section .rodata
  .Lcallfn54: .string "copy"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn54]
 lea rsi, [r12 + 688]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
  .section .rodata
  .Lrkfn55: .string "sort"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn55]
 lea rsi, [r12 + 672]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 cmp eax, 99
 je xchain0_n26_α
 jmp xchain0_n25_α
 xchain0_n24_β:
 jmp xchain0_n26_α
xchain0_n25_α:
bb30_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 656]
 mov rdx, qword ptr [r12 + 664]
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain0_n26_α
 xchain0_n25_β:
 jmp xchain0_n26_α
xchain0_n26_α:
bb31_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+48] -> [r12+768]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 768], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 776], rax
  .section .rodata
  .Lcallfn58: .string "set"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn58]
 lea rsi, [r12 + 768]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
  .section .rodata
  .Lcallfn59: .string "copy"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn59]
 lea rsi, [r12 + 752]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
  .section .rodata
  .Lrkfn60: .string "sort"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn60]
 lea rsi, [r12 + 736]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 cmp eax, 99
 je xchain0_n28_α
 jmp xchain0_n27_α
 xchain0_n26_β:
 jmp xchain0_n28_α
xchain0_n27_α:
bb32_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 720]
 mov rdx, qword ptr [r12 + 728]
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain0_n28_α
 xchain0_n27_β:
 jmp xchain0_n28_α
xchain0_n28_α:
xargsub63_n0_α:
# IR_VAR
bb33_α:
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 72], rax
 jmp xicnarg62_done
 xargsub63_n0_β:
 jmp xchain0_n2_β
xicnarg62_done:
xargsub67_n0_α:
# IR_VAR
bb34_α:
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 88], rax
 jmp xicnarg66_done
 xargsub67_n0_β:
 jmp xchain0_n2_β
xicnarg66_done:
bb35_α:
  .section .rodata
  .Lcall40_pname: .string "check"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+64]
 mov rdx, qword ptr [r12+72]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+80]
 mov rdx, qword ptr [r12+88]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall40_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 cmp eax, 99
 je xchain0_n2_β
 jmp xchain0_n29_α
xchain0_n28_β:
 jmp xchain0_n2_β
xchain0_n29_α:
jmp xchain0_n2_β
xchain0_n29_β:
jmp xchain0_n2_β
xchain0_n30_α:
# IR_EVERY
 jmp proc_listtest_ω
 xchain0_n30_β:
 jmp proc_listtest_ω
proc_listtest_β:
jmp proc_listtest_ω
proc_listtest_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_listtest_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_rectest_α
proc_rectest_α:
#=======================================================================================================================
    .global proc_rectest_α
    .global proc_rectest_β
    .global proc_rectest_γ
    .global proc_rectest_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_rectest_α_body:
xchain72_n0_α:
bb37_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn74: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn74]
 lea rsi, [r12 + 32]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je xchain72_n1_α
 jmp xchain72_n1_α
 xchain72_n0_β:
 jmp xchain72_n1_α
xchain72_n1_α:
xargsub76_n0_α:
bb38_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lcallfn78: .string "r0"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn78]
 lea rsi, [r12 + 64]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
  .section .rodata
  .Lrkfn79: .string "sort"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn79]
 lea rsi, [r12 + 48]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je xchain72_n2_α
 jmp xicnarg75_done
 xargsub76_n0_β:
 jmp xchain72_n2_α
xicnarg75_done:
bb39_α:
  .section .rodata
  .Lcall45_pname: .string "wlist"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+32]
 mov rdx, qword ptr [r12+40]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall45_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je xchain72_n2_α
 jmp xchain72_n2_α
xchain72_n1_β:
 jmp xchain72_n2_α
xchain72_n2_α:
xargsub82_n0_α:
bb40_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lcallfn84: .string "r0"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn84]
 lea rsi, [r12 + 160]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
  .section .rodata
  .Lcallfn85: .string "copy"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn85]
 lea rsi, [r12 + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
# marshal arg1 = nested producer-box slot [r12+128] -> [r12+128]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn86: .string "sort"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn86]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain72_n3_α
 jmp xicnarg81_done
 xargsub82_n0_β:
 jmp xchain72_n3_α
xicnarg81_done:
bb41_α:
  .section .rodata
  .Lcall49_pname: .string "wlist"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+96]
 mov rdx, qword ptr [r12+104]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall49_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp eax, 99
 je xchain72_n3_α
 jmp xchain72_n3_α
xchain72_n2_β:
 jmp xchain72_n3_α
xchain72_n3_α:
xargsub89_n0_α:
bb42_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+224]
 mov qword ptr [r12 + 224], 6
 movabs rax, 12
 mov qword ptr [r12 + 232], rax
  .section .rodata
  .Lcallfn91: .string "r1"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn91]
 lea rsi, [r12 + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
  .section .rodata
  .Lrkfn92: .string "sort"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn92]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain72_n4_α
 jmp xicnarg88_done
 xargsub89_n0_β:
 jmp xchain72_n4_α
xicnarg88_done:
bb43_α:
  .section .rodata
  .Lcall52_pname: .string "wlist"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+192]
 mov rdx, qword ptr [r12+200]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall52_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain72_n4_α
 jmp xchain72_n4_α
xchain72_n3_β:
 jmp xchain72_n4_α
xchain72_n4_α:
xargsub95_n0_α:
bb44_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+288]
 mov qword ptr [r12 + 288], 6
 movabs rax, 5
 mov qword ptr [r12 + 296], rax
# marshal arg1 = LIT_I -> [r12+304]
 mov qword ptr [r12 + 304], 6
 movabs rax, 2
 mov qword ptr [r12 + 312], rax
  .section .rodata
  .Lcallfn97: .string "r2"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn97]
 lea rsi, [r12 + 288]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
  .section .rodata
  .Lrkfn98: .string "sort"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn98]
 lea rsi, [r12 + 272]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je xchain72_n5_α
 jmp xicnarg94_done
 xargsub95_n0_β:
 jmp xchain72_n5_α
xicnarg94_done:
bb45_α:
  .section .rodata
  .Lcall55_pname: .string "wlist"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+256]
 mov rdx, qword ptr [r12+264]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall55_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je xchain72_n5_α
 jmp xchain72_n5_α
xchain72_n4_β:
 jmp xchain72_n5_α
xchain72_n5_α:
xargsub101_n0_α:
bb46_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+368]
 mov qword ptr [r12 + 368], 6
 movabs rax, 2
 mov qword ptr [r12 + 376], rax
# marshal arg1 = LIT_I -> [r12+384]
 mov qword ptr [r12 + 384], 6
 movabs rax, 7
 mov qword ptr [r12 + 392], rax
# marshal arg2 = LIT_I -> [r12+400]
 mov qword ptr [r12 + 400], 6
 movabs rax, 1
 mov qword ptr [r12 + 408], rax
# marshal arg3 = LIT_I -> [r12+416]
 mov qword ptr [r12 + 416], 6
 movabs rax, 8
 mov qword ptr [r12 + 424], rax
# marshal arg4 = LIT_I -> [r12+432]
 mov qword ptr [r12 + 432], 6
 movabs rax, 3
 mov qword ptr [r12 + 440], rax
  .section .rodata
  .Lcallfn103: .string "r5"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn103]
 lea rsi, [r12 + 368]
 mov edx, 5
 call rt_call_arr@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
  .section .rodata
  .Lrkfn104: .string "sort"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn104]
 lea rsi, [r12 + 352]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 cmp eax, 99
 je xchain72_n6_α
 jmp xicnarg100_done
 xargsub101_n0_β:
 jmp xchain72_n6_α
xicnarg100_done:
bb47_α:
  .section .rodata
  .Lcall58_pname: .string "wlist"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+336]
 mov rdx, qword ptr [r12+344]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall58_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 cmp eax, 99
 je xchain72_n6_α
 jmp xchain72_n6_α
xchain72_n5_β:
 jmp xchain72_n6_α
xchain72_n6_α:
xargsub107_n0_α:
bb48_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+496]
 mov qword ptr [r12 + 496], 6
 movabs rax, 3
 mov qword ptr [r12 + 504], rax
# marshal arg1 = LIT_I -> [r12+512]
 mov qword ptr [r12 + 512], 6
 movabs rax, 1
 mov qword ptr [r12 + 520], rax
# marshal arg2 = LIT_I -> [r12+528]
 mov qword ptr [r12 + 528], 6
 movabs rax, 4
 mov qword ptr [r12 + 536], rax
# marshal arg3 = LIT_I -> [r12+544]
 mov qword ptr [r12 + 544], 6
 movabs rax, 1
 mov qword ptr [r12 + 552], rax
# marshal arg4 = LIT_I -> [r12+560]
 mov qword ptr [r12 + 560], 6
 movabs rax, 6
 mov qword ptr [r12 + 568], rax
  .section .rodata
  .Lcallfn109: .string "r5"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn109]
 lea rsi, [r12 + 496]
 mov edx, 5
 call rt_call_arr@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
  .section .rodata
  .Lrkfn110: .string "sort"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn110]
 lea rsi, [r12 + 480]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 cmp eax, 99
 je xchain72_n7_α
 jmp xicnarg106_done
 xargsub107_n0_β:
 jmp xchain72_n7_α
xicnarg106_done:
bb49_α:
  .section .rodata
  .Lcall61_pname: .string "wlist"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+464]
 mov rdx, qword ptr [r12+472]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall61_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 cmp eax, 99
 je xchain72_n7_α
 jmp xchain72_n7_α
xchain72_n6_β:
 jmp xchain72_n7_α
xchain72_n7_α:
xargsub113_n0_α:
bb50_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+624]
 mov qword ptr [r12 + 624], 1
 mov rax, qword ptr [rip + .Lx114_0]
 mov qword ptr [r12 + 632], rax
 jmp .Lx114_1
.Lx114_0:
 .quad .Lx114_0_s
.Lx114_0_s:
 .string "t"
.Lx114_1:
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+640]
 mov qword ptr [r12 + 640], 1
 mov rax, qword ptr [rip + .Lx114_2]
 mov qword ptr [r12 + 648], rax
 jmp .Lx114_3
.Lx114_2:
 .quad .Lx114_2_s
.Lx114_2_s:
 .string "e"
.Lx114_3:
# marshal arg2 = LIT_S (string REG-RO sealed in-band) -> [r12+656]
 mov qword ptr [r12 + 656], 1
 mov rax, qword ptr [rip + .Lx114_4]
 mov qword ptr [r12 + 664], rax
 jmp .Lx114_5
.Lx114_4:
 .quad .Lx114_4_s
.Lx114_4_s:
 .string "p"
.Lx114_5:
# marshal arg3 = LIT_S (string REG-RO sealed in-band) -> [r12+672]
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx114_6]
 mov qword ptr [r12 + 680], rax
 jmp .Lx114_7
.Lx114_6:
 .quad .Lx114_6_s
.Lx114_6_s:
 .string "a"
.Lx114_7:
# marshal arg4 = LIT_S (string REG-RO sealed in-band) -> [r12+688]
 mov qword ptr [r12 + 688], 1
 mov rax, qword ptr [rip + .Lx114_8]
 mov qword ptr [r12 + 696], rax
 jmp .Lx114_9
.Lx114_8:
 .quad .Lx114_8_s
.Lx114_8_s:
 .string "d"
.Lx114_9:
  .section .rodata
  .Lcallfn115: .string "r5"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn115]
 lea rsi, [r12 + 624]
 mov edx, 5
 call rt_call_arr@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
  .section .rodata
  .Lrkfn116: .string "sort"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn116]
 lea rsi, [r12 + 608]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 cmp eax, 99
 je xchain72_n8_α
 jmp xicnarg112_done
 xargsub113_n0_β:
 jmp xchain72_n8_α
xicnarg112_done:
bb51_α:
  .section .rodata
  .Lcall64_pname: .string "wlist"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+592]
 mov rdx, qword ptr [r12+600]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall64_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 cmp eax, 99
 je xchain72_n8_α
 jmp xchain72_n8_α
xchain72_n7_β:
 jmp xchain72_n8_α
xchain72_n8_α:
xargsub119_n0_α:
bb52_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+768]
 mov qword ptr [r12 + 768], 1
 mov rax, qword ptr [rip + .Lx120_0]
 mov qword ptr [r12 + 776], rax
 jmp .Lx120_1
.Lx120_0:
 .quad .Lx120_0_s
.Lx120_0_s:
 .string "t"
.Lx120_1:
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+784]
 mov qword ptr [r12 + 784], 1
 mov rax, qword ptr [rip + .Lx120_2]
 mov qword ptr [r12 + 792], rax
 jmp .Lx120_3
.Lx120_2:
 .quad .Lx120_2_s
.Lx120_2_s:
 .string "e"
.Lx120_3:
# marshal arg2 = LIT_S (string REG-RO sealed in-band) -> [r12+800]
 mov qword ptr [r12 + 800], 1
 mov rax, qword ptr [rip + .Lx120_4]
 mov qword ptr [r12 + 808], rax
 jmp .Lx120_5
.Lx120_4:
 .quad .Lx120_4_s
.Lx120_4_s:
 .string "p"
.Lx120_5:
# marshal arg3 = LIT_S (string REG-RO sealed in-band) -> [r12+816]
 mov qword ptr [r12 + 816], 1
 mov rax, qword ptr [rip + .Lx120_6]
 mov qword ptr [r12 + 824], rax
 jmp .Lx120_7
.Lx120_6:
 .quad .Lx120_6_s
.Lx120_6_s:
 .string "a"
.Lx120_7:
# marshal arg4 = LIT_S (string REG-RO sealed in-band) -> [r12+832]
 mov qword ptr [r12 + 832], 1
 mov rax, qword ptr [rip + .Lx120_8]
 mov qword ptr [r12 + 840], rax
 jmp .Lx120_9
.Lx120_8:
 .quad .Lx120_8_s
.Lx120_8_s:
 .string "d"
.Lx120_9:
  .section .rodata
  .Lcallfn121: .string "r5"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn121]
 lea rsi, [r12 + 768]
 mov edx, 5
 call rt_call_arr@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
  .section .rodata
  .Lcallfn122: .string "copy"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn122]
 lea rsi, [r12 + 752]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
  .section .rodata
  .Lrkfn123: .string "sort"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn123]
 lea rsi, [r12 + 736]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 cmp eax, 99
 je xchain72_n9_α
 jmp xicnarg118_done
 xargsub119_n0_β:
 jmp xchain72_n9_α
xicnarg118_done:
bb53_α:
  .section .rodata
  .Lcall68_pname: .string "wlist"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+720]
 mov rdx, qword ptr [r12+728]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall68_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 cmp eax, 99
 je xchain72_n9_α
 jmp xchain72_n9_α
xchain72_n8_β:
 jmp xchain72_n9_α
xchain72_n9_α:
# IR_RETURN
bb54_α:
 mov rax, qword ptr [r12 + 848]
 mov rdx, qword ptr [r12 + 856]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_rectest_γ
proc_rectest_β:
jmp proc_rectest_ω
proc_rectest_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_rectest_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_tbltest_α
proc_tbltest_α:
#=======================================================================================================================
    .global proc_tbltest_α
    .global proc_tbltest_β
    .global proc_tbltest_γ
    .global proc_tbltest_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_tbltest_α_body:
xchain126_n0_α:
bb55_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn128: .string "table"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn128]
 lea rsi, [r12 + 64]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je xchain126_n2_α
 jmp xchain126_n1_α
 xchain126_n0_β:
 jmp xchain126_n2_α
xchain126_n1_α:
bb56_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xchain126_n2_α
 xchain126_n1_β:
 jmp xchain126_n2_α
xchain126_n2_α:
# IR_VAR
bb57_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain126_n3_α
 xchain126_n2_β:
 jmp xchain126_n4_α
xchain126_n3_α:
# IR_LIT_S
bb58_α:
 mov qword ptr [r12 + 80], 1
 mov rax, qword ptr [rip + .Lx133_0]
 mov qword ptr [r12 + 88], rax
 jmp xiset132_val_done
 xiset132_val_β:
 jmp xchain126_n4_α
.Lx133_0:
 .quad .Lx133_0_s
.Lx133_0_s:
 .string "h"
xiset132_val_done:
# IR_LIT_I
bb59_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx134_0]
 mov qword ptr [r12 + 104], rax
 jmp xiset132_key_done
 xiset132_key_β:
 jmp xchain126_n4_α
.Lx134_0:
 .quad 7
xiset132_key_done:
bb60_α:
# IR_IDX_SET: base/key/value from [ζ+off]; inline DT_A+int fast path, else subscript_set
 mov rax, qword ptr [r12 + 16]
 cmp eax, 4
 jne .Lx136_0
 mov rax, qword ptr [r12 + 96]
 cmp eax, 6
 jne .Lx136_0
 mov rsi, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 104]
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx136_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx136_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add r11, rcx
 mov rax, qword ptr [r12 + 80]
 mov rdx, qword ptr [r12 + 88]
 mov qword ptr [r11 + 0], rax
 mov qword ptr [r11 + 8], rdx
 jmp xchain126_n4_α
.Lx136_0:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 96]
 mov rcx, qword ptr [r12 + 104]
 mov r8, qword ptr [r12 + 80]
 mov r9, qword ptr [r12 + 88]
 call subscript_set@PLT
 cmp eax, 0
 je xchain126_n4_α
 jmp xchain126_n4_α
 xchain126_n3_β:
 jmp xchain126_n4_α
xchain126_n4_α:
# IR_VAR
bb61_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain126_n5_α
 xchain126_n4_β:
 jmp xchain126_n6_α
xchain126_n5_α:
# IR_LIT_S
bb62_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx140_0]
 mov qword ptr [r12 + 120], rax
 jmp xiset139_val_done
 xiset139_val_β:
 jmp xchain126_n6_α
.Lx140_0:
 .quad .Lx140_0_s
.Lx140_0_s:
 .string "a"
xiset139_val_done:
# IR_LIT_I
bb63_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx141_0]
 mov qword ptr [r12 + 136], rax
 jmp xiset139_key_done
 xiset139_key_β:
 jmp xchain126_n6_α
.Lx141_0:
 .quad 2
xiset139_key_done:
bb64_α:
# IR_IDX_SET: base/key/value from [ζ+off]; inline DT_A+int fast path, else subscript_set
 mov rax, qword ptr [r12 + 16]
 cmp eax, 4
 jne .Lx143_0
 mov rax, qword ptr [r12 + 128]
 cmp eax, 6
 jne .Lx143_0
 mov rsi, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 136]
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx143_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx143_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add r11, rcx
 mov rax, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 mov qword ptr [r11 + 0], rax
 mov qword ptr [r11 + 8], rdx
 jmp xchain126_n6_α
.Lx143_0:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 128]
 mov rcx, qword ptr [r12 + 136]
 mov r8, qword ptr [r12 + 112]
 mov r9, qword ptr [r12 + 120]
 call subscript_set@PLT
 cmp eax, 0
 je xchain126_n6_α
 jmp xchain126_n6_α
 xchain126_n5_β:
 jmp xchain126_n6_α
xchain126_n6_α:
# IR_VAR
bb65_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain126_n7_α
 xchain126_n6_β:
 jmp xchain126_n8_α
xchain126_n7_α:
# IR_LIT_S
bb66_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx147_0]
 mov qword ptr [r12 + 152], rax
 jmp xiset146_val_done
 xiset146_val_β:
 jmp xchain126_n8_α
.Lx147_0:
 .quad .Lx147_0_s
.Lx147_0_s:
 .string "r"
xiset146_val_done:
# IR_LIT_I
bb67_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx148_0]
 mov qword ptr [r12 + 168], rax
 jmp xiset146_key_done
 xiset146_key_β:
 jmp xchain126_n8_α
.Lx148_0:
 .quad 8
xiset146_key_done:
bb68_α:
# IR_IDX_SET: base/key/value from [ζ+off]; inline DT_A+int fast path, else subscript_set
 mov rax, qword ptr [r12 + 16]
 cmp eax, 4
 jne .Lx150_0
 mov rax, qword ptr [r12 + 160]
 cmp eax, 6
 jne .Lx150_0
 mov rsi, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 168]
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx150_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx150_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add r11, rcx
 mov rax, qword ptr [r12 + 144]
 mov rdx, qword ptr [r12 + 152]
 mov qword ptr [r11 + 0], rax
 mov qword ptr [r11 + 8], rdx
 jmp xchain126_n8_α
.Lx150_0:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 160]
 mov rcx, qword ptr [r12 + 168]
 mov r8, qword ptr [r12 + 144]
 mov r9, qword ptr [r12 + 152]
 call subscript_set@PLT
 cmp eax, 0
 je xchain126_n8_α
 jmp xchain126_n8_α
 xchain126_n7_β:
 jmp xchain126_n8_α
xchain126_n8_α:
# IR_VAR
bb69_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain126_n9_α
 xchain126_n8_β:
 jmp xchain126_n10_α
xchain126_n9_α:
# IR_LIT_S
bb70_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx154_0]
 mov qword ptr [r12 + 184], rax
 jmp xiset153_val_done
 xiset153_val_β:
 jmp xchain126_n10_α
.Lx154_0:
 .quad .Lx154_0_s
.Lx154_0_s:
 .string "e"
xiset153_val_done:
# IR_LIT_I
bb71_α:
 mov qword ptr [r12 + 192], 6
 mov rax, qword ptr [rip + .Lx155_0]
 mov qword ptr [r12 + 200], rax
 jmp xiset153_key_done
 xiset153_key_β:
 jmp xchain126_n10_α
.Lx155_0:
 .quad 0
xiset153_key_done:
bb72_α:
# IR_IDX_SET: base/key/value from [ζ+off]; inline DT_A+int fast path, else subscript_set
 mov rax, qword ptr [r12 + 16]
 cmp eax, 4
 jne .Lx157_0
 mov rax, qword ptr [r12 + 192]
 cmp eax, 6
 jne .Lx157_0
 mov rsi, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 200]
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx157_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx157_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add r11, rcx
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r11 + 0], rax
 mov qword ptr [r11 + 8], rdx
 jmp xchain126_n10_α
.Lx157_0:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 192]
 mov rcx, qword ptr [r12 + 200]
 mov r8, qword ptr [r12 + 176]
 mov r9, qword ptr [r12 + 184]
 call subscript_set@PLT
 cmp eax, 0
 je xchain126_n10_α
 jmp xchain126_n10_α
 xchain126_n9_β:
 jmp xchain126_n10_α
xchain126_n10_α:
# IR_VAR
bb73_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain126_n11_α
 xchain126_n10_β:
 jmp xchain126_n12_α
xchain126_n11_α:
# IR_LIT_S
bb74_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx161_0]
 mov qword ptr [r12 + 216], rax
 jmp xiset160_val_done
 xiset160_val_β:
 jmp xchain126_n12_α
.Lx161_0:
 .quad .Lx161_0_s
.Lx161_0_s:
 .string "o"
xiset160_val_done:
# IR_LIT_I
bb75_α:
 mov qword ptr [r12 + 224], 6
 mov rax, qword ptr [rip + .Lx162_0]
 mov qword ptr [r12 + 232], rax
 jmp xiset160_key_done
 xiset160_key_β:
 jmp xchain126_n12_α
.Lx162_0:
 .quad 3
xiset160_key_done:
bb76_α:
# IR_IDX_SET: base/key/value from [ζ+off]; inline DT_A+int fast path, else subscript_set
 mov rax, qword ptr [r12 + 16]
 cmp eax, 4
 jne .Lx164_0
 mov rax, qword ptr [r12 + 224]
 cmp eax, 6
 jne .Lx164_0
 mov rsi, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 232]
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx164_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx164_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add r11, rcx
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r11 + 0], rax
 mov qword ptr [r11 + 8], rdx
 jmp xchain126_n12_α
.Lx164_0:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 224]
 mov rcx, qword ptr [r12 + 232]
 mov r8, qword ptr [r12 + 208]
 mov r9, qword ptr [r12 + 216]
 call subscript_set@PLT
 cmp eax, 0
 je xchain126_n12_α
 jmp xchain126_n12_α
 xchain126_n11_β:
 jmp xchain126_n12_α
xchain126_n12_α:
# IR_VAR
bb77_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain126_n13_α
 xchain126_n12_β:
 jmp xchain126_n14_α
xchain126_n13_α:
# IR_LIT_S
bb78_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx168_0]
 mov qword ptr [r12 + 248], rax
 jmp xiset167_val_done
 xiset167_val_β:
 jmp xchain126_n14_α
.Lx168_0:
 .quad .Lx168_0_s
.Lx168_0_s:
 .string "s"
xiset167_val_done:
# IR_LIT_I
bb79_α:
 mov qword ptr [r12 + 256], 6
 mov rax, qword ptr [rip + .Lx169_0]
 mov qword ptr [r12 + 264], rax
 jmp xiset167_key_done
 xiset167_key_β:
 jmp xchain126_n14_α
.Lx169_0:
 .quad 6
xiset167_key_done:
bb80_α:
# IR_IDX_SET: base/key/value from [ζ+off]; inline DT_A+int fast path, else subscript_set
 mov rax, qword ptr [r12 + 16]
 cmp eax, 4
 jne .Lx171_0
 mov rax, qword ptr [r12 + 256]
 cmp eax, 6
 jne .Lx171_0
 mov rsi, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 264]
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx171_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx171_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add r11, rcx
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r11 + 0], rax
 mov qword ptr [r11 + 8], rdx
 jmp xchain126_n14_α
.Lx171_0:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 256]
 mov rcx, qword ptr [r12 + 264]
 mov r8, qword ptr [r12 + 240]
 mov r9, qword ptr [r12 + 248]
 call subscript_set@PLT
 cmp eax, 0
 je xchain126_n14_α
 jmp xchain126_n14_α
 xchain126_n13_β:
 jmp xchain126_n14_α
xchain126_n14_α:
# IR_VAR
bb81_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain126_n15_α
 xchain126_n14_β:
 jmp xchain126_n16_α
xchain126_n15_α:
# IR_LIT_S
bb82_α:
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx175_0]
 mov qword ptr [r12 + 280], rax
 jmp xiset174_val_done
 xiset174_val_β:
 jmp xchain126_n16_α
.Lx175_0:
 .quad .Lx175_0_s
.Lx175_0_s:
 .string "n"
xiset174_val_done:
# IR_LIT_I
bb83_α:
 mov qword ptr [r12 + 288], 6
 mov rax, qword ptr [rip + .Lx176_0]
 mov qword ptr [r12 + 296], rax
 jmp xiset174_key_done
 xiset174_key_β:
 jmp xchain126_n16_α
.Lx176_0:
 .quad 5
xiset174_key_done:
bb84_α:
# IR_IDX_SET: base/key/value from [ζ+off]; inline DT_A+int fast path, else subscript_set
 mov rax, qword ptr [r12 + 16]
 cmp eax, 4
 jne .Lx178_0
 mov rax, qword ptr [r12 + 288]
 cmp eax, 6
 jne .Lx178_0
 mov rsi, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 296]
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx178_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx178_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add r11, rcx
 mov rax, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 mov qword ptr [r11 + 0], rax
 mov qword ptr [r11 + 8], rdx
 jmp xchain126_n16_α
.Lx178_0:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 288]
 mov rcx, qword ptr [r12 + 296]
 mov r8, qword ptr [r12 + 272]
 mov r9, qword ptr [r12 + 280]
 call subscript_set@PLT
 cmp eax, 0
 je xchain126_n16_α
 jmp xchain126_n16_α
 xchain126_n15_β:
 jmp xchain126_n16_α
xchain126_n16_α:
# IR_VAR
bb85_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain126_n17_α
 xchain126_n16_β:
 jmp xchain126_n18_α
xchain126_n17_α:
# IR_LIT_S
bb86_α:
 mov qword ptr [r12 + 304], 1
 mov rax, qword ptr [rip + .Lx182_0]
 mov qword ptr [r12 + 312], rax
 jmp xiset181_val_done
 xiset181_val_β:
 jmp xchain126_n18_α
.Lx182_0:
 .quad .Lx182_0_s
.Lx182_0_s:
 .string "t"
xiset181_val_done:
# IR_LIT_I
bb87_α:
 mov qword ptr [r12 + 320], 6
 mov rax, qword ptr [rip + .Lx183_0]
 mov qword ptr [r12 + 328], rax
 jmp xiset181_key_done
 xiset181_key_β:
 jmp xchain126_n18_α
.Lx183_0:
 .quad 1
xiset181_key_done:
bb88_α:
# IR_IDX_SET: base/key/value from [ζ+off]; inline DT_A+int fast path, else subscript_set
 mov rax, qword ptr [r12 + 16]
 cmp eax, 4
 jne .Lx185_0
 mov rax, qword ptr [r12 + 320]
 cmp eax, 6
 jne .Lx185_0
 mov rsi, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 328]
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx185_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx185_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add r11, rcx
 mov rax, qword ptr [r12 + 304]
 mov rdx, qword ptr [r12 + 312]
 mov qword ptr [r11 + 0], rax
 mov qword ptr [r11 + 8], rdx
 jmp xchain126_n18_α
.Lx185_0:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 320]
 mov rcx, qword ptr [r12 + 328]
 mov r8, qword ptr [r12 + 304]
 mov r9, qword ptr [r12 + 312]
 call subscript_set@PLT
 cmp eax, 0
 je xchain126_n18_α
 jmp xchain126_n18_α
 xchain126_n17_β:
 jmp xchain126_n18_α
xchain126_n18_α:
# IR_VAR
bb89_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain126_n19_α
 xchain126_n18_β:
 jmp xchain126_n20_α
xchain126_n19_α:
# IR_LIT_S
bb90_α:
 mov qword ptr [r12 + 336], 1
 mov rax, qword ptr [rip + .Lx189_0]
 mov qword ptr [r12 + 344], rax
 jmp xiset188_val_done
 xiset188_val_β:
 jmp xchain126_n20_α
.Lx189_0:
 .quad .Lx189_0_s
.Lx189_0_s:
 .string "i"
xiset188_val_done:
# IR_LIT_I
bb91_α:
 mov qword ptr [r12 + 352], 6
 mov rax, qword ptr [rip + .Lx190_0]
 mov qword ptr [r12 + 360], rax
 jmp xiset188_key_done
 xiset188_key_β:
 jmp xchain126_n20_α
.Lx190_0:
 .quad 4
xiset188_key_done:
bb92_α:
# IR_IDX_SET: base/key/value from [ζ+off]; inline DT_A+int fast path, else subscript_set
 mov rax, qword ptr [r12 + 16]
 cmp eax, 4
 jne .Lx192_0
 mov rax, qword ptr [r12 + 352]
 cmp eax, 6
 jne .Lx192_0
 mov rsi, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 360]
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx192_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx192_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add r11, rcx
 mov rax, qword ptr [r12 + 336]
 mov rdx, qword ptr [r12 + 344]
 mov qword ptr [r11 + 0], rax
 mov qword ptr [r11 + 8], rdx
 jmp xchain126_n20_α
.Lx192_0:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 352]
 mov rcx, qword ptr [r12 + 360]
 mov r8, qword ptr [r12 + 336]
 mov r9, qword ptr [r12 + 344]
 call subscript_set@PLT
 cmp eax, 0
 je xchain126_n20_α
 jmp xchain126_n20_α
 xchain126_n19_β:
 jmp xchain126_n20_α
xchain126_n20_α:
# IR_VAR
bb93_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain126_n21_α
 xchain126_n20_β:
 jmp xchain126_n22_α
xchain126_n21_α:
# IR_LIT_S
bb94_α:
 mov qword ptr [r12 + 368], 1
 mov rax, qword ptr [rip + .Lx196_0]
 mov qword ptr [r12 + 376], rax
 jmp xiset195_val_done
 xiset195_val_β:
 jmp xchain126_n22_α
.Lx196_0:
 .quad .Lx196_0_s
.Lx196_0_s:
 .string "d"
xiset195_val_done:
# IR_LIT_I
bb95_α:
 mov qword ptr [r12 + 384], 6
 mov rax, qword ptr [rip + .Lx197_0]
 mov qword ptr [r12 + 392], rax
 jmp xiset195_key_done
 xiset195_key_β:
 jmp xchain126_n22_α
.Lx197_0:
 .quad 9
xiset195_key_done:
bb96_α:
# IR_IDX_SET: base/key/value from [ζ+off]; inline DT_A+int fast path, else subscript_set
 mov rax, qword ptr [r12 + 16]
 cmp eax, 4
 jne .Lx199_0
 mov rax, qword ptr [r12 + 384]
 cmp eax, 6
 jne .Lx199_0
 mov rsi, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 392]
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx199_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx199_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add r11, rcx
 mov rax, qword ptr [r12 + 368]
 mov rdx, qword ptr [r12 + 376]
 mov qword ptr [r11 + 0], rax
 mov qword ptr [r11 + 8], rdx
 jmp xchain126_n22_α
.Lx199_0:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 384]
 mov rcx, qword ptr [r12 + 392]
 mov r8, qword ptr [r12 + 368]
 mov r9, qword ptr [r12 + 376]
 call subscript_set@PLT
 cmp eax, 0
 je xchain126_n22_α
 jmp xchain126_n22_α
 xchain126_n21_β:
 jmp xchain126_n22_α
xchain126_n22_α:
bb97_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn201: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn201]
 lea rsi, [r12 + 416]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je xchain126_n23_α
 jmp xchain126_n23_α
 xchain126_n22_β:
 jmp xchain126_n23_α
xchain126_n23_α:
bb98_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+432]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 440], rax
  .section .rodata
  .Lrkfn203: .string "sort"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn203]
 lea rsi, [r12 + 432]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 cmp eax, 99
 je xchain126_n25_α
 jmp xchain126_n24_α
 xchain126_n23_β:
 jmp xchain126_n25_α
xchain126_n24_α:
bb99_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 416]
 mov rdx, qword ptr [r12 + 424]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain126_n25_α
 xchain126_n24_β:
 jmp xchain126_n25_α
xchain126_n25_α:
# IR_LIT_S
bb100_α:
 mov qword ptr [r12 + 464], 1
 mov rax, qword ptr [rip + .Lx205_0]
 mov qword ptr [r12 + 472], rax
 jmp xchain126_n26_α
 xchain126_n25_β:
 jmp xchain126_n92_β
.Lx205_0:
 .quad .Lx205_0_s
.Lx205_0_s:
 .string " "
xchain126_n26_α:
# IR_VAR
bb101_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain126_n27_α
 xchain126_n26_β:
 jmp xchain126_n27_α
xchain126_n27_α:
xaltg208_a0_start:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xaltg208_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 488], rax
 mov qword ptr [r12 + 496], 1
jmp xchain126_n28_α
xaltg208_a1_start:
# IR_VAR
bb103_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xbang212_iter_done
 xbang212_iter_β:
 jmp xaltg208_a2_start
xbang212_iter_done:
# IR_LIST_BANG
bb104_α:
 mov qword ptr [r12 + 520], 0
.Lx216_0:
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 mov rdx, qword ptr [r12 + 520]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 cmp rax, 99
 je xaltg208_a2_start
 jmp xbang211_iter_done
 xbang211_iter_β:
 inc qword ptr [r12 + 520]
 jmp .Lx216_0
xbang211_iter_done:
# IR_LIST_BANG
bb105_α:
 mov qword ptr [r12 + 544], 0
.Lx218_0:
 mov rdi, qword ptr [r12 + 528]
 mov rsi, qword ptr [r12 + 536]
 mov rdx, qword ptr [r12 + 544]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 552], rax
 mov qword ptr [r12 + 560], rdx
 cmp rax, 99
 je xaltg208_a2_start
 jmp xaltg208_a1_succ
 xaltg208_a1_beta:
 inc qword ptr [r12 + 544]
 jmp .Lx218_0
xaltg208_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 488], rax
 mov qword ptr [r12 + 496], 1
jmp xchain126_n28_α
xaltg208_a2_start:
# IR_LIT_S
bb106_α:
 mov qword ptr [r12 + 568], 1
 mov rax, qword ptr [rip + .Lx220_0]
 mov qword ptr [r12 + 576], rax
 jmp xaltg208_a2_succ
 xaltg208_a2_beta:
 jmp xchain126_n29_α
.Lx220_0:
 .quad .Lx220_0_s
.Lx220_0_s:
 .string "\n"
xaltg208_a2_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 488], rax
 mov qword ptr [r12 + 496], 1
jmp xchain126_n28_α
xchain126_n27_β:
jmp xchain126_n29_α
xchain126_n28_α:
bb107_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+32] -> [r12+600]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 600], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 608], rax
# marshal arg1 = nested producer-box slot [r12+480] -> [r12+616]
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 616], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 624], rax
  .section .rodata
  .Lrkfn223: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn223]
 lea rsi, [r12 + 600]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 584], rax
 mov qword ptr [r12 + 592], rdx
 cmp eax, 99
 je xchain126_n92_β
 jmp xchain126_n27_β
 xchain126_n28_β:
 jmp xchain126_n92_β
xchain126_n29_α:
# IR_EVERY
 jmp xchain126_n30_α
 xchain126_n29_β:
 jmp xchain126_n30_α
xchain126_n30_α:
bb109_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+648]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 648], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 656], rax
# marshal arg1 = LIT_I -> [r12+664]
 mov qword ptr [r12 + 664], 6
 movabs rax, 1
 mov qword ptr [r12 + 672], rax
  .section .rodata
  .Lrkfn226: .string "sort"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn226]
 lea rsi, [r12 + 648]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 632], rax
 mov qword ptr [r12 + 640], rdx
 cmp eax, 99
 je xchain126_n32_α
 jmp xchain126_n31_α
 xchain126_n30_β:
 jmp xchain126_n32_α
xchain126_n31_α:
bb110_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 632]
 mov rdx, qword ptr [r12 + 640]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 680], rax
 mov qword ptr [r12 + 688], rdx
 jmp xchain126_n32_α
 xchain126_n31_β:
 jmp xchain126_n32_α
xchain126_n32_α:
# IR_LIT_S
bb111_α:
 mov qword ptr [r12 + 696], 1
 mov rax, qword ptr [rip + .Lx228_0]
 mov qword ptr [r12 + 704], rax
 jmp xchain126_n33_α
 xchain126_n32_β:
 jmp xchain126_n92_β
.Lx228_0:
 .quad .Lx228_0_s
.Lx228_0_s:
 .string " "
xchain126_n33_α:
# IR_VAR
bb112_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain126_n34_α
 xchain126_n33_β:
 jmp xchain126_n34_α
xchain126_n34_α:
xaltg231_a0_start:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xaltg231_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 712], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], 1
jmp xchain126_n35_α
xaltg231_a1_start:
# IR_VAR
bb114_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xbang235_iter_done
 xbang235_iter_β:
 jmp xaltg231_a2_start
xbang235_iter_done:
# IR_LIST_BANG
bb115_α:
 mov qword ptr [r12 + 752], 0
.Lx239_0:
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 mov rdx, qword ptr [r12 + 752]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 760], rax
 mov qword ptr [r12 + 768], rdx
 cmp rax, 99
 je xaltg231_a2_start
 jmp xbang234_iter_done
 xbang234_iter_β:
 inc qword ptr [r12 + 752]
 jmp .Lx239_0
xbang234_iter_done:
# IR_LIST_BANG
bb116_α:
 mov qword ptr [r12 + 776], 0
.Lx241_0:
 mov rdi, qword ptr [r12 + 760]
 mov rsi, qword ptr [r12 + 768]
 mov rdx, qword ptr [r12 + 776]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 cmp rax, 99
 je xaltg231_a2_start
 jmp xaltg231_a1_succ
 xaltg231_a1_beta:
 inc qword ptr [r12 + 776]
 jmp .Lx241_0
xaltg231_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 712], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], 1
jmp xchain126_n35_α
xaltg231_a2_start:
# IR_LIT_S
bb117_α:
 mov qword ptr [r12 + 800], 1
 mov rax, qword ptr [rip + .Lx243_0]
 mov qword ptr [r12 + 808], rax
 jmp xaltg231_a2_succ
 xaltg231_a2_beta:
 jmp xchain126_n36_α
.Lx243_0:
 .quad .Lx243_0_s
.Lx243_0_s:
 .string "\n"
xaltg231_a2_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 800]
 mov qword ptr [r12 + 712], rax
 mov rax, qword ptr [r12 + 808]
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], 1
jmp xchain126_n35_α
xchain126_n34_β:
jmp xchain126_n36_α
xchain126_n35_α:
bb118_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+32] -> [r12+832]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 840], rax
# marshal arg1 = nested producer-box slot [r12+712] -> [r12+848]
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 856], rax
  .section .rodata
  .Lrkfn246: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn246]
 lea rsi, [r12 + 832]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 cmp eax, 99
 je xchain126_n92_β
 jmp xchain126_n34_β
 xchain126_n35_β:
 jmp xchain126_n92_β
xchain126_n36_α:
# IR_EVERY
 jmp xchain126_n37_α
 xchain126_n36_β:
 jmp xchain126_n37_α
xchain126_n37_α:
bb120_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+880]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 880], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 888], rax
# marshal arg1 = LIT_I -> [r12+896]
 mov qword ptr [r12 + 896], 6
 movabs rax, 2
 mov qword ptr [r12 + 904], rax
  .section .rodata
  .Lrkfn249: .string "sort"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn249]
 lea rsi, [r12 + 880]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 cmp eax, 99
 je xchain126_n39_α
 jmp xchain126_n38_α
 xchain126_n37_β:
 jmp xchain126_n39_α
xchain126_n38_α:
bb121_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 864]
 mov rdx, qword ptr [r12 + 872]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 jmp xchain126_n39_α
 xchain126_n38_β:
 jmp xchain126_n39_α
xchain126_n39_α:
# IR_LIT_S
bb122_α:
 mov qword ptr [r12 + 928], 1
 mov rax, qword ptr [rip + .Lx251_0]
 mov qword ptr [r12 + 936], rax
 jmp xchain126_n40_α
 xchain126_n39_β:
 jmp xchain126_n92_β
.Lx251_0:
 .quad .Lx251_0_s
.Lx251_0_s:
 .string " "
xchain126_n40_α:
# IR_VAR
bb123_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain126_n41_α
 xchain126_n40_β:
 jmp xchain126_n41_α
xchain126_n41_α:
xaltg254_a0_start:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xaltg254_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 968]
 mov qword ptr [r12 + 944], rax
 mov rax, qword ptr [r12 + 976]
 mov qword ptr [r12 + 952], rax
 mov qword ptr [r12 + 960], 1
jmp xchain126_n42_α
xaltg254_a1_start:
# IR_VAR
bb125_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xbang258_iter_done
 xbang258_iter_β:
 jmp xaltg254_a2_start
xbang258_iter_done:
# IR_LIST_BANG
bb126_α:
 mov qword ptr [r12 + 984], 0
.Lx262_0:
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 mov rdx, qword ptr [r12 + 984]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 cmp rax, 99
 je xaltg254_a2_start
 jmp xbang257_iter_done
 xbang257_iter_β:
 inc qword ptr [r12 + 984]
 jmp .Lx262_0
xbang257_iter_done:
# IR_LIST_BANG
bb127_α:
 mov qword ptr [r12 + 1008], 0
.Lx264_0:
 mov rdi, qword ptr [r12 + 992]
 mov rsi, qword ptr [r12 + 1000]
 mov rdx, qword ptr [r12 + 1008]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 1016], rax
 mov qword ptr [r12 + 1024], rdx
 cmp rax, 99
 je xaltg254_a2_start
 jmp xaltg254_a1_succ
 xaltg254_a1_beta:
 inc qword ptr [r12 + 1008]
 jmp .Lx264_0
xaltg254_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1016]
 mov qword ptr [r12 + 944], rax
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 952], rax
 mov qword ptr [r12 + 960], 1
jmp xchain126_n42_α
xaltg254_a2_start:
# IR_LIT_S
bb128_α:
 mov qword ptr [r12 + 1032], 1
 mov rax, qword ptr [rip + .Lx266_0]
 mov qword ptr [r12 + 1040], rax
 jmp xaltg254_a2_succ
 xaltg254_a2_beta:
 jmp xchain126_n43_α
.Lx266_0:
 .quad .Lx266_0_s
.Lx266_0_s:
 .string "\n"
xaltg254_a2_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 944], rax
 mov rax, qword ptr [r12 + 1040]
 mov qword ptr [r12 + 952], rax
 mov qword ptr [r12 + 960], 1
jmp xchain126_n42_α
xchain126_n41_β:
jmp xchain126_n43_α
xchain126_n42_α:
bb129_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+32] -> [r12+1064]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 1064], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 1072], rax
# marshal arg1 = nested producer-box slot [r12+944] -> [r12+1080]
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 1080], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 1088], rax
  .section .rodata
  .Lrkfn269: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn269]
 lea rsi, [r12 + 1064]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1048], rax
 mov qword ptr [r12 + 1056], rdx
 cmp eax, 99
 je xchain126_n92_β
 jmp xchain126_n41_β
 xchain126_n42_β:
 jmp xchain126_n92_β
xchain126_n43_α:
# IR_EVERY
 jmp xchain126_n44_α
 xchain126_n43_β:
 jmp xchain126_n44_α
xchain126_n44_α:
bb131_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+1112]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1112], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1120], rax
# marshal arg1 = LIT_I -> [r12+1128]
 mov qword ptr [r12 + 1128], 6
 movabs rax, 3
 mov qword ptr [r12 + 1136], rax
  .section .rodata
  .Lrkfn272: .string "sort"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn272]
 lea rsi, [r12 + 1112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1096], rax
 mov qword ptr [r12 + 1104], rdx
 cmp eax, 99
 je xchain126_n46_α
 jmp xchain126_n45_α
 xchain126_n44_β:
 jmp xchain126_n46_α
xchain126_n45_α:
bb132_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1096]
 mov rdx, qword ptr [r12 + 1104]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 1144], rax
 mov qword ptr [r12 + 1152], rdx
 jmp xchain126_n46_α
 xchain126_n45_β:
 jmp xchain126_n46_α
xchain126_n46_α:
# IR_LIT_S
bb133_α:
 mov qword ptr [r12 + 1160], 1
 mov rax, qword ptr [rip + .Lx274_0]
 mov qword ptr [r12 + 1168], rax
 jmp xchain126_n47_α
 xchain126_n46_β:
 jmp xchain126_n92_β
.Lx274_0:
 .quad .Lx274_0_s
.Lx274_0_s:
 .string " "
xchain126_n47_α:
# IR_VAR
bb134_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain126_n48_α
 xchain126_n47_β:
 jmp xchain126_n48_α
xchain126_n48_α:
xaltg277_a0_start:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xaltg277_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1200]
 mov qword ptr [r12 + 1176], rax
 mov rax, qword ptr [r12 + 1208]
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], 1
jmp xchain126_n49_α
xaltg277_a1_start:
# IR_VAR
bb136_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xbang280_iter_done
 xbang280_iter_β:
 jmp xaltg277_a2_start
xbang280_iter_done:
# IR_LIST_BANG
bb137_α:
 mov qword ptr [r12 + 1216], 0
.Lx284_0:
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 mov rdx, qword ptr [r12 + 1216]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 1224], rax
 mov qword ptr [r12 + 1232], rdx
 cmp rax, 99
 je xaltg277_a2_start
 jmp xaltg277_a1_succ
 xaltg277_a1_beta:
 inc qword ptr [r12 + 1216]
 jmp .Lx284_0
xaltg277_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1224]
 mov qword ptr [r12 + 1176], rax
 mov rax, qword ptr [r12 + 1232]
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], 1
jmp xchain126_n49_α
xaltg277_a2_start:
# IR_LIT_S
bb138_α:
 mov qword ptr [r12 + 1240], 1
 mov rax, qword ptr [rip + .Lx286_0]
 mov qword ptr [r12 + 1248], rax
 jmp xaltg277_a2_succ
 xaltg277_a2_beta:
 jmp xchain126_n50_α
.Lx286_0:
 .quad .Lx286_0_s
.Lx286_0_s:
 .string "\n"
xaltg277_a2_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1240]
 mov qword ptr [r12 + 1176], rax
 mov rax, qword ptr [r12 + 1248]
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], 1
jmp xchain126_n49_α
xchain126_n48_β:
jmp xchain126_n50_α
xchain126_n49_α:
bb139_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+32] -> [r12+1272]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 1272], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 1280], rax
# marshal arg1 = nested producer-box slot [r12+1176] -> [r12+1288]
 mov rax, qword ptr [r12 + 1176]
 mov qword ptr [r12 + 1288], rax
 mov rax, qword ptr [r12 + 1184]
 mov qword ptr [r12 + 1296], rax
  .section .rodata
  .Lrkfn289: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn289]
 lea rsi, [r12 + 1272]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1256], rax
 mov qword ptr [r12 + 1264], rdx
 cmp eax, 99
 je xchain126_n92_β
 jmp xchain126_n48_β
 xchain126_n49_β:
 jmp xchain126_n92_β
xchain126_n50_α:
# IR_EVERY
 jmp xchain126_n51_α
 xchain126_n50_β:
 jmp xchain126_n51_α
xchain126_n51_α:
bb141_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+1320]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1320], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1328], rax
# marshal arg1 = LIT_I -> [r12+1336]
 mov qword ptr [r12 + 1336], 6
 movabs rax, 4
 mov qword ptr [r12 + 1344], rax
  .section .rodata
  .Lrkfn292: .string "sort"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn292]
 lea rsi, [r12 + 1320]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1304], rax
 mov qword ptr [r12 + 1312], rdx
 cmp eax, 99
 je xchain126_n53_α
 jmp xchain126_n52_α
 xchain126_n51_β:
 jmp xchain126_n53_α
xchain126_n52_α:
bb142_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1304]
 mov rdx, qword ptr [r12 + 1312]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 1352], rax
 mov qword ptr [r12 + 1360], rdx
 jmp xchain126_n53_α
 xchain126_n52_β:
 jmp xchain126_n53_α
xchain126_n53_α:
# IR_LIT_S
bb143_α:
 mov qword ptr [r12 + 1368], 1
 mov rax, qword ptr [rip + .Lx294_0]
 mov qword ptr [r12 + 1376], rax
 jmp xchain126_n54_α
 xchain126_n53_β:
 jmp xchain126_n92_β
.Lx294_0:
 .quad .Lx294_0_s
.Lx294_0_s:
 .string " "
xchain126_n54_α:
# IR_VAR
bb144_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain126_n55_α
 xchain126_n54_β:
 jmp xchain126_n55_α
xchain126_n55_α:
xaltg297_a0_start:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xaltg297_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1408]
 mov qword ptr [r12 + 1384], rax
 mov rax, qword ptr [r12 + 1416]
 mov qword ptr [r12 + 1392], rax
 mov qword ptr [r12 + 1400], 1
jmp xchain126_n56_α
xaltg297_a1_start:
# IR_VAR
bb146_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xbang300_iter_done
 xbang300_iter_β:
 jmp xaltg297_a2_start
xbang300_iter_done:
# IR_LIST_BANG
bb147_α:
 mov qword ptr [r12 + 1424], 0
.Lx304_0:
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 mov rdx, qword ptr [r12 + 1424]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 1432], rax
 mov qword ptr [r12 + 1440], rdx
 cmp rax, 99
 je xaltg297_a2_start
 jmp xaltg297_a1_succ
 xaltg297_a1_beta:
 inc qword ptr [r12 + 1424]
 jmp .Lx304_0
xaltg297_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1432]
 mov qword ptr [r12 + 1384], rax
 mov rax, qword ptr [r12 + 1440]
 mov qword ptr [r12 + 1392], rax
 mov qword ptr [r12 + 1400], 1
jmp xchain126_n56_α
xaltg297_a2_start:
# IR_LIT_S
bb148_α:
 mov qword ptr [r12 + 1448], 1
 mov rax, qword ptr [rip + .Lx306_0]
 mov qword ptr [r12 + 1456], rax
 jmp xaltg297_a2_succ
 xaltg297_a2_beta:
 jmp xchain126_n57_α
.Lx306_0:
 .quad .Lx306_0_s
.Lx306_0_s:
 .string "\n"
xaltg297_a2_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1448]
 mov qword ptr [r12 + 1384], rax
 mov rax, qword ptr [r12 + 1456]
 mov qword ptr [r12 + 1392], rax
 mov qword ptr [r12 + 1400], 1
jmp xchain126_n56_α
xchain126_n55_β:
jmp xchain126_n57_α
xchain126_n56_α:
bb149_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+32] -> [r12+1480]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 1480], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 1488], rax
# marshal arg1 = nested producer-box slot [r12+1384] -> [r12+1496]
 mov rax, qword ptr [r12 + 1384]
 mov qword ptr [r12 + 1496], rax
 mov rax, qword ptr [r12 + 1392]
 mov qword ptr [r12 + 1504], rax
  .section .rodata
  .Lrkfn309: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn309]
 lea rsi, [r12 + 1480]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1464], rax
 mov qword ptr [r12 + 1472], rdx
 cmp eax, 99
 je xchain126_n92_β
 jmp xchain126_n55_β
 xchain126_n56_β:
 jmp xchain126_n92_β
xchain126_n57_α:
# IR_EVERY
 jmp xchain126_n58_α
 xchain126_n57_β:
 jmp xchain126_n58_α
xchain126_n58_α:
bb151_α:
# BOX IR_CALL copy(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+1528]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1528], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1536], rax
  .section .rodata
  .Lrkfn312: .string "copy"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn312]
 lea rsi, [r12 + 1528]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1512], rax
 mov qword ptr [r12 + 1520], rdx
 cmp eax, 99
 je xchain126_n60_α
 jmp xchain126_n59_α
 xchain126_n58_β:
 jmp xchain126_n60_α
xchain126_n59_α:
bb152_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1512]
 mov rdx, qword ptr [r12 + 1520]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 1544], rax
 mov qword ptr [r12 + 1552], rdx
 jmp xchain126_n60_α
 xchain126_n59_β:
 jmp xchain126_n60_α
xchain126_n60_α:
bb153_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+1576]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1576], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1584], rax
  .section .rodata
  .Lrkfn315: .string "sort"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn315]
 lea rsi, [r12 + 1576]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1560], rax
 mov qword ptr [r12 + 1568], rdx
 cmp eax, 99
 je xchain126_n62_α
 jmp xchain126_n61_α
 xchain126_n60_β:
 jmp xchain126_n62_α
xchain126_n61_α:
bb154_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1560]
 mov rdx, qword ptr [r12 + 1568]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 1592], rax
 mov qword ptr [r12 + 1600], rdx
 jmp xchain126_n62_α
 xchain126_n61_β:
 jmp xchain126_n62_α
xchain126_n62_α:
# IR_LIT_S
bb155_α:
 mov qword ptr [r12 + 1608], 1
 mov rax, qword ptr [rip + .Lx317_0]
 mov qword ptr [r12 + 1616], rax
 jmp xchain126_n63_α
 xchain126_n62_β:
 jmp xchain126_n92_β
.Lx317_0:
 .quad .Lx317_0_s
.Lx317_0_s:
 .string " "
xchain126_n63_α:
# IR_VAR
bb156_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain126_n64_α
 xchain126_n63_β:
 jmp xchain126_n64_α
xchain126_n64_α:
xaltg320_a0_start:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xaltg320_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1648]
 mov qword ptr [r12 + 1624], rax
 mov rax, qword ptr [r12 + 1656]
 mov qword ptr [r12 + 1632], rax
 mov qword ptr [r12 + 1640], 1
jmp xchain126_n65_α
xaltg320_a1_start:
# IR_VAR
bb158_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xbang324_iter_done
 xbang324_iter_β:
 jmp xaltg320_a2_start
xbang324_iter_done:
# IR_LIST_BANG
bb159_α:
 mov qword ptr [r12 + 1664], 0
.Lx328_0:
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 mov rdx, qword ptr [r12 + 1664]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 1672], rax
 mov qword ptr [r12 + 1680], rdx
 cmp rax, 99
 je xaltg320_a2_start
 jmp xbang323_iter_done
 xbang323_iter_β:
 inc qword ptr [r12 + 1664]
 jmp .Lx328_0
xbang323_iter_done:
# IR_LIST_BANG
bb160_α:
 mov qword ptr [r12 + 1688], 0
.Lx330_0:
 mov rdi, qword ptr [r12 + 1672]
 mov rsi, qword ptr [r12 + 1680]
 mov rdx, qword ptr [r12 + 1688]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 1696], rax
 mov qword ptr [r12 + 1704], rdx
 cmp rax, 99
 je xaltg320_a2_start
 jmp xaltg320_a1_succ
 xaltg320_a1_beta:
 inc qword ptr [r12 + 1688]
 jmp .Lx330_0
xaltg320_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1696]
 mov qword ptr [r12 + 1624], rax
 mov rax, qword ptr [r12 + 1704]
 mov qword ptr [r12 + 1632], rax
 mov qword ptr [r12 + 1640], 1
jmp xchain126_n65_α
xaltg320_a2_start:
# IR_LIT_S
bb161_α:
 mov qword ptr [r12 + 1712], 1
 mov rax, qword ptr [rip + .Lx332_0]
 mov qword ptr [r12 + 1720], rax
 jmp xaltg320_a2_succ
 xaltg320_a2_beta:
 jmp xchain126_n66_α
.Lx332_0:
 .quad .Lx332_0_s
.Lx332_0_s:
 .string "\n"
xaltg320_a2_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1712]
 mov qword ptr [r12 + 1624], rax
 mov rax, qword ptr [r12 + 1720]
 mov qword ptr [r12 + 1632], rax
 mov qword ptr [r12 + 1640], 1
jmp xchain126_n65_α
xchain126_n64_β:
jmp xchain126_n66_α
xchain126_n65_α:
bb162_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+32] -> [r12+1744]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 1744], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 1752], rax
# marshal arg1 = nested producer-box slot [r12+1624] -> [r12+1760]
 mov rax, qword ptr [r12 + 1624]
 mov qword ptr [r12 + 1760], rax
 mov rax, qword ptr [r12 + 1632]
 mov qword ptr [r12 + 1768], rax
  .section .rodata
  .Lrkfn335: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn335]
 lea rsi, [r12 + 1744]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1728], rax
 mov qword ptr [r12 + 1736], rdx
 cmp eax, 99
 je xchain126_n92_β
 jmp xchain126_n64_β
 xchain126_n65_β:
 jmp xchain126_n92_β
xchain126_n66_α:
# IR_EVERY
 jmp xchain126_n67_α
 xchain126_n66_β:
 jmp xchain126_n67_α
xchain126_n67_α:
bb164_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+1792]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1792], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1800], rax
# marshal arg1 = LIT_I -> [r12+1808]
 mov qword ptr [r12 + 1808], 6
 movabs rax, 1
 mov qword ptr [r12 + 1816], rax
  .section .rodata
  .Lrkfn338: .string "sort"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn338]
 lea rsi, [r12 + 1792]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1776], rax
 mov qword ptr [r12 + 1784], rdx
 cmp eax, 99
 je xchain126_n69_α
 jmp xchain126_n68_α
 xchain126_n67_β:
 jmp xchain126_n69_α
xchain126_n68_α:
bb165_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1776]
 mov rdx, qword ptr [r12 + 1784]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 1824], rax
 mov qword ptr [r12 + 1832], rdx
 jmp xchain126_n69_α
 xchain126_n68_β:
 jmp xchain126_n69_α
xchain126_n69_α:
# IR_LIT_S
bb166_α:
 mov qword ptr [r12 + 1840], 1
 mov rax, qword ptr [rip + .Lx340_0]
 mov qword ptr [r12 + 1848], rax
 jmp xchain126_n70_α
 xchain126_n69_β:
 jmp xchain126_n92_β
.Lx340_0:
 .quad .Lx340_0_s
.Lx340_0_s:
 .string " "
xchain126_n70_α:
# IR_VAR
bb167_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain126_n71_α
 xchain126_n70_β:
 jmp xchain126_n71_α
xchain126_n71_α:
xaltg343_a0_start:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xaltg343_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1880]
 mov qword ptr [r12 + 1856], rax
 mov rax, qword ptr [r12 + 1888]
 mov qword ptr [r12 + 1864], rax
 mov qword ptr [r12 + 1872], 1
jmp xchain126_n72_α
xaltg343_a1_start:
# IR_VAR
bb169_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xbang347_iter_done
 xbang347_iter_β:
 jmp xaltg343_a2_start
xbang347_iter_done:
# IR_LIST_BANG
bb170_α:
 mov qword ptr [r12 + 1896], 0
.Lx351_0:
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 mov rdx, qword ptr [r12 + 1896]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 1904], rax
 mov qword ptr [r12 + 1912], rdx
 cmp rax, 99
 je xaltg343_a2_start
 jmp xbang346_iter_done
 xbang346_iter_β:
 inc qword ptr [r12 + 1896]
 jmp .Lx351_0
xbang346_iter_done:
# IR_LIST_BANG
bb171_α:
 mov qword ptr [r12 + 1920], 0
.Lx353_0:
 mov rdi, qword ptr [r12 + 1904]
 mov rsi, qword ptr [r12 + 1912]
 mov rdx, qword ptr [r12 + 1920]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 1928], rax
 mov qword ptr [r12 + 1936], rdx
 cmp rax, 99
 je xaltg343_a2_start
 jmp xaltg343_a1_succ
 xaltg343_a1_beta:
 inc qword ptr [r12 + 1920]
 jmp .Lx353_0
xaltg343_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1928]
 mov qword ptr [r12 + 1856], rax
 mov rax, qword ptr [r12 + 1936]
 mov qword ptr [r12 + 1864], rax
 mov qword ptr [r12 + 1872], 1
jmp xchain126_n72_α
xaltg343_a2_start:
# IR_LIT_S
bb172_α:
 mov qword ptr [r12 + 1944], 1
 mov rax, qword ptr [rip + .Lx355_0]
 mov qword ptr [r12 + 1952], rax
 jmp xaltg343_a2_succ
 xaltg343_a2_beta:
 jmp xchain126_n73_α
.Lx355_0:
 .quad .Lx355_0_s
.Lx355_0_s:
 .string "\n"
xaltg343_a2_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1944]
 mov qword ptr [r12 + 1856], rax
 mov rax, qword ptr [r12 + 1952]
 mov qword ptr [r12 + 1864], rax
 mov qword ptr [r12 + 1872], 1
jmp xchain126_n72_α
xchain126_n71_β:
jmp xchain126_n73_α
xchain126_n72_α:
bb173_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+32] -> [r12+1976]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 1976], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 1984], rax
# marshal arg1 = nested producer-box slot [r12+1856] -> [r12+1992]
 mov rax, qword ptr [r12 + 1856]
 mov qword ptr [r12 + 1992], rax
 mov rax, qword ptr [r12 + 1864]
 mov qword ptr [r12 + 2000], rax
  .section .rodata
  .Lrkfn358: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn358]
 lea rsi, [r12 + 1976]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1960], rax
 mov qword ptr [r12 + 1968], rdx
 cmp eax, 99
 je xchain126_n92_β
 jmp xchain126_n71_β
 xchain126_n72_β:
 jmp xchain126_n92_β
xchain126_n73_α:
# IR_EVERY
 jmp xchain126_n74_α
 xchain126_n73_β:
 jmp xchain126_n74_α
xchain126_n74_α:
bb175_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+2024]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 2024], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 2032], rax
# marshal arg1 = LIT_I -> [r12+2040]
 mov qword ptr [r12 + 2040], 6
 movabs rax, 2
 mov qword ptr [r12 + 2048], rax
  .section .rodata
  .Lrkfn361: .string "sort"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn361]
 lea rsi, [r12 + 2024]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2008], rax
 mov qword ptr [r12 + 2016], rdx
 cmp eax, 99
 je xchain126_n76_α
 jmp xchain126_n75_α
 xchain126_n74_β:
 jmp xchain126_n76_α
xchain126_n75_α:
bb176_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2008]
 mov rdx, qword ptr [r12 + 2016]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 2056], rax
 mov qword ptr [r12 + 2064], rdx
 jmp xchain126_n76_α
 xchain126_n75_β:
 jmp xchain126_n76_α
xchain126_n76_α:
# IR_LIT_S
bb177_α:
 mov qword ptr [r12 + 2072], 1
 mov rax, qword ptr [rip + .Lx363_0]
 mov qword ptr [r12 + 2080], rax
 jmp xchain126_n77_α
 xchain126_n76_β:
 jmp xchain126_n92_β
.Lx363_0:
 .quad .Lx363_0_s
.Lx363_0_s:
 .string " "
xchain126_n77_α:
# IR_VAR
bb178_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain126_n78_α
 xchain126_n77_β:
 jmp xchain126_n78_α
xchain126_n78_α:
xaltg366_a0_start:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xaltg366_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 2112]
 mov qword ptr [r12 + 2088], rax
 mov rax, qword ptr [r12 + 2120]
 mov qword ptr [r12 + 2096], rax
 mov qword ptr [r12 + 2104], 1
jmp xchain126_n79_α
xaltg366_a1_start:
# IR_VAR
bb180_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xbang370_iter_done
 xbang370_iter_β:
 jmp xaltg366_a2_start
xbang370_iter_done:
# IR_LIST_BANG
bb181_α:
 mov qword ptr [r12 + 2128], 0
.Lx374_0:
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 mov rdx, qword ptr [r12 + 2128]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 2136], rax
 mov qword ptr [r12 + 2144], rdx
 cmp rax, 99
 je xaltg366_a2_start
 jmp xbang369_iter_done
 xbang369_iter_β:
 inc qword ptr [r12 + 2128]
 jmp .Lx374_0
xbang369_iter_done:
# IR_LIST_BANG
bb182_α:
 mov qword ptr [r12 + 2152], 0
.Lx376_0:
 mov rdi, qword ptr [r12 + 2136]
 mov rsi, qword ptr [r12 + 2144]
 mov rdx, qword ptr [r12 + 2152]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 2160], rax
 mov qword ptr [r12 + 2168], rdx
 cmp rax, 99
 je xaltg366_a2_start
 jmp xaltg366_a1_succ
 xaltg366_a1_beta:
 inc qword ptr [r12 + 2152]
 jmp .Lx376_0
xaltg366_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 2160]
 mov qword ptr [r12 + 2088], rax
 mov rax, qword ptr [r12 + 2168]
 mov qword ptr [r12 + 2096], rax
 mov qword ptr [r12 + 2104], 1
jmp xchain126_n79_α
xaltg366_a2_start:
# IR_LIT_S
bb183_α:
 mov qword ptr [r12 + 2176], 1
 mov rax, qword ptr [rip + .Lx378_0]
 mov qword ptr [r12 + 2184], rax
 jmp xaltg366_a2_succ
 xaltg366_a2_beta:
 jmp xchain126_n80_α
.Lx378_0:
 .quad .Lx378_0_s
.Lx378_0_s:
 .string "\n"
xaltg366_a2_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 2176]
 mov qword ptr [r12 + 2088], rax
 mov rax, qword ptr [r12 + 2184]
 mov qword ptr [r12 + 2096], rax
 mov qword ptr [r12 + 2104], 1
jmp xchain126_n79_α
xchain126_n78_β:
jmp xchain126_n80_α
xchain126_n79_α:
bb184_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+32] -> [r12+2208]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 2208], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 2216], rax
# marshal arg1 = nested producer-box slot [r12+2088] -> [r12+2224]
 mov rax, qword ptr [r12 + 2088]
 mov qword ptr [r12 + 2224], rax
 mov rax, qword ptr [r12 + 2096]
 mov qword ptr [r12 + 2232], rax
  .section .rodata
  .Lrkfn381: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn381]
 lea rsi, [r12 + 2208]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2192], rax
 mov qword ptr [r12 + 2200], rdx
 cmp eax, 99
 je xchain126_n92_β
 jmp xchain126_n78_β
 xchain126_n79_β:
 jmp xchain126_n92_β
xchain126_n80_α:
# IR_EVERY
 jmp xchain126_n81_α
 xchain126_n80_β:
 jmp xchain126_n81_α
xchain126_n81_α:
bb186_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+2256]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 2256], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 2264], rax
# marshal arg1 = LIT_I -> [r12+2272]
 mov qword ptr [r12 + 2272], 6
 movabs rax, 3
 mov qword ptr [r12 + 2280], rax
  .section .rodata
  .Lrkfn384: .string "sort"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn384]
 lea rsi, [r12 + 2256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2240], rax
 mov qword ptr [r12 + 2248], rdx
 cmp eax, 99
 je xchain126_n83_α
 jmp xchain126_n82_α
 xchain126_n81_β:
 jmp xchain126_n83_α
xchain126_n82_α:
bb187_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2240]
 mov rdx, qword ptr [r12 + 2248]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 2288], rax
 mov qword ptr [r12 + 2296], rdx
 jmp xchain126_n83_α
 xchain126_n82_β:
 jmp xchain126_n83_α
xchain126_n83_α:
# IR_LIT_S
bb188_α:
 mov qword ptr [r12 + 2304], 1
 mov rax, qword ptr [rip + .Lx386_0]
 mov qword ptr [r12 + 2312], rax
 jmp xchain126_n84_α
 xchain126_n83_β:
 jmp xchain126_n92_β
.Lx386_0:
 .quad .Lx386_0_s
.Lx386_0_s:
 .string " "
xchain126_n84_α:
# IR_VAR
bb189_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain126_n85_α
 xchain126_n84_β:
 jmp xchain126_n85_α
xchain126_n85_α:
xaltg389_a0_start:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xaltg389_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 2344]
 mov qword ptr [r12 + 2320], rax
 mov rax, qword ptr [r12 + 2352]
 mov qword ptr [r12 + 2328], rax
 mov qword ptr [r12 + 2336], 1
jmp xchain126_n86_α
xaltg389_a1_start:
# IR_VAR
bb191_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xbang392_iter_done
 xbang392_iter_β:
 jmp xaltg389_a2_start
xbang392_iter_done:
# IR_LIST_BANG
bb192_α:
 mov qword ptr [r12 + 2360], 0
.Lx396_0:
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 mov rdx, qword ptr [r12 + 2360]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 2368], rax
 mov qword ptr [r12 + 2376], rdx
 cmp rax, 99
 je xaltg389_a2_start
 jmp xaltg389_a1_succ
 xaltg389_a1_beta:
 inc qword ptr [r12 + 2360]
 jmp .Lx396_0
xaltg389_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 2368]
 mov qword ptr [r12 + 2320], rax
 mov rax, qword ptr [r12 + 2376]
 mov qword ptr [r12 + 2328], rax
 mov qword ptr [r12 + 2336], 1
jmp xchain126_n86_α
xaltg389_a2_start:
# IR_LIT_S
bb193_α:
 mov qword ptr [r12 + 2384], 1
 mov rax, qword ptr [rip + .Lx398_0]
 mov qword ptr [r12 + 2392], rax
 jmp xaltg389_a2_succ
 xaltg389_a2_beta:
 jmp xchain126_n87_α
.Lx398_0:
 .quad .Lx398_0_s
.Lx398_0_s:
 .string "\n"
xaltg389_a2_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 2384]
 mov qword ptr [r12 + 2320], rax
 mov rax, qword ptr [r12 + 2392]
 mov qword ptr [r12 + 2328], rax
 mov qword ptr [r12 + 2336], 1
jmp xchain126_n86_α
xchain126_n85_β:
jmp xchain126_n87_α
xchain126_n86_α:
bb194_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+32] -> [r12+2416]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 2416], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 2424], rax
# marshal arg1 = nested producer-box slot [r12+2320] -> [r12+2432]
 mov rax, qword ptr [r12 + 2320]
 mov qword ptr [r12 + 2432], rax
 mov rax, qword ptr [r12 + 2328]
 mov qword ptr [r12 + 2440], rax
  .section .rodata
  .Lrkfn401: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn401]
 lea rsi, [r12 + 2416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2400], rax
 mov qword ptr [r12 + 2408], rdx
 cmp eax, 99
 je xchain126_n92_β
 jmp xchain126_n85_β
 xchain126_n86_β:
 jmp xchain126_n92_β
xchain126_n87_α:
# IR_EVERY
 jmp xchain126_n88_α
 xchain126_n87_β:
 jmp xchain126_n88_α
xchain126_n88_α:
bb196_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+2464]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 2464], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 2472], rax
# marshal arg1 = LIT_I -> [r12+2480]
 mov qword ptr [r12 + 2480], 6
 movabs rax, 4
 mov qword ptr [r12 + 2488], rax
  .section .rodata
  .Lrkfn404: .string "sort"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn404]
 lea rsi, [r12 + 2464]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2448], rax
 mov qword ptr [r12 + 2456], rdx
 cmp eax, 99
 je xchain126_n90_α
 jmp xchain126_n89_α
 xchain126_n88_β:
 jmp xchain126_n90_α
xchain126_n89_α:
bb197_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2448]
 mov rdx, qword ptr [r12 + 2456]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 2496], rax
 mov qword ptr [r12 + 2504], rdx
 jmp xchain126_n90_α
 xchain126_n89_β:
 jmp xchain126_n90_α
xchain126_n90_α:
# IR_LIT_S
bb198_α:
 mov qword ptr [r12 + 2512], 1
 mov rax, qword ptr [rip + .Lx406_0]
 mov qword ptr [r12 + 2520], rax
 jmp xchain126_n91_α
 xchain126_n90_β:
 jmp xchain126_n92_β
.Lx406_0:
 .quad .Lx406_0_s
.Lx406_0_s:
 .string " "
xchain126_n91_α:
# IR_VAR
bb199_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain126_n92_α
 xchain126_n91_β:
 jmp xchain126_n92_α
xchain126_n92_α:
xaltg409_a0_start:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xaltg409_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 2552]
 mov qword ptr [r12 + 2528], rax
 mov rax, qword ptr [r12 + 2560]
 mov qword ptr [r12 + 2536], rax
 mov qword ptr [r12 + 2544], 1
jmp xchain126_n93_α
xaltg409_a1_start:
# IR_VAR
bb201_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xbang412_iter_done
 xbang412_iter_β:
 jmp xaltg409_a2_start
xbang412_iter_done:
# IR_LIST_BANG
bb202_α:
 mov qword ptr [r12 + 2568], 0
.Lx416_0:
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 mov rdx, qword ptr [r12 + 2568]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 2576], rax
 mov qword ptr [r12 + 2584], rdx
 cmp rax, 99
 je xaltg409_a2_start
 jmp xaltg409_a1_succ
 xaltg409_a1_beta:
 inc qword ptr [r12 + 2568]
 jmp .Lx416_0
xaltg409_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 2576]
 mov qword ptr [r12 + 2528], rax
 mov rax, qword ptr [r12 + 2584]
 mov qword ptr [r12 + 2536], rax
 mov qword ptr [r12 + 2544], 1
jmp xchain126_n93_α
xaltg409_a2_start:
# IR_LIT_S
bb203_α:
 mov qword ptr [r12 + 2592], 1
 mov rax, qword ptr [rip + .Lx418_0]
 mov qword ptr [r12 + 2600], rax
 jmp xaltg409_a2_succ
 xaltg409_a2_beta:
 jmp xchain126_n94_α
.Lx418_0:
 .quad .Lx418_0_s
.Lx418_0_s:
 .string "\n"
xaltg409_a2_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 2592]
 mov qword ptr [r12 + 2528], rax
 mov rax, qword ptr [r12 + 2600]
 mov qword ptr [r12 + 2536], rax
 mov qword ptr [r12 + 2544], 1
jmp xchain126_n93_α
xchain126_n92_β:
jmp xchain126_n94_α
xchain126_n93_α:
bb204_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+32] -> [r12+2624]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 2624], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 2632], rax
# marshal arg1 = nested producer-box slot [r12+2528] -> [r12+2640]
 mov rax, qword ptr [r12 + 2528]
 mov qword ptr [r12 + 2640], rax
 mov rax, qword ptr [r12 + 2536]
 mov qword ptr [r12 + 2648], rax
  .section .rodata
  .Lrkfn421: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn421]
 lea rsi, [r12 + 2624]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2608], rax
 mov qword ptr [r12 + 2616], rdx
 cmp eax, 99
 je xchain126_n92_β
 jmp xchain126_n92_β
 xchain126_n93_β:
 jmp xchain126_n92_β
xchain126_n94_α:
# IR_EVERY
 jmp xchain126_n95_α
 xchain126_n94_β:
 jmp xchain126_n95_α
xchain126_n95_α:
# IR_RETURN
bb206_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_tbltest_γ
proc_tbltest_β:
jmp proc_tbltest_ω
proc_tbltest_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_tbltest_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_randval_α
proc_randval_α:
#=======================================================================================================================
    .global proc_randval_α
    .global proc_randval_β
    .global proc_randval_γ
    .global proc_randval_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_randval_α_body:
xchain424_n0_α:
# IR_LIT_I
bb207_α:
 mov qword ptr [r12 + 16], 6
 mov rax, qword ptr [rip + .Lx425_0]
 mov qword ptr [r12 + 24], rax
 jmp xchain424_n1_α
 xchain424_n0_β:
 jmp proc_randval_ω
.Lx425_0:
 .quad 4
xchain424_n1_α:
xchain424_n2_α:
# IR_LIT_I
bb209_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx428_0]
 mov qword ptr [r12 + 72], rax
 jmp xcase427_key0_done
 xcase427_key0_β:
 jmp proc_randval_ω
.Lx428_0:
 .quad 1
xcase427_key0_done:
# IR_CASE_ARM
 lea rdi, [r12 + 32]
 lea rsi, [r12 + 64]
 call rt_case_eq@PLT
 test eax, eax
 jz xcase427_next0
 jmp xcase427_take0
 xcase427_cmp0_β:
 jmp xcase427_next0
xcase427_take0:
xcase427_val0_done:
# IR_CASE_ARM take
 mov rax, qword ptr [r12 + 80]
 mov rdx, qword ptr [r12 + 88]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 jmp xchain424_n3_α
 xcase427_take0_β:
 jmp proc_randval_ω
xcase427_next0:
# IR_LIT_I
bb213_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx432_0]
 mov qword ptr [r12 + 104], rax
 jmp xcase427_key1_done
 xcase427_key1_β:
 jmp proc_randval_ω
.Lx432_0:
 .quad 2
xcase427_key1_done:
# IR_CASE_ARM
 lea rdi, [r12 + 32]
 lea rsi, [r12 + 96]
 call rt_case_eq@PLT
 test eax, eax
 jz xcase427_next1
 jmp xcase427_take1
 xcase427_cmp1_β:
 jmp xcase427_next1
xcase427_take1:
xcaseop434_c0_done:
# IR_LIT_F
bb216_α:
 mov qword ptr [r12 + 128], 7
 mov rax, qword ptr [rip + .Lx436_0]
 mov qword ptr [r12 + 136], rax
 jmp xcaseop434_c1_done
 xcaseop434_c1_b:
 jmp proc_randval_ω
.Lx436_0:
 .quad 4621819117588971520
xcaseop434_c1_done:
jmp xbinop437_lhs_done
xbinop437_lhs_done:
jmp xbinop437_rhs_done
xbinop437_rhs_done:
bb217_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 mov rdx, qword ptr [r12 + 128]
 mov rcx, qword ptr [r12 + 136]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_randval_ω
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xcase427_val1_done
 xcase427_val1_β:
 jmp proc_randval_ω
xcase427_val1_done:
# IR_CASE_ARM take
 mov rax, qword ptr [r12 + 144]
 mov rdx, qword ptr [r12 + 152]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 jmp xchain424_n3_α
 xcase427_take1_β:
 jmp proc_randval_ω
xcase427_next1:
# IR_LIT_I
bb219_α:
 mov qword ptr [r12 + 160], 6
 mov rax, qword ptr [rip + .Lx440_0]
 mov qword ptr [r12 + 168], rax
 jmp xcase427_key2_done
 xcase427_key2_β:
 jmp proc_randval_ω
.Lx440_0:
 .quad 3
xcase427_key2_done:
# IR_CASE_ARM
 lea rdi, [r12 + 32]
 lea rsi, [r12 + 160]
 call rt_case_eq@PLT
 test eax, eax
 jz xcase427_next2
 jmp xcase427_take2
 xcase427_cmp2_β:
 jmp xcase427_next2
xcase427_take2:
xcaseop442_c0_done:
xcaseop442_c1_done:
xbinop445_lhs_done:
jmp xbinop445_rhs_done
xbinop445_rhs_done:
xcase427_val2_done:
 lea rdi, [rip + .S1]
 call rt_bomb@PLT
 ud2
xcase427_next2:
# IR_LIT_I
bb226_α:
 mov qword ptr [r12 + 192], 6
 mov rax, qword ptr [rip + .Lx449_0]
 mov qword ptr [r12 + 200], rax
 jmp xcase427_key3_done
 xcase427_key3_β:
 jmp proc_randval_ω
.Lx449_0:
 .quad 4
xcase427_key3_done:
# IR_CASE_ARM
 lea rdi, [r12 + 32]
 lea rsi, [r12 + 192]
 call rt_case_eq@PLT
 test eax, eax
 jz xcase427_next3
 jmp xcase427_take3
 xcase427_cmp3_β:
 jmp xcase427_next3
xcase427_take3:
# [walk_bb_node: kind=7 unhandled]
xcaseop451_c0_done:
xcaseop451_c1_done:
# [walk_bb_node: kind=7 unhandled]
xbinop454_lhs_done:
jmp xbinop454_rhs_done
xbinop454_rhs_done:
xcase427_val3_done:
 lea rdi, [rip + .S1]
 call rt_bomb@PLT
 ud2
xcase427_next3:
jmp proc_randval_ω
xchain424_n3_α:
# IR_RETURN
bb233_α:
 mov rax, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_randval_γ
proc_randval_β:
jmp proc_randval_ω
proc_randval_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_randval_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_check_α
proc_check_α:
#=======================================================================================================================
    .global proc_check_α
    .global proc_check_β
    .global proc_check_γ
    .global proc_check_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_check_α_body:
xchain459_n0_α:
# IR_VAR
bb234_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain459_n1_α
 xchain459_n0_β:
 jmp xchain459_n6_α
xchain459_n1_α:
# IR_UNOP
bb235_α:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 call rt_size_d@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain459_n2_α
 xchain459_n1_β:
 jmp xchain459_n6_α
xchain459_n2_α:
# IR_VAR
bb236_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain459_n3_α
 xchain459_n2_β:
 jmp xchain459_n6_α
xchain459_n3_α:
# IR_UNOP
bb237_α:
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 call rt_size_d@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain459_n4_α
 xchain459_n3_β:
 jmp xchain459_n6_α
xchain459_n4_α:
bb238_α:
# IR_BINOP_RELOP
 mov rax, qword ptr [r12 + 120]
 mov rcx, qword ptr [r12 + 136]
 cmp rax, rcx
 je xchain459_n6_α
 mov rcx, qword ptr [r12 + 128]
 mov qword ptr [r12 + 144], rcx
 mov rcx, qword ptr [r12 + 136]
 mov qword ptr [r12 + 152], rcx
 jmp xchain459_n5_α
 xchain459_n4_β:
 jmp xchain459_n6_α
xchain459_n5_α:
bb239_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+176]
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx467_0]
 mov qword ptr [r12 + 184], rax
 jmp .Lx467_1
.Lx467_0:
 .quad .Lx467_0_s
.Lx467_0_s:
 .string "different sizes: "
.Lx467_1:
# marshal arg0 = varslot [r12+16] -> [r12+240]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 248], rax
  .section .rodata
  .Lcallfn468: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn468]
 lea rsi, [r12 + 240]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
# marshal arg2 = LIT_S (string REG-RO sealed in-band) -> [r12+208]
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx467_4]
 mov qword ptr [r12 + 216], rax
 jmp .Lx467_5
.Lx467_4:
 .quad .Lx467_4_s
.Lx467_4_s:
 .string " / "
.Lx467_5:
# marshal arg0 = varslot [r12+32] -> [r12+256]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lcallfn469: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn469]
 lea rsi, [r12 + 256]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
  .section .rodata
  .Lrkfn470: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn470]
 lea rsi, [r12 + 176]
 mov edx, 4
 call rt_call_arr@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je xchain459_n6_α
 jmp xchain459_n6_α
 xchain459_n5_β:
 jmp xchain459_n6_α
xchain459_n6_α:
# IR_LIT_I
bb240_α:
 mov qword ptr [r12 + 272], 6
 mov rax, qword ptr [rip + .Lx471_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain459_n7_α
 xchain459_n6_β:
 jmp xchain459_n15_β
.Lx471_0:
 .quad 1
xchain459_n7_α:
# IR_VAR
bb241_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain459_n8_α
 xchain459_n7_β:
 jmp xchain459_n15_β
xchain459_n8_α:
# IR_UNOP
bb242_α:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 call rt_size_d@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain459_n9_α
 xchain459_n8_β:
 jmp xchain459_n15_β
xchain459_n9_α:
# IR_TO
bb243_α:
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 320], rax
.Lx476_0:
 mov rax, qword ptr [r12 + 320]
 mov rcx, qword ptr [r12 + 296]
 cmp rax, rcx
 jg xchain459_n17_α
 mov qword ptr [r12 + 304], 6
 mov qword ptr [r12 + 312], rax
 jmp xchain459_n10_α
 xchain459_n9_β:
 inc qword ptr [r12 + 320]
 jmp .Lx476_0
xchain459_n10_α:
bb244_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 304]
 mov rdx, qword ptr [r12 + 312]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov qword ptr [r12 + 328], rax
 mov qword ptr [r12 + 336], rdx
 jmp xchain459_n11_α
 xchain459_n10_β:
 jmp xchain459_n15_β
xchain459_n11_α:
bb245_α:
# BOX IR_CALL [](...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+16] -> [r12+360]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 360], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 368], rax
# marshal arg1 = varslot [r12+48] -> [r12+376]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 376], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 384], rax
  .section .rodata
  .Lbynamefn479: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn479]
 lea rsi, [r12 + 360]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 344], rax
 mov qword ptr [r12 + 352], rdx
 cmp eax, 99
 je xchain459_n13_α
 jmp xchain459_n12_α
xchain459_n11_β:
 jmp xchain459_n13_α
xchain459_n12_α:
bb246_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 344]
 mov rdx, qword ptr [r12 + 352]
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 mov qword ptr [r12 + 392], rax
 mov qword ptr [r12 + 400], rdx
 jmp xchain459_n13_α
 xchain459_n12_β:
 jmp xchain459_n13_α
xchain459_n13_α:
bb247_α:
# BOX IR_CALL [](...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+32] -> [r12+424]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 424], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 432], rax
# marshal arg1 = varslot [r12+48] -> [r12+440]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 440], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 448], rax
  .section .rodata
  .Lbynamefn482: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn482]
 lea rsi, [r12 + 424]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 408], rax
 mov qword ptr [r12 + 416], rdx
 cmp eax, 99
 je xchain459_n15_α
 jmp xchain459_n14_α
xchain459_n13_β:
 jmp xchain459_n15_α
xchain459_n14_α:
bb248_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 408]
 mov rdx, qword ptr [r12 + 416]
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 mov qword ptr [r12 + 456], rax
 mov qword ptr [r12 + 464], rdx
 jmp xchain459_n15_α
 xchain459_n14_β:
 jmp xchain459_n15_α
xchain459_n15_α:
xaltg484_a0_start:
bb249_α:
# BOX IR_CALL [](...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+16] -> [r12+512]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 520], rax
# marshal arg1 = varslot [r12+48] -> [r12+528]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 536], rax
  .section .rodata
  .Lbynamefn486: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn486]
 lea rsi, [r12 + 512]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 cmp eax, 99
 je xaltg484_a1_start
 jmp xaltg484_a0_succ
xaltg484_a0_beta:
 jmp xaltg484_a1_start
xaltg484_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 472], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], 1
jmp xchain459_n16_α
xaltg484_a1_start:
# IR_KEYWORD_null
bb250_α:
 mov qword ptr [r12 + 544], 0
 mov qword ptr [r12 + 552], 0
 jmp xaltg484_a1_succ
 xaltg484_a1_beta:
 jmp proc_check_ω
xaltg484_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 472], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], 1
jmp xchain459_n16_α
xchain459_n15_β:
jmp proc_check_ω
xchain459_n16_α:
bb251_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 472]
 mov rdx, qword ptr [r12 + 480]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp proc_check_γ
 xchain459_n16_β:
 jmp proc_check_ω
xchain459_n17_α:
# IR_EVERY
 jmp xchain459_n18_α
 xchain459_n17_β:
 jmp xchain459_n18_α
xchain459_n18_α:
# IR_RETURN
bb253_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_check_γ
proc_check_β:
jmp proc_check_ω
proc_check_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_check_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_wlist_α
proc_wlist_α:
#=======================================================================================================================
    .global proc_wlist_α
    .global proc_wlist_β
    .global proc_wlist_γ
    .global proc_wlist_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_wlist_α_body:
xchain493_n0_α:
# IR_VAR
bb254_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain493_n1_α
 xchain493_n0_β:
 jmp xchain493_n4_α
xchain493_n1_α:
# IR_UNOP
bb255_α:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 call rt_size_d@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp xchain493_n2_α
 xchain493_n1_β:
 jmp xchain493_n4_α
xchain493_n2_α:
# IR_LIT_S
bb256_α:
 mov qword ptr [r12 + 48], 1
 mov rax, qword ptr [rip + .Lx497_0]
 mov qword ptr [r12 + 56], rax
 jmp xchain493_n3_α
 xchain493_n2_β:
 jmp xchain493_n4_α
.Lx497_0:
 .quad .Lx497_0_s
.Lx497_0_s:
 .string ":"
xchain493_n3_α:
bb257_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+32] -> [r12+80]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 88], rax
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+96]
 mov qword ptr [r12 + 96], 1
 mov rax, qword ptr [rip + .Lx498_2]
 mov qword ptr [r12 + 104], rax
 jmp .Lx498_3
.Lx498_2:
 .quad .Lx498_2_s
.Lx498_2_s:
 .string ":"
.Lx498_3:
  .section .rodata
  .Lrkfn499: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn499]
 lea rsi, [r12 + 80]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je xchain493_n4_α
 jmp xchain493_n4_α
 xchain493_n3_β:
 jmp xchain493_n4_α
xchain493_n4_α:
xaltg500_a0_start:
bb258_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+152] -> [r12+152]
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 152], rax
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 160], rax
# marshal arg1 = LIT_I -> [r12+168]
 mov qword ptr [r12 + 168], 6
 movabs rax, 4
 mov qword ptr [r12 + 176], rax
  .section .rodata
  .Lrkfn502: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn502]
 lea rsi, [r12 + 152]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 136], rax
 mov qword ptr [r12 + 144], rdx
 cmp eax, 99
 je xaltg500_a1_start
 jmp xaltg500_a0_succ
 xaltg500_a0_beta:
 jmp xaltg500_a1_start
xaltg500_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 120], rax
 mov qword ptr [r12 + 128], 1
jmp xchain493_n5_α
xaltg500_a1_start:
# IR_LIT_S
bb259_α:
 mov qword ptr [r12 + 184], 1
 mov rax, qword ptr [rip + .Lx504_0]
 mov qword ptr [r12 + 192], rax
 jmp xaltg500_a1_succ
 xaltg500_a1_beta:
 jmp xchain493_n6_α
.Lx504_0:
 .quad .Lx504_0_s
.Lx504_0_s:
 .string "\n"
xaltg500_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 120], rax
 mov qword ptr [r12 + 128], 1
jmp xchain493_n5_α
xchain493_n4_β:
jmp xchain493_n6_α
xchain493_n5_α:
bb260_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+112] -> [r12+216]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 216], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 224], rax
  .section .rodata
  .Lrkfn507: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn507]
 lea rsi, [r12 + 216]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 200], rax
 mov qword ptr [r12 + 208], rdx
 cmp eax, 99
 je xchain493_n4_β
 jmp xchain493_n4_β
 xchain493_n5_β:
 jmp xchain493_n4_β
xchain493_n6_α:
bb261_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+152] -> [r12+248]
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 248], rax
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 256], rax
# marshal arg1 = LIT_I -> [r12+264]
 mov qword ptr [r12 + 264], 6
 movabs rax, 4
 mov qword ptr [r12 + 272], rax
  .section .rodata
  .Lrkfn510: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn510]
 lea rsi, [r12 + 248]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 232], rax
 mov qword ptr [r12 + 240], rdx
 cmp eax, 99
 je xchain493_n7_α
 jmp xevery508_body_β
 xevery508_body_β:
 jmp xchain493_n7_α
# IR_EVERY
 jmp xchain493_n7_α
 xchain493_n6_β:
 jmp xchain493_n7_α
xchain493_n7_α:
# IR_RETURN
bb263_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_wlist_γ
proc_wlist_β:
jmp proc_wlist_ω
proc_wlist_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_wlist_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_copytest_α
proc_copytest_α:
#=======================================================================================================================
    .global proc_copytest_α
    .global proc_copytest_β
    .global proc_copytest_γ
    .global proc_copytest_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_copytest_α_body:
xchain513_n0_α:
bb264_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn515: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn515]
 lea rsi, [r12 + 160]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain513_n1_α
 jmp xchain513_n1_α
 xchain513_n0_β:
 jmp xchain513_n1_α
xchain513_n1_α:
bb265_α:
# BOX IR_CALL MAKELIST(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = LIT_I -> [r12+176]
 mov qword ptr [r12 + 176], 6
 movabs rax, 1
 mov qword ptr [r12 + 184], rax
# marshal arg1 = LIT_I -> [r12+192]
 mov qword ptr [r12 + 192], 6
 movabs rax, 2
 mov qword ptr [r12 + 200], rax
# marshal arg2 = LIT_I -> [r12+208]
 mov qword ptr [r12 + 208], 6
 movabs rax, 3
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lbynamefn517: .string "MAKELIST"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn517]
 lea rsi, [r12 + 176]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je xchain513_n3_α
 jmp xchain513_n2_α
xchain513_n1_β:
 jmp xchain513_n3_α
xchain513_n2_α:
bb266_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain513_n3_α
 xchain513_n2_β:
 jmp xchain513_n3_α
xchain513_n3_α:
bb267_α:
# BOX IR_CALL push(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+16] -> [r12+256]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 264], rax
# marshal arg1 = varslot [r12+16] -> [r12+272]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 280], rax
  .section .rodata
  .Lbynamefn520: .string "push"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn520]
 lea rsi, [r12 + 256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain513_n4_α
 jmp xchain513_n4_α
xchain513_n3_β:
 jmp xchain513_n4_α
xchain513_n4_α:
bb268_α:
# BOX IR_CALL copy(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+304]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 312], rax
  .section .rodata
  .Lrkfn522: .string "copy"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn522]
 lea rsi, [r12 + 304]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je xchain513_n6_α
 jmp xchain513_n5_α
 xchain513_n4_β:
 jmp xchain513_n6_α
xchain513_n5_α:
bb269_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 288]
 mov rdx, qword ptr [r12 + 296]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain513_n6_α
 xchain513_n5_β:
 jmp xchain513_n6_α
xchain513_n6_α:
bb270_α:
# BOX IR_CALL pull(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+32] -> [r12+352]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 360], rax
  .section .rodata
  .Lrkfn525: .string "pull"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn525]
 lea rsi, [r12 + 352]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 cmp eax, 99
 je xchain513_n7_α
 jmp xchain513_n7_α
 xchain513_n6_β:
 jmp xchain513_n7_α
xchain513_n7_α:
bb271_α:
# BOX IR_CALL put(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+32] -> [r12+384]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 392], rax
# marshal arg1 = LIT_I -> [r12+400]
 mov qword ptr [r12 + 400], 6
 movabs rax, 4
 mov qword ptr [r12 + 408], rax
  .section .rodata
  .Lbynamefn527: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn527]
 lea rsi, [r12 + 384]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je xchain513_n8_α
 jmp xchain513_n8_α
xchain513_n7_β:
 jmp xchain513_n8_α
xchain513_n8_α:
# IR_LIT_S
bb272_α:
 mov qword ptr [r12 + 416], 1
 mov rax, qword ptr [rip + .Lx528_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain513_n9_α
 xchain513_n8_β:
 jmp xchain513_n68_β
.Lx528_0:
 .quad .Lx528_0_s
.Lx528_0_s:
 .string " "
xchain513_n9_α:
xaltg529_a0_start:
# IR_LIT_S
bb273_α:
 mov qword ptr [r12 + 456], 1
 mov rax, qword ptr [rip + .Lx530_0]
 mov qword ptr [r12 + 464], rax
 jmp xaltg529_a0_succ
 xaltg529_a0_beta:
 jmp xaltg529_a1_start
.Lx530_0:
 .quad .Lx530_0_s
.Lx530_0_s:
 .string "L1:"
xaltg529_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 440], rax
 mov qword ptr [r12 + 448], 1
jmp xchain513_n10_α
xaltg529_a1_start:
bb274_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+488] -> [r12+488]
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 488], rax
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 496], rax
  .section .rodata
  .Lrkfn533: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn533]
 lea rsi, [r12 + 488]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 472], rax
 mov qword ptr [r12 + 480], rdx
 cmp eax, 99
 je xaltg529_a2_start
 jmp xaltg529_a1_succ
 xaltg529_a1_beta:
 jmp xaltg529_a2_start
xaltg529_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 440], rax
 mov qword ptr [r12 + 448], 1
jmp xchain513_n10_α
xaltg529_a2_start:
# IR_LIT_S
bb275_α:
 mov qword ptr [r12 + 504], 1
 mov rax, qword ptr [rip + .Lx535_0]
 mov qword ptr [r12 + 512], rax
 jmp xaltg529_a2_succ
 xaltg529_a2_beta:
 jmp xchain513_n11_α
.Lx535_0:
 .quad .Lx535_0_s
.Lx535_0_s:
 .string "\n"
xaltg529_a2_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 440], rax
 mov qword ptr [r12 + 448], 1
jmp xchain513_n10_α
xchain513_n9_β:
jmp xchain513_n11_α
xchain513_n10_α:
bb276_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+536]
 mov qword ptr [r12 + 536], 1
 mov rax, qword ptr [rip + .Lx537_0]
 mov qword ptr [r12 + 544], rax
 jmp .Lx537_1
.Lx537_0:
 .quad .Lx537_0_s
.Lx537_0_s:
 .string " "
.Lx537_1:
# marshal arg1 = nested producer-box slot [r12+432] -> [r12+552]
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 552], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 560], rax
  .section .rodata
  .Lrkfn538: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn538]
 lea rsi, [r12 + 536]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 520], rax
 mov qword ptr [r12 + 528], rdx
 cmp eax, 99
 je xchain513_n68_β
 jmp xchain513_n9_β
 xchain513_n10_β:
 jmp xchain513_n68_β
xchain513_n11_α:
# IR_EVERY
 jmp xchain513_n12_α
 xchain513_n11_β:
 jmp xchain513_n12_α
xchain513_n12_α:
# IR_LIT_S
bb278_α:
 mov qword ptr [r12 + 568], 1
 mov rax, qword ptr [rip + .Lx540_0]
 mov qword ptr [r12 + 576], rax
 jmp xchain513_n13_α
 xchain513_n12_β:
 jmp xchain513_n68_β
.Lx540_0:
 .quad .Lx540_0_s
.Lx540_0_s:
 .string " "
xchain513_n13_α:
xaltg541_a0_start:
# IR_LIT_S
bb279_α:
 mov qword ptr [r12 + 608], 1
 mov rax, qword ptr [rip + .Lx542_0]
 mov qword ptr [r12 + 616], rax
 jmp xaltg541_a0_succ
 xaltg541_a0_beta:
 jmp xaltg541_a1_start
.Lx542_0:
 .quad .Lx542_0_s
.Lx542_0_s:
 .string "L2:"
xaltg541_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 584], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], 1
jmp xchain513_n14_α
xaltg541_a1_start:
bb280_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+640] -> [r12+640]
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 648], rax
  .section .rodata
  .Lrkfn545: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn545]
 lea rsi, [r12 + 640]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 cmp eax, 99
 je xaltg541_a2_start
 jmp xaltg541_a1_succ
 xaltg541_a1_beta:
 jmp xaltg541_a2_start
xaltg541_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 584], rax
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], 1
jmp xchain513_n14_α
xaltg541_a2_start:
# IR_LIT_S
bb281_α:
 mov qword ptr [r12 + 656], 1
 mov rax, qword ptr [rip + .Lx547_0]
 mov qword ptr [r12 + 664], rax
 jmp xaltg541_a2_succ
 xaltg541_a2_beta:
 jmp xchain513_n15_α
.Lx547_0:
 .quad .Lx547_0_s
.Lx547_0_s:
 .string "\n"
xaltg541_a2_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 584], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], 1
jmp xchain513_n14_α
xchain513_n13_β:
jmp xchain513_n15_α
xchain513_n14_α:
bb282_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+688]
 mov qword ptr [r12 + 688], 1
 mov rax, qword ptr [rip + .Lx549_0]
 mov qword ptr [r12 + 696], rax
 jmp .Lx549_1
.Lx549_0:
 .quad .Lx549_0_s
.Lx549_0_s:
 .string " "
.Lx549_1:
# marshal arg1 = nested producer-box slot [r12+584] -> [r12+704]
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 712], rax
  .section .rodata
  .Lrkfn550: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn550]
 lea rsi, [r12 + 688]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 cmp eax, 99
 je xchain513_n68_β
 jmp xchain513_n13_β
 xchain513_n14_β:
 jmp xchain513_n68_β
xchain513_n15_α:
# IR_EVERY
 jmp xchain513_n16_α
 xchain513_n15_β:
 jmp xchain513_n16_α
xchain513_n16_α:
bb284_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+752]
 mov qword ptr [r12 + 752], 6
 movabs rax, 1
 mov qword ptr [r12 + 760], rax
# marshal arg1 = LIT_I -> [r12+768]
 mov qword ptr [r12 + 768], 6
 movabs rax, 2
 mov qword ptr [r12 + 776], rax
# marshal arg2 = LIT_I -> [r12+784]
 mov qword ptr [r12 + 784], 6
 movabs rax, 3
 mov qword ptr [r12 + 792], rax
  .section .rodata
  .Lcallfn553: .string "MAKELIST"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn553]
 lea rsi, [r12 + 752]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
  .section .rodata
  .Lrkfn554: .string "set"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn554]
 lea rsi, [r12 + 736]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 cmp eax, 99
 je xchain513_n18_α
 jmp xchain513_n17_α
 xchain513_n16_β:
 jmp xchain513_n18_α
xchain513_n17_α:
bb285_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 720]
 mov rdx, qword ptr [r12 + 728]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 jmp xchain513_n18_α
 xchain513_n17_β:
 jmp xchain513_n18_α
xchain513_n18_α:
bb286_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+48] -> [r12+832]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 840], rax
# marshal arg1 = varslot [r12+48] -> [r12+848]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 856], rax
  .section .rodata
  .Lrkfn557: .string "insert"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn557]
 lea rsi, [r12 + 832]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 cmp eax, 99
 je xchain513_n19_α
 jmp xchain513_n19_α
 xchain513_n18_β:
 jmp xchain513_n19_α
xchain513_n19_α:
bb287_α:
# BOX IR_CALL copy(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+48] -> [r12+880]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 880], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 888], rax
  .section .rodata
  .Lrkfn559: .string "copy"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn559]
 lea rsi, [r12 + 880]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 cmp eax, 99
 je xchain513_n21_α
 jmp xchain513_n20_α
 xchain513_n19_β:
 jmp xchain513_n21_α
xchain513_n20_α:
bb288_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 864]
 mov rdx, qword ptr [r12 + 872]
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 jmp xchain513_n21_α
 xchain513_n20_β:
 jmp xchain513_n21_α
xchain513_n21_α:
bb289_α:
# BOX IR_CALL delete(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+64] -> [r12+928]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 928], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 936], rax
# marshal arg1 = LIT_I -> [r12+944]
 mov qword ptr [r12 + 944], 6
 movabs rax, 2
 mov qword ptr [r12 + 952], rax
  .section .rodata
  .Lrkfn562: .string "delete"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn562]
 lea rsi, [r12 + 928]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 cmp eax, 99
 je xchain513_n22_α
 jmp xchain513_n22_α
 xchain513_n21_β:
 jmp xchain513_n22_α
xchain513_n22_α:
bb290_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+64] -> [r12+976]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 976], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 984], rax
# marshal arg1 = LIT_I -> [r12+992]
 mov qword ptr [r12 + 992], 6
 movabs rax, 5
 mov qword ptr [r12 + 1000], rax
  .section .rodata
  .Lrkfn564: .string "insert"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn564]
 lea rsi, [r12 + 976]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 cmp eax, 99
 je xchain513_n23_α
 jmp xchain513_n23_α
 xchain513_n22_β:
 jmp xchain513_n23_α
xchain513_n23_α:
# IR_LIT_S
bb291_α:
 mov qword ptr [r12 + 1008], 1
 mov rax, qword ptr [rip + .Lx565_0]
 mov qword ptr [r12 + 1016], rax
 jmp xchain513_n24_α
 xchain513_n23_β:
 jmp xchain513_n68_β
.Lx565_0:
 .quad .Lx565_0_s
.Lx565_0_s:
 .string " "
xchain513_n24_α:
xaltg566_a0_start:
# IR_LIT_S
bb292_α:
 mov qword ptr [r12 + 1048], 1
 mov rax, qword ptr [rip + .Lx567_0]
 mov qword ptr [r12 + 1056], rax
 jmp xaltg566_a0_succ
 xaltg566_a0_beta:
 jmp xaltg566_a1_start
.Lx567_0:
 .quad .Lx567_0_s
.Lx567_0_s:
 .string "S1:"
xaltg566_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1048]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 1056]
 mov qword ptr [r12 + 1032], rax
 mov qword ptr [r12 + 1040], 1
jmp xchain513_n25_α
xaltg566_a1_start:
bb293_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+1080] -> [r12+1080]
 mov rax, qword ptr [r12 + 1080]
 mov qword ptr [r12 + 1080], rax
 mov rax, qword ptr [r12 + 1088]
 mov qword ptr [r12 + 1088], rax
  .section .rodata
  .Lrkfn570: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn570]
 lea rsi, [r12 + 1080]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1064], rax
 mov qword ptr [r12 + 1072], rdx
 cmp eax, 99
 je xaltg566_a2_start
 jmp xaltg566_a1_succ
 xaltg566_a1_beta:
 jmp xaltg566_a2_start
xaltg566_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1064]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 1072]
 mov qword ptr [r12 + 1032], rax
 mov qword ptr [r12 + 1040], 1
jmp xchain513_n25_α
xaltg566_a2_start:
# IR_LIT_S
bb294_α:
 mov qword ptr [r12 + 1096], 1
 mov rax, qword ptr [rip + .Lx572_0]
 mov qword ptr [r12 + 1104], rax
 jmp xaltg566_a2_succ
 xaltg566_a2_beta:
 jmp xchain513_n26_α
.Lx572_0:
 .quad .Lx572_0_s
.Lx572_0_s:
 .string "\n"
xaltg566_a2_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1096]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 1104]
 mov qword ptr [r12 + 1032], rax
 mov qword ptr [r12 + 1040], 1
jmp xchain513_n25_α
xchain513_n24_β:
jmp xchain513_n26_α
xchain513_n25_α:
bb295_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1128]
 mov qword ptr [r12 + 1128], 1
 mov rax, qword ptr [rip + .Lx574_0]
 mov qword ptr [r12 + 1136], rax
 jmp .Lx574_1
.Lx574_0:
 .quad .Lx574_0_s
.Lx574_0_s:
 .string " "
.Lx574_1:
# marshal arg1 = nested producer-box slot [r12+1024] -> [r12+1144]
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 1144], rax
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 1152], rax
  .section .rodata
  .Lrkfn575: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn575]
 lea rsi, [r12 + 1128]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1112], rax
 mov qword ptr [r12 + 1120], rdx
 cmp eax, 99
 je xchain513_n68_β
 jmp xchain513_n24_β
 xchain513_n25_β:
 jmp xchain513_n68_β
xchain513_n26_α:
# IR_EVERY
 jmp xchain513_n27_α
 xchain513_n26_β:
 jmp xchain513_n27_α
xchain513_n27_α:
# IR_LIT_S
bb297_α:
 mov qword ptr [r12 + 1160], 1
 mov rax, qword ptr [rip + .Lx577_0]
 mov qword ptr [r12 + 1168], rax
 jmp xchain513_n28_α
 xchain513_n27_β:
 jmp xchain513_n68_β
.Lx577_0:
 .quad .Lx577_0_s
.Lx577_0_s:
 .string " "
xchain513_n28_α:
xaltg578_a0_start:
# IR_LIT_S
bb298_α:
 mov qword ptr [r12 + 1200], 1
 mov rax, qword ptr [rip + .Lx579_0]
 mov qword ptr [r12 + 1208], rax
 jmp xaltg578_a0_succ
 xaltg578_a0_beta:
 jmp xaltg578_a1_start
.Lx579_0:
 .quad .Lx579_0_s
.Lx579_0_s:
 .string "S2:"
xaltg578_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1200]
 mov qword ptr [r12 + 1176], rax
 mov rax, qword ptr [r12 + 1208]
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], 1
jmp xchain513_n29_α
xaltg578_a1_start:
bb299_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+1232] -> [r12+1232]
 mov rax, qword ptr [r12 + 1232]
 mov qword ptr [r12 + 1232], rax
 mov rax, qword ptr [r12 + 1240]
 mov qword ptr [r12 + 1240], rax
  .section .rodata
  .Lrkfn582: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn582]
 lea rsi, [r12 + 1232]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
 cmp eax, 99
 je xaltg578_a2_start
 jmp xaltg578_a1_succ
 xaltg578_a1_beta:
 jmp xaltg578_a2_start
xaltg578_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1216]
 mov qword ptr [r12 + 1176], rax
 mov rax, qword ptr [r12 + 1224]
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], 1
jmp xchain513_n29_α
xaltg578_a2_start:
# IR_LIT_S
bb300_α:
 mov qword ptr [r12 + 1248], 1
 mov rax, qword ptr [rip + .Lx584_0]
 mov qword ptr [r12 + 1256], rax
 jmp xaltg578_a2_succ
 xaltg578_a2_beta:
 jmp xchain513_n30_α
.Lx584_0:
 .quad .Lx584_0_s
.Lx584_0_s:
 .string "\n"
xaltg578_a2_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1248]
 mov qword ptr [r12 + 1176], rax
 mov rax, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], 1
jmp xchain513_n29_α
xchain513_n28_β:
jmp xchain513_n30_α
xchain513_n29_α:
bb301_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1280]
 mov qword ptr [r12 + 1280], 1
 mov rax, qword ptr [rip + .Lx586_0]
 mov qword ptr [r12 + 1288], rax
 jmp .Lx586_1
.Lx586_0:
 .quad .Lx586_0_s
.Lx586_0_s:
 .string " "
.Lx586_1:
# marshal arg1 = nested producer-box slot [r12+1176] -> [r12+1296]
 mov rax, qword ptr [r12 + 1176]
 mov qword ptr [r12 + 1296], rax
 mov rax, qword ptr [r12 + 1184]
 mov qword ptr [r12 + 1304], rax
  .section .rodata
  .Lrkfn587: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn587]
 lea rsi, [r12 + 1280]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], rdx
 cmp eax, 99
 je xchain513_n68_β
 jmp xchain513_n28_β
 xchain513_n29_β:
 jmp xchain513_n68_β
xchain513_n30_α:
# IR_EVERY
 jmp xchain513_n31_α
 xchain513_n30_β:
 jmp xchain513_n31_α
xchain513_n31_α:
bb303_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn590: .string "table"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn590]
 lea rsi, [r12 + 1328]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1312], rax
 mov qword ptr [r12 + 1320], rdx
 cmp eax, 99
 je xchain513_n33_α
 jmp xchain513_n32_α
 xchain513_n31_β:
 jmp xchain513_n33_α
xchain513_n32_α:
bb304_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1312]
 mov rdx, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 jmp xchain513_n33_α
 xchain513_n32_β:
 jmp xchain513_n33_α
xchain513_n33_α:
# IR_VAR
bb305_α:
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 88], rax
 jmp xchain513_n34_α
 xchain513_n33_β:
 jmp xchain513_n35_α
xchain513_n34_α:
# IR_LIT_S
bb306_α:
 mov qword ptr [r12 + 1344], 1
 mov rax, qword ptr [rip + .Lx595_0]
 mov qword ptr [r12 + 1352], rax
 jmp xiset594_val_done
 xiset594_val_β:
 jmp xchain513_n35_α
.Lx595_0:
 .quad .Lx595_0_s
.Lx595_0_s:
 .string "j"
xiset594_val_done:
# IR_LIT_I
bb307_α:
 mov qword ptr [r12 + 1360], 6
 mov rax, qword ptr [rip + .Lx596_0]
 mov qword ptr [r12 + 1368], rax
 jmp xiset594_key_done
 xiset594_key_β:
 jmp xchain513_n35_α
.Lx596_0:
 .quad 2
xiset594_key_done:
bb308_α:
# IR_IDX_SET: base/key/value from [ζ+off]; inline DT_A+int fast path, else subscript_set
 mov rax, qword ptr [r12 + 80]
 cmp eax, 4
 jne .Lx598_0
 mov rax, qword ptr [r12 + 1360]
 cmp eax, 6
 jne .Lx598_0
 mov rsi, qword ptr [r12 + 88]
 mov rcx, qword ptr [r12 + 1368]
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx598_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx598_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add r11, rcx
 mov rax, qword ptr [r12 + 1344]
 mov rdx, qword ptr [r12 + 1352]
 mov qword ptr [r11 + 0], rax
 mov qword ptr [r11 + 8], rdx
 jmp xchain513_n35_α
.Lx598_0:
 mov rdi, qword ptr [r12 + 80]
 mov rsi, qword ptr [r12 + 88]
 mov rdx, qword ptr [r12 + 1360]
 mov rcx, qword ptr [r12 + 1368]
 mov r8, qword ptr [r12 + 1344]
 mov r9, qword ptr [r12 + 1352]
 call subscript_set@PLT
 cmp eax, 0
 je xchain513_n35_α
 jmp xchain513_n35_α
 xchain513_n34_β:
 jmp xchain513_n35_α
xchain513_n35_α:
# IR_VAR
bb309_α:
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 88], rax
 jmp xchain513_n36_α
 xchain513_n35_β:
 jmp xchain513_n37_α
xchain513_n36_α:
# IR_LIT_S
bb310_α:
 mov qword ptr [r12 + 1376], 1
 mov rax, qword ptr [rip + .Lx602_0]
 mov qword ptr [r12 + 1384], rax
 jmp xiset601_val_done
 xiset601_val_β:
 jmp xchain513_n37_α
.Lx602_0:
 .quad .Lx602_0_s
.Lx602_0_s:
 .string "c"
xiset601_val_done:
# IR_LIT_I
bb311_α:
 mov qword ptr [r12 + 1392], 6
 mov rax, qword ptr [rip + .Lx603_0]
 mov qword ptr [r12 + 1400], rax
 jmp xiset601_key_done
 xiset601_key_β:
 jmp xchain513_n37_α
.Lx603_0:
 .quad 5
xiset601_key_done:
bb312_α:
# IR_IDX_SET: base/key/value from [ζ+off]; inline DT_A+int fast path, else subscript_set
 mov rax, qword ptr [r12 + 80]
 cmp eax, 4
 jne .Lx605_0
 mov rax, qword ptr [r12 + 1392]
 cmp eax, 6
 jne .Lx605_0
 mov rsi, qword ptr [r12 + 88]
 mov rcx, qword ptr [r12 + 1400]
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx605_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx605_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add r11, rcx
 mov rax, qword ptr [r12 + 1376]
 mov rdx, qword ptr [r12 + 1384]
 mov qword ptr [r11 + 0], rax
 mov qword ptr [r11 + 8], rdx
 jmp xchain513_n37_α
.Lx605_0:
 mov rdi, qword ptr [r12 + 80]
 mov rsi, qword ptr [r12 + 88]
 mov rdx, qword ptr [r12 + 1392]
 mov rcx, qword ptr [r12 + 1400]
 mov r8, qword ptr [r12 + 1376]
 mov r9, qword ptr [r12 + 1384]
 call subscript_set@PLT
 cmp eax, 0
 je xchain513_n37_α
 jmp xchain513_n37_α
 xchain513_n36_β:
 jmp xchain513_n37_α
xchain513_n37_α:
# IR_VAR
bb313_α:
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 88], rax
 jmp xchain513_n38_α
 xchain513_n37_β:
 jmp xchain513_n39_α
xchain513_n38_α:
# IR_LIT_S
bb314_α:
 mov qword ptr [r12 + 1408], 1
 mov rax, qword ptr [rip + .Lx609_0]
 mov qword ptr [r12 + 1416], rax
 jmp xiset608_val_done
 xiset608_val_β:
 jmp xchain513_n39_α
.Lx609_0:
 .quad .Lx609_0_s
.Lx609_0_s:
 .string "n"
xiset608_val_done:
# IR_LIT_I
bb315_α:
 mov qword ptr [r12 + 1424], 6
 mov rax, qword ptr [rip + .Lx610_0]
 mov qword ptr [r12 + 1432], rax
 jmp xiset608_key_done
 xiset608_key_β:
 jmp xchain513_n39_α
.Lx610_0:
 .quad 8
xiset608_key_done:
bb316_α:
# IR_IDX_SET: base/key/value from [ζ+off]; inline DT_A+int fast path, else subscript_set
 mov rax, qword ptr [r12 + 80]
 cmp eax, 4
 jne .Lx612_0
 mov rax, qword ptr [r12 + 1424]
 cmp eax, 6
 jne .Lx612_0
 mov rsi, qword ptr [r12 + 88]
 mov rcx, qword ptr [r12 + 1432]
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx612_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx612_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add r11, rcx
 mov rax, qword ptr [r12 + 1408]
 mov rdx, qword ptr [r12 + 1416]
 mov qword ptr [r11 + 0], rax
 mov qword ptr [r11 + 8], rdx
 jmp xchain513_n39_α
.Lx612_0:
 mov rdi, qword ptr [r12 + 80]
 mov rsi, qword ptr [r12 + 88]
 mov rdx, qword ptr [r12 + 1424]
 mov rcx, qword ptr [r12 + 1432]
 mov r8, qword ptr [r12 + 1408]
 mov r9, qword ptr [r12 + 1416]
 call subscript_set@PLT
 cmp eax, 0
 je xchain513_n39_α
 jmp xchain513_n39_α
 xchain513_n38_β:
 jmp xchain513_n39_α
xchain513_n39_α:
# IR_VAR
bb317_α:
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 88], rax
 jmp xchain513_n40_α
 xchain513_n39_β:
 jmp xchain513_n41_α
xchain513_n40_α:
# IR_VAR
bb318_α:
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 88], rax
 jmp xiset615_val_done
 xiset615_val_β:
 jmp xchain513_n41_α
xiset615_val_done:
# IR_LIT_I
bb319_α:
 mov qword ptr [r12 + 1440], 6
 mov rax, qword ptr [rip + .Lx618_0]
 mov qword ptr [r12 + 1448], rax
 jmp xiset615_key_done
 xiset615_key_β:
 jmp xchain513_n41_α
.Lx618_0:
 .quad 15
xiset615_key_done:
bb320_α:
# IR_IDX_SET: base/key/value from [ζ+off]; inline DT_A+int fast path, else subscript_set
 mov rax, qword ptr [r12 + 80]
 cmp eax, 4
 jne .Lx620_0
 mov rax, qword ptr [r12 + 1440]
 cmp eax, 6
 jne .Lx620_0
 mov rsi, qword ptr [r12 + 88]
 mov rcx, qword ptr [r12 + 1448]
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx620_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx620_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add r11, rcx
 mov rax, qword ptr [r12 + 80]
 mov rdx, qword ptr [r12 + 88]
 mov qword ptr [r11 + 0], rax
 mov qword ptr [r11 + 8], rdx
 jmp xchain513_n41_α
.Lx620_0:
 mov rdi, qword ptr [r12 + 80]
 mov rsi, qword ptr [r12 + 88]
 mov rdx, qword ptr [r12 + 1440]
 mov rcx, qword ptr [r12 + 1448]
 mov r8, qword ptr [r12 + 80]
 mov r9, qword ptr [r12 + 88]
 call subscript_set@PLT
 cmp eax, 0
 je xchain513_n41_α
 jmp xchain513_n41_α
 xchain513_n40_β:
 jmp xchain513_n41_α
xchain513_n41_α:
bb321_α:
# BOX IR_CALL copy(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+80] -> [r12+1472]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 1472], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 1480], rax
  .section .rodata
  .Lrkfn622: .string "copy"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn622]
 lea rsi, [r12 + 1472]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1456], rax
 mov qword ptr [r12 + 1464], rdx
 cmp eax, 99
 je xchain513_n43_α
 jmp xchain513_n42_α
 xchain513_n41_β:
 jmp xchain513_n43_α
xchain513_n42_α:
bb322_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1456]
 mov rdx, qword ptr [r12 + 1464]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 mov qword ptr [r12 + 1488], rax
 mov qword ptr [r12 + 1496], rdx
 jmp xchain513_n43_α
 xchain513_n42_β:
 jmp xchain513_n43_α
xchain513_n43_α:
bb323_α:
# BOX IR_CALL delete(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+96] -> [r12+1520]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 1520], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 1528], rax
# marshal arg1 = LIT_I -> [r12+1536]
 mov qword ptr [r12 + 1536], 6
 movabs rax, 5
 mov qword ptr [r12 + 1544], rax
  .section .rodata
  .Lrkfn625: .string "delete"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn625]
 lea rsi, [r12 + 1520]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1504], rax
 mov qword ptr [r12 + 1512], rdx
 cmp eax, 99
 je xchain513_n44_α
 jmp xchain513_n44_α
 xchain513_n43_β:
 jmp xchain513_n44_α
xchain513_n44_α:
bb324_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+96] -> [r12+1568]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 1568], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 1576], rax
# marshal arg1 = LIT_I -> [r12+1584]
 mov qword ptr [r12 + 1584], 6
 movabs rax, 11
 mov qword ptr [r12 + 1592], rax
# marshal arg2 = LIT_S (string REG-RO sealed in-band) -> [r12+1600]
 mov qword ptr [r12 + 1600], 1
 mov rax, qword ptr [rip + .Lx626_4]
 mov qword ptr [r12 + 1608], rax
 jmp .Lx626_5
.Lx626_4:
 .quad .Lx626_4_s
.Lx626_4_s:
 .string "t"
.Lx626_5:
  .section .rodata
  .Lrkfn627: .string "insert"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn627]
 lea rsi, [r12 + 1568]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1552], rax
 mov qword ptr [r12 + 1560], rdx
 cmp eax, 99
 je xchain513_n45_α
 jmp xchain513_n45_α
 xchain513_n44_β:
 jmp xchain513_n45_α
xchain513_n45_α:
# IR_LIT_S
bb325_α:
 mov qword ptr [r12 + 1616], 1
 mov rax, qword ptr [rip + .Lx628_0]
 mov qword ptr [r12 + 1624], rax
 jmp xchain513_n46_α
 xchain513_n45_β:
 jmp xchain513_n68_β
.Lx628_0:
 .quad .Lx628_0_s
.Lx628_0_s:
 .string " "
xchain513_n46_α:
xaltg629_a0_start:
# IR_LIT_S
bb326_α:
 mov qword ptr [r12 + 1656], 1
 mov rax, qword ptr [rip + .Lx630_0]
 mov qword ptr [r12 + 1664], rax
 jmp xaltg629_a0_succ
 xaltg629_a0_beta:
 jmp xaltg629_a1_start
.Lx630_0:
 .quad .Lx630_0_s
.Lx630_0_s:
 .string "T1:"
xaltg629_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1656]
 mov qword ptr [r12 + 1632], rax
 mov rax, qword ptr [r12 + 1664]
 mov qword ptr [r12 + 1640], rax
 mov qword ptr [r12 + 1648], 1
jmp xchain513_n47_α
xaltg629_a1_start:
bb327_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+1688] -> [r12+1688]
 mov rax, qword ptr [r12 + 1688]
 mov qword ptr [r12 + 1688], rax
 mov rax, qword ptr [r12 + 1696]
 mov qword ptr [r12 + 1696], rax
  .section .rodata
  .Lrkfn633: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn633]
 lea rsi, [r12 + 1688]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1672], rax
 mov qword ptr [r12 + 1680], rdx
 cmp eax, 99
 je xaltg629_a2_start
 jmp xaltg629_a1_succ
 xaltg629_a1_beta:
 jmp xaltg629_a2_start
xaltg629_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1672]
 mov qword ptr [r12 + 1632], rax
 mov rax, qword ptr [r12 + 1680]
 mov qword ptr [r12 + 1640], rax
 mov qword ptr [r12 + 1648], 1
jmp xchain513_n47_α
xaltg629_a2_start:
# IR_LIT_S
bb328_α:
 mov qword ptr [r12 + 1704], 1
 mov rax, qword ptr [rip + .Lx635_0]
 mov qword ptr [r12 + 1712], rax
 jmp xaltg629_a2_succ
 xaltg629_a2_beta:
 jmp xchain513_n48_α
.Lx635_0:
 .quad .Lx635_0_s
.Lx635_0_s:
 .string "\n"
xaltg629_a2_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1704]
 mov qword ptr [r12 + 1632], rax
 mov rax, qword ptr [r12 + 1712]
 mov qword ptr [r12 + 1640], rax
 mov qword ptr [r12 + 1648], 1
jmp xchain513_n47_α
xchain513_n46_β:
jmp xchain513_n48_α
xchain513_n47_α:
bb329_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1736]
 mov qword ptr [r12 + 1736], 1
 mov rax, qword ptr [rip + .Lx637_0]
 mov qword ptr [r12 + 1744], rax
 jmp .Lx637_1
.Lx637_0:
 .quad .Lx637_0_s
.Lx637_0_s:
 .string " "
.Lx637_1:
# marshal arg1 = nested producer-box slot [r12+1632] -> [r12+1752]
 mov rax, qword ptr [r12 + 1632]
 mov qword ptr [r12 + 1752], rax
 mov rax, qword ptr [r12 + 1640]
 mov qword ptr [r12 + 1760], rax
  .section .rodata
  .Lrkfn638: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn638]
 lea rsi, [r12 + 1736]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1720], rax
 mov qword ptr [r12 + 1728], rdx
 cmp eax, 99
 je xchain513_n68_β
 jmp xchain513_n46_β
 xchain513_n47_β:
 jmp xchain513_n68_β
xchain513_n48_α:
# IR_EVERY
 jmp xchain513_n49_α
 xchain513_n48_β:
 jmp xchain513_n49_α
xchain513_n49_α:
# IR_LIT_S
bb331_α:
 mov qword ptr [r12 + 1768], 1
 mov rax, qword ptr [rip + .Lx640_0]
 mov qword ptr [r12 + 1776], rax
 jmp xchain513_n50_α
 xchain513_n49_β:
 jmp xchain513_n68_β
.Lx640_0:
 .quad .Lx640_0_s
.Lx640_0_s:
 .string " "
xchain513_n50_α:
xaltg641_a0_start:
# IR_LIT_S
bb332_α:
 mov qword ptr [r12 + 1808], 1
 mov rax, qword ptr [rip + .Lx642_0]
 mov qword ptr [r12 + 1816], rax
 jmp xaltg641_a0_succ
 xaltg641_a0_beta:
 jmp xaltg641_a1_start
.Lx642_0:
 .quad .Lx642_0_s
.Lx642_0_s:
 .string "T2:"
xaltg641_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1808]
 mov qword ptr [r12 + 1784], rax
 mov rax, qword ptr [r12 + 1816]
 mov qword ptr [r12 + 1792], rax
 mov qword ptr [r12 + 1800], 1
jmp xchain513_n51_α
xaltg641_a1_start:
bb333_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+1840] -> [r12+1840]
 mov rax, qword ptr [r12 + 1840]
 mov qword ptr [r12 + 1840], rax
 mov rax, qword ptr [r12 + 1848]
 mov qword ptr [r12 + 1848], rax
  .section .rodata
  .Lrkfn645: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn645]
 lea rsi, [r12 + 1840]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1824], rax
 mov qword ptr [r12 + 1832], rdx
 cmp eax, 99
 je xaltg641_a2_start
 jmp xaltg641_a1_succ
 xaltg641_a1_beta:
 jmp xaltg641_a2_start
xaltg641_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1824]
 mov qword ptr [r12 + 1784], rax
 mov rax, qword ptr [r12 + 1832]
 mov qword ptr [r12 + 1792], rax
 mov qword ptr [r12 + 1800], 1
jmp xchain513_n51_α
xaltg641_a2_start:
# IR_LIT_S
bb334_α:
 mov qword ptr [r12 + 1856], 1
 mov rax, qword ptr [rip + .Lx647_0]
 mov qword ptr [r12 + 1864], rax
 jmp xaltg641_a2_succ
 xaltg641_a2_beta:
 jmp xchain513_n52_α
.Lx647_0:
 .quad .Lx647_0_s
.Lx647_0_s:
 .string "\n"
xaltg641_a2_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 1856]
 mov qword ptr [r12 + 1784], rax
 mov rax, qword ptr [r12 + 1864]
 mov qword ptr [r12 + 1792], rax
 mov qword ptr [r12 + 1800], 1
jmp xchain513_n51_α
xchain513_n50_β:
jmp xchain513_n52_α
xchain513_n51_α:
bb335_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1888]
 mov qword ptr [r12 + 1888], 1
 mov rax, qword ptr [rip + .Lx649_0]
 mov qword ptr [r12 + 1896], rax
 jmp .Lx649_1
.Lx649_0:
 .quad .Lx649_0_s
.Lx649_0_s:
 .string " "
.Lx649_1:
# marshal arg1 = nested producer-box slot [r12+1784] -> [r12+1904]
 mov rax, qword ptr [r12 + 1784]
 mov qword ptr [r12 + 1904], rax
 mov rax, qword ptr [r12 + 1792]
 mov qword ptr [r12 + 1912], rax
  .section .rodata
  .Lrkfn650: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn650]
 lea rsi, [r12 + 1888]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1872], rax
 mov qword ptr [r12 + 1880], rdx
 cmp eax, 99
 je xchain513_n68_β
 jmp xchain513_n50_β
 xchain513_n51_β:
 jmp xchain513_n68_β
xchain513_n52_α:
# IR_EVERY
 jmp xchain513_n53_α
 xchain513_n52_β:
 jmp xchain513_n53_α
xchain513_n53_α:
bb337_α:
# BOX IR_CALL r5(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+1936]
 mov qword ptr [r12 + 1936], 6
 movabs rax, 1
 mov qword ptr [r12 + 1944], rax
# marshal arg1 = LIT_I -> [r12+1952]
 mov qword ptr [r12 + 1952], 6
 movabs rax, 3
 mov qword ptr [r12 + 1960], rax
# marshal arg2 = LIT_I -> [r12+1968]
 mov qword ptr [r12 + 1968], 6
 movabs rax, 5
 mov qword ptr [r12 + 1976], rax
# marshal arg3 = LIT_I -> [r12+1984]
 mov qword ptr [r12 + 1984], 6
 movabs rax, 7
 mov qword ptr [r12 + 1992], rax
# marshal arg4 = LIT_I -> [r12+2000]
 mov qword ptr [r12 + 2000], 6
 movabs rax, 9
 mov qword ptr [r12 + 2008], rax
  .section .rodata
  .Lrkfn653: .string "r5"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn653]
 lea rsi, [r12 + 1936]
 mov edx, 5
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1920], rax
 mov qword ptr [r12 + 1928], rdx
 cmp eax, 99
 je xchain513_n55_α
 jmp xchain513_n54_α
 xchain513_n53_β:
 jmp xchain513_n55_α
xchain513_n54_α:
bb338_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1920]
 mov rdx, qword ptr [r12 + 1928]
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 mov qword ptr [r12 + 2016], rax
 mov qword ptr [r12 + 2024], rdx
 jmp xchain513_n55_α
 xchain513_n54_β:
 jmp xchain513_n55_α
xchain513_n55_α:
bb339_α:
# BOX IR_CALL copy(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+112] -> [r12+2048]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 2048], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 2056], rax
  .section .rodata
  .Lrkfn656: .string "copy"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn656]
 lea rsi, [r12 + 2048]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2032], rax
 mov qword ptr [r12 + 2040], rdx
 cmp eax, 99
 je xchain513_n57_α
 jmp xchain513_n56_α
 xchain513_n55_β:
 jmp xchain513_n57_α
xchain513_n56_α:
bb340_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2032]
 mov rdx, qword ptr [r12 + 2040]
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 mov qword ptr [r12 + 2064], rax
 mov qword ptr [r12 + 2072], rdx
 jmp xchain513_n57_α
 xchain513_n56_β:
 jmp xchain513_n57_α
xchain513_n57_α:
# IR_VAR
bb341_α:
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 120], rax
 jmp xchain513_n58_α
 xchain513_n57_β:
 jmp xchain513_n60_α
xchain513_n58_α:
# IR_LIT_I
bb342_α:
 mov qword ptr [r12 + 2080], 6
 mov rax, qword ptr [rip + .Lx660_0]
 mov qword ptr [r12 + 2088], rax
 jmp xchain513_n59_α
 xchain513_n58_β:
 jmp xchain513_n60_α
.Lx660_0:
 .quad 4
xchain513_n59_α:
# IR_FIELD_SET
bb343_α:
 mov rdi, qword ptr [rip + .Lx662_0]
 mov rsi, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 mov rcx, qword ptr [r12 + 2080]
 mov r8, qword ptr [r12 + 2088]
 call dat_field_set@PLT
 jmp xchain513_n60_α
 xchain513_n59_β:
 jmp xchain513_n60_α
.Lx662_0:
 .quad .Lx662_0_s
.Lx662_0_s:
 .string "b"
xchain513_n60_α:
# IR_VAR
bb344_α:
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 136], rax
 jmp xchain513_n61_α
 xchain513_n60_β:
 jmp xchain513_n63_α
xchain513_n61_α:
# IR_LIT_I
bb345_α:
 mov qword ptr [r12 + 2096], 6
 mov rax, qword ptr [rip + .Lx665_0]
 mov qword ptr [r12 + 2104], rax
 jmp xchain513_n62_α
 xchain513_n61_β:
 jmp xchain513_n63_α
.Lx665_0:
 .quad 6
xchain513_n62_α:
# IR_FIELD_SET
bb346_α:
 mov rdi, qword ptr [rip + .Lx667_0]
 mov rsi, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 mov rcx, qword ptr [r12 + 2096]
 mov r8, qword ptr [r12 + 2104]
 call dat_field_set@PLT
 jmp xchain513_n63_α
 xchain513_n62_β:
 jmp xchain513_n63_α
.Lx667_0:
 .quad .Lx667_0_s
.Lx667_0_s:
 .string "d"
xchain513_n63_α:
# IR_LIT_S
bb347_α:
 mov qword ptr [r12 + 2112], 1
 mov rax, qword ptr [rip + .Lx668_0]
 mov qword ptr [r12 + 2120], rax
 jmp xchain513_n64_α
 xchain513_n63_β:
 jmp xchain513_n68_β
.Lx668_0:
 .quad .Lx668_0_s
.Lx668_0_s:
 .string " "
xchain513_n64_α:
xaltg669_a0_start:
# IR_LIT_S
bb348_α:
 mov qword ptr [r12 + 2152], 1
 mov rax, qword ptr [rip + .Lx670_0]
 mov qword ptr [r12 + 2160], rax
 jmp xaltg669_a0_succ
 xaltg669_a0_beta:
 jmp xaltg669_a1_start
.Lx670_0:
 .quad .Lx670_0_s
.Lx670_0_s:
 .string "R1:"
xaltg669_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 2152]
 mov qword ptr [r12 + 2128], rax
 mov rax, qword ptr [r12 + 2160]
 mov qword ptr [r12 + 2136], rax
 mov qword ptr [r12 + 2144], 1
jmp xchain513_n65_α
xaltg669_a1_start:
bb349_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+112] -> [r12+2184]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 2184], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 2192], rax
  .section .rodata
  .Lrkfn673: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn673]
 lea rsi, [r12 + 2184]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2168], rax
 mov qword ptr [r12 + 2176], rdx
 cmp eax, 99
 je xaltg669_a2_start
 jmp xaltg669_a1_succ
 xaltg669_a1_beta:
 jmp xaltg669_a2_start
xaltg669_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 2168]
 mov qword ptr [r12 + 2128], rax
 mov rax, qword ptr [r12 + 2176]
 mov qword ptr [r12 + 2136], rax
 mov qword ptr [r12 + 2144], 1
jmp xchain513_n65_α
xaltg669_a2_start:
bb350_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+2216] -> [r12+2216]
 mov rax, qword ptr [r12 + 2216]
 mov qword ptr [r12 + 2216], rax
 mov rax, qword ptr [r12 + 2224]
 mov qword ptr [r12 + 2224], rax
  .section .rodata
  .Lrkfn676: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn676]
 lea rsi, [r12 + 2216]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2200], rax
 mov qword ptr [r12 + 2208], rdx
 cmp eax, 99
 je xaltg669_a3_start
 jmp xaltg669_a2_succ
 xaltg669_a2_beta:
 jmp xaltg669_a3_start
xaltg669_a2_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 2200]
 mov qword ptr [r12 + 2128], rax
 mov rax, qword ptr [r12 + 2208]
 mov qword ptr [r12 + 2136], rax
 mov qword ptr [r12 + 2144], 1
jmp xchain513_n65_α
xaltg669_a3_start:
# IR_LIT_S
bb351_α:
 mov qword ptr [r12 + 2232], 1
 mov rax, qword ptr [rip + .Lx678_0]
 mov qword ptr [r12 + 2240], rax
 jmp xaltg669_a3_succ
 xaltg669_a3_beta:
 jmp xchain513_n66_α
.Lx678_0:
 .quad .Lx678_0_s
.Lx678_0_s:
 .string "\n"
xaltg669_a3_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 2232]
 mov qword ptr [r12 + 2128], rax
 mov rax, qword ptr [r12 + 2240]
 mov qword ptr [r12 + 2136], rax
 mov qword ptr [r12 + 2144], 1
jmp xchain513_n65_α
xchain513_n64_β:
jmp xchain513_n66_α
xchain513_n65_α:
bb352_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+2264]
 mov qword ptr [r12 + 2264], 1
 mov rax, qword ptr [rip + .Lx680_0]
 mov qword ptr [r12 + 2272], rax
 jmp .Lx680_1
.Lx680_0:
 .quad .Lx680_0_s
.Lx680_0_s:
 .string " "
.Lx680_1:
# marshal arg1 = nested producer-box slot [r12+2128] -> [r12+2280]
 mov rax, qword ptr [r12 + 2128]
 mov qword ptr [r12 + 2280], rax
 mov rax, qword ptr [r12 + 2136]
 mov qword ptr [r12 + 2288], rax
  .section .rodata
  .Lrkfn681: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn681]
 lea rsi, [r12 + 2264]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2248], rax
 mov qword ptr [r12 + 2256], rdx
 cmp eax, 99
 je xchain513_n68_β
 jmp xchain513_n64_β
 xchain513_n65_β:
 jmp xchain513_n68_β
xchain513_n66_α:
# IR_EVERY
 jmp xchain513_n67_α
 xchain513_n66_β:
 jmp xchain513_n67_α
xchain513_n67_α:
# IR_LIT_S
bb354_α:
 mov qword ptr [r12 + 2296], 1
 mov rax, qword ptr [rip + .Lx683_0]
 mov qword ptr [r12 + 2304], rax
 jmp xchain513_n68_α
 xchain513_n67_β:
 jmp xchain513_n68_β
.Lx683_0:
 .quad .Lx683_0_s
.Lx683_0_s:
 .string " "
xchain513_n68_α:
xaltg684_a0_start:
# IR_LIT_S
bb355_α:
 mov qword ptr [r12 + 2336], 1
 mov rax, qword ptr [rip + .Lx685_0]
 mov qword ptr [r12 + 2344], rax
 jmp xaltg684_a0_succ
 xaltg684_a0_beta:
 jmp xaltg684_a1_start
.Lx685_0:
 .quad .Lx685_0_s
.Lx685_0_s:
 .string "R2:"
xaltg684_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 2336]
 mov qword ptr [r12 + 2312], rax
 mov rax, qword ptr [r12 + 2344]
 mov qword ptr [r12 + 2320], rax
 mov qword ptr [r12 + 2328], 1
jmp xchain513_n69_α
xaltg684_a1_start:
bb356_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+128] -> [r12+2368]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 2368], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 2376], rax
  .section .rodata
  .Lrkfn688: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn688]
 lea rsi, [r12 + 2368]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2352], rax
 mov qword ptr [r12 + 2360], rdx
 cmp eax, 99
 je xaltg684_a2_start
 jmp xaltg684_a1_succ
 xaltg684_a1_beta:
 jmp xaltg684_a2_start
xaltg684_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 2352]
 mov qword ptr [r12 + 2312], rax
 mov rax, qword ptr [r12 + 2360]
 mov qword ptr [r12 + 2320], rax
 mov qword ptr [r12 + 2328], 1
jmp xchain513_n69_α
xaltg684_a2_start:
bb357_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+2400] -> [r12+2400]
 mov rax, qword ptr [r12 + 2400]
 mov qword ptr [r12 + 2400], rax
 mov rax, qword ptr [r12 + 2408]
 mov qword ptr [r12 + 2408], rax
  .section .rodata
  .Lrkfn691: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn691]
 lea rsi, [r12 + 2400]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2384], rax
 mov qword ptr [r12 + 2392], rdx
 cmp eax, 99
 je xaltg684_a3_start
 jmp xaltg684_a2_succ
 xaltg684_a2_beta:
 jmp xaltg684_a3_start
xaltg684_a2_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 2384]
 mov qword ptr [r12 + 2312], rax
 mov rax, qword ptr [r12 + 2392]
 mov qword ptr [r12 + 2320], rax
 mov qword ptr [r12 + 2328], 1
jmp xchain513_n69_α
xaltg684_a3_start:
# IR_LIT_S
bb358_α:
 mov qword ptr [r12 + 2416], 1
 mov rax, qword ptr [rip + .Lx693_0]
 mov qword ptr [r12 + 2424], rax
 jmp xaltg684_a3_succ
 xaltg684_a3_beta:
 jmp xchain513_n70_α
.Lx693_0:
 .quad .Lx693_0_s
.Lx693_0_s:
 .string "\n"
xaltg684_a3_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 2416]
 mov qword ptr [r12 + 2312], rax
 mov rax, qword ptr [r12 + 2424]
 mov qword ptr [r12 + 2320], rax
 mov qword ptr [r12 + 2328], 1
jmp xchain513_n69_α
xchain513_n68_β:
jmp xchain513_n70_α
xchain513_n69_α:
bb359_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+2448]
 mov qword ptr [r12 + 2448], 1
 mov rax, qword ptr [rip + .Lx695_0]
 mov qword ptr [r12 + 2456], rax
 jmp .Lx695_1
.Lx695_0:
 .quad .Lx695_0_s
.Lx695_0_s:
 .string " "
.Lx695_1:
# marshal arg1 = nested producer-box slot [r12+2312] -> [r12+2464]
 mov rax, qword ptr [r12 + 2312]
 mov qword ptr [r12 + 2464], rax
 mov rax, qword ptr [r12 + 2320]
 mov qword ptr [r12 + 2472], rax
  .section .rodata
  .Lrkfn696: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn696]
 lea rsi, [r12 + 2448]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2432], rax
 mov qword ptr [r12 + 2440], rdx
 cmp eax, 99
 je xchain513_n68_β
 jmp xchain513_n68_β
 xchain513_n69_β:
 jmp xchain513_n68_β
xchain513_n70_α:
# IR_EVERY
 jmp xchain513_n71_α
 xchain513_n70_β:
 jmp xchain513_n71_α
xchain513_n71_α:
# IR_RETURN
bb361_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_copytest_γ
proc_copytest_β:
jmp proc_copytest_ω
proc_copytest_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_copytest_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_messtest_α
proc_messtest_α:
#=======================================================================================================================
    .global proc_messtest_α
    .global proc_messtest_β
    .global proc_messtest_γ
    .global proc_messtest_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_messtest_α_body:
xchain699_n0_α:
bb362_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn701: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn701]
 lea rsi, [r12 + 64]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je xchain699_n1_α
 jmp xchain699_n1_α
 xchain699_n0_β:
 jmp xchain699_n1_α
xchain699_n1_α:
bb363_α:
# BOX IR_CALL MAKELIST(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+80]
 mov qword ptr [r12 + 80], 1
 mov rax, qword ptr [rip + .Lx702_0]
 mov qword ptr [r12 + 88], rax
 jmp .Lx702_1
.Lx702_0:
 .quad .Lx702_0_s
.Lx702_0_s:
 .string ""
.Lx702_1:
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+96]
 mov qword ptr [r12 + 96], 1
 mov rax, qword ptr [rip + .Lx702_2]
 mov qword ptr [r12 + 104], rax
 jmp .Lx702_3
.Lx702_2:
 .quad .Lx702_2_s
.Lx702_2_s:
 .string "0cs"
.Lx702_3:
# marshal arg2 = LIT_F -> [r12+112]
 mov qword ptr [r12 + 112], 7
 movabs rax, 4616639978017495450
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lcallfn703: .string "set"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn703]
 lea rsi, [r12 + 1280]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
# marshal arg4 = LIT_F -> [r12+144]
 mov qword ptr [r12 + 144], 7
 movabs rax, 4612136378390124954
 mov qword ptr [r12 + 152], rax
# marshal arg5 = LIT_S (string REG-RO sealed in-band) -> [r12+160]
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx702_10]
 mov qword ptr [r12 + 168], rax
 jmp .Lx702_11
.Lx702_10:
 .quad .Lx702_10_s
.Lx702_10_s:
 .string "a"
.Lx702_11:
# marshal arg6 = varslot [r12+1296] -> [r12+176]
 mov rax, qword ptr [r12 + 1296]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 1304]
 mov qword ptr [r12 + 184], rax
# marshal arg7 = varslot [r12+1312] -> [r12+192]
 mov rax, qword ptr [r12 + 1312]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 200], rax
# marshal arg8 = varslot [r12+1328] -> [r12+208]
 mov rax, qword ptr [r12 + 1328]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 1336]
 mov qword ptr [r12 + 216], rax
# marshal arg9 = LIT_S (string REG-RO sealed in-band) -> [r12+224]
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx702_18]
 mov qword ptr [r12 + 232], rax
 jmp .Lx702_19
.Lx702_18:
 .quad .Lx702_18_s
.Lx702_18_s:
 .string "epsilons"
.Lx702_19:
# marshal arg10 = varslot [r12+1344] -> [r12+240]
 mov rax, qword ptr [r12 + 1344]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 1352]
 mov qword ptr [r12 + 248], rax
# marshal arg11 = LIT_S (string REG-RO sealed in-band) -> [r12+256]
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx702_22]
 mov qword ptr [r12 + 264], rax
 jmp .Lx702_23
.Lx702_22:
 .quad .Lx702_22_s
.Lx702_22_s:
 .string "delta"
.Lx702_23:
# marshal arg12 = varslot [r12+1360] -> [r12+272]
 mov rax, qword ptr [r12 + 1360]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 1368]
 mov qword ptr [r12 + 280], rax
# marshal arg13 = LIT_S (string REG-RO sealed in-band) -> [r12+288]
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx702_26]
 mov qword ptr [r12 + 296], rax
 jmp .Lx702_27
.Lx702_26:
 .quad .Lx702_26_s
.Lx702_26_s:
 .string "beta"
.Lx702_27:
# marshal arg0 = LIT_I -> [r12+1376]
 mov qword ptr [r12 + 1376], 6
 movabs rax, 5
 mov qword ptr [r12 + 1384], rax
  .section .rodata
  .Lcallfn704: .string "table"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn704]
 lea rsi, [r12 + 1376]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
  .section .rodata
  .Lcallfn705: .string "MAKELIST"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn705]
 lea rsi, [r12 + 1392]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
# marshal arg16 = varslot [r12+1408] -> [r12+336]
 mov rax, qword ptr [r12 + 1408]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 1416]
 mov qword ptr [r12 + 344], rax
# marshal arg17 = LIT_S (string REG-RO sealed in-band) -> [r12+352]
 mov qword ptr [r12 + 352], 1
 mov rax, qword ptr [rip + .Lx702_34]
 mov qword ptr [r12 + 360], rax
 jmp .Lx702_35
.Lx702_34:
 .quad .Lx702_34_s
.Lx702_34_s:
 .string "123cs"
.Lx702_35:
# marshal arg0 = LIT_I -> [r12+1424]
 mov qword ptr [r12 + 1424], 6
 movabs rax, 3
 mov qword ptr [r12 + 1432], rax
# marshal arg1 = LIT_I -> [r12+1440]
 mov qword ptr [r12 + 1440], 6
 movabs rax, 4
 mov qword ptr [r12 + 1448], rax
  .section .rodata
  .Lcallfn706: .string "MAKELIST"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn706]
 lea rsi, [r12 + 1424]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
# marshal arg19 = LIT_F -> [r12+384]
 mov qword ptr [r12 + 384], 7
 movabs rax, 14123185772310279676
 mov qword ptr [r12 + 392], rax
# marshal arg20 = varslot [r12+1456] -> [r12+400]
 mov rax, qword ptr [r12 + 1456]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 1464]
 mov qword ptr [r12 + 408], rax
# marshal arg0 = LIT_I -> [r12+1520]
 mov qword ptr [r12 + 1520], 6
 movabs rax, 3
 mov qword ptr [r12 + 1528], rax
  .section .rodata
  .Lcallfn707: .string "table"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn707]
 lea rsi, [r12 + 1520]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1472], rax
 mov qword ptr [r12 + 1480], rdx
# marshal arg1 = LIT_I -> [r12+1488]
 mov qword ptr [r12 + 1488], 6
 movabs rax, 4
 mov qword ptr [r12 + 1496], rax
# marshal arg2 = LIT_I -> [r12+1504]
 mov qword ptr [r12 + 1504], 6
 movabs rax, 7
 mov qword ptr [r12 + 1512], rax
  .section .rodata
  .Lcallfn708: .string "insert"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn708]
 lea rsi, [r12 + 1472]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
# marshal arg22 = varslot [r12+1536] -> [r12+432]
 mov rax, qword ptr [r12 + 1536]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 1544]
 mov qword ptr [r12 + 440], rax
# marshal arg23 = LIT_F -> [r12+448]
 mov qword ptr [r12 + 448], 7
 movabs rax, 4614613358185178726
 mov qword ptr [r12 + 456], rax
# marshal arg24 = varslot [r12+1552] -> [r12+464]
 mov rax, qword ptr [r12 + 1552]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 1560]
 mov qword ptr [r12 + 472], rax
# marshal arg0 = LIT_I -> [r12+1568]
 mov qword ptr [r12 + 1568], 6
 movabs rax, 1
 mov qword ptr [r12 + 1576], rax
  .section .rodata
  .Lcallfn709: .string "r1"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn709]
 lea rsi, [r12 + 1568]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
  .section .rodata
  .Lcallfn710: .string "MAKELIST"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn710]
 lea rsi, [r12 + 1584]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
# marshal arg0 = LIT_I -> [r12+1600]
 mov qword ptr [r12 + 1600], 6
 movabs rax, 4
 mov qword ptr [r12 + 1608], rax
  .section .rodata
  .Lcallfn711: .string "table"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn711]
 lea rsi, [r12 + 1600]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
# marshal arg28 = varslot [r12+1616] -> [r12+528]
 mov rax, qword ptr [r12 + 1616]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 1624]
 mov qword ptr [r12 + 536], rax
# marshal arg0 = LIT_I -> [r12+1632]
 mov qword ptr [r12 + 1632], 6
 movabs rax, 1
 mov qword ptr [r12 + 1640], rax
# marshal arg1 = LIT_I -> [r12+1648]
 mov qword ptr [r12 + 1648], 6
 movabs rax, 23
 mov qword ptr [r12 + 1656], rax
  .section .rodata
  .Lcallfn712: .string "r5"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn712]
 lea rsi, [r12 + 1632]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
# marshal arg30 = varslot [r12+1296] -> [r12+560]
 mov rax, qword ptr [r12 + 1296]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 1304]
 mov qword ptr [r12 + 568], rax
# marshal arg31 = varslot [r12+1664] -> [r12+576]
 mov rax, qword ptr [r12 + 1664]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 1672]
 mov qword ptr [r12 + 584], rax
# marshal arg32 = LIT_F -> [r12+592]
 mov qword ptr [r12 + 592], 7
 movabs rax, 4617878467915022336
 mov qword ptr [r12 + 600], rax
# marshal arg0 = LIT_I -> [r12+1696]
 mov qword ptr [r12 + 1696], 6
 movabs rax, 5
 mov qword ptr [r12 + 1704], rax
# marshal arg1 = LIT_I -> [r12+1712]
 mov qword ptr [r12 + 1712], 6
 movabs rax, 6
 mov qword ptr [r12 + 1720], rax
  .section .rodata
  .Lcallfn713: .string "MAKELIST"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn713]
 lea rsi, [r12 + 1696]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1680], rax
 mov qword ptr [r12 + 1688], rdx
  .section .rodata
  .Lcallfn714: .string "set"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn714]
 lea rsi, [r12 + 1680]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
# marshal arg34 = LIT_S (string REG-RO sealed in-band) -> [r12+624]
 mov qword ptr [r12 + 624], 1
 mov rax, qword ptr [rip + .Lx702_68]
 mov qword ptr [r12 + 632], rax
 jmp .Lx702_69
.Lx702_68:
 .quad .Lx702_68_s
.Lx702_68_s:
 .string ""
.Lx702_69:
# marshal arg0 = LIT_I -> [r12+1728]
 mov qword ptr [r12 + 1728], 6
 movabs rax, 5
 mov qword ptr [r12 + 1736], rax
# marshal arg1 = LIT_I -> [r12+1744]
 mov qword ptr [r12 + 1744], 6
 movabs rax, 6
 mov qword ptr [r12 + 1752], rax
  .section .rodata
  .Lcallfn715: .string "r2"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn715]
 lea rsi, [r12 + 1728]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
# marshal arg36 = LIT_F -> [r12+656]
 mov qword ptr [r12 + 656], 7
 movabs rax, 14120963055260208906
 mov qword ptr [r12 + 664], rax
# marshal arg37 = LIT_S (string REG-RO sealed in-band) -> [r12+672]
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx702_74]
 mov qword ptr [r12 + 680], rax
 jmp .Lx702_75
.Lx702_74:
 .quad .Lx702_74_s
.Lx702_74_s:
 .string "epsilon"
.Lx702_75:
# marshal arg0 = LIT_I -> [r12+1760]
 mov qword ptr [r12 + 1760], 6
 movabs rax, 1
 mov qword ptr [r12 + 1768], rax
# marshal arg1 = LIT_I -> [r12+1776]
 mov qword ptr [r12 + 1776], 6
 movabs rax, 2
 mov qword ptr [r12 + 1784], rax
# marshal arg2 = LIT_I -> [r12+1792]
 mov qword ptr [r12 + 1792], 6
 movabs rax, 3
 mov qword ptr [r12 + 1800], rax
  .section .rodata
  .Lcallfn716: .string "MAKELIST"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn716]
 lea rsi, [r12 + 1760]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
# marshal arg0 = LIT_I -> [r12+1808]
 mov qword ptr [r12 + 1808], 6
 movabs rax, 7
 mov qword ptr [r12 + 1816], rax
# marshal arg1 = LIT_I -> [r12+1824]
 mov qword ptr [r12 + 1824], 6
 movabs rax, 8
 mov qword ptr [r12 + 1832], rax
# marshal arg2 = LIT_I -> [r12+1840]
 mov qword ptr [r12 + 1840], 6
 movabs rax, 9
 mov qword ptr [r12 + 1848], rax
  .section .rodata
  .Lcallfn717: .string "r5"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn717]
 lea rsi, [r12 + 1808]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
# marshal arg40 = varslot [r12+1856] -> [r12+720]
 mov rax, qword ptr [r12 + 1856]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 1864]
 mov qword ptr [r12 + 728], rax
# marshal arg41 = varslot [r12+1872] -> [r12+736]
 mov rax, qword ptr [r12 + 1872]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 1880]
 mov qword ptr [r12 + 744], rax
# marshal arg42 = LIT_I -> [r12+752]
 mov qword ptr [r12 + 752], 6
 movabs rax, 4
 mov qword ptr [r12 + 760], rax
# marshal arg43 = varslot [r12+1664] -> [r12+768]
 mov rax, qword ptr [r12 + 1664]
 mov qword ptr [r12 + 768], rax
 mov rax, qword ptr [r12 + 1672]
 mov qword ptr [r12 + 776], rax
# marshal arg0 = LIT_I -> [r12+1904]
 mov qword ptr [r12 + 1904], 6
 movabs rax, 0
 mov qword ptr [r12 + 1912], rax
# marshal arg1 = LIT_I -> [r12+1920]
 mov qword ptr [r12 + 1920], 6
 movabs rax, 1
 mov qword ptr [r12 + 1928], rax
# marshal arg2 = LIT_I -> [r12+1936]
 mov qword ptr [r12 + 1936], 6
 movabs rax, 2
 mov qword ptr [r12 + 1944], rax
  .section .rodata
  .Lcallfn718: .string "MAKELIST"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn718]
 lea rsi, [r12 + 1904]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1888], rax
 mov qword ptr [r12 + 1896], rdx
  .section .rodata
  .Lcallfn719: .string "set"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn719]
 lea rsi, [r12 + 1888]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
# marshal arg45 = LIT_I -> [r12+800]
 mov qword ptr [r12 + 800], 6
 movabs rax, 1
 mov qword ptr [r12 + 808], rax
# marshal arg0 = LIT_I -> [r12+1952]
 mov qword ptr [r12 + 1952], 6
 movabs rax, 1
 mov qword ptr [r12 + 1960], rax
# marshal arg1 = LIT_I -> [r12+1968]
 mov qword ptr [r12 + 1968], 6
 movabs rax, 2
 mov qword ptr [r12 + 1976], rax
# marshal arg2 = LIT_I -> [r12+1984]
 mov qword ptr [r12 + 1984], 6
 movabs rax, 3
 mov qword ptr [r12 + 1992], rax
  .section .rodata
  .Lcallfn720: .string "r5"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn720]
 lea rsi, [r12 + 1952]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
# marshal arg47 = varslot [r12+2000] -> [r12+832]
 mov rax, qword ptr [r12 + 2000]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 2008]
 mov qword ptr [r12 + 840], rax
# marshal arg48 = varslot [r12+2016] -> [r12+848]
 mov rax, qword ptr [r12 + 2016]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 2024]
 mov qword ptr [r12 + 856], rax
# marshal arg49 = varslot [r12+1664] -> [r12+864]
 mov rax, qword ptr [r12 + 1664]
 mov qword ptr [r12 + 864], rax
 mov rax, qword ptr [r12 + 1672]
 mov qword ptr [r12 + 872], rax
# marshal arg50 = varslot [r12+2032] -> [r12+880]
 mov rax, qword ptr [r12 + 2032]
 mov qword ptr [r12 + 880], rax
 mov rax, qword ptr [r12 + 2040]
 mov qword ptr [r12 + 888], rax
# marshal arg51 = LIT_S (string REG-RO sealed in-band) -> [r12+896]
 mov qword ptr [r12 + 896], 1
 mov rax, qword ptr [rip + .Lx702_102]
 mov qword ptr [r12 + 904], rax
 jmp .Lx702_103
.Lx702_102:
 .quad .Lx702_102_s
.Lx702_102_s:
 .string "XYZcs"
.Lx702_103:
# marshal arg52 = LIT_F -> [r12+912]
 mov qword ptr [r12 + 912], 7
 movabs rax, 4607632778762754458
 mov qword ptr [r12 + 920], rax
# marshal arg0 = LIT_I -> [r12+2048]
 mov qword ptr [r12 + 2048], 6
 movabs rax, 5
 mov qword ptr [r12 + 2056], rax
  .section .rodata
  .Lcallfn721: .string "r1"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn721]
 lea rsi, [r12 + 2048]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
# marshal arg54 = LIT_F -> [r12+944]
 mov qword ptr [r12 + 944], 7
 movabs rax, 4899960268460593793
 mov qword ptr [r12 + 952], rax
# marshal arg55 = LIT_S (string REG-RO sealed in-band) -> [r12+960]
 mov qword ptr [r12 + 960], 1
 mov rax, qword ptr [rip + .Lx702_110]
 mov qword ptr [r12 + 968], rax
 jmp .Lx702_111
.Lx702_110:
 .quad .Lx702_110_s
.Lx702_110_s:
 .string "1234cs"
.Lx702_111:
# marshal arg56 = LIT_I -> [r12+976]
 mov qword ptr [r12 + 976], 6
 movabs rax, 5
 mov qword ptr [r12 + 984], rax
  .section .rodata
  .Lcallfn722: .string "r0"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn722]
 lea rsi, [r12 + 2064]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
# marshal arg58 = varslot [r12+2080] -> [r12+1008]
 mov rax, qword ptr [r12 + 2080]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 2088]
 mov qword ptr [r12 + 1016], rax
# marshal arg59 = LIT_S (string REG-RO sealed in-band) -> [r12+1024]
 mov qword ptr [r12 + 1024], 1
 mov rax, qword ptr [rip + .Lx702_118]
 mov qword ptr [r12 + 1032], rax
 jmp .Lx702_119
.Lx702_118:
 .quad .Lx702_118_s
.Lx702_118_s:
 .string "gamma"
.Lx702_119:
# marshal arg0 = LIT_I -> [r12+2096]
 mov qword ptr [r12 + 2096], 6
 movabs rax, 4
 mov qword ptr [r12 + 2104], rax
# marshal arg1 = LIT_I -> [r12+2112]
 mov qword ptr [r12 + 2112], 6
 movabs rax, 5
 mov qword ptr [r12 + 2120], rax
# marshal arg2 = LIT_I -> [r12+2128]
 mov qword ptr [r12 + 2128], 6
 movabs rax, 6
 mov qword ptr [r12 + 2136], rax
# marshal arg3 = LIT_I -> [r12+2144]
 mov qword ptr [r12 + 2144], 6
 movabs rax, 7
 mov qword ptr [r12 + 2152], rax
# marshal arg4 = LIT_I -> [r12+2160]
 mov qword ptr [r12 + 2160], 6
 movabs rax, 8
 mov qword ptr [r12 + 2168], rax
  .section .rodata
  .Lcallfn723: .string "r5"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn723]
 lea rsi, [r12 + 2096]
 mov edx, 5
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
# marshal arg61 = LIT_I -> [r12+1056]
 mov qword ptr [r12 + 1056], 6
 movabs rax, 2
 mov qword ptr [r12 + 1064], rax
# marshal arg62 = varslot [r12+1664] -> [r12+1072]
 mov rax, qword ptr [r12 + 1664]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 1672]
 mov qword ptr [r12 + 1080], rax
# marshal arg63 = varslot [r12+2176] -> [r12+1088]
 mov rax, qword ptr [r12 + 2176]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 2184]
 mov qword ptr [r12 + 1096], rax
# marshal arg0 = LIT_I -> [r12+2192]
 mov qword ptr [r12 + 2192], 6
 movabs rax, 1
 mov qword ptr [r12 + 2200], rax
# marshal arg1 = LIT_I -> [r12+2208]
 mov qword ptr [r12 + 2208], 6
 movabs rax, 2
 mov qword ptr [r12 + 2216], rax
  .section .rodata
  .Lcallfn724: .string "r2"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn724]
 lea rsi, [r12 + 2192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
# marshal arg65 = varslot [r12+2224] -> [r12+1120]
 mov rax, qword ptr [r12 + 2224]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 2232]
 mov qword ptr [r12 + 1128], rax
  .section .rodata
  .Lcallfn725: .string "r0"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn725]
 lea rsi, [r12 + 2240]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
# marshal arg67 = LIT_S (string REG-RO sealed in-band) -> [r12+1152]
 mov qword ptr [r12 + 1152], 1
 mov rax, qword ptr [rip + .Lx702_134]
 mov qword ptr [r12 + 1160], rax
 jmp .Lx702_135
.Lx702_134:
 .quad .Lx702_134_s
.Lx702_134_s:
 .string "alpha"
.Lx702_135:
# marshal arg68 = varslot [r12+2256] -> [r12+1168]
 mov rax, qword ptr [r12 + 2256]
 mov qword ptr [r12 + 1168], rax
 mov rax, qword ptr [r12 + 2264]
 mov qword ptr [r12 + 1176], rax
# marshal arg69 = varslot [r12+2272] -> [r12+1184]
 mov rax, qword ptr [r12 + 2272]
 mov qword ptr [r12 + 1184], rax
 mov rax, qword ptr [r12 + 2280]
 mov qword ptr [r12 + 1192], rax
# marshal arg70 = LIT_F -> [r12+1200]
 mov qword ptr [r12 + 1200], 7
 movabs rax, 4902878504234982881
 mov qword ptr [r12 + 1208], rax
# marshal arg71 = varslot [r12+2288] -> [r12+1216]
 mov rax, qword ptr [r12 + 2288]
 mov qword ptr [r12 + 1216], rax
 mov rax, qword ptr [r12 + 2296]
 mov qword ptr [r12 + 1224], rax
# marshal arg72 = LIT_S (string REG-RO sealed in-band) -> [r12+1232]
 mov qword ptr [r12 + 1232], 1
 mov rax, qword ptr [rip + .Lx702_144]
 mov qword ptr [r12 + 1240], rax
 jmp .Lx702_145
.Lx702_144:
 .quad .Lx702_144_s
.Lx702_144_s:
 .string "gamma"
.Lx702_145:
# marshal arg73 = varslot [r12+2304] -> [r12+1248]
 mov rax, qword ptr [r12 + 2304]
 mov qword ptr [r12 + 1248], rax
 mov rax, qword ptr [r12 + 2312]
 mov qword ptr [r12 + 1256], rax
# marshal arg74 = LIT_I -> [r12+1264]
 mov qword ptr [r12 + 1264], 6
 movabs rax, 3
 mov qword ptr [r12 + 1272], rax
  .section .rodata
  .Lbynamefn726: .string "MAKELIST"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn726]
 lea rsi, [r12 + 80]
 mov edx, 75
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je xchain699_n3_α
 jmp xchain699_n2_α
xchain699_n1_β:
 jmp xchain699_n3_α
xchain699_n2_α:
bb364_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 2320], rax
 mov qword ptr [r12 + 2328], rdx
 jmp xchain699_n3_α
 xchain699_n2_β:
 jmp xchain699_n3_α
xchain699_n3_α:
bb365_α:
# BOX IR_CALL put(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+16] -> [r12+2352]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 2352], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 2360], rax
# marshal arg1 = varslot [r12+16] -> [r12+2368]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 2368], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 2376], rax
  .section .rodata
  .Lbynamefn729: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn729]
 lea rsi, [r12 + 2352]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2336], rax
 mov qword ptr [r12 + 2344], rdx
 cmp eax, 99
 je xchain699_n4_α
 jmp xchain699_n4_α
xchain699_n3_β:
 jmp xchain699_n4_α
xchain699_n4_α:
bb366_α:
# BOX IR_CALL copy(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+2400]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 2400], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 2408], rax
  .section .rodata
  .Lrkfn731: .string "copy"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn731]
 lea rsi, [r12 + 2400]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2384], rax
 mov qword ptr [r12 + 2392], rdx
 cmp eax, 99
 je xchain699_n6_α
 jmp xchain699_n5_α
 xchain699_n4_β:
 jmp xchain699_n6_α
xchain699_n5_α:
bb367_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2384]
 mov rdx, qword ptr [r12 + 2392]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 2416], rax
 mov qword ptr [r12 + 2424], rdx
 jmp xchain699_n6_α
 xchain699_n5_β:
 jmp xchain699_n6_α
xchain699_n6_α:
bb368_α:
# BOX IR_CALL put(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+16] -> [r12+2448]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 2448], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 2456], rax
# marshal arg0 = nested producer-box slot [r12+2480] -> [r12+2480]
 mov rax, qword ptr [r12 + 2480]
 mov qword ptr [r12 + 2480], rax
 mov rax, qword ptr [r12 + 2488]
 mov qword ptr [r12 + 2488], rax
  .section .rodata
  .Lcallfn734: .string "copy"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn734]
 lea rsi, [r12 + 2480]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2464], rax
 mov qword ptr [r12 + 2472], rdx
  .section .rodata
  .Lbynamefn735: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn735]
 lea rsi, [r12 + 2448]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2432], rax
 mov qword ptr [r12 + 2440], rdx
 cmp eax, 99
 je xchain699_n7_α
 jmp xchain699_n7_α
xchain699_n6_β:
 jmp xchain699_n7_α
xchain699_n7_α:
# IR_EVERY
 jmp xchain699_n8_α
 xchain699_n7_β:
 jmp xchain699_n8_α
xchain699_n8_α:
bb370_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn738: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn738]
 lea rsi, [r12 + 2512]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2496], rax
 mov qword ptr [r12 + 2504], rdx
 cmp eax, 99
 je xchain699_n9_α
 jmp xchain699_n9_α
 xchain699_n8_β:
 jmp xchain699_n9_α
xchain699_n9_α:
bb371_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+2528] -> [r12+2528]
 mov rax, qword ptr [r12 + 2528]
 mov qword ptr [r12 + 2528], rax
 mov rax, qword ptr [r12 + 2536]
 mov qword ptr [r12 + 2536], rax
  .section .rodata
  .Lrkfn740: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn740]
 lea rsi, [r12 + 2528]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2512], rax
 mov qword ptr [r12 + 2520], rdx
 cmp eax, 99
 je xchain699_n11_α
 jmp xchain699_n10_α
 xchain699_n9_β:
 jmp xchain699_n11_α
xchain699_n10_α:
bb372_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 2512]
 mov rsi, qword ptr [r12 + 2520]
 call rt_write_any_nl@PLT
 jmp xchain699_n11_α
xchain699_n10_β:
xchain699_n10_β:
 jmp xchain699_n11_α
xchain699_n11_α:
# IR_EVERY
 jmp xchain699_n12_α
 xchain699_n11_β:
 jmp xchain699_n12_α
xchain699_n12_α:
xargsub744_n0_α:
# IR_VAR
bb374_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xicnarg743_done
 xargsub744_n0_β:
 jmp xchain699_n13_α
xicnarg743_done:
xargsub748_n0_α:
# IR_LIT_I
bb375_α:
 mov qword ptr [r12 + 2544], 6
 mov rax, qword ptr [rip + .Lx749_0]
 mov qword ptr [r12 + 2552], rax
 jmp xicnarg747_done
 xargsub748_n0_β:
 jmp xchain699_n13_α
.Lx749_0:
 .quad 2
xicnarg747_done:
bb376_α:
  .section .rodata
  .Lcall411_pname: .string "wsortf"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+16]
 mov rdx, qword ptr [r12+24]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+254]
 mov rdx, qword ptr [r12+255]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall411_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2560], rax
 mov qword ptr [r12 + 2568], rdx
 cmp eax, 99
 je xchain699_n13_α
 jmp xchain699_n13_α
xchain699_n12_β:
 jmp xchain699_n13_α
xchain699_n13_α:
xargsub752_n0_α:
# IR_VAR
bb377_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xicnarg751_done
 xargsub752_n0_β:
 jmp xchain699_n14_α
xicnarg751_done:
xargsub756_n0_α:
# IR_LIT_I
bb378_α:
 mov qword ptr [r12 + 2576], 6
 mov rax, qword ptr [rip + .Lx757_0]
 mov qword ptr [r12 + 2584], rax
 jmp xicnarg755_done
 xargsub756_n0_β:
 jmp xchain699_n14_α
.Lx757_0:
 .quad 18446744073709551615
xicnarg755_done:
bb379_α:
  .section .rodata
  .Lcall414_pname: .string "wsortf"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+16]
 mov rdx, qword ptr [r12+24]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+257]
 mov rdx, qword ptr [r12+258]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall414_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 2592], rax
 mov qword ptr [r12 + 2600], rdx
 cmp eax, 99
 je xchain699_n14_α
 jmp xchain699_n14_α
xchain699_n13_β:
 jmp xchain699_n14_α
xchain699_n14_α:
# IR_RETURN
bb380_α:
 mov rax, qword ptr [r12 + 2592]
 mov rdx, qword ptr [r12 + 2600]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_messtest_γ
proc_messtest_β:
jmp proc_messtest_ω
proc_messtest_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_messtest_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_wsortf_α
proc_wsortf_α:
#=======================================================================================================================
    .global proc_wsortf_α
    .global proc_wsortf_β
    .global proc_wsortf_γ
    .global proc_wsortf_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_wsortf_α_body:
xchain760_n0_α:
bb381_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn762: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn762]
 lea rsi, [r12 + 96]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je xchain760_n1_α
 jmp xchain760_n1_α
 xchain760_n0_β:
 jmp xchain760_n1_α
xchain760_n1_α:
bb382_α:
# BOX IR_CALL sortf(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+112]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 120], rax
# marshal arg1 = varslot [r12+32] -> [r12+128]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn765: .string "sortf"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn765]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain760_n10_α
 jmp xbang763_iter_done
 xbang763_iter_β:
 jmp xchain760_n10_α
xbang763_iter_done:
# IR_LIST_BANG
bb383_α:
 mov qword ptr [r12 + 144], 0
.Lx767_0:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 mov rdx, qword ptr [r12 + 144]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 152], rax
 mov qword ptr [r12 + 160], rdx
 cmp rax, 99
 je xchain760_n10_α
 jmp xchain760_n2_α
 xchain760_n1_β:
 inc qword ptr [r12 + 144]
 jmp .Lx767_0
xchain760_n2_α:
bb384_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 152]
 mov rdx, qword ptr [r12 + 160]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov qword ptr [r12 + 168], rax
 mov qword ptr [r12 + 176], rdx
 jmp xchain760_n3_α
 xchain760_n2_β:
 jmp xchain760_n1_β
xchain760_n3_α:
bb385_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+48] -> [r12+200]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 200], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 208], rax
  .section .rodata
  .Lrkfn770: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn770]
 lea rsi, [r12 + 200]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 184], rax
 mov qword ptr [r12 + 192], rdx
 cmp eax, 99
 je xchain760_n5_α
 jmp xchain760_n4_α
 xchain760_n3_β:
 jmp xchain760_n5_α
xchain760_n4_α:
bb386_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 184]
 mov rdx, qword ptr [r12 + 192]
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 mov qword ptr [r12 + 216], rax
 mov qword ptr [r12 + 224], rdx
 jmp xchain760_n5_α
 xchain760_n4_β:
 jmp xchain760_n5_α
xchain760_n5_α:
xargsub773_n0_α:
# IR_VAR
bb387_α:
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 72], rax
 jmp xscan772_subj_done
 xargsub773_n0_β:
 jmp xchain760_n7_α
xscan772_subj_done:
# IR_GEN_SCAN
 mov rdi, qword ptr [r12 + 64]
 mov rsi, qword ptr [r12 + 72]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xscan772_body_start
 xscan772_enter_β:
 jmp xchain760_n7_α
xscan772_body_start:
xargsub778_n0_α:
bb388_α:
# IR_ALT
 mov qword ptr [r12 + 272], 0
.Lx780_2:
 mov rax, qword ptr [r12 + 272]
 cmp rax, 0
 je .Lx780_3
 mov rax, qword ptr [r12 + 272]
 cmp rax, 1
 je .Lx780_4
 jmp xscan772_body_fail
.Lx780_3:
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx780_0]
 mov qword ptr [r12 + 264], rax
 mov rax, qword ptr [r12 + 272]
 add rax, 1
 mov qword ptr [r12 + 272], rax
 jmp xargsub778_n1_α
.Lx780_4:
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx780_1]
 mov qword ptr [r12 + 264], rax
 mov rax, qword ptr [r12 + 272]
 add rax, 1
 mov qword ptr [r12 + 272], rax
 jmp xargsub778_n1_α
 xargsub778_n0_β:
 jmp .Lx780_2
.Lx780_0:
 .quad .Lx780_0_s
.Lx780_0_s:
 .string "list"
.Lx780_1:
 .quad .Lx780_1_s
.Lx780_1_s:
 .string "record"
xargsub778_n1_α:
xscan772_body_done:
# IR_GEN_SCAN
 lea rdi, [r12 + 232]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 232]
 mov r14, qword ptr [r12 + 240]
 mov r15, qword ptr [r12 + 248]
 jmp xchain760_n6_α
 xscan772_leaveok_β:
 jmp xchain760_n7_α
xscan772_body_fail:
# IR_GEN_SCAN
 lea rdi, [r12 + 232]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 232]
 mov r14, qword ptr [r12 + 240]
 mov r15, qword ptr [r12 + 248]
 jmp xchain760_n7_α
 xscan772_leavef_β:
 jmp xchain760_n7_α
xchain760_n6_α:
xargsub787_n0_α:
# IR_VAR
bb390_α:
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 72], rax
 jmp xscan786_subj_done
 xargsub787_n0_β:
 jmp proc_wsortf_ω
xscan786_subj_done:
# IR_GEN_SCAN
 mov rdi, qword ptr [r12 + 64]
 mov rsi, qword ptr [r12 + 72]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xscan786_body_start
 xscan786_enter_β:
 jmp proc_wsortf_ω
xscan786_body_start:
xargsub792_n0_α:
# IR_LIT_S
bb391_α:
 mov qword ptr [r12 + 320], 1
 mov rax, qword ptr [rip + .Lx793_0]
 mov qword ptr [r12 + 328], rax
 jmp xargsub792_n1_α
 xargsub792_n0_β:
 jmp xscan786_body_fail
.Lx793_0:
 .quad .Lx793_0_s
.Lx793_0_s:
 .string "record constructor"
xargsub792_n1_α:
xscan786_body_done:
# IR_GEN_SCAN
 lea rdi, [r12 + 296]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 296]
 mov r14, qword ptr [r12 + 304]
 mov r15, qword ptr [r12 + 312]
 jmp xchain760_n7_α
 xscan786_leaveok_β:
 jmp proc_wsortf_ω
xscan786_body_fail:
# IR_GEN_SCAN
 lea rdi, [r12 + 296]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 296]
 mov r14, qword ptr [r12 + 304]
 mov r15, qword ptr [r12 + 312]
 jmp proc_wsortf_ω
 xscan786_leavef_β:
 jmp proc_wsortf_ω
xchain760_n7_α:
# IR_VAR
bb393_α:
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 72], rax
 jmp xchain760_n8_α
 xchain760_n7_β:
 jmp xchain760_n1_β
xchain760_n8_α:
bb394_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 64]
 mov rsi, qword ptr [r12 + 72]
 call rt_write_any_nl@PLT
 jmp xchain760_n9_α
xchain760_n8_β:
xchain760_n8_β:
 jmp xchain760_n1_β
xchain760_n9_α:
jmp xchain760_n1_β
xchain760_n9_β:
jmp xchain760_n1_β
xchain760_n10_α:
# IR_EVERY
 jmp xchain760_n11_α
 xchain760_n10_β:
 jmp xchain760_n11_α
xchain760_n11_α:
# IR_RETURN
bb396_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_wsortf_γ
proc_wsortf_β:
jmp proc_wsortf_ω
proc_wsortf_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_wsortf_ω:
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
  .Lclassspec0: .string "r0()"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lclassspec0]
  call record_register@PLT
  .section .rodata
  .Lclassspec1: .string "r1(a)"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lclassspec1]
  call record_register@PLT
  .section .rodata
  .Lclassspec2: .string "r2(a,b)"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lclassspec2]
  call record_register@PLT
  .section .rodata
  .Lclassspec3: .string "r5(a,b,c,d,e)"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lclassspec3]
  call record_register@PLT
  .section .rodata
  .Lstartup_pname0: .string "listtest"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_listtest_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname1: .string "rectest"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_rectest_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname2: .string "tbltest"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_tbltest_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname3: .string "randval"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_randval_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname4: .string "check"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname4]
  lea rsi, [rip + proc_check_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname5: .string "wlist"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname5]
  lea rsi, [rip + proc_wlist_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname6: .string "copytest"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname6]
  lea rsi, [rip + proc_copytest_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname7: .string "messtest"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname7]
  lea rsi, [rip + proc_messtest_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname8: .string "wsortf"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname8]
  lea rsi, [rip + proc_wsortf_α]
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
xchain804_n0_α:
bb397_α:
  .section .rodata
  .Lcall434_pname: .string "listtest"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall434_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 cmp eax, 99
 je xchain804_n1_α
 jmp xchain804_n1_α
xchain804_n0_β:
 jmp xchain804_n1_α
xchain804_n1_α:
bb398_α:
  .section .rodata
  .Lcall435_pname: .string "rectest"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall435_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je xchain804_n2_α
 jmp xchain804_n2_α
xchain804_n1_β:
 jmp xchain804_n2_α
xchain804_n2_α:
bb399_α:
  .section .rodata
  .Lcall436_pname: .string "tbltest"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall436_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je xchain804_n3_α
 jmp xchain804_n3_α
xchain804_n2_β:
 jmp xchain804_n3_α
xchain804_n3_α:
bb400_α:
  .section .rodata
  .Lcall437_pname: .string "copytest"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall437_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je xchain804_n4_α
 jmp xchain804_n4_α
xchain804_n3_β:
 jmp xchain804_n4_α
xchain804_n4_α:
bb401_α:
  .section .rodata
  .Lcall438_pname: .string "messtest"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall438_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je main_ω
 jmp main_γ
xchain804_n4_β:
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
.S0: .string "bb_unop: operand slot unresolved (LIT_F/NUL or non-slot producer)"
.S1: .string "bb_case_arm(take): needs value slot (op_sb) + case slot (op_off)"
.text
