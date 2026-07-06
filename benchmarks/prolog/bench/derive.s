  .intel_syntax noprefix
  .text
  .globl proc_divide10_α
proc_divide10_α:
#=======================================================================================================================
    .global proc_divide10_α
    .global proc_divide10_β
    .global proc_divide10_γ
    .global proc_divide10_ω
push r12
  mov r12, rdi
  cmp esi, 0
  jne proc_divide10_β
proc_divide10_α_body:
xchain0_n0_α:
bb1_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2]
 lea rsi, [r12 + 64]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je proc_divide10_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_divide10_ω
xchain0_n1_α:
# IR_LIT_STRING
bb2_α:
 mov qword ptr [r12 + 1024], 1
 mov rax, qword ptr [rip + .Lx3_0]
 mov qword ptr [r12 + 1032], rax
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp proc_divide10_ω
.Lx3_0:
 .quad .Lx3_0_s
.Lx3_0_s:
 .string "/"
xchain0_n2_α:
# IR_LIT_STRING
bb3_α:
 mov qword ptr [r12 + 928], 1
 mov rax, qword ptr [rip + .Lx4_0]
 mov qword ptr [r12 + 936], rax
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp proc_divide10_ω
.Lx4_0:
 .quad .Lx4_0_s
.Lx4_0_s:
 .string "/"
xchain0_n3_α:
# IR_LIT_STRING
bb4_α:
 mov qword ptr [r12 + 832], 1
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [r12 + 840], rax
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp proc_divide10_ω
.Lx5_0:
 .quad .Lx5_0_s
.Lx5_0_s:
 .string "/"
xchain0_n4_α:
# IR_LIT_STRING
bb5_α:
 mov qword ptr [r12 + 736], 1
 mov rax, qword ptr [rip + .Lx6_0]
 mov qword ptr [r12 + 744], rax
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp proc_divide10_ω
.Lx6_0:
 .quad .Lx6_0_s
.Lx6_0_s:
 .string "/"
xchain0_n5_α:
# IR_LIT_STRING
bb6_α:
 mov qword ptr [r12 + 640], 1
 mov rax, qword ptr [rip + .Lx7_0]
 mov qword ptr [r12 + 648], rax
 jmp xchain0_n6_α
 xchain0_n5_β:
 jmp proc_divide10_ω
.Lx7_0:
 .quad .Lx7_0_s
.Lx7_0_s:
 .string "/"
xchain0_n6_α:
# IR_LIT_STRING
bb7_α:
 mov qword ptr [r12 + 544], 1
 mov rax, qword ptr [rip + .Lx8_0]
 mov qword ptr [r12 + 552], rax
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp proc_divide10_ω
.Lx8_0:
 .quad .Lx8_0_s
.Lx8_0_s:
 .string "/"
xchain0_n7_α:
# IR_LIT_STRING
bb8_α:
 mov qword ptr [r12 + 448], 1
 mov rax, qword ptr [rip + .Lx9_0]
 mov qword ptr [r12 + 456], rax
 jmp xchain0_n8_α
 xchain0_n7_β:
 jmp proc_divide10_ω
.Lx9_0:
 .quad .Lx9_0_s
.Lx9_0_s:
 .string "/"
xchain0_n8_α:
# IR_LIT_STRING
bb9_α:
 mov qword ptr [r12 + 352], 1
 mov rax, qword ptr [rip + .Lx10_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain0_n9_α
 xchain0_n8_β:
 jmp proc_divide10_ω
.Lx10_0:
 .quad .Lx10_0_s
.Lx10_0_s:
 .string "/"
xchain0_n9_α:
# IR_LIT_STRING
bb10_α:
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx11_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain0_n10_α
 xchain0_n9_β:
 jmp proc_divide10_ω
.Lx11_0:
 .quad .Lx11_0_s
.Lx11_0_s:
 .string "/"
xchain0_n10_α:
# IR_LIT_STRING
bb11_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx12_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain0_n11_α
 xchain0_n10_β:
 jmp proc_divide10_ω
.Lx12_0:
 .quad .Lx12_0_s
.Lx12_0_s:
 .string "x"
xchain0_n11_α:
# IR_LIT_STRING
bb12_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx13_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain0_n12_α
 xchain0_n11_β:
 jmp proc_divide10_ω
.Lx13_0:
 .quad .Lx13_0_s
.Lx13_0_s:
 .string "x"
xchain0_n12_α:
bb13_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+256] -> [r12+208]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 216], rax
# marshal arg1 = producer-box slot [r12+160] -> [r12+224]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 232], rax
# marshal arg2 = producer-box slot [r12+176] -> [r12+240]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 248], rax
  .section .rodata
  .Lrkfn15: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn15]
 lea rsi, [r12 + 208]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je proc_divide10_ω
 jmp xchain0_n13_α
 xchain0_n12_β:
 jmp proc_divide10_ω
xchain0_n13_α:
# IR_LIT_STRING
bb14_α:
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx16_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain0_n14_α
 xchain0_n13_β:
 jmp proc_divide10_ω
.Lx16_0:
 .quad .Lx16_0_s
.Lx16_0_s:
 .string "x"
xchain0_n14_α:
bb15_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+352] -> [r12+304]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 312], rax
# marshal arg1 = producer-box slot [r12+192] -> [r12+320]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 328], rax
# marshal arg2 = producer-box slot [r12+272] -> [r12+336]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 344], rax
  .section .rodata
  .Lrkfn18: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn18]
 lea rsi, [r12 + 304]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je proc_divide10_ω
 jmp xchain0_n15_α
 xchain0_n14_β:
 jmp proc_divide10_ω
xchain0_n15_α:
# IR_LIT_STRING
bb16_α:
 mov qword ptr [r12 + 368], 1
 mov rax, qword ptr [rip + .Lx19_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain0_n16_α
 xchain0_n15_β:
 jmp proc_divide10_ω
.Lx19_0:
 .quad .Lx19_0_s
.Lx19_0_s:
 .string "x"
xchain0_n16_α:
bb17_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+448] -> [r12+400]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 408], rax
# marshal arg1 = producer-box slot [r12+288] -> [r12+416]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 424], rax
# marshal arg2 = producer-box slot [r12+368] -> [r12+432]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 440], rax
  .section .rodata
  .Lrkfn21: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn21]
 lea rsi, [r12 + 400]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je proc_divide10_ω
 jmp xchain0_n17_α
 xchain0_n16_β:
 jmp proc_divide10_ω
xchain0_n17_α:
# IR_LIT_STRING
bb18_α:
 mov qword ptr [r12 + 464], 1
 mov rax, qword ptr [rip + .Lx22_0]
 mov qword ptr [r12 + 472], rax
 jmp xchain0_n18_α
 xchain0_n17_β:
 jmp proc_divide10_ω
.Lx22_0:
 .quad .Lx22_0_s
.Lx22_0_s:
 .string "x"
xchain0_n18_α:
bb19_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+544] -> [r12+496]
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 504], rax
# marshal arg1 = producer-box slot [r12+384] -> [r12+512]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 520], rax
# marshal arg2 = producer-box slot [r12+464] -> [r12+528]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 536], rax
  .section .rodata
  .Lrkfn24: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn24]
 lea rsi, [r12 + 496]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 cmp eax, 99
 je proc_divide10_ω
 jmp xchain0_n19_α
 xchain0_n18_β:
 jmp proc_divide10_ω
xchain0_n19_α:
# IR_LIT_STRING
bb20_α:
 mov qword ptr [r12 + 560], 1
 mov rax, qword ptr [rip + .Lx25_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain0_n20_α
 xchain0_n19_β:
 jmp proc_divide10_ω
.Lx25_0:
 .quad .Lx25_0_s
.Lx25_0_s:
 .string "x"
xchain0_n20_α:
bb21_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+640] -> [r12+592]
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 600], rax
# marshal arg1 = producer-box slot [r12+480] -> [r12+608]
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 616], rax
# marshal arg2 = producer-box slot [r12+560] -> [r12+624]
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 632], rax
  .section .rodata
  .Lrkfn27: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn27]
 lea rsi, [r12 + 592]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 cmp eax, 99
 je proc_divide10_ω
 jmp xchain0_n21_α
 xchain0_n20_β:
 jmp proc_divide10_ω
xchain0_n21_α:
# IR_LIT_STRING
bb22_α:
 mov qword ptr [r12 + 656], 1
 mov rax, qword ptr [rip + .Lx28_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain0_n22_α
 xchain0_n21_β:
 jmp proc_divide10_ω
.Lx28_0:
 .quad .Lx28_0_s
.Lx28_0_s:
 .string "x"
xchain0_n22_α:
bb23_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+736] -> [r12+688]
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 696], rax
# marshal arg1 = producer-box slot [r12+576] -> [r12+704]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 712], rax
# marshal arg2 = producer-box slot [r12+656] -> [r12+720]
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 728], rax
  .section .rodata
  .Lrkfn30: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn30]
 lea rsi, [r12 + 688]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 cmp eax, 99
 je proc_divide10_ω
 jmp xchain0_n23_α
 xchain0_n22_β:
 jmp proc_divide10_ω
xchain0_n23_α:
# IR_LIT_STRING
bb24_α:
 mov qword ptr [r12 + 752], 1
 mov rax, qword ptr [rip + .Lx31_0]
 mov qword ptr [r12 + 760], rax
 jmp xchain0_n24_α
 xchain0_n23_β:
 jmp proc_divide10_ω
.Lx31_0:
 .quad .Lx31_0_s
.Lx31_0_s:
 .string "x"
xchain0_n24_α:
bb25_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+832] -> [r12+784]
 mov rax, qword ptr [r12 + 832]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 840]
 mov qword ptr [r12 + 792], rax
# marshal arg1 = producer-box slot [r12+672] -> [r12+800]
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 808], rax
# marshal arg2 = producer-box slot [r12+752] -> [r12+816]
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 824], rax
  .section .rodata
  .Lrkfn33: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn33]
 lea rsi, [r12 + 784]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 cmp eax, 99
 je proc_divide10_ω
 jmp xchain0_n25_α
 xchain0_n24_β:
 jmp proc_divide10_ω
xchain0_n25_α:
# IR_LIT_STRING
bb26_α:
 mov qword ptr [r12 + 848], 1
 mov rax, qword ptr [rip + .Lx34_0]
 mov qword ptr [r12 + 856], rax
 jmp xchain0_n26_α
 xchain0_n25_β:
 jmp proc_divide10_ω
.Lx34_0:
 .quad .Lx34_0_s
.Lx34_0_s:
 .string "x"
xchain0_n26_α:
bb27_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+928] -> [r12+880]
 mov rax, qword ptr [r12 + 928]
 mov qword ptr [r12 + 880], rax
 mov rax, qword ptr [r12 + 936]
 mov qword ptr [r12 + 888], rax
# marshal arg1 = producer-box slot [r12+768] -> [r12+896]
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 896], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 904], rax
# marshal arg2 = producer-box slot [r12+848] -> [r12+912]
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 920], rax
  .section .rodata
  .Lrkfn36: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn36]
 lea rsi, [r12 + 880]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 cmp eax, 99
 je proc_divide10_ω
 jmp xchain0_n27_α
 xchain0_n26_β:
 jmp proc_divide10_ω
xchain0_n27_α:
# IR_LIT_STRING
bb28_α:
 mov qword ptr [r12 + 944], 1
 mov rax, qword ptr [rip + .Lx37_0]
 mov qword ptr [r12 + 952], rax
 jmp xchain0_n28_α
 xchain0_n27_β:
 jmp proc_divide10_ω
.Lx37_0:
 .quad .Lx37_0_s
.Lx37_0_s:
 .string "x"
xchain0_n28_α:
bb29_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1024] -> [r12+976]
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 976], rax
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 984], rax
# marshal arg1 = producer-box slot [r12+864] -> [r12+992]
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 1000], rax
# marshal arg2 = producer-box slot [r12+944] -> [r12+1008]
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 1016], rax
  .section .rodata
  .Lrkfn39: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn39]
 lea rsi, [r12 + 976]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 cmp eax, 99
 je xchain0_n30_α
 jmp xchain0_n29_α
 xchain0_n28_β:
 jmp xchain0_n30_α
xchain0_n29_α:
# IR_LIT_STRING
bb30_α:
 mov qword ptr [r12 + 1040], 1
 mov rax, qword ptr [rip + .Lx40_0]
 mov qword ptr [r12 + 1048], rax
 jmp xchain0_n31_α
 xchain0_n29_β:
 jmp xchain0_n30_α
.Lx40_0:
 .quad .Lx40_0_s
.Lx40_0_s:
 .string "x"
xchain0_n30_α:
bb31_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+48] -> [r12+80]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 88], rax
  .section .rodata
  .Lrkfn42: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn42]
 lea rsi, [r12 + 80]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je proc_divide10_ω
 jmp proc_divide10_ω
 xchain0_n30_β:
 jmp proc_divide10_ω
xchain0_n31_α:
# IR_VAR_REF local
bb32_α:
 lea rdi, [r12 + 1072]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 jmp xchain0_n32_α
 xchain0_n31_β:
 jmp xchain0_n30_α
xchain0_n32_α:
bb33_α:
  .section .rodata
  .Lcall33_pname: .string "d"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 960]
 mov rdx, qword ptr [r12 + 968]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 1040]
 mov rdx, qword ptr [r12 + 1048]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 1056]
 mov rdx, qword ptr [r12 + 1064]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall33_pname]
 mov esi, 3
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain0_n30_α
 jmp xchain0_n33_α
xchain0_n32_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain0_n30_α
 jmp xchain0_n33_α
xchain0_n33_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb34_α:
 lea rax, [rip + xchain0_n32_β]
 mov qword ptr [r12 + 32], rax
 jmp proc_divide10_γ
 xchain0_n33_β:
 jmp proc_divide10_ω
xchain0_n34_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb35_α:
 jmp qword ptr [r12 + 32]
 xchain0_n34_β:
 jmp proc_divide10_ω
proc_divide10_β:
jmp xchain0_n34_α
proc_divide10_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_divide10_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_log10_α
proc_log10_α:
#=======================================================================================================================
    .global proc_log10_α
    .global proc_log10_β
    .global proc_log10_γ
    .global proc_log10_ω
push r12
  mov r12, rdi
  cmp esi, 0
  jne proc_log10_β
proc_log10_α_body:
xchain50_n0_α:
bb36_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn52: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn52]
 lea rsi, [r12 + 64]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je proc_log10_ω
 jmp xchain50_n1_α
 xchain50_n0_β:
 jmp proc_log10_ω
xchain50_n1_α:
# IR_LIT_STRING
bb37_α:
 mov qword ptr [r12 + 800], 1
 mov rax, qword ptr [rip + .Lx53_0]
 mov qword ptr [r12 + 808], rax
 jmp xchain50_n2_α
 xchain50_n1_β:
 jmp proc_log10_ω
.Lx53_0:
 .quad .Lx53_0_s
.Lx53_0_s:
 .string "log"
xchain50_n2_α:
# IR_LIT_STRING
bb38_α:
 mov qword ptr [r12 + 736], 1
 mov rax, qword ptr [rip + .Lx54_0]
 mov qword ptr [r12 + 744], rax
 jmp xchain50_n3_α
 xchain50_n2_β:
 jmp proc_log10_ω
.Lx54_0:
 .quad .Lx54_0_s
.Lx54_0_s:
 .string "log"
xchain50_n3_α:
# IR_LIT_STRING
bb39_α:
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx55_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain50_n4_α
 xchain50_n3_β:
 jmp proc_log10_ω
.Lx55_0:
 .quad .Lx55_0_s
.Lx55_0_s:
 .string "log"
xchain50_n4_α:
# IR_LIT_STRING
bb40_α:
 mov qword ptr [r12 + 608], 1
 mov rax, qword ptr [rip + .Lx56_0]
 mov qword ptr [r12 + 616], rax
 jmp xchain50_n5_α
 xchain50_n4_β:
 jmp proc_log10_ω
.Lx56_0:
 .quad .Lx56_0_s
.Lx56_0_s:
 .string "log"
xchain50_n5_α:
# IR_LIT_STRING
bb41_α:
 mov qword ptr [r12 + 544], 1
 mov rax, qword ptr [rip + .Lx57_0]
 mov qword ptr [r12 + 552], rax
 jmp xchain50_n6_α
 xchain50_n5_β:
 jmp proc_log10_ω
.Lx57_0:
 .quad .Lx57_0_s
.Lx57_0_s:
 .string "log"
xchain50_n6_α:
# IR_LIT_STRING
bb42_α:
 mov qword ptr [r12 + 480], 1
 mov rax, qword ptr [rip + .Lx58_0]
 mov qword ptr [r12 + 488], rax
 jmp xchain50_n7_α
 xchain50_n6_β:
 jmp proc_log10_ω
.Lx58_0:
 .quad .Lx58_0_s
.Lx58_0_s:
 .string "log"
xchain50_n7_α:
# IR_LIT_STRING
bb43_α:
 mov qword ptr [r12 + 416], 1
 mov rax, qword ptr [rip + .Lx59_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain50_n8_α
 xchain50_n7_β:
 jmp proc_log10_ω
.Lx59_0:
 .quad .Lx59_0_s
.Lx59_0_s:
 .string "log"
xchain50_n8_α:
# IR_LIT_STRING
bb44_α:
 mov qword ptr [r12 + 352], 1
 mov rax, qword ptr [rip + .Lx60_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain50_n9_α
 xchain50_n8_β:
 jmp proc_log10_ω
.Lx60_0:
 .quad .Lx60_0_s
.Lx60_0_s:
 .string "log"
xchain50_n9_α:
# IR_LIT_STRING
bb45_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx61_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain50_n10_α
 xchain50_n9_β:
 jmp proc_log10_ω
.Lx61_0:
 .quad .Lx61_0_s
.Lx61_0_s:
 .string "log"
xchain50_n10_α:
# IR_LIT_STRING
bb46_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx62_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain50_n11_α
 xchain50_n10_β:
 jmp proc_log10_ω
.Lx62_0:
 .quad .Lx62_0_s
.Lx62_0_s:
 .string "log"
xchain50_n11_α:
# IR_LIT_STRING
bb47_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx63_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain50_n12_α
 xchain50_n11_β:
 jmp proc_log10_ω
.Lx63_0:
 .quad .Lx63_0_s
.Lx63_0_s:
 .string "x"
xchain50_n12_α:
bb48_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+224] -> [r12+192]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 200], rax
# marshal arg1 = producer-box slot [r12+160] -> [r12+208]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lrkfn65: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn65]
 lea rsi, [r12 + 192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp eax, 99
 je proc_log10_ω
 jmp xchain50_n13_α
 xchain50_n12_β:
 jmp proc_log10_ω
xchain50_n13_α:
bb49_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+288] -> [r12+256]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 264], rax
# marshal arg1 = producer-box slot [r12+176] -> [r12+272]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 280], rax
  .section .rodata
  .Lrkfn67: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn67]
 lea rsi, [r12 + 256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je proc_log10_ω
 jmp xchain50_n14_α
 xchain50_n13_β:
 jmp proc_log10_ω
xchain50_n14_α:
bb50_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+352] -> [r12+320]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 328], rax
# marshal arg1 = producer-box slot [r12+240] -> [r12+336]
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 344], rax
  .section .rodata
  .Lrkfn69: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn69]
 lea rsi, [r12 + 320]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je proc_log10_ω
 jmp xchain50_n15_α
 xchain50_n14_β:
 jmp proc_log10_ω
xchain50_n15_α:
bb51_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+416] -> [r12+384]
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 392], rax
# marshal arg1 = producer-box slot [r12+304] -> [r12+400]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 408], rax
  .section .rodata
  .Lrkfn71: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn71]
 lea rsi, [r12 + 384]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je proc_log10_ω
 jmp xchain50_n16_α
 xchain50_n15_β:
 jmp proc_log10_ω
xchain50_n16_α:
bb52_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+480] -> [r12+448]
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 456], rax
# marshal arg1 = producer-box slot [r12+368] -> [r12+464]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 472], rax
  .section .rodata
  .Lrkfn73: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn73]
 lea rsi, [r12 + 448]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 cmp eax, 99
 je proc_log10_ω
 jmp xchain50_n17_α
 xchain50_n16_β:
 jmp proc_log10_ω
xchain50_n17_α:
bb53_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+544] -> [r12+512]
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 520], rax
# marshal arg1 = producer-box slot [r12+432] -> [r12+528]
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 536], rax
  .section .rodata
  .Lrkfn75: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn75]
 lea rsi, [r12 + 512]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 cmp eax, 99
 je proc_log10_ω
 jmp xchain50_n18_α
 xchain50_n17_β:
 jmp proc_log10_ω
xchain50_n18_α:
bb54_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+608] -> [r12+576]
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 584], rax
# marshal arg1 = producer-box slot [r12+496] -> [r12+592]
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 600], rax
  .section .rodata
  .Lrkfn77: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn77]
 lea rsi, [r12 + 576]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 cmp eax, 99
 je proc_log10_ω
 jmp xchain50_n19_α
 xchain50_n18_β:
 jmp proc_log10_ω
xchain50_n19_α:
bb55_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+672] -> [r12+640]
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 648], rax
# marshal arg1 = producer-box slot [r12+560] -> [r12+656]
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 664], rax
  .section .rodata
  .Lrkfn79: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn79]
 lea rsi, [r12 + 640]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 cmp eax, 99
 je proc_log10_ω
 jmp xchain50_n20_α
 xchain50_n19_β:
 jmp proc_log10_ω
xchain50_n20_α:
bb56_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+736] -> [r12+704]
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 712], rax
# marshal arg1 = producer-box slot [r12+624] -> [r12+720]
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 728], rax
  .section .rodata
  .Lrkfn81: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn81]
 lea rsi, [r12 + 704]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 cmp eax, 99
 je proc_log10_ω
 jmp xchain50_n21_α
 xchain50_n20_β:
 jmp proc_log10_ω
xchain50_n21_α:
bb57_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+800] -> [r12+768]
 mov rax, qword ptr [r12 + 800]
 mov qword ptr [r12 + 768], rax
 mov rax, qword ptr [r12 + 808]
 mov qword ptr [r12 + 776], rax
# marshal arg1 = producer-box slot [r12+688] -> [r12+784]
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 792], rax
  .section .rodata
  .Lrkfn83: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn83]
 lea rsi, [r12 + 768]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 cmp eax, 99
 je xchain50_n23_α
 jmp xchain50_n22_α
 xchain50_n21_β:
 jmp xchain50_n23_α
xchain50_n22_α:
# IR_LIT_STRING
bb58_α:
 mov qword ptr [r12 + 816], 1
 mov rax, qword ptr [rip + .Lx84_0]
 mov qword ptr [r12 + 824], rax
 jmp xchain50_n24_α
 xchain50_n22_β:
 jmp xchain50_n23_α
.Lx84_0:
 .quad .Lx84_0_s
.Lx84_0_s:
 .string "x"
xchain50_n23_α:
bb59_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+48] -> [r12+80]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 88], rax
  .section .rodata
  .Lrkfn86: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn86]
 lea rsi, [r12 + 80]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je proc_log10_ω
 jmp proc_log10_ω
 xchain50_n23_β:
 jmp proc_log10_ω
xchain50_n24_α:
# IR_VAR_REF local
bb60_α:
 lea rdi, [r12 + 848]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp xchain50_n25_α
 xchain50_n24_β:
 jmp xchain50_n23_α
xchain50_n25_α:
bb61_α:
  .section .rodata
  .Lcall61_pname: .string "d"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 752]
 mov rdx, qword ptr [r12 + 760]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 816]
 mov rdx, qword ptr [r12 + 824]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 832]
 mov rdx, qword ptr [r12 + 840]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall61_pname]
 mov esi, 3
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain50_n23_α
 jmp xchain50_n26_α
xchain50_n25_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain50_n23_α
 jmp xchain50_n26_α
xchain50_n26_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb62_α:
 lea rax, [rip + xchain50_n25_β]
 mov qword ptr [r12 + 32], rax
 jmp proc_log10_γ
 xchain50_n26_β:
 jmp proc_log10_ω
xchain50_n27_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb63_α:
 jmp qword ptr [r12 + 32]
 xchain50_n27_β:
 jmp proc_log10_ω
proc_log10_β:
jmp xchain50_n27_α
proc_log10_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_log10_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_ops8_α
proc_ops8_α:
#=======================================================================================================================
    .global proc_ops8_α
    .global proc_ops8_β
    .global proc_ops8_γ
    .global proc_ops8_ω
push r12
  mov r12, rdi
  cmp esi, 0
  jne proc_ops8_β
proc_ops8_α_body:
xchain94_n0_α:
bb64_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn96: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn96]
 lea rsi, [r12 + 64]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je proc_ops8_ω
 jmp xchain94_n1_α
 xchain94_n0_β:
 jmp proc_ops8_ω
xchain94_n1_α:
# IR_LIT_STRING
bb65_α:
 mov qword ptr [r12 + 832], 1
 mov rax, qword ptr [rip + .Lx97_0]
 mov qword ptr [r12 + 840], rax
 jmp xchain94_n2_α
 xchain94_n1_β:
 jmp proc_ops8_ω
.Lx97_0:
 .quad .Lx97_0_s
.Lx97_0_s:
 .string "*"
xchain94_n2_α:
# IR_LIT_STRING
bb66_α:
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx98_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain94_n3_α
 xchain94_n2_β:
 jmp proc_ops8_ω
.Lx98_0:
 .quad .Lx98_0_s
.Lx98_0_s:
 .string "+"
xchain94_n3_α:
# IR_LIT_STRING
bb67_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx99_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain94_n4_α
 xchain94_n3_β:
 jmp proc_ops8_ω
.Lx99_0:
 .quad .Lx99_0_s
.Lx99_0_s:
 .string "x"
xchain94_n4_α:
# IR_LIT_INTEGER
bb68_α:
 mov qword ptr [r12 + 176], 6
 mov rax, qword ptr [rip + .Lx100_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain94_n5_α
 xchain94_n4_β:
 jmp proc_ops8_ω
.Lx100_0:
 .quad 1
xchain94_n5_α:
bb69_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+256] -> [r12+208]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 216], rax
# marshal arg1 = producer-box slot [r12+160] -> [r12+224]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 232], rax
# marshal arg2 = producer-box slot [r12+176] -> [r12+240]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 248], rax
  .section .rodata
  .Lrkfn102: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn102]
 lea rsi, [r12 + 208]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je proc_ops8_ω
 jmp xchain94_n6_α
 xchain94_n5_β:
 jmp proc_ops8_ω
xchain94_n6_α:
# IR_LIT_STRING
bb70_α:
 mov qword ptr [r12 + 752], 1
 mov rax, qword ptr [rip + .Lx103_0]
 mov qword ptr [r12 + 760], rax
 jmp xchain94_n7_α
 xchain94_n6_β:
 jmp proc_ops8_ω
.Lx103_0:
 .quad .Lx103_0_s
.Lx103_0_s:
 .string "*"
xchain94_n7_α:
# IR_LIT_STRING
bb71_α:
 mov qword ptr [r12 + 464], 1
 mov rax, qword ptr [rip + .Lx104_0]
 mov qword ptr [r12 + 472], rax
 jmp xchain94_n8_α
 xchain94_n7_β:
 jmp proc_ops8_ω
.Lx104_0:
 .quad .Lx104_0_s
.Lx104_0_s:
 .string "+"
xchain94_n8_α:
# IR_LIT_STRING
bb72_α:
 mov qword ptr [r12 + 368], 1
 mov rax, qword ptr [rip + .Lx105_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain94_n9_α
 xchain94_n8_β:
 jmp proc_ops8_ω
.Lx105_0:
 .quad .Lx105_0_s
.Lx105_0_s:
 .string "^"
xchain94_n9_α:
# IR_LIT_STRING
bb73_α:
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx106_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain94_n10_α
 xchain94_n9_β:
 jmp proc_ops8_ω
.Lx106_0:
 .quad .Lx106_0_s
.Lx106_0_s:
 .string "x"
xchain94_n10_α:
# IR_LIT_INTEGER
bb74_α:
 mov qword ptr [r12 + 288], 6
 mov rax, qword ptr [rip + .Lx107_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain94_n11_α
 xchain94_n10_β:
 jmp proc_ops8_ω
.Lx107_0:
 .quad 2
xchain94_n11_α:
bb75_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+368] -> [r12+320]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 328], rax
# marshal arg1 = producer-box slot [r12+272] -> [r12+336]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 344], rax
# marshal arg2 = producer-box slot [r12+288] -> [r12+352]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 360], rax
  .section .rodata
  .Lrkfn109: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn109]
 lea rsi, [r12 + 320]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je proc_ops8_ω
 jmp xchain94_n12_α
 xchain94_n11_β:
 jmp proc_ops8_ω
xchain94_n12_α:
# IR_LIT_INTEGER
bb76_α:
 mov qword ptr [r12 + 384], 6
 mov rax, qword ptr [rip + .Lx110_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain94_n13_α
 xchain94_n12_β:
 jmp proc_ops8_ω
.Lx110_0:
 .quad 2
xchain94_n13_α:
bb77_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+464] -> [r12+416]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 424], rax
# marshal arg1 = producer-box slot [r12+304] -> [r12+432]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 440], rax
# marshal arg2 = producer-box slot [r12+384] -> [r12+448]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 456], rax
  .section .rodata
  .Lrkfn112: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn112]
 lea rsi, [r12 + 416]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je proc_ops8_ω
 jmp xchain94_n14_α
 xchain94_n13_β:
 jmp proc_ops8_ω
xchain94_n14_α:
# IR_LIT_STRING
bb78_α:
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx113_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain94_n15_α
 xchain94_n14_β:
 jmp proc_ops8_ω
.Lx113_0:
 .quad .Lx113_0_s
.Lx113_0_s:
 .string "+"
xchain94_n15_α:
# IR_LIT_STRING
bb79_α:
 mov qword ptr [r12 + 576], 1
 mov rax, qword ptr [rip + .Lx114_0]
 mov qword ptr [r12 + 584], rax
 jmp xchain94_n16_α
 xchain94_n15_β:
 jmp proc_ops8_ω
.Lx114_0:
 .quad .Lx114_0_s
.Lx114_0_s:
 .string "^"
xchain94_n16_α:
# IR_LIT_STRING
bb80_α:
 mov qword ptr [r12 + 480], 1
 mov rax, qword ptr [rip + .Lx115_0]
 mov qword ptr [r12 + 488], rax
 jmp xchain94_n17_α
 xchain94_n16_β:
 jmp proc_ops8_ω
.Lx115_0:
 .quad .Lx115_0_s
.Lx115_0_s:
 .string "x"
xchain94_n17_α:
# IR_LIT_INTEGER
bb81_α:
 mov qword ptr [r12 + 496], 6
 mov rax, qword ptr [rip + .Lx116_0]
 mov qword ptr [r12 + 504], rax
 jmp xchain94_n18_α
 xchain94_n17_β:
 jmp proc_ops8_ω
.Lx116_0:
 .quad 3
xchain94_n18_α:
bb82_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+576] -> [r12+528]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 536], rax
# marshal arg1 = producer-box slot [r12+480] -> [r12+544]
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 552], rax
# marshal arg2 = producer-box slot [r12+496] -> [r12+560]
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 568], rax
  .section .rodata
  .Lrkfn118: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn118]
 lea rsi, [r12 + 528]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je proc_ops8_ω
 jmp xchain94_n19_α
 xchain94_n18_β:
 jmp proc_ops8_ω
xchain94_n19_α:
# IR_LIT_INTEGER
bb83_α:
 mov qword ptr [r12 + 592], 6
 mov rax, qword ptr [rip + .Lx119_0]
 mov qword ptr [r12 + 600], rax
 jmp xchain94_n20_α
 xchain94_n19_β:
 jmp proc_ops8_ω
.Lx119_0:
 .quad 3
xchain94_n20_α:
bb84_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+672] -> [r12+624]
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 632], rax
# marshal arg1 = producer-box slot [r12+512] -> [r12+640]
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 648], rax
# marshal arg2 = producer-box slot [r12+592] -> [r12+656]
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 664], rax
  .section .rodata
  .Lrkfn121: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn121]
 lea rsi, [r12 + 624]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 cmp eax, 99
 je proc_ops8_ω
 jmp xchain94_n21_α
 xchain94_n20_β:
 jmp proc_ops8_ω
xchain94_n21_α:
bb85_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+752] -> [r12+704]
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 712], rax
# marshal arg1 = producer-box slot [r12+400] -> [r12+720]
 mov rax, qword ptr [r12 + 400]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 728], rax
# marshal arg2 = producer-box slot [r12+608] -> [r12+736]
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 744], rax
  .section .rodata
  .Lrkfn123: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn123]
 lea rsi, [r12 + 704]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 cmp eax, 99
 je proc_ops8_ω
 jmp xchain94_n22_α
 xchain94_n21_β:
 jmp proc_ops8_ω
xchain94_n22_α:
bb86_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+832] -> [r12+784]
 mov rax, qword ptr [r12 + 832]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 840]
 mov qword ptr [r12 + 792], rax
# marshal arg1 = producer-box slot [r12+192] -> [r12+800]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 808], rax
# marshal arg2 = producer-box slot [r12+688] -> [r12+816]
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 824], rax
  .section .rodata
  .Lrkfn125: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn125]
 lea rsi, [r12 + 784]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 cmp eax, 99
 je xchain94_n24_α
 jmp xchain94_n23_α
 xchain94_n22_β:
 jmp xchain94_n24_α
xchain94_n23_α:
# IR_LIT_STRING
bb87_α:
 mov qword ptr [r12 + 848], 1
 mov rax, qword ptr [rip + .Lx126_0]
 mov qword ptr [r12 + 856], rax
 jmp xchain94_n25_α
 xchain94_n23_β:
 jmp xchain94_n24_α
.Lx126_0:
 .quad .Lx126_0_s
.Lx126_0_s:
 .string "x"
xchain94_n24_α:
bb88_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+48] -> [r12+80]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 88], rax
  .section .rodata
  .Lrkfn128: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn128]
 lea rsi, [r12 + 80]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je proc_ops8_ω
 jmp proc_ops8_ω
 xchain94_n24_β:
 jmp proc_ops8_ω
xchain94_n25_α:
# IR_VAR_REF local
bb89_α:
 lea rdi, [r12 + 880]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xchain94_n26_α
 xchain94_n25_β:
 jmp xchain94_n24_α
xchain94_n26_α:
bb90_α:
  .section .rodata
  .Lcall90_pname: .string "d"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 768]
 mov rdx, qword ptr [r12 + 776]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 848]
 mov rdx, qword ptr [r12 + 856]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 864]
 mov rdx, qword ptr [r12 + 872]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall90_pname]
 mov esi, 3
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain94_n24_α
 jmp xchain94_n27_α
xchain94_n26_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain94_n24_α
 jmp xchain94_n27_α
xchain94_n27_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb91_α:
 lea rax, [rip + xchain94_n26_β]
 mov qword ptr [r12 + 32], rax
 jmp proc_ops8_γ
 xchain94_n27_β:
 jmp proc_ops8_ω
xchain94_n28_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb92_α:
 jmp qword ptr [r12 + 32]
 xchain94_n28_β:
 jmp proc_ops8_ω
proc_ops8_β:
jmp xchain94_n28_α
proc_ops8_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_ops8_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_d_α
proc_d_α:
#=======================================================================================================================
    .global proc_d_α
    .global proc_d_β
    .global proc_d_γ
    .global proc_d_ω
push r12
  mov r12, rdi
  cmp esi, 0
  jne proc_d_β
proc_d_α_body:
xchain136_n0_α:
bb93_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn138: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn138]
 lea rsi, [r12 + 112]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain136_n1_α
 xchain136_n0_β:
 jmp proc_d_ω
xchain136_n1_α:
# IR_VAR_REF local
bb94_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6416], rax
 mov qword ptr [r12 + 6424], rdx
 jmp xchain136_n2_α
 xchain136_n1_β:
 jmp xchain136_n7_α
xchain136_n2_α:
# IR_LIT_STRING
bb95_α:
 mov qword ptr [r12 + 6528], 1
 mov rax, qword ptr [rip + .Lx141_0]
 mov qword ptr [r12 + 6536], rax
 jmp xchain136_n3_α
 xchain136_n2_β:
 jmp proc_d_ω
.Lx141_0:
 .quad .Lx141_0_s
.Lx141_0_s:
 .string "+"
xchain136_n3_α:
# IR_VAR_REF local
bb96_α:
 lea rdi, [r12 + 6560]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6432], rax
 mov qword ptr [r12 + 6440], rdx
 jmp xchain136_n4_α
 xchain136_n3_β:
 jmp proc_d_ω
xchain136_n4_α:
# IR_VAR_REF local
bb97_α:
 lea rdi, [r12 + 6544]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6448], rax
 mov qword ptr [r12 + 6456], rdx
 jmp xchain136_n5_α
 xchain136_n4_β:
 jmp proc_d_ω
xchain136_n5_α:
bb98_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+6528] -> [r12+6480]
 mov rax, qword ptr [r12 + 6528]
 mov qword ptr [r12 + 6480], rax
 mov rax, qword ptr [r12 + 6536]
 mov qword ptr [r12 + 6488], rax
# marshal arg1 = producer-box slot [r12+6432] -> [r12+6496]
 mov rax, qword ptr [r12 + 6432]
 mov qword ptr [r12 + 6496], rax
 mov rax, qword ptr [r12 + 6440]
 mov qword ptr [r12 + 6504], rax
# marshal arg2 = producer-box slot [r12+6448] -> [r12+6512]
 mov rax, qword ptr [r12 + 6448]
 mov qword ptr [r12 + 6512], rax
 mov rax, qword ptr [r12 + 6456]
 mov qword ptr [r12 + 6520], rax
  .section .rodata
  .Lrkfn147: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn147]
 lea rsi, [r12 + 6480]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6464], rax
 mov qword ptr [r12 + 6472], rdx
 cmp eax, 99
 je xchain136_n7_α
 jmp xchain136_n6_α
 xchain136_n5_β:
 jmp xchain136_n7_α
xchain136_n6_α:
bb99_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+6416] -> [r12+6384]
 mov rax, qword ptr [r12 + 6416]
 mov qword ptr [r12 + 6384], rax
 mov rax, qword ptr [r12 + 6424]
 mov qword ptr [r12 + 6392], rax
# marshal arg1 = producer-box slot [r12+6464] -> [r12+6400]
 mov rax, qword ptr [r12 + 6464]
 mov qword ptr [r12 + 6400], rax
 mov rax, qword ptr [r12 + 6472]
 mov qword ptr [r12 + 6408], rax
  .section .rodata
  .Lrkfn149: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn149]
 lea rsi, [r12 + 6384]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6368], rax
 mov qword ptr [r12 + 6376], rdx
 cmp eax, 99
 je xchain136_n7_α
 jmp xchain136_n8_α
 xchain136_n6_β:
 jmp xchain136_n7_α
xchain136_n7_α:
bb100_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+5872]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 5872], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 5880], rax
  .section .rodata
  .Lrkfn151: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn151]
 lea rsi, [r12 + 5872]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5856], rax
 mov qword ptr [r12 + 5864], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain136_n9_α
 xchain136_n7_β:
 jmp proc_d_ω
xchain136_n8_α:
# IR_VAR_REF local
bb101_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6336], rax
 mov qword ptr [r12 + 6344], rdx
 jmp xchain136_n10_α
 xchain136_n8_β:
 jmp xchain136_n7_α
xchain136_n9_α:
# IR_VAR_REF local
bb102_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5728], rax
 mov qword ptr [r12 + 5736], rdx
 jmp xchain136_n11_α
 xchain136_n9_β:
 jmp xchain136_n20_α
xchain136_n10_α:
# IR_VAR_REF local
bb103_α:
 lea rdi, [r12 + 6592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6352], rax
 mov qword ptr [r12 + 6360], rdx
 jmp xchain136_n12_α
 xchain136_n10_β:
 jmp xchain136_n7_α
xchain136_n11_α:
# IR_LIT_STRING
bb104_α:
 mov qword ptr [r12 + 5840], 1
 mov rax, qword ptr [rip + .Lx158_0]
 mov qword ptr [r12 + 5848], rax
 jmp xchain136_n13_α
 xchain136_n11_β:
 jmp proc_d_ω
.Lx158_0:
 .quad .Lx158_0_s
.Lx158_0_s:
 .string "-"
xchain136_n12_α:
bb105_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+6336] -> [r12+6304]
 mov rax, qword ptr [r12 + 6336]
 mov qword ptr [r12 + 6304], rax
 mov rax, qword ptr [r12 + 6344]
 mov qword ptr [r12 + 6312], rax
# marshal arg1 = producer-box slot [r12+6352] -> [r12+6320]
 mov rax, qword ptr [r12 + 6352]
 mov qword ptr [r12 + 6320], rax
 mov rax, qword ptr [r12 + 6360]
 mov qword ptr [r12 + 6328], rax
  .section .rodata
  .Lrkfn160: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn160]
 lea rsi, [r12 + 6304]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6288], rax
 mov qword ptr [r12 + 6296], rdx
 cmp eax, 99
 je xchain136_n7_α
 jmp xchain136_n14_α
 xchain136_n12_β:
 jmp xchain136_n7_α
xchain136_n13_α:
# IR_VAR_REF local
bb106_α:
 lea rdi, [r12 + 6560]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5744], rax
 mov qword ptr [r12 + 5752], rdx
 jmp xchain136_n15_α
 xchain136_n13_β:
 jmp proc_d_ω
xchain136_n14_α:
# IR_VAR_REF local
bb107_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6160], rax
 mov qword ptr [r12 + 6168], rdx
 jmp xchain136_n16_α
 xchain136_n14_β:
 jmp xchain136_n7_α
xchain136_n15_α:
# IR_VAR_REF local
bb108_α:
 lea rdi, [r12 + 6544]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5760], rax
 mov qword ptr [r12 + 5768], rdx
 jmp xchain136_n17_α
 xchain136_n15_β:
 jmp proc_d_ω
xchain136_n16_α:
# IR_LIT_STRING
bb109_α:
 mov qword ptr [r12 + 6272], 1
 mov rax, qword ptr [rip + .Lx167_0]
 mov qword ptr [r12 + 6280], rax
 jmp xchain136_n18_α
 xchain136_n16_β:
 jmp proc_d_ω
.Lx167_0:
 .quad .Lx167_0_s
.Lx167_0_s:
 .string "+"
xchain136_n17_α:
bb110_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+5840] -> [r12+5792]
 mov rax, qword ptr [r12 + 5840]
 mov qword ptr [r12 + 5792], rax
 mov rax, qword ptr [r12 + 5848]
 mov qword ptr [r12 + 5800], rax
# marshal arg1 = producer-box slot [r12+5744] -> [r12+5808]
 mov rax, qword ptr [r12 + 5744]
 mov qword ptr [r12 + 5808], rax
 mov rax, qword ptr [r12 + 5752]
 mov qword ptr [r12 + 5816], rax
# marshal arg2 = producer-box slot [r12+5760] -> [r12+5824]
 mov rax, qword ptr [r12 + 5760]
 mov qword ptr [r12 + 5824], rax
 mov rax, qword ptr [r12 + 5768]
 mov qword ptr [r12 + 5832], rax
  .section .rodata
  .Lrkfn169: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn169]
 lea rsi, [r12 + 5792]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5776], rax
 mov qword ptr [r12 + 5784], rdx
 cmp eax, 99
 je xchain136_n20_α
 jmp xchain136_n19_α
 xchain136_n17_β:
 jmp xchain136_n20_α
xchain136_n18_α:
# IR_VAR_REF local
bb111_α:
 lea rdi, [r12 + 6608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6176], rax
 mov qword ptr [r12 + 6184], rdx
 jmp xchain136_n21_α
 xchain136_n18_β:
 jmp proc_d_ω
xchain136_n19_α:
bb112_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+5728] -> [r12+5696]
 mov rax, qword ptr [r12 + 5728]
 mov qword ptr [r12 + 5696], rax
 mov rax, qword ptr [r12 + 5736]
 mov qword ptr [r12 + 5704], rax
# marshal arg1 = producer-box slot [r12+5776] -> [r12+5712]
 mov rax, qword ptr [r12 + 5776]
 mov qword ptr [r12 + 5712], rax
 mov rax, qword ptr [r12 + 5784]
 mov qword ptr [r12 + 5720], rax
  .section .rodata
  .Lrkfn173: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn173]
 lea rsi, [r12 + 5696]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5680], rax
 mov qword ptr [r12 + 5688], rdx
 cmp eax, 99
 je xchain136_n20_α
 jmp xchain136_n22_α
 xchain136_n19_β:
 jmp xchain136_n20_α
xchain136_n20_α:
bb113_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+5184]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 5184], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 5192], rax
  .section .rodata
  .Lrkfn175: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn175]
 lea rsi, [r12 + 5184]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5168], rax
 mov qword ptr [r12 + 5176], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain136_n23_α
 xchain136_n20_β:
 jmp proc_d_ω
xchain136_n21_α:
# IR_VAR_REF local
bb114_α:
 lea rdi, [r12 + 6624]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6192], rax
 mov qword ptr [r12 + 6200], rdx
 jmp xchain136_n24_α
 xchain136_n21_β:
 jmp proc_d_ω
xchain136_n22_α:
# IR_VAR_REF local
bb115_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5648], rax
 mov qword ptr [r12 + 5656], rdx
 jmp xchain136_n25_α
 xchain136_n22_β:
 jmp xchain136_n20_α
xchain136_n23_α:
# IR_VAR_REF local
bb116_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5040], rax
 mov qword ptr [r12 + 5048], rdx
 jmp xchain136_n26_α
 xchain136_n23_β:
 jmp xchain136_n39_α
xchain136_n24_α:
bb117_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+6272] -> [r12+6224]
 mov rax, qword ptr [r12 + 6272]
 mov qword ptr [r12 + 6224], rax
 mov rax, qword ptr [r12 + 6280]
 mov qword ptr [r12 + 6232], rax
# marshal arg1 = producer-box slot [r12+6176] -> [r12+6240]
 mov rax, qword ptr [r12 + 6176]
 mov qword ptr [r12 + 6240], rax
 mov rax, qword ptr [r12 + 6184]
 mov qword ptr [r12 + 6248], rax
# marshal arg2 = producer-box slot [r12+6192] -> [r12+6256]
 mov rax, qword ptr [r12 + 6192]
 mov qword ptr [r12 + 6256], rax
 mov rax, qword ptr [r12 + 6200]
 mov qword ptr [r12 + 6264], rax
  .section .rodata
  .Lrkfn183: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn183]
 lea rsi, [r12 + 6224]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6208], rax
 mov qword ptr [r12 + 6216], rdx
 cmp eax, 99
 je xchain136_n7_α
 jmp xchain136_n27_α
 xchain136_n24_β:
 jmp xchain136_n7_α
xchain136_n25_α:
# IR_VAR_REF local
bb118_α:
 lea rdi, [r12 + 6592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5664], rax
 mov qword ptr [r12 + 5672], rdx
 jmp xchain136_n28_α
 xchain136_n25_β:
 jmp xchain136_n20_α
xchain136_n26_α:
# IR_LIT_STRING
bb119_α:
 mov qword ptr [r12 + 5152], 1
 mov rax, qword ptr [rip + .Lx186_0]
 mov qword ptr [r12 + 5160], rax
 jmp xchain136_n29_α
 xchain136_n26_β:
 jmp proc_d_ω
.Lx186_0:
 .quad .Lx186_0_s
.Lx186_0_s:
 .string "*"
xchain136_n27_α:
bb120_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+6160] -> [r12+6128]
 mov rax, qword ptr [r12 + 6160]
 mov qword ptr [r12 + 6128], rax
 mov rax, qword ptr [r12 + 6168]
 mov qword ptr [r12 + 6136], rax
# marshal arg1 = producer-box slot [r12+6208] -> [r12+6144]
 mov rax, qword ptr [r12 + 6208]
 mov qword ptr [r12 + 6144], rax
 mov rax, qword ptr [r12 + 6216]
 mov qword ptr [r12 + 6152], rax
  .section .rodata
  .Lrkfn188: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn188]
 lea rsi, [r12 + 6128]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6112], rax
 mov qword ptr [r12 + 6120], rdx
 cmp eax, 99
 je xchain136_n7_α
 jmp xchain136_n30_α
 xchain136_n27_β:
 jmp xchain136_n7_α
xchain136_n28_α:
bb121_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+5648] -> [r12+5616]
 mov rax, qword ptr [r12 + 5648]
 mov qword ptr [r12 + 5616], rax
 mov rax, qword ptr [r12 + 5656]
 mov qword ptr [r12 + 5624], rax
# marshal arg1 = producer-box slot [r12+5664] -> [r12+5632]
 mov rax, qword ptr [r12 + 5664]
 mov qword ptr [r12 + 5632], rax
 mov rax, qword ptr [r12 + 5672]
 mov qword ptr [r12 + 5640], rax
  .section .rodata
  .Lrkfn190: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn190]
 lea rsi, [r12 + 5616]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5600], rax
 mov qword ptr [r12 + 5608], rdx
 cmp eax, 99
 je xchain136_n20_α
 jmp xchain136_n31_α
 xchain136_n28_β:
 jmp xchain136_n20_α
xchain136_n29_α:
# IR_VAR_REF local
bb122_α:
 lea rdi, [r12 + 6560]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5056], rax
 mov qword ptr [r12 + 5064], rdx
 jmp xchain136_n32_α
 xchain136_n29_β:
 jmp proc_d_ω
xchain136_n30_α:
bb123_α:
# IR_CUT
 jmp xchain136_n33_α
 xchain136_n30_β:
 jmp xchain136_n7_α
xchain136_n31_α:
# IR_VAR_REF local
bb124_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5472], rax
 mov qword ptr [r12 + 5480], rdx
 jmp xchain136_n34_α
 xchain136_n31_β:
 jmp xchain136_n20_α
xchain136_n32_α:
# IR_VAR_REF local
bb125_α:
 lea rdi, [r12 + 6544]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5072], rax
 mov qword ptr [r12 + 5080], rdx
 jmp xchain136_n35_α
 xchain136_n32_β:
 jmp proc_d_ω
xchain136_n33_α:
# IR_VAR_REF local
bb126_α:
 lea rdi, [r12 + 6560]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6064], rax
 mov qword ptr [r12 + 6072], rdx
 jmp xchain136_n36_α
 xchain136_n33_β:
 jmp xchain136_n7_α
xchain136_n34_α:
# IR_LIT_STRING
bb127_α:
 mov qword ptr [r12 + 5584], 1
 mov rax, qword ptr [rip + .Lx200_0]
 mov qword ptr [r12 + 5592], rax
 jmp xchain136_n37_α
 xchain136_n34_β:
 jmp proc_d_ω
.Lx200_0:
 .quad .Lx200_0_s
.Lx200_0_s:
 .string "-"
xchain136_n35_α:
bb128_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+5152] -> [r12+5104]
 mov rax, qword ptr [r12 + 5152]
 mov qword ptr [r12 + 5104], rax
 mov rax, qword ptr [r12 + 5160]
 mov qword ptr [r12 + 5112], rax
# marshal arg1 = producer-box slot [r12+5056] -> [r12+5120]
 mov rax, qword ptr [r12 + 5056]
 mov qword ptr [r12 + 5120], rax
 mov rax, qword ptr [r12 + 5064]
 mov qword ptr [r12 + 5128], rax
# marshal arg2 = producer-box slot [r12+5072] -> [r12+5136]
 mov rax, qword ptr [r12 + 5072]
 mov qword ptr [r12 + 5136], rax
 mov rax, qword ptr [r12 + 5080]
 mov qword ptr [r12 + 5144], rax
  .section .rodata
  .Lrkfn202: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn202]
 lea rsi, [r12 + 5104]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5088], rax
 mov qword ptr [r12 + 5096], rdx
 cmp eax, 99
 je xchain136_n39_α
 jmp xchain136_n38_α
 xchain136_n35_β:
 jmp xchain136_n39_α
xchain136_n36_α:
# IR_VAR_REF local
bb129_α:
 lea rdi, [r12 + 6592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6080], rax
 mov qword ptr [r12 + 6088], rdx
 jmp xchain136_n40_α
 xchain136_n36_β:
 jmp xchain136_n7_α
xchain136_n37_α:
# IR_VAR_REF local
bb130_α:
 lea rdi, [r12 + 6608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5488], rax
 mov qword ptr [r12 + 5496], rdx
 jmp xchain136_n41_α
 xchain136_n37_β:
 jmp proc_d_ω
xchain136_n38_α:
bb131_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+5040] -> [r12+5008]
 mov rax, qword ptr [r12 + 5040]
 mov qword ptr [r12 + 5008], rax
 mov rax, qword ptr [r12 + 5048]
 mov qword ptr [r12 + 5016], rax
# marshal arg1 = producer-box slot [r12+5088] -> [r12+5024]
 mov rax, qword ptr [r12 + 5088]
 mov qword ptr [r12 + 5024], rax
 mov rax, qword ptr [r12 + 5096]
 mov qword ptr [r12 + 5032], rax
  .section .rodata
  .Lrkfn208: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn208]
 lea rsi, [r12 + 5008]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4992], rax
 mov qword ptr [r12 + 5000], rdx
 cmp eax, 99
 je xchain136_n39_α
 jmp xchain136_n42_α
 xchain136_n38_β:
 jmp xchain136_n39_α
xchain136_n39_α:
bb132_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+4304]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 4304], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 4312], rax
  .section .rodata
  .Lrkfn210: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn210]
 lea rsi, [r12 + 4304]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4288], rax
 mov qword ptr [r12 + 4296], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain136_n43_α
 xchain136_n39_β:
 jmp proc_d_ω
xchain136_n40_α:
# IR_VAR_REF local
bb133_α:
 lea rdi, [r12 + 6608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6096], rax
 mov qword ptr [r12 + 6104], rdx
 jmp xchain136_n44_α
 xchain136_n40_β:
 jmp xchain136_n7_α
xchain136_n41_α:
# IR_VAR_REF local
bb134_α:
 lea rdi, [r12 + 6624]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5504], rax
 mov qword ptr [r12 + 5512], rdx
 jmp xchain136_n45_α
 xchain136_n41_β:
 jmp proc_d_ω
xchain136_n42_α:
# IR_VAR_REF local
bb135_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4960], rax
 mov qword ptr [r12 + 4968], rdx
 jmp xchain136_n46_α
 xchain136_n42_β:
 jmp xchain136_n39_α
xchain136_n43_α:
# IR_VAR_REF local
bb136_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4160], rax
 mov qword ptr [r12 + 4168], rdx
 jmp xchain136_n47_α
 xchain136_n43_β:
 jmp xchain136_n64_α
xchain136_n44_α:
bb137_α:
  .section .rodata
  .Lcall137_pname: .string "d"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 6064]
 mov rdx, qword ptr [r12 + 6072]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 6080]
 mov rdx, qword ptr [r12 + 6088]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 6096]
 mov rdx, qword ptr [r12 + 6104]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall137_pname]
 mov esi, 3
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 6000], rax
 mov qword ptr [r12 + 6008], rdx
 cmp eax, 99
 je xchain136_n7_α
 jmp xchain136_n48_α
xchain136_n44_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 6000], rax
 mov qword ptr [r12 + 6008], rdx
 cmp eax, 99
 je xchain136_n7_α
 jmp xchain136_n48_α
xchain136_n45_α:
bb138_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+5584] -> [r12+5536]
 mov rax, qword ptr [r12 + 5584]
 mov qword ptr [r12 + 5536], rax
 mov rax, qword ptr [r12 + 5592]
 mov qword ptr [r12 + 5544], rax
# marshal arg1 = producer-box slot [r12+5488] -> [r12+5552]
 mov rax, qword ptr [r12 + 5488]
 mov qword ptr [r12 + 5552], rax
 mov rax, qword ptr [r12 + 5496]
 mov qword ptr [r12 + 5560], rax
# marshal arg2 = producer-box slot [r12+5504] -> [r12+5568]
 mov rax, qword ptr [r12 + 5504]
 mov qword ptr [r12 + 5568], rax
 mov rax, qword ptr [r12 + 5512]
 mov qword ptr [r12 + 5576], rax
  .section .rodata
  .Lrkfn221: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn221]
 lea rsi, [r12 + 5536]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5520], rax
 mov qword ptr [r12 + 5528], rdx
 cmp eax, 99
 je xchain136_n20_α
 jmp xchain136_n49_α
 xchain136_n45_β:
 jmp xchain136_n20_α
xchain136_n46_α:
# IR_VAR_REF local
bb139_α:
 lea rdi, [r12 + 6592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4976], rax
 mov qword ptr [r12 + 4984], rdx
 jmp xchain136_n50_α
 xchain136_n46_β:
 jmp xchain136_n39_α
xchain136_n47_α:
# IR_LIT_STRING
bb140_α:
 mov qword ptr [r12 + 4272], 1
 mov rax, qword ptr [rip + .Lx224_0]
 mov qword ptr [r12 + 4280], rax
 jmp xchain136_n51_α
 xchain136_n47_β:
 jmp proc_d_ω
.Lx224_0:
 .quad .Lx224_0_s
.Lx224_0_s:
 .string "/"
xchain136_n48_α:
# IR_VAR_REF local
bb141_α:
 lea rdi, [r12 + 6544]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5952], rax
 mov qword ptr [r12 + 5960], rdx
 jmp xchain136_n52_α
 xchain136_n48_β:
 jmp xchain136_n7_α
xchain136_n49_α:
bb142_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+5472] -> [r12+5440]
 mov rax, qword ptr [r12 + 5472]
 mov qword ptr [r12 + 5440], rax
 mov rax, qword ptr [r12 + 5480]
 mov qword ptr [r12 + 5448], rax
# marshal arg1 = producer-box slot [r12+5520] -> [r12+5456]
 mov rax, qword ptr [r12 + 5520]
 mov qword ptr [r12 + 5456], rax
 mov rax, qword ptr [r12 + 5528]
 mov qword ptr [r12 + 5464], rax
  .section .rodata
  .Lrkfn228: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn228]
 lea rsi, [r12 + 5440]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5424], rax
 mov qword ptr [r12 + 5432], rdx
 cmp eax, 99
 je xchain136_n20_α
 jmp xchain136_n53_α
 xchain136_n49_β:
 jmp xchain136_n20_α
xchain136_n50_α:
bb143_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4960] -> [r12+4928]
 mov rax, qword ptr [r12 + 4960]
 mov qword ptr [r12 + 4928], rax
 mov rax, qword ptr [r12 + 4968]
 mov qword ptr [r12 + 4936], rax
# marshal arg1 = producer-box slot [r12+4976] -> [r12+4944]
 mov rax, qword ptr [r12 + 4976]
 mov qword ptr [r12 + 4944], rax
 mov rax, qword ptr [r12 + 4984]
 mov qword ptr [r12 + 4952], rax
  .section .rodata
  .Lrkfn230: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn230]
 lea rsi, [r12 + 4928]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4912], rax
 mov qword ptr [r12 + 4920], rdx
 cmp eax, 99
 je xchain136_n39_α
 jmp xchain136_n54_α
 xchain136_n50_β:
 jmp xchain136_n39_α
xchain136_n51_α:
# IR_VAR_REF local
bb144_α:
 lea rdi, [r12 + 6560]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4176], rax
 mov qword ptr [r12 + 4184], rdx
 jmp xchain136_n55_α
 xchain136_n51_β:
 jmp proc_d_ω
xchain136_n52_α:
# IR_VAR_REF local
bb145_α:
 lea rdi, [r12 + 6592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5968], rax
 mov qword ptr [r12 + 5976], rdx
 jmp xchain136_n56_α
 xchain136_n52_β:
 jmp xchain136_n7_α
xchain136_n53_α:
bb146_α:
# IR_CUT
 jmp xchain136_n57_α
 xchain136_n53_β:
 jmp xchain136_n20_α
xchain136_n54_α:
# IR_VAR_REF local
bb147_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4592], rax
 mov qword ptr [r12 + 4600], rdx
 jmp xchain136_n58_α
 xchain136_n54_β:
 jmp xchain136_n39_α
xchain136_n55_α:
# IR_VAR_REF local
bb148_α:
 lea rdi, [r12 + 6544]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4192], rax
 mov qword ptr [r12 + 4200], rdx
 jmp xchain136_n59_α
 xchain136_n55_β:
 jmp proc_d_ω
xchain136_n56_α:
# IR_VAR_REF local
bb149_α:
 lea rdi, [r12 + 6624]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5984], rax
 mov qword ptr [r12 + 5992], rdx
 jmp xchain136_n60_α
 xchain136_n56_β:
 jmp xchain136_n7_α
xchain136_n57_α:
# IR_VAR_REF local
bb150_α:
 lea rdi, [r12 + 6560]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5376], rax
 mov qword ptr [r12 + 5384], rdx
 jmp xchain136_n61_α
 xchain136_n57_β:
 jmp xchain136_n20_α
xchain136_n58_α:
# IR_LIT_STRING
bb151_α:
 mov qword ptr [r12 + 4896], 1
 mov rax, qword ptr [rip + .Lx244_0]
 mov qword ptr [r12 + 4904], rax
 jmp xchain136_n62_α
 xchain136_n58_β:
 jmp proc_d_ω
.Lx244_0:
 .quad .Lx244_0_s
.Lx244_0_s:
 .string "+"
xchain136_n59_α:
bb152_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4272] -> [r12+4224]
 mov rax, qword ptr [r12 + 4272]
 mov qword ptr [r12 + 4224], rax
 mov rax, qword ptr [r12 + 4280]
 mov qword ptr [r12 + 4232], rax
# marshal arg1 = producer-box slot [r12+4176] -> [r12+4240]
 mov rax, qword ptr [r12 + 4176]
 mov qword ptr [r12 + 4240], rax
 mov rax, qword ptr [r12 + 4184]
 mov qword ptr [r12 + 4248], rax
# marshal arg2 = producer-box slot [r12+4192] -> [r12+4256]
 mov rax, qword ptr [r12 + 4192]
 mov qword ptr [r12 + 4256], rax
 mov rax, qword ptr [r12 + 4200]
 mov qword ptr [r12 + 4264], rax
  .section .rodata
  .Lrkfn246: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn246]
 lea rsi, [r12 + 4224]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4208], rax
 mov qword ptr [r12 + 4216], rdx
 cmp eax, 99
 je xchain136_n64_α
 jmp xchain136_n63_α
 xchain136_n59_β:
 jmp xchain136_n64_α
xchain136_n60_α:
bb153_α:
  .section .rodata
  .Lcall153_pname: .string "d"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5952]
 mov rdx, qword ptr [r12 + 5960]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 5968]
 mov rdx, qword ptr [r12 + 5976]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 5984]
 mov rdx, qword ptr [r12 + 5992]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall153_pname]
 mov esi, 3
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 5888], rax
 mov qword ptr [r12 + 5896], rdx
 cmp eax, 99
 je xchain136_n44_β
 jmp xchain136_n65_α
xchain136_n60_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 5888], rax
 mov qword ptr [r12 + 5896], rdx
 cmp eax, 99
 je xchain136_n44_β
 jmp xchain136_n65_α
xchain136_n61_α:
# IR_VAR_REF local
bb154_α:
 lea rdi, [r12 + 6592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5392], rax
 mov qword ptr [r12 + 5400], rdx
 jmp xchain136_n66_α
 xchain136_n61_β:
 jmp xchain136_n20_α
xchain136_n62_α:
# IR_LIT_STRING
bb155_α:
 mov qword ptr [r12 + 4704], 1
 mov rax, qword ptr [rip + .Lx250_0]
 mov qword ptr [r12 + 4712], rax
 jmp xchain136_n67_α
 xchain136_n62_β:
 jmp proc_d_ω
.Lx250_0:
 .quad .Lx250_0_s
.Lx250_0_s:
 .string "*"
xchain136_n63_α:
bb156_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4160] -> [r12+4128]
 mov rax, qword ptr [r12 + 4160]
 mov qword ptr [r12 + 4128], rax
 mov rax, qword ptr [r12 + 4168]
 mov qword ptr [r12 + 4136], rax
# marshal arg1 = producer-box slot [r12+4208] -> [r12+4144]
 mov rax, qword ptr [r12 + 4208]
 mov qword ptr [r12 + 4144], rax
 mov rax, qword ptr [r12 + 4216]
 mov qword ptr [r12 + 4152], rax
  .section .rodata
  .Lrkfn252: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn252]
 lea rsi, [r12 + 4128]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4112], rax
 mov qword ptr [r12 + 4120], rdx
 cmp eax, 99
 je xchain136_n64_α
 jmp xchain136_n68_α
 xchain136_n63_β:
 jmp xchain136_n64_α
xchain136_n64_α:
bb157_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+3232]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 3232], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 3240], rax
  .section .rodata
  .Lrkfn254: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn254]
 lea rsi, [r12 + 3232]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3216], rax
 mov qword ptr [r12 + 3224], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain136_n69_α
 xchain136_n64_β:
 jmp proc_d_ω
xchain136_n65_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb158_α:
 lea rax, [rip + xchain136_n7_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_d_γ
 xchain136_n65_β:
 jmp proc_d_ω
xchain136_n66_α:
# IR_VAR_REF local
bb159_α:
 lea rdi, [r12 + 6608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5408], rax
 mov qword ptr [r12 + 5416], rdx
 jmp xchain136_n71_α
 xchain136_n66_β:
 jmp xchain136_n20_α
xchain136_n67_α:
# IR_VAR_REF local
bb160_α:
 lea rdi, [r12 + 6608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4608], rax
 mov qword ptr [r12 + 4616], rdx
 jmp xchain136_n72_α
 xchain136_n67_β:
 jmp proc_d_ω
xchain136_n68_α:
# IR_VAR_REF local
bb161_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4080], rax
 mov qword ptr [r12 + 4088], rdx
 jmp xchain136_n73_α
 xchain136_n68_β:
 jmp xchain136_n64_α
xchain136_n69_α:
# IR_VAR_REF local
bb162_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3088], rax
 mov qword ptr [r12 + 3096], rdx
 jmp xchain136_n74_α
 xchain136_n69_β:
 jmp xchain136_n91_α
xchain136_n70_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb163_α:
 jmp qword ptr [r12 + 80]
 xchain136_n70_β:
 jmp proc_d_ω
xchain136_n71_α:
bb164_α:
  .section .rodata
  .Lcall164_pname: .string "d"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5376]
 mov rdx, qword ptr [r12 + 5384]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 5392]
 mov rdx, qword ptr [r12 + 5400]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 5408]
 mov rdx, qword ptr [r12 + 5416]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall164_pname]
 mov esi, 3
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 5312], rax
 mov qword ptr [r12 + 5320], rdx
 cmp eax, 99
 je xchain136_n20_α
 jmp xchain136_n75_α
xchain136_n71_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 5312], rax
 mov qword ptr [r12 + 5320], rdx
 cmp eax, 99
 je xchain136_n20_α
 jmp xchain136_n75_α
xchain136_n72_α:
# IR_VAR_REF local
bb165_α:
 lea rdi, [r12 + 6544]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4624], rax
 mov qword ptr [r12 + 4632], rdx
 jmp xchain136_n76_α
 xchain136_n72_β:
 jmp proc_d_ω
xchain136_n73_α:
# IR_VAR_REF local
bb166_α:
 lea rdi, [r12 + 6592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4096], rax
 mov qword ptr [r12 + 4104], rdx
 jmp xchain136_n77_α
 xchain136_n73_β:
 jmp xchain136_n64_α
xchain136_n74_α:
# IR_LIT_STRING
bb167_α:
 mov qword ptr [r12 + 3200], 1
 mov rax, qword ptr [rip + .Lx272_0]
 mov qword ptr [r12 + 3208], rax
 jmp xchain136_n78_α
 xchain136_n74_β:
 jmp proc_d_ω
.Lx272_0:
 .quad .Lx272_0_s
.Lx272_0_s:
 .string "^"
xchain136_n75_α:
# IR_VAR_REF local
bb168_α:
 lea rdi, [r12 + 6544]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5264], rax
 mov qword ptr [r12 + 5272], rdx
 jmp xchain136_n79_α
 xchain136_n75_β:
 jmp xchain136_n20_α
xchain136_n76_α:
bb169_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4704] -> [r12+4656]
 mov rax, qword ptr [r12 + 4704]
 mov qword ptr [r12 + 4656], rax
 mov rax, qword ptr [r12 + 4712]
 mov qword ptr [r12 + 4664], rax
# marshal arg1 = producer-box slot [r12+4608] -> [r12+4672]
 mov rax, qword ptr [r12 + 4608]
 mov qword ptr [r12 + 4672], rax
 mov rax, qword ptr [r12 + 4616]
 mov qword ptr [r12 + 4680], rax
# marshal arg2 = producer-box slot [r12+4624] -> [r12+4688]
 mov rax, qword ptr [r12 + 4624]
 mov qword ptr [r12 + 4688], rax
 mov rax, qword ptr [r12 + 4632]
 mov qword ptr [r12 + 4696], rax
  .section .rodata
  .Lrkfn276: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn276]
 lea rsi, [r12 + 4656]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4640], rax
 mov qword ptr [r12 + 4648], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain136_n80_α
 xchain136_n76_β:
 jmp proc_d_ω
xchain136_n77_α:
bb170_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4080] -> [r12+4048]
 mov rax, qword ptr [r12 + 4080]
 mov qword ptr [r12 + 4048], rax
 mov rax, qword ptr [r12 + 4088]
 mov qword ptr [r12 + 4056], rax
# marshal arg1 = producer-box slot [r12+4096] -> [r12+4064]
 mov rax, qword ptr [r12 + 4096]
 mov qword ptr [r12 + 4064], rax
 mov rax, qword ptr [r12 + 4104]
 mov qword ptr [r12 + 4072], rax
  .section .rodata
  .Lrkfn278: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn278]
 lea rsi, [r12 + 4048]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4032], rax
 mov qword ptr [r12 + 4040], rdx
 cmp eax, 99
 je xchain136_n64_α
 jmp xchain136_n81_α
 xchain136_n77_β:
 jmp xchain136_n64_α
xchain136_n78_α:
# IR_VAR_REF local
bb171_α:
 lea rdi, [r12 + 6560]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3104], rax
 mov qword ptr [r12 + 3112], rdx
 jmp xchain136_n82_α
 xchain136_n78_β:
 jmp proc_d_ω
xchain136_n79_α:
# IR_VAR_REF local
bb172_α:
 lea rdi, [r12 + 6592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5280], rax
 mov qword ptr [r12 + 5288], rdx
 jmp xchain136_n83_α
 xchain136_n79_β:
 jmp xchain136_n20_α
xchain136_n80_α:
# IR_LIT_STRING
bb173_α:
 mov qword ptr [r12 + 4816], 1
 mov rax, qword ptr [rip + .Lx283_0]
 mov qword ptr [r12 + 4824], rax
 jmp xchain136_n84_α
 xchain136_n80_β:
 jmp proc_d_ω
.Lx283_0:
 .quad .Lx283_0_s
.Lx283_0_s:
 .string "*"
xchain136_n81_α:
# IR_VAR_REF local
bb174_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3520], rax
 mov qword ptr [r12 + 3528], rdx
 jmp xchain136_n85_α
 xchain136_n81_β:
 jmp xchain136_n64_α
xchain136_n82_α:
# IR_VAR_REF local
bb175_α:
 lea rdi, [r12 + 6544]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3120], rax
 mov qword ptr [r12 + 3128], rdx
 jmp xchain136_n86_α
 xchain136_n82_β:
 jmp proc_d_ω
xchain136_n83_α:
# IR_VAR_REF local
bb176_α:
 lea rdi, [r12 + 6624]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5296], rax
 mov qword ptr [r12 + 5304], rdx
 jmp xchain136_n87_α
 xchain136_n83_β:
 jmp xchain136_n20_α
xchain136_n84_α:
# IR_VAR_REF local
bb177_α:
 lea rdi, [r12 + 6560]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4720], rax
 mov qword ptr [r12 + 4728], rdx
 jmp xchain136_n88_α
 xchain136_n84_β:
 jmp proc_d_ω
xchain136_n85_α:
# IR_LIT_STRING
bb178_α:
 mov qword ptr [r12 + 4016], 1
 mov rax, qword ptr [rip + .Lx292_0]
 mov qword ptr [r12 + 4024], rax
 jmp xchain136_n89_α
 xchain136_n85_β:
 jmp proc_d_ω
.Lx292_0:
 .quad .Lx292_0_s
.Lx292_0_s:
 .string "/"
xchain136_n86_α:
bb179_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3200] -> [r12+3152]
 mov rax, qword ptr [r12 + 3200]
 mov qword ptr [r12 + 3152], rax
 mov rax, qword ptr [r12 + 3208]
 mov qword ptr [r12 + 3160], rax
# marshal arg1 = producer-box slot [r12+3104] -> [r12+3168]
 mov rax, qword ptr [r12 + 3104]
 mov qword ptr [r12 + 3168], rax
 mov rax, qword ptr [r12 + 3112]
 mov qword ptr [r12 + 3176], rax
# marshal arg2 = producer-box slot [r12+3120] -> [r12+3184]
 mov rax, qword ptr [r12 + 3120]
 mov qword ptr [r12 + 3184], rax
 mov rax, qword ptr [r12 + 3128]
 mov qword ptr [r12 + 3192], rax
  .section .rodata
  .Lrkfn294: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn294]
 lea rsi, [r12 + 3152]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3136], rax
 mov qword ptr [r12 + 3144], rdx
 cmp eax, 99
 je xchain136_n91_α
 jmp xchain136_n90_α
 xchain136_n86_β:
 jmp xchain136_n91_α
xchain136_n87_α:
bb180_α:
  .section .rodata
  .Lcall180_pname: .string "d"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5264]
 mov rdx, qword ptr [r12 + 5272]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 5280]
 mov rdx, qword ptr [r12 + 5288]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 5296]
 mov rdx, qword ptr [r12 + 5304]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall180_pname]
 mov esi, 3
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 5200], rax
 mov qword ptr [r12 + 5208], rdx
 cmp eax, 99
 je xchain136_n71_β
 jmp xchain136_n92_α
xchain136_n87_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 5200], rax
 mov qword ptr [r12 + 5208], rdx
 cmp eax, 99
 je xchain136_n71_β
 jmp xchain136_n92_α
xchain136_n88_α:
# IR_VAR_REF local
bb181_α:
 lea rdi, [r12 + 6624]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4736], rax
 mov qword ptr [r12 + 4744], rdx
 jmp xchain136_n93_α
 xchain136_n88_β:
 jmp proc_d_ω
xchain136_n89_α:
# IR_LIT_STRING
bb182_α:
 mov qword ptr [r12 + 3824], 1
 mov rax, qword ptr [rip + .Lx298_0]
 mov qword ptr [r12 + 3832], rax
 jmp xchain136_n94_α
 xchain136_n89_β:
 jmp proc_d_ω
.Lx298_0:
 .quad .Lx298_0_s
.Lx298_0_s:
 .string "-"
xchain136_n90_α:
bb183_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3088] -> [r12+3056]
 mov rax, qword ptr [r12 + 3088]
 mov qword ptr [r12 + 3056], rax
 mov rax, qword ptr [r12 + 3096]
 mov qword ptr [r12 + 3064], rax
# marshal arg1 = producer-box slot [r12+3136] -> [r12+3072]
 mov rax, qword ptr [r12 + 3136]
 mov qword ptr [r12 + 3072], rax
 mov rax, qword ptr [r12 + 3144]
 mov qword ptr [r12 + 3080], rax
  .section .rodata
  .Lrkfn300: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn300]
 lea rsi, [r12 + 3056]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3040], rax
 mov qword ptr [r12 + 3048], rdx
 cmp eax, 99
 je xchain136_n91_α
 jmp xchain136_n95_α
 xchain136_n90_β:
 jmp xchain136_n91_α
xchain136_n91_α:
bb184_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+2336]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 2336], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 2344], rax
  .section .rodata
  .Lrkfn302: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn302]
 lea rsi, [r12 + 2336]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2320], rax
 mov qword ptr [r12 + 2328], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain136_n96_α
 xchain136_n91_β:
 jmp proc_d_ω
xchain136_n92_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb185_α:
 lea rax, [rip + xchain136_n20_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_d_γ
 xchain136_n92_β:
 jmp proc_d_ω
xchain136_n93_α:
bb186_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4816] -> [r12+4768]
 mov rax, qword ptr [r12 + 4816]
 mov qword ptr [r12 + 4768], rax
 mov rax, qword ptr [r12 + 4824]
 mov qword ptr [r12 + 4776], rax
# marshal arg1 = producer-box slot [r12+4720] -> [r12+4784]
 mov rax, qword ptr [r12 + 4720]
 mov qword ptr [r12 + 4784], rax
 mov rax, qword ptr [r12 + 4728]
 mov qword ptr [r12 + 4792], rax
# marshal arg2 = producer-box slot [r12+4736] -> [r12+4800]
 mov rax, qword ptr [r12 + 4736]
 mov qword ptr [r12 + 4800], rax
 mov rax, qword ptr [r12 + 4744]
 mov qword ptr [r12 + 4808], rax
  .section .rodata
  .Lrkfn306: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn306]
 lea rsi, [r12 + 4768]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4752], rax
 mov qword ptr [r12 + 4760], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain136_n97_α
 xchain136_n93_β:
 jmp proc_d_ω
xchain136_n94_α:
# IR_LIT_STRING
bb187_α:
 mov qword ptr [r12 + 3632], 1
 mov rax, qword ptr [rip + .Lx307_0]
 mov qword ptr [r12 + 3640], rax
 jmp xchain136_n98_α
 xchain136_n94_β:
 jmp proc_d_ω
.Lx307_0:
 .quad .Lx307_0_s
.Lx307_0_s:
 .string "*"
xchain136_n95_α:
# IR_VAR_REF local
bb188_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3008], rax
 mov qword ptr [r12 + 3016], rdx
 jmp xchain136_n99_α
 xchain136_n95_β:
 jmp xchain136_n91_α
xchain136_n96_α:
# IR_VAR_REF local
bb189_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2224], rax
 mov qword ptr [r12 + 2232], rdx
 jmp xchain136_n100_α
 xchain136_n96_β:
 jmp xchain136_n113_α
xchain136_n97_α:
bb190_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4896] -> [r12+4848]
 mov rax, qword ptr [r12 + 4896]
 mov qword ptr [r12 + 4848], rax
 mov rax, qword ptr [r12 + 4904]
 mov qword ptr [r12 + 4856], rax
# marshal arg1 = producer-box slot [r12+4640] -> [r12+4864]
 mov rax, qword ptr [r12 + 4640]
 mov qword ptr [r12 + 4864], rax
 mov rax, qword ptr [r12 + 4648]
 mov qword ptr [r12 + 4872], rax
# marshal arg2 = producer-box slot [r12+4752] -> [r12+4880]
 mov rax, qword ptr [r12 + 4752]
 mov qword ptr [r12 + 4880], rax
 mov rax, qword ptr [r12 + 4760]
 mov qword ptr [r12 + 4888], rax
  .section .rodata
  .Lrkfn313: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn313]
 lea rsi, [r12 + 4848]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4832], rax
 mov qword ptr [r12 + 4840], rdx
 cmp eax, 99
 je xchain136_n39_α
 jmp xchain136_n101_α
 xchain136_n97_β:
 jmp xchain136_n39_α
xchain136_n98_α:
# IR_VAR_REF local
bb191_α:
 lea rdi, [r12 + 6608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3536], rax
 mov qword ptr [r12 + 3544], rdx
 jmp xchain136_n102_α
 xchain136_n98_β:
 jmp proc_d_ω
xchain136_n99_α:
# IR_VAR_REF local
bb192_α:
 lea rdi, [r12 + 6592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3024], rax
 mov qword ptr [r12 + 3032], rdx
 jmp xchain136_n103_α
 xchain136_n99_β:
 jmp xchain136_n91_α
xchain136_n100_α:
# IR_LIT_STRING
bb193_α:
 mov qword ptr [r12 + 2304], 1
 mov rax, qword ptr [rip + .Lx318_0]
 mov qword ptr [r12 + 2312], rax
 jmp xchain136_n104_α
 xchain136_n100_β:
 jmp proc_d_ω
.Lx318_0:
 .quad .Lx318_0_s
.Lx318_0_s:
 .string "-"
xchain136_n101_α:
bb194_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4592] -> [r12+4560]
 mov rax, qword ptr [r12 + 4592]
 mov qword ptr [r12 + 4560], rax
 mov rax, qword ptr [r12 + 4600]
 mov qword ptr [r12 + 4568], rax
# marshal arg1 = producer-box slot [r12+4832] -> [r12+4576]
 mov rax, qword ptr [r12 + 4832]
 mov qword ptr [r12 + 4576], rax
 mov rax, qword ptr [r12 + 4840]
 mov qword ptr [r12 + 4584], rax
  .section .rodata
  .Lrkfn320: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn320]
 lea rsi, [r12 + 4560]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4544], rax
 mov qword ptr [r12 + 4552], rdx
 cmp eax, 99
 je xchain136_n39_α
 jmp xchain136_n105_α
 xchain136_n101_β:
 jmp xchain136_n39_α
xchain136_n102_α:
# IR_VAR_REF local
bb195_α:
 lea rdi, [r12 + 6544]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3552], rax
 mov qword ptr [r12 + 3560], rdx
 jmp xchain136_n106_α
 xchain136_n102_β:
 jmp proc_d_ω
xchain136_n103_α:
bb196_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3008] -> [r12+2976]
 mov rax, qword ptr [r12 + 3008]
 mov qword ptr [r12 + 2976], rax
 mov rax, qword ptr [r12 + 3016]
 mov qword ptr [r12 + 2984], rax
# marshal arg1 = producer-box slot [r12+3024] -> [r12+2992]
 mov rax, qword ptr [r12 + 3024]
 mov qword ptr [r12 + 2992], rax
 mov rax, qword ptr [r12 + 3032]
 mov qword ptr [r12 + 3000], rax
  .section .rodata
  .Lrkfn324: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn324]
 lea rsi, [r12 + 2976]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2960], rax
 mov qword ptr [r12 + 2968], rdx
 cmp eax, 99
 je xchain136_n91_α
 jmp xchain136_n107_α
 xchain136_n103_β:
 jmp xchain136_n91_α
xchain136_n104_α:
# IR_VAR_REF local
bb197_α:
 lea rdi, [r12 + 6560]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2240], rax
 mov qword ptr [r12 + 2248], rdx
 jmp xchain136_n108_α
 xchain136_n104_β:
 jmp proc_d_ω
xchain136_n105_α:
bb198_α:
# IR_CUT
 jmp xchain136_n109_α
 xchain136_n105_β:
 jmp xchain136_n39_α
xchain136_n106_α:
bb199_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3632] -> [r12+3584]
 mov rax, qword ptr [r12 + 3632]
 mov qword ptr [r12 + 3584], rax
 mov rax, qword ptr [r12 + 3640]
 mov qword ptr [r12 + 3592], rax
# marshal arg1 = producer-box slot [r12+3536] -> [r12+3600]
 mov rax, qword ptr [r12 + 3536]
 mov qword ptr [r12 + 3600], rax
 mov rax, qword ptr [r12 + 3544]
 mov qword ptr [r12 + 3608], rax
# marshal arg2 = producer-box slot [r12+3552] -> [r12+3616]
 mov rax, qword ptr [r12 + 3552]
 mov qword ptr [r12 + 3616], rax
 mov rax, qword ptr [r12 + 3560]
 mov qword ptr [r12 + 3624], rax
  .section .rodata
  .Lrkfn329: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn329]
 lea rsi, [r12 + 3584]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3568], rax
 mov qword ptr [r12 + 3576], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain136_n110_α
 xchain136_n106_β:
 jmp proc_d_ω
xchain136_n107_α:
# IR_VAR_REF local
bb200_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2640], rax
 mov qword ptr [r12 + 2648], rdx
 jmp xchain136_n111_α
 xchain136_n107_β:
 jmp xchain136_n91_α
xchain136_n108_α:
bb201_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2304] -> [r12+2272]
 mov rax, qword ptr [r12 + 2304]
 mov qword ptr [r12 + 2272], rax
 mov rax, qword ptr [r12 + 2312]
 mov qword ptr [r12 + 2280], rax
# marshal arg1 = producer-box slot [r12+2240] -> [r12+2288]
 mov rax, qword ptr [r12 + 2240]
 mov qword ptr [r12 + 2288], rax
 mov rax, qword ptr [r12 + 2248]
 mov qword ptr [r12 + 2296], rax
  .section .rodata
  .Lrkfn333: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn333]
 lea rsi, [r12 + 2272]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2256], rax
 mov qword ptr [r12 + 2264], rdx
 cmp eax, 99
 je xchain136_n113_α
 jmp xchain136_n112_α
 xchain136_n108_β:
 jmp xchain136_n113_α
xchain136_n109_α:
# IR_VAR_REF local
bb202_α:
 lea rdi, [r12 + 6560]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4496], rax
 mov qword ptr [r12 + 4504], rdx
 jmp xchain136_n114_α
 xchain136_n109_β:
 jmp xchain136_n39_α
xchain136_n110_α:
# IR_LIT_STRING
bb203_α:
 mov qword ptr [r12 + 3744], 1
 mov rax, qword ptr [rip + .Lx336_0]
 mov qword ptr [r12 + 3752], rax
 jmp xchain136_n115_α
 xchain136_n110_β:
 jmp proc_d_ω
.Lx336_0:
 .quad .Lx336_0_s
.Lx336_0_s:
 .string "*"
xchain136_n111_α:
# IR_LIT_STRING
bb204_α:
 mov qword ptr [r12 + 2944], 1
 mov rax, qword ptr [rip + .Lx337_0]
 mov qword ptr [r12 + 2952], rax
 jmp xchain136_n116_α
 xchain136_n111_β:
 jmp proc_d_ω
.Lx337_0:
 .quad .Lx337_0_s
.Lx337_0_s:
 .string "*"
xchain136_n112_α:
bb205_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2224] -> [r12+2192]
 mov rax, qword ptr [r12 + 2224]
 mov qword ptr [r12 + 2192], rax
 mov rax, qword ptr [r12 + 2232]
 mov qword ptr [r12 + 2200], rax
# marshal arg1 = producer-box slot [r12+2256] -> [r12+2208]
 mov rax, qword ptr [r12 + 2256]
 mov qword ptr [r12 + 2208], rax
 mov rax, qword ptr [r12 + 2264]
 mov qword ptr [r12 + 2216], rax
  .section .rodata
  .Lrkfn339: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn339]
 lea rsi, [r12 + 2192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2176], rax
 mov qword ptr [r12 + 2184], rdx
 cmp eax, 99
 je xchain136_n113_α
 jmp xchain136_n117_α
 xchain136_n112_β:
 jmp xchain136_n113_α
xchain136_n113_α:
bb206_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+1824]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 1824], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 1832], rax
  .section .rodata
  .Lrkfn341: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn341]
 lea rsi, [r12 + 1824]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1808], rax
 mov qword ptr [r12 + 1816], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain136_n118_α
 xchain136_n113_β:
 jmp proc_d_ω
xchain136_n114_α:
# IR_VAR_REF local
bb207_α:
 lea rdi, [r12 + 6592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4512], rax
 mov qword ptr [r12 + 4520], rdx
 jmp xchain136_n119_α
 xchain136_n114_β:
 jmp xchain136_n39_α
xchain136_n115_α:
# IR_VAR_REF local
bb208_α:
 lea rdi, [r12 + 6560]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3648], rax
 mov qword ptr [r12 + 3656], rdx
 jmp xchain136_n120_α
 xchain136_n115_β:
 jmp proc_d_ω
xchain136_n116_α:
# IR_LIT_STRING
bb209_α:
 mov qword ptr [r12 + 2752], 1
 mov rax, qword ptr [rip + .Lx346_0]
 mov qword ptr [r12 + 2760], rax
 jmp xchain136_n121_α
 xchain136_n116_β:
 jmp proc_d_ω
.Lx346_0:
 .quad .Lx346_0_s
.Lx346_0_s:
 .string "*"
xchain136_n117_α:
# IR_VAR_REF local
bb210_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2144], rax
 mov qword ptr [r12 + 2152], rdx
 jmp xchain136_n122_α
 xchain136_n117_β:
 jmp xchain136_n113_α
xchain136_n118_α:
# IR_VAR_REF local
bb211_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1712], rax
 mov qword ptr [r12 + 1720], rdx
 jmp xchain136_n123_α
 xchain136_n118_β:
 jmp xchain136_n139_α
xchain136_n119_α:
# IR_VAR_REF local
bb212_α:
 lea rdi, [r12 + 6608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4528], rax
 mov qword ptr [r12 + 4536], rdx
 jmp xchain136_n124_α
 xchain136_n119_β:
 jmp xchain136_n39_α
xchain136_n120_α:
# IR_VAR_REF local
bb213_α:
 lea rdi, [r12 + 6624]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3664], rax
 mov qword ptr [r12 + 3672], rdx
 jmp xchain136_n125_α
 xchain136_n120_β:
 jmp proc_d_ω
xchain136_n121_α:
# IR_VAR_REF local
bb214_α:
 lea rdi, [r12 + 6608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2656], rax
 mov qword ptr [r12 + 2664], rdx
 jmp xchain136_n126_α
 xchain136_n121_β:
 jmp proc_d_ω
xchain136_n122_α:
# IR_VAR_REF local
bb215_α:
 lea rdi, [r12 + 6592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2160], rax
 mov qword ptr [r12 + 2168], rdx
 jmp xchain136_n127_α
 xchain136_n122_β:
 jmp xchain136_n113_α
xchain136_n123_α:
# IR_LIT_STRING
bb216_α:
 mov qword ptr [r12 + 1792], 1
 mov rax, qword ptr [rip + .Lx359_0]
 mov qword ptr [r12 + 1800], rax
 jmp xchain136_n128_α
 xchain136_n123_β:
 jmp proc_d_ω
.Lx359_0:
 .quad .Lx359_0_s
.Lx359_0_s:
 .string "exp"
xchain136_n124_α:
bb217_α:
  .section .rodata
  .Lcall217_pname: .string "d"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4496]
 mov rdx, qword ptr [r12 + 4504]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 4512]
 mov rdx, qword ptr [r12 + 4520]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 4528]
 mov rdx, qword ptr [r12 + 4536]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall217_pname]
 mov esi, 3
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 4432], rax
 mov qword ptr [r12 + 4440], rdx
 cmp eax, 99
 je xchain136_n39_α
 jmp xchain136_n129_α
xchain136_n124_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 4432], rax
 mov qword ptr [r12 + 4440], rdx
 cmp eax, 99
 je xchain136_n39_α
 jmp xchain136_n129_α
xchain136_n125_α:
bb218_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3744] -> [r12+3696]
 mov rax, qword ptr [r12 + 3744]
 mov qword ptr [r12 + 3696], rax
 mov rax, qword ptr [r12 + 3752]
 mov qword ptr [r12 + 3704], rax
# marshal arg1 = producer-box slot [r12+3648] -> [r12+3712]
 mov rax, qword ptr [r12 + 3648]
 mov qword ptr [r12 + 3712], rax
 mov rax, qword ptr [r12 + 3656]
 mov qword ptr [r12 + 3720], rax
# marshal arg2 = producer-box slot [r12+3664] -> [r12+3728]
 mov rax, qword ptr [r12 + 3664]
 mov qword ptr [r12 + 3728], rax
 mov rax, qword ptr [r12 + 3672]
 mov qword ptr [r12 + 3736], rax
  .section .rodata
  .Lrkfn362: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn362]
 lea rsi, [r12 + 3696]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3680], rax
 mov qword ptr [r12 + 3688], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain136_n130_α
 xchain136_n125_β:
 jmp proc_d_ω
xchain136_n126_α:
# IR_VAR_REF local
bb219_α:
 lea rdi, [r12 + 6544]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2672], rax
 mov qword ptr [r12 + 2680], rdx
 jmp xchain136_n131_α
 xchain136_n126_β:
 jmp proc_d_ω
xchain136_n127_α:
bb220_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2144] -> [r12+2112]
 mov rax, qword ptr [r12 + 2144]
 mov qword ptr [r12 + 2112], rax
 mov rax, qword ptr [r12 + 2152]
 mov qword ptr [r12 + 2120], rax
# marshal arg1 = producer-box slot [r12+2160] -> [r12+2128]
 mov rax, qword ptr [r12 + 2160]
 mov qword ptr [r12 + 2128], rax
 mov rax, qword ptr [r12 + 2168]
 mov qword ptr [r12 + 2136], rax
  .section .rodata
  .Lrkfn366: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn366]
 lea rsi, [r12 + 2112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2096], rax
 mov qword ptr [r12 + 2104], rdx
 cmp eax, 99
 je xchain136_n113_α
 jmp xchain136_n132_α
 xchain136_n127_β:
 jmp xchain136_n113_α
xchain136_n128_α:
# IR_VAR_REF local
bb221_α:
 lea rdi, [r12 + 6560]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1728], rax
 mov qword ptr [r12 + 1736], rdx
 jmp xchain136_n133_α
 xchain136_n128_β:
 jmp proc_d_ω
xchain136_n129_α:
# IR_VAR_REF local
bb222_α:
 lea rdi, [r12 + 6544]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4384], rax
 mov qword ptr [r12 + 4392], rdx
 jmp xchain136_n134_α
 xchain136_n129_β:
 jmp xchain136_n39_α
xchain136_n130_α:
bb223_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3824] -> [r12+3776]
 mov rax, qword ptr [r12 + 3824]
 mov qword ptr [r12 + 3776], rax
 mov rax, qword ptr [r12 + 3832]
 mov qword ptr [r12 + 3784], rax
# marshal arg1 = producer-box slot [r12+3568] -> [r12+3792]
 mov rax, qword ptr [r12 + 3568]
 mov qword ptr [r12 + 3792], rax
 mov rax, qword ptr [r12 + 3576]
 mov qword ptr [r12 + 3800], rax
# marshal arg2 = producer-box slot [r12+3680] -> [r12+3808]
 mov rax, qword ptr [r12 + 3680]
 mov qword ptr [r12 + 3808], rax
 mov rax, qword ptr [r12 + 3688]
 mov qword ptr [r12 + 3816], rax
  .section .rodata
  .Lrkfn372: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn372]
 lea rsi, [r12 + 3776]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3760], rax
 mov qword ptr [r12 + 3768], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain136_n135_α
 xchain136_n130_β:
 jmp proc_d_ω
xchain136_n131_α:
bb224_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2752] -> [r12+2704]
 mov rax, qword ptr [r12 + 2752]
 mov qword ptr [r12 + 2704], rax
 mov rax, qword ptr [r12 + 2760]
 mov qword ptr [r12 + 2712], rax
# marshal arg1 = producer-box slot [r12+2656] -> [r12+2720]
 mov rax, qword ptr [r12 + 2656]
 mov qword ptr [r12 + 2720], rax
 mov rax, qword ptr [r12 + 2664]
 mov qword ptr [r12 + 2728], rax
# marshal arg2 = producer-box slot [r12+2672] -> [r12+2736]
 mov rax, qword ptr [r12 + 2672]
 mov qword ptr [r12 + 2736], rax
 mov rax, qword ptr [r12 + 2680]
 mov qword ptr [r12 + 2744], rax
  .section .rodata
  .Lrkfn374: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn374]
 lea rsi, [r12 + 2704]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2688], rax
 mov qword ptr [r12 + 2696], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain136_n136_α
 xchain136_n131_β:
 jmp proc_d_ω
xchain136_n132_α:
# IR_VAR_REF local
bb225_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2000], rax
 mov qword ptr [r12 + 2008], rdx
 jmp xchain136_n137_α
 xchain136_n132_β:
 jmp xchain136_n113_α
xchain136_n133_α:
bb226_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1792] -> [r12+1760]
 mov rax, qword ptr [r12 + 1792]
 mov qword ptr [r12 + 1760], rax
 mov rax, qword ptr [r12 + 1800]
 mov qword ptr [r12 + 1768], rax
# marshal arg1 = producer-box slot [r12+1728] -> [r12+1776]
 mov rax, qword ptr [r12 + 1728]
 mov qword ptr [r12 + 1776], rax
 mov rax, qword ptr [r12 + 1736]
 mov qword ptr [r12 + 1784], rax
  .section .rodata
  .Lrkfn378: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn378]
 lea rsi, [r12 + 1760]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1744], rax
 mov qword ptr [r12 + 1752], rdx
 cmp eax, 99
 je xchain136_n139_α
 jmp xchain136_n138_α
 xchain136_n133_β:
 jmp xchain136_n139_α
xchain136_n134_α:
# IR_VAR_REF local
bb227_α:
 lea rdi, [r12 + 6592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4400], rax
 mov qword ptr [r12 + 4408], rdx
 jmp xchain136_n140_α
 xchain136_n134_β:
 jmp xchain136_n39_α
xchain136_n135_α:
# IR_LIT_STRING
bb228_α:
 mov qword ptr [r12 + 3936], 1
 mov rax, qword ptr [rip + .Lx381_0]
 mov qword ptr [r12 + 3944], rax
 jmp xchain136_n141_α
 xchain136_n135_β:
 jmp proc_d_ω
.Lx381_0:
 .quad .Lx381_0_s
.Lx381_0_s:
 .string "^"
xchain136_n136_α:
# IR_LIT_STRING
bb229_α:
 mov qword ptr [r12 + 2864], 1
 mov rax, qword ptr [rip + .Lx382_0]
 mov qword ptr [r12 + 2872], rax
 jmp xchain136_n142_α
 xchain136_n136_β:
 jmp proc_d_ω
.Lx382_0:
 .quad .Lx382_0_s
.Lx382_0_s:
 .string "^"
xchain136_n137_α:
# IR_LIT_STRING
bb230_α:
 mov qword ptr [r12 + 2080], 1
 mov rax, qword ptr [rip + .Lx383_0]
 mov qword ptr [r12 + 2088], rax
 jmp xchain136_n143_α
 xchain136_n137_β:
 jmp proc_d_ω
.Lx383_0:
 .quad .Lx383_0_s
.Lx383_0_s:
 .string "-"
xchain136_n138_α:
bb231_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1712] -> [r12+1680]
 mov rax, qword ptr [r12 + 1712]
 mov qword ptr [r12 + 1680], rax
 mov rax, qword ptr [r12 + 1720]
 mov qword ptr [r12 + 1688], rax
# marshal arg1 = producer-box slot [r12+1744] -> [r12+1696]
 mov rax, qword ptr [r12 + 1744]
 mov qword ptr [r12 + 1696], rax
 mov rax, qword ptr [r12 + 1752]
 mov qword ptr [r12 + 1704], rax
  .section .rodata
  .Lrkfn385: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn385]
 lea rsi, [r12 + 1680]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1664], rax
 mov qword ptr [r12 + 1672], rdx
 cmp eax, 99
 je xchain136_n139_α
 jmp xchain136_n144_α
 xchain136_n138_β:
 jmp xchain136_n139_α
xchain136_n139_α:
bb232_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+1216]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 1216], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 1224], rax
  .section .rodata
  .Lrkfn387: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn387]
 lea rsi, [r12 + 1216]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1200], rax
 mov qword ptr [r12 + 1208], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain136_n145_α
 xchain136_n139_β:
 jmp proc_d_ω
xchain136_n140_α:
# IR_VAR_REF local
bb233_α:
 lea rdi, [r12 + 6624]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4416], rax
 mov qword ptr [r12 + 4424], rdx
 jmp xchain136_n146_α
 xchain136_n140_β:
 jmp xchain136_n39_α
xchain136_n141_α:
# IR_VAR_REF local
bb234_α:
 lea rdi, [r12 + 6544]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3840], rax
 mov qword ptr [r12 + 3848], rdx
 jmp xchain136_n147_α
 xchain136_n141_β:
 jmp proc_d_ω
xchain136_n142_α:
# IR_VAR_REF local
bb235_α:
 lea rdi, [r12 + 6560]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2768], rax
 mov qword ptr [r12 + 2776], rdx
 jmp xchain136_n148_α
 xchain136_n142_β:
 jmp proc_d_ω
xchain136_n143_α:
# IR_VAR_REF local
bb236_α:
 lea rdi, [r12 + 6544]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2016], rax
 mov qword ptr [r12 + 2024], rdx
 jmp xchain136_n149_α
 xchain136_n143_β:
 jmp proc_d_ω
xchain136_n144_α:
# IR_VAR_REF local
bb237_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1632], rax
 mov qword ptr [r12 + 1640], rdx
 jmp xchain136_n150_α
 xchain136_n144_β:
 jmp xchain136_n139_α
xchain136_n145_α:
# IR_VAR_REF local
bb238_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 jmp xchain136_n151_α
 xchain136_n145_β:
 jmp xchain136_n168_α
xchain136_n146_α:
bb239_α:
  .section .rodata
  .Lcall239_pname: .string "d"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4384]
 mov rdx, qword ptr [r12 + 4392]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 4400]
 mov rdx, qword ptr [r12 + 4408]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 4416]
 mov rdx, qword ptr [r12 + 4424]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall239_pname]
 mov esi, 3
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 4320], rax
 mov qword ptr [r12 + 4328], rdx
 cmp eax, 99
 je xchain136_n124_β
 jmp xchain136_n152_α
xchain136_n146_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 4320], rax
 mov qword ptr [r12 + 4328], rdx
 cmp eax, 99
 je xchain136_n124_β
 jmp xchain136_n152_α
xchain136_n147_α:
# IR_LIT_INTEGER
bb240_α:
 mov qword ptr [r12 + 3856], 6
 mov rax, qword ptr [rip + .Lx401_0]
 mov qword ptr [r12 + 3864], rax
 jmp xchain136_n153_α
 xchain136_n147_β:
 jmp proc_d_ω
.Lx401_0:
 .quad 2
xchain136_n148_α:
# IR_VAR_REF local
bb241_α:
 lea rdi, [r12 + 6624]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2784], rax
 mov qword ptr [r12 + 2792], rdx
 jmp xchain136_n154_α
 xchain136_n148_β:
 jmp proc_d_ω
xchain136_n149_α:
bb242_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2080] -> [r12+2048]
 mov rax, qword ptr [r12 + 2080]
 mov qword ptr [r12 + 2048], rax
 mov rax, qword ptr [r12 + 2088]
 mov qword ptr [r12 + 2056], rax
# marshal arg1 = producer-box slot [r12+2016] -> [r12+2064]
 mov rax, qword ptr [r12 + 2016]
 mov qword ptr [r12 + 2064], rax
 mov rax, qword ptr [r12 + 2024]
 mov qword ptr [r12 + 2072], rax
  .section .rodata
  .Lrkfn405: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn405]
 lea rsi, [r12 + 2048]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2032], rax
 mov qword ptr [r12 + 2040], rdx
 cmp eax, 99
 je xchain136_n113_α
 jmp xchain136_n155_α
 xchain136_n149_β:
 jmp xchain136_n113_α
xchain136_n150_α:
# IR_VAR_REF local
bb243_α:
 lea rdi, [r12 + 6592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1648], rax
 mov qword ptr [r12 + 1656], rdx
 jmp xchain136_n156_α
 xchain136_n150_β:
 jmp xchain136_n139_α
xchain136_n151_α:
# IR_LIT_STRING
bb244_α:
 mov qword ptr [r12 + 1184], 1
 mov rax, qword ptr [rip + .Lx408_0]
 mov qword ptr [r12 + 1192], rax
 jmp xchain136_n157_α
 xchain136_n151_β:
 jmp proc_d_ω
.Lx408_0:
 .quad .Lx408_0_s
.Lx408_0_s:
 .string "log"
xchain136_n152_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb245_α:
 lea rax, [rip + xchain136_n39_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_d_γ
 xchain136_n152_β:
 jmp proc_d_ω
xchain136_n153_α:
bb246_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3936] -> [r12+3888]
 mov rax, qword ptr [r12 + 3936]
 mov qword ptr [r12 + 3888], rax
 mov rax, qword ptr [r12 + 3944]
 mov qword ptr [r12 + 3896], rax
# marshal arg1 = producer-box slot [r12+3840] -> [r12+3904]
 mov rax, qword ptr [r12 + 3840]
 mov qword ptr [r12 + 3904], rax
 mov rax, qword ptr [r12 + 3848]
 mov qword ptr [r12 + 3912], rax
# marshal arg2 = producer-box slot [r12+3856] -> [r12+3920]
 mov rax, qword ptr [r12 + 3856]
 mov qword ptr [r12 + 3920], rax
 mov rax, qword ptr [r12 + 3864]
 mov qword ptr [r12 + 3928], rax
  .section .rodata
  .Lrkfn412: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn412]
 lea rsi, [r12 + 3888]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3872], rax
 mov qword ptr [r12 + 3880], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain136_n158_α
 xchain136_n153_β:
 jmp proc_d_ω
xchain136_n154_α:
bb247_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2864] -> [r12+2816]
 mov rax, qword ptr [r12 + 2864]
 mov qword ptr [r12 + 2816], rax
 mov rax, qword ptr [r12 + 2872]
 mov qword ptr [r12 + 2824], rax
# marshal arg1 = producer-box slot [r12+2768] -> [r12+2832]
 mov rax, qword ptr [r12 + 2768]
 mov qword ptr [r12 + 2832], rax
 mov rax, qword ptr [r12 + 2776]
 mov qword ptr [r12 + 2840], rax
# marshal arg2 = producer-box slot [r12+2784] -> [r12+2848]
 mov rax, qword ptr [r12 + 2784]
 mov qword ptr [r12 + 2848], rax
 mov rax, qword ptr [r12 + 2792]
 mov qword ptr [r12 + 2856], rax
  .section .rodata
  .Lrkfn414: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn414]
 lea rsi, [r12 + 2816]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2800], rax
 mov qword ptr [r12 + 2808], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain136_n159_α
 xchain136_n154_β:
 jmp proc_d_ω
xchain136_n155_α:
bb248_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2000] -> [r12+1968]
 mov rax, qword ptr [r12 + 2000]
 mov qword ptr [r12 + 1968], rax
 mov rax, qword ptr [r12 + 2008]
 mov qword ptr [r12 + 1976], rax
# marshal arg1 = producer-box slot [r12+2032] -> [r12+1984]
 mov rax, qword ptr [r12 + 2032]
 mov qword ptr [r12 + 1984], rax
 mov rax, qword ptr [r12 + 2040]
 mov qword ptr [r12 + 1992], rax
  .section .rodata
  .Lrkfn416: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn416]
 lea rsi, [r12 + 1968]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1952], rax
 mov qword ptr [r12 + 1960], rdx
 cmp eax, 99
 je xchain136_n113_α
 jmp xchain136_n160_α
 xchain136_n155_β:
 jmp xchain136_n113_α
xchain136_n156_α:
bb249_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1632] -> [r12+1600]
 mov rax, qword ptr [r12 + 1632]
 mov qword ptr [r12 + 1600], rax
 mov rax, qword ptr [r12 + 1640]
 mov qword ptr [r12 + 1608], rax
# marshal arg1 = producer-box slot [r12+1648] -> [r12+1616]
 mov rax, qword ptr [r12 + 1648]
 mov qword ptr [r12 + 1616], rax
 mov rax, qword ptr [r12 + 1656]
 mov qword ptr [r12 + 1624], rax
  .section .rodata
  .Lrkfn418: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn418]
 lea rsi, [r12 + 1600]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1584], rax
 mov qword ptr [r12 + 1592], rdx
 cmp eax, 99
 je xchain136_n139_α
 jmp xchain136_n161_α
 xchain136_n156_β:
 jmp xchain136_n139_α
xchain136_n157_α:
# IR_VAR_REF local
bb250_α:
 lea rdi, [r12 + 6560]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1120], rax
 mov qword ptr [r12 + 1128], rdx
 jmp xchain136_n162_α
 xchain136_n157_β:
 jmp proc_d_ω
xchain136_n158_α:
bb251_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4016] -> [r12+3968]
 mov rax, qword ptr [r12 + 4016]
 mov qword ptr [r12 + 3968], rax
 mov rax, qword ptr [r12 + 4024]
 mov qword ptr [r12 + 3976], rax
# marshal arg1 = producer-box slot [r12+3760] -> [r12+3984]
 mov rax, qword ptr [r12 + 3760]
 mov qword ptr [r12 + 3984], rax
 mov rax, qword ptr [r12 + 3768]
 mov qword ptr [r12 + 3992], rax
# marshal arg2 = producer-box slot [r12+3872] -> [r12+4000]
 mov rax, qword ptr [r12 + 3872]
 mov qword ptr [r12 + 4000], rax
 mov rax, qword ptr [r12 + 3880]
 mov qword ptr [r12 + 4008], rax
  .section .rodata
  .Lrkfn422: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn422]
 lea rsi, [r12 + 3968]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3952], rax
 mov qword ptr [r12 + 3960], rdx
 cmp eax, 99
 je xchain136_n64_α
 jmp xchain136_n163_α
 xchain136_n158_β:
 jmp xchain136_n64_α
xchain136_n159_α:
bb252_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2944] -> [r12+2896]
 mov rax, qword ptr [r12 + 2944]
 mov qword ptr [r12 + 2896], rax
 mov rax, qword ptr [r12 + 2952]
 mov qword ptr [r12 + 2904], rax
# marshal arg1 = producer-box slot [r12+2688] -> [r12+2912]
 mov rax, qword ptr [r12 + 2688]
 mov qword ptr [r12 + 2912], rax
 mov rax, qword ptr [r12 + 2696]
 mov qword ptr [r12 + 2920], rax
# marshal arg2 = producer-box slot [r12+2800] -> [r12+2928]
 mov rax, qword ptr [r12 + 2800]
 mov qword ptr [r12 + 2928], rax
 mov rax, qword ptr [r12 + 2808]
 mov qword ptr [r12 + 2936], rax
  .section .rodata
  .Lrkfn424: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn424]
 lea rsi, [r12 + 2896]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2880], rax
 mov qword ptr [r12 + 2888], rdx
 cmp eax, 99
 je xchain136_n91_α
 jmp xchain136_n164_α
 xchain136_n159_β:
 jmp xchain136_n91_α
xchain136_n160_α:
bb253_α:
# IR_CUT
 jmp xchain136_n165_α
 xchain136_n160_β:
 jmp xchain136_n113_α
xchain136_n161_α:
# IR_VAR_REF local
bb254_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1392], rax
 mov qword ptr [r12 + 1400], rdx
 jmp xchain136_n166_α
 xchain136_n161_β:
 jmp xchain136_n139_α
xchain136_n162_α:
bb255_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1184] -> [r12+1152]
 mov rax, qword ptr [r12 + 1184]
 mov qword ptr [r12 + 1152], rax
 mov rax, qword ptr [r12 + 1192]
 mov qword ptr [r12 + 1160], rax
# marshal arg1 = producer-box slot [r12+1120] -> [r12+1168]
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 1168], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 1176], rax
  .section .rodata
  .Lrkfn429: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn429]
 lea rsi, [r12 + 1152]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 cmp eax, 99
 je xchain136_n168_α
 jmp xchain136_n167_α
 xchain136_n162_β:
 jmp xchain136_n168_α
xchain136_n163_α:
bb256_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3520] -> [r12+3488]
 mov rax, qword ptr [r12 + 3520]
 mov qword ptr [r12 + 3488], rax
 mov rax, qword ptr [r12 + 3528]
 mov qword ptr [r12 + 3496], rax
# marshal arg1 = producer-box slot [r12+3952] -> [r12+3504]
 mov rax, qword ptr [r12 + 3952]
 mov qword ptr [r12 + 3504], rax
 mov rax, qword ptr [r12 + 3960]
 mov qword ptr [r12 + 3512], rax
  .section .rodata
  .Lrkfn431: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn431]
 lea rsi, [r12 + 3488]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3472], rax
 mov qword ptr [r12 + 3480], rdx
 cmp eax, 99
 je xchain136_n64_α
 jmp xchain136_n169_α
 xchain136_n163_β:
 jmp xchain136_n64_α
xchain136_n164_α:
bb257_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2640] -> [r12+2608]
 mov rax, qword ptr [r12 + 2640]
 mov qword ptr [r12 + 2608], rax
 mov rax, qword ptr [r12 + 2648]
 mov qword ptr [r12 + 2616], rax
# marshal arg1 = producer-box slot [r12+2880] -> [r12+2624]
 mov rax, qword ptr [r12 + 2880]
 mov qword ptr [r12 + 2624], rax
 mov rax, qword ptr [r12 + 2888]
 mov qword ptr [r12 + 2632], rax
  .section .rodata
  .Lrkfn433: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn433]
 lea rsi, [r12 + 2608]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2592], rax
 mov qword ptr [r12 + 2600], rdx
 cmp eax, 99
 je xchain136_n91_α
 jmp xchain136_n170_α
 xchain136_n164_β:
 jmp xchain136_n91_α
xchain136_n165_α:
# IR_VAR_REF local
bb258_α:
 lea rdi, [r12 + 6560]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1904], rax
 mov qword ptr [r12 + 1912], rdx
 jmp xchain136_n171_α
 xchain136_n165_β:
 jmp xchain136_n113_α
xchain136_n166_α:
# IR_LIT_STRING
bb259_α:
 mov qword ptr [r12 + 1568], 1
 mov rax, qword ptr [rip + .Lx436_0]
 mov qword ptr [r12 + 1576], rax
 jmp xchain136_n172_α
 xchain136_n166_β:
 jmp proc_d_ω
.Lx436_0:
 .quad .Lx436_0_s
.Lx436_0_s:
 .string "*"
xchain136_n167_α:
bb260_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1104] -> [r12+1072]
 mov rax, qword ptr [r12 + 1104]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 1112]
 mov qword ptr [r12 + 1080], rax
# marshal arg1 = producer-box slot [r12+1136] -> [r12+1088]
 mov rax, qword ptr [r12 + 1136]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 1096], rax
  .section .rodata
  .Lrkfn438: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn438]
 lea rsi, [r12 + 1072]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je xchain136_n168_α
 jmp xchain136_n173_α
 xchain136_n167_β:
 jmp xchain136_n168_α
xchain136_n168_α:
bb261_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+672]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 680], rax
  .section .rodata
  .Lrkfn440: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn440]
 lea rsi, [r12 + 672]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain136_n174_α
 xchain136_n168_β:
 jmp proc_d_ω
xchain136_n169_α:
bb262_α:
# IR_CUT
 jmp xchain136_n175_α
 xchain136_n169_β:
 jmp xchain136_n64_α
xchain136_n170_α:
bb263_α:
# IR_CUT
 jmp xchain136_n176_α
 xchain136_n170_β:
 jmp xchain136_n91_α
xchain136_n171_α:
# IR_VAR_REF local
bb264_α:
 lea rdi, [r12 + 6592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1920], rax
 mov qword ptr [r12 + 1928], rdx
 jmp xchain136_n177_α
 xchain136_n171_β:
 jmp xchain136_n113_α
xchain136_n172_α:
# IR_LIT_STRING
bb265_α:
 mov qword ptr [r12 + 1472], 1
 mov rax, qword ptr [rip + .Lx445_0]
 mov qword ptr [r12 + 1480], rax
 jmp xchain136_n178_α
 xchain136_n172_β:
 jmp proc_d_ω
.Lx445_0:
 .quad .Lx445_0_s
.Lx445_0_s:
 .string "exp"
xchain136_n173_α:
# IR_VAR_REF local
bb266_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 jmp xchain136_n179_α
 xchain136_n173_β:
 jmp xchain136_n168_α
xchain136_n174_α:
# IR_VAR_REF local
bb267_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xchain136_n180_α
 xchain136_n174_β:
 jmp xchain136_n193_α
xchain136_n175_α:
# IR_VAR_REF local
bb268_α:
 lea rdi, [r12 + 6560]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3424], rax
 mov qword ptr [r12 + 3432], rdx
 jmp xchain136_n181_α
 xchain136_n175_β:
 jmp xchain136_n64_α
xchain136_n176_α:
