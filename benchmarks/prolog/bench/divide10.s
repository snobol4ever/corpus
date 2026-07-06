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
xchain50_n0_α:
bb36_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn52: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn52]
 lea rsi, [r12 + 112]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain50_n1_α
 xchain50_n0_β:
 jmp proc_d_ω
xchain50_n1_α:
# IR_VAR_REF local
bb37_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6416], rax
 mov qword ptr [r12 + 6424], rdx
 jmp xchain50_n2_α
 xchain50_n1_β:
 jmp xchain50_n7_α
xchain50_n2_α:
# IR_LIT_STRING
bb38_α:
 mov qword ptr [r12 + 6528], 1
 mov rax, qword ptr [rip + .Lx55_0]
 mov qword ptr [r12 + 6536], rax
 jmp xchain50_n3_α
 xchain50_n2_β:
 jmp proc_d_ω
.Lx55_0:
 .quad .Lx55_0_s
.Lx55_0_s:
 .string "+"
xchain50_n3_α:
# IR_VAR_REF local
bb39_α:
 lea rdi, [r12 + 6560]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6432], rax
 mov qword ptr [r12 + 6440], rdx
 jmp xchain50_n4_α
 xchain50_n3_β:
 jmp proc_d_ω
xchain50_n4_α:
# IR_VAR_REF local
bb40_α:
 lea rdi, [r12 + 6544]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6448], rax
 mov qword ptr [r12 + 6456], rdx
 jmp xchain50_n5_α
 xchain50_n4_β:
 jmp proc_d_ω
xchain50_n5_α:
bb41_α:
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
  .Lrkfn61: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn61]
 lea rsi, [r12 + 6480]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6464], rax
 mov qword ptr [r12 + 6472], rdx
 cmp eax, 99
 je xchain50_n7_α
 jmp xchain50_n6_α
 xchain50_n5_β:
 jmp xchain50_n7_α
xchain50_n6_α:
bb42_α:
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
  .Lrkfn63: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn63]
 lea rsi, [r12 + 6384]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6368], rax
 mov qword ptr [r12 + 6376], rdx
 cmp eax, 99
 je xchain50_n7_α
 jmp xchain50_n8_α
 xchain50_n6_β:
 jmp xchain50_n7_α
xchain50_n7_α:
bb43_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+5872]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 5872], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 5880], rax
  .section .rodata
  .Lrkfn65: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn65]
 lea rsi, [r12 + 5872]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5856], rax
 mov qword ptr [r12 + 5864], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain50_n9_α
 xchain50_n7_β:
 jmp proc_d_ω
xchain50_n8_α:
# IR_VAR_REF local
bb44_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6336], rax
 mov qword ptr [r12 + 6344], rdx
 jmp xchain50_n10_α
 xchain50_n8_β:
 jmp xchain50_n7_α
xchain50_n9_α:
# IR_VAR_REF local
bb45_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5728], rax
 mov qword ptr [r12 + 5736], rdx
 jmp xchain50_n11_α
 xchain50_n9_β:
 jmp xchain50_n20_α
xchain50_n10_α:
# IR_VAR_REF local
bb46_α:
 lea rdi, [r12 + 6592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6352], rax
 mov qword ptr [r12 + 6360], rdx
 jmp xchain50_n12_α
 xchain50_n10_β:
 jmp xchain50_n7_α
xchain50_n11_α:
# IR_LIT_STRING
bb47_α:
 mov qword ptr [r12 + 5840], 1
 mov rax, qword ptr [rip + .Lx72_0]
 mov qword ptr [r12 + 5848], rax
 jmp xchain50_n13_α
 xchain50_n11_β:
 jmp proc_d_ω
.Lx72_0:
 .quad .Lx72_0_s
.Lx72_0_s:
 .string "-"
xchain50_n12_α:
bb48_α:
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
  .Lrkfn74: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn74]
 lea rsi, [r12 + 6304]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6288], rax
 mov qword ptr [r12 + 6296], rdx
 cmp eax, 99
 je xchain50_n7_α
 jmp xchain50_n14_α
 xchain50_n12_β:
 jmp xchain50_n7_α
xchain50_n13_α:
# IR_VAR_REF local
bb49_α:
 lea rdi, [r12 + 6560]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5744], rax
 mov qword ptr [r12 + 5752], rdx
 jmp xchain50_n15_α
 xchain50_n13_β:
 jmp proc_d_ω
xchain50_n14_α:
# IR_VAR_REF local
bb50_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6160], rax
 mov qword ptr [r12 + 6168], rdx
 jmp xchain50_n16_α
 xchain50_n14_β:
 jmp xchain50_n7_α
xchain50_n15_α:
# IR_VAR_REF local
bb51_α:
 lea rdi, [r12 + 6544]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5760], rax
 mov qword ptr [r12 + 5768], rdx
 jmp xchain50_n17_α
 xchain50_n15_β:
 jmp proc_d_ω
xchain50_n16_α:
# IR_LIT_STRING
bb52_α:
 mov qword ptr [r12 + 6272], 1
 mov rax, qword ptr [rip + .Lx81_0]
 mov qword ptr [r12 + 6280], rax
 jmp xchain50_n18_α
 xchain50_n16_β:
 jmp proc_d_ω
.Lx81_0:
 .quad .Lx81_0_s
.Lx81_0_s:
 .string "+"
xchain50_n17_α:
bb53_α:
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
  .Lrkfn83: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn83]
 lea rsi, [r12 + 5792]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5776], rax
 mov qword ptr [r12 + 5784], rdx
 cmp eax, 99
 je xchain50_n20_α
 jmp xchain50_n19_α
 xchain50_n17_β:
 jmp xchain50_n20_α
xchain50_n18_α:
# IR_VAR_REF local
bb54_α:
 lea rdi, [r12 + 6608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6176], rax
 mov qword ptr [r12 + 6184], rdx
 jmp xchain50_n21_α
 xchain50_n18_β:
 jmp proc_d_ω
xchain50_n19_α:
bb55_α:
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
  .Lrkfn87: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn87]
 lea rsi, [r12 + 5696]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5680], rax
 mov qword ptr [r12 + 5688], rdx
 cmp eax, 99
 je xchain50_n20_α
 jmp xchain50_n22_α
 xchain50_n19_β:
 jmp xchain50_n20_α
xchain50_n20_α:
bb56_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+5184]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 5184], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 5192], rax
  .section .rodata
  .Lrkfn89: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn89]
 lea rsi, [r12 + 5184]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5168], rax
 mov qword ptr [r12 + 5176], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain50_n23_α
 xchain50_n20_β:
 jmp proc_d_ω
xchain50_n21_α:
# IR_VAR_REF local
bb57_α:
 lea rdi, [r12 + 6624]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6192], rax
 mov qword ptr [r12 + 6200], rdx
 jmp xchain50_n24_α
 xchain50_n21_β:
 jmp proc_d_ω
xchain50_n22_α:
# IR_VAR_REF local
bb58_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5648], rax
 mov qword ptr [r12 + 5656], rdx
 jmp xchain50_n25_α
 xchain50_n22_β:
 jmp xchain50_n20_α
xchain50_n23_α:
# IR_VAR_REF local
bb59_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5040], rax
 mov qword ptr [r12 + 5048], rdx
 jmp xchain50_n26_α
 xchain50_n23_β:
 jmp xchain50_n39_α
xchain50_n24_α:
bb60_α:
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
  .Lrkfn97: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn97]
 lea rsi, [r12 + 6224]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6208], rax
 mov qword ptr [r12 + 6216], rdx
 cmp eax, 99
 je xchain50_n7_α
 jmp xchain50_n27_α
 xchain50_n24_β:
 jmp xchain50_n7_α
xchain50_n25_α:
# IR_VAR_REF local
bb61_α:
 lea rdi, [r12 + 6592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5664], rax
 mov qword ptr [r12 + 5672], rdx
 jmp xchain50_n28_α
 xchain50_n25_β:
 jmp xchain50_n20_α
xchain50_n26_α:
# IR_LIT_STRING
bb62_α:
 mov qword ptr [r12 + 5152], 1
 mov rax, qword ptr [rip + .Lx100_0]
 mov qword ptr [r12 + 5160], rax
 jmp xchain50_n29_α
 xchain50_n26_β:
 jmp proc_d_ω
.Lx100_0:
 .quad .Lx100_0_s
.Lx100_0_s:
 .string "*"
xchain50_n27_α:
bb63_α:
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
  .Lrkfn102: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn102]
 lea rsi, [r12 + 6128]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6112], rax
 mov qword ptr [r12 + 6120], rdx
 cmp eax, 99
 je xchain50_n7_α
 jmp xchain50_n30_α
 xchain50_n27_β:
 jmp xchain50_n7_α
xchain50_n28_α:
bb64_α:
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
  .Lrkfn104: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn104]
 lea rsi, [r12 + 5616]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5600], rax
 mov qword ptr [r12 + 5608], rdx
 cmp eax, 99
 je xchain50_n20_α
 jmp xchain50_n31_α
 xchain50_n28_β:
 jmp xchain50_n20_α
xchain50_n29_α:
# IR_VAR_REF local
bb65_α:
 lea rdi, [r12 + 6560]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5056], rax
 mov qword ptr [r12 + 5064], rdx
 jmp xchain50_n32_α
 xchain50_n29_β:
 jmp proc_d_ω
xchain50_n30_α:
bb66_α:
# IR_CUT
 jmp xchain50_n33_α
 xchain50_n30_β:
 jmp xchain50_n7_α
xchain50_n31_α:
# IR_VAR_REF local
bb67_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5472], rax
 mov qword ptr [r12 + 5480], rdx
 jmp xchain50_n34_α
 xchain50_n31_β:
 jmp xchain50_n20_α
xchain50_n32_α:
# IR_VAR_REF local
bb68_α:
 lea rdi, [r12 + 6544]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5072], rax
 mov qword ptr [r12 + 5080], rdx
 jmp xchain50_n35_α
 xchain50_n32_β:
 jmp proc_d_ω
xchain50_n33_α:
# IR_VAR_REF local
bb69_α:
 lea rdi, [r12 + 6560]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6064], rax
 mov qword ptr [r12 + 6072], rdx
 jmp xchain50_n36_α
 xchain50_n33_β:
 jmp xchain50_n7_α
xchain50_n34_α:
# IR_LIT_STRING
bb70_α:
 mov qword ptr [r12 + 5584], 1
 mov rax, qword ptr [rip + .Lx114_0]
 mov qword ptr [r12 + 5592], rax
 jmp xchain50_n37_α
 xchain50_n34_β:
 jmp proc_d_ω
.Lx114_0:
 .quad .Lx114_0_s
.Lx114_0_s:
 .string "-"
xchain50_n35_α:
bb71_α:
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
  .Lrkfn116: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn116]
 lea rsi, [r12 + 5104]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5088], rax
 mov qword ptr [r12 + 5096], rdx
 cmp eax, 99
 je xchain50_n39_α
 jmp xchain50_n38_α
 xchain50_n35_β:
 jmp xchain50_n39_α
xchain50_n36_α:
# IR_VAR_REF local
bb72_α:
 lea rdi, [r12 + 6592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6080], rax
 mov qword ptr [r12 + 6088], rdx
 jmp xchain50_n40_α
 xchain50_n36_β:
 jmp xchain50_n7_α
xchain50_n37_α:
# IR_VAR_REF local
bb73_α:
 lea rdi, [r12 + 6608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5488], rax
 mov qword ptr [r12 + 5496], rdx
 jmp xchain50_n41_α
 xchain50_n37_β:
 jmp proc_d_ω
xchain50_n38_α:
bb74_α:
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
  .Lrkfn122: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn122]
 lea rsi, [r12 + 5008]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4992], rax
 mov qword ptr [r12 + 5000], rdx
 cmp eax, 99
 je xchain50_n39_α
 jmp xchain50_n42_α
 xchain50_n38_β:
 jmp xchain50_n39_α
xchain50_n39_α:
bb75_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+4304]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 4304], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 4312], rax
  .section .rodata
  .Lrkfn124: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn124]
 lea rsi, [r12 + 4304]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4288], rax
 mov qword ptr [r12 + 4296], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain50_n43_α
 xchain50_n39_β:
 jmp proc_d_ω
xchain50_n40_α:
# IR_VAR_REF local
bb76_α:
 lea rdi, [r12 + 6608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6096], rax
 mov qword ptr [r12 + 6104], rdx
 jmp xchain50_n44_α
 xchain50_n40_β:
 jmp xchain50_n7_α
xchain50_n41_α:
# IR_VAR_REF local
bb77_α:
 lea rdi, [r12 + 6624]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5504], rax
 mov qword ptr [r12 + 5512], rdx
 jmp xchain50_n45_α
 xchain50_n41_β:
 jmp proc_d_ω
xchain50_n42_α:
# IR_VAR_REF local
bb78_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4960], rax
 mov qword ptr [r12 + 4968], rdx
 jmp xchain50_n46_α
 xchain50_n42_β:
 jmp xchain50_n39_α
xchain50_n43_α:
# IR_VAR_REF local
bb79_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4160], rax
 mov qword ptr [r12 + 4168], rdx
 jmp xchain50_n47_α
 xchain50_n43_β:
 jmp xchain50_n64_α
xchain50_n44_α:
bb80_α:
  .section .rodata
  .Lcall80_pname: .string "d"
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
   lea rdi, [rip + .Lcall80_pname]
 mov esi, 3
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 6000], rax
 mov qword ptr [r12 + 6008], rdx
 cmp eax, 99
 je xchain50_n7_α
 jmp xchain50_n48_α
xchain50_n44_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 6000], rax
 mov qword ptr [r12 + 6008], rdx
 cmp eax, 99
 je xchain50_n7_α
 jmp xchain50_n48_α
xchain50_n45_α:
bb81_α:
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
  .Lrkfn135: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn135]
 lea rsi, [r12 + 5536]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5520], rax
 mov qword ptr [r12 + 5528], rdx
 cmp eax, 99
 je xchain50_n20_α
 jmp xchain50_n49_α
 xchain50_n45_β:
 jmp xchain50_n20_α
xchain50_n46_α:
# IR_VAR_REF local
bb82_α:
 lea rdi, [r12 + 6592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4976], rax
 mov qword ptr [r12 + 4984], rdx
 jmp xchain50_n50_α
 xchain50_n46_β:
 jmp xchain50_n39_α
xchain50_n47_α:
# IR_LIT_STRING
bb83_α:
 mov qword ptr [r12 + 4272], 1
 mov rax, qword ptr [rip + .Lx138_0]
 mov qword ptr [r12 + 4280], rax
 jmp xchain50_n51_α
 xchain50_n47_β:
 jmp proc_d_ω
.Lx138_0:
 .quad .Lx138_0_s
.Lx138_0_s:
 .string "/"
xchain50_n48_α:
# IR_VAR_REF local
bb84_α:
 lea rdi, [r12 + 6544]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5952], rax
 mov qword ptr [r12 + 5960], rdx
 jmp xchain50_n52_α
 xchain50_n48_β:
 jmp xchain50_n7_α
xchain50_n49_α:
bb85_α:
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
  .Lrkfn142: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn142]
 lea rsi, [r12 + 5440]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5424], rax
 mov qword ptr [r12 + 5432], rdx
 cmp eax, 99
 je xchain50_n20_α
 jmp xchain50_n53_α
 xchain50_n49_β:
 jmp xchain50_n20_α
xchain50_n50_α:
bb86_α:
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
  .Lrkfn144: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn144]
 lea rsi, [r12 + 4928]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4912], rax
 mov qword ptr [r12 + 4920], rdx
 cmp eax, 99
 je xchain50_n39_α
 jmp xchain50_n54_α
 xchain50_n50_β:
 jmp xchain50_n39_α
xchain50_n51_α:
# IR_VAR_REF local
bb87_α:
 lea rdi, [r12 + 6560]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4176], rax
 mov qword ptr [r12 + 4184], rdx
 jmp xchain50_n55_α
 xchain50_n51_β:
 jmp proc_d_ω
xchain50_n52_α:
# IR_VAR_REF local
bb88_α:
 lea rdi, [r12 + 6592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5968], rax
 mov qword ptr [r12 + 5976], rdx
 jmp xchain50_n56_α
 xchain50_n52_β:
 jmp xchain50_n7_α
xchain50_n53_α:
bb89_α:
# IR_CUT
 jmp xchain50_n57_α
 xchain50_n53_β:
 jmp xchain50_n20_α
xchain50_n54_α:
# IR_VAR_REF local
bb90_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4592], rax
 mov qword ptr [r12 + 4600], rdx
 jmp xchain50_n58_α
 xchain50_n54_β:
 jmp xchain50_n39_α
xchain50_n55_α:
# IR_VAR_REF local
bb91_α:
 lea rdi, [r12 + 6544]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4192], rax
 mov qword ptr [r12 + 4200], rdx
 jmp xchain50_n59_α
 xchain50_n55_β:
 jmp proc_d_ω
xchain50_n56_α:
# IR_VAR_REF local
bb92_α:
 lea rdi, [r12 + 6624]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5984], rax
 mov qword ptr [r12 + 5992], rdx
 jmp xchain50_n60_α
 xchain50_n56_β:
 jmp xchain50_n7_α
xchain50_n57_α:
# IR_VAR_REF local
bb93_α:
 lea rdi, [r12 + 6560]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5376], rax
 mov qword ptr [r12 + 5384], rdx
 jmp xchain50_n61_α
 xchain50_n57_β:
 jmp xchain50_n20_α
xchain50_n58_α:
# IR_LIT_STRING
bb94_α:
 mov qword ptr [r12 + 4896], 1
 mov rax, qword ptr [rip + .Lx158_0]
 mov qword ptr [r12 + 4904], rax
 jmp xchain50_n62_α
 xchain50_n58_β:
 jmp proc_d_ω
.Lx158_0:
 .quad .Lx158_0_s
.Lx158_0_s:
 .string "+"
xchain50_n59_α:
bb95_α:
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
  .Lrkfn160: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn160]
 lea rsi, [r12 + 4224]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4208], rax
 mov qword ptr [r12 + 4216], rdx
 cmp eax, 99
 je xchain50_n64_α
 jmp xchain50_n63_α
 xchain50_n59_β:
 jmp xchain50_n64_α
xchain50_n60_α:
bb96_α:
  .section .rodata
  .Lcall96_pname: .string "d"
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
   lea rdi, [rip + .Lcall96_pname]
 mov esi, 3
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 5888], rax
 mov qword ptr [r12 + 5896], rdx
 cmp eax, 99
 je xchain50_n44_β
 jmp xchain50_n65_α
xchain50_n60_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 5888], rax
 mov qword ptr [r12 + 5896], rdx
 cmp eax, 99
 je xchain50_n44_β
 jmp xchain50_n65_α
xchain50_n61_α:
# IR_VAR_REF local
bb97_α:
 lea rdi, [r12 + 6592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5392], rax
 mov qword ptr [r12 + 5400], rdx
 jmp xchain50_n66_α
 xchain50_n61_β:
 jmp xchain50_n20_α
xchain50_n62_α:
# IR_LIT_STRING
bb98_α:
 mov qword ptr [r12 + 4704], 1
 mov rax, qword ptr [rip + .Lx164_0]
 mov qword ptr [r12 + 4712], rax
 jmp xchain50_n67_α
 xchain50_n62_β:
 jmp proc_d_ω
.Lx164_0:
 .quad .Lx164_0_s
.Lx164_0_s:
 .string "*"
xchain50_n63_α:
bb99_α:
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
  .Lrkfn166: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn166]
 lea rsi, [r12 + 4128]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4112], rax
 mov qword ptr [r12 + 4120], rdx
 cmp eax, 99
 je xchain50_n64_α
 jmp xchain50_n68_α
 xchain50_n63_β:
 jmp xchain50_n64_α
xchain50_n64_α:
bb100_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+3232]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 3232], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 3240], rax
  .section .rodata
  .Lrkfn168: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn168]
 lea rsi, [r12 + 3232]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3216], rax
 mov qword ptr [r12 + 3224], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain50_n69_α
 xchain50_n64_β:
 jmp proc_d_ω
xchain50_n65_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb101_α:
 lea rax, [rip + xchain50_n7_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_d_γ
 xchain50_n65_β:
 jmp proc_d_ω
xchain50_n66_α:
# IR_VAR_REF local
bb102_α:
 lea rdi, [r12 + 6608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5408], rax
 mov qword ptr [r12 + 5416], rdx
 jmp xchain50_n71_α
 xchain50_n66_β:
 jmp xchain50_n20_α
xchain50_n67_α:
# IR_VAR_REF local
bb103_α:
 lea rdi, [r12 + 6608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4608], rax
 mov qword ptr [r12 + 4616], rdx
 jmp xchain50_n72_α
 xchain50_n67_β:
 jmp proc_d_ω
xchain50_n68_α:
# IR_VAR_REF local
bb104_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4080], rax
 mov qword ptr [r12 + 4088], rdx
 jmp xchain50_n73_α
 xchain50_n68_β:
 jmp xchain50_n64_α
xchain50_n69_α:
# IR_VAR_REF local
bb105_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3088], rax
 mov qword ptr [r12 + 3096], rdx
 jmp xchain50_n74_α
 xchain50_n69_β:
 jmp xchain50_n91_α
xchain50_n70_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb106_α:
 jmp qword ptr [r12 + 80]
 xchain50_n70_β:
 jmp proc_d_ω
xchain50_n71_α:
bb107_α:
  .section .rodata
  .Lcall107_pname: .string "d"
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
   lea rdi, [rip + .Lcall107_pname]
 mov esi, 3
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 5312], rax
 mov qword ptr [r12 + 5320], rdx
 cmp eax, 99
 je xchain50_n20_α
 jmp xchain50_n75_α
xchain50_n71_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 5312], rax
 mov qword ptr [r12 + 5320], rdx
 cmp eax, 99
 je xchain50_n20_α
 jmp xchain50_n75_α
xchain50_n72_α:
# IR_VAR_REF local
bb108_α:
 lea rdi, [r12 + 6544]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4624], rax
 mov qword ptr [r12 + 4632], rdx
 jmp xchain50_n76_α
 xchain50_n72_β:
 jmp proc_d_ω
xchain50_n73_α:
# IR_VAR_REF local
bb109_α:
 lea rdi, [r12 + 6592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4096], rax
 mov qword ptr [r12 + 4104], rdx
 jmp xchain50_n77_α
 xchain50_n73_β:
 jmp xchain50_n64_α
xchain50_n74_α:
# IR_LIT_STRING
bb110_α:
 mov qword ptr [r12 + 3200], 1
 mov rax, qword ptr [rip + .Lx186_0]
 mov qword ptr [r12 + 3208], rax
 jmp xchain50_n78_α
 xchain50_n74_β:
 jmp proc_d_ω
.Lx186_0:
 .quad .Lx186_0_s
.Lx186_0_s:
 .string "^"
xchain50_n75_α:
# IR_VAR_REF local
bb111_α:
 lea rdi, [r12 + 6544]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5264], rax
 mov qword ptr [r12 + 5272], rdx
 jmp xchain50_n79_α
 xchain50_n75_β:
 jmp xchain50_n20_α
xchain50_n76_α:
bb112_α:
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
  .Lrkfn190: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn190]
 lea rsi, [r12 + 4656]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4640], rax
 mov qword ptr [r12 + 4648], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain50_n80_α
 xchain50_n76_β:
 jmp proc_d_ω
xchain50_n77_α:
bb113_α:
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
  .Lrkfn192: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn192]
 lea rsi, [r12 + 4048]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4032], rax
 mov qword ptr [r12 + 4040], rdx
 cmp eax, 99
 je xchain50_n64_α
 jmp xchain50_n81_α
 xchain50_n77_β:
 jmp xchain50_n64_α
xchain50_n78_α:
# IR_VAR_REF local
bb114_α:
 lea rdi, [r12 + 6560]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3104], rax
 mov qword ptr [r12 + 3112], rdx
 jmp xchain50_n82_α
 xchain50_n78_β:
 jmp proc_d_ω
xchain50_n79_α:
# IR_VAR_REF local
bb115_α:
 lea rdi, [r12 + 6592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5280], rax
 mov qword ptr [r12 + 5288], rdx
 jmp xchain50_n83_α
 xchain50_n79_β:
 jmp xchain50_n20_α
xchain50_n80_α:
# IR_LIT_STRING
bb116_α:
 mov qword ptr [r12 + 4816], 1
 mov rax, qword ptr [rip + .Lx197_0]
 mov qword ptr [r12 + 4824], rax
 jmp xchain50_n84_α
 xchain50_n80_β:
 jmp proc_d_ω
.Lx197_0:
 .quad .Lx197_0_s
.Lx197_0_s:
 .string "*"
xchain50_n81_α:
# IR_VAR_REF local
bb117_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3520], rax
 mov qword ptr [r12 + 3528], rdx
 jmp xchain50_n85_α
 xchain50_n81_β:
 jmp xchain50_n64_α
xchain50_n82_α:
# IR_VAR_REF local
bb118_α:
 lea rdi, [r12 + 6544]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3120], rax
 mov qword ptr [r12 + 3128], rdx
 jmp xchain50_n86_α
 xchain50_n82_β:
 jmp proc_d_ω
xchain50_n83_α:
# IR_VAR_REF local
bb119_α:
 lea rdi, [r12 + 6624]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5296], rax
 mov qword ptr [r12 + 5304], rdx
 jmp xchain50_n87_α
 xchain50_n83_β:
 jmp xchain50_n20_α
xchain50_n84_α:
# IR_VAR_REF local
bb120_α:
 lea rdi, [r12 + 6560]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4720], rax
 mov qword ptr [r12 + 4728], rdx
 jmp xchain50_n88_α
 xchain50_n84_β:
 jmp proc_d_ω
xchain50_n85_α:
# IR_LIT_STRING
bb121_α:
 mov qword ptr [r12 + 4016], 1
 mov rax, qword ptr [rip + .Lx206_0]
 mov qword ptr [r12 + 4024], rax
 jmp xchain50_n89_α
 xchain50_n85_β:
 jmp proc_d_ω
.Lx206_0:
 .quad .Lx206_0_s
.Lx206_0_s:
 .string "/"
xchain50_n86_α:
bb122_α:
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
  .Lrkfn208: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn208]
 lea rsi, [r12 + 3152]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3136], rax
 mov qword ptr [r12 + 3144], rdx
 cmp eax, 99
 je xchain50_n91_α
 jmp xchain50_n90_α
 xchain50_n86_β:
 jmp xchain50_n91_α
xchain50_n87_α:
bb123_α:
  .section .rodata
  .Lcall123_pname: .string "d"
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
   lea rdi, [rip + .Lcall123_pname]
 mov esi, 3
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 5200], rax
 mov qword ptr [r12 + 5208], rdx
 cmp eax, 99
 je xchain50_n71_β
 jmp xchain50_n92_α
xchain50_n87_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 5200], rax
 mov qword ptr [r12 + 5208], rdx
 cmp eax, 99
 je xchain50_n71_β
 jmp xchain50_n92_α
xchain50_n88_α:
# IR_VAR_REF local
bb124_α:
 lea rdi, [r12 + 6624]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4736], rax
 mov qword ptr [r12 + 4744], rdx
 jmp xchain50_n93_α
 xchain50_n88_β:
 jmp proc_d_ω
xchain50_n89_α:
# IR_LIT_STRING
bb125_α:
 mov qword ptr [r12 + 3824], 1
 mov rax, qword ptr [rip + .Lx212_0]
 mov qword ptr [r12 + 3832], rax
 jmp xchain50_n94_α
 xchain50_n89_β:
 jmp proc_d_ω
.Lx212_0:
 .quad .Lx212_0_s
.Lx212_0_s:
 .string "-"
xchain50_n90_α:
bb126_α:
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
  .Lrkfn214: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn214]
 lea rsi, [r12 + 3056]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3040], rax
 mov qword ptr [r12 + 3048], rdx
 cmp eax, 99
 je xchain50_n91_α
 jmp xchain50_n95_α
 xchain50_n90_β:
 jmp xchain50_n91_α
xchain50_n91_α:
bb127_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+2336]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 2336], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 2344], rax
  .section .rodata
  .Lrkfn216: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn216]
 lea rsi, [r12 + 2336]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2320], rax
 mov qword ptr [r12 + 2328], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain50_n96_α
 xchain50_n91_β:
 jmp proc_d_ω
xchain50_n92_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb128_α:
 lea rax, [rip + xchain50_n20_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_d_γ
 xchain50_n92_β:
 jmp proc_d_ω
xchain50_n93_α:
bb129_α:
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
  .Lrkfn220: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn220]
 lea rsi, [r12 + 4768]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4752], rax
 mov qword ptr [r12 + 4760], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain50_n97_α
 xchain50_n93_β:
 jmp proc_d_ω
xchain50_n94_α:
# IR_LIT_STRING
bb130_α:
 mov qword ptr [r12 + 3632], 1
 mov rax, qword ptr [rip + .Lx221_0]
 mov qword ptr [r12 + 3640], rax
 jmp xchain50_n98_α
 xchain50_n94_β:
 jmp proc_d_ω
.Lx221_0:
 .quad .Lx221_0_s
.Lx221_0_s:
 .string "*"
xchain50_n95_α:
# IR_VAR_REF local
bb131_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3008], rax
 mov qword ptr [r12 + 3016], rdx
 jmp xchain50_n99_α
 xchain50_n95_β:
 jmp xchain50_n91_α
xchain50_n96_α:
# IR_VAR_REF local
bb132_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2224], rax
 mov qword ptr [r12 + 2232], rdx
 jmp xchain50_n100_α
 xchain50_n96_β:
 jmp xchain50_n113_α
xchain50_n97_α:
bb133_α:
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
  .Lrkfn227: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn227]
 lea rsi, [r12 + 4848]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4832], rax
 mov qword ptr [r12 + 4840], rdx
 cmp eax, 99
 je xchain50_n39_α
 jmp xchain50_n101_α
 xchain50_n97_β:
 jmp xchain50_n39_α
xchain50_n98_α:
# IR_VAR_REF local
bb134_α:
 lea rdi, [r12 + 6608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3536], rax
 mov qword ptr [r12 + 3544], rdx
 jmp xchain50_n102_α
 xchain50_n98_β:
 jmp proc_d_ω
xchain50_n99_α:
# IR_VAR_REF local
bb135_α:
 lea rdi, [r12 + 6592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3024], rax
 mov qword ptr [r12 + 3032], rdx
 jmp xchain50_n103_α
 xchain50_n99_β:
 jmp xchain50_n91_α
xchain50_n100_α:
# IR_LIT_STRING
bb136_α:
 mov qword ptr [r12 + 2304], 1
 mov rax, qword ptr [rip + .Lx232_0]
 mov qword ptr [r12 + 2312], rax
 jmp xchain50_n104_α
 xchain50_n100_β:
 jmp proc_d_ω
.Lx232_0:
 .quad .Lx232_0_s
.Lx232_0_s:
 .string "-"
xchain50_n101_α:
bb137_α:
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
  .Lrkfn234: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn234]
 lea rsi, [r12 + 4560]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4544], rax
 mov qword ptr [r12 + 4552], rdx
 cmp eax, 99
 je xchain50_n39_α
 jmp xchain50_n105_α
 xchain50_n101_β:
 jmp xchain50_n39_α
xchain50_n102_α:
# IR_VAR_REF local
bb138_α:
 lea rdi, [r12 + 6544]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3552], rax
 mov qword ptr [r12 + 3560], rdx
 jmp xchain50_n106_α
 xchain50_n102_β:
 jmp proc_d_ω
xchain50_n103_α:
bb139_α:
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
  .Lrkfn238: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn238]
 lea rsi, [r12 + 2976]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2960], rax
 mov qword ptr [r12 + 2968], rdx
 cmp eax, 99
 je xchain50_n91_α
 jmp xchain50_n107_α
 xchain50_n103_β:
 jmp xchain50_n91_α
xchain50_n104_α:
# IR_VAR_REF local
bb140_α:
 lea rdi, [r12 + 6560]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2240], rax
 mov qword ptr [r12 + 2248], rdx
 jmp xchain50_n108_α
 xchain50_n104_β:
 jmp proc_d_ω
xchain50_n105_α:
bb141_α:
# IR_CUT
 jmp xchain50_n109_α
 xchain50_n105_β:
 jmp xchain50_n39_α
xchain50_n106_α:
bb142_α:
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
  .Lrkfn243: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn243]
 lea rsi, [r12 + 3584]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3568], rax
 mov qword ptr [r12 + 3576], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain50_n110_α
 xchain50_n106_β:
 jmp proc_d_ω
xchain50_n107_α:
# IR_VAR_REF local
bb143_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2640], rax
 mov qword ptr [r12 + 2648], rdx
 jmp xchain50_n111_α
 xchain50_n107_β:
 jmp xchain50_n91_α
xchain50_n108_α:
bb144_α:
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
  .Lrkfn247: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn247]
 lea rsi, [r12 + 2272]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2256], rax
 mov qword ptr [r12 + 2264], rdx
 cmp eax, 99
 je xchain50_n113_α
 jmp xchain50_n112_α
 xchain50_n108_β:
 jmp xchain50_n113_α
xchain50_n109_α:
# IR_VAR_REF local
bb145_α:
 lea rdi, [r12 + 6560]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4496], rax
 mov qword ptr [r12 + 4504], rdx
 jmp xchain50_n114_α
 xchain50_n109_β:
 jmp xchain50_n39_α
xchain50_n110_α:
# IR_LIT_STRING
bb146_α:
 mov qword ptr [r12 + 3744], 1
 mov rax, qword ptr [rip + .Lx250_0]
 mov qword ptr [r12 + 3752], rax
 jmp xchain50_n115_α
 xchain50_n110_β:
 jmp proc_d_ω
.Lx250_0:
 .quad .Lx250_0_s
.Lx250_0_s:
 .string "*"
xchain50_n111_α:
# IR_LIT_STRING
bb147_α:
 mov qword ptr [r12 + 2944], 1
 mov rax, qword ptr [rip + .Lx251_0]
 mov qword ptr [r12 + 2952], rax
 jmp xchain50_n116_α
 xchain50_n111_β:
 jmp proc_d_ω
.Lx251_0:
 .quad .Lx251_0_s
.Lx251_0_s:
 .string "*"
xchain50_n112_α:
bb148_α:
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
  .Lrkfn253: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn253]
 lea rsi, [r12 + 2192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2176], rax
 mov qword ptr [r12 + 2184], rdx
 cmp eax, 99
 je xchain50_n113_α
 jmp xchain50_n117_α
 xchain50_n112_β:
 jmp xchain50_n113_α
xchain50_n113_α:
bb149_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+1824]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 1824], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 1832], rax
  .section .rodata
  .Lrkfn255: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn255]
 lea rsi, [r12 + 1824]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1808], rax
 mov qword ptr [r12 + 1816], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain50_n118_α
 xchain50_n113_β:
 jmp proc_d_ω
xchain50_n114_α:
# IR_VAR_REF local
bb150_α:
 lea rdi, [r12 + 6592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4512], rax
 mov qword ptr [r12 + 4520], rdx
 jmp xchain50_n119_α
 xchain50_n114_β:
 jmp xchain50_n39_α
xchain50_n115_α:
# IR_VAR_REF local
bb151_α:
 lea rdi, [r12 + 6560]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3648], rax
 mov qword ptr [r12 + 3656], rdx
 jmp xchain50_n120_α
 xchain50_n115_β:
 jmp proc_d_ω
xchain50_n116_α:
# IR_LIT_STRING
bb152_α:
 mov qword ptr [r12 + 2752], 1
 mov rax, qword ptr [rip + .Lx260_0]
 mov qword ptr [r12 + 2760], rax
 jmp xchain50_n121_α
 xchain50_n116_β:
 jmp proc_d_ω
.Lx260_0:
 .quad .Lx260_0_s
.Lx260_0_s:
 .string "*"
xchain50_n117_α:
# IR_VAR_REF local
bb153_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2144], rax
 mov qword ptr [r12 + 2152], rdx
 jmp xchain50_n122_α
 xchain50_n117_β:
 jmp xchain50_n113_α
xchain50_n118_α:
# IR_VAR_REF local
bb154_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1712], rax
 mov qword ptr [r12 + 1720], rdx
 jmp xchain50_n123_α
 xchain50_n118_β:
 jmp xchain50_n139_α
xchain50_n119_α:
# IR_VAR_REF local
bb155_α:
 lea rdi, [r12 + 6608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4528], rax
 mov qword ptr [r12 + 4536], rdx
 jmp xchain50_n124_α
 xchain50_n119_β:
 jmp xchain50_n39_α
xchain50_n120_α:
# IR_VAR_REF local
bb156_α:
 lea rdi, [r12 + 6624]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3664], rax
 mov qword ptr [r12 + 3672], rdx
 jmp xchain50_n125_α
 xchain50_n120_β:
 jmp proc_d_ω
xchain50_n121_α:
# IR_VAR_REF local
bb157_α:
 lea rdi, [r12 + 6608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2656], rax
 mov qword ptr [r12 + 2664], rdx
 jmp xchain50_n126_α
 xchain50_n121_β:
 jmp proc_d_ω
xchain50_n122_α:
# IR_VAR_REF local
bb158_α:
 lea rdi, [r12 + 6592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2160], rax
 mov qword ptr [r12 + 2168], rdx
 jmp xchain50_n127_α
 xchain50_n122_β:
 jmp xchain50_n113_α
xchain50_n123_α:
# IR_LIT_STRING
bb159_α:
 mov qword ptr [r12 + 1792], 1
 mov rax, qword ptr [rip + .Lx273_0]
 mov qword ptr [r12 + 1800], rax
 jmp xchain50_n128_α
 xchain50_n123_β:
 jmp proc_d_ω
.Lx273_0:
 .quad .Lx273_0_s
.Lx273_0_s:
 .string "exp"
xchain50_n124_α:
bb160_α:
  .section .rodata
  .Lcall160_pname: .string "d"
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
   lea rdi, [rip + .Lcall160_pname]
 mov esi, 3
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 4432], rax
 mov qword ptr [r12 + 4440], rdx
 cmp eax, 99
 je xchain50_n39_α
 jmp xchain50_n129_α
xchain50_n124_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 4432], rax
 mov qword ptr [r12 + 4440], rdx
 cmp eax, 99
 je xchain50_n39_α
 jmp xchain50_n129_α
xchain50_n125_α:
bb161_α:
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
  .Lrkfn276: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn276]
 lea rsi, [r12 + 3696]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3680], rax
 mov qword ptr [r12 + 3688], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain50_n130_α
 xchain50_n125_β:
 jmp proc_d_ω
xchain50_n126_α:
# IR_VAR_REF local
bb162_α:
 lea rdi, [r12 + 6544]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2672], rax
 mov qword ptr [r12 + 2680], rdx
 jmp xchain50_n131_α
 xchain50_n126_β:
 jmp proc_d_ω
xchain50_n127_α:
bb163_α:
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
  .Lrkfn280: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn280]
 lea rsi, [r12 + 2112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2096], rax
 mov qword ptr [r12 + 2104], rdx
 cmp eax, 99
 je xchain50_n113_α
 jmp xchain50_n132_α
 xchain50_n127_β:
 jmp xchain50_n113_α
xchain50_n128_α:
# IR_VAR_REF local
bb164_α:
 lea rdi, [r12 + 6560]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1728], rax
 mov qword ptr [r12 + 1736], rdx
 jmp xchain50_n133_α
 xchain50_n128_β:
 jmp proc_d_ω
xchain50_n129_α:
# IR_VAR_REF local
bb165_α:
 lea rdi, [r12 + 6544]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4384], rax
 mov qword ptr [r12 + 4392], rdx
 jmp xchain50_n134_α
 xchain50_n129_β:
 jmp xchain50_n39_α
xchain50_n130_α:
bb166_α:
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
  .Lrkfn286: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn286]
 lea rsi, [r12 + 3776]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3760], rax
 mov qword ptr [r12 + 3768], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain50_n135_α
 xchain50_n130_β:
 jmp proc_d_ω
xchain50_n131_α:
bb167_α:
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
  .Lrkfn288: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn288]
 lea rsi, [r12 + 2704]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2688], rax
 mov qword ptr [r12 + 2696], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain50_n136_α
 xchain50_n131_β:
 jmp proc_d_ω
xchain50_n132_α:
# IR_VAR_REF local
bb168_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2000], rax
 mov qword ptr [r12 + 2008], rdx
 jmp xchain50_n137_α
 xchain50_n132_β:
 jmp xchain50_n113_α
xchain50_n133_α:
bb169_α:
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
  .Lrkfn292: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn292]
 lea rsi, [r12 + 1760]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1744], rax
 mov qword ptr [r12 + 1752], rdx
 cmp eax, 99
 je xchain50_n139_α
 jmp xchain50_n138_α
 xchain50_n133_β:
 jmp xchain50_n139_α
xchain50_n134_α:
# IR_VAR_REF local
bb170_α:
 lea rdi, [r12 + 6592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4400], rax
 mov qword ptr [r12 + 4408], rdx
 jmp xchain50_n140_α
 xchain50_n134_β:
 jmp xchain50_n39_α
xchain50_n135_α:
# IR_LIT_STRING
bb171_α:
 mov qword ptr [r12 + 3936], 1
 mov rax, qword ptr [rip + .Lx295_0]
 mov qword ptr [r12 + 3944], rax
 jmp xchain50_n141_α
 xchain50_n135_β:
 jmp proc_d_ω
.Lx295_0:
 .quad .Lx295_0_s
.Lx295_0_s:
 .string "^"
xchain50_n136_α:
# IR_LIT_STRING
bb172_α:
 mov qword ptr [r12 + 2864], 1
 mov rax, qword ptr [rip + .Lx296_0]
 mov qword ptr [r12 + 2872], rax
 jmp xchain50_n142_α
 xchain50_n136_β:
 jmp proc_d_ω
.Lx296_0:
 .quad .Lx296_0_s
.Lx296_0_s:
 .string "^"
xchain50_n137_α:
# IR_LIT_STRING
bb173_α:
 mov qword ptr [r12 + 2080], 1
 mov rax, qword ptr [rip + .Lx297_0]
 mov qword ptr [r12 + 2088], rax
 jmp xchain50_n143_α
 xchain50_n137_β:
 jmp proc_d_ω
.Lx297_0:
 .quad .Lx297_0_s
.Lx297_0_s:
 .string "-"
xchain50_n138_α:
bb174_α:
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
  .Lrkfn299: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn299]
 lea rsi, [r12 + 1680]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1664], rax
 mov qword ptr [r12 + 1672], rdx
 cmp eax, 99
 je xchain50_n139_α
 jmp xchain50_n144_α
 xchain50_n138_β:
 jmp xchain50_n139_α
xchain50_n139_α:
bb175_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+1216]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 1216], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 1224], rax
  .section .rodata
  .Lrkfn301: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn301]
 lea rsi, [r12 + 1216]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1200], rax
 mov qword ptr [r12 + 1208], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain50_n145_α
 xchain50_n139_β:
 jmp proc_d_ω
xchain50_n140_α:
# IR_VAR_REF local
bb176_α:
 lea rdi, [r12 + 6624]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4416], rax
 mov qword ptr [r12 + 4424], rdx
 jmp xchain50_n146_α
 xchain50_n140_β:
 jmp xchain50_n39_α
xchain50_n141_α:
# IR_VAR_REF local
bb177_α:
 lea rdi, [r12 + 6544]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3840], rax
 mov qword ptr [r12 + 3848], rdx
 jmp xchain50_n147_α
 xchain50_n141_β:
 jmp proc_d_ω
xchain50_n142_α:
# IR_VAR_REF local
bb178_α:
 lea rdi, [r12 + 6560]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2768], rax
 mov qword ptr [r12 + 2776], rdx
 jmp xchain50_n148_α
 xchain50_n142_β:
 jmp proc_d_ω
xchain50_n143_α:
# IR_VAR_REF local
bb179_α:
 lea rdi, [r12 + 6544]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2016], rax
 mov qword ptr [r12 + 2024], rdx
 jmp xchain50_n149_α
 xchain50_n143_β:
 jmp proc_d_ω
xchain50_n144_α:
# IR_VAR_REF local
bb180_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1632], rax
 mov qword ptr [r12 + 1640], rdx
 jmp xchain50_n150_α
 xchain50_n144_β:
 jmp xchain50_n139_α
xchain50_n145_α:
# IR_VAR_REF local
bb181_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 jmp xchain50_n151_α
 xchain50_n145_β:
 jmp xchain50_n168_α
xchain50_n146_α:
bb182_α:
  .section .rodata
  .Lcall182_pname: .string "d"
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
   lea rdi, [rip + .Lcall182_pname]
 mov esi, 3
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 4320], rax
 mov qword ptr [r12 + 4328], rdx
 cmp eax, 99
 je xchain50_n124_β
 jmp xchain50_n152_α
xchain50_n146_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 4320], rax
 mov qword ptr [r12 + 4328], rdx
 cmp eax, 99
 je xchain50_n124_β
 jmp xchain50_n152_α
xchain50_n147_α:
# IR_LIT_INTEGER
bb183_α:
 mov qword ptr [r12 + 3856], 6
 mov rax, qword ptr [rip + .Lx315_0]
 mov qword ptr [r12 + 3864], rax
 jmp xchain50_n153_α
 xchain50_n147_β:
 jmp proc_d_ω
.Lx315_0:
 .quad 2
xchain50_n148_α:
# IR_VAR_REF local
bb184_α:
 lea rdi, [r12 + 6624]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2784], rax
 mov qword ptr [r12 + 2792], rdx
 jmp xchain50_n154_α
 xchain50_n148_β:
 jmp proc_d_ω
xchain50_n149_α:
bb185_α:
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
  .Lrkfn319: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn319]
 lea rsi, [r12 + 2048]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2032], rax
 mov qword ptr [r12 + 2040], rdx
 cmp eax, 99
 je xchain50_n113_α
 jmp xchain50_n155_α
 xchain50_n149_β:
 jmp xchain50_n113_α
xchain50_n150_α:
# IR_VAR_REF local
bb186_α:
 lea rdi, [r12 + 6592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1648], rax
 mov qword ptr [r12 + 1656], rdx
 jmp xchain50_n156_α
 xchain50_n150_β:
 jmp xchain50_n139_α
xchain50_n151_α:
# IR_LIT_STRING
bb187_α:
 mov qword ptr [r12 + 1184], 1
 mov rax, qword ptr [rip + .Lx322_0]
 mov qword ptr [r12 + 1192], rax
 jmp xchain50_n157_α
 xchain50_n151_β:
 jmp proc_d_ω
.Lx322_0:
 .quad .Lx322_0_s
.Lx322_0_s:
 .string "log"
xchain50_n152_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb188_α:
 lea rax, [rip + xchain50_n39_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_d_γ
 xchain50_n152_β:
 jmp proc_d_ω
xchain50_n153_α:
bb189_α:
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
  .Lrkfn326: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn326]
 lea rsi, [r12 + 3888]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3872], rax
 mov qword ptr [r12 + 3880], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain50_n158_α
 xchain50_n153_β:
 jmp proc_d_ω
xchain50_n154_α:
bb190_α:
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
  .Lrkfn328: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn328]
 lea rsi, [r12 + 2816]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2800], rax
 mov qword ptr [r12 + 2808], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain50_n159_α
 xchain50_n154_β:
 jmp proc_d_ω
xchain50_n155_α:
bb191_α:
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
  .Lrkfn330: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn330]
 lea rsi, [r12 + 1968]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1952], rax
 mov qword ptr [r12 + 1960], rdx
 cmp eax, 99
 je xchain50_n113_α
 jmp xchain50_n160_α
 xchain50_n155_β:
 jmp xchain50_n113_α
xchain50_n156_α:
bb192_α:
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
  .Lrkfn332: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn332]
 lea rsi, [r12 + 1600]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1584], rax
 mov qword ptr [r12 + 1592], rdx
 cmp eax, 99
 je xchain50_n139_α
 jmp xchain50_n161_α
 xchain50_n156_β:
 jmp xchain50_n139_α
xchain50_n157_α:
# IR_VAR_REF local
bb193_α:
 lea rdi, [r12 + 6560]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1120], rax
 mov qword ptr [r12 + 1128], rdx
 jmp xchain50_n162_α
 xchain50_n157_β:
 jmp proc_d_ω
xchain50_n158_α:
bb194_α:
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
  .Lrkfn336: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn336]
 lea rsi, [r12 + 3968]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3952], rax
 mov qword ptr [r12 + 3960], rdx
 cmp eax, 99
 je xchain50_n64_α
 jmp xchain50_n163_α
 xchain50_n158_β:
 jmp xchain50_n64_α
xchain50_n159_α:
bb195_α:
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
  .Lrkfn338: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn338]
 lea rsi, [r12 + 2896]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2880], rax
 mov qword ptr [r12 + 2888], rdx
 cmp eax, 99
 je xchain50_n91_α
 jmp xchain50_n164_α
 xchain50_n159_β:
 jmp xchain50_n91_α
xchain50_n160_α:
bb196_α:
# IR_CUT
 jmp xchain50_n165_α
 xchain50_n160_β:
 jmp xchain50_n113_α
xchain50_n161_α:
# IR_VAR_REF local
bb197_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1392], rax
 mov qword ptr [r12 + 1400], rdx
 jmp xchain50_n166_α
 xchain50_n161_β:
 jmp xchain50_n139_α
xchain50_n162_α:
bb198_α:
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
  .Lrkfn343: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn343]
 lea rsi, [r12 + 1152]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 cmp eax, 99
 je xchain50_n168_α
 jmp xchain50_n167_α
 xchain50_n162_β:
 jmp xchain50_n168_α
xchain50_n163_α:
bb199_α:
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
  .Lrkfn345: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn345]
 lea rsi, [r12 + 3488]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3472], rax
 mov qword ptr [r12 + 3480], rdx
 cmp eax, 99
 je xchain50_n64_α
 jmp xchain50_n169_α
 xchain50_n163_β:
 jmp xchain50_n64_α
xchain50_n164_α:
bb200_α:
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
  .Lrkfn347: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn347]
 lea rsi, [r12 + 2608]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2592], rax
 mov qword ptr [r12 + 2600], rdx
 cmp eax, 99
 je xchain50_n91_α
 jmp xchain50_n170_α
 xchain50_n164_β:
 jmp xchain50_n91_α
xchain50_n165_α:
# IR_VAR_REF local
bb201_α:
 lea rdi, [r12 + 6560]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1904], rax
 mov qword ptr [r12 + 1912], rdx
 jmp xchain50_n171_α
 xchain50_n165_β:
 jmp xchain50_n113_α
xchain50_n166_α:
# IR_LIT_STRING
bb202_α:
 mov qword ptr [r12 + 1568], 1
 mov rax, qword ptr [rip + .Lx350_0]
 mov qword ptr [r12 + 1576], rax
 jmp xchain50_n172_α
 xchain50_n166_β:
 jmp proc_d_ω
.Lx350_0:
 .quad .Lx350_0_s
.Lx350_0_s:
 .string "*"
xchain50_n167_α:
bb203_α:
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
  .Lrkfn352: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn352]
 lea rsi, [r12 + 1072]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je xchain50_n168_α
 jmp xchain50_n173_α
 xchain50_n167_β:
 jmp xchain50_n168_α
xchain50_n168_α:
bb204_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+672]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 680], rax
  .section .rodata
  .Lrkfn354: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn354]
 lea rsi, [r12 + 672]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain50_n174_α
 xchain50_n168_β:
 jmp proc_d_ω
xchain50_n169_α:
bb205_α:
# IR_CUT
 jmp xchain50_n175_α
 xchain50_n169_β:
 jmp xchain50_n64_α
xchain50_n170_α:
bb206_α:
# IR_CUT
 jmp xchain50_n176_α
 xchain50_n170_β:
 jmp xchain50_n91_α
xchain50_n171_α:
# IR_VAR_REF local
bb207_α:
 lea rdi, [r12 + 6592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1920], rax
 mov qword ptr [r12 + 1928], rdx
 jmp xchain50_n177_α
 xchain50_n171_β:
 jmp xchain50_n113_α
xchain50_n172_α:
# IR_LIT_STRING
bb208_α:
 mov qword ptr [r12 + 1472], 1
 mov rax, qword ptr [rip + .Lx359_0]
 mov qword ptr [r12 + 1480], rax
 jmp xchain50_n178_α
 xchain50_n172_β:
 jmp proc_d_ω
.Lx359_0:
 .quad .Lx359_0_s
.Lx359_0_s:
 .string "exp"
xchain50_n173_α:
# IR_VAR_REF local
bb209_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 jmp xchain50_n179_α
 xchain50_n173_β:
 jmp xchain50_n168_α
xchain50_n174_α:
# IR_VAR_REF local
bb210_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xchain50_n180_α
 xchain50_n174_β:
 jmp xchain50_n193_α
xchain50_n175_α:
# IR_VAR_REF local
bb211_α:
 lea rdi, [r12 + 6560]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3424], rax
 mov qword ptr [r12 + 3432], rdx
 jmp xchain50_n181_α
 xchain50_n175_β:
 jmp xchain50_n64_α
xchain50_n176_α:
