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
 mov qword ptr [r12 + 1088], rax
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
 mov qword ptr [r12 + 1040], 1
 mov rax, qword ptr [rip + .Lx3_0]
 mov qword ptr [r12 + 1048], rax
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp proc_divide10_ω
.Lx3_0:
 .quad .Lx3_0_s
.Lx3_0_s:
 .string "/"
# IR_LIT_STRING
 xchain0_n2_α:
 mov qword ptr [r12 + 944], 1
 mov rax, qword ptr [rip + .Lx4_0]
 mov qword ptr [r12 + 952], rax
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp proc_divide10_ω
.Lx4_0:
 .quad .Lx4_0_s
.Lx4_0_s:
 .string "/"
# IR_LIT_STRING
 xchain0_n3_α:
 mov qword ptr [r12 + 848], 1
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [r12 + 856], rax
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp proc_divide10_ω
.Lx5_0:
 .quad .Lx5_0_s
.Lx5_0_s:
 .string "/"
# IR_LIT_STRING
 xchain0_n4_α:
 mov qword ptr [r12 + 752], 1
 mov rax, qword ptr [rip + .Lx6_0]
 mov qword ptr [r12 + 760], rax
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp proc_divide10_ω
.Lx6_0:
 .quad .Lx6_0_s
.Lx6_0_s:
 .string "/"
# IR_LIT_STRING
 xchain0_n5_α:
 mov qword ptr [r12 + 656], 1
 mov rax, qword ptr [rip + .Lx7_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain0_n6_α
 xchain0_n5_β:
 jmp proc_divide10_ω
.Lx7_0:
 .quad .Lx7_0_s
.Lx7_0_s:
 .string "/"
# IR_LIT_STRING
 xchain0_n6_α:
 mov qword ptr [r12 + 560], 1
 mov rax, qword ptr [rip + .Lx8_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp proc_divide10_ω
.Lx8_0:
 .quad .Lx8_0_s
.Lx8_0_s:
 .string "/"
# IR_LIT_STRING
 xchain0_n7_α:
 mov qword ptr [r12 + 464], 1
 mov rax, qword ptr [rip + .Lx9_0]
 mov qword ptr [r12 + 472], rax
 jmp xchain0_n8_α
 xchain0_n7_β:
 jmp proc_divide10_ω
.Lx9_0:
 .quad .Lx9_0_s
.Lx9_0_s:
 .string "/"
# IR_LIT_STRING
 xchain0_n8_α:
 mov qword ptr [r12 + 368], 1
 mov rax, qword ptr [rip + .Lx10_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain0_n9_α
 xchain0_n8_β:
 jmp proc_divide10_ω
.Lx10_0:
 .quad .Lx10_0_s
.Lx10_0_s:
 .string "/"
# IR_LIT_STRING
 xchain0_n9_α:
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx11_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain0_n10_α
 xchain0_n9_β:
 jmp proc_divide10_ω
.Lx11_0:
 .quad .Lx11_0_s
.Lx11_0_s:
 .string "/"
# IR_LIT_STRING
 xchain0_n10_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx12_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain0_n11_α
 xchain0_n10_β:
 jmp proc_divide10_ω
.Lx12_0:
 .quad .Lx12_0_s
.Lx12_0_s:
 .string "x"
# IR_LIT_STRING
 xchain0_n11_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx13_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain0_n12_α
 xchain0_n11_β:
 jmp proc_divide10_ω
.Lx13_0:
 .quad .Lx13_0_s
.Lx13_0_s:
 .string "x"
 xchain0_n12_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+272] -> [zr+224]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 232], rax
# marshal arg1 = producer-box slot [zr+176] -> [zr+240]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 248], rax
# marshal arg2 = producer-box slot [zr+192] -> [zr+256]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lrkfn15: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn15]
 lea rsi, [r12 + 224]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je proc_divide10_ω
 jmp xchain0_n13_α
 xchain0_n12_β:
 jmp proc_divide10_ω
# IR_LIT_STRING
 xchain0_n13_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx16_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain0_n14_α
 xchain0_n13_β:
 jmp proc_divide10_ω
.Lx16_0:
 .quad .Lx16_0_s
.Lx16_0_s:
 .string "x"
 xchain0_n14_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+320]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 328], rax
# marshal arg1 = producer-box slot [zr+208] -> [zr+336]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 344], rax
# marshal arg2 = producer-box slot [zr+288] -> [zr+352]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 360], rax
  .section .rodata
  .Lrkfn18: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn18]
 lea rsi, [r12 + 320]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je proc_divide10_ω
 jmp xchain0_n15_α
 xchain0_n14_β:
 jmp proc_divide10_ω
# IR_LIT_STRING
 xchain0_n15_α:
 mov qword ptr [r12 + 384], 1
 mov rax, qword ptr [rip + .Lx19_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain0_n16_α
 xchain0_n15_β:
 jmp proc_divide10_ω
.Lx19_0:
 .quad .Lx19_0_s
.Lx19_0_s:
 .string "x"
 xchain0_n16_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+464] -> [zr+416]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 424], rax
# marshal arg1 = producer-box slot [zr+304] -> [zr+432]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 440], rax
# marshal arg2 = producer-box slot [zr+384] -> [zr+448]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 456], rax
  .section .rodata
  .Lrkfn21: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn21]
 lea rsi, [r12 + 416]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je proc_divide10_ω
 jmp xchain0_n17_α
 xchain0_n16_β:
 jmp proc_divide10_ω
# IR_LIT_STRING
 xchain0_n17_α:
 mov qword ptr [r12 + 480], 1
 mov rax, qword ptr [rip + .Lx22_0]
 mov qword ptr [r12 + 488], rax
 jmp xchain0_n18_α
 xchain0_n17_β:
 jmp proc_divide10_ω
.Lx22_0:
 .quad .Lx22_0_s
.Lx22_0_s:
 .string "x"
 xchain0_n18_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+560] -> [zr+512]
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 520], rax
# marshal arg1 = producer-box slot [zr+400] -> [zr+528]
 mov rax, qword ptr [r12 + 400]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 536], rax
# marshal arg2 = producer-box slot [zr+480] -> [zr+544]
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 552], rax
  .section .rodata
  .Lrkfn24: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn24]
 lea rsi, [r12 + 512]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 cmp eax, 99
 je proc_divide10_ω
 jmp xchain0_n19_α
 xchain0_n18_β:
 jmp proc_divide10_ω
# IR_LIT_STRING
 xchain0_n19_α:
 mov qword ptr [r12 + 576], 1
 mov rax, qword ptr [rip + .Lx25_0]
 mov qword ptr [r12 + 584], rax
 jmp xchain0_n20_α
 xchain0_n19_β:
 jmp proc_divide10_ω
.Lx25_0:
 .quad .Lx25_0_s
.Lx25_0_s:
 .string "x"
 xchain0_n20_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+656] -> [zr+608]
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 616], rax
# marshal arg1 = producer-box slot [zr+496] -> [zr+624]
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 632], rax
# marshal arg2 = producer-box slot [zr+576] -> [zr+640]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 648], rax
  .section .rodata
  .Lrkfn27: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn27]
 lea rsi, [r12 + 608]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 cmp eax, 99
 je proc_divide10_ω
 jmp xchain0_n21_α
 xchain0_n20_β:
 jmp proc_divide10_ω
# IR_LIT_STRING
 xchain0_n21_α:
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx28_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain0_n22_α
 xchain0_n21_β:
 jmp proc_divide10_ω
.Lx28_0:
 .quad .Lx28_0_s
.Lx28_0_s:
 .string "x"
 xchain0_n22_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+752] -> [zr+704]
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 712], rax
# marshal arg1 = producer-box slot [zr+592] -> [zr+720]
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 728], rax
# marshal arg2 = producer-box slot [zr+672] -> [zr+736]
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 744], rax
  .section .rodata
  .Lrkfn30: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn30]
 lea rsi, [r12 + 704]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 cmp eax, 99
 je proc_divide10_ω
 jmp xchain0_n23_α
 xchain0_n22_β:
 jmp proc_divide10_ω
# IR_LIT_STRING
 xchain0_n23_α:
 mov qword ptr [r12 + 768], 1
 mov rax, qword ptr [rip + .Lx31_0]
 mov qword ptr [r12 + 776], rax
 jmp xchain0_n24_α
 xchain0_n23_β:
 jmp proc_divide10_ω
.Lx31_0:
 .quad .Lx31_0_s
.Lx31_0_s:
 .string "x"
 xchain0_n24_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+848] -> [zr+800]
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 808], rax
# marshal arg1 = producer-box slot [zr+688] -> [zr+816]
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 824], rax
# marshal arg2 = producer-box slot [zr+768] -> [zr+832]
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 840], rax
  .section .rodata
  .Lrkfn33: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn33]
 lea rsi, [r12 + 800]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 cmp eax, 99
 je proc_divide10_ω
 jmp xchain0_n25_α
 xchain0_n24_β:
 jmp proc_divide10_ω
# IR_LIT_STRING
 xchain0_n25_α:
 mov qword ptr [r12 + 864], 1
 mov rax, qword ptr [rip + .Lx34_0]
 mov qword ptr [r12 + 872], rax
 jmp xchain0_n26_α
 xchain0_n25_β:
 jmp proc_divide10_ω
.Lx34_0:
 .quad .Lx34_0_s
.Lx34_0_s:
 .string "x"
 xchain0_n26_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+944] -> [zr+896]
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 896], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 904], rax
# marshal arg1 = producer-box slot [zr+784] -> [zr+912]
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 920], rax
# marshal arg2 = producer-box slot [zr+864] -> [zr+928]
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 928], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 936], rax
  .section .rodata
  .Lrkfn36: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn36]
 lea rsi, [r12 + 896]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 cmp eax, 99
 je proc_divide10_ω
 jmp xchain0_n27_α
 xchain0_n26_β:
 jmp proc_divide10_ω
# IR_LIT_STRING
 xchain0_n27_α:
 mov qword ptr [r12 + 960], 1
 mov rax, qword ptr [rip + .Lx37_0]
 mov qword ptr [r12 + 968], rax
 jmp xchain0_n28_α
 xchain0_n27_β:
 jmp proc_divide10_ω
.Lx37_0:
 .quad .Lx37_0_s
.Lx37_0_s:
 .string "x"
 xchain0_n28_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1040] -> [zr+992]
 mov rax, qword ptr [r12 + 1040]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 1048]
 mov qword ptr [r12 + 1000], rax
# marshal arg1 = producer-box slot [zr+880] -> [zr+1008]
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 888]
 mov qword ptr [r12 + 1016], rax
# marshal arg2 = producer-box slot [zr+960] -> [zr+1024]
 mov rax, qword ptr [r12 + 960]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 968]
 mov qword ptr [r12 + 1032], rax
  .section .rodata
  .Lrkfn39: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn39]
 lea rsi, [r12 + 992]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 cmp eax, 99
 je xchain0_n30_α
 jmp xchain0_n29_α
 xchain0_n28_β:
 jmp xchain0_n30_α
# IR_LIT_STRING
 xchain0_n29_α:
 mov qword ptr [r12 + 1056], 1
 mov rax, qword ptr [rip + .Lx40_0]
 mov qword ptr [r12 + 1064], rax
 jmp xchain0_n31_α
 xchain0_n29_β:
 jmp xchain0_n30_α
.Lx40_0:
 .quad .Lx40_0_s
.Lx40_0_s:
 .string "x"
 xchain0_n30_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+80]
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
 lea rdi, [r12 + 1104]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 jmp xchain0_n32_α
 xchain0_n31_β:
 jmp xchain0_n30_α
 xchain0_n32_α:
  .section .rodata
  .Lcall33_pname: .string "d"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 976]
 mov rdx, qword ptr [r12 + 984]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 1056]
 mov rdx, qword ptr [r12 + 1064]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 1072]
 mov rdx, qword ptr [r12 + 1080]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall33_pname]
 mov esi, 3
 lea rdx, [r12 + 160]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain0_n30_α
 jmp xchain0_n33_α
xchain0_n32_β:
 mov rdi, qword ptr [r12 + 160]
 call rt_proc_resume_frame@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain0_n30_α
 jmp xchain0_n33_α
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
 mov rdi, qword ptr [r12 + 1088]
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
  .globl proc_log10_α
proc_log10_α:
#=======================================================================================================================
    .global proc_log10_α
    .global proc_log10_β
    .global proc_log10_γ
    .global proc_log10_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_log10_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 864], rax
 pop rsi
proc_log10_α_body:
 xchain50_n0_α:
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
# IR_LIT_STRING
 xchain50_n1_α:
 mov qword ptr [r12 + 816], 1
 mov rax, qword ptr [rip + .Lx53_0]
 mov qword ptr [r12 + 824], rax
 jmp xchain50_n2_α
 xchain50_n1_β:
 jmp proc_log10_ω
.Lx53_0:
 .quad .Lx53_0_s
.Lx53_0_s:
 .string "log"
# IR_LIT_STRING
 xchain50_n2_α:
 mov qword ptr [r12 + 752], 1
 mov rax, qword ptr [rip + .Lx54_0]
 mov qword ptr [r12 + 760], rax
 jmp xchain50_n3_α
 xchain50_n2_β:
 jmp proc_log10_ω
.Lx54_0:
 .quad .Lx54_0_s
.Lx54_0_s:
 .string "log"
# IR_LIT_STRING
 xchain50_n3_α:
 mov qword ptr [r12 + 688], 1
 mov rax, qword ptr [rip + .Lx55_0]
 mov qword ptr [r12 + 696], rax
 jmp xchain50_n4_α
 xchain50_n3_β:
 jmp proc_log10_ω
.Lx55_0:
 .quad .Lx55_0_s
.Lx55_0_s:
 .string "log"
# IR_LIT_STRING
 xchain50_n4_α:
 mov qword ptr [r12 + 624], 1
 mov rax, qword ptr [rip + .Lx56_0]
 mov qword ptr [r12 + 632], rax
 jmp xchain50_n5_α
 xchain50_n4_β:
 jmp proc_log10_ω
.Lx56_0:
 .quad .Lx56_0_s
.Lx56_0_s:
 .string "log"
# IR_LIT_STRING
 xchain50_n5_α:
 mov qword ptr [r12 + 560], 1
 mov rax, qword ptr [rip + .Lx57_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain50_n6_α
 xchain50_n5_β:
 jmp proc_log10_ω
.Lx57_0:
 .quad .Lx57_0_s
.Lx57_0_s:
 .string "log"
# IR_LIT_STRING
 xchain50_n6_α:
 mov qword ptr [r12 + 496], 1
 mov rax, qword ptr [rip + .Lx58_0]
 mov qword ptr [r12 + 504], rax
 jmp xchain50_n7_α
 xchain50_n6_β:
 jmp proc_log10_ω
.Lx58_0:
 .quad .Lx58_0_s
.Lx58_0_s:
 .string "log"
# IR_LIT_STRING
 xchain50_n7_α:
 mov qword ptr [r12 + 432], 1
 mov rax, qword ptr [rip + .Lx59_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain50_n8_α
 xchain50_n7_β:
 jmp proc_log10_ω
.Lx59_0:
 .quad .Lx59_0_s
.Lx59_0_s:
 .string "log"
# IR_LIT_STRING
 xchain50_n8_α:
 mov qword ptr [r12 + 368], 1
 mov rax, qword ptr [rip + .Lx60_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain50_n9_α
 xchain50_n8_β:
 jmp proc_log10_ω
.Lx60_0:
 .quad .Lx60_0_s
.Lx60_0_s:
 .string "log"
# IR_LIT_STRING
 xchain50_n9_α:
 mov qword ptr [r12 + 304], 1
 mov rax, qword ptr [rip + .Lx61_0]
 mov qword ptr [r12 + 312], rax
 jmp xchain50_n10_α
 xchain50_n9_β:
 jmp proc_log10_ω
.Lx61_0:
 .quad .Lx61_0_s
.Lx61_0_s:
 .string "log"
# IR_LIT_STRING
 xchain50_n10_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx62_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain50_n11_α
 xchain50_n10_β:
 jmp proc_log10_ω
.Lx62_0:
 .quad .Lx62_0_s
.Lx62_0_s:
 .string "log"
# IR_LIT_STRING
 xchain50_n11_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx63_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain50_n12_α
 xchain50_n11_β:
 jmp proc_log10_ω
.Lx63_0:
 .quad .Lx63_0_s
.Lx63_0_s:
 .string "x"
 xchain50_n12_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+240] -> [zr+208]
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 216], rax
# marshal arg1 = producer-box slot [zr+176] -> [zr+224]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 232], rax
  .section .rodata
  .Lrkfn65: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn65]
 lea rsi, [r12 + 208]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je proc_log10_ω
 jmp xchain50_n13_α
 xchain50_n12_β:
 jmp proc_log10_ω
 xchain50_n13_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+304] -> [zr+272]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 280], rax
# marshal arg1 = producer-box slot [zr+192] -> [zr+288]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 296], rax
  .section .rodata
  .Lrkfn67: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn67]
 lea rsi, [r12 + 272]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je proc_log10_ω
 jmp xchain50_n14_α
 xchain50_n13_β:
 jmp proc_log10_ω
 xchain50_n14_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+336]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 344], rax
# marshal arg1 = producer-box slot [zr+256] -> [zr+352]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 360], rax
  .section .rodata
  .Lrkfn69: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn69]
 lea rsi, [r12 + 336]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je proc_log10_ω
 jmp xchain50_n15_α
 xchain50_n14_β:
 jmp proc_log10_ω
 xchain50_n15_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+432] -> [zr+400]
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 408], rax
# marshal arg1 = producer-box slot [zr+320] -> [zr+416]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 424], rax
  .section .rodata
  .Lrkfn71: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn71]
 lea rsi, [r12 + 400]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je proc_log10_ω
 jmp xchain50_n16_α
 xchain50_n15_β:
 jmp proc_log10_ω
 xchain50_n16_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+496] -> [zr+464]
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 472], rax
# marshal arg1 = producer-box slot [zr+384] -> [zr+480]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 488], rax
  .section .rodata
  .Lrkfn73: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn73]
 lea rsi, [r12 + 464]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 cmp eax, 99
 je proc_log10_ω
 jmp xchain50_n17_α
 xchain50_n16_β:
 jmp proc_log10_ω
 xchain50_n17_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+560] -> [zr+528]
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 536], rax
# marshal arg1 = producer-box slot [zr+448] -> [zr+544]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 552], rax
  .section .rodata
  .Lrkfn75: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn75]
 lea rsi, [r12 + 528]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je proc_log10_ω
 jmp xchain50_n18_α
 xchain50_n17_β:
 jmp proc_log10_ω
 xchain50_n18_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+624] -> [zr+592]
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 600], rax
# marshal arg1 = producer-box slot [zr+512] -> [zr+608]
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 616], rax
  .section .rodata
  .Lrkfn77: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn77]
 lea rsi, [r12 + 592]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 cmp eax, 99
 je proc_log10_ω
 jmp xchain50_n19_α
 xchain50_n18_β:
 jmp proc_log10_ω
 xchain50_n19_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+688] -> [zr+656]
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 664], rax
# marshal arg1 = producer-box slot [zr+576] -> [zr+672]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 680], rax
  .section .rodata
  .Lrkfn79: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn79]
 lea rsi, [r12 + 656]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 cmp eax, 99
 je proc_log10_ω
 jmp xchain50_n20_α
 xchain50_n19_β:
 jmp proc_log10_ω
 xchain50_n20_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+752] -> [zr+720]
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 728], rax
# marshal arg1 = producer-box slot [zr+640] -> [zr+736]
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 744], rax
  .section .rodata
  .Lrkfn81: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn81]
 lea rsi, [r12 + 720]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 cmp eax, 99
 je proc_log10_ω
 jmp xchain50_n21_α
 xchain50_n20_β:
 jmp proc_log10_ω
 xchain50_n21_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+816] -> [zr+784]
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 792], rax
# marshal arg1 = producer-box slot [zr+704] -> [zr+800]
 mov rax, qword ptr [r12 + 704]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 808], rax
  .section .rodata
  .Lrkfn83: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn83]
 lea rsi, [r12 + 784]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 cmp eax, 99
 je xchain50_n23_α
 jmp xchain50_n22_α
 xchain50_n21_β:
 jmp xchain50_n23_α
# IR_LIT_STRING
 xchain50_n22_α:
 mov qword ptr [r12 + 832], 1
 mov rax, qword ptr [rip + .Lx84_0]
 mov qword ptr [r12 + 840], rax
 jmp xchain50_n24_α
 xchain50_n22_β:
 jmp xchain50_n23_α
.Lx84_0:
 .quad .Lx84_0_s
.Lx84_0_s:
 .string "x"
 xchain50_n23_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+80]
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
# IR_VAR_REF local
 xchain50_n24_α:
 lea rdi, [r12 + 880]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 jmp xchain50_n25_α
 xchain50_n24_β:
 jmp xchain50_n23_α
 xchain50_n25_α:
  .section .rodata
  .Lcall61_pname: .string "d"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 768]
 mov rdx, qword ptr [r12 + 776]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 832]
 mov rdx, qword ptr [r12 + 840]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 848]
 mov rdx, qword ptr [r12 + 856]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall61_pname]
 mov esi, 3
 lea rdx, [r12 + 160]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain50_n23_α
 jmp xchain50_n26_α
xchain50_n25_β:
 mov rdi, qword ptr [r12 + 160]
 call rt_proc_resume_frame@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain50_n23_α
 jmp xchain50_n26_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain50_n26_α:
 lea rax, [rip + xchain50_n25_β]
 mov qword ptr [r12 + 32], rax
 jmp proc_log10_γ
 xchain50_n26_β:
 jmp proc_log10_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain50_n27_α:
 jmp qword ptr [r12 + 32]
 xchain50_n27_β:
 jmp proc_log10_ω
proc_log10_β:
jmp xchain50_n27_α
proc_log10_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 864]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_log10_ω:
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
  .globl proc_ops8_α
proc_ops8_α:
#=======================================================================================================================
    .global proc_ops8_α
    .global proc_ops8_β
    .global proc_ops8_γ
    .global proc_ops8_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_ops8_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 896], rax
 pop rsi
proc_ops8_α_body:
 xchain94_n0_α:
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
# IR_LIT_STRING
 xchain94_n1_α:
 mov qword ptr [r12 + 848], 1
 mov rax, qword ptr [rip + .Lx97_0]
 mov qword ptr [r12 + 856], rax
 jmp xchain94_n2_α
 xchain94_n1_β:
 jmp proc_ops8_ω
.Lx97_0:
 .quad .Lx97_0_s
.Lx97_0_s:
 .string "*"
# IR_LIT_STRING
 xchain94_n2_α:
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx98_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain94_n3_α
 xchain94_n2_β:
 jmp proc_ops8_ω
.Lx98_0:
 .quad .Lx98_0_s
.Lx98_0_s:
 .string "+"
# IR_LIT_STRING
 xchain94_n3_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx99_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain94_n4_α
 xchain94_n3_β:
 jmp proc_ops8_ω
.Lx99_0:
 .quad .Lx99_0_s
.Lx99_0_s:
 .string "x"
# IR_LIT_INTEGER
 xchain94_n4_α:
 mov qword ptr [r12 + 192], 6
 mov rax, qword ptr [rip + .Lx100_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain94_n5_α
 xchain94_n4_β:
 jmp proc_ops8_ω
.Lx100_0:
 .quad 1
 xchain94_n5_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+272] -> [zr+224]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 232], rax
# marshal arg1 = producer-box slot [zr+176] -> [zr+240]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 248], rax
# marshal arg2 = producer-box slot [zr+192] -> [zr+256]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lrkfn102: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn102]
 lea rsi, [r12 + 224]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je proc_ops8_ω
 jmp xchain94_n6_α
 xchain94_n5_β:
 jmp proc_ops8_ω
# IR_LIT_STRING
 xchain94_n6_α:
 mov qword ptr [r12 + 768], 1
 mov rax, qword ptr [rip + .Lx103_0]
 mov qword ptr [r12 + 776], rax
 jmp xchain94_n7_α
 xchain94_n6_β:
 jmp proc_ops8_ω
.Lx103_0:
 .quad .Lx103_0_s
.Lx103_0_s:
 .string "*"
# IR_LIT_STRING
 xchain94_n7_α:
 mov qword ptr [r12 + 480], 1
 mov rax, qword ptr [rip + .Lx104_0]
 mov qword ptr [r12 + 488], rax
 jmp xchain94_n8_α
 xchain94_n7_β:
 jmp proc_ops8_ω
.Lx104_0:
 .quad .Lx104_0_s
.Lx104_0_s:
 .string "+"
# IR_LIT_STRING
 xchain94_n8_α:
 mov qword ptr [r12 + 384], 1
 mov rax, qword ptr [rip + .Lx105_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain94_n9_α
 xchain94_n8_β:
 jmp proc_ops8_ω
.Lx105_0:
 .quad .Lx105_0_s
.Lx105_0_s:
 .string "^"
# IR_LIT_STRING
 xchain94_n9_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx106_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain94_n10_α
 xchain94_n9_β:
 jmp proc_ops8_ω
.Lx106_0:
 .quad .Lx106_0_s
.Lx106_0_s:
 .string "x"
# IR_LIT_INTEGER
 xchain94_n10_α:
 mov qword ptr [r12 + 304], 6
 mov rax, qword ptr [rip + .Lx107_0]
 mov qword ptr [r12 + 312], rax
 jmp xchain94_n11_α
 xchain94_n10_β:
 jmp proc_ops8_ω
.Lx107_0:
 .quad 2
 xchain94_n11_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+336]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 344], rax
# marshal arg1 = producer-box slot [zr+288] -> [zr+352]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 360], rax
# marshal arg2 = producer-box slot [zr+304] -> [zr+368]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 376], rax
  .section .rodata
  .Lrkfn109: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn109]
 lea rsi, [r12 + 336]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je proc_ops8_ω
 jmp xchain94_n12_α
 xchain94_n11_β:
 jmp proc_ops8_ω
# IR_LIT_INTEGER
 xchain94_n12_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx110_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain94_n13_α
 xchain94_n12_β:
 jmp proc_ops8_ω
.Lx110_0:
 .quad 2
 xchain94_n13_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+480] -> [zr+432]
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 440], rax
# marshal arg1 = producer-box slot [zr+320] -> [zr+448]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 456], rax
# marshal arg2 = producer-box slot [zr+400] -> [zr+464]
 mov rax, qword ptr [r12 + 400]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 472], rax
  .section .rodata
  .Lrkfn112: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn112]
 lea rsi, [r12 + 432]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 cmp eax, 99
 je proc_ops8_ω
 jmp xchain94_n14_α
 xchain94_n13_β:
 jmp proc_ops8_ω
# IR_LIT_STRING
 xchain94_n14_α:
 mov qword ptr [r12 + 688], 1
 mov rax, qword ptr [rip + .Lx113_0]
 mov qword ptr [r12 + 696], rax
 jmp xchain94_n15_α
 xchain94_n14_β:
 jmp proc_ops8_ω
.Lx113_0:
 .quad .Lx113_0_s
.Lx113_0_s:
 .string "+"
# IR_LIT_STRING
 xchain94_n15_α:
 mov qword ptr [r12 + 592], 1
 mov rax, qword ptr [rip + .Lx114_0]
 mov qword ptr [r12 + 600], rax
 jmp xchain94_n16_α
 xchain94_n15_β:
 jmp proc_ops8_ω
.Lx114_0:
 .quad .Lx114_0_s
.Lx114_0_s:
 .string "^"
# IR_LIT_STRING
 xchain94_n16_α:
 mov qword ptr [r12 + 496], 1
 mov rax, qword ptr [rip + .Lx115_0]
 mov qword ptr [r12 + 504], rax
 jmp xchain94_n17_α
 xchain94_n16_β:
 jmp proc_ops8_ω
.Lx115_0:
 .quad .Lx115_0_s
.Lx115_0_s:
 .string "x"
# IR_LIT_INTEGER
 xchain94_n17_α:
 mov qword ptr [r12 + 512], 6
 mov rax, qword ptr [rip + .Lx116_0]
 mov qword ptr [r12 + 520], rax
 jmp xchain94_n18_α
 xchain94_n17_β:
 jmp proc_ops8_ω
.Lx116_0:
 .quad 3
 xchain94_n18_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+592] -> [zr+544]
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 552], rax
# marshal arg1 = producer-box slot [zr+496] -> [zr+560]
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 568], rax
# marshal arg2 = producer-box slot [zr+512] -> [zr+576]
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 584], rax
  .section .rodata
  .Lrkfn118: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn118]
 lea rsi, [r12 + 544]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 cmp eax, 99
 je proc_ops8_ω
 jmp xchain94_n19_α
 xchain94_n18_β:
 jmp proc_ops8_ω
# IR_LIT_INTEGER
 xchain94_n19_α:
 mov qword ptr [r12 + 608], 6
 mov rax, qword ptr [rip + .Lx119_0]
 mov qword ptr [r12 + 616], rax
 jmp xchain94_n20_α
 xchain94_n19_β:
 jmp proc_ops8_ω
.Lx119_0:
 .quad 3
 xchain94_n20_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+688] -> [zr+640]
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 648], rax
# marshal arg1 = producer-box slot [zr+528] -> [zr+656]
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 536]
 mov qword ptr [r12 + 664], rax
# marshal arg2 = producer-box slot [zr+608] -> [zr+672]
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 680], rax
  .section .rodata
  .Lrkfn121: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn121]
 lea rsi, [r12 + 640]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 cmp eax, 99
 je proc_ops8_ω
 jmp xchain94_n21_α
 xchain94_n20_β:
 jmp proc_ops8_ω
 xchain94_n21_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+768] -> [zr+720]
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 728], rax
# marshal arg1 = producer-box slot [zr+416] -> [zr+736]
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 744], rax
# marshal arg2 = producer-box slot [zr+624] -> [zr+752]
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 752], rax
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 760], rax
  .section .rodata
  .Lrkfn123: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn123]
 lea rsi, [r12 + 720]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 cmp eax, 99
 je proc_ops8_ω
 jmp xchain94_n22_α
 xchain94_n21_β:
 jmp proc_ops8_ω
 xchain94_n22_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+848] -> [zr+800]
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 808], rax
# marshal arg1 = producer-box slot [zr+208] -> [zr+816]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 824], rax
# marshal arg2 = producer-box slot [zr+704] -> [zr+832]
 mov rax, qword ptr [r12 + 704]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 840], rax
  .section .rodata
  .Lrkfn125: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn125]
 lea rsi, [r12 + 800]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 cmp eax, 99
 je xchain94_n24_α
 jmp xchain94_n23_α
 xchain94_n22_β:
 jmp xchain94_n24_α
# IR_LIT_STRING
 xchain94_n23_α:
 mov qword ptr [r12 + 864], 1
 mov rax, qword ptr [rip + .Lx126_0]
 mov qword ptr [r12 + 872], rax
 jmp xchain94_n25_α
 xchain94_n23_β:
 jmp xchain94_n24_α
.Lx126_0:
 .quad .Lx126_0_s
.Lx126_0_s:
 .string "x"
 xchain94_n24_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+80]
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
# IR_VAR_REF local
 xchain94_n25_α:
 lea rdi, [r12 + 912]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 jmp xchain94_n26_α
 xchain94_n25_β:
 jmp xchain94_n24_α
 xchain94_n26_α:
  .section .rodata
  .Lcall90_pname: .string "d"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 784]
 mov rdx, qword ptr [r12 + 792]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 864]
 mov rdx, qword ptr [r12 + 872]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 880]
 mov rdx, qword ptr [r12 + 888]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall90_pname]
 mov esi, 3
 lea rdx, [r12 + 160]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain94_n24_α
 jmp xchain94_n27_α
xchain94_n26_β:
 mov rdi, qword ptr [r12 + 160]
 call rt_proc_resume_frame@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain94_n24_α
 jmp xchain94_n27_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain94_n27_α:
 lea rax, [rip + xchain94_n26_β]
 mov qword ptr [r12 + 32], rax
 jmp proc_ops8_γ
 xchain94_n27_β:
 jmp proc_ops8_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain94_n28_α:
 jmp qword ptr [r12 + 32]
 xchain94_n28_β:
 jmp proc_ops8_ω
proc_ops8_β:
jmp xchain94_n28_α
proc_ops8_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 896]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_ops8_ω:
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
 mov qword ptr [r12 + 6800], rax
 pop rsi
proc_d_α_body:
 xchain136_n0_α:
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
# IR_VAR_REF local
 xchain136_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6672], rax
 mov qword ptr [r12 + 6680], rdx
 jmp xchain136_n2_α
 xchain136_n1_β:
 jmp xchain136_n7_α
# IR_LIT_STRING
 xchain136_n2_α:
 mov qword ptr [r12 + 6784], 1
 mov rax, qword ptr [rip + .Lx141_0]
 mov qword ptr [r12 + 6792], rax
 jmp xchain136_n3_α
 xchain136_n2_β:
 jmp proc_d_ω
.Lx141_0:
 .quad .Lx141_0_s
.Lx141_0_s:
 .string "+"
# IR_VAR_REF local
 xchain136_n3_α:
 lea rdi, [r12 + 6832]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6688], rax
 mov qword ptr [r12 + 6696], rdx
 jmp xchain136_n4_α
 xchain136_n3_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain136_n4_α:
 lea rdi, [r12 + 6816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6704], rax
 mov qword ptr [r12 + 6712], rdx
 jmp xchain136_n5_α
 xchain136_n4_β:
 jmp proc_d_ω
 xchain136_n5_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6784] -> [zr+6736]
 mov rax, qword ptr [r12 + 6784]
 mov qword ptr [r12 + 6736], rax
 mov rax, qword ptr [r12 + 6792]
 mov qword ptr [r12 + 6744], rax
# marshal arg1 = producer-box slot [zr+6688] -> [zr+6752]
 mov rax, qword ptr [r12 + 6688]
 mov qword ptr [r12 + 6752], rax
 mov rax, qword ptr [r12 + 6696]
 mov qword ptr [r12 + 6760], rax
# marshal arg2 = producer-box slot [zr+6704] -> [zr+6768]
 mov rax, qword ptr [r12 + 6704]
 mov qword ptr [r12 + 6768], rax
 mov rax, qword ptr [r12 + 6712]
 mov qword ptr [r12 + 6776], rax
  .section .rodata
  .Lrkfn147: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn147]
 lea rsi, [r12 + 6736]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6720], rax
 mov qword ptr [r12 + 6728], rdx
 cmp eax, 99
 je xchain136_n7_α
 jmp xchain136_n6_α
 xchain136_n5_β:
 jmp xchain136_n7_α
 xchain136_n6_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6672] -> [zr+6640]
 mov rax, qword ptr [r12 + 6672]
 mov qword ptr [r12 + 6640], rax
 mov rax, qword ptr [r12 + 6680]
 mov qword ptr [r12 + 6648], rax
# marshal arg1 = producer-box slot [zr+6720] -> [zr+6656]
 mov rax, qword ptr [r12 + 6720]
 mov qword ptr [r12 + 6656], rax
 mov rax, qword ptr [r12 + 6728]
 mov qword ptr [r12 + 6664], rax
  .section .rodata
  .Lrkfn149: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn149]
 lea rsi, [r12 + 6640]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6624], rax
 mov qword ptr [r12 + 6632], rdx
 cmp eax, 99
 je xchain136_n7_α
 jmp xchain136_n8_α
 xchain136_n6_β:
 jmp xchain136_n7_α
 xchain136_n7_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+6096]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 6096], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 6104], rax
  .section .rodata
  .Lrkfn151: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn151]
 lea rsi, [r12 + 6096]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6080], rax
 mov qword ptr [r12 + 6088], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain136_n9_α
 xchain136_n7_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain136_n8_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6592], rax
 mov qword ptr [r12 + 6600], rdx
 jmp xchain136_n10_α
 xchain136_n8_β:
 jmp xchain136_n7_α
# IR_VAR_REF local
 xchain136_n9_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5952], rax
 mov qword ptr [r12 + 5960], rdx
 jmp xchain136_n11_α
 xchain136_n9_β:
 jmp xchain136_n20_α
# IR_VAR_REF local
 xchain136_n10_α:
 lea rdi, [r12 + 6864]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6608], rax
 mov qword ptr [r12 + 6616], rdx
 jmp xchain136_n12_α
 xchain136_n10_β:
 jmp xchain136_n7_α
# IR_LIT_STRING
 xchain136_n11_α:
 mov qword ptr [r12 + 6064], 1
 mov rax, qword ptr [rip + .Lx158_0]
 mov qword ptr [r12 + 6072], rax
 jmp xchain136_n13_α
 xchain136_n11_β:
 jmp proc_d_ω
.Lx158_0:
 .quad .Lx158_0_s
.Lx158_0_s:
 .string "-"
 xchain136_n12_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6592] -> [zr+6560]
 mov rax, qword ptr [r12 + 6592]
 mov qword ptr [r12 + 6560], rax
 mov rax, qword ptr [r12 + 6600]
 mov qword ptr [r12 + 6568], rax
# marshal arg1 = producer-box slot [zr+6608] -> [zr+6576]
 mov rax, qword ptr [r12 + 6608]
 mov qword ptr [r12 + 6576], rax
 mov rax, qword ptr [r12 + 6616]
 mov qword ptr [r12 + 6584], rax
  .section .rodata
  .Lrkfn160: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn160]
 lea rsi, [r12 + 6560]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6544], rax
 mov qword ptr [r12 + 6552], rdx
 cmp eax, 99
 je xchain136_n7_α
 jmp xchain136_n14_α
 xchain136_n12_β:
 jmp xchain136_n7_α
# IR_VAR_REF local
 xchain136_n13_α:
 lea rdi, [r12 + 6832]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5968], rax
 mov qword ptr [r12 + 5976], rdx
 jmp xchain136_n15_α
 xchain136_n13_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain136_n14_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6416], rax
 mov qword ptr [r12 + 6424], rdx
 jmp xchain136_n16_α
 xchain136_n14_β:
 jmp xchain136_n7_α
# IR_VAR_REF local
 xchain136_n15_α:
 lea rdi, [r12 + 6816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5984], rax
 mov qword ptr [r12 + 5992], rdx
 jmp xchain136_n17_α
 xchain136_n15_β:
 jmp proc_d_ω
# IR_LIT_STRING
 xchain136_n16_α:
 mov qword ptr [r12 + 6528], 1
 mov rax, qword ptr [rip + .Lx167_0]
 mov qword ptr [r12 + 6536], rax
 jmp xchain136_n18_α
 xchain136_n16_β:
 jmp proc_d_ω
.Lx167_0:
 .quad .Lx167_0_s
.Lx167_0_s:
 .string "+"
 xchain136_n17_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6064] -> [zr+6016]
 mov rax, qword ptr [r12 + 6064]
 mov qword ptr [r12 + 6016], rax
 mov rax, qword ptr [r12 + 6072]
 mov qword ptr [r12 + 6024], rax
# marshal arg1 = producer-box slot [zr+5968] -> [zr+6032]
 mov rax, qword ptr [r12 + 5968]
 mov qword ptr [r12 + 6032], rax
 mov rax, qword ptr [r12 + 5976]
 mov qword ptr [r12 + 6040], rax
# marshal arg2 = producer-box slot [zr+5984] -> [zr+6048]
 mov rax, qword ptr [r12 + 5984]
 mov qword ptr [r12 + 6048], rax
 mov rax, qword ptr [r12 + 5992]
 mov qword ptr [r12 + 6056], rax
  .section .rodata
  .Lrkfn169: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn169]
 lea rsi, [r12 + 6016]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6000], rax
 mov qword ptr [r12 + 6008], rdx
 cmp eax, 99
 je xchain136_n20_α
 jmp xchain136_n19_α
 xchain136_n17_β:
 jmp xchain136_n20_α
# IR_VAR_REF local
 xchain136_n18_α:
 lea rdi, [r12 + 6880]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6432], rax
 mov qword ptr [r12 + 6440], rdx
 jmp xchain136_n21_α
 xchain136_n18_β:
 jmp proc_d_ω
 xchain136_n19_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5952] -> [zr+5920]
 mov rax, qword ptr [r12 + 5952]
 mov qword ptr [r12 + 5920], rax
 mov rax, qword ptr [r12 + 5960]
 mov qword ptr [r12 + 5928], rax
# marshal arg1 = producer-box slot [zr+6000] -> [zr+5936]
 mov rax, qword ptr [r12 + 6000]
 mov qword ptr [r12 + 5936], rax
 mov rax, qword ptr [r12 + 6008]
 mov qword ptr [r12 + 5944], rax
  .section .rodata
  .Lrkfn173: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn173]
 lea rsi, [r12 + 5920]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5904], rax
 mov qword ptr [r12 + 5912], rdx
 cmp eax, 99
 je xchain136_n20_α
 jmp xchain136_n22_α
 xchain136_n19_β:
 jmp xchain136_n20_α
 xchain136_n20_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+5376]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 5376], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 5384], rax
  .section .rodata
  .Lrkfn175: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn175]
 lea rsi, [r12 + 5376]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5360], rax
 mov qword ptr [r12 + 5368], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain136_n23_α
 xchain136_n20_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain136_n21_α:
 lea rdi, [r12 + 6896]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6448], rax
 mov qword ptr [r12 + 6456], rdx
 jmp xchain136_n24_α
 xchain136_n21_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain136_n22_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5872], rax
 mov qword ptr [r12 + 5880], rdx
 jmp xchain136_n25_α
 xchain136_n22_β:
 jmp xchain136_n20_α
# IR_VAR_REF local
 xchain136_n23_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5232], rax
 mov qword ptr [r12 + 5240], rdx
 jmp xchain136_n26_α
 xchain136_n23_β:
 jmp xchain136_n39_α
 xchain136_n24_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6528] -> [zr+6480]
 mov rax, qword ptr [r12 + 6528]
 mov qword ptr [r12 + 6480], rax
 mov rax, qword ptr [r12 + 6536]
 mov qword ptr [r12 + 6488], rax
# marshal arg1 = producer-box slot [zr+6432] -> [zr+6496]
 mov rax, qword ptr [r12 + 6432]
 mov qword ptr [r12 + 6496], rax
 mov rax, qword ptr [r12 + 6440]
 mov qword ptr [r12 + 6504], rax
# marshal arg2 = producer-box slot [zr+6448] -> [zr+6512]
 mov rax, qword ptr [r12 + 6448]
 mov qword ptr [r12 + 6512], rax
 mov rax, qword ptr [r12 + 6456]
 mov qword ptr [r12 + 6520], rax
  .section .rodata
  .Lrkfn183: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn183]
 lea rsi, [r12 + 6480]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6464], rax
 mov qword ptr [r12 + 6472], rdx
 cmp eax, 99
 je xchain136_n7_α
 jmp xchain136_n27_α
 xchain136_n24_β:
 jmp xchain136_n7_α
# IR_VAR_REF local
 xchain136_n25_α:
 lea rdi, [r12 + 6864]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5888], rax
 mov qword ptr [r12 + 5896], rdx
 jmp xchain136_n28_α
 xchain136_n25_β:
 jmp xchain136_n20_α
# IR_LIT_STRING
 xchain136_n26_α:
 mov qword ptr [r12 + 5344], 1
 mov rax, qword ptr [rip + .Lx186_0]
 mov qword ptr [r12 + 5352], rax
 jmp xchain136_n29_α
 xchain136_n26_β:
 jmp proc_d_ω
.Lx186_0:
 .quad .Lx186_0_s
.Lx186_0_s:
 .string "*"
 xchain136_n27_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6416] -> [zr+6384]
 mov rax, qword ptr [r12 + 6416]
 mov qword ptr [r12 + 6384], rax
 mov rax, qword ptr [r12 + 6424]
 mov qword ptr [r12 + 6392], rax
# marshal arg1 = producer-box slot [zr+6464] -> [zr+6400]
 mov rax, qword ptr [r12 + 6464]
 mov qword ptr [r12 + 6400], rax
 mov rax, qword ptr [r12 + 6472]
 mov qword ptr [r12 + 6408], rax
  .section .rodata
  .Lrkfn188: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn188]
 lea rsi, [r12 + 6384]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6368], rax
 mov qword ptr [r12 + 6376], rdx
 cmp eax, 99
 je xchain136_n7_α
 jmp xchain136_n30_α
 xchain136_n27_β:
 jmp xchain136_n7_α
 xchain136_n28_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5872] -> [zr+5840]
 mov rax, qword ptr [r12 + 5872]
 mov qword ptr [r12 + 5840], rax
 mov rax, qword ptr [r12 + 5880]
 mov qword ptr [r12 + 5848], rax
# marshal arg1 = producer-box slot [zr+5888] -> [zr+5856]
 mov rax, qword ptr [r12 + 5888]
 mov qword ptr [r12 + 5856], rax
 mov rax, qword ptr [r12 + 5896]
 mov qword ptr [r12 + 5864], rax
  .section .rodata
  .Lrkfn190: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn190]
 lea rsi, [r12 + 5840]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5824], rax
 mov qword ptr [r12 + 5832], rdx
 cmp eax, 99
 je xchain136_n20_α
 jmp xchain136_n31_α
 xchain136_n28_β:
 jmp xchain136_n20_α
# IR_VAR_REF local
 xchain136_n29_α:
 lea rdi, [r12 + 6832]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5248], rax
 mov qword ptr [r12 + 5256], rdx
 jmp xchain136_n32_α
 xchain136_n29_β:
 jmp proc_d_ω
 xchain136_n30_α:
# IR_CUT
 jmp xchain136_n33_α
 xchain136_n30_β:
 jmp xchain136_n7_α
# IR_VAR_REF local
 xchain136_n31_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5696], rax
 mov qword ptr [r12 + 5704], rdx
 jmp xchain136_n34_α
 xchain136_n31_β:
 jmp xchain136_n20_α
# IR_VAR_REF local
 xchain136_n32_α:
 lea rdi, [r12 + 6816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5264], rax
 mov qword ptr [r12 + 5272], rdx
 jmp xchain136_n35_α
 xchain136_n32_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain136_n33_α:
 lea rdi, [r12 + 6832]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6320], rax
 mov qword ptr [r12 + 6328], rdx
 jmp xchain136_n36_α
 xchain136_n33_β:
 jmp xchain136_n49_α
# IR_LIT_STRING
 xchain136_n34_α:
 mov qword ptr [r12 + 5808], 1
 mov rax, qword ptr [rip + .Lx200_0]
 mov qword ptr [r12 + 5816], rax
 jmp xchain136_n37_α
 xchain136_n34_β:
 jmp proc_d_ω
.Lx200_0:
 .quad .Lx200_0_s
.Lx200_0_s:
 .string "-"
 xchain136_n35_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5344] -> [zr+5296]
 mov rax, qword ptr [r12 + 5344]
 mov qword ptr [r12 + 5296], rax
 mov rax, qword ptr [r12 + 5352]
 mov qword ptr [r12 + 5304], rax
# marshal arg1 = producer-box slot [zr+5248] -> [zr+5312]
 mov rax, qword ptr [r12 + 5248]
 mov qword ptr [r12 + 5312], rax
 mov rax, qword ptr [r12 + 5256]
 mov qword ptr [r12 + 5320], rax
# marshal arg2 = producer-box slot [zr+5264] -> [zr+5328]
 mov rax, qword ptr [r12 + 5264]
 mov qword ptr [r12 + 5328], rax
 mov rax, qword ptr [r12 + 5272]
 mov qword ptr [r12 + 5336], rax
  .section .rodata
  .Lrkfn202: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn202]
 lea rsi, [r12 + 5296]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5280], rax
 mov qword ptr [r12 + 5288], rdx
 cmp eax, 99
 je xchain136_n39_α
 jmp xchain136_n38_α
 xchain136_n35_β:
 jmp xchain136_n39_α
# IR_VAR_REF local
 xchain136_n36_α:
 lea rdi, [r12 + 6864]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6336], rax
 mov qword ptr [r12 + 6344], rdx
 jmp xchain136_n40_α
 xchain136_n36_β:
 jmp xchain136_n49_α
# IR_VAR_REF local
 xchain136_n37_α:
 lea rdi, [r12 + 6880]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5712], rax
 mov qword ptr [r12 + 5720], rdx
 jmp xchain136_n41_α
 xchain136_n37_β:
 jmp proc_d_ω
 xchain136_n38_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5232] -> [zr+5200]
 mov rax, qword ptr [r12 + 5232]
 mov qword ptr [r12 + 5200], rax
 mov rax, qword ptr [r12 + 5240]
 mov qword ptr [r12 + 5208], rax
# marshal arg1 = producer-box slot [zr+5280] -> [zr+5216]
 mov rax, qword ptr [r12 + 5280]
 mov qword ptr [r12 + 5216], rax
 mov rax, qword ptr [r12 + 5288]
 mov qword ptr [r12 + 5224], rax
  .section .rodata
  .Lrkfn208: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn208]
 lea rsi, [r12 + 5200]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5184], rax
 mov qword ptr [r12 + 5192], rdx
 cmp eax, 99
 je xchain136_n39_α
 jmp xchain136_n42_α
 xchain136_n38_β:
 jmp xchain136_n39_α
 xchain136_n39_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+4464]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 4464], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 4472], rax
  .section .rodata
  .Lrkfn210: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn210]
 lea rsi, [r12 + 4464]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4448], rax
 mov qword ptr [r12 + 4456], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain136_n43_α
 xchain136_n39_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain136_n40_α:
 lea rdi, [r12 + 6880]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6352], rax
 mov qword ptr [r12 + 6360], rdx
 jmp xchain136_n44_α
 xchain136_n40_β:
 jmp xchain136_n49_α
# IR_VAR_REF local
 xchain136_n41_α:
 lea rdi, [r12 + 6896]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5728], rax
 mov qword ptr [r12 + 5736], rdx
 jmp xchain136_n45_α
 xchain136_n41_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain136_n42_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5152], rax
 mov qword ptr [r12 + 5160], rdx
 jmp xchain136_n46_α
 xchain136_n42_β:
 jmp xchain136_n39_α
# IR_VAR_REF local
 xchain136_n43_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4320], rax
 mov qword ptr [r12 + 4328], rdx
 jmp xchain136_n47_α
 xchain136_n43_β:
 jmp xchain136_n65_α
 xchain136_n44_α:
  .section .rodata
  .Lcall137_pname: .string "d"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 6320]
 mov rdx, qword ptr [r12 + 6328]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 6336]
 mov rdx, qword ptr [r12 + 6344]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 6352]
 mov rdx, qword ptr [r12 + 6360]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall137_pname]
 mov esi, 3
 lea rdx, [r12 + 6304]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 6240], rax
 mov qword ptr [r12 + 6248], rdx
 cmp eax, 99
 je xchain136_n49_α
 jmp xchain136_n48_α
xchain136_n44_β:
 mov rdi, qword ptr [r12 + 6304]
 call rt_proc_resume_frame@PLT
 mov qword ptr [r12 + 6240], rax
 mov qword ptr [r12 + 6248], rdx
 cmp eax, 99
 je xchain136_n49_α
 jmp xchain136_n48_α
 xchain136_n45_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5808] -> [zr+5760]
 mov rax, qword ptr [r12 + 5808]
 mov qword ptr [r12 + 5760], rax
 mov rax, qword ptr [r12 + 5816]
 mov qword ptr [r12 + 5768], rax
# marshal arg1 = producer-box slot [zr+5712] -> [zr+5776]
 mov rax, qword ptr [r12 + 5712]
 mov qword ptr [r12 + 5776], rax
 mov rax, qword ptr [r12 + 5720]
 mov qword ptr [r12 + 5784], rax
# marshal arg2 = producer-box slot [zr+5728] -> [zr+5792]
 mov rax, qword ptr [r12 + 5728]
 mov qword ptr [r12 + 5792], rax
 mov rax, qword ptr [r12 + 5736]
 mov qword ptr [r12 + 5800], rax
  .section .rodata
  .Lrkfn221: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn221]
 lea rsi, [r12 + 5760]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5744], rax
 mov qword ptr [r12 + 5752], rdx
 cmp eax, 99
 je xchain136_n20_α
 jmp xchain136_n50_α
 xchain136_n45_β:
 jmp xchain136_n20_α
# IR_VAR_REF local
 xchain136_n46_α:
 lea rdi, [r12 + 6864]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5168], rax
 mov qword ptr [r12 + 5176], rdx
 jmp xchain136_n51_α
 xchain136_n46_β:
 jmp xchain136_n39_α
# IR_LIT_STRING
 xchain136_n47_α:
 mov qword ptr [r12 + 4432], 1
 mov rax, qword ptr [rip + .Lx224_0]
 mov qword ptr [r12 + 4440], rax
 jmp xchain136_n52_α
 xchain136_n47_β:
 jmp proc_d_ω
.Lx224_0:
 .quad .Lx224_0_s
.Lx224_0_s:
 .string "/"
# IR_VAR_REF local
 xchain136_n48_α:
 lea rdi, [r12 + 6816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6192], rax
 mov qword ptr [r12 + 6200], rdx
 jmp xchain136_n53_α
 xchain136_n48_β:
 jmp xchain136_n49_α
 xchain136_n49_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+128]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn228: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn228]
 lea rsi, [r12 + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je proc_d_ω
 jmp proc_d_ω
 xchain136_n49_β:
 jmp proc_d_ω
 xchain136_n50_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5696] -> [zr+5664]
 mov rax, qword ptr [r12 + 5696]
 mov qword ptr [r12 + 5664], rax
 mov rax, qword ptr [r12 + 5704]
 mov qword ptr [r12 + 5672], rax
# marshal arg1 = producer-box slot [zr+5744] -> [zr+5680]
 mov rax, qword ptr [r12 + 5744]
 mov qword ptr [r12 + 5680], rax
 mov rax, qword ptr [r12 + 5752]
 mov qword ptr [r12 + 5688], rax
  .section .rodata
  .Lrkfn230: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn230]
 lea rsi, [r12 + 5664]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5648], rax
 mov qword ptr [r12 + 5656], rdx
 cmp eax, 99
 je xchain136_n20_α
 jmp xchain136_n54_α
 xchain136_n50_β:
 jmp xchain136_n20_α
 xchain136_n51_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5152] -> [zr+5120]
 mov rax, qword ptr [r12 + 5152]
 mov qword ptr [r12 + 5120], rax
 mov rax, qword ptr [r12 + 5160]
 mov qword ptr [r12 + 5128], rax
# marshal arg1 = producer-box slot [zr+5168] -> [zr+5136]
 mov rax, qword ptr [r12 + 5168]
 mov qword ptr [r12 + 5136], rax
 mov rax, qword ptr [r12 + 5176]
 mov qword ptr [r12 + 5144], rax
  .section .rodata
  .Lrkfn232: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn232]
 lea rsi, [r12 + 5120]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5104], rax
 mov qword ptr [r12 + 5112], rdx
 cmp eax, 99
 je xchain136_n39_α
 jmp xchain136_n55_α
 xchain136_n51_β:
 jmp xchain136_n39_α
# IR_VAR_REF local
 xchain136_n52_α:
 lea rdi, [r12 + 6832]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4336], rax
 mov qword ptr [r12 + 4344], rdx
 jmp xchain136_n56_α
 xchain136_n52_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain136_n53_α:
 lea rdi, [r12 + 6864]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6208], rax
 mov qword ptr [r12 + 6216], rdx
 jmp xchain136_n57_α
 xchain136_n53_β:
 jmp xchain136_n49_α
 xchain136_n54_α:
# IR_CUT
 jmp xchain136_n58_α
 xchain136_n54_β:
 jmp xchain136_n20_α
# IR_VAR_REF local
 xchain136_n55_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4784], rax
 mov qword ptr [r12 + 4792], rdx
 jmp xchain136_n59_α
 xchain136_n55_β:
 jmp xchain136_n39_α
# IR_VAR_REF local
 xchain136_n56_α:
 lea rdi, [r12 + 6816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4352], rax
 mov qword ptr [r12 + 4360], rdx
 jmp xchain136_n60_α
 xchain136_n56_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain136_n57_α:
 lea rdi, [r12 + 6896]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6224], rax
 mov qword ptr [r12 + 6232], rdx
 jmp xchain136_n61_α
 xchain136_n57_β:
 jmp xchain136_n49_α
# IR_VAR_REF local
 xchain136_n58_α:
 lea rdi, [r12 + 6832]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5600], rax
 mov qword ptr [r12 + 5608], rdx
 jmp xchain136_n62_α
 xchain136_n58_β:
 jmp xchain136_n49_α
# IR_LIT_STRING
 xchain136_n59_α:
 mov qword ptr [r12 + 5088], 1
 mov rax, qword ptr [rip + .Lx246_0]
 mov qword ptr [r12 + 5096], rax
 jmp xchain136_n63_α
 xchain136_n59_β:
 jmp proc_d_ω
.Lx246_0:
 .quad .Lx246_0_s
.Lx246_0_s:
 .string "+"
 xchain136_n60_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4432] -> [zr+4384]
 mov rax, qword ptr [r12 + 4432]
 mov qword ptr [r12 + 4384], rax
 mov rax, qword ptr [r12 + 4440]
 mov qword ptr [r12 + 4392], rax
# marshal arg1 = producer-box slot [zr+4336] -> [zr+4400]
 mov rax, qword ptr [r12 + 4336]
 mov qword ptr [r12 + 4400], rax
 mov rax, qword ptr [r12 + 4344]
 mov qword ptr [r12 + 4408], rax
# marshal arg2 = producer-box slot [zr+4352] -> [zr+4416]
 mov rax, qword ptr [r12 + 4352]
 mov qword ptr [r12 + 4416], rax
 mov rax, qword ptr [r12 + 4360]
 mov qword ptr [r12 + 4424], rax
  .section .rodata
  .Lrkfn248: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn248]
 lea rsi, [r12 + 4384]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4368], rax
 mov qword ptr [r12 + 4376], rdx
 cmp eax, 99
 je xchain136_n65_α
 jmp xchain136_n64_α
 xchain136_n60_β:
 jmp xchain136_n65_α
 xchain136_n61_α:
  .section .rodata
  .Lcall154_pname: .string "d"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 6192]
 mov rdx, qword ptr [r12 + 6200]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 6208]
 mov rdx, qword ptr [r12 + 6216]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 6224]
 mov rdx, qword ptr [r12 + 6232]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall154_pname]
 mov esi, 3
 lea rdx, [r12 + 6176]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 6112], rax
 mov qword ptr [r12 + 6120], rdx
 cmp eax, 99
 je xchain136_n44_β
 jmp xchain136_n66_α
xchain136_n61_β:
 mov rdi, qword ptr [r12 + 6176]
 call rt_proc_resume_frame@PLT
 mov qword ptr [r12 + 6112], rax
 mov qword ptr [r12 + 6120], rdx
 cmp eax, 99
 je xchain136_n44_β
 jmp xchain136_n66_α
# IR_VAR_REF local
 xchain136_n62_α:
 lea rdi, [r12 + 6864]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5616], rax
 mov qword ptr [r12 + 5624], rdx
 jmp xchain136_n67_α
 xchain136_n62_β:
 jmp xchain136_n49_α
# IR_LIT_STRING
 xchain136_n63_α:
 mov qword ptr [r12 + 4896], 1
 mov rax, qword ptr [rip + .Lx252_0]
 mov qword ptr [r12 + 4904], rax
 jmp xchain136_n68_α
 xchain136_n63_β:
 jmp proc_d_ω
.Lx252_0:
 .quad .Lx252_0_s
.Lx252_0_s:
 .string "*"
 xchain136_n64_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4320] -> [zr+4288]
 mov rax, qword ptr [r12 + 4320]
 mov qword ptr [r12 + 4288], rax
 mov rax, qword ptr [r12 + 4328]
 mov qword ptr [r12 + 4296], rax
# marshal arg1 = producer-box slot [zr+4368] -> [zr+4304]
 mov rax, qword ptr [r12 + 4368]
 mov qword ptr [r12 + 4304], rax
 mov rax, qword ptr [r12 + 4376]
 mov qword ptr [r12 + 4312], rax
  .section .rodata
  .Lrkfn254: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn254]
 lea rsi, [r12 + 4288]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4272], rax
 mov qword ptr [r12 + 4280], rdx
 cmp eax, 99
 je xchain136_n65_α
 jmp xchain136_n69_α
 xchain136_n64_β:
 jmp xchain136_n65_α
 xchain136_n65_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+3360]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 3360], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 3368], rax
  .section .rodata
  .Lrkfn256: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn256]
 lea rsi, [r12 + 3360]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3344], rax
 mov qword ptr [r12 + 3352], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain136_n70_α
 xchain136_n65_β:
 jmp proc_d_ω
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain136_n66_α:
 lea rax, [rip + xchain136_n7_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_d_γ
 xchain136_n66_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain136_n67_α:
 lea rdi, [r12 + 6880]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5632], rax
 mov qword ptr [r12 + 5640], rdx
 jmp xchain136_n72_α
 xchain136_n67_β:
 jmp xchain136_n49_α
# IR_VAR_REF local
 xchain136_n68_α:
 lea rdi, [r12 + 6880]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4800], rax
 mov qword ptr [r12 + 4808], rdx
 jmp xchain136_n73_α
 xchain136_n68_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain136_n69_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4240], rax
 mov qword ptr [r12 + 4248], rdx
 jmp xchain136_n74_α
 xchain136_n69_β:
 jmp xchain136_n65_α
# IR_VAR_REF local
 xchain136_n70_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3216], rax
 mov qword ptr [r12 + 3224], rdx
 jmp xchain136_n75_α
 xchain136_n70_β:
 jmp xchain136_n92_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain136_n71_α:
 jmp qword ptr [r12 + 80]
 xchain136_n71_β:
 jmp proc_d_ω
 xchain136_n72_α:
  .section .rodata
  .Lcall165_pname: .string "d"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5600]
 mov rdx, qword ptr [r12 + 5608]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 5616]
 mov rdx, qword ptr [r12 + 5624]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 5632]
 mov rdx, qword ptr [r12 + 5640]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall165_pname]
 mov esi, 3
 lea rdx, [r12 + 5584]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 5520], rax
 mov qword ptr [r12 + 5528], rdx
 cmp eax, 99
 je xchain136_n49_α
 jmp xchain136_n76_α
xchain136_n72_β:
 mov rdi, qword ptr [r12 + 5584]
 call rt_proc_resume_frame@PLT
 mov qword ptr [r12 + 5520], rax
 mov qword ptr [r12 + 5528], rdx
 cmp eax, 99
 je xchain136_n49_α
 jmp xchain136_n76_α
# IR_VAR_REF local
 xchain136_n73_α:
 lea rdi, [r12 + 6816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4816], rax
 mov qword ptr [r12 + 4824], rdx
 jmp xchain136_n77_α
 xchain136_n73_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain136_n74_α:
 lea rdi, [r12 + 6864]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4256], rax
 mov qword ptr [r12 + 4264], rdx
 jmp xchain136_n78_α
 xchain136_n74_β:
 jmp xchain136_n65_α
# IR_LIT_STRING
 xchain136_n75_α:
 mov qword ptr [r12 + 3328], 1
 mov rax, qword ptr [rip + .Lx274_0]
 mov qword ptr [r12 + 3336], rax
 jmp xchain136_n79_α
 xchain136_n75_β:
 jmp proc_d_ω
.Lx274_0:
 .quad .Lx274_0_s
.Lx274_0_s:
 .string "^"
# IR_VAR_REF local
 xchain136_n76_α:
 lea rdi, [r12 + 6816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5472], rax
 mov qword ptr [r12 + 5480], rdx
 jmp xchain136_n80_α
 xchain136_n76_β:
 jmp xchain136_n49_α
 xchain136_n77_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4896] -> [zr+4848]
 mov rax, qword ptr [r12 + 4896]
 mov qword ptr [r12 + 4848], rax
 mov rax, qword ptr [r12 + 4904]
 mov qword ptr [r12 + 4856], rax
# marshal arg1 = producer-box slot [zr+4800] -> [zr+4864]
 mov rax, qword ptr [r12 + 4800]
 mov qword ptr [r12 + 4864], rax
 mov rax, qword ptr [r12 + 4808]
 mov qword ptr [r12 + 4872], rax
# marshal arg2 = producer-box slot [zr+4816] -> [zr+4880]
 mov rax, qword ptr [r12 + 4816]
 mov qword ptr [r12 + 4880], rax
 mov rax, qword ptr [r12 + 4824]
 mov qword ptr [r12 + 4888], rax
  .section .rodata
  .Lrkfn278: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn278]
 lea rsi, [r12 + 4848]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4832], rax
 mov qword ptr [r12 + 4840], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain136_n81_α
 xchain136_n77_β:
 jmp proc_d_ω
 xchain136_n78_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4240] -> [zr+4208]
 mov rax, qword ptr [r12 + 4240]
 mov qword ptr [r12 + 4208], rax
 mov rax, qword ptr [r12 + 4248]
 mov qword ptr [r12 + 4216], rax
# marshal arg1 = producer-box slot [zr+4256] -> [zr+4224]
 mov rax, qword ptr [r12 + 4256]
 mov qword ptr [r12 + 4224], rax
 mov rax, qword ptr [r12 + 4264]
 mov qword ptr [r12 + 4232], rax
  .section .rodata
  .Lrkfn280: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn280]
 lea rsi, [r12 + 4208]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4192], rax
 mov qword ptr [r12 + 4200], rdx
 cmp eax, 99
 je xchain136_n65_α
 jmp xchain136_n82_α
 xchain136_n78_β:
 jmp xchain136_n65_α
# IR_VAR_REF local
 xchain136_n79_α:
 lea rdi, [r12 + 6832]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3232], rax
 mov qword ptr [r12 + 3240], rdx
 jmp xchain136_n83_α
 xchain136_n79_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain136_n80_α:
 lea rdi, [r12 + 6864]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5488], rax
 mov qword ptr [r12 + 5496], rdx
 jmp xchain136_n84_α
 xchain136_n80_β:
 jmp xchain136_n49_α
# IR_LIT_STRING
 xchain136_n81_α:
 mov qword ptr [r12 + 5008], 1
 mov rax, qword ptr [rip + .Lx285_0]
 mov qword ptr [r12 + 5016], rax
 jmp xchain136_n85_α
 xchain136_n81_β:
 jmp proc_d_ω
.Lx285_0:
 .quad .Lx285_0_s
.Lx285_0_s:
 .string "*"
# IR_VAR_REF local
 xchain136_n82_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3680], rax
 mov qword ptr [r12 + 3688], rdx
 jmp xchain136_n86_α
 xchain136_n82_β:
 jmp xchain136_n65_α
# IR_VAR_REF local
 xchain136_n83_α:
 lea rdi, [r12 + 6816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3248], rax
 mov qword ptr [r12 + 3256], rdx
 jmp xchain136_n87_α
 xchain136_n83_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain136_n84_α:
 lea rdi, [r12 + 6896]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5504], rax
 mov qword ptr [r12 + 5512], rdx
 jmp xchain136_n88_α
 xchain136_n84_β:
 jmp xchain136_n49_α
# IR_VAR_REF local
 xchain136_n85_α:
 lea rdi, [r12 + 6832]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4912], rax
 mov qword ptr [r12 + 4920], rdx
 jmp xchain136_n89_α
 xchain136_n85_β:
 jmp proc_d_ω
# IR_LIT_STRING
 xchain136_n86_α:
 mov qword ptr [r12 + 4176], 1
 mov rax, qword ptr [rip + .Lx294_0]
 mov qword ptr [r12 + 4184], rax
 jmp xchain136_n90_α
 xchain136_n86_β:
 jmp proc_d_ω
.Lx294_0:
 .quad .Lx294_0_s
.Lx294_0_s:
 .string "/"
 xchain136_n87_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3328] -> [zr+3280]
 mov rax, qword ptr [r12 + 3328]
 mov qword ptr [r12 + 3280], rax
 mov rax, qword ptr [r12 + 3336]
 mov qword ptr [r12 + 3288], rax
# marshal arg1 = producer-box slot [zr+3232] -> [zr+3296]
 mov rax, qword ptr [r12 + 3232]
 mov qword ptr [r12 + 3296], rax
 mov rax, qword ptr [r12 + 3240]
 mov qword ptr [r12 + 3304], rax
# marshal arg2 = producer-box slot [zr+3248] -> [zr+3312]
 mov rax, qword ptr [r12 + 3248]
 mov qword ptr [r12 + 3312], rax
 mov rax, qword ptr [r12 + 3256]
 mov qword ptr [r12 + 3320], rax
  .section .rodata
  .Lrkfn296: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn296]
 lea rsi, [r12 + 3280]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3264], rax
 mov qword ptr [r12 + 3272], rdx
 cmp eax, 99
 je xchain136_n92_α
 jmp xchain136_n91_α
 xchain136_n87_β:
 jmp xchain136_n92_α
 xchain136_n88_α:
  .section .rodata
  .Lcall181_pname: .string "d"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5472]
 mov rdx, qword ptr [r12 + 5480]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 5488]
 mov rdx, qword ptr [r12 + 5496]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 5504]
 mov rdx, qword ptr [r12 + 5512]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall181_pname]
 mov esi, 3
 lea rdx, [r12 + 5456]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 5392], rax
 mov qword ptr [r12 + 5400], rdx
 cmp eax, 99
 je xchain136_n72_β
 jmp xchain136_n93_α
xchain136_n88_β:
 mov rdi, qword ptr [r12 + 5456]
 call rt_proc_resume_frame@PLT
 mov qword ptr [r12 + 5392], rax
 mov qword ptr [r12 + 5400], rdx
 cmp eax, 99
 je xchain136_n72_β
 jmp xchain136_n93_α
# IR_VAR_REF local
 xchain136_n89_α:
 lea rdi, [r12 + 6896]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4928], rax
 mov qword ptr [r12 + 4936], rdx
 jmp xchain136_n94_α
 xchain136_n89_β:
 jmp proc_d_ω
# IR_LIT_STRING
 xchain136_n90_α:
 mov qword ptr [r12 + 3984], 1
 mov rax, qword ptr [rip + .Lx300_0]
 mov qword ptr [r12 + 3992], rax
 jmp xchain136_n95_α
 xchain136_n90_β:
 jmp proc_d_ω
.Lx300_0:
 .quad .Lx300_0_s
.Lx300_0_s:
 .string "-"
 xchain136_n91_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3216] -> [zr+3184]
 mov rax, qword ptr [r12 + 3216]
 mov qword ptr [r12 + 3184], rax
 mov rax, qword ptr [r12 + 3224]
 mov qword ptr [r12 + 3192], rax
# marshal arg1 = producer-box slot [zr+3264] -> [zr+3200]
 mov rax, qword ptr [r12 + 3264]
 mov qword ptr [r12 + 3200], rax
 mov rax, qword ptr [r12 + 3272]
 mov qword ptr [r12 + 3208], rax
  .section .rodata
  .Lrkfn302: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn302]
 lea rsi, [r12 + 3184]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3168], rax
 mov qword ptr [r12 + 3176], rdx
 cmp eax, 99
 je xchain136_n92_α
 jmp xchain136_n96_α
 xchain136_n91_β:
 jmp xchain136_n92_α
 xchain136_n92_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+2384]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 2384], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 2392], rax
  .section .rodata
  .Lrkfn304: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn304]
 lea rsi, [r12 + 2384]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2368], rax
 mov qword ptr [r12 + 2376], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain136_n97_α
 xchain136_n92_β:
 jmp proc_d_ω
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain136_n93_α:
 lea rax, [rip + xchain136_n20_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_d_γ
 xchain136_n93_β:
 jmp proc_d_ω
 xchain136_n94_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5008] -> [zr+4960]
 mov rax, qword ptr [r12 + 5008]
 mov qword ptr [r12 + 4960], rax
 mov rax, qword ptr [r12 + 5016]
 mov qword ptr [r12 + 4968], rax
# marshal arg1 = producer-box slot [zr+4912] -> [zr+4976]
 mov rax, qword ptr [r12 + 4912]
 mov qword ptr [r12 + 4976], rax
 mov rax, qword ptr [r12 + 4920]
 mov qword ptr [r12 + 4984], rax
# marshal arg2 = producer-box slot [zr+4928] -> [zr+4992]
 mov rax, qword ptr [r12 + 4928]
 mov qword ptr [r12 + 4992], rax
 mov rax, qword ptr [r12 + 4936]
 mov qword ptr [r12 + 5000], rax
  .section .rodata
  .Lrkfn308: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn308]
 lea rsi, [r12 + 4960]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4944], rax
 mov qword ptr [r12 + 4952], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain136_n98_α
 xchain136_n94_β:
 jmp proc_d_ω
# IR_LIT_STRING
 xchain136_n95_α:
 mov qword ptr [r12 + 3792], 1
 mov rax, qword ptr [rip + .Lx309_0]
 mov qword ptr [r12 + 3800], rax
 jmp xchain136_n99_α
 xchain136_n95_β:
 jmp proc_d_ω
.Lx309_0:
 .quad .Lx309_0_s
.Lx309_0_s:
 .string "*"
# IR_VAR_REF local
 xchain136_n96_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3136], rax
 mov qword ptr [r12 + 3144], rdx
 jmp xchain136_n100_α
 xchain136_n96_β:
 jmp xchain136_n92_α
# IR_VAR_REF local
 xchain136_n97_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2272], rax
 mov qword ptr [r12 + 2280], rdx
 jmp xchain136_n101_α
 xchain136_n97_β:
 jmp xchain136_n114_α
 xchain136_n98_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5088] -> [zr+5040]
 mov rax, qword ptr [r12 + 5088]
 mov qword ptr [r12 + 5040], rax
 mov rax, qword ptr [r12 + 5096]
 mov qword ptr [r12 + 5048], rax
# marshal arg1 = producer-box slot [zr+4832] -> [zr+5056]
 mov rax, qword ptr [r12 + 4832]
 mov qword ptr [r12 + 5056], rax
 mov rax, qword ptr [r12 + 4840]
 mov qword ptr [r12 + 5064], rax
# marshal arg2 = producer-box slot [zr+4944] -> [zr+5072]
 mov rax, qword ptr [r12 + 4944]
 mov qword ptr [r12 + 5072], rax
 mov rax, qword ptr [r12 + 4952]
 mov qword ptr [r12 + 5080], rax
  .section .rodata
  .Lrkfn315: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn315]
 lea rsi, [r12 + 5040]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5024], rax
 mov qword ptr [r12 + 5032], rdx
 cmp eax, 99
 je xchain136_n39_α
 jmp xchain136_n102_α
 xchain136_n98_β:
 jmp xchain136_n39_α
# IR_VAR_REF local
 xchain136_n99_α:
 lea rdi, [r12 + 6880]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3696], rax
 mov qword ptr [r12 + 3704], rdx
 jmp xchain136_n103_α
 xchain136_n99_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain136_n100_α:
 lea rdi, [r12 + 6864]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3152], rax
 mov qword ptr [r12 + 3160], rdx
 jmp xchain136_n104_α
 xchain136_n100_β:
 jmp xchain136_n92_α
# IR_LIT_STRING
 xchain136_n101_α:
 mov qword ptr [r12 + 2352], 1
 mov rax, qword ptr [rip + .Lx320_0]
 mov qword ptr [r12 + 2360], rax
 jmp xchain136_n105_α
 xchain136_n101_β:
 jmp proc_d_ω
.Lx320_0:
 .quad .Lx320_0_s
.Lx320_0_s:
 .string "-"
 xchain136_n102_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4784] -> [zr+4752]
 mov rax, qword ptr [r12 + 4784]
 mov qword ptr [r12 + 4752], rax
 mov rax, qword ptr [r12 + 4792]
 mov qword ptr [r12 + 4760], rax
# marshal arg1 = producer-box slot [zr+5024] -> [zr+4768]
 mov rax, qword ptr [r12 + 5024]
 mov qword ptr [r12 + 4768], rax
 mov rax, qword ptr [r12 + 5032]
 mov qword ptr [r12 + 4776], rax
  .section .rodata
  .Lrkfn322: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn322]
 lea rsi, [r12 + 4752]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4736], rax
 mov qword ptr [r12 + 4744], rdx
 cmp eax, 99
 je xchain136_n39_α
 jmp xchain136_n106_α
 xchain136_n102_β:
 jmp xchain136_n39_α
# IR_VAR_REF local
 xchain136_n103_α:
 lea rdi, [r12 + 6816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3712], rax
 mov qword ptr [r12 + 3720], rdx
 jmp xchain136_n107_α
 xchain136_n103_β:
 jmp proc_d_ω
 xchain136_n104_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3136] -> [zr+3104]
 mov rax, qword ptr [r12 + 3136]
 mov qword ptr [r12 + 3104], rax
 mov rax, qword ptr [r12 + 3144]
 mov qword ptr [r12 + 3112], rax
# marshal arg1 = producer-box slot [zr+3152] -> [zr+3120]
 mov rax, qword ptr [r12 + 3152]
 mov qword ptr [r12 + 3120], rax
 mov rax, qword ptr [r12 + 3160]
 mov qword ptr [r12 + 3128], rax
  .section .rodata
  .Lrkfn326: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn326]
 lea rsi, [r12 + 3104]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3088], rax
 mov qword ptr [r12 + 3096], rdx
 cmp eax, 99
 je xchain136_n92_α
 jmp xchain136_n108_α
 xchain136_n104_β:
 jmp xchain136_n92_α
# IR_VAR_REF local
 xchain136_n105_α:
 lea rdi, [r12 + 6832]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2288], rax
 mov qword ptr [r12 + 2296], rdx
 jmp xchain136_n109_α
 xchain136_n105_β:
 jmp proc_d_ω
 xchain136_n106_α:
# IR_CUT
 jmp xchain136_n110_α
 xchain136_n106_β:
 jmp xchain136_n39_α
 xchain136_n107_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3792] -> [zr+3744]
 mov rax, qword ptr [r12 + 3792]
 mov qword ptr [r12 + 3744], rax
 mov rax, qword ptr [r12 + 3800]
 mov qword ptr [r12 + 3752], rax
# marshal arg1 = producer-box slot [zr+3696] -> [zr+3760]
 mov rax, qword ptr [r12 + 3696]
 mov qword ptr [r12 + 3760], rax
 mov rax, qword ptr [r12 + 3704]
 mov qword ptr [r12 + 3768], rax
# marshal arg2 = producer-box slot [zr+3712] -> [zr+3776]
 mov rax, qword ptr [r12 + 3712]
 mov qword ptr [r12 + 3776], rax
 mov rax, qword ptr [r12 + 3720]
 mov qword ptr [r12 + 3784], rax
  .section .rodata
  .Lrkfn331: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn331]
 lea rsi, [r12 + 3744]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3728], rax
 mov qword ptr [r12 + 3736], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain136_n111_α
 xchain136_n107_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain136_n108_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2768], rax
 mov qword ptr [r12 + 2776], rdx
 jmp xchain136_n112_α
 xchain136_n108_β:
 jmp xchain136_n92_α
 xchain136_n109_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2352] -> [zr+2320]
 mov rax, qword ptr [r12 + 2352]
 mov qword ptr [r12 + 2320], rax
 mov rax, qword ptr [r12 + 2360]
 mov qword ptr [r12 + 2328], rax
# marshal arg1 = producer-box slot [zr+2288] -> [zr+2336]
 mov rax, qword ptr [r12 + 2288]
 mov qword ptr [r12 + 2336], rax
 mov rax, qword ptr [r12 + 2296]
 mov qword ptr [r12 + 2344], rax
  .section .rodata
  .Lrkfn335: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn335]
 lea rsi, [r12 + 2320]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2304], rax
 mov qword ptr [r12 + 2312], rdx
 cmp eax, 99
 je xchain136_n114_α
 jmp xchain136_n113_α
 xchain136_n109_β:
 jmp xchain136_n114_α
# IR_VAR_REF local
 xchain136_n110_α:
 lea rdi, [r12 + 6832]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4688], rax
 mov qword ptr [r12 + 4696], rdx
 jmp xchain136_n115_α
 xchain136_n110_β:
 jmp xchain136_n49_α
# IR_LIT_STRING
 xchain136_n111_α:
 mov qword ptr [r12 + 3904], 1
 mov rax, qword ptr [rip + .Lx338_0]
 mov qword ptr [r12 + 3912], rax
 jmp xchain136_n116_α
 xchain136_n111_β:
 jmp proc_d_ω
.Lx338_0:
 .quad .Lx338_0_s
.Lx338_0_s:
 .string "*"
# IR_LIT_STRING
 xchain136_n112_α:
 mov qword ptr [r12 + 3072], 1
 mov rax, qword ptr [rip + .Lx339_0]
 mov qword ptr [r12 + 3080], rax
 jmp xchain136_n117_α
 xchain136_n112_β:
 jmp proc_d_ω
.Lx339_0:
 .quad .Lx339_0_s
.Lx339_0_s:
 .string "*"
 xchain136_n113_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2272] -> [zr+2240]
 mov rax, qword ptr [r12 + 2272]
 mov qword ptr [r12 + 2240], rax
 mov rax, qword ptr [r12 + 2280]
 mov qword ptr [r12 + 2248], rax
# marshal arg1 = producer-box slot [zr+2304] -> [zr+2256]
 mov rax, qword ptr [r12 + 2304]
 mov qword ptr [r12 + 2256], rax
 mov rax, qword ptr [r12 + 2312]
 mov qword ptr [r12 + 2264], rax
  .section .rodata
  .Lrkfn341: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn341]
 lea rsi, [r12 + 2240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2224], rax
 mov qword ptr [r12 + 2232], rdx
 cmp eax, 99
 je xchain136_n114_α
 jmp xchain136_n118_α
 xchain136_n113_β:
 jmp xchain136_n114_α
 xchain136_n114_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1856]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 1856], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 1864], rax
  .section .rodata
  .Lrkfn343: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn343]
 lea rsi, [r12 + 1856]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1840], rax
 mov qword ptr [r12 + 1848], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain136_n119_α
 xchain136_n114_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain136_n115_α:
 lea rdi, [r12 + 6864]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4704], rax
 mov qword ptr [r12 + 4712], rdx
 jmp xchain136_n120_α
 xchain136_n115_β:
 jmp xchain136_n49_α
# IR_VAR_REF local
 xchain136_n116_α:
 lea rdi, [r12 + 6832]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3808], rax
 mov qword ptr [r12 + 3816], rdx
 jmp xchain136_n121_α
 xchain136_n116_β:
 jmp proc_d_ω
# IR_LIT_STRING
 xchain136_n117_α:
 mov qword ptr [r12 + 2880], 1
 mov rax, qword ptr [rip + .Lx348_0]
 mov qword ptr [r12 + 2888], rax
 jmp xchain136_n122_α
 xchain136_n117_β:
 jmp proc_d_ω
.Lx348_0:
 .quad .Lx348_0_s
.Lx348_0_s:
 .string "*"
# IR_VAR_REF local
 xchain136_n118_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2192], rax
 mov qword ptr [r12 + 2200], rdx
 jmp xchain136_n123_α
 xchain136_n118_β:
 jmp xchain136_n114_α
# IR_VAR_REF local
 xchain136_n119_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1744], rax
 mov qword ptr [r12 + 1752], rdx
 jmp xchain136_n124_α
 xchain136_n119_β:
 jmp xchain136_n140_α
# IR_VAR_REF local
 xchain136_n120_α:
 lea rdi, [r12 + 6880]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4720], rax
 mov qword ptr [r12 + 4728], rdx
 jmp xchain136_n125_α
 xchain136_n120_β:
 jmp xchain136_n49_α
# IR_VAR_REF local
 xchain136_n121_α:
 lea rdi, [r12 + 6896]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3824], rax
 mov qword ptr [r12 + 3832], rdx
 jmp xchain136_n126_α
 xchain136_n121_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain136_n122_α:
 lea rdi, [r12 + 6880]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2784], rax
 mov qword ptr [r12 + 2792], rdx
 jmp xchain136_n127_α
 xchain136_n122_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain136_n123_α:
 lea rdi, [r12 + 6864]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2208], rax
 mov qword ptr [r12 + 2216], rdx
 jmp xchain136_n128_α
 xchain136_n123_β:
 jmp xchain136_n114_α
# IR_LIT_STRING
 xchain136_n124_α:
 mov qword ptr [r12 + 1824], 1
 mov rax, qword ptr [rip + .Lx361_0]
 mov qword ptr [r12 + 1832], rax
 jmp xchain136_n129_α
 xchain136_n124_β:
 jmp proc_d_ω
.Lx361_0:
 .quad .Lx361_0_s
.Lx361_0_s:
 .string "exp"
 xchain136_n125_α:
  .section .rodata
  .Lcall218_pname: .string "d"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4688]
 mov rdx, qword ptr [r12 + 4696]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 4704]
 mov rdx, qword ptr [r12 + 4712]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 4720]
 mov rdx, qword ptr [r12 + 4728]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall218_pname]
 mov esi, 3
 lea rdx, [r12 + 4672]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 4608], rax
 mov qword ptr [r12 + 4616], rdx
 cmp eax, 99
 je xchain136_n49_α
 jmp xchain136_n130_α
xchain136_n125_β:
 mov rdi, qword ptr [r12 + 4672]
 call rt_proc_resume_frame@PLT
 mov qword ptr [r12 + 4608], rax
 mov qword ptr [r12 + 4616], rdx
 cmp eax, 99
 je xchain136_n49_α
 jmp xchain136_n130_α
 xchain136_n126_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3904] -> [zr+3856]
 mov rax, qword ptr [r12 + 3904]
 mov qword ptr [r12 + 3856], rax
 mov rax, qword ptr [r12 + 3912]
 mov qword ptr [r12 + 3864], rax
# marshal arg1 = producer-box slot [zr+3808] -> [zr+3872]
 mov rax, qword ptr [r12 + 3808]
 mov qword ptr [r12 + 3872], rax
 mov rax, qword ptr [r12 + 3816]
 mov qword ptr [r12 + 3880], rax
# marshal arg2 = producer-box slot [zr+3824] -> [zr+3888]
 mov rax, qword ptr [r12 + 3824]
 mov qword ptr [r12 + 3888], rax
 mov rax, qword ptr [r12 + 3832]
 mov qword ptr [r12 + 3896], rax
  .section .rodata
  .Lrkfn364: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn364]
 lea rsi, [r12 + 3856]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3840], rax
 mov qword ptr [r12 + 3848], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain136_n131_α
 xchain136_n126_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain136_n127_α:
 lea rdi, [r12 + 6816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2800], rax
 mov qword ptr [r12 + 2808], rdx
 jmp xchain136_n132_α
 xchain136_n127_β:
 jmp proc_d_ω
 xchain136_n128_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2192] -> [zr+2160]
 mov rax, qword ptr [r12 + 2192]
 mov qword ptr [r12 + 2160], rax
 mov rax, qword ptr [r12 + 2200]
 mov qword ptr [r12 + 2168], rax
# marshal arg1 = producer-box slot [zr+2208] -> [zr+2176]
 mov rax, qword ptr [r12 + 2208]
 mov qword ptr [r12 + 2176], rax
 mov rax, qword ptr [r12 + 2216]
 mov qword ptr [r12 + 2184], rax
  .section .rodata
  .Lrkfn368: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn368]
 lea rsi, [r12 + 2160]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2144], rax
 mov qword ptr [r12 + 2152], rdx
 cmp eax, 99
 je xchain136_n114_α
 jmp xchain136_n133_α
 xchain136_n128_β:
 jmp xchain136_n114_α
# IR_VAR_REF local
 xchain136_n129_α:
 lea rdi, [r12 + 6832]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1760], rax
 mov qword ptr [r12 + 1768], rdx
 jmp xchain136_n134_α
 xchain136_n129_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain136_n130_α:
 lea rdi, [r12 + 6816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4560], rax
 mov qword ptr [r12 + 4568], rdx
 jmp xchain136_n135_α
 xchain136_n130_β:
 jmp xchain136_n49_α
 xchain136_n131_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3984] -> [zr+3936]
 mov rax, qword ptr [r12 + 3984]
 mov qword ptr [r12 + 3936], rax
 mov rax, qword ptr [r12 + 3992]
 mov qword ptr [r12 + 3944], rax
# marshal arg1 = producer-box slot [zr+3728] -> [zr+3952]
 mov rax, qword ptr [r12 + 3728]
 mov qword ptr [r12 + 3952], rax
 mov rax, qword ptr [r12 + 3736]
 mov qword ptr [r12 + 3960], rax
# marshal arg2 = producer-box slot [zr+3840] -> [zr+3968]
 mov rax, qword ptr [r12 + 3840]
 mov qword ptr [r12 + 3968], rax
 mov rax, qword ptr [r12 + 3848]
 mov qword ptr [r12 + 3976], rax
  .section .rodata
  .Lrkfn374: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn374]
 lea rsi, [r12 + 3936]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3920], rax
 mov qword ptr [r12 + 3928], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain136_n136_α
 xchain136_n131_β:
 jmp proc_d_ω
 xchain136_n132_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2880] -> [zr+2832]
 mov rax, qword ptr [r12 + 2880]
 mov qword ptr [r12 + 2832], rax
 mov rax, qword ptr [r12 + 2888]
 mov qword ptr [r12 + 2840], rax
# marshal arg1 = producer-box slot [zr+2784] -> [zr+2848]
 mov rax, qword ptr [r12 + 2784]
 mov qword ptr [r12 + 2848], rax
 mov rax, qword ptr [r12 + 2792]
 mov qword ptr [r12 + 2856], rax
# marshal arg2 = producer-box slot [zr+2800] -> [zr+2864]
 mov rax, qword ptr [r12 + 2800]
 mov qword ptr [r12 + 2864], rax
 mov rax, qword ptr [r12 + 2808]
 mov qword ptr [r12 + 2872], rax
  .section .rodata
  .Lrkfn376: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn376]
 lea rsi, [r12 + 2832]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2816], rax
 mov qword ptr [r12 + 2824], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain136_n137_α
 xchain136_n132_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain136_n133_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2048], rax
 mov qword ptr [r12 + 2056], rdx
 jmp xchain136_n138_α
 xchain136_n133_β:
 jmp xchain136_n114_α
 xchain136_n134_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1824] -> [zr+1792]
 mov rax, qword ptr [r12 + 1824]
 mov qword ptr [r12 + 1792], rax
 mov rax, qword ptr [r12 + 1832]
 mov qword ptr [r12 + 1800], rax
# marshal arg1 = producer-box slot [zr+1760] -> [zr+1808]
 mov rax, qword ptr [r12 + 1760]
 mov qword ptr [r12 + 1808], rax
 mov rax, qword ptr [r12 + 1768]
 mov qword ptr [r12 + 1816], rax
  .section .rodata
  .Lrkfn380: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn380]
 lea rsi, [r12 + 1792]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1776], rax
 mov qword ptr [r12 + 1784], rdx
 cmp eax, 99
 je xchain136_n140_α
 jmp xchain136_n139_α
 xchain136_n134_β:
 jmp xchain136_n140_α
# IR_VAR_REF local
 xchain136_n135_α:
 lea rdi, [r12 + 6864]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4576], rax
 mov qword ptr [r12 + 4584], rdx
 jmp xchain136_n141_α
 xchain136_n135_β:
 jmp xchain136_n49_α
# IR_LIT_STRING
 xchain136_n136_α:
 mov qword ptr [r12 + 4096], 1
 mov rax, qword ptr [rip + .Lx383_0]
 mov qword ptr [r12 + 4104], rax
 jmp xchain136_n142_α
 xchain136_n136_β:
 jmp proc_d_ω
.Lx383_0:
 .quad .Lx383_0_s
.Lx383_0_s:
 .string "^"
# IR_LIT_STRING
 xchain136_n137_α:
 mov qword ptr [r12 + 2992], 1
 mov rax, qword ptr [rip + .Lx384_0]
 mov qword ptr [r12 + 3000], rax
 jmp xchain136_n143_α
 xchain136_n137_β:
 jmp proc_d_ω
.Lx384_0:
 .quad .Lx384_0_s
.Lx384_0_s:
 .string "^"
# IR_LIT_STRING
 xchain136_n138_α:
 mov qword ptr [r12 + 2128], 1
 mov rax, qword ptr [rip + .Lx385_0]
 mov qword ptr [r12 + 2136], rax
 jmp xchain136_n144_α
 xchain136_n138_β:
 jmp proc_d_ω
.Lx385_0:
 .quad .Lx385_0_s
.Lx385_0_s:
 .string "-"
 xchain136_n139_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1744] -> [zr+1712]
 mov rax, qword ptr [r12 + 1744]
 mov qword ptr [r12 + 1712], rax
 mov rax, qword ptr [r12 + 1752]
 mov qword ptr [r12 + 1720], rax
# marshal arg1 = producer-box slot [zr+1776] -> [zr+1728]
 mov rax, qword ptr [r12 + 1776]
 mov qword ptr [r12 + 1728], rax
 mov rax, qword ptr [r12 + 1784]
 mov qword ptr [r12 + 1736], rax
  .section .rodata
  .Lrkfn387: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn387]
 lea rsi, [r12 + 1712]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1696], rax
 mov qword ptr [r12 + 1704], rdx
 cmp eax, 99
 je xchain136_n140_α
 jmp xchain136_n145_α
 xchain136_n139_β:
 jmp xchain136_n140_α
 xchain136_n140_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1232]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 1232], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 1240], rax
  .section .rodata
  .Lrkfn389: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn389]
 lea rsi, [r12 + 1232]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain136_n146_α
 xchain136_n140_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain136_n141_α:
 lea rdi, [r12 + 6896]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4592], rax
 mov qword ptr [r12 + 4600], rdx
 jmp xchain136_n147_α
 xchain136_n141_β:
 jmp xchain136_n49_α
# IR_VAR_REF local
 xchain136_n142_α:
 lea rdi, [r12 + 6816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4000], rax
 mov qword ptr [r12 + 4008], rdx
 jmp xchain136_n148_α
 xchain136_n142_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain136_n143_α:
 lea rdi, [r12 + 6832]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2896], rax
 mov qword ptr [r12 + 2904], rdx
 jmp xchain136_n149_α
 xchain136_n143_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain136_n144_α:
 lea rdi, [r12 + 6816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2064], rax
 mov qword ptr [r12 + 2072], rdx
 jmp xchain136_n150_α
 xchain136_n144_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain136_n145_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1664], rax
 mov qword ptr [r12 + 1672], rdx
 jmp xchain136_n151_α
 xchain136_n145_β:
 jmp xchain136_n140_α
# IR_VAR_REF local
 xchain136_n146_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1120], rax
 mov qword ptr [r12 + 1128], rdx
 jmp xchain136_n152_α
 xchain136_n146_β:
 jmp xchain136_n169_α
 xchain136_n147_α:
  .section .rodata
  .Lcall240_pname: .string "d"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4560]
 mov rdx, qword ptr [r12 + 4568]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 4576]
 mov rdx, qword ptr [r12 + 4584]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 4592]
 mov rdx, qword ptr [r12 + 4600]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall240_pname]
 mov esi, 3
 lea rdx, [r12 + 4544]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 4480], rax
 mov qword ptr [r12 + 4488], rdx
 cmp eax, 99
 je xchain136_n125_β
 jmp xchain136_n153_α
xchain136_n147_β:
 mov rdi, qword ptr [r12 + 4544]
 call rt_proc_resume_frame@PLT
 mov qword ptr [r12 + 4480], rax
 mov qword ptr [r12 + 4488], rdx
 cmp eax, 99
 je xchain136_n125_β
 jmp xchain136_n153_α
# IR_LIT_INTEGER
 xchain136_n148_α:
 mov qword ptr [r12 + 4016], 6
 mov rax, qword ptr [rip + .Lx403_0]
 mov qword ptr [r12 + 4024], rax
 jmp xchain136_n154_α
 xchain136_n148_β:
 jmp proc_d_ω
.Lx403_0:
 .quad 2
# IR_VAR_REF local
 xchain136_n149_α:
 lea rdi, [r12 + 6896]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2912], rax
 mov qword ptr [r12 + 2920], rdx
 jmp xchain136_n155_α
 xchain136_n149_β:
 jmp proc_d_ω
 xchain136_n150_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2128] -> [zr+2096]
 mov rax, qword ptr [r12 + 2128]
 mov qword ptr [r12 + 2096], rax
 mov rax, qword ptr [r12 + 2136]
 mov qword ptr [r12 + 2104], rax
# marshal arg1 = producer-box slot [zr+2064] -> [zr+2112]
 mov rax, qword ptr [r12 + 2064]
 mov qword ptr [r12 + 2112], rax
 mov rax, qword ptr [r12 + 2072]
 mov qword ptr [r12 + 2120], rax
  .section .rodata
  .Lrkfn407: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn407]
 lea rsi, [r12 + 2096]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2080], rax
 mov qword ptr [r12 + 2088], rdx
 cmp eax, 99
 je xchain136_n114_α
 jmp xchain136_n156_α
 xchain136_n150_β:
 jmp xchain136_n114_α
# IR_VAR_REF local
 xchain136_n151_α:
 lea rdi, [r12 + 6864]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1680], rax
 mov qword ptr [r12 + 1688], rdx
 jmp xchain136_n157_α
 xchain136_n151_β:
 jmp xchain136_n140_α
# IR_LIT_STRING
 xchain136_n152_α:
 mov qword ptr [r12 + 1200], 1
 mov rax, qword ptr [rip + .Lx410_0]
 mov qword ptr [r12 + 1208], rax
 jmp xchain136_n158_α
 xchain136_n152_β:
 jmp proc_d_ω
.Lx410_0:
 .quad .Lx410_0_s
.Lx410_0_s:
 .string "log"
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain136_n153_α:
 lea rax, [rip + xchain136_n39_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_d_γ
 xchain136_n153_β:
 jmp proc_d_ω
 xchain136_n154_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4096] -> [zr+4048]
 mov rax, qword ptr [r12 + 4096]
 mov qword ptr [r12 + 4048], rax
 mov rax, qword ptr [r12 + 4104]
 mov qword ptr [r12 + 4056], rax
# marshal arg1 = producer-box slot [zr+4000] -> [zr+4064]
 mov rax, qword ptr [r12 + 4000]
 mov qword ptr [r12 + 4064], rax
 mov rax, qword ptr [r12 + 4008]
 mov qword ptr [r12 + 4072], rax
# marshal arg2 = producer-box slot [zr+4016] -> [zr+4080]
 mov rax, qword ptr [r12 + 4016]
 mov qword ptr [r12 + 4080], rax
 mov rax, qword ptr [r12 + 4024]
 mov qword ptr [r12 + 4088], rax
  .section .rodata
  .Lrkfn414: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn414]
 lea rsi, [r12 + 4048]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4032], rax
 mov qword ptr [r12 + 4040], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain136_n159_α
 xchain136_n154_β:
 jmp proc_d_ω
 xchain136_n155_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2992] -> [zr+2944]
 mov rax, qword ptr [r12 + 2992]
 mov qword ptr [r12 + 2944], rax
 mov rax, qword ptr [r12 + 3000]
 mov qword ptr [r12 + 2952], rax
# marshal arg1 = producer-box slot [zr+2896] -> [zr+2960]
 mov rax, qword ptr [r12 + 2896]
 mov qword ptr [r12 + 2960], rax
 mov rax, qword ptr [r12 + 2904]
 mov qword ptr [r12 + 2968], rax
# marshal arg2 = producer-box slot [zr+2912] -> [zr+2976]
 mov rax, qword ptr [r12 + 2912]
 mov qword ptr [r12 + 2976], rax
 mov rax, qword ptr [r12 + 2920]
 mov qword ptr [r12 + 2984], rax
  .section .rodata
  .Lrkfn416: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn416]
 lea rsi, [r12 + 2944]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2928], rax
 mov qword ptr [r12 + 2936], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain136_n160_α
 xchain136_n155_β:
 jmp proc_d_ω
 xchain136_n156_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2048] -> [zr+2016]
 mov rax, qword ptr [r12 + 2048]
 mov qword ptr [r12 + 2016], rax
 mov rax, qword ptr [r12 + 2056]
 mov qword ptr [r12 + 2024], rax
# marshal arg1 = producer-box slot [zr+2080] -> [zr+2032]
 mov rax, qword ptr [r12 + 2080]
 mov qword ptr [r12 + 2032], rax
 mov rax, qword ptr [r12 + 2088]
 mov qword ptr [r12 + 2040], rax
  .section .rodata
  .Lrkfn418: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn418]
 lea rsi, [r12 + 2016]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2000], rax
 mov qword ptr [r12 + 2008], rdx
 cmp eax, 99
 je xchain136_n114_α
 jmp xchain136_n161_α
 xchain136_n156_β:
 jmp xchain136_n114_α
 xchain136_n157_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1664] -> [zr+1632]
 mov rax, qword ptr [r12 + 1664]
 mov qword ptr [r12 + 1632], rax
 mov rax, qword ptr [r12 + 1672]
 mov qword ptr [r12 + 1640], rax
# marshal arg1 = producer-box slot [zr+1680] -> [zr+1648]
 mov rax, qword ptr [r12 + 1680]
 mov qword ptr [r12 + 1648], rax
 mov rax, qword ptr [r12 + 1688]
 mov qword ptr [r12 + 1656], rax
  .section .rodata
  .Lrkfn420: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn420]
 lea rsi, [r12 + 1632]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1616], rax
 mov qword ptr [r12 + 1624], rdx
 cmp eax, 99
 je xchain136_n140_α
 jmp xchain136_n162_α
 xchain136_n157_β:
 jmp xchain136_n140_α
# IR_VAR_REF local
 xchain136_n158_α:
 lea rdi, [r12 + 6832]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 jmp xchain136_n163_α
 xchain136_n158_β:
 jmp proc_d_ω
 xchain136_n159_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4176] -> [zr+4128]
 mov rax, qword ptr [r12 + 4176]
 mov qword ptr [r12 + 4128], rax
 mov rax, qword ptr [r12 + 4184]
 mov qword ptr [r12 + 4136], rax
# marshal arg1 = producer-box slot [zr+3920] -> [zr+4144]
 mov rax, qword ptr [r12 + 3920]
 mov qword ptr [r12 + 4144], rax
 mov rax, qword ptr [r12 + 3928]
 mov qword ptr [r12 + 4152], rax
# marshal arg2 = producer-box slot [zr+4032] -> [zr+4160]
 mov rax, qword ptr [r12 + 4032]
 mov qword ptr [r12 + 4160], rax
 mov rax, qword ptr [r12 + 4040]
 mov qword ptr [r12 + 4168], rax
  .section .rodata
  .Lrkfn424: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn424]
 lea rsi, [r12 + 4128]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4112], rax
 mov qword ptr [r12 + 4120], rdx
 cmp eax, 99
 je xchain136_n65_α
 jmp xchain136_n164_α
 xchain136_n159_β:
 jmp xchain136_n65_α
 xchain136_n160_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3072] -> [zr+3024]
 mov rax, qword ptr [r12 + 3072]
 mov qword ptr [r12 + 3024], rax
 mov rax, qword ptr [r12 + 3080]
 mov qword ptr [r12 + 3032], rax
# marshal arg1 = producer-box slot [zr+2816] -> [zr+3040]
 mov rax, qword ptr [r12 + 2816]
 mov qword ptr [r12 + 3040], rax
 mov rax, qword ptr [r12 + 2824]
 mov qword ptr [r12 + 3048], rax
# marshal arg2 = producer-box slot [zr+2928] -> [zr+3056]
 mov rax, qword ptr [r12 + 2928]
 mov qword ptr [r12 + 3056], rax
 mov rax, qword ptr [r12 + 2936]
 mov qword ptr [r12 + 3064], rax
  .section .rodata
  .Lrkfn426: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn426]
 lea rsi, [r12 + 3024]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3008], rax
 mov qword ptr [r12 + 3016], rdx
 cmp eax, 99
 je xchain136_n92_α
 jmp xchain136_n165_α
 xchain136_n160_β:
 jmp xchain136_n92_α
 xchain136_n161_α:
# IR_CUT
 jmp xchain136_n166_α
 xchain136_n161_β:
 jmp xchain136_n114_α
# IR_VAR_REF local
 xchain136_n162_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1424], rax
 mov qword ptr [r12 + 1432], rdx
 jmp xchain136_n167_α
 xchain136_n162_β:
 jmp xchain136_n140_α
 xchain136_n163_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1200] -> [zr+1168]
 mov rax, qword ptr [r12 + 1200]
 mov qword ptr [r12 + 1168], rax
 mov rax, qword ptr [r12 + 1208]
 mov qword ptr [r12 + 1176], rax
# marshal arg1 = producer-box slot [zr+1136] -> [zr+1184]
 mov rax, qword ptr [r12 + 1136]
 mov qword ptr [r12 + 1184], rax
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 1192], rax
  .section .rodata
  .Lrkfn431: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn431]
 lea rsi, [r12 + 1168]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 cmp eax, 99
 je xchain136_n169_α
 jmp xchain136_n168_α
 xchain136_n163_β:
 jmp xchain136_n169_α
 xchain136_n164_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3680] -> [zr+3648]
 mov rax, qword ptr [r12 + 3680]
 mov qword ptr [r12 + 3648], rax
 mov rax, qword ptr [r12 + 3688]
 mov qword ptr [r12 + 3656], rax
# marshal arg1 = producer-box slot [zr+4112] -> [zr+3664]
 mov rax, qword ptr [r12 + 4112]
 mov qword ptr [r12 + 3664], rax
 mov rax, qword ptr [r12 + 4120]
 mov qword ptr [r12 + 3672], rax
  .section .rodata
  .Lrkfn433: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn433]
 lea rsi, [r12 + 3648]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3632], rax
 mov qword ptr [r12 + 3640], rdx
 cmp eax, 99
 je xchain136_n65_α
 jmp xchain136_n170_α
 xchain136_n164_β:
 jmp xchain136_n65_α
 xchain136_n165_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2768] -> [zr+2736]
 mov rax, qword ptr [r12 + 2768]
 mov qword ptr [r12 + 2736], rax
 mov rax, qword ptr [r12 + 2776]
 mov qword ptr [r12 + 2744], rax
# marshal arg1 = producer-box slot [zr+3008] -> [zr+2752]
 mov rax, qword ptr [r12 + 3008]
 mov qword ptr [r12 + 2752], rax
 mov rax, qword ptr [r12 + 3016]
 mov qword ptr [r12 + 2760], rax
  .section .rodata
  .Lrkfn435: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn435]
 lea rsi, [r12 + 2736]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2720], rax
 mov qword ptr [r12 + 2728], rdx
 cmp eax, 99
 je xchain136_n92_α
 jmp xchain136_n171_α
 xchain136_n165_β:
 jmp xchain136_n92_α
# IR_VAR_REF local
 xchain136_n166_α:
 lea rdi, [r12 + 6832]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1952], rax
 mov qword ptr [r12 + 1960], rdx
 jmp xchain136_n172_α
 xchain136_n166_β:
 jmp xchain136_n49_α
# IR_LIT_STRING
 xchain136_n167_α:
 mov qword ptr [r12 + 1600], 1
 mov rax, qword ptr [rip + .Lx438_0]
 mov qword ptr [r12 + 1608], rax
 jmp xchain136_n173_α
 xchain136_n167_β:
 jmp proc_d_ω
.Lx438_0:
 .quad .Lx438_0_s
.Lx438_0_s:
 .string "*"
 xchain136_n168_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1120] -> [zr+1088]
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 1096], rax
# marshal arg1 = producer-box slot [zr+1152] -> [zr+1104]
 mov rax, qword ptr [r12 + 1152]
 mov qword ptr [r12 + 1104], rax
 mov rax, qword ptr [r12 + 1160]
 mov qword ptr [r12 + 1112], rax
  .section .rodata
  .Lrkfn440: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn440]
 lea rsi, [r12 + 1088]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 cmp eax, 99
 je xchain136_n169_α
 jmp xchain136_n174_α
 xchain136_n168_β:
 jmp xchain136_n169_α
 xchain136_n169_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+672]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 680], rax
  .section .rodata
  .Lrkfn442: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn442]
 lea rsi, [r12 + 672]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain136_n175_α
 xchain136_n169_β:
 jmp proc_d_ω
 xchain136_n170_α:
# IR_CUT
 jmp xchain136_n176_α
 xchain136_n170_β:
 jmp xchain136_n65_α
 xchain136_n171_α:
# IR_CUT
 jmp xchain136_n177_α
 xchain136_n171_β:
 jmp xchain136_n92_α
# IR_VAR_REF local
 xchain136_n172_α:
 lea rdi, [r12 + 6864]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1968], rax
 mov qword ptr [r12 + 1976], rdx
 jmp xchain136_n178_α
 xchain136_n172_β:
 jmp xchain136_n49_α
# IR_LIT_STRING
 xchain136_n173_α:
 mov qword ptr [r12 + 1504], 1
 mov rax, qword ptr [rip + .Lx447_0]
 mov qword ptr [r12 + 1512], rax
 jmp xchain136_n179_α
 xchain136_n173_β:
 jmp proc_d_ω
.Lx447_0:
 .quad .Lx447_0_s
.Lx447_0_s:
 .string "exp"
# IR_VAR_REF local
 xchain136_n174_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 jmp xchain136_n180_α
 xchain136_n174_β:
 jmp xchain136_n169_α
# IR_VAR_REF local
 xchain136_n175_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xchain136_n181_α
 xchain136_n175_β:
 jmp xchain136_n194_α
# IR_VAR_REF local
 xchain136_n176_α:
 lea rdi, [r12 + 6832]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3584], rax
 mov qword ptr [r12 + 3592], rdx
 jmp xchain136_n182_α
 xchain136_n176_β:
 jmp xchain136_n49_α
# IR_VAR_REF local
 xchain136_n177_α:
 lea rdi, [r12 + 6816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2704], rax
 mov qword ptr [r12 + 2712], rdx
 jmp xchain136_n183_α
 xchain136_n177_β:
 jmp xchain136_n49_α
# IR_VAR_REF local
 xchain136_n178_α:
 lea rdi, [r12 + 6816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1984], rax
 mov qword ptr [r12 + 1992], rdx
 jmp xchain136_n184_α
 xchain136_n178_β:
 jmp xchain136_n49_α
# IR_VAR_REF local
 xchain136_n179_α:
 lea rdi, [r12 + 6832]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1440], rax
 mov qword ptr [r12 + 1448], rdx
 jmp xchain136_n185_α
 xchain136_n179_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain136_n180_α:
 lea rdi, [r12 + 6864]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 jmp xchain136_n186_α
 xchain136_n180_β:
 jmp xchain136_n169_α
# IR_VAR_REF local
 xchain136_n181_α:
 lea rdi, [r12 + 6848]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xchain136_n187_α
 xchain136_n181_β:
 jmp xchain136_n194_α
# IR_VAR_REF local
 xchain136_n182_α:
 lea rdi, [r12 + 6864]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3600], rax
 mov qword ptr [r12 + 3608], rdx
 jmp xchain136_n188_α
 xchain136_n182_β:
 jmp xchain136_n49_α
 xchain136_n183_α:
# BOX IR_CALL $tt_integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2704] -> [zr+2688]
 mov rax, qword ptr [r12 + 2704]
 mov qword ptr [r12 + 2688], rax
 mov rax, qword ptr [r12 + 2712]
 mov qword ptr [r12 + 2696], rax
  .section .rodata
  .Lrkfn467: .string "$tt_integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn467]
 lea rsi, [r12 + 2688]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2672], rax
 mov qword ptr [r12 + 2680], rdx
 cmp eax, 99
 je xchain136_n49_α
 jmp xchain136_n189_α
 xchain136_n183_β:
 jmp xchain136_n49_α
 xchain136_n184_α:
  .section .rodata
  .Lcall277_pname: .string "d"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1952]
 mov rdx, qword ptr [r12 + 1960]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 1968]
 mov rdx, qword ptr [r12 + 1976]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 1984]
 mov rdx, qword ptr [r12 + 1992]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall277_pname]
 mov esi, 3
 lea rdx, [r12 + 1936]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 1872], rax
 mov qword ptr [r12 + 1880], rdx
 cmp eax, 99
 je xchain136_n49_α
 jmp xchain136_n190_α
xchain136_n184_β:
 mov rdi, qword ptr [r12 + 1936]
 call rt_proc_resume_frame@PLT
 mov qword ptr [r12 + 1872], rax
 mov qword ptr [r12 + 1880], rdx
 cmp eax, 99
 je xchain136_n49_α
 jmp xchain136_n190_α
 xchain136_n185_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1504] -> [zr+1472]
 mov rax, qword ptr [r12 + 1504]
 mov qword ptr [r12 + 1472], rax
 mov rax, qword ptr [r12 + 1512]
 mov qword ptr [r12 + 1480], rax
# marshal arg1 = producer-box slot [zr+1440] -> [zr+1488]
 mov rax, qword ptr [r12 + 1440]
 mov qword ptr [r12 + 1488], rax
 mov rax, qword ptr [r12 + 1448]
 mov qword ptr [r12 + 1496], rax
  .section .rodata
  .Lrkfn470: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn470]
 lea rsi, [r12 + 1472]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1456], rax
 mov qword ptr [r12 + 1464], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain136_n191_α
 xchain136_n185_β:
 jmp proc_d_ω
 xchain136_n186_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1040] -> [zr+1008]
 mov rax, qword ptr [r12 + 1040]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 1048]
 mov qword ptr [r12 + 1016], rax
# marshal arg1 = producer-box slot [zr+1056] -> [zr+1024]
 mov rax, qword ptr [r12 + 1056]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 1064]
 mov qword ptr [r12 + 1032], rax
  .section .rodata
  .Lrkfn472: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn472]
 lea rsi, [r12 + 1008]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 cmp eax, 99
 je xchain136_n169_α
 jmp xchain136_n192_α
 xchain136_n186_β:
 jmp xchain136_n169_α
 xchain136_n187_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+624] -> [zr+592]
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 600], rax
# marshal arg1 = producer-box slot [zr+640] -> [zr+608]
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 616], rax
  .section .rodata
  .Lrkfn474: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn474]
 lea rsi, [r12 + 592]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 cmp eax, 99
 je xchain136_n194_α
 jmp xchain136_n193_α
 xchain136_n187_β:
 jmp xchain136_n194_α
# IR_VAR_REF local
 xchain136_n188_α:
 lea rdi, [r12 + 6880]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3616], rax
 mov qword ptr [r12 + 3624], rdx
 jmp xchain136_n195_α
 xchain136_n188_β:
 jmp xchain136_n49_α
# IR_VAR_REF local
 xchain136_n189_α:
 lea rdi, [r12 + 6896]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2576], rax
 mov qword ptr [r12 + 2584], rdx
 jmp xchain136_n196_α
 xchain136_n189_β:
 jmp xchain136_n49_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain136_n190_α:
 lea rax, [rip + xchain136_n114_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_d_γ
 xchain136_n190_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain136_n191_α:
 lea rdi, [r12 + 6816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
 jmp xchain136_n197_α
 xchain136_n191_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain136_n192_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xchain136_n198_α
 xchain136_n192_β:
 jmp xchain136_n169_α
# IR_VAR_REF local
 xchain136_n193_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp xchain136_n199_α
 xchain136_n193_β:
 jmp xchain136_n194_α
 xchain136_n194_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+400]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 408], rax
  .section .rodata
  .Lrkfn488: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn488]
 lea rsi, [r12 + 400]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain136_n200_α
 xchain136_n194_β:
 jmp proc_d_ω
 xchain136_n195_α:
  .section .rodata
  .Lcall288_pname: .string "d"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3584]
 mov rdx, qword ptr [r12 + 3592]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 3600]
 mov rdx, qword ptr [r12 + 3608]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 3616]
 mov rdx, qword ptr [r12 + 3624]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall288_pname]
 mov esi, 3
 lea rdx, [r12 + 3568]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 3504], rax
 mov qword ptr [r12 + 3512], rdx
 cmp eax, 99
 je xchain136_n49_α
 jmp xchain136_n201_α
xchain136_n195_β:
 mov rdi, qword ptr [r12 + 3568]
 call rt_proc_resume_frame@PLT
 mov qword ptr [r12 + 3504], rax
 mov qword ptr [r12 + 3512], rdx
 cmp eax, 99
 je xchain136_n49_α
 jmp xchain136_n201_α
# IR_VAR
 xchain136_n196_α:
 mov rax, qword ptr [r12 + 6816]
 mov qword ptr [r12 + 2640], rax
 mov rax, qword ptr [r12 + 6824]
 mov qword ptr [r12 + 2648], rax
 jmp xchain136_n202_α
 xchain136_n196_β:
 jmp proc_d_ω
 xchain136_n197_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1600] -> [zr+1552]
 mov rax, qword ptr [r12 + 1600]
 mov qword ptr [r12 + 1552], rax
 mov rax, qword ptr [r12 + 1608]
 mov qword ptr [r12 + 1560], rax
# marshal arg1 = producer-box slot [zr+1456] -> [zr+1568]
 mov rax, qword ptr [r12 + 1456]
 mov qword ptr [r12 + 1568], rax
 mov rax, qword ptr [r12 + 1464]
 mov qword ptr [r12 + 1576], rax
# marshal arg2 = producer-box slot [zr+1520] -> [zr+1584]
 mov rax, qword ptr [r12 + 1520]
 mov qword ptr [r12 + 1584], rax
 mov rax, qword ptr [r12 + 1528]
 mov qword ptr [r12 + 1592], rax
  .section .rodata
  .Lrkfn493: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn493]
 lea rsi, [r12 + 1552]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1536], rax
 mov qword ptr [r12 + 1544], rdx
 cmp eax, 99
 je xchain136_n140_α
 jmp xchain136_n203_α
 xchain136_n197_β:
 jmp xchain136_n140_α
# IR_LIT_STRING
 xchain136_n198_α:
 mov qword ptr [r12 + 976], 1
 mov rax, qword ptr [rip + .Lx494_0]
 mov qword ptr [r12 + 984], rax
 jmp xchain136_n204_α
 xchain136_n198_β:
 jmp proc_d_ω
.Lx494_0:
 .quad .Lx494_0_s
.Lx494_0_s:
 .string "/"
# IR_VAR_REF local
 xchain136_n199_α:
 lea rdi, [r12 + 6848]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain136_n205_α
 xchain136_n199_β:
 jmp xchain136_n194_α
# IR_VAR_REF local
 xchain136_n200_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain136_n206_α
 xchain136_n200_β:
 jmp xchain136_n49_α
# IR_VAR_REF local
 xchain136_n201_α:
 lea rdi, [r12 + 6816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3456], rax
 mov qword ptr [r12 + 3464], rdx
 jmp xchain136_n207_α
 xchain136_n201_β:
 jmp xchain136_n49_α
# IR_LIT_INTEGER
 xchain136_n202_α:
 mov qword ptr [r12 + 2656], 6
 mov rax, qword ptr [rip + .Lx501_0]
 mov qword ptr [r12 + 2664], rax
 jmp xchain136_n208_α
 xchain136_n202_β:
 jmp proc_d_ω
.Lx501_0:
 .quad 1
 xchain136_n203_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1424] -> [zr+1392]
 mov rax, qword ptr [r12 + 1424]
 mov qword ptr [r12 + 1392], rax
 mov rax, qword ptr [r12 + 1432]
 mov qword ptr [r12 + 1400], rax
# marshal arg1 = producer-box slot [zr+1536] -> [zr+1408]
 mov rax, qword ptr [r12 + 1536]
 mov qword ptr [r12 + 1408], rax
 mov rax, qword ptr [r12 + 1544]
 mov qword ptr [r12 + 1416], rax
  .section .rodata
  .Lrkfn503: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn503]
 lea rsi, [r12 + 1392]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1376], rax
 mov qword ptr [r12 + 1384], rdx
 cmp eax, 99
 je xchain136_n140_α
 jmp xchain136_n209_α
 xchain136_n203_β:
 jmp xchain136_n140_α
# IR_VAR_REF local
 xchain136_n204_α:
 lea rdi, [r12 + 6816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 jmp xchain136_n210_α
 xchain136_n204_β:
 jmp proc_d_ω
 xchain136_n205_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+544] -> [zr+512]
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 520], rax
# marshal arg1 = producer-box slot [zr+560] -> [zr+528]
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 536], rax
  .section .rodata
  .Lrkfn507: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn507]
 lea rsi, [r12 + 512]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 cmp eax, 99
 je xchain136_n194_α
 jmp xchain136_n211_α
 xchain136_n205_β:
 jmp xchain136_n194_α
# IR_VAR_REF local
 xchain136_n206_α:
 lea rdi, [r12 + 6832]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain136_n212_α
 xchain136_n206_β:
 jmp xchain136_n49_α
# IR_VAR_REF local
 xchain136_n207_α:
 lea rdi, [r12 + 6864]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3472], rax
 mov qword ptr [r12 + 3480], rdx
 jmp xchain136_n213_α
 xchain136_n207_β:
 jmp xchain136_n49_α
 xchain136_n208_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2640] -> [zr+2608]
 mov rax, qword ptr [r12 + 2640]
 mov qword ptr [r12 + 2608], rax
 mov rax, qword ptr [r12 + 2648]
 mov qword ptr [r12 + 2616], rax
# marshal arg1 = producer-box slot [zr+2656] -> [zr+2624]
 mov rax, qword ptr [r12 + 2656]
 mov qword ptr [r12 + 2624], rax
 mov rax, qword ptr [r12 + 2664]
 mov qword ptr [r12 + 2632], rax
  .section .rodata
  .Lrkfn513: .string "$ax_sub"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn513]
 lea rsi, [r12 + 2608]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2592], rax
 mov qword ptr [r12 + 2600], rdx
 cmp eax, 99
 je xchain136_n49_α
 jmp xchain136_n214_α
 xchain136_n208_β:
 jmp xchain136_n49_α
 xchain136_n209_α:
# IR_CUT
 jmp xchain136_n215_α
 xchain136_n209_β:
 jmp xchain136_n140_α
# IR_VAR_REF local
 xchain136_n210_α:
 lea rdi, [r12 + 6832]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 jmp xchain136_n216_α
 xchain136_n210_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain136_n211_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain136_n217_α
 xchain136_n211_β:
 jmp xchain136_n194_α
 xchain136_n212_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+352] -> [zr+320]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 328], rax
# marshal arg1 = producer-box slot [zr+368] -> [zr+336]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 344], rax
  .section .rodata
  .Lrkfn520: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn520]
 lea rsi, [r12 + 320]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain136_n49_α
 jmp xchain136_n218_α
 xchain136_n212_β:
 jmp xchain136_n49_α
# IR_VAR_REF local
 xchain136_n213_α:
 lea rdi, [r12 + 6896]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3488], rax
 mov qword ptr [r12 + 3496], rdx
 jmp xchain136_n219_α
 xchain136_n213_β:
 jmp xchain136_n49_α
 xchain136_n214_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2576] -> [zr+2544]
 mov rax, qword ptr [r12 + 2576]
 mov qword ptr [r12 + 2544], rax
 mov rax, qword ptr [r12 + 2584]
 mov qword ptr [r12 + 2552], rax
# marshal arg1 = producer-box slot [zr+2592] -> [zr+2560]
 mov rax, qword ptr [r12 + 2592]
 mov qword ptr [r12 + 2560], rax
 mov rax, qword ptr [r12 + 2600]
 mov qword ptr [r12 + 2568], rax
  .section .rodata
  .Lrkfn524: .string "$is_v"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn524]
 lea rsi, [r12 + 2544]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2528], rax
 mov qword ptr [r12 + 2536], rdx
 cmp eax, 99
 je xchain136_n49_α
 jmp xchain136_n220_α
 xchain136_n214_β:
 jmp xchain136_n49_α
# IR_VAR_REF local
 xchain136_n215_α:
 lea rdi, [r12 + 6832]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 jmp xchain136_n221_α
 xchain136_n215_β:
 jmp xchain136_n49_α
 xchain136_n216_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+976] -> [zr+928]
 mov rax, qword ptr [r12 + 976]
 mov qword ptr [r12 + 928], rax
 mov rax, qword ptr [r12 + 984]
 mov qword ptr [r12 + 936], rax
# marshal arg1 = producer-box slot [zr+880] -> [zr+944]
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 944], rax
 mov rax, qword ptr [r12 + 888]
 mov qword ptr [r12 + 952], rax
# marshal arg2 = producer-box slot [zr+896] -> [zr+960]
 mov rax, qword ptr [r12 + 896]
 mov qword ptr [r12 + 960], rax
 mov rax, qword ptr [r12 + 904]
 mov qword ptr [r12 + 968], rax
  .section .rodata
  .Lrkfn528: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn528]
 lea rsi, [r12 + 928]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 cmp eax, 99
 je xchain136_n169_α
 jmp xchain136_n222_α
 xchain136_n216_β:
 jmp xchain136_n169_α
# IR_LIT_INTEGER
 xchain136_n217_α:
 mov qword ptr [r12 + 480], 6
 mov rax, qword ptr [rip + .Lx529_0]
 mov qword ptr [r12 + 488], rax
 jmp xchain136_n223_α
 xchain136_n217_β:
 jmp xchain136_n194_α
.Lx529_0:
 .quad 1
# IR_VAR_REF local
 xchain136_n218_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain136_n224_α
 xchain136_n218_β:
 jmp xchain136_n49_α
 xchain136_n219_α:
  .section .rodata
  .Lcall312_pname: .string "d"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3456]
 mov rdx, qword ptr [r12 + 3464]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 3472]
 mov rdx, qword ptr [r12 + 3480]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 3488]
 mov rdx, qword ptr [r12 + 3496]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall312_pname]
 mov esi, 3
 lea rdx, [r12 + 3440]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 3376], rax
 mov qword ptr [r12 + 3384], rdx
 cmp eax, 99
 je xchain136_n195_β
 jmp xchain136_n225_α
xchain136_n219_β:
 mov rdi, qword ptr [r12 + 3440]
 call rt_proc_resume_frame@PLT
 mov qword ptr [r12 + 3376], rax
 mov qword ptr [r12 + 3384], rdx
 cmp eax, 99
 je xchain136_n195_β
 jmp xchain136_n225_α
# IR_VAR_REF local
 xchain136_n220_α:
 lea rdi, [r12 + 6832]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2480], rax
 mov qword ptr [r12 + 2488], rdx
 jmp xchain136_n226_α
 xchain136_n220_β:
 jmp xchain136_n49_α
# IR_VAR_REF local
 xchain136_n221_α:
 lea rdi, [r12 + 6864]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1344], rax
 mov qword ptr [r12 + 1352], rdx
 jmp xchain136_n227_α
 xchain136_n221_β:
 jmp xchain136_n49_α
 xchain136_n222_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+864] -> [zr+832]
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 840], rax
# marshal arg1 = producer-box slot [zr+912] -> [zr+848]
 mov rax, qword ptr [r12 + 912]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 920]
 mov qword ptr [r12 + 856], rax
  .section .rodata
  .Lrkfn538: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn538]
 lea rsi, [r12 + 832]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 cmp eax, 99
 je xchain136_n169_α
 jmp xchain136_n228_α
 xchain136_n222_β:
 jmp xchain136_n169_α
 xchain136_n223_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+464] -> [zr+432]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 440], rax
# marshal arg1 = producer-box slot [zr+480] -> [zr+448]
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 456], rax
  .section .rodata
  .Lrkfn540: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn540]
 lea rsi, [r12 + 432]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 cmp eax, 99
 je xchain136_n194_α
 jmp xchain136_n229_α
 xchain136_n223_β:
 jmp xchain136_n194_α
# IR_VAR_REF local
 xchain136_n224_α:
 lea rdi, [r12 + 6816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain136_n230_α
 xchain136_n224_β:
 jmp xchain136_n49_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain136_n225_α:
 lea rax, [rip + xchain136_n65_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_d_γ
 xchain136_n225_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain136_n226_α:
 lea rdi, [r12 + 6864]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2496], rax
 mov qword ptr [r12 + 2504], rdx
 jmp xchain136_n231_α
 xchain136_n226_β:
 jmp xchain136_n49_α
# IR_VAR_REF local
 xchain136_n227_α:
 lea rdi, [r12 + 6816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1360], rax
 mov qword ptr [r12 + 1368], rdx
 jmp xchain136_n232_α
 xchain136_n227_β:
 jmp xchain136_n49_α
 xchain136_n228_α:
# IR_CUT
 jmp xchain136_n233_α
 xchain136_n228_β:
 jmp xchain136_n169_α
 xchain136_n229_α:
# IR_CUT
 jmp xchain136_n234_α
 xchain136_n229_β:
 jmp xchain136_n194_α
 xchain136_n230_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+272] -> [zr+240]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 248], rax
# marshal arg1 = producer-box slot [zr+288] -> [zr+256]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lrkfn552: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn552]
 lea rsi, [r12 + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain136_n49_α
 jmp xchain136_n235_α
 xchain136_n230_β:
 jmp xchain136_n49_α
# IR_VAR_REF local
 xchain136_n231_α:
 lea rdi, [r12 + 6880]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2512], rax
 mov qword ptr [r12 + 2520], rdx
 jmp xchain136_n236_α
 xchain136_n231_β:
 jmp xchain136_n49_α
 xchain136_n232_α:
  .section .rodata
  .Lcall325_pname: .string "d"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1328]
 mov rdx, qword ptr [r12 + 1336]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 1344]
 mov rdx, qword ptr [r12 + 1352]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 1360]
 mov rdx, qword ptr [r12 + 1368]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall325_pname]
 mov esi, 3
 lea rdx, [r12 + 1312]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 cmp eax, 99
 je xchain136_n49_α
 jmp xchain136_n237_α
xchain136_n232_β:
 mov rdi, qword ptr [r12 + 1312]
 call rt_proc_resume_frame@PLT
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 cmp eax, 99
 je xchain136_n49_α
 jmp xchain136_n237_α
# IR_VAR_REF local
 xchain136_n233_α:
 lea rdi, [r12 + 6832]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain136_n238_α
 xchain136_n233_β:
 jmp xchain136_n49_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain136_n234_α:
 lea rax, [rip + xchain136_n194_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_d_γ
 xchain136_n234_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain136_n235_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain136_n239_α
 xchain136_n235_β:
 jmp xchain136_n49_α
 xchain136_n236_α:
  .section .rodata
  .Lcall329_pname: .string "d"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2480]
 mov rdx, qword ptr [r12 + 2488]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 2496]
 mov rdx, qword ptr [r12 + 2504]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 2512]
 mov rdx, qword ptr [r12 + 2520]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall329_pname]
 mov esi, 3
 lea rdx, [r12 + 2464]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 2400], rax
 mov qword ptr [r12 + 2408], rdx
 cmp eax, 99
 je xchain136_n49_α
 jmp xchain136_n240_α
xchain136_n236_β:
 mov rdi, qword ptr [r12 + 2464]
 call rt_proc_resume_frame@PLT
 mov qword ptr [r12 + 2400], rax
 mov qword ptr [r12 + 2408], rdx
 cmp eax, 99
 je xchain136_n49_α
 jmp xchain136_n240_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain136_n237_α:
 lea rax, [rip + xchain136_n140_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_d_γ
 xchain136_n237_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain136_n238_α:
 lea rdi, [r12 + 6864]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain136_n241_α
 xchain136_n238_β:
 jmp xchain136_n49_α
# IR_LIT_INTEGER
 xchain136_n239_α:
 mov qword ptr [r12 + 208], 6
 mov rax, qword ptr [rip + .Lx567_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain136_n242_α
 xchain136_n239_β:
 jmp xchain136_n49_α
.Lx567_0:
 .quad 0
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain136_n240_α:
 lea rax, [rip + xchain136_n92_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_d_γ
 xchain136_n240_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain136_n241_α:
 lea rdi, [r12 + 6816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 jmp xchain136_n243_α
 xchain136_n241_β:
 jmp xchain136_n49_α
 xchain136_n242_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+192] -> [zr+160]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 168], rax
# marshal arg1 = producer-box slot [zr+208] -> [zr+176]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 184], rax
  .section .rodata
  .Lrkfn573: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn573]
 lea rsi, [r12 + 160]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain136_n49_α
 jmp xchain136_n244_α
 xchain136_n242_β:
 jmp xchain136_n49_α
 xchain136_n243_α:
  .section .rodata
  .Lcall336_pname: .string "d"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 768]
 mov rdx, qword ptr [r12 + 776]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 784]
 mov rdx, qword ptr [r12 + 792]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 800]
 mov rdx, qword ptr [r12 + 808]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall336_pname]
 mov esi, 3
 lea rdx, [r12 + 752]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 cmp eax, 99
 je xchain136_n49_α
 jmp xchain136_n245_α
xchain136_n243_β:
 mov rdi, qword ptr [r12 + 752]
 call rt_proc_resume_frame@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 cmp eax, 99
 je xchain136_n49_α
 jmp xchain136_n245_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain136_n244_α:
 lea rax, [rip + xchain136_n49_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_d_γ
 xchain136_n244_β:
 jmp proc_d_ω
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain136_n245_α:
 lea rax, [rip + xchain136_n169_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_d_γ
 xchain136_n245_β:
 jmp proc_d_ω
proc_d_β:
jmp xchain136_n71_α
proc_d_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 6800]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_d_ω:
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
  .globl proc_top_α
proc_top_α:
#=======================================================================================================================
    .global proc_top_α
    .global proc_top_β
    .global proc_top_γ
    .global proc_top_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_top_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 192], rax
 pop rsi
proc_top_α_body:
 xchain579_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn581: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn581]
 lea rsi, [r12 + 64]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je proc_top_ω
 jmp xchain579_n1_α
 xchain579_n0_β:
 jmp proc_top_ω
 xchain579_n1_α:
  .section .rodata
  .Lcall340_pname: .string "ops8"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall340_pname]
 mov esi, 0
 lea rdx, [r12 + 176]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je xchain579_n3_α
 jmp xchain579_n2_α
xchain579_n1_β:
 mov rdi, qword ptr [r12 + 176]
 call rt_proc_resume_frame@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je xchain579_n3_α
 jmp xchain579_n2_α
 xchain579_n2_α:
  .section .rodata
  .Lcall341_pname: .string "log10"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall341_pname]
 mov esi, 0
 lea rdx, [r12 + 144]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain579_n1_β
 jmp xchain579_n4_α
xchain579_n2_β:
 mov rdi, qword ptr [r12 + 144]
 call rt_proc_resume_frame@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain579_n1_β
 jmp xchain579_n4_α
 xchain579_n3_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+80]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 88], rax
  .section .rodata
  .Lrkfn585: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn585]
 lea rsi, [r12 + 80]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je proc_top_ω
 jmp proc_top_ω
 xchain579_n3_β:
 jmp proc_top_ω
 xchain579_n4_α:
  .section .rodata
  .Lcall343_pname: .string "divide10"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall343_pname]
 mov esi, 0
 lea rdx, [r12 + 112]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain579_n2_β
 jmp xchain579_n5_α
xchain579_n4_β:
 mov rdi, qword ptr [r12 + 112]
 call rt_proc_resume_frame@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain579_n2_β
 jmp xchain579_n5_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain579_n5_α:
 lea rax, [rip + xchain579_n1_β]
 mov qword ptr [r12 + 32], rax
 jmp proc_top_γ
 xchain579_n5_β:
 jmp proc_top_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain579_n6_α:
 jmp qword ptr [r12 + 32]
 xchain579_n6_β:
 jmp proc_top_ω
proc_top_β:
jmp xchain579_n6_α
proc_top_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 192]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_top_ω:
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
proc_startup:
  push rbp
  mov rbp, rsp
  .section .rodata
  .Lstartup_pname0: .string "divide10"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_divide10_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname1: .string "log10"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_log10_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname2: .string "ops8"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_ops8_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname3: .string "d"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_d_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname4: .string "top"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname4]
  lea rsi, [rip + proc_top_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  pop rbp
  ret
  .globl main
main:
  push rbp
  mov rbp, rsp
  push rdi
  push rsi
  call core_lib_init@PLT
  call proc_startup
  call rt_frame@PLT
  mov rdi, rax
  xor esi, esi
  call main_α
  xor eax, eax
  mov rsp, rbp
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
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 272], rax
 pop rsi
main_α_body:
 xchain591_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn593: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn593]
 lea rsi, [r12 + 64]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain591_n1_α
 xchain591_n0_β:
 jmp main_ω
 xchain591_n1_α:
  .section .rodata
  .Lcall347_pname: .string "top"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall347_pname]
 mov esi, 0
 lea rdx, [r12 + 256]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain591_n3_α
 jmp xchain591_n2_α
xchain591_n1_β:
 mov rdi, qword ptr [r12 + 256]
 call rt_proc_resume_frame@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain591_n3_α
 jmp xchain591_n2_α
# IR_LIT_STRING
 xchain591_n2_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx595_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain591_n4_α
 xchain591_n2_β:
 jmp xchain591_n7_α
.Lx595_0:
 .quad .Lx595_0_s
.Lx595_0_s:
 .string "ok"
# IR_LIT_STRING
 xchain591_n3_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx596_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain591_n5_α
 xchain591_n3_β:
 jmp xchain591_n7_α
.Lx596_0:
 .quad .Lx596_0_s
.Lx596_0_s:
 .string "failed"
 xchain591_n4_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+160]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn598: .string "$write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn598]
 lea rsi, [r12 + 160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain591_n7_α
 jmp xchain591_n6_α
 xchain591_n4_β:
 jmp xchain591_n7_α
 xchain591_n5_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+208]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lrkfn600: .string "$write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn600]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain591_n7_α
 jmp xchain591_n6_α
 xchain591_n5_β:
 jmp xchain591_n7_α
# IR_LIT_STRING
 xchain591_n6_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx601_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain591_n8_α
 xchain591_n6_β:
 jmp xchain591_n7_α
.Lx601_0:
 .quad .Lx601_0_s
.Lx601_0_s:
 .string ""
 xchain591_n7_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+80]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 88], rax
  .section .rodata
  .Lrkfn603: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn603]
 lea rsi, [r12 + 80]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain591_n7_β:
 jmp main_ω
 xchain591_n8_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn605: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn605]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain591_n7_α
 jmp xchain591_n9_α
 xchain591_n8_β:
 jmp xchain591_n7_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain591_n9_α:
 lea rax, [rip + xchain591_n7_α]
 mov qword ptr [r12 + 32], rax
 jmp main_γ
 xchain591_n9_β:
 jmp main_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain591_n10_α:
 jmp qword ptr [r12 + 32]
 xchain591_n10_β:
 jmp main_ω
main_β:
jmp xchain591_n10_α
main_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 272]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
main_ω:
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
