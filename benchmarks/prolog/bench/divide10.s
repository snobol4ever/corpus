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
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_divide10_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 1072], rax
 pop rsi
proc_divide10_α_body:
 xchain0_n0_α:
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
# IR_LIT_STRING
 xchain0_n1_α:
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
# IR_LIT_STRING
 xchain0_n2_α:
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
# IR_LIT_STRING
 xchain0_n3_α:
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
# IR_LIT_STRING
 xchain0_n4_α:
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
# IR_LIT_STRING
 xchain0_n5_α:
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
# IR_LIT_STRING
 xchain0_n6_α:
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
# IR_LIT_STRING
 xchain0_n7_α:
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
# IR_LIT_STRING
 xchain0_n8_α:
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
# IR_LIT_STRING
 xchain0_n9_α:
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
# IR_LIT_STRING
 xchain0_n10_α:
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
# IR_LIT_STRING
 xchain0_n11_α:
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
# IR_LIT_STRING
 xchain0_n13_α:
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
# IR_LIT_STRING
 xchain0_n15_α:
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
# IR_LIT_STRING
 xchain0_n17_α:
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
# IR_LIT_STRING
 xchain0_n19_α:
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
# IR_LIT_STRING
 xchain0_n21_α:
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
# IR_LIT_STRING
 xchain0_n23_α:
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
# IR_LIT_STRING
 xchain0_n25_α:
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
# IR_LIT_STRING
 xchain0_n27_α:
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
# IR_LIT_STRING
 xchain0_n29_α:
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
# IR_VAR_REF local
 xchain0_n31_α:
 lea rdi, [r12 + 1088]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 jmp xchain0_n32_α
 xchain0_n31_β:
 jmp xchain0_n30_α
 xchain0_n32_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n33_α:
 lea rax, [rip + xchain0_n32_β]
 mov qword ptr [r12 + 32], rax
 jmp proc_divide10_γ
 xchain0_n33_β:
 jmp proc_divide10_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n34_α:
 jmp qword ptr [r12 + 32]
 xchain0_n34_β:
 jmp proc_divide10_ω
proc_divide10_β:
jmp xchain0_n34_α
proc_divide10_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 1072]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_divide10_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, rbp
pop rbp
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
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_d_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 6576], rax
 pop rsi
proc_d_α_body:
 xchain50_n0_α:
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
# IR_VAR_REF local
 xchain50_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6448], rax
 mov qword ptr [r12 + 6456], rdx
 jmp xchain50_n2_α
 xchain50_n1_β:
 jmp xchain50_n7_α
# IR_LIT_STRING
 xchain50_n2_α:
 mov qword ptr [r12 + 6560], 1
 mov rax, qword ptr [rip + .Lx55_0]
 mov qword ptr [r12 + 6568], rax
 jmp xchain50_n3_α
 xchain50_n2_β:
 jmp proc_d_ω
.Lx55_0:
 .quad .Lx55_0_s
.Lx55_0_s:
 .string "+"
# IR_VAR_REF local
 xchain50_n3_α:
 lea rdi, [r12 + 6608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6464], rax
 mov qword ptr [r12 + 6472], rdx
 jmp xchain50_n4_α
 xchain50_n3_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain50_n4_α:
 lea rdi, [r12 + 6592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6480], rax
 mov qword ptr [r12 + 6488], rdx
 jmp xchain50_n5_α
 xchain50_n4_β:
 jmp proc_d_ω
 xchain50_n5_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+6560] -> [r12+6512]
 mov rax, qword ptr [r12 + 6560]
 mov qword ptr [r12 + 6512], rax
 mov rax, qword ptr [r12 + 6568]
 mov qword ptr [r12 + 6520], rax
# marshal arg1 = producer-box slot [r12+6464] -> [r12+6528]
 mov rax, qword ptr [r12 + 6464]
 mov qword ptr [r12 + 6528], rax
 mov rax, qword ptr [r12 + 6472]
 mov qword ptr [r12 + 6536], rax
# marshal arg2 = producer-box slot [r12+6480] -> [r12+6544]
 mov rax, qword ptr [r12 + 6480]
 mov qword ptr [r12 + 6544], rax
 mov rax, qword ptr [r12 + 6488]
 mov qword ptr [r12 + 6552], rax
  .section .rodata
  .Lrkfn61: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn61]
 lea rsi, [r12 + 6512]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6496], rax
 mov qword ptr [r12 + 6504], rdx
 cmp eax, 99
 je xchain50_n7_α
 jmp xchain50_n6_α
 xchain50_n5_β:
 jmp xchain50_n7_α
 xchain50_n6_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+6448] -> [r12+6416]
 mov rax, qword ptr [r12 + 6448]
 mov qword ptr [r12 + 6416], rax
 mov rax, qword ptr [r12 + 6456]
 mov qword ptr [r12 + 6424], rax
# marshal arg1 = producer-box slot [r12+6496] -> [r12+6432]
 mov rax, qword ptr [r12 + 6496]
 mov qword ptr [r12 + 6432], rax
 mov rax, qword ptr [r12 + 6504]
 mov qword ptr [r12 + 6440], rax
  .section .rodata
  .Lrkfn63: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn63]
 lea rsi, [r12 + 6416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6400], rax
 mov qword ptr [r12 + 6408], rdx
 cmp eax, 99
 je xchain50_n7_α
 jmp xchain50_n8_α
 xchain50_n6_β:
 jmp xchain50_n7_α
 xchain50_n7_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+5904]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 5904], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 5912], rax
  .section .rodata
  .Lrkfn65: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn65]
 lea rsi, [r12 + 5904]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5888], rax
 mov qword ptr [r12 + 5896], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain50_n9_α
 xchain50_n7_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain50_n8_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6368], rax
 mov qword ptr [r12 + 6376], rdx
 jmp xchain50_n10_α
 xchain50_n8_β:
 jmp xchain50_n7_α
# IR_VAR_REF local
 xchain50_n9_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5760], rax
 mov qword ptr [r12 + 5768], rdx
 jmp xchain50_n11_α
 xchain50_n9_β:
 jmp xchain50_n20_α
# IR_VAR_REF local
 xchain50_n10_α:
 lea rdi, [r12 + 6640]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6384], rax
 mov qword ptr [r12 + 6392], rdx
 jmp xchain50_n12_α
 xchain50_n10_β:
 jmp xchain50_n7_α
# IR_LIT_STRING
 xchain50_n11_α:
 mov qword ptr [r12 + 5872], 1
 mov rax, qword ptr [rip + .Lx72_0]
 mov qword ptr [r12 + 5880], rax
 jmp xchain50_n13_α
 xchain50_n11_β:
 jmp proc_d_ω
.Lx72_0:
 .quad .Lx72_0_s
.Lx72_0_s:
 .string "-"
 xchain50_n12_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+6368] -> [r12+6336]
 mov rax, qword ptr [r12 + 6368]
 mov qword ptr [r12 + 6336], rax
 mov rax, qword ptr [r12 + 6376]
 mov qword ptr [r12 + 6344], rax
# marshal arg1 = producer-box slot [r12+6384] -> [r12+6352]
 mov rax, qword ptr [r12 + 6384]
 mov qword ptr [r12 + 6352], rax
 mov rax, qword ptr [r12 + 6392]
 mov qword ptr [r12 + 6360], rax
  .section .rodata
  .Lrkfn74: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn74]
 lea rsi, [r12 + 6336]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6320], rax
 mov qword ptr [r12 + 6328], rdx
 cmp eax, 99
 je xchain50_n7_α
 jmp xchain50_n14_α
 xchain50_n12_β:
 jmp xchain50_n7_α
# IR_VAR_REF local
 xchain50_n13_α:
 lea rdi, [r12 + 6608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5776], rax
 mov qword ptr [r12 + 5784], rdx
 jmp xchain50_n15_α
 xchain50_n13_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain50_n14_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6192], rax
 mov qword ptr [r12 + 6200], rdx
 jmp xchain50_n16_α
 xchain50_n14_β:
 jmp xchain50_n7_α
# IR_VAR_REF local
 xchain50_n15_α:
 lea rdi, [r12 + 6592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5792], rax
 mov qword ptr [r12 + 5800], rdx
 jmp xchain50_n17_α
 xchain50_n15_β:
 jmp proc_d_ω
# IR_LIT_STRING
 xchain50_n16_α:
 mov qword ptr [r12 + 6304], 1
 mov rax, qword ptr [rip + .Lx81_0]
 mov qword ptr [r12 + 6312], rax
 jmp xchain50_n18_α
 xchain50_n16_β:
 jmp proc_d_ω
.Lx81_0:
 .quad .Lx81_0_s
.Lx81_0_s:
 .string "+"
 xchain50_n17_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+5872] -> [r12+5824]
 mov rax, qword ptr [r12 + 5872]
 mov qword ptr [r12 + 5824], rax
 mov rax, qword ptr [r12 + 5880]
 mov qword ptr [r12 + 5832], rax
# marshal arg1 = producer-box slot [r12+5776] -> [r12+5840]
 mov rax, qword ptr [r12 + 5776]
 mov qword ptr [r12 + 5840], rax
 mov rax, qword ptr [r12 + 5784]
 mov qword ptr [r12 + 5848], rax
# marshal arg2 = producer-box slot [r12+5792] -> [r12+5856]
 mov rax, qword ptr [r12 + 5792]
 mov qword ptr [r12 + 5856], rax
 mov rax, qword ptr [r12 + 5800]
 mov qword ptr [r12 + 5864], rax
  .section .rodata
  .Lrkfn83: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn83]
 lea rsi, [r12 + 5824]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5808], rax
 mov qword ptr [r12 + 5816], rdx
 cmp eax, 99
 je xchain50_n20_α
 jmp xchain50_n19_α
 xchain50_n17_β:
 jmp xchain50_n20_α
# IR_VAR_REF local
 xchain50_n18_α:
 lea rdi, [r12 + 6656]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6208], rax
 mov qword ptr [r12 + 6216], rdx
 jmp xchain50_n21_α
 xchain50_n18_β:
 jmp proc_d_ω
 xchain50_n19_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+5760] -> [r12+5728]
 mov rax, qword ptr [r12 + 5760]
 mov qword ptr [r12 + 5728], rax
 mov rax, qword ptr [r12 + 5768]
 mov qword ptr [r12 + 5736], rax
# marshal arg1 = producer-box slot [r12+5808] -> [r12+5744]
 mov rax, qword ptr [r12 + 5808]
 mov qword ptr [r12 + 5744], rax
 mov rax, qword ptr [r12 + 5816]
 mov qword ptr [r12 + 5752], rax
  .section .rodata
  .Lrkfn87: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn87]
 lea rsi, [r12 + 5728]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5712], rax
 mov qword ptr [r12 + 5720], rdx
 cmp eax, 99
 je xchain50_n20_α
 jmp xchain50_n22_α
 xchain50_n19_β:
 jmp xchain50_n20_α
 xchain50_n20_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+5216]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 5216], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 5224], rax
  .section .rodata
  .Lrkfn89: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn89]
 lea rsi, [r12 + 5216]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5200], rax
 mov qword ptr [r12 + 5208], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain50_n23_α
 xchain50_n20_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain50_n21_α:
 lea rdi, [r12 + 6672]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6224], rax
 mov qword ptr [r12 + 6232], rdx
 jmp xchain50_n24_α
 xchain50_n21_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain50_n22_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5680], rax
 mov qword ptr [r12 + 5688], rdx
 jmp xchain50_n25_α
 xchain50_n22_β:
 jmp xchain50_n20_α
# IR_VAR_REF local
 xchain50_n23_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5072], rax
 mov qword ptr [r12 + 5080], rdx
 jmp xchain50_n26_α
 xchain50_n23_β:
 jmp xchain50_n39_α
 xchain50_n24_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+6304] -> [r12+6256]
 mov rax, qword ptr [r12 + 6304]
 mov qword ptr [r12 + 6256], rax
 mov rax, qword ptr [r12 + 6312]
 mov qword ptr [r12 + 6264], rax
# marshal arg1 = producer-box slot [r12+6208] -> [r12+6272]
 mov rax, qword ptr [r12 + 6208]
 mov qword ptr [r12 + 6272], rax
 mov rax, qword ptr [r12 + 6216]
 mov qword ptr [r12 + 6280], rax
# marshal arg2 = producer-box slot [r12+6224] -> [r12+6288]
 mov rax, qword ptr [r12 + 6224]
 mov qword ptr [r12 + 6288], rax
 mov rax, qword ptr [r12 + 6232]
 mov qword ptr [r12 + 6296], rax
  .section .rodata
  .Lrkfn97: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn97]
 lea rsi, [r12 + 6256]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6240], rax
 mov qword ptr [r12 + 6248], rdx
 cmp eax, 99
 je xchain50_n7_α
 jmp xchain50_n27_α
 xchain50_n24_β:
 jmp xchain50_n7_α
# IR_VAR_REF local
 xchain50_n25_α:
 lea rdi, [r12 + 6640]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5696], rax
 mov qword ptr [r12 + 5704], rdx
 jmp xchain50_n28_α
 xchain50_n25_β:
 jmp xchain50_n20_α
# IR_LIT_STRING
 xchain50_n26_α:
 mov qword ptr [r12 + 5184], 1
 mov rax, qword ptr [rip + .Lx100_0]
 mov qword ptr [r12 + 5192], rax
 jmp xchain50_n29_α
 xchain50_n26_β:
 jmp proc_d_ω
.Lx100_0:
 .quad .Lx100_0_s
.Lx100_0_s:
 .string "*"
 xchain50_n27_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+6192] -> [r12+6160]
 mov rax, qword ptr [r12 + 6192]
 mov qword ptr [r12 + 6160], rax
 mov rax, qword ptr [r12 + 6200]
 mov qword ptr [r12 + 6168], rax
# marshal arg1 = producer-box slot [r12+6240] -> [r12+6176]
 mov rax, qword ptr [r12 + 6240]
 mov qword ptr [r12 + 6176], rax
 mov rax, qword ptr [r12 + 6248]
 mov qword ptr [r12 + 6184], rax
  .section .rodata
  .Lrkfn102: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn102]
 lea rsi, [r12 + 6160]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6144], rax
 mov qword ptr [r12 + 6152], rdx
 cmp eax, 99
 je xchain50_n7_α
 jmp xchain50_n30_α
 xchain50_n27_β:
 jmp xchain50_n7_α
 xchain50_n28_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+5680] -> [r12+5648]
 mov rax, qword ptr [r12 + 5680]
 mov qword ptr [r12 + 5648], rax
 mov rax, qword ptr [r12 + 5688]
 mov qword ptr [r12 + 5656], rax
# marshal arg1 = producer-box slot [r12+5696] -> [r12+5664]
 mov rax, qword ptr [r12 + 5696]
 mov qword ptr [r12 + 5664], rax
 mov rax, qword ptr [r12 + 5704]
 mov qword ptr [r12 + 5672], rax
  .section .rodata
  .Lrkfn104: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn104]
 lea rsi, [r12 + 5648]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5632], rax
 mov qword ptr [r12 + 5640], rdx
 cmp eax, 99
 je xchain50_n20_α
 jmp xchain50_n31_α
 xchain50_n28_β:
 jmp xchain50_n20_α
# IR_VAR_REF local
 xchain50_n29_α:
 lea rdi, [r12 + 6608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5088], rax
 mov qword ptr [r12 + 5096], rdx
 jmp xchain50_n32_α
 xchain50_n29_β:
 jmp proc_d_ω
 xchain50_n30_α:
# IR_CUT
 jmp xchain50_n33_α
 xchain50_n30_β:
 jmp xchain50_n7_α
# IR_VAR_REF local
 xchain50_n31_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5504], rax
 mov qword ptr [r12 + 5512], rdx
 jmp xchain50_n34_α
 xchain50_n31_β:
 jmp xchain50_n20_α
# IR_VAR_REF local
 xchain50_n32_α:
 lea rdi, [r12 + 6592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5104], rax
 mov qword ptr [r12 + 5112], rdx
 jmp xchain50_n35_α
 xchain50_n32_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain50_n33_α:
 lea rdi, [r12 + 6608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6096], rax
 mov qword ptr [r12 + 6104], rdx
 jmp xchain50_n36_α
 xchain50_n33_β:
 jmp xchain50_n49_α
# IR_LIT_STRING
 xchain50_n34_α:
 mov qword ptr [r12 + 5616], 1
 mov rax, qword ptr [rip + .Lx114_0]
 mov qword ptr [r12 + 5624], rax
 jmp xchain50_n37_α
 xchain50_n34_β:
 jmp proc_d_ω
.Lx114_0:
 .quad .Lx114_0_s
.Lx114_0_s:
 .string "-"
 xchain50_n35_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+5184] -> [r12+5136]
 mov rax, qword ptr [r12 + 5184]
 mov qword ptr [r12 + 5136], rax
 mov rax, qword ptr [r12 + 5192]
 mov qword ptr [r12 + 5144], rax
# marshal arg1 = producer-box slot [r12+5088] -> [r12+5152]
 mov rax, qword ptr [r12 + 5088]
 mov qword ptr [r12 + 5152], rax
 mov rax, qword ptr [r12 + 5096]
 mov qword ptr [r12 + 5160], rax
# marshal arg2 = producer-box slot [r12+5104] -> [r12+5168]
 mov rax, qword ptr [r12 + 5104]
 mov qword ptr [r12 + 5168], rax
 mov rax, qword ptr [r12 + 5112]
 mov qword ptr [r12 + 5176], rax
  .section .rodata
  .Lrkfn116: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn116]
 lea rsi, [r12 + 5136]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5120], rax
 mov qword ptr [r12 + 5128], rdx
 cmp eax, 99
 je xchain50_n39_α
 jmp xchain50_n38_α
 xchain50_n35_β:
 jmp xchain50_n39_α
# IR_VAR_REF local
 xchain50_n36_α:
 lea rdi, [r12 + 6640]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6112], rax
 mov qword ptr [r12 + 6120], rdx
 jmp xchain50_n40_α
 xchain50_n36_β:
 jmp xchain50_n49_α
# IR_VAR_REF local
 xchain50_n37_α:
 lea rdi, [r12 + 6656]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5520], rax
 mov qword ptr [r12 + 5528], rdx
 jmp xchain50_n41_α
 xchain50_n37_β:
 jmp proc_d_ω
 xchain50_n38_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+5072] -> [r12+5040]
 mov rax, qword ptr [r12 + 5072]
 mov qword ptr [r12 + 5040], rax
 mov rax, qword ptr [r12 + 5080]
 mov qword ptr [r12 + 5048], rax
# marshal arg1 = producer-box slot [r12+5120] -> [r12+5056]
 mov rax, qword ptr [r12 + 5120]
 mov qword ptr [r12 + 5056], rax
 mov rax, qword ptr [r12 + 5128]
 mov qword ptr [r12 + 5064], rax
  .section .rodata
  .Lrkfn122: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn122]
 lea rsi, [r12 + 5040]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5024], rax
 mov qword ptr [r12 + 5032], rdx
 cmp eax, 99
 je xchain50_n39_α
 jmp xchain50_n42_α
 xchain50_n38_β:
 jmp xchain50_n39_α
 xchain50_n39_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+4336]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 4336], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 4344], rax
  .section .rodata
  .Lrkfn124: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn124]
 lea rsi, [r12 + 4336]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4320], rax
 mov qword ptr [r12 + 4328], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain50_n43_α
 xchain50_n39_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain50_n40_α:
 lea rdi, [r12 + 6656]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6128], rax
 mov qword ptr [r12 + 6136], rdx
 jmp xchain50_n44_α
 xchain50_n40_β:
 jmp xchain50_n49_α
# IR_VAR_REF local
 xchain50_n41_α:
 lea rdi, [r12 + 6672]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5536], rax
 mov qword ptr [r12 + 5544], rdx
 jmp xchain50_n45_α
 xchain50_n41_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain50_n42_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4992], rax
 mov qword ptr [r12 + 5000], rdx
 jmp xchain50_n46_α
 xchain50_n42_β:
 jmp xchain50_n39_α
# IR_VAR_REF local
 xchain50_n43_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4192], rax
 mov qword ptr [r12 + 4200], rdx
 jmp xchain50_n47_α
 xchain50_n43_β:
 jmp xchain50_n65_α
 xchain50_n44_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
 xchain50_n45_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+5616] -> [r12+5568]
 mov rax, qword ptr [r12 + 5616]
 mov qword ptr [r12 + 5568], rax
 mov rax, qword ptr [r12 + 5624]
 mov qword ptr [r12 + 5576], rax
# marshal arg1 = producer-box slot [r12+5520] -> [r12+5584]
 mov rax, qword ptr [r12 + 5520]
 mov qword ptr [r12 + 5584], rax
 mov rax, qword ptr [r12 + 5528]
 mov qword ptr [r12 + 5592], rax
# marshal arg2 = producer-box slot [r12+5536] -> [r12+5600]
 mov rax, qword ptr [r12 + 5536]
 mov qword ptr [r12 + 5600], rax
 mov rax, qword ptr [r12 + 5544]
 mov qword ptr [r12 + 5608], rax
  .section .rodata
  .Lrkfn135: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn135]
 lea rsi, [r12 + 5568]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5552], rax
 mov qword ptr [r12 + 5560], rdx
 cmp eax, 99
 je xchain50_n20_α
 jmp xchain50_n50_α
 xchain50_n45_β:
 jmp xchain50_n20_α
# IR_VAR_REF local
 xchain50_n46_α:
 lea rdi, [r12 + 6640]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5008], rax
 mov qword ptr [r12 + 5016], rdx
 jmp xchain50_n51_α
 xchain50_n46_β:
 jmp xchain50_n39_α
# IR_LIT_STRING
 xchain50_n47_α:
 mov qword ptr [r12 + 4304], 1
 mov rax, qword ptr [rip + .Lx138_0]
 mov qword ptr [r12 + 4312], rax
 jmp xchain50_n52_α
 xchain50_n47_β:
 jmp proc_d_ω
.Lx138_0:
 .quad .Lx138_0_s
.Lx138_0_s:
 .string "/"
# IR_VAR_REF local
 xchain50_n48_α:
 lea rdi, [r12 + 6592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5984], rax
 mov qword ptr [r12 + 5992], rdx
 jmp xchain50_n53_α
 xchain50_n48_β:
 jmp xchain50_n49_α
 xchain50_n49_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+128]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn142: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn142]
 lea rsi, [r12 + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je proc_d_ω
 jmp proc_d_ω
 xchain50_n49_β:
 jmp proc_d_ω
 xchain50_n50_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+5504] -> [r12+5472]
 mov rax, qword ptr [r12 + 5504]
 mov qword ptr [r12 + 5472], rax
 mov rax, qword ptr [r12 + 5512]
 mov qword ptr [r12 + 5480], rax
# marshal arg1 = producer-box slot [r12+5552] -> [r12+5488]
 mov rax, qword ptr [r12 + 5552]
 mov qword ptr [r12 + 5488], rax
 mov rax, qword ptr [r12 + 5560]
 mov qword ptr [r12 + 5496], rax
  .section .rodata
  .Lrkfn144: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn144]
 lea rsi, [r12 + 5472]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5456], rax
 mov qword ptr [r12 + 5464], rdx
 cmp eax, 99
 je xchain50_n20_α
 jmp xchain50_n54_α
 xchain50_n50_β:
 jmp xchain50_n20_α
 xchain50_n51_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4992] -> [r12+4960]
 mov rax, qword ptr [r12 + 4992]
 mov qword ptr [r12 + 4960], rax
 mov rax, qword ptr [r12 + 5000]
 mov qword ptr [r12 + 4968], rax
# marshal arg1 = producer-box slot [r12+5008] -> [r12+4976]
 mov rax, qword ptr [r12 + 5008]
 mov qword ptr [r12 + 4976], rax
 mov rax, qword ptr [r12 + 5016]
 mov qword ptr [r12 + 4984], rax
  .section .rodata
  .Lrkfn146: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn146]
 lea rsi, [r12 + 4960]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4944], rax
 mov qword ptr [r12 + 4952], rdx
 cmp eax, 99
 je xchain50_n39_α
 jmp xchain50_n55_α
 xchain50_n51_β:
 jmp xchain50_n39_α
# IR_VAR_REF local
 xchain50_n52_α:
 lea rdi, [r12 + 6608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4208], rax
 mov qword ptr [r12 + 4216], rdx
 jmp xchain50_n56_α
 xchain50_n52_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain50_n53_α:
 lea rdi, [r12 + 6640]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6000], rax
 mov qword ptr [r12 + 6008], rdx
 jmp xchain50_n57_α
 xchain50_n53_β:
 jmp xchain50_n49_α
 xchain50_n54_α:
# IR_CUT
 jmp xchain50_n58_α
 xchain50_n54_β:
 jmp xchain50_n20_α
# IR_VAR_REF local
 xchain50_n55_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4624], rax
 mov qword ptr [r12 + 4632], rdx
 jmp xchain50_n59_α
 xchain50_n55_β:
 jmp xchain50_n39_α
# IR_VAR_REF local
 xchain50_n56_α:
 lea rdi, [r12 + 6592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4224], rax
 mov qword ptr [r12 + 4232], rdx
 jmp xchain50_n60_α
 xchain50_n56_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain50_n57_α:
 lea rdi, [r12 + 6672]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6016], rax
 mov qword ptr [r12 + 6024], rdx
 jmp xchain50_n61_α
 xchain50_n57_β:
 jmp xchain50_n49_α
# IR_VAR_REF local
 xchain50_n58_α:
 lea rdi, [r12 + 6608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5408], rax
 mov qword ptr [r12 + 5416], rdx
 jmp xchain50_n62_α
 xchain50_n58_β:
 jmp xchain50_n49_α
# IR_LIT_STRING
 xchain50_n59_α:
 mov qword ptr [r12 + 4928], 1
 mov rax, qword ptr [rip + .Lx160_0]
 mov qword ptr [r12 + 4936], rax
 jmp xchain50_n63_α
 xchain50_n59_β:
 jmp proc_d_ω
.Lx160_0:
 .quad .Lx160_0_s
.Lx160_0_s:
 .string "+"
 xchain50_n60_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4304] -> [r12+4256]
 mov rax, qword ptr [r12 + 4304]
 mov qword ptr [r12 + 4256], rax
 mov rax, qword ptr [r12 + 4312]
 mov qword ptr [r12 + 4264], rax
# marshal arg1 = producer-box slot [r12+4208] -> [r12+4272]
 mov rax, qword ptr [r12 + 4208]
 mov qword ptr [r12 + 4272], rax
 mov rax, qword ptr [r12 + 4216]
 mov qword ptr [r12 + 4280], rax
# marshal arg2 = producer-box slot [r12+4224] -> [r12+4288]
 mov rax, qword ptr [r12 + 4224]
 mov qword ptr [r12 + 4288], rax
 mov rax, qword ptr [r12 + 4232]
 mov qword ptr [r12 + 4296], rax
  .section .rodata
  .Lrkfn162: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn162]
 lea rsi, [r12 + 4256]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4240], rax
 mov qword ptr [r12 + 4248], rdx
 cmp eax, 99
 je xchain50_n65_α
 jmp xchain50_n64_α
 xchain50_n60_β:
 jmp xchain50_n65_α
 xchain50_n61_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
# IR_VAR_REF local
 xchain50_n62_α:
 lea rdi, [r12 + 6640]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5424], rax
 mov qword ptr [r12 + 5432], rdx
 jmp xchain50_n67_α
 xchain50_n62_β:
 jmp xchain50_n49_α
# IR_LIT_STRING
 xchain50_n63_α:
 mov qword ptr [r12 + 4736], 1
 mov rax, qword ptr [rip + .Lx166_0]
 mov qword ptr [r12 + 4744], rax
 jmp xchain50_n68_α
 xchain50_n63_β:
 jmp proc_d_ω
.Lx166_0:
 .quad .Lx166_0_s
.Lx166_0_s:
 .string "*"
 xchain50_n64_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4192] -> [r12+4160]
 mov rax, qword ptr [r12 + 4192]
 mov qword ptr [r12 + 4160], rax
 mov rax, qword ptr [r12 + 4200]
 mov qword ptr [r12 + 4168], rax
# marshal arg1 = producer-box slot [r12+4240] -> [r12+4176]
 mov rax, qword ptr [r12 + 4240]
 mov qword ptr [r12 + 4176], rax
 mov rax, qword ptr [r12 + 4248]
 mov qword ptr [r12 + 4184], rax
  .section .rodata
  .Lrkfn168: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn168]
 lea rsi, [r12 + 4160]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4144], rax
 mov qword ptr [r12 + 4152], rdx
 cmp eax, 99
 je xchain50_n65_α
 jmp xchain50_n69_α
 xchain50_n64_β:
 jmp xchain50_n65_α
 xchain50_n65_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+3264]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 3264], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 3272], rax
  .section .rodata
  .Lrkfn170: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn170]
 lea rsi, [r12 + 3264]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3248], rax
 mov qword ptr [r12 + 3256], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain50_n70_α
 xchain50_n65_β:
 jmp proc_d_ω
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain50_n66_α:
 lea rax, [rip + xchain50_n7_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_d_γ
 xchain50_n66_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain50_n67_α:
 lea rdi, [r12 + 6656]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5440], rax
 mov qword ptr [r12 + 5448], rdx
 jmp xchain50_n72_α
 xchain50_n67_β:
 jmp xchain50_n49_α
# IR_VAR_REF local
 xchain50_n68_α:
 lea rdi, [r12 + 6656]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4640], rax
 mov qword ptr [r12 + 4648], rdx
 jmp xchain50_n73_α
 xchain50_n68_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain50_n69_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4112], rax
 mov qword ptr [r12 + 4120], rdx
 jmp xchain50_n74_α
 xchain50_n69_β:
 jmp xchain50_n65_α
# IR_VAR_REF local
 xchain50_n70_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3120], rax
 mov qword ptr [r12 + 3128], rdx
 jmp xchain50_n75_α
 xchain50_n70_β:
 jmp xchain50_n92_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain50_n71_α:
 jmp qword ptr [r12 + 80]
 xchain50_n71_β:
 jmp proc_d_ω
 xchain50_n72_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
# IR_VAR_REF local
 xchain50_n73_α:
 lea rdi, [r12 + 6592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4656], rax
 mov qword ptr [r12 + 4664], rdx
 jmp xchain50_n77_α
 xchain50_n73_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain50_n74_α:
 lea rdi, [r12 + 6640]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4128], rax
 mov qword ptr [r12 + 4136], rdx
 jmp xchain50_n78_α
 xchain50_n74_β:
 jmp xchain50_n65_α
# IR_LIT_STRING
 xchain50_n75_α:
 mov qword ptr [r12 + 3232], 1
 mov rax, qword ptr [rip + .Lx188_0]
 mov qword ptr [r12 + 3240], rax
 jmp xchain50_n79_α
 xchain50_n75_β:
 jmp proc_d_ω
.Lx188_0:
 .quad .Lx188_0_s
.Lx188_0_s:
 .string "^"
# IR_VAR_REF local
 xchain50_n76_α:
 lea rdi, [r12 + 6592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5296], rax
 mov qword ptr [r12 + 5304], rdx
 jmp xchain50_n80_α
 xchain50_n76_β:
 jmp xchain50_n49_α
 xchain50_n77_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4736] -> [r12+4688]
 mov rax, qword ptr [r12 + 4736]
 mov qword ptr [r12 + 4688], rax
 mov rax, qword ptr [r12 + 4744]
 mov qword ptr [r12 + 4696], rax
# marshal arg1 = producer-box slot [r12+4640] -> [r12+4704]
 mov rax, qword ptr [r12 + 4640]
 mov qword ptr [r12 + 4704], rax
 mov rax, qword ptr [r12 + 4648]
 mov qword ptr [r12 + 4712], rax
# marshal arg2 = producer-box slot [r12+4656] -> [r12+4720]
 mov rax, qword ptr [r12 + 4656]
 mov qword ptr [r12 + 4720], rax
 mov rax, qword ptr [r12 + 4664]
 mov qword ptr [r12 + 4728], rax
  .section .rodata
  .Lrkfn192: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn192]
 lea rsi, [r12 + 4688]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4672], rax
 mov qword ptr [r12 + 4680], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain50_n81_α
 xchain50_n77_β:
 jmp proc_d_ω
 xchain50_n78_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4112] -> [r12+4080]
 mov rax, qword ptr [r12 + 4112]
 mov qword ptr [r12 + 4080], rax
 mov rax, qword ptr [r12 + 4120]
 mov qword ptr [r12 + 4088], rax
# marshal arg1 = producer-box slot [r12+4128] -> [r12+4096]
 mov rax, qword ptr [r12 + 4128]
 mov qword ptr [r12 + 4096], rax
 mov rax, qword ptr [r12 + 4136]
 mov qword ptr [r12 + 4104], rax
  .section .rodata
  .Lrkfn194: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn194]
 lea rsi, [r12 + 4080]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4064], rax
 mov qword ptr [r12 + 4072], rdx
 cmp eax, 99
 je xchain50_n65_α
 jmp xchain50_n82_α
 xchain50_n78_β:
 jmp xchain50_n65_α
# IR_VAR_REF local
 xchain50_n79_α:
 lea rdi, [r12 + 6608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3136], rax
 mov qword ptr [r12 + 3144], rdx
 jmp xchain50_n83_α
 xchain50_n79_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain50_n80_α:
 lea rdi, [r12 + 6640]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5312], rax
 mov qword ptr [r12 + 5320], rdx
 jmp xchain50_n84_α
 xchain50_n80_β:
 jmp xchain50_n49_α
# IR_LIT_STRING
 xchain50_n81_α:
 mov qword ptr [r12 + 4848], 1
 mov rax, qword ptr [rip + .Lx199_0]
 mov qword ptr [r12 + 4856], rax
 jmp xchain50_n85_α
 xchain50_n81_β:
 jmp proc_d_ω
.Lx199_0:
 .quad .Lx199_0_s
.Lx199_0_s:
 .string "*"
# IR_VAR_REF local
 xchain50_n82_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3552], rax
 mov qword ptr [r12 + 3560], rdx
 jmp xchain50_n86_α
 xchain50_n82_β:
 jmp xchain50_n65_α
# IR_VAR_REF local
 xchain50_n83_α:
 lea rdi, [r12 + 6592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3152], rax
 mov qword ptr [r12 + 3160], rdx
 jmp xchain50_n87_α
 xchain50_n83_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain50_n84_α:
 lea rdi, [r12 + 6672]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5328], rax
 mov qword ptr [r12 + 5336], rdx
 jmp xchain50_n88_α
 xchain50_n84_β:
 jmp xchain50_n49_α
# IR_VAR_REF local
 xchain50_n85_α:
 lea rdi, [r12 + 6608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4752], rax
 mov qword ptr [r12 + 4760], rdx
 jmp xchain50_n89_α
 xchain50_n85_β:
 jmp proc_d_ω
# IR_LIT_STRING
 xchain50_n86_α:
 mov qword ptr [r12 + 4048], 1
 mov rax, qword ptr [rip + .Lx208_0]
 mov qword ptr [r12 + 4056], rax
 jmp xchain50_n90_α
 xchain50_n86_β:
 jmp proc_d_ω
.Lx208_0:
 .quad .Lx208_0_s
.Lx208_0_s:
 .string "/"
 xchain50_n87_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3232] -> [r12+3184]
 mov rax, qword ptr [r12 + 3232]
 mov qword ptr [r12 + 3184], rax
 mov rax, qword ptr [r12 + 3240]
 mov qword ptr [r12 + 3192], rax
# marshal arg1 = producer-box slot [r12+3136] -> [r12+3200]
 mov rax, qword ptr [r12 + 3136]
 mov qword ptr [r12 + 3200], rax
 mov rax, qword ptr [r12 + 3144]
 mov qword ptr [r12 + 3208], rax
# marshal arg2 = producer-box slot [r12+3152] -> [r12+3216]
 mov rax, qword ptr [r12 + 3152]
 mov qword ptr [r12 + 3216], rax
 mov rax, qword ptr [r12 + 3160]
 mov qword ptr [r12 + 3224], rax
  .section .rodata
  .Lrkfn210: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn210]
 lea rsi, [r12 + 3184]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3168], rax
 mov qword ptr [r12 + 3176], rdx
 cmp eax, 99
 je xchain50_n92_α
 jmp xchain50_n91_α
 xchain50_n87_β:
 jmp xchain50_n92_α
 xchain50_n88_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
# IR_VAR_REF local
 xchain50_n89_α:
 lea rdi, [r12 + 6672]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4768], rax
 mov qword ptr [r12 + 4776], rdx
 jmp xchain50_n94_α
 xchain50_n89_β:
 jmp proc_d_ω
# IR_LIT_STRING
 xchain50_n90_α:
 mov qword ptr [r12 + 3856], 1
 mov rax, qword ptr [rip + .Lx214_0]
 mov qword ptr [r12 + 3864], rax
 jmp xchain50_n95_α
 xchain50_n90_β:
 jmp proc_d_ω
.Lx214_0:
 .quad .Lx214_0_s
.Lx214_0_s:
 .string "-"
 xchain50_n91_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3120] -> [r12+3088]
 mov rax, qword ptr [r12 + 3120]
 mov qword ptr [r12 + 3088], rax
 mov rax, qword ptr [r12 + 3128]
 mov qword ptr [r12 + 3096], rax
# marshal arg1 = producer-box slot [r12+3168] -> [r12+3104]
 mov rax, qword ptr [r12 + 3168]
 mov qword ptr [r12 + 3104], rax
 mov rax, qword ptr [r12 + 3176]
 mov qword ptr [r12 + 3112], rax
  .section .rodata
  .Lrkfn216: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn216]
 lea rsi, [r12 + 3088]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3072], rax
 mov qword ptr [r12 + 3080], rdx
 cmp eax, 99
 je xchain50_n92_α
 jmp xchain50_n96_α
 xchain50_n91_β:
 jmp xchain50_n92_α
 xchain50_n92_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+2336]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 2336], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 2344], rax
  .section .rodata
  .Lrkfn218: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn218]
 lea rsi, [r12 + 2336]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2320], rax
 mov qword ptr [r12 + 2328], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain50_n97_α
 xchain50_n92_β:
 jmp proc_d_ω
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain50_n93_α:
 lea rax, [rip + xchain50_n20_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_d_γ
 xchain50_n93_β:
 jmp proc_d_ω
 xchain50_n94_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4848] -> [r12+4800]
 mov rax, qword ptr [r12 + 4848]
 mov qword ptr [r12 + 4800], rax
 mov rax, qword ptr [r12 + 4856]
 mov qword ptr [r12 + 4808], rax
# marshal arg1 = producer-box slot [r12+4752] -> [r12+4816]
 mov rax, qword ptr [r12 + 4752]
 mov qword ptr [r12 + 4816], rax
 mov rax, qword ptr [r12 + 4760]
 mov qword ptr [r12 + 4824], rax
# marshal arg2 = producer-box slot [r12+4768] -> [r12+4832]
 mov rax, qword ptr [r12 + 4768]
 mov qword ptr [r12 + 4832], rax
 mov rax, qword ptr [r12 + 4776]
 mov qword ptr [r12 + 4840], rax
  .section .rodata
  .Lrkfn222: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn222]
 lea rsi, [r12 + 4800]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4784], rax
 mov qword ptr [r12 + 4792], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain50_n98_α
 xchain50_n94_β:
 jmp proc_d_ω
# IR_LIT_STRING
 xchain50_n95_α:
 mov qword ptr [r12 + 3664], 1
 mov rax, qword ptr [rip + .Lx223_0]
 mov qword ptr [r12 + 3672], rax
 jmp xchain50_n99_α
 xchain50_n95_β:
 jmp proc_d_ω
.Lx223_0:
 .quad .Lx223_0_s
.Lx223_0_s:
 .string "*"
# IR_VAR_REF local
 xchain50_n96_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3040], rax
 mov qword ptr [r12 + 3048], rdx
 jmp xchain50_n100_α
 xchain50_n96_β:
 jmp xchain50_n92_α
# IR_VAR_REF local
 xchain50_n97_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2224], rax
 mov qword ptr [r12 + 2232], rdx
 jmp xchain50_n101_α
 xchain50_n97_β:
 jmp xchain50_n114_α
 xchain50_n98_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4928] -> [r12+4880]
 mov rax, qword ptr [r12 + 4928]
 mov qword ptr [r12 + 4880], rax
 mov rax, qword ptr [r12 + 4936]
 mov qword ptr [r12 + 4888], rax
# marshal arg1 = producer-box slot [r12+4672] -> [r12+4896]
 mov rax, qword ptr [r12 + 4672]
 mov qword ptr [r12 + 4896], rax
 mov rax, qword ptr [r12 + 4680]
 mov qword ptr [r12 + 4904], rax
# marshal arg2 = producer-box slot [r12+4784] -> [r12+4912]
 mov rax, qword ptr [r12 + 4784]
 mov qword ptr [r12 + 4912], rax
 mov rax, qword ptr [r12 + 4792]
 mov qword ptr [r12 + 4920], rax
  .section .rodata
  .Lrkfn229: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn229]
 lea rsi, [r12 + 4880]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4864], rax
 mov qword ptr [r12 + 4872], rdx
 cmp eax, 99
 je xchain50_n39_α
 jmp xchain50_n102_α
 xchain50_n98_β:
 jmp xchain50_n39_α
# IR_VAR_REF local
 xchain50_n99_α:
 lea rdi, [r12 + 6656]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3568], rax
 mov qword ptr [r12 + 3576], rdx
 jmp xchain50_n103_α
 xchain50_n99_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain50_n100_α:
 lea rdi, [r12 + 6640]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3056], rax
 mov qword ptr [r12 + 3064], rdx
 jmp xchain50_n104_α
 xchain50_n100_β:
 jmp xchain50_n92_α
# IR_LIT_STRING
 xchain50_n101_α:
 mov qword ptr [r12 + 2304], 1
 mov rax, qword ptr [rip + .Lx234_0]
 mov qword ptr [r12 + 2312], rax
 jmp xchain50_n105_α
 xchain50_n101_β:
 jmp proc_d_ω
.Lx234_0:
 .quad .Lx234_0_s
.Lx234_0_s:
 .string "-"
 xchain50_n102_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4624] -> [r12+4592]
 mov rax, qword ptr [r12 + 4624]
 mov qword ptr [r12 + 4592], rax
 mov rax, qword ptr [r12 + 4632]
 mov qword ptr [r12 + 4600], rax
# marshal arg1 = producer-box slot [r12+4864] -> [r12+4608]
 mov rax, qword ptr [r12 + 4864]
 mov qword ptr [r12 + 4608], rax
 mov rax, qword ptr [r12 + 4872]
 mov qword ptr [r12 + 4616], rax
  .section .rodata
  .Lrkfn236: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn236]
 lea rsi, [r12 + 4592]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4576], rax
 mov qword ptr [r12 + 4584], rdx
 cmp eax, 99
 je xchain50_n39_α
 jmp xchain50_n106_α
 xchain50_n102_β:
 jmp xchain50_n39_α
# IR_VAR_REF local
 xchain50_n103_α:
 lea rdi, [r12 + 6592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3584], rax
 mov qword ptr [r12 + 3592], rdx
 jmp xchain50_n107_α
 xchain50_n103_β:
 jmp proc_d_ω
 xchain50_n104_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3040] -> [r12+3008]
 mov rax, qword ptr [r12 + 3040]
 mov qword ptr [r12 + 3008], rax
 mov rax, qword ptr [r12 + 3048]
 mov qword ptr [r12 + 3016], rax
# marshal arg1 = producer-box slot [r12+3056] -> [r12+3024]
 mov rax, qword ptr [r12 + 3056]
 mov qword ptr [r12 + 3024], rax
 mov rax, qword ptr [r12 + 3064]
 mov qword ptr [r12 + 3032], rax
  .section .rodata
  .Lrkfn240: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn240]
 lea rsi, [r12 + 3008]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2992], rax
 mov qword ptr [r12 + 3000], rdx
 cmp eax, 99
 je xchain50_n92_α
 jmp xchain50_n108_α
 xchain50_n104_β:
 jmp xchain50_n92_α
# IR_VAR_REF local
 xchain50_n105_α:
 lea rdi, [r12 + 6608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2240], rax
 mov qword ptr [r12 + 2248], rdx
 jmp xchain50_n109_α
 xchain50_n105_β:
 jmp proc_d_ω
 xchain50_n106_α:
# IR_CUT
 jmp xchain50_n110_α
 xchain50_n106_β:
 jmp xchain50_n39_α
 xchain50_n107_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3664] -> [r12+3616]
 mov rax, qword ptr [r12 + 3664]
 mov qword ptr [r12 + 3616], rax
 mov rax, qword ptr [r12 + 3672]
 mov qword ptr [r12 + 3624], rax
# marshal arg1 = producer-box slot [r12+3568] -> [r12+3632]
 mov rax, qword ptr [r12 + 3568]
 mov qword ptr [r12 + 3632], rax
 mov rax, qword ptr [r12 + 3576]
 mov qword ptr [r12 + 3640], rax
# marshal arg2 = producer-box slot [r12+3584] -> [r12+3648]
 mov rax, qword ptr [r12 + 3584]
 mov qword ptr [r12 + 3648], rax
 mov rax, qword ptr [r12 + 3592]
 mov qword ptr [r12 + 3656], rax
  .section .rodata
  .Lrkfn245: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn245]
 lea rsi, [r12 + 3616]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3600], rax
 mov qword ptr [r12 + 3608], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain50_n111_α
 xchain50_n107_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain50_n108_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2672], rax
 mov qword ptr [r12 + 2680], rdx
 jmp xchain50_n112_α
 xchain50_n108_β:
 jmp xchain50_n92_α
 xchain50_n109_α:
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
  .Lrkfn249: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn249]
 lea rsi, [r12 + 2272]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2256], rax
 mov qword ptr [r12 + 2264], rdx
 cmp eax, 99
 je xchain50_n114_α
 jmp xchain50_n113_α
 xchain50_n109_β:
 jmp xchain50_n114_α
# IR_VAR_REF local
 xchain50_n110_α:
 lea rdi, [r12 + 6608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4528], rax
 mov qword ptr [r12 + 4536], rdx
 jmp xchain50_n115_α
 xchain50_n110_β:
 jmp xchain50_n49_α
# IR_LIT_STRING
 xchain50_n111_α:
 mov qword ptr [r12 + 3776], 1
 mov rax, qword ptr [rip + .Lx252_0]
 mov qword ptr [r12 + 3784], rax
 jmp xchain50_n116_α
 xchain50_n111_β:
 jmp proc_d_ω
.Lx252_0:
 .quad .Lx252_0_s
.Lx252_0_s:
 .string "*"
# IR_LIT_STRING
 xchain50_n112_α:
 mov qword ptr [r12 + 2976], 1
 mov rax, qword ptr [rip + .Lx253_0]
 mov qword ptr [r12 + 2984], rax
 jmp xchain50_n117_α
 xchain50_n112_β:
 jmp proc_d_ω
.Lx253_0:
 .quad .Lx253_0_s
.Lx253_0_s:
 .string "*"
 xchain50_n113_α:
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
  .Lrkfn255: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn255]
 lea rsi, [r12 + 2192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2176], rax
 mov qword ptr [r12 + 2184], rdx
 cmp eax, 99
 je xchain50_n114_α
 jmp xchain50_n118_α
 xchain50_n113_β:
 jmp xchain50_n114_α
 xchain50_n114_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+1824]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 1824], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 1832], rax
  .section .rodata
  .Lrkfn257: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn257]
 lea rsi, [r12 + 1824]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1808], rax
 mov qword ptr [r12 + 1816], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain50_n119_α
 xchain50_n114_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain50_n115_α:
 lea rdi, [r12 + 6640]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4544], rax
 mov qword ptr [r12 + 4552], rdx
 jmp xchain50_n120_α
 xchain50_n115_β:
 jmp xchain50_n49_α
# IR_VAR_REF local
 xchain50_n116_α:
 lea rdi, [r12 + 6608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3680], rax
 mov qword ptr [r12 + 3688], rdx
 jmp xchain50_n121_α
 xchain50_n116_β:
 jmp proc_d_ω
# IR_LIT_STRING
 xchain50_n117_α:
 mov qword ptr [r12 + 2784], 1
 mov rax, qword ptr [rip + .Lx262_0]
 mov qword ptr [r12 + 2792], rax
 jmp xchain50_n122_α
 xchain50_n117_β:
 jmp proc_d_ω
.Lx262_0:
 .quad .Lx262_0_s
.Lx262_0_s:
 .string "*"
# IR_VAR_REF local
 xchain50_n118_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2144], rax
 mov qword ptr [r12 + 2152], rdx
 jmp xchain50_n123_α
 xchain50_n118_β:
 jmp xchain50_n114_α
# IR_VAR_REF local
 xchain50_n119_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1712], rax
 mov qword ptr [r12 + 1720], rdx
 jmp xchain50_n124_α
 xchain50_n119_β:
 jmp xchain50_n140_α
# IR_VAR_REF local
 xchain50_n120_α:
 lea rdi, [r12 + 6656]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4560], rax
 mov qword ptr [r12 + 4568], rdx
 jmp xchain50_n125_α
 xchain50_n120_β:
 jmp xchain50_n49_α
# IR_VAR_REF local
 xchain50_n121_α:
 lea rdi, [r12 + 6672]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3696], rax
 mov qword ptr [r12 + 3704], rdx
 jmp xchain50_n126_α
 xchain50_n121_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain50_n122_α:
 lea rdi, [r12 + 6656]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2688], rax
 mov qword ptr [r12 + 2696], rdx
 jmp xchain50_n127_α
 xchain50_n122_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain50_n123_α:
 lea rdi, [r12 + 6640]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2160], rax
 mov qword ptr [r12 + 2168], rdx
 jmp xchain50_n128_α
 xchain50_n123_β:
 jmp xchain50_n114_α
# IR_LIT_STRING
 xchain50_n124_α:
 mov qword ptr [r12 + 1792], 1
 mov rax, qword ptr [rip + .Lx275_0]
 mov qword ptr [r12 + 1800], rax
 jmp xchain50_n129_α
 xchain50_n124_β:
 jmp proc_d_ω
.Lx275_0:
 .quad .Lx275_0_s
.Lx275_0_s:
 .string "exp"
 xchain50_n125_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
 xchain50_n126_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3776] -> [r12+3728]
 mov rax, qword ptr [r12 + 3776]
 mov qword ptr [r12 + 3728], rax
 mov rax, qword ptr [r12 + 3784]
 mov qword ptr [r12 + 3736], rax
# marshal arg1 = producer-box slot [r12+3680] -> [r12+3744]
 mov rax, qword ptr [r12 + 3680]
 mov qword ptr [r12 + 3744], rax
 mov rax, qword ptr [r12 + 3688]
 mov qword ptr [r12 + 3752], rax
# marshal arg2 = producer-box slot [r12+3696] -> [r12+3760]
 mov rax, qword ptr [r12 + 3696]
 mov qword ptr [r12 + 3760], rax
 mov rax, qword ptr [r12 + 3704]
 mov qword ptr [r12 + 3768], rax
  .section .rodata
  .Lrkfn278: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn278]
 lea rsi, [r12 + 3728]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3712], rax
 mov qword ptr [r12 + 3720], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain50_n131_α
 xchain50_n126_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain50_n127_α:
 lea rdi, [r12 + 6592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2704], rax
 mov qword ptr [r12 + 2712], rdx
 jmp xchain50_n132_α
 xchain50_n127_β:
 jmp proc_d_ω
 xchain50_n128_α:
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
  .Lrkfn282: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn282]
 lea rsi, [r12 + 2112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2096], rax
 mov qword ptr [r12 + 2104], rdx
 cmp eax, 99
 je xchain50_n114_α
 jmp xchain50_n133_α
 xchain50_n128_β:
 jmp xchain50_n114_α
# IR_VAR_REF local
 xchain50_n129_α:
 lea rdi, [r12 + 6608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1728], rax
 mov qword ptr [r12 + 1736], rdx
 jmp xchain50_n134_α
 xchain50_n129_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain50_n130_α:
 lea rdi, [r12 + 6592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4416], rax
 mov qword ptr [r12 + 4424], rdx
 jmp xchain50_n135_α
 xchain50_n130_β:
 jmp xchain50_n49_α
 xchain50_n131_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3856] -> [r12+3808]
 mov rax, qword ptr [r12 + 3856]
 mov qword ptr [r12 + 3808], rax
 mov rax, qword ptr [r12 + 3864]
 mov qword ptr [r12 + 3816], rax
# marshal arg1 = producer-box slot [r12+3600] -> [r12+3824]
 mov rax, qword ptr [r12 + 3600]
 mov qword ptr [r12 + 3824], rax
 mov rax, qword ptr [r12 + 3608]
 mov qword ptr [r12 + 3832], rax
# marshal arg2 = producer-box slot [r12+3712] -> [r12+3840]
 mov rax, qword ptr [r12 + 3712]
 mov qword ptr [r12 + 3840], rax
 mov rax, qword ptr [r12 + 3720]
 mov qword ptr [r12 + 3848], rax
  .section .rodata
  .Lrkfn288: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn288]
 lea rsi, [r12 + 3808]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3792], rax
 mov qword ptr [r12 + 3800], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain50_n136_α
 xchain50_n131_β:
 jmp proc_d_ω
 xchain50_n132_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2784] -> [r12+2736]
 mov rax, qword ptr [r12 + 2784]
 mov qword ptr [r12 + 2736], rax
 mov rax, qword ptr [r12 + 2792]
 mov qword ptr [r12 + 2744], rax
# marshal arg1 = producer-box slot [r12+2688] -> [r12+2752]
 mov rax, qword ptr [r12 + 2688]
 mov qword ptr [r12 + 2752], rax
 mov rax, qword ptr [r12 + 2696]
 mov qword ptr [r12 + 2760], rax
# marshal arg2 = producer-box slot [r12+2704] -> [r12+2768]
 mov rax, qword ptr [r12 + 2704]
 mov qword ptr [r12 + 2768], rax
 mov rax, qword ptr [r12 + 2712]
 mov qword ptr [r12 + 2776], rax
  .section .rodata
  .Lrkfn290: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn290]
 lea rsi, [r12 + 2736]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2720], rax
 mov qword ptr [r12 + 2728], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain50_n137_α
 xchain50_n132_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain50_n133_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2000], rax
 mov qword ptr [r12 + 2008], rdx
 jmp xchain50_n138_α
 xchain50_n133_β:
 jmp xchain50_n114_α
 xchain50_n134_α:
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
  .Lrkfn294: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn294]
 lea rsi, [r12 + 1760]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1744], rax
 mov qword ptr [r12 + 1752], rdx
 cmp eax, 99
 je xchain50_n140_α
 jmp xchain50_n139_α
 xchain50_n134_β:
 jmp xchain50_n140_α
# IR_VAR_REF local
 xchain50_n135_α:
 lea rdi, [r12 + 6640]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4432], rax
 mov qword ptr [r12 + 4440], rdx
 jmp xchain50_n141_α
 xchain50_n135_β:
 jmp xchain50_n49_α
# IR_LIT_STRING
 xchain50_n136_α:
 mov qword ptr [r12 + 3968], 1
 mov rax, qword ptr [rip + .Lx297_0]
 mov qword ptr [r12 + 3976], rax
 jmp xchain50_n142_α
 xchain50_n136_β:
 jmp proc_d_ω
.Lx297_0:
 .quad .Lx297_0_s
.Lx297_0_s:
 .string "^"
# IR_LIT_STRING
 xchain50_n137_α:
 mov qword ptr [r12 + 2896], 1
 mov rax, qword ptr [rip + .Lx298_0]
 mov qword ptr [r12 + 2904], rax
 jmp xchain50_n143_α
 xchain50_n137_β:
 jmp proc_d_ω
.Lx298_0:
 .quad .Lx298_0_s
.Lx298_0_s:
 .string "^"
# IR_LIT_STRING
 xchain50_n138_α:
 mov qword ptr [r12 + 2080], 1
 mov rax, qword ptr [rip + .Lx299_0]
 mov qword ptr [r12 + 2088], rax
 jmp xchain50_n144_α
 xchain50_n138_β:
 jmp proc_d_ω
.Lx299_0:
 .quad .Lx299_0_s
.Lx299_0_s:
 .string "-"
 xchain50_n139_α:
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
  .Lrkfn301: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn301]
 lea rsi, [r12 + 1680]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1664], rax
 mov qword ptr [r12 + 1672], rdx
 cmp eax, 99
 je xchain50_n140_α
 jmp xchain50_n145_α
 xchain50_n139_β:
 jmp xchain50_n140_α
 xchain50_n140_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+1216]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 1216], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 1224], rax
  .section .rodata
  .Lrkfn303: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn303]
 lea rsi, [r12 + 1216]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1200], rax
 mov qword ptr [r12 + 1208], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain50_n146_α
 xchain50_n140_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain50_n141_α:
 lea rdi, [r12 + 6672]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4448], rax
 mov qword ptr [r12 + 4456], rdx
 jmp xchain50_n147_α
 xchain50_n141_β:
 jmp xchain50_n49_α
# IR_VAR_REF local
 xchain50_n142_α:
 lea rdi, [r12 + 6592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3872], rax
 mov qword ptr [r12 + 3880], rdx
 jmp xchain50_n148_α
 xchain50_n142_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain50_n143_α:
 lea rdi, [r12 + 6608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2800], rax
 mov qword ptr [r12 + 2808], rdx
 jmp xchain50_n149_α
 xchain50_n143_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain50_n144_α:
 lea rdi, [r12 + 6592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2016], rax
 mov qword ptr [r12 + 2024], rdx
 jmp xchain50_n150_α
 xchain50_n144_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain50_n145_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1632], rax
 mov qword ptr [r12 + 1640], rdx
 jmp xchain50_n151_α
 xchain50_n145_β:
 jmp xchain50_n140_α
# IR_VAR_REF local
 xchain50_n146_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 jmp xchain50_n152_α
 xchain50_n146_β:
 jmp xchain50_n169_α
 xchain50_n147_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
# IR_LIT_INTEGER
 xchain50_n148_α:
 mov qword ptr [r12 + 3888], 6
 mov rax, qword ptr [rip + .Lx317_0]
 mov qword ptr [r12 + 3896], rax
 jmp xchain50_n154_α
 xchain50_n148_β:
 jmp proc_d_ω
.Lx317_0:
 .quad 2
# IR_VAR_REF local
 xchain50_n149_α:
 lea rdi, [r12 + 6672]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2816], rax
 mov qword ptr [r12 + 2824], rdx
 jmp xchain50_n155_α
 xchain50_n149_β:
 jmp proc_d_ω
 xchain50_n150_α:
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
  .Lrkfn321: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn321]
 lea rsi, [r12 + 2048]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2032], rax
 mov qword ptr [r12 + 2040], rdx
 cmp eax, 99
 je xchain50_n114_α
 jmp xchain50_n156_α
 xchain50_n150_β:
 jmp xchain50_n114_α
# IR_VAR_REF local
 xchain50_n151_α:
 lea rdi, [r12 + 6640]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1648], rax
 mov qword ptr [r12 + 1656], rdx
 jmp xchain50_n157_α
 xchain50_n151_β:
 jmp xchain50_n140_α
# IR_LIT_STRING
 xchain50_n152_α:
 mov qword ptr [r12 + 1184], 1
 mov rax, qword ptr [rip + .Lx324_0]
 mov qword ptr [r12 + 1192], rax
 jmp xchain50_n158_α
 xchain50_n152_β:
 jmp proc_d_ω
.Lx324_0:
 .quad .Lx324_0_s
.Lx324_0_s:
 .string "log"
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain50_n153_α:
 lea rax, [rip + xchain50_n39_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_d_γ
 xchain50_n153_β:
 jmp proc_d_ω
 xchain50_n154_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3968] -> [r12+3920]
 mov rax, qword ptr [r12 + 3968]
 mov qword ptr [r12 + 3920], rax
 mov rax, qword ptr [r12 + 3976]
 mov qword ptr [r12 + 3928], rax
# marshal arg1 = producer-box slot [r12+3872] -> [r12+3936]
 mov rax, qword ptr [r12 + 3872]
 mov qword ptr [r12 + 3936], rax
 mov rax, qword ptr [r12 + 3880]
 mov qword ptr [r12 + 3944], rax
# marshal arg2 = producer-box slot [r12+3888] -> [r12+3952]
 mov rax, qword ptr [r12 + 3888]
 mov qword ptr [r12 + 3952], rax
 mov rax, qword ptr [r12 + 3896]
 mov qword ptr [r12 + 3960], rax
  .section .rodata
  .Lrkfn328: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn328]
 lea rsi, [r12 + 3920]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3904], rax
 mov qword ptr [r12 + 3912], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain50_n159_α
 xchain50_n154_β:
 jmp proc_d_ω
 xchain50_n155_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2896] -> [r12+2848]
 mov rax, qword ptr [r12 + 2896]
 mov qword ptr [r12 + 2848], rax
 mov rax, qword ptr [r12 + 2904]
 mov qword ptr [r12 + 2856], rax
# marshal arg1 = producer-box slot [r12+2800] -> [r12+2864]
 mov rax, qword ptr [r12 + 2800]
 mov qword ptr [r12 + 2864], rax
 mov rax, qword ptr [r12 + 2808]
 mov qword ptr [r12 + 2872], rax
# marshal arg2 = producer-box slot [r12+2816] -> [r12+2880]
 mov rax, qword ptr [r12 + 2816]
 mov qword ptr [r12 + 2880], rax
 mov rax, qword ptr [r12 + 2824]
 mov qword ptr [r12 + 2888], rax
  .section .rodata
  .Lrkfn330: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn330]
 lea rsi, [r12 + 2848]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2832], rax
 mov qword ptr [r12 + 2840], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain50_n160_α
 xchain50_n155_β:
 jmp proc_d_ω
 xchain50_n156_α:
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
  .Lrkfn332: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn332]
 lea rsi, [r12 + 1968]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1952], rax
 mov qword ptr [r12 + 1960], rdx
 cmp eax, 99
 je xchain50_n114_α
 jmp xchain50_n161_α
 xchain50_n156_β:
 jmp xchain50_n114_α
 xchain50_n157_α:
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
  .Lrkfn334: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn334]
 lea rsi, [r12 + 1600]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1584], rax
 mov qword ptr [r12 + 1592], rdx
 cmp eax, 99
 je xchain50_n140_α
 jmp xchain50_n162_α
 xchain50_n157_β:
 jmp xchain50_n140_α
# IR_VAR_REF local
 xchain50_n158_α:
 lea rdi, [r12 + 6608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1120], rax
 mov qword ptr [r12 + 1128], rdx
 jmp xchain50_n163_α
 xchain50_n158_β:
 jmp proc_d_ω
 xchain50_n159_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4048] -> [r12+4000]
 mov rax, qword ptr [r12 + 4048]
 mov qword ptr [r12 + 4000], rax
 mov rax, qword ptr [r12 + 4056]
 mov qword ptr [r12 + 4008], rax
# marshal arg1 = producer-box slot [r12+3792] -> [r12+4016]
 mov rax, qword ptr [r12 + 3792]
 mov qword ptr [r12 + 4016], rax
 mov rax, qword ptr [r12 + 3800]
 mov qword ptr [r12 + 4024], rax
# marshal arg2 = producer-box slot [r12+3904] -> [r12+4032]
 mov rax, qword ptr [r12 + 3904]
 mov qword ptr [r12 + 4032], rax
 mov rax, qword ptr [r12 + 3912]
 mov qword ptr [r12 + 4040], rax
  .section .rodata
  .Lrkfn338: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn338]
 lea rsi, [r12 + 4000]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3984], rax
 mov qword ptr [r12 + 3992], rdx
 cmp eax, 99
 je xchain50_n65_α
 jmp xchain50_n164_α
 xchain50_n159_β:
 jmp xchain50_n65_α
 xchain50_n160_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2976] -> [r12+2928]
 mov rax, qword ptr [r12 + 2976]
 mov qword ptr [r12 + 2928], rax
 mov rax, qword ptr [r12 + 2984]
 mov qword ptr [r12 + 2936], rax
# marshal arg1 = producer-box slot [r12+2720] -> [r12+2944]
 mov rax, qword ptr [r12 + 2720]
 mov qword ptr [r12 + 2944], rax
 mov rax, qword ptr [r12 + 2728]
 mov qword ptr [r12 + 2952], rax
# marshal arg2 = producer-box slot [r12+2832] -> [r12+2960]
 mov rax, qword ptr [r12 + 2832]
 mov qword ptr [r12 + 2960], rax
 mov rax, qword ptr [r12 + 2840]
 mov qword ptr [r12 + 2968], rax
  .section .rodata
  .Lrkfn340: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn340]
 lea rsi, [r12 + 2928]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2912], rax
 mov qword ptr [r12 + 2920], rdx
 cmp eax, 99
 je xchain50_n92_α
 jmp xchain50_n165_α
 xchain50_n160_β:
 jmp xchain50_n92_α
 xchain50_n161_α:
# IR_CUT
 jmp xchain50_n166_α
 xchain50_n161_β:
 jmp xchain50_n114_α
# IR_VAR_REF local
 xchain50_n162_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1392], rax
 mov qword ptr [r12 + 1400], rdx
 jmp xchain50_n167_α
 xchain50_n162_β:
 jmp xchain50_n140_α
 xchain50_n163_α:
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
  .Lrkfn345: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn345]
 lea rsi, [r12 + 1152]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 cmp eax, 99
 je xchain50_n169_α
 jmp xchain50_n168_α
 xchain50_n163_β:
 jmp xchain50_n169_α
 xchain50_n164_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3552] -> [r12+3520]
 mov rax, qword ptr [r12 + 3552]
 mov qword ptr [r12 + 3520], rax
 mov rax, qword ptr [r12 + 3560]
 mov qword ptr [r12 + 3528], rax
# marshal arg1 = producer-box slot [r12+3984] -> [r12+3536]
 mov rax, qword ptr [r12 + 3984]
 mov qword ptr [r12 + 3536], rax
 mov rax, qword ptr [r12 + 3992]
 mov qword ptr [r12 + 3544], rax
  .section .rodata
  .Lrkfn347: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn347]
 lea rsi, [r12 + 3520]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3504], rax
 mov qword ptr [r12 + 3512], rdx
 cmp eax, 99
 je xchain50_n65_α
 jmp xchain50_n170_α
 xchain50_n164_β:
 jmp xchain50_n65_α
 xchain50_n165_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2672] -> [r12+2640]
 mov rax, qword ptr [r12 + 2672]
 mov qword ptr [r12 + 2640], rax
 mov rax, qword ptr [r12 + 2680]
 mov qword ptr [r12 + 2648], rax
# marshal arg1 = producer-box slot [r12+2912] -> [r12+2656]
 mov rax, qword ptr [r12 + 2912]
 mov qword ptr [r12 + 2656], rax
 mov rax, qword ptr [r12 + 2920]
 mov qword ptr [r12 + 2664], rax
  .section .rodata
  .Lrkfn349: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn349]
 lea rsi, [r12 + 2640]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2624], rax
 mov qword ptr [r12 + 2632], rdx
 cmp eax, 99
 je xchain50_n92_α
 jmp xchain50_n171_α
 xchain50_n165_β:
 jmp xchain50_n92_α
# IR_VAR_REF local
 xchain50_n166_α:
 lea rdi, [r12 + 6608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1904], rax
 mov qword ptr [r12 + 1912], rdx
 jmp xchain50_n172_α
 xchain50_n166_β:
 jmp xchain50_n49_α
# IR_LIT_STRING
 xchain50_n167_α:
 mov qword ptr [r12 + 1568], 1
 mov rax, qword ptr [rip + .Lx352_0]
 mov qword ptr [r12 + 1576], rax
 jmp xchain50_n173_α
 xchain50_n167_β:
 jmp proc_d_ω
.Lx352_0:
 .quad .Lx352_0_s
.Lx352_0_s:
 .string "*"
 xchain50_n168_α:
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
  .Lrkfn354: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn354]
 lea rsi, [r12 + 1072]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je xchain50_n169_α
 jmp xchain50_n174_α
 xchain50_n168_β:
 jmp xchain50_n169_α
 xchain50_n169_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+672]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 680], rax
  .section .rodata
  .Lrkfn356: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn356]
 lea rsi, [r12 + 672]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain50_n175_α
 xchain50_n169_β:
 jmp proc_d_ω
 xchain50_n170_α:
# IR_CUT
 jmp xchain50_n176_α
 xchain50_n170_β:
 jmp xchain50_n65_α
 xchain50_n171_α:
# IR_CUT
 jmp xchain50_n177_α
 xchain50_n171_β:
 jmp xchain50_n92_α
# IR_VAR_REF local
 xchain50_n172_α:
 lea rdi, [r12 + 6640]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1920], rax
 mov qword ptr [r12 + 1928], rdx
 jmp xchain50_n178_α
 xchain50_n172_β:
 jmp xchain50_n49_α
# IR_LIT_STRING
 xchain50_n173_α:
 mov qword ptr [r12 + 1472], 1
 mov rax, qword ptr [rip + .Lx361_0]
 mov qword ptr [r12 + 1480], rax
 jmp xchain50_n179_α
 xchain50_n173_β:
 jmp proc_d_ω
.Lx361_0:
 .quad .Lx361_0_s
.Lx361_0_s:
 .string "exp"
# IR_VAR_REF local
 xchain50_n174_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 jmp xchain50_n180_α
 xchain50_n174_β:
 jmp xchain50_n169_α
# IR_VAR_REF local
 xchain50_n175_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xchain50_n181_α
 xchain50_n175_β:
 jmp xchain50_n194_α
# IR_VAR_REF local
 xchain50_n176_α:
 lea rdi, [r12 + 6608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3456], rax
 mov qword ptr [r12 + 3464], rdx
 jmp xchain50_n182_α
 xchain50_n176_β:
 jmp xchain50_n49_α
