  .intel_syntax noprefix
  .text
  .globl proc_collate_α
proc_collate_α:
#=======================================================================================================================
    .global proc_collate_α
    .global proc_collate_β
    .global proc_collate_γ
    .global proc_collate_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_collate_α_body:
xchain0_n0_α:
# IR_INITIAL run-once guard
bb1_α:
 mov rdi, 1
 push r10
 push r10
 call rt_initial_fire@PLT
 pop r10
 pop r10
 test rax, rax
 je xchain0_n1_α
 jmp xinit1_body
 xchain0_n0_β:
 jmp xchain0_n1_α
xinit1_body:
xargsub4_n0_α:
# IR_LIT_S
bb2_α:
 mov qword ptr [r12 + 80], 1
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [r12 + 88], rax
 jmp xargsub4_n1_α
 xargsub4_n0_β:
 jmp xargsub4_n2_α
.Lx5_0:
 .quad .Lx5_0_s
.Lx5_0_s:
 .string "abxy"
xargsub4_n1_α:
bb3_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 80]
 mov rdx, qword ptr [r12 + 88]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xargsub4_n2_α
 xargsub4_n1_β:
 jmp xargsub4_n2_α
xargsub4_n2_α:
# IR_LIT_S
bb4_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx7_0]
 mov qword ptr [r12 + 136], rax
 jmp xargsub4_n3_α
 xargsub4_n2_β:
 jmp xargsub4_n4_α
.Lx7_0:
 .quad .Lx7_0_s
.Lx7_0_s:
 .string "cduv"
xargsub4_n3_α:
bb5_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xargsub4_n4_α
 xargsub4_n3_β:
 jmp xargsub4_n4_α
xargsub4_n4_α:
# IR_VAR
bb6_α:
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 104], rax
 jmp xargsub4_n5_α
 xargsub4_n4_β:
 jmp xargsub4_n8_α
xargsub4_n5_α:
# IR_VAR
bb7_α:
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 152], rax
 jmp xargsub4_n6_α
 xargsub4_n5_β:
 jmp xargsub4_n8_α
xargsub4_n6_α:
xargsub4_n7_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xargsub4_n8_α:
# IR_LIT_S
bb10_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx15_0]
 mov qword ptr [r12 + 216], rax
 jmp xargsub4_n9_α
 xargsub4_n8_β:
 jmp xargsub4_n10_α
.Lx15_0:
 .quad .Lx15_0_s
.Lx15_0_s:
 .string "acbdxuyv"
xargsub4_n9_α:
bb11_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xargsub4_n10_α
 xargsub4_n9_β:
 jmp xargsub4_n10_α
xargsub4_n10_α:
# IR_LIT_I
bb12_α:
 mov qword ptr [r12 + 256], 6
 mov rax, qword ptr [rip + .Lx17_0]
 mov qword ptr [r12 + 264], rax
 jmp xargsub4_n11_α
 xargsub4_n10_β:
 jmp xargsub4_n12_α
.Lx17_0:
 .quad 4
xargsub4_n11_α:
bb13_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xargsub4_n12_α
 xargsub4_n11_β:
 jmp xargsub4_n12_α
xargsub4_n12_α:
bb14_α:
# BOX IR_CALL left(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+320] -> [r12+320]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 328], rax
# marshal arg1 = nested producer-box slot [r12+336] -> [r12+336]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 344], rax
  .section .rodata
  .Lrkfn20: .string "left"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn20]
 lea rsi, [r12 + 320]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xargsub4_n14_α
 jmp xargsub4_n13_α
 xargsub4_n12_β:
 jmp xargsub4_n14_α
xargsub4_n13_α:
bb15_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 304]
 mov rdx, qword ptr [r12 + 312]
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xargsub4_n14_α
 xargsub4_n13_β:
 jmp xargsub4_n14_α
xargsub4_n14_α:
bb16_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+400] -> [r12+400]
 mov rax, qword ptr [r12 + 400]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 408], rax
# marshal arg1 = nested producer-box slot [r12+416] -> [r12+416]
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 424], rax
  .section .rodata
  .Lrkfn23: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn23]
 lea rsi, [r12 + 400]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je xargsub4_n16_α
 jmp xargsub4_n15_α
 xargsub4_n14_β:
 jmp xargsub4_n16_α
xargsub4_n15_α:
bb17_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 384]
 mov rdx, qword ptr [r12 + 392]
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xargsub4_n16_α
 xargsub4_n15_β:
 jmp xargsub4_n16_α
xargsub4_n16_α:
xargsub26_n0_α:
# IR_VAR
bb18_α:
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 360], rax
 jmp xicnarg25_done
 xargsub26_n0_β:
 jmp xargsub4_n18_α
xicnarg25_done:
xargsub30_n0_α:
# IR_VAR
bb19_α:
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 440], rax
 jmp xicnarg29_done
 xargsub30_n0_β:
 jmp xargsub4_n18_α
xicnarg29_done:
bb20_α:
  .section .rodata
  .Lcall20_pname: .string "collate"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+352]
 mov rdx, qword ptr [r12+360]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+432]
 mov rdx, qword ptr [r12+440]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall20_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 cmp eax, 99
 je xargsub4_n18_α
 jmp xargsub4_n17_α
xargsub4_n16_β:
 jmp xargsub4_n18_α
xargsub4_n17_α:
bb21_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 464]
 mov rdx, qword ptr [r12 + 472]
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xargsub4_n18_α
 xargsub4_n17_β:
 jmp xargsub4_n18_α
xargsub4_n18_α:
# IR_VAR
bb22_α:
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 360], rax
 jmp xargsub4_n19_α
 xargsub4_n18_β:
 jmp xargsub4_n20_α
xargsub4_n19_α:
bb23_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 352]
 mov rdx, qword ptr [r12 + 360]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xargsub4_n20_α
 xargsub4_n19_β:
 jmp xargsub4_n20_α
xargsub4_n20_α:
# IR_VAR
bb24_α:
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 440], rax
 jmp xargsub4_n21_α
 xargsub4_n20_β:
 jmp xargsub4_n22_α
xargsub4_n21_α:
bb25_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 432]
 mov rdx, qword ptr [r12 + 440]
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xargsub4_n22_α
 xargsub4_n21_β:
 jmp xargsub4_n22_α
xargsub4_n22_α:
bb26_α:
# BOX IR_CALL string(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+544] -> [r12+544]
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 552], rax
  .section .rodata
  .Lrkfn42: .string "string"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn42]
 lea rsi, [r12 + 544]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 cmp eax, 99
 je xargsub4_n24_α
 jmp xargsub4_n23_α
 xargsub4_n22_β:
 jmp xargsub4_n24_α
xargsub4_n23_α:
bb27_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 528]
 mov rdx, qword ptr [r12 + 536]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xargsub4_n24_α
 xargsub4_n23_β:
 jmp xargsub4_n24_α
xargsub4_n24_α:
# IR_VAR
bb28_α:
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 104], rax
 jmp xargsub4_n25_α
 xargsub4_n24_β:
 jmp xchain0_n1_α
xargsub4_n25_α:
 lea rdi, [rip + .S1]
 call rt_bomb@PLT
 ud2
xargsub4_n26_α:
bb30_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 576]
 mov rdx, qword ptr [r12 + 584]
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xargsub4_n27_α
 xargsub4_n26_β:
 jmp xchain0_n1_α
xargsub4_n27_α:
jmp xchain0_n1_α
xargsub4_n27_β:
jmp xchain0_n1_α
xchain0_n1_α:
# IR_VAR
bb31_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n7_α
xchain0_n2_α:
# IR_UNOP
bb32_α:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 call rt_size_d@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n7_α
xchain0_n3_α:
# IR_VAR
bb33_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n7_α
xchain0_n4_α:
# IR_UNOP
bb34_α:
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 call rt_size_d@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp xchain0_n7_α
xchain0_n5_α:
bb35_α:
# IR_BINOP_RELOP
 mov rax, qword ptr [r12 + 616]
 mov rcx, qword ptr [r12 + 632]
 cmp rax, rcx
 jle xchain0_n7_α
 mov rcx, qword ptr [r12 + 624]
 mov qword ptr [r12 + 640], rcx
 mov rcx, qword ptr [r12 + 632]
 mov qword ptr [r12 + 648], rcx
 jmp xchain0_n6_α
 xchain0_n5_β:
 jmp xchain0_n7_α
xchain0_n6_α:
# IR_VAR
bb36_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n8_α
 xchain0_n6_β:
 jmp xchain0_n12_α
xchain0_n7_α:
# IR_VAR
bb37_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n9_α
 xchain0_n7_β:
 jmp xchain0_n18_α
xchain0_n8_α:
xsec59_i1_done:
# IR_LIT_I
bb39_α:
 mov qword ptr [r12 + 656], 6
 mov rax, qword ptr [rip + .Lx61_0]
 mov qword ptr [r12 + 664], rax
 jmp xsec59_i2_done
 xsec59_i2_b:
 jmp xchain0_n12_α
.Lx61_0:
 .quad 0
xsec59_i2_done:
 lea rdi, [rip + .S2]
 call rt_bomb@PLT
 ud2
xchain0_n9_α:
# IR_UNOP
bb41_α:
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 call rt_size_d@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain0_n11_α
 xchain0_n9_β:
 jmp xchain0_n18_α
xchain0_n10_α:
bb42_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 672]
 mov rdx, qword ptr [r12 + 680]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain0_n12_α
 xchain0_n10_β:
 jmp xchain0_n12_α
xchain0_n11_α:
# IR_VAR
bb43_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n13_α
 xchain0_n11_β:
 jmp xchain0_n18_α
xchain0_n12_α:
# IR_VAR
bb44_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n14_α
 xchain0_n12_β:
 jmp xchain0_n22_α
xchain0_n13_α:
# IR_UNOP
bb45_α:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 call rt_size_d@PLT
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain0_n15_α
 xchain0_n13_β:
 jmp xchain0_n18_α
xchain0_n14_α:
# IR_LIT_I
bb46_α:
 mov qword ptr [r12 + 736], 6
 mov rax, qword ptr [rip + .Lx71_0]
 mov qword ptr [r12 + 744], rax
 jmp xsec70_i1_done
 xsec70_i1_b:
 jmp xchain0_n22_α
.Lx71_0:
 .quad 1
xsec70_i1_done:
xsec70_i2_done:
 lea rdi, [rip + .S2]
 call rt_bomb@PLT
 ud2
xchain0_n15_α:
bb49_α:
# IR_BINOP_RELOP
 mov rax, qword ptr [r12 + 696]
 mov rcx, qword ptr [r12 + 728]
 cmp rax, rcx
 jle xchain0_n18_α
 mov rcx, qword ptr [r12 + 720]
 mov qword ptr [r12 + 768], rcx
 mov rcx, qword ptr [r12 + 728]
 mov qword ptr [r12 + 776], rcx
 jmp xchain0_n17_α
 xchain0_n15_β:
 jmp xchain0_n18_α
xchain0_n16_α:
bb50_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 752]
 mov rdx, qword ptr [r12 + 760]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain0_n19_α
 xchain0_n16_β:
 jmp xchain0_n22_α
xchain0_n17_α:
# IR_VAR
bb51_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n20_α
 xchain0_n17_β:
 jmp xchain0_n25_α
xchain0_n18_α:
# IR_LIT_S
bb52_α:
 mov qword ptr [r12 + 800], 1
 mov rax, qword ptr [rip + .Lx78_0]
 mov qword ptr [r12 + 808], rax
 jmp xchain0_n21_α
 xchain0_n18_β:
 jmp xchain0_n22_α
.Lx78_0:
 .quad .Lx78_0_s
.Lx78_0_s:
 .string ""
xchain0_n19_α:
jmp xchain0_n22_α
xchain0_n19_β:
jmp xchain0_n22_α
xchain0_n20_α:
xsec79_i1_done:
# IR_LIT_I
bb54_α:
 mov qword ptr [r12 + 816], 6
 mov rax, qword ptr [rip + .Lx81_0]
 mov qword ptr [r12 + 824], rax
 jmp xsec79_i2_done
 xsec79_i2_b:
 jmp xchain0_n25_α
.Lx81_0:
 .quad 0
xsec79_i2_done:
 lea rdi, [rip + .S2]
 call rt_bomb@PLT
 ud2
xchain0_n21_α:
bb56_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 800]
 mov rdx, qword ptr [r12 + 808]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 jmp xchain0_n22_α
 xchain0_n21_β:
 jmp xchain0_n22_α
xchain0_n22_α:
# IR_VAR
bb57_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n24_α
 xchain0_n22_β:
 jmp xchain0_n28_α
xchain0_n23_α:
bb58_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 832]
 mov rdx, qword ptr [r12 + 840]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xchain0_n25_α
 xchain0_n23_β:
 jmp xchain0_n25_α
xchain0_n24_α:
# IR_UNOP
bb59_α:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 call rt_size_d@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 jmp xchain0_n26_α
 xchain0_n24_β:
 jmp xchain0_n28_α
xchain0_n25_α:
# IR_VAR
bb60_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n27_α
 xchain0_n25_β:
 jmp xchain0_n22_α
xchain0_n26_α:
bb61_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 880]
 mov rdx, qword ptr [r12 + 888]
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 jmp xchain0_n28_α
 xchain0_n26_β:
 jmp xchain0_n28_α
xchain0_n27_α:
# IR_LIT_I
bb62_α:
 mov qword ptr [r12 + 912], 6
 mov rax, qword ptr [rip + .Lx92_0]
 mov qword ptr [r12 + 920], rax
 jmp xsec91_i1_done
 xsec91_i1_b:
 jmp xchain0_n22_α
.Lx92_0:
 .quad 1
xsec91_i1_done:
xsec91_i2_done:
 lea rdi, [rip + .S2]
 call rt_bomb@PLT
 ud2
xchain0_n28_α:
# IR_VAR
bb65_α:
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 72], rax
 jmp xchain0_n30_α
 xchain0_n28_β:
 jmp xchain0_n34_α
xchain0_n29_α:
bb66_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 928]
 mov rdx, qword ptr [r12 + 936]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 jmp xchain0_n31_α
 xchain0_n29_β:
 jmp xchain0_n22_α
xchain0_n30_α:
# IR_VAR
bb67_α:
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 280], rax
 jmp xchain0_n32_α
 xchain0_n30_β:
 jmp xchain0_n34_α
xchain0_n31_α:
jmp xchain0_n22_α
xchain0_n31_β:
jmp xchain0_n22_α
xchain0_n32_α:
bb68_α:
# IR_BINOP_RELOP
 mov rax, qword ptr [r12 + 72]
 mov rcx, qword ptr [r12 + 280]
 cmp rax, rcx
 jg xchain0_n34_α
 mov rcx, qword ptr [r12 + 272]
 mov qword ptr [r12 + 960], rcx
 mov rcx, qword ptr [r12 + 280]
 mov qword ptr [r12 + 968], rcx
 jmp xchain0_n33_α
 xchain0_n32_β:
 jmp xchain0_n34_α
xchain0_n33_α:
bb69_α:
# BOX IR_CALL map(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+224] -> [r12+1040]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 1040], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 1048], rax
# marshal arg1 = LIT_I -> [r12+1056]
 mov qword ptr [r12 + 1056], 6
 movabs rax, 2
 mov qword ptr [r12 + 1064], rax
  .section .rodata
  .Lcallfn102: .string "left"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn102]
 lea rsi, [r12 + 1040]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
# marshal arg0 = varslot [r12+96] -> [r12+1072]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 1080], rax
# marshal arg1 = varslot [r12+64] -> [r12+1088]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 1096], rax
  .section .rodata
  .Lcallfn103: .string "left"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn103]
 lea rsi, [r12 + 1072]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
# marshal arg2 = varslot [r12+16] -> [r12+1024]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1032], rax
  .section .rodata
  .Lrkfn104: .string "map"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn104]
 lea rsi, [r12 + 992]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 cmp eax, 99
 je proc_collate_ω
 jmp xchain0_n35_α
 xchain0_n33_β:
 jmp proc_collate_ω
xchain0_n34_α:
bb70_α:
# BOX IR_CALL map(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+224] -> [r12+1120]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 1128], rax
# marshal arg1 = varslot [r12+176] -> [r12+1136]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 1136], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 1144], rax
# marshal arg0 = varslot [r12+16] -> [r12+1168]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1168], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1176], rax
# marshal arg1 = varslot [r12+272] -> [r12+1184]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 1184], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 1192], rax
  .section .rodata
  .Lcallfn106: .string "left"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn106]
 lea rsi, [r12 + 1168]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
  .section .rodata
  .Lrkfn107: .string "map"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn107]
 lea rsi, [r12 + 1120]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 cmp eax, 99
 je proc_collate_ω
 jmp xchain0_n36_α
 xchain0_n34_β:
 jmp proc_collate_ω
xchain0_n35_α:
# IR_VAR
bb71_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xchain0_n37_α
 xchain0_n35_β:
 jmp proc_collate_ω
xchain0_n36_α:
xargsub111_n0_α:
bb72_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+1216]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1216], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1224], rax
# marshal arg1 = varslot [r12+64] -> [r12+1232]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 1232], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 1240], rax
  .section .rodata
  .Lrkfn113: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn113]
 lea rsi, [r12 + 1216]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1200], rax
 mov qword ptr [r12 + 1208], rdx
 cmp eax, 99
 je proc_collate_ω
 jmp xicnarg110_done
 xargsub111_n0_β:
 jmp proc_collate_ω
xicnarg110_done:
xargsub115_n0_α:
bb73_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+32] -> [r12+1264]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 1264], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 1272], rax
# marshal arg1 = varslot [r12+64] -> [r12+1280]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 1280], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 1288], rax
  .section .rodata
  .Lrkfn117: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn117]
 lea rsi, [r12 + 1264]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 cmp eax, 99
 je proc_collate_ω
 jmp xicnarg114_done
 xargsub115_n0_β:
 jmp proc_collate_ω
xicnarg114_done:
bb74_α:
  .section .rodata
  .Lcall77_pname: .string "collate"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+120]
 mov rdx, qword ptr [r12+120]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+124]
 mov rdx, qword ptr [r12+125]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall77_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1296], rax
 mov qword ptr [r12 + 1304], rdx
 cmp eax, 99
 je proc_collate_ω
 jmp xchain0_n38_α
xchain0_n36_β:
 jmp proc_collate_ω
xchain0_n37_α:
bb75_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 976]
 mov rsi, qword ptr [r12 + 984]
 mov rdx, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 56]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1312], rax
 mov qword ptr [r12 + 1320], rdx
 jmp xchain0_n39_α
 xchain0_n37_β:
 jmp proc_collate_ω
xchain0_n38_α:
bb76_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 1104]
 mov rsi, qword ptr [r12 + 1112]
 mov rdx, qword ptr [r12 + 1296]
 mov rcx, qword ptr [r12 + 1304]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 jmp xchain0_n40_α
 xchain0_n38_β:
 jmp proc_collate_ω
xchain0_n39_α:
# IR_RETURN
bb77_α:
 mov rax, qword ptr [r12 + 1312]
 mov rdx, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_collate_γ
xchain0_n40_α:
# IR_VAR
bb78_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xchain0_n41_α
 xchain0_n40_β:
 jmp proc_collate_ω
xchain0_n41_α:
bb79_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 1328]
 mov rsi, qword ptr [r12 + 1336]
 mov rdx, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 56]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1344], rax
 mov qword ptr [r12 + 1352], rdx
 jmp xchain0_n42_α
 xchain0_n41_β:
 jmp proc_collate_ω
xchain0_n42_α:
# IR_RETURN
bb80_α:
 mov rax, qword ptr [r12 + 1344]
 mov rdx, qword ptr [r12 + 1352]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_collate_γ
proc_collate_β:
jmp proc_collate_ω
proc_collate_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_collate_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_decollate_α
proc_decollate_α:
#=======================================================================================================================
    .global proc_decollate_α
    .global proc_decollate_β
    .global proc_decollate_γ
    .global proc_decollate_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_decollate_α_body:
xchain126_n0_α:
# IR_INITIAL run-once guard
bb81_α:
 mov rdi, 127
 push r10
 push r10
 call rt_initial_fire@PLT
 pop r10
 pop r10
 test rax, rax
 je xchain126_n1_α
 jmp xinit127_body
 xchain126_n0_β:
 jmp xchain126_n1_α
xinit127_body:
xargsub130_n0_α:
xargsub132_n0_α:
# IR_KEYWORD_read
bb82_α:
 mov rdi, qword ptr [rip + .Lx133_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xargsub132_n1_α
 xargsub132_n0_β:
 jmp xargsub130_n2_α
.Lx133_0:
 .quad .Lx133_0_s
.Lx133_0_s:
 .string "&cset"
xargsub132_n1_α:
# IR_LIT_I
bb83_α:
 mov qword ptr [r12 + 80], 6
 mov rax, qword ptr [rip + .Lx135_0]
 mov qword ptr [r12 + 88], rax
 jmp xsec134_i1_done
 xsec134_i1_b:
 jmp xargsub130_n2_α
.Lx135_0:
 .quad 2
xsec134_i1_done:
# IR_LIT_I
bb84_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx136_0]
 mov qword ptr [r12 + 104], rax
 jmp xsec134_i2_done
 xsec134_i2_b:
 jmp xargsub130_n2_α
.Lx136_0:
 .quad 0
xsec134_i2_done:
# IR_SECTION
bb85_α:
 mov rdi, qword ptr [r12 + 64]
 mov rsi, qword ptr [r12 + 72]
 mov rdx, qword ptr [r12 + 80]
 mov rcx, qword ptr [r12 + 88]
 mov r8, qword ptr [r12 + 96]
 mov r9, qword ptr [r12 + 104]
 call subscript_get2@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xicnarg131_done
 xargsub132_n1_β:
 jmp xargsub130_n2_α
xicnarg131_done:
xargsub139_n0_α:
bb86_α:
# BOX IR_CALL repl(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+176] -> [r12+176]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 184], rax
# marshal arg1 = LIT_I -> [r12+192]
 mov qword ptr [r12 + 192], 6
 movabs rax, 1
 mov qword ptr [r12 + 200], rax
  .section .rodata
  .Lcallfn141: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn141]
 lea rsi, [r12 + 176]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
# marshal arg1 = nested producer-box slot [r12+160] -> [r12+160]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn142: .string "repl"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn142]
 lea rsi, [r12 + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xargsub130_n2_α
 jmp xicnarg138_done
 xargsub139_n0_β:
 jmp xargsub130_n2_α
xicnarg138_done:
bb87_α:
  .section .rodata
  .Lcall91_pname: .string "collate"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+112]
 mov rdx, qword ptr [r12+120]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+128]
 mov rdx, qword ptr [r12+136]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall91_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xargsub130_n2_α
 jmp xargsub130_n1_α
xargsub130_n0_β:
 jmp xargsub130_n2_α
xargsub130_n1_α:
bb88_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xargsub130_n2_α
 xargsub130_n1_β:
 jmp xargsub130_n2_α
xargsub130_n2_α:
bb89_α:
# BOX IR_CALL string(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+272] -> [r12+272]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 280], rax
  .section .rodata
  .Lrkfn146: .string "string"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn146]
 lea rsi, [r12 + 272]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je xargsub130_n4_α
 jmp xargsub130_n3_α
 xargsub130_n2_β:
 jmp xargsub130_n4_α
xargsub130_n3_α:
bb90_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xargsub130_n4_α
 xargsub130_n3_β:
 jmp xargsub130_n4_α
xargsub130_n4_α:
# IR_VAR
bb91_α:
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 232], rax
 jmp xargsub130_n5_α
 xargsub130_n4_β:
 jmp xchain126_n1_α
xargsub130_n5_α:
 lea rdi, [rip + .S1]
 call rt_bomb@PLT
 ud2
xargsub130_n6_α:
bb93_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xargsub130_n7_α
 xargsub130_n6_β:
 jmp xchain126_n1_α
xargsub130_n7_α:
jmp xchain126_n1_α
xargsub130_n7_β:
jmp xchain126_n1_α
xchain126_n1_α:
# IR_VAR
bb94_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain126_n2_α
 xchain126_n1_β:
 jmp xchain126_n5_α
xchain126_n2_α:
# IR_LIT_I
bb95_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx154_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain126_n3_α
 xchain126_n2_β:
 jmp xchain126_n5_α
.Lx154_0:
 .quad 2
xchain126_n3_α:
bb96_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 40]
 mov rcx, qword ptr [r12 + 376]
 cqo
 idiv rcx
 mov rax, rdx
 mov qword ptr [r12 + 384], 6
 mov qword ptr [r12 + 392], rax
 jmp xchain126_n4_α
 xchain126_n3_β:
 jmp xchain126_n5_α
xchain126_n4_α:
bb97_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 384]
 mov rdx, qword ptr [r12 + 392]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain126_n5_α
 xchain126_n4_β:
 jmp xchain126_n5_α
xchain126_n5_α:
# IR_VAR
bb98_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain126_n6_α
 xchain126_n5_β:
 jmp xchain126_n8_α
xchain126_n6_α:
# IR_UNOP
bb99_α:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 call rt_size_d@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain126_n7_α
 xchain126_n6_β:
 jmp xchain126_n8_α
xchain126_n7_α:
bb100_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 416]
 mov rdx, qword ptr [r12 + 424]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain126_n8_α
 xchain126_n7_β:
 jmp xchain126_n8_α
xchain126_n8_α:
# IR_VAR
bb101_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xchain126_n9_α
 xchain126_n8_β:
 jmp xchain126_n12_α
xchain126_n9_α:
# IR_VAR
bb102_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain126_n10_α
 xchain126_n9_β:
 jmp xchain126_n12_α
xchain126_n10_α:
bb103_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 56]
 mov rcx, qword ptr [r12 + 40]
 add rax, rcx
 mov qword ptr [r12 + 448], 6
 mov qword ptr [r12 + 456], rax
 jmp xchain126_n11_α
 xchain126_n10_β:
 jmp xchain126_n12_α
xchain126_n11_α:
# IR_VAR
bb104_α:
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 344], rax
 jmp xchain126_n13_α
 xchain126_n11_β:
 jmp xchain126_n12_α
xchain126_n12_α:
bb105_α:
# BOX IR_CALL map(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+288] -> [r12+480]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 488], rax
# marshal arg1 = varslot [r12+224] -> [r12+496]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 504], rax
# marshal arg2 = varslot [r12+16] -> [r12+512]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 520], rax
  .section .rodata
  .Lrkfn169: .string "map"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn169]
 lea rsi, [r12 + 480]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 cmp eax, 99
 je proc_decollate_ω
 jmp xchain126_n14_α
 xchain126_n12_β:
 jmp proc_decollate_ω
xchain126_n13_α:
bb106_α:
# IR_BINOP_RELOP
 mov rax, qword ptr [r12 + 456]
 mov rcx, qword ptr [r12 + 344]
 cmp rax, rcx
 jg xchain126_n12_α
 mov rcx, qword ptr [r12 + 336]
 mov qword ptr [r12 + 528], rcx
 mov rcx, qword ptr [r12 + 344]
 mov qword ptr [r12 + 536], rcx
 jmp xchain126_n15_α
 xchain126_n13_β:
 jmp xchain126_n12_α
xchain126_n14_α:
xargsub172_n0_α:
# IR_VAR
bb107_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xargsub172_n1_α
 xargsub172_n0_β:
 jmp proc_decollate_ω
xargsub172_n1_α:
xsec175_i1_done:
# IR_LIT_I
bb109_α:
 mov qword ptr [r12 + 544], 6
 mov rax, qword ptr [rip + .Lx177_0]
 mov qword ptr [r12 + 552], rax
 jmp xsec175_i2_done
 xsec175_i2_b:
 jmp proc_decollate_ω
.Lx177_0:
 .quad 0
xsec175_i2_done:
 lea rdi, [rip + .S2]
 call rt_bomb@PLT
 ud2
xicnarg171_done:
xargsub180_n0_α:
# IR_VAR
bb111_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xicnarg179_done
 xargsub180_n0_β:
 jmp proc_decollate_ω
xicnarg179_done:
bb112_α:
  .section .rodata
  .Lcall116_pname: .string "decollate"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+560]
 mov rdx, qword ptr [r12+568]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+32]
 mov rdx, qword ptr [r12+40]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall116_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 cmp eax, 99
 je proc_decollate_ω
 jmp xchain126_n16_α
xchain126_n14_β:
 jmp proc_decollate_ω
xchain126_n15_α:
bb113_α:
# BOX IR_CALL map(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+288] -> [r12+608]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 616], rax
# marshal arg1 = varslot [r12+224] -> [r12+624]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 632], rax
# marshal arg2 = varslot [r12+16] -> [r12+640]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 648], rax
  .section .rodata
  .Lrkfn185: .string "map"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn185]
 lea rsi, [r12 + 608]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 cmp eax, 99
 je proc_decollate_ω
 jmp xchain126_n17_α
 xchain126_n15_β:
 jmp proc_decollate_ω
xchain126_n16_α:
bb114_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 mov rdx, qword ptr [r12 + 576]
 mov rcx, qword ptr [r12 + 584]
 call str_concat_d@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain126_n18_α
 xchain126_n16_β:
 jmp proc_decollate_ω
xchain126_n17_α:
# IR_RETURN
bb115_α:
 mov rax, qword ptr [r12 + 592]
 mov rdx, qword ptr [r12 + 600]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_decollate_γ
xchain126_n18_α:
# IR_RETURN
bb116_α:
 mov rax, qword ptr [r12 + 656]
 mov rdx, qword ptr [r12 + 664]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_decollate_γ
proc_decollate_β:
jmp proc_decollate_ω
proc_decollate_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_decollate_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_perm_α
proc_perm_α:
#=======================================================================================================================
    .global proc_perm_α
    .global proc_perm_β
    .global proc_perm_γ
    .global proc_perm_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_perm_α_body:
xchain189_n0_α:
bb117_α:
# BOX IR_CALL set(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn191: .string "set"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn191]
 lea rsi, [r12 + 48]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je xchain189_n2_α
 jmp xchain189_n1_α
 xchain189_n0_β:
 jmp xchain189_n2_α
xchain189_n1_α:
bb118_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 jmp xchain189_n2_α
 xchain189_n1_β:
 jmp xchain189_n2_α
xchain189_n2_α:
# IR_LIT_I
bb119_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx193_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain189_n3_α
 xchain189_n2_β:
 jmp xchain189_n10_β
.Lx193_0:
 .quad 1
xchain189_n3_α:
# IR_LIT_I
bb120_α:
 mov qword ptr [r12 + 80], 6
 mov rax, qword ptr [rip + .Lx194_0]
 mov qword ptr [r12 + 88], rax
 jmp xchain189_n4_α
 xchain189_n3_β:
 jmp xchain189_n10_β
.Lx194_0:
 .quad 2
xchain189_n4_α:
# IR_TO
bb121_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 112], rax
.Lx196_0:
 mov rax, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg xchain189_n9_α
 mov qword ptr [r12 + 96], 6
 mov qword ptr [r12 + 104], rax
 jmp xchain189_n5_α
 xchain189_n4_β:
 inc qword ptr [r12 + 112]
 jmp .Lx196_0
xchain189_n5_α:
# IR_VAR
bb122_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain189_n6_α
 xchain189_n5_β:
 jmp xchain189_n10_β
xchain189_n6_α:
xargsub200_n0_α:
# IR_LIT_S
bb123_α:
 mov qword ptr [r12 + 120], 1
 mov rax, qword ptr [rip + .Lx201_0]
 mov qword ptr [r12 + 128], rax
 jmp xicnarg199_done
 xargsub200_n0_β:
 jmp xchain189_n8_α
.Lx201_0:
 .quad .Lx201_0_s
.Lx201_0_s:
 .string "ogram"
xicnarg199_done:
bb124_α:
  .section .rodata
  .Lcall128_pname: .string "permute"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+120]
 mov rdx, qword ptr [r12+128]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall128_pname]
 mov esi, 1
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 136], rax
 mov qword ptr [r12 + 144], rdx
 cmp eax, 99
 je xchain189_n8_α
 jmp xchain189_n7_α
xchain189_n6_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 136], rax
 mov qword ptr [r12 + 144], rdx
 cmp eax, 99
 je xchain189_n8_α
 jmp xchain189_n7_α
xchain189_n7_α:
bb125_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+168]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 168], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 176], rax
# marshal arg1 = nested producer-box slot [r12+136] -> [r12+184]
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 184], rax
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 192], rax
  .section .rodata
  .Lrkfn204: .string "insert"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn204]
 lea rsi, [r12 + 168]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 152], rax
 mov qword ptr [r12 + 160], rdx
 cmp eax, 99
 je xchain189_n10_β
 jmp xchain189_n6_β
 xchain189_n7_β:
 jmp xchain189_n10_β
xchain189_n8_α:
# IR_EVERY
 jmp xchain189_n4_β
 xchain189_n8_β:
 jmp xchain189_n4_β
xchain189_n9_α:
# IR_EVERY
 jmp xchain189_n10_α
 xchain189_n9_β:
 jmp xchain189_n10_α
xchain189_n10_α:
bb128_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+216]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 216], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 224], rax
  .section .rodata
  .Lrkfn209: .string "sort"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn209]
 lea rsi, [r12 + 216]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 200], rax
 mov qword ptr [r12 + 208], rdx
 cmp eax, 99
 je xchain189_n12_α
 jmp xbang207_iter_done
 xbang207_iter_β:
 jmp xchain189_n12_α
xbang207_iter_done:
# IR_LIST_BANG
bb129_α:
 mov qword ptr [r12 + 232], 0
.Lx211_0:
 mov rdi, qword ptr [r12 + 200]
 mov rsi, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 232]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp rax, 99
 je xchain189_n12_α
 jmp xchain189_n11_α
 xchain189_n10_β:
 inc qword ptr [r12 + 232]
 jmp .Lx211_0
xchain189_n11_α:
bb130_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 240]
 mov rsi, qword ptr [r12 + 248]
 call rt_write_any_nl@PLT
 jmp xchain189_n10_β
xchain189_n11_β:
xchain189_n11_β:
 jmp xchain189_n10_β
xchain189_n12_α:
# IR_EVERY
 jmp proc_perm_ω
 xchain189_n12_β:
 jmp proc_perm_ω
proc_perm_β:
jmp proc_perm_ω
proc_perm_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_perm_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_permute_α
proc_permute_α:
#=======================================================================================================================
    .global proc_permute_α
    .global proc_permute_β
    .global proc_permute_γ
    .global proc_permute_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
  cmp esi, 0
  jne proc_permute_β
proc_permute_α_body:
xchain214_n0_α:
# IR_VAR
bb132_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain214_n1_α
 xchain214_n0_β:
 jmp xchain214_n4_α
xchain214_n1_α:
# IR_LIT_S
bb133_α:
 mov qword ptr [r12 + 80], 1
 mov rax, qword ptr [rip + .Lx217_0]
 mov qword ptr [r12 + 88], rax
 jmp xchain214_n2_α
 xchain214_n1_β:
 jmp xchain214_n4_α
.Lx217_0:
 .quad .Lx217_0_s
.Lx217_0_s:
 .string ""
xchain214_n2_α:
bb134_α:
# IR_BINOP_RELOP
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 80]
 mov rcx, qword ptr [r12 + 88]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain214_n4_α
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 104], rax
 jmp xchain214_n3_α
 xchain214_n2_β:
 jmp xchain214_n4_α
xchain214_n3_α:
# IR_LIT_S
bb135_α:
 mov qword ptr [r12 + 112], 1
 mov rax, qword ptr [rip + .Lx219_0]
 mov qword ptr [r12 + 120], rax
 jmp xchain214_n5_α
 xchain214_n3_β:
 jmp proc_permute_ω
.Lx219_0:
 .quad .Lx219_0_s
.Lx219_0_s:
 .string ""
xchain214_n4_α:
# IR_LIT_I
bb136_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx220_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain214_n6_α
 xchain214_n4_β:
 jmp xchain214_n17_β
.Lx220_0:
 .quad 1
xchain214_n5_α:
# IR_RETURN
bb137_α:
 mov rax, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_permute_γ
xchain214_n6_α:
# IR_VAR
bb138_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain214_n7_α
 xchain214_n6_β:
 jmp xchain214_n17_β
xchain214_n7_α:
# IR_UNOP
bb139_α:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 call rt_size_d@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain214_n8_α
 xchain214_n7_β:
 jmp xchain214_n17_β
xchain214_n8_α:
# IR_TO
bb140_α:
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 176], rax
.Lx226_0:
 mov rax, qword ptr [r12 + 176]
 mov rcx, qword ptr [r12 + 152]
 cmp rax, rcx
 jg xchain214_n21_α
 mov qword ptr [r12 + 160], 6
 mov qword ptr [r12 + 168], rax
 jmp xchain214_n9_α
 xchain214_n8_β:
 inc qword ptr [r12 + 176]
 jmp .Lx226_0
xchain214_n9_α:
bb141_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 184], rax
 mov qword ptr [r12 + 192], rdx
 jmp xchain214_n10_α
 xchain214_n9_β:
 jmp xchain214_n17_β
xchain214_n10_α:
bb142_α:
# BOX IR_CALL [](...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+16] -> [r12+216]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 216], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 224], rax
# marshal arg1 = varslot [r12+32] -> [r12+232]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 232], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 240], rax
  .section .rodata
  .Lbynamefn229: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn229]
 lea rsi, [r12 + 216]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 200], rax
 mov qword ptr [r12 + 208], rdx
 cmp eax, 99
 je xchain214_n12_α
 jmp xchain214_n11_α
xchain214_n10_β:
 jmp xchain214_n12_α
xchain214_n11_α:
bb143_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 200]
 mov rdx, qword ptr [r12 + 208]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov qword ptr [r12 + 248], rax
 mov qword ptr [r12 + 256], rdx
 jmp xchain214_n12_α
 xchain214_n11_β:
 jmp xchain214_n12_α
xchain214_n12_α:
# IR_VAR
bb144_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain214_n13_α
 xchain214_n12_β:
 jmp xchain214_n14_α
xchain214_n13_α:
bb145_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 mov qword ptr [r12 + 264], rax
 mov qword ptr [r12 + 272], rdx
 jmp xchain214_n14_α
 xchain214_n13_β:
 jmp xchain214_n14_α
xchain214_n14_α:
# IR_VAR
bb146_α:
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 72], rax
 jmp xchain214_n15_α
 xchain214_n14_β:
 jmp xchain214_n16_α
xchain214_n15_α:
bb147_α:
# IR_IDX_SET: base/key/value from [ζ+off]; inline DT_A+int fast path, else subscript_set
 mov rax, qword ptr [r12 + 248]
 cmp eax, 4
 jne .Lx238_0
 mov rax, qword ptr [r12 + 264]
 cmp eax, 6
 jne .Lx238_0
 mov rsi, qword ptr [r12 + 256]
 mov rcx, qword ptr [r12 + 272]
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx238_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx238_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add r11, rcx
 mov rax, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov qword ptr [r11 + 0], rax
 mov qword ptr [r11 + 8], rdx
 jmp xchain214_n16_α
.Lx238_0:
 mov rdi, qword ptr [r12 + 248]
 mov rsi, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 mov rcx, qword ptr [r12 + 272]
 mov r8, qword ptr [r12 + 64]
 mov r9, qword ptr [r12 + 72]
 call subscript_set@PLT
 cmp eax, 0
 je xchain214_n16_α
 jmp xchain214_n16_α
 xchain214_n15_β:
 jmp xchain214_n16_α
xchain214_n16_α:
# IR_VAR
bb148_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xchain214_n17_α
 xchain214_n16_β:
 jmp proc_permute_ω
xchain214_n17_α:
xargsub242_n0_α:
# IR_VAR
bb149_α:
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 72], rax
 jmp xicnarg241_done
 xargsub242_n0_β:
 jmp proc_permute_ω
xicnarg241_done:
bb150_α:
  .section .rodata
  .Lcall154_pname: .string "permute"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+64]
 mov rdx, qword ptr [r12+72]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall154_pname]
 mov esi, 1
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 280], rax
 mov qword ptr [r12 + 288], rdx
 cmp eax, 99
 je proc_permute_ω
 jmp xchain214_n18_α
xchain214_n17_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 280], rax
 mov qword ptr [r12 + 288], rdx
 cmp eax, 99
 je proc_permute_ω
 jmp xchain214_n18_α
xchain214_n18_α:
bb151_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 48]
 mov rsi, qword ptr [r12 + 56]
 mov rdx, qword ptr [r12 + 280]
 mov rcx, qword ptr [r12 + 288]
 call str_concat_d@PLT
 mov qword ptr [r12 + 296], rax
 mov qword ptr [r12 + 304], rdx
 jmp xchain214_n19_α
 xchain214_n18_β:
 jmp proc_permute_ω
xchain214_n19_α:
# IR_SUSPEND yield+resume
bb152_α:
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 8], rax
 jmp proc_permute_γ
 xchain214_n19_β:
 jmp xchain214_n20_α
xchain214_n20_α:
jmp xchain214_n8_β
xchain214_n20_β:
jmp xchain214_n8_β
xchain214_n21_α:
# IR_EVERY
 jmp proc_permute_ω
 xchain214_n21_β:
 jmp proc_permute_ω
proc_permute_β:
jmp xchain214_n19_β
proc_permute_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_permute_ω:
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
  .Lstartup_pname0: .string "collate"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_collate_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname1: .string "decollate"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_decollate_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname2: .string "perm"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_perm_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname3: .string "permute"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_permute_α]
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
xchain250_n0_α:
xargsub252_n0_α:
# IR_KEYWORD_read
bb154_α:
 mov rdi, qword ptr [rip + .Lx253_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp xicnarg251_done
 xargsub252_n0_β:
 jmp xchain250_n2_α
.Lx253_0:
 .quad .Lx253_0_s
.Lx253_0_s:
 .string "&cset"
xicnarg251_done:
xargsub255_n0_α:
# IR_KEYWORD_read
bb155_α:
 mov rdi, qword ptr [rip + .Lx256_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 jmp xicnarg254_done
 xargsub255_n0_β:
 jmp xchain250_n2_α
.Lx256_0:
 .quad .Lx256_0_s
.Lx256_0_s:
 .string "&cset"
xicnarg254_done:
bb156_α:
  .section .rodata
  .Lcall160_pname: .string "collate"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+32]
 mov rdx, qword ptr [r12+40]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+48]
 mov rdx, qword ptr [r12+56]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall160_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je xchain250_n2_α
 jmp xchain250_n1_α
xchain250_n0_β:
 jmp xchain250_n2_α
xchain250_n1_α:
bb157_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xchain250_n2_α
 xchain250_n1_β:
 jmp xchain250_n2_α
xchain250_n2_α:
xargsub260_n0_α:
bb158_α:
# BOX IR_CALL reverse(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+112] -> [r12+112]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn262: .string "reverse"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn262]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain250_n4_α
 jmp xicnarg259_done
 xargsub260_n0_β:
 jmp xchain250_n4_α
xicnarg259_done:
xargsub264_n0_α:
bb159_α:
# BOX IR_CALL reverse(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = nested producer-box slot [r12+144] -> [r12+144]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn266: .string "reverse"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn266]
 lea rsi, [r12 + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain250_n4_α
 jmp xicnarg263_done
 xargsub264_n0_β:
 jmp xchain250_n4_α
xicnarg263_done:
bb160_α:
  .section .rodata
  .Lcall164_pname: .string "collate"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+96]
 mov rdx, qword ptr [r12+104]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+128]
 mov rdx, qword ptr [r12+136]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall164_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je xchain250_n4_α
 jmp xchain250_n3_α
xchain250_n2_β:
 jmp xchain250_n4_α
xchain250_n3_α:
bb161_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain250_n4_α
 xchain250_n3_β:
 jmp xchain250_n4_α
xchain250_n4_α:
bb162_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+0] -> [r12+224]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 232], rax
# marshal arg1 = LIT_I -> [r12+240]
 mov qword ptr [r12 + 240], 6
 movabs rax, 0
 mov qword ptr [r12 + 248], rax
  .section .rodata
  .Lcallfn270: .string "decollate"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn270]
 lea rsi, [r12 + 224]
 mov edx, 2
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
  .section .rodata
  .Lrkfn271: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn271]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain250_n6_α
 jmp xchain250_n5_α
 xchain250_n4_β:
 jmp xchain250_n6_α
xchain250_n5_α:
bb163_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 192]
 mov rsi, qword ptr [r12 + 200]
 call rt_write_any_nl@PLT
 jmp xchain250_n6_α
xchain250_n5_β:
xchain250_n5_β:
 jmp xchain250_n6_α
xchain250_n6_α:
bb164_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+0] -> [r12+288]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 296], rax
# marshal arg1 = LIT_I -> [r12+304]
 mov qword ptr [r12 + 304], 6
 movabs rax, 1
 mov qword ptr [r12 + 312], rax
  .section .rodata
  .Lcallfn274: .string "decollate"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn274]
 lea rsi, [r12 + 288]
 mov edx, 2
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
  .section .rodata
  .Lrkfn275: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn275]
 lea rsi, [r12 + 272]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je xchain250_n8_α
 jmp xchain250_n7_α
 xchain250_n6_β:
 jmp xchain250_n8_α
xchain250_n7_α:
bb165_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 256]
 mov rsi, qword ptr [r12 + 264]
 call rt_write_any_nl@PLT
 jmp xchain250_n8_α
xchain250_n7_β:
xchain250_n7_β:
 jmp xchain250_n8_α
xchain250_n8_α:
bb166_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+352]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 360], rax
# marshal arg1 = LIT_I -> [r12+368]
 mov qword ptr [r12 + 368], 6
 movabs rax, 1
 mov qword ptr [r12 + 376], rax
  .section .rodata
  .Lcallfn278: .string "decollate"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn278]
 lea rsi, [r12 + 352]
 mov edx, 2
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
  .section .rodata
  .Lrkfn279: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn279]
 lea rsi, [r12 + 336]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je xchain250_n10_α
 jmp xchain250_n9_α
 xchain250_n8_β:
 jmp xchain250_n10_α
xchain250_n9_α:
bb167_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 320]
 mov rsi, qword ptr [r12 + 328]
 call rt_write_any_nl@PLT
 jmp xchain250_n10_α
xchain250_n9_β:
xchain250_n9_β:
 jmp xchain250_n10_α
xchain250_n10_α:
bb168_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+416]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 424], rax
# marshal arg1 = LIT_I -> [r12+432]
 mov qword ptr [r12 + 432], 6
 movabs rax, 0
 mov qword ptr [r12 + 440], rax
  .section .rodata
  .Lcallfn282: .string "decollate"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn282]
 lea rsi, [r12 + 416]
 mov edx, 2
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
  .section .rodata
  .Lrkfn283: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn283]
 lea rsi, [r12 + 400]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je xchain250_n12_α
 jmp xchain250_n11_α
 xchain250_n10_β:
 jmp xchain250_n12_α
xchain250_n11_α:
bb169_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 384]
 mov rsi, qword ptr [r12 + 392]
 call rt_write_any_nl@PLT
 jmp xchain250_n12_α
xchain250_n11_β:
xchain250_n11_β:
 jmp xchain250_n12_α
xchain250_n12_α:
bb170_α:
  .section .rodata
  .Lcall178_pname: .string "perm"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall178_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 cmp eax, 99
 je main_ω
 jmp main_γ
xchain250_n12_β:
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
.S0: .string "bb_assign_local: needs descr flat-chain + rhs slot + varslot + own slot"
.S1: .string "bb_unop: operand slot unresolved (LIT_F/NUL or non-slot producer)"
.S2: .string "bb_section: needs own slot + base/i1/i2 operand slots"
.text
