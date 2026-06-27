  .intel_syntax noprefix
  .text
  .globl proc_wordcount_α
proc_wordcount_α:
#=======================================================================================================================
    .global proc_wordcount_α
    .global proc_wordcount_β
    .global proc_wordcount_γ
    .global proc_wordcount_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_wordcount_α_body:
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
# IR_KEYWORD_read
bb2_α:
 mov rdi, qword ptr [rip + .Lx5_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xargsub4_n1_α
 xargsub4_n0_β:
 jmp xargsub4_n4_α
.Lx5_0:
 .quad .Lx5_0_s
.Lx5_0_s:
 .string "&lcase"
xargsub4_n1_α:
# IR_KEYWORD_read
bb3_α:
 mov rdi, qword ptr [rip + .Lx6_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xargsub4_n2_α
 xargsub4_n1_β:
 jmp xargsub4_n4_α
.Lx6_0:
 .quad .Lx6_0_s
.Lx6_0_s:
 .string "&ucase"
xargsub4_n2_α:
# [walk_bb_node: kind=7 unhandled]
xargsub4_n3_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xargsub4_n4_α:
bb6_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+176]
 mov qword ptr [r12 + 176], 6
 movabs rax, 0
 mov qword ptr [r12 + 184], rax
  .section .rodata
  .Lrkfn10: .string "table"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn10]
 lea rsi, [r12 + 176]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je xargsub4_n6_α
 jmp xargsub4_n5_α
 xargsub4_n4_β:
 jmp xargsub4_n6_α
xargsub4_n5_α:
bb7_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xargsub4_n6_α
 xargsub4_n5_β:
 jmp xargsub4_n6_α
xargsub4_n6_α:
bb8_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn13: .string "read"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn13]
 lea rsi, [r12 + 224]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xchain0_n1_α
 jmp xargsub4_n7_α
 xargsub4_n6_β:
 jmp xchain0_n1_α
xargsub4_n7_α:
bb9_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xargsub4_n8_α
 xargsub4_n7_β:
 jmp xchain0_n1_α
xargsub4_n8_α:
xargsub16_n0_α:
# IR_VAR
bb10_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xscan15_subj_done
 xargsub16_n0_β:
 jmp xargsub4_n6_α
xscan15_subj_done:
# IR_GEN_SCAN
 mov rdi, qword ptr [r12 + 48]
 mov rsi, qword ptr [r12 + 56]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xscan15_body_start
 xscan15_enter_β:
 jmp xargsub4_n6_α
xscan15_body_start:
xargsub21_n0_α:
xargsub23_n0_α:
 lea rdi, [rip + .S1]
 call rt_bomb@PLT
 ud2
xscantab22_arg_done:
# IR_SCAN_TAB
bb12_α:
 mov rax, qword ptr [r12 + 272]
 cmp rax, 1
 jl xargsub21_n2_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xargsub21_n2_α
 mov qword ptr [r12 + 304], r14
 mov rdi, r13
 mov rsi, r14
 mov rdx, rax
 sub rdx, 1
 mov r14, rdx
 push r10
 push r10
 call rt_substr@PLT
 pop r10
 pop r10
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xargsub21_n1_α
 xargsub21_n0_β:
 mov r14, qword ptr [r12 + 304]
 jmp xargsub21_n2_α
xargsub21_n1_α:
bb13_α:
# BOX IR_CALL [](...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+32] -> [r12+328]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 328], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 336], rax
# marshal arg0 = varslot [r12+128] -> [r12+376]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 376], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 384], rax
  .section .rodata
  .Lcallfn29: .string "many"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn29]
 lea rsi, [r12 + 376]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 360], rax
 mov qword ptr [r12 + 368], rdx
  .section .rodata
  .Lcallfn30: .string "tab"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn30]
 lea rsi, [r12 + 360]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 344], rax
 mov qword ptr [r12 + 352], rdx
  .section .rodata
  .Lbynamefn31: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn31]
 lea rsi, [r12 + 328]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 312], rax
 mov qword ptr [r12 + 320], rdx
 cmp eax, 99
 je xargsub21_n0_α
 jmp xargsub21_n3_α
xargsub21_n1_β:
 jmp xargsub21_n0_α
xargsub21_n2_α:
xargsub21_n2_β:
jmp xscan15_body_done
jmp xscan15_body_done
xargsub21_n3_α:
# IR_LIT_I
bb14_α:
 mov qword ptr [r12 + 392], 6
 mov rax, qword ptr [rip + .Lx32_0]
 mov qword ptr [r12 + 400], rax
 jmp xargsub21_n4_α
 xargsub21_n3_β:
 jmp xargsub21_n0_α
.Lx32_0:
 .quad 1
xargsub21_n4_α:
bb15_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 320]
 mov rcx, qword ptr [r12 + 400]
 add rax, rcx
 mov qword ptr [r12 + 408], 6
 mov qword ptr [r12 + 416], rax
 jmp xargsub21_n0_α
 xargsub21_n4_β:
 jmp xargsub21_n0_α
xscan15_body_done:
# IR_GEN_SCAN
 lea rdi, [r12 + 240]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 240]
 mov r14, qword ptr [r12 + 248]
 mov r15, qword ptr [r12 + 256]
 jmp xargsub4_n6_α
 xscan15_leaveok_β:
 jmp xargsub4_n6_α
xscan15_body_fail:
# IR_GEN_SCAN
 lea rdi, [r12 + 240]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 240]
 mov r14, qword ptr [r12 + 248]
 mov r15, qword ptr [r12 + 256]
 jmp xargsub4_n6_α
 xscan15_leavef_β:
 jmp xargsub4_n6_α
xchain0_n1_α:
bb16_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+440]
 mov qword ptr [r12 + 440], 6
 movabs rax, 0
 mov qword ptr [r12 + 448], rax
  .section .rodata
  .Lrkfn39: .string "table"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn39]
 lea rsi, [r12 + 440]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 424], rax
 mov qword ptr [r12 + 432], rdx
 cmp eax, 99
 je xchain0_n3_α
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n3_α
xchain0_n2_α:
bb17_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 456], rax
 mov qword ptr [r12 + 464], rdx
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n3_α
xchain0_n3_α:
bb18_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn42: .string "read"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn42]
 lea rsi, [r12 + 488]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 472], rax
 mov qword ptr [r12 + 480], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n5_α
xchain0_n4_α:
bb19_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov qword ptr [r12 + 488], rax
 mov qword ptr [r12 + 496], rdx
 jmp xchain0_n6_α
 xchain0_n4_β:
 jmp xchain0_n5_α
xchain0_n5_α:
xchain0_n5_β:
jmp xchain0_n7_α
jmp xchain0_n7_α
xchain0_n6_α:
xargsub45_n0_α:
# IR_VAR
bb20_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xscan44_subj_done
 xargsub45_n0_β:
 jmp xchain0_n3_α
xscan44_subj_done:
# IR_GEN_SCAN
 mov rdi, qword ptr [r12 + 48]
 mov rsi, qword ptr [r12 + 56]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xscan44_body_start
 xscan44_enter_β:
 jmp xchain0_n3_α
xscan44_body_start:
xargsub50_n0_α:
# IR_SCAN_TAB
bb21_α:
 mov rax, qword ptr [r12 + 272]
 cmp rax, 1
 jl xargsub50_n2_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xargsub50_n2_α
 mov qword ptr [r12 + 544], r14
 mov rdi, r13
 mov rsi, r14
 mov rdx, rax
 sub rdx, 1
 mov r14, rdx
 push r10
 push r10
 call rt_substr@PLT
 pop r10
 pop r10
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xargsub50_n1_α
 xargsub50_n0_β:
 mov r14, qword ptr [r12 + 544]
 jmp xargsub50_n2_α
xargsub50_n1_α:
bb22_α:
# BOX IR_CALL [](...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+32] -> [r12+568]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 568], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 576], rax
# marshal arg0 = varslot [r12+128] -> [r12+616]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 616], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 624], rax
  .section .rodata
  .Lcallfn54: .string "many"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn54]
 lea rsi, [r12 + 616]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 600], rax
 mov qword ptr [r12 + 608], rdx
  .section .rodata
  .Lcallfn55: .string "tab"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn55]
 lea rsi, [r12 + 600]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 584], rax
 mov qword ptr [r12 + 592], rdx
  .section .rodata
  .Lbynamefn56: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn56]
 lea rsi, [r12 + 568]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 552], rax
 mov qword ptr [r12 + 560], rdx
 cmp eax, 99
 je xargsub50_n0_α
 jmp xargsub50_n3_α
xargsub50_n1_β:
 jmp xargsub50_n0_α
xargsub50_n2_α:
xargsub50_n2_β:
jmp xscan44_body_done
jmp xscan44_body_done
xargsub50_n3_α:
# IR_LIT_I
bb23_α:
 mov qword ptr [r12 + 392], 6
 mov rax, qword ptr [rip + .Lx57_0]
 mov qword ptr [r12 + 400], rax
 jmp xargsub50_n4_α
 xargsub50_n3_β:
 jmp xargsub50_n0_α
.Lx57_0:
 .quad 1
xargsub50_n4_α:
bb24_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 320]
 mov rcx, qword ptr [r12 + 400]
 add rax, rcx
 mov qword ptr [r12 + 632], 6
 mov qword ptr [r12 + 640], rax
 jmp xargsub50_n0_α
 xargsub50_n4_β:
 jmp xargsub50_n0_α
xscan44_body_done:
# IR_GEN_SCAN
 lea rdi, [r12 + 504]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 504]
 mov r14, qword ptr [r12 + 512]
 mov r15, qword ptr [r12 + 520]
 jmp xchain0_n3_α
 xscan44_leaveok_β:
 jmp xchain0_n3_α
xscan44_body_fail:
# IR_GEN_SCAN
 lea rdi, [r12 + 504]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 504]
 mov r14, qword ptr [r12 + 512]
 mov r15, qword ptr [r12 + 520]
 jmp xchain0_n3_α
 xscan44_leavef_β:
 jmp xchain0_n3_α
xchain0_n7_α:
bb25_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+32] -> [r12+664]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 664], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 672], rax
# marshal arg1 = LIT_I -> [r12+680]
 mov qword ptr [r12 + 680], 6
 movabs rax, 3
 mov qword ptr [r12 + 688], rax
  .section .rodata
  .Lrkfn64: .string "sort"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn64]
 lea rsi, [r12 + 664]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 648], rax
 mov qword ptr [r12 + 656], rdx
 cmp eax, 99
 je xchain0_n9_α
 jmp xchain0_n8_α
 xchain0_n7_β:
 jmp xchain0_n9_α
xchain0_n8_α:
bb26_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 648]
 mov rdx, qword ptr [r12 + 656]
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 mov qword ptr [r12 + 696], rax
 mov qword ptr [r12 + 704], rdx
 jmp xchain0_n9_α
 xchain0_n8_β:
 jmp xchain0_n9_α
xchain0_n9_α:
# IR_LIT_I
bb27_α:
 mov qword ptr [r12 + 712], 6
 mov rax, qword ptr [rip + .Lx66_0]
 mov qword ptr [r12 + 720], rax
 jmp xchain0_n10_α
 xchain0_n9_β:
 jmp xchain0_n14_β
.Lx66_0:
 .quad 1
xchain0_n10_α:
# IR_VAR
bb28_α:
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 72], rax
 jmp xchain0_n11_α
 xchain0_n10_β:
 jmp xchain0_n14_β
xchain0_n11_α:
# IR_UNOP
bb29_α:
 mov rdi, qword ptr [r12 + 64]
 mov rsi, qword ptr [r12 + 72]
 call rt_size_d@PLT
 mov qword ptr [r12 + 728], rax
 mov qword ptr [r12 + 736], rdx
 jmp xchain0_n12_α
 xchain0_n11_β:
 jmp xchain0_n14_β
xchain0_n12_α:
# IR_LIT_I
bb30_α:
 mov qword ptr [r12 + 744], 6
 mov rax, qword ptr [rip + .Lx70_0]
 mov qword ptr [r12 + 752], rax
 jmp xchain0_n13_α
 xchain0_n12_β:
 jmp xchain0_n14_β
.Lx70_0:
 .quad 1
xchain0_n13_α:
bb31_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 736]
 mov rcx, qword ptr [r12 + 752]
 sub rax, rcx
 mov qword ptr [r12 + 760], 6
 mov qword ptr [r12 + 768], rax
 jmp xchain0_n14_α
 xchain0_n13_β:
 jmp xchain0_n14_β
xchain0_n14_α:
# IR_TO
bb32_α:
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 792], rax
.Lx73_0:
 mov rax, qword ptr [r12 + 792]
 mov rcx, qword ptr [r12 + 768]
 cmp rax, rcx
 jg xchain0_n15_α
 mov qword ptr [r12 + 776], 6
 mov qword ptr [r12 + 784], rax
 jmp xchain0_n16_α
 xchain0_n14_β:
 mov rax, qword ptr [r12 + 792]
 add rax, 2
 mov qword ptr [r12 + 792], rax
 jmp .Lx73_0
xchain0_n15_α:
# IR_EVERY
 jmp proc_wordcount_ω
 xchain0_n15_β:
 jmp proc_wordcount_ω
xchain0_n16_α:
bb34_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 776]
 mov rdx, qword ptr [r12 + 784]
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 jmp xchain0_n17_α
 xchain0_n16_β:
 jmp xchain0_n14_β
xchain0_n17_α:
bb35_α:
# BOX IR_CALL left(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+64] -> [r12+864]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 864], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 872], rax
# marshal arg1 = varslot [r12+80] -> [r12+880]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 880], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 888], rax
  .section .rodata
  .Lcallfn77: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn77]
 lea rsi, [r12 + 864]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
# marshal arg1 = varslot [r12+16] -> [r12+848]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 856], rax
  .section .rodata
  .Lrkfn78: .string "left"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn78]
 lea rsi, [r12 + 832]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 cmp eax, 99
 je xchain0_n14_β
 jmp xchain0_n18_α
 xchain0_n17_β:
 jmp xchain0_n14_β
xchain0_n18_α:
bb36_α:
# BOX IR_CALL [](...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+64] -> [r12+912]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 920], rax
# marshal arg1 = varslot [r12+80] -> [r12+928]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 928], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 936], rax
  .section .rodata
  .Lbynamefn80: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn80]
 lea rsi, [r12 + 912]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 cmp eax, 99
 je xchain0_n14_β
 jmp xchain0_n19_α
xchain0_n18_β:
 jmp xchain0_n14_β
xchain0_n19_α:
bb37_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+64] -> [r12+1024]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 1032], rax
# marshal arg1 = varslot [r12+80] -> [r12+1040]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 1040], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 1048], rax
  .section .rodata
  .Lcallfn82: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn82]
 lea rsi, [r12 + 1024]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
# marshal arg1 = varslot [r12+16] -> [r12+1008]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1016], rax
  .section .rodata
  .Lcallfn83: .string "left"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn83]
 lea rsi, [r12 + 992]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
# marshal arg0 = varslot [r12+64] -> [r12+1056]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 1056], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 1064], rax
# marshal arg1 = varslot [r12+80] -> [r12+1072]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 1080], rax
  .section .rodata
  .Lcallfn84: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn84]
 lea rsi, [r12 + 1056]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
  .section .rodata
  .Lrkfn85: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn85]
 lea rsi, [r12 + 960]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 cmp eax, 99
 je xchain0_n14_β
 jmp xchain0_n14_β
 xchain0_n19_β:
 jmp xchain0_n14_β
proc_wordcount_β:
jmp proc_wordcount_ω
proc_wordcount_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_wordcount_ω:
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
  .Lstartup_pname0: .string "wordcount"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_wordcount_α]
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
xchain86_n0_α:
xargsub88_n0_α:
# IR_LIT_I
bb38_α:
 mov qword ptr [r12 + 0], 6
 mov rax, qword ptr [rip + .Lx89_0]
 mov qword ptr [r12 + 8], rax
 jmp xicnarg87_done
 xargsub88_n0_β:
 jmp main_ω
.Lx89_0:
 .quad 20
xicnarg87_done:
bb39_α:
  .section .rodata
  .Lcall34_pname: .string "wordcount"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall34_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je main_ω
 jmp main_γ
xchain86_n0_β:
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
.S1: .string "bb_scan_upto: unhandled (needs literal cset arg + descr flat-chain slot)"
.text
