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
# IR_KEYWORD_read
bb1_α:
 mov rdi, qword ptr [rip + .Lx1_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n4_α
.Lx1_0:
 .quad .Lx1_0_s
.Lx1_0_s:
 .string "&lcase"
xchain0_n1_α:
# IR_KEYWORD_read
bb2_α:
 mov rdi, qword ptr [rip + .Lx2_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n4_α
.Lx2_0:
 .quad .Lx2_0_s
.Lx2_0_s:
 .string "&ucase"
xchain0_n2_α:
jmp xbinop3_lhs_done
xbinop3_lhs_done:
jmp xbinop3_rhs_done
xbinop3_rhs_done:
bb3_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 176]
 mov rsi, qword ptr [r12 + 184]
 mov rdx, qword ptr [r12 + 192]
 mov rcx, qword ptr [r12 + 200]
 mov r8d, 19
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n4_α
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n4_α
xchain0_n3_α:
# IR_LIT_S
bb4_α:
 mov qword ptr [r12 + 224], 1
 mov dword ptr [r12 + 228], -1
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain0_n5_α
 xchain0_n3_β:
 jmp xchain0_n4_α
.Lx5_0:
 .quad .Lx5_0_s
.Lx5_0_s:
 .string "'"
xchain0_n4_α:
bb5_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+256]
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx6_0]
 mov qword ptr [r12 + 264], rax
 jmp .Lx6_1
.Lx6_0:
 .quad .Lx6_0_s
.Lx6_0_s:
 .string ""
.Lx6_1:
  .section .rodata
  .Lrkfn7: .string "table"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn7]
 lea rsi, [r12 + 256]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain0_n7_α
 jmp xchain0_n6_α
 xchain0_n4_β:
 jmp xchain0_n7_α
xchain0_n5_α:
jmp xbinop8_lhs_done
xbinop8_lhs_done:
jmp xbinop8_rhs_done
xbinop8_rhs_done:
bb6_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 208]
 mov rsi, qword ptr [r12 + 216]
 mov rdx, qword ptr [r12 + 224]
 mov rcx, qword ptr [r12 + 232]
 mov r8d, 19
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n4_α
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain0_n8_α
 xchain0_n5_β:
 jmp xchain0_n4_α
xchain0_n6_α:
bb7_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp xchain0_n7_α
xchain0_n7_α:
# IR_LIT_I
bb8_α:
 mov qword ptr [r12 + 304], 6
 mov rax, qword ptr [rip + .Lx11_0]
 mov qword ptr [r12 + 312], rax
 jmp xchain0_n9_α
 xchain0_n7_β:
 jmp xchain0_n11_α
.Lx11_0:
 .quad 0
xchain0_n8_α:
bb9_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain0_n4_α
 xchain0_n8_β:
 jmp xchain0_n4_α
xchain0_n9_α:
bb10_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 304]
 mov rdx, qword ptr [r12 + 312]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain0_n10_α
 xchain0_n9_β:
 jmp xchain0_n11_α
xchain0_n10_α:
bb11_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 336]
 mov rdx, qword ptr [r12 + 344]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain0_n11_α
 xchain0_n10_β:
 jmp xchain0_n11_α
xchain0_n11_α:
bb12_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn16: .string "read"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn16]
 lea rsi, [r12 + 384]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je xchain0_n13_α
 jmp xchain0_n12_α
 xchain0_n11_β:
 jmp xchain0_n13_α
xchain0_n12_α:
bb13_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 368]
 mov rdx, qword ptr [r12 + 376]
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain0_n14_α
 xchain0_n12_β:
 jmp xchain0_n13_α
xchain0_n13_α:
xchain0_n13_β:
jmp xchain0_n15_α
jmp xchain0_n15_α
xchain0_n14_α:
# IR_VAR
bb14_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n16_α
 xchain0_n14_β:
 jmp xchain0_n22_α
xchain0_n15_α:
bb15_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn21: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn21]
 lea rsi, [r12 + 416]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je xchain0_n17_α
 jmp xchain0_n17_α
 xchain0_n15_β:
 jmp xchain0_n17_α
xchain0_n16_α:
# IR_LIT_I
bb16_α:
 mov qword ptr [r12 + 416], 6
 mov rax, qword ptr [rip + .Lx22_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain0_n18_α
 xchain0_n16_β:
 jmp xchain0_n22_α
.Lx22_0:
 .quad 1
xchain0_n17_α:
bb17_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+0] -> [r12+448]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 456], rax
  .section .rodata
  .Lrkfn24: .string "sort"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn24]
 lea rsi, [r12 + 448]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 cmp eax, 99
 je xchain0_n20_α
 jmp xchain0_n19_α
 xchain0_n17_β:
 jmp xchain0_n20_α
xchain0_n18_α:
bb18_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 40]
 mov rcx, qword ptr [r12 + 424]
 add rax, rcx
 mov qword ptr [r12 + 464], 6
 mov qword ptr [r12 + 472], rax
 jmp xchain0_n21_α
 xchain0_n18_β:
 jmp xchain0_n22_α
xchain0_n19_α:
bb19_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 432]
 mov rdx, qword ptr [r12 + 440]
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain0_n20_α
 xchain0_n19_β:
 jmp xchain0_n20_α
xchain0_n20_α:
# IR_LIT_I
bb20_α:
 mov qword ptr [r12 + 496], 6
 mov rax, qword ptr [rip + .Lx27_0]
 mov qword ptr [r12 + 504], rax
 jmp xchain0_n23_α
 xchain0_n20_β:
 jmp xchain0_n26_α
.Lx27_0:
 .quad 0
xchain0_n21_α:
bb21_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 464]
 mov rdx, qword ptr [r12 + 472]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain0_n22_α
 xchain0_n21_β:
 jmp xchain0_n22_α
xchain0_n22_α:
bb22_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+32] -> [r12+544]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 552], rax
# marshal arg1 = LIT_I -> [r12+560]
 mov qword ptr [r12 + 560], 6
 movabs rax, 6
 mov qword ptr [r12 + 568], rax
  .section .rodata
  .Lrkfn30: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn30]
 lea rsi, [r12 + 544]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 cmp eax, 99
 je xchain0_n25_α
 jmp xchain0_n24_α
 xchain0_n22_β:
 jmp xchain0_n25_α
xchain0_n23_α:
bb23_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 496]
 mov rdx, qword ptr [r12 + 504]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain0_n26_α
 xchain0_n23_β:
 jmp xchain0_n26_α
xchain0_n24_α:
# IR_LIT_S
bb24_α:
 mov qword ptr [r12 + 592], 1
 mov rax, qword ptr [rip + .Lx32_0]
 mov qword ptr [r12 + 600], rax
 jmp xchain0_n27_α
 xchain0_n24_β:
 jmp xchain0_n25_α
.Lx32_0:
 .quad .Lx32_0_s
.Lx32_0_s:
 .string "  "
xchain0_n25_α:
bb25_α:
# BOX IR_CALL map(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+64] -> [r12+624]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 632], rax
  .section .rodata
  .Lrkfn34: .string "map"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn34]
 lea rsi, [r12 + 624]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 cmp eax, 99
 je xchain0_n29_α
 jmp xchain0_n28_α
 xchain0_n25_β:
 jmp xchain0_n29_α
xchain0_n26_α:
bb26_α:
# BOX IR_CALL [](...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+80] -> [r12+688]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 696], rax
# marshal arg1 = varslot [r12+96] -> [r12+704]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 712], rax
  .section .rodata
  .Lcallfn36: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn36]
 lea rsi, [r12 + 688]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
# marshal arg1 = LIT_I -> [r12+672]
 mov qword ptr [r12 + 672], 6
 movabs rax, 1
 mov qword ptr [r12 + 680], rax
  .section .rodata
  .Lbynamefn37: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn37]
 lea rsi, [r12 + 656]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 cmp eax, 99
 je xchain0_n31_α
 jmp xchain0_n30_α
xchain0_n26_β:
 jmp xchain0_n31_α
xchain0_n27_α:
# IR_VAR
bb27_α:
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 72], rax
 jmp xchain0_n32_α
 xchain0_n27_β:
 jmp xchain0_n25_α
xchain0_n28_α:
bb28_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 608]
 mov rdx, qword ptr [r12 + 616]
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain0_n29_α
 xchain0_n28_β:
 jmp xchain0_n29_α
xchain0_n29_α:
# IR_LIT_I
bb29_α:
 mov qword ptr [r12 + 736], 6
 mov rax, qword ptr [rip + .Lx41_0]
 mov qword ptr [r12 + 744], rax
 jmp xchain0_n33_α
 xchain0_n29_β:
 jmp xchain0_n35_α
.Lx41_0:
 .quad 1
xchain0_n30_α:
bb30_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 640]
 mov rdx, qword ptr [r12 + 648]
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain0_n34_α
 xchain0_n30_β:
 jmp xchain0_n31_α
xchain0_n31_α:
xchain0_n31_β:
jmp main_γ
jmp main_γ
xchain0_n32_α:
bb31_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+32] -> [r12+832]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 840], rax
# marshal arg1 = LIT_I -> [r12+848]
 mov qword ptr [r12 + 848], 6
 movabs rax, 6
 mov qword ptr [r12 + 856], rax
  .section .rodata
  .Lcallfn44: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn44]
 lea rsi, [r12 + 832]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+800]
 mov qword ptr [r12 + 800], 1
 mov rax, qword ptr [rip + .Lx43_2]
 mov qword ptr [r12 + 808], rax
 jmp .Lx43_3
.Lx43_2:
 .quad .Lx43_2_s
.Lx43_2_s:
 .string "  "
.Lx43_3:
# marshal arg2 = varslot [r12+64] -> [r12+816]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 824], rax
  .section .rodata
  .Lrkfn45: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn45]
 lea rsi, [r12 + 784]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 cmp eax, 99
 je xchain0_n25_α
 jmp xchain0_n25_α
 xchain0_n32_β:
 jmp xchain0_n25_α
xchain0_n33_α:
bb32_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 736]
 mov rdx, qword ptr [r12 + 744]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xchain0_n35_α
 xchain0_n33_β:
 jmp xchain0_n35_α
xchain0_n34_α:
# IR_LIT_S
bb33_α:
 mov qword ptr [r12 + 880], 1
 mov rax, qword ptr [rip + .Lx47_0]
 mov qword ptr [r12 + 888], rax
 jmp xchain0_n36_α
 xchain0_n34_β:
 jmp xchain0_n39_α
.Lx47_0:
 .quad .Lx47_0_s
.Lx47_0_s:
 .string ""
xchain0_n35_α:
bb34_α:
# BOX IR_CALL upto(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+16] -> [r12+912]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 920], rax
# marshal arg1 = varslot [r12+64] -> [r12+928]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 928], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 936], rax
# marshal arg2 = varslot [r12+96] -> [r12+944]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 944], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 952], rax
  .section .rodata
  .Lbynamefn49: .string "upto"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn49]
 lea rsi, [r12 + 912]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 cmp eax, 99
 je xchain0_n38_α
 jmp xchain0_n37_α
xchain0_n35_β:
 jmp xchain0_n38_α
xchain0_n36_α:
bb35_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 880]
 mov rdx, qword ptr [r12 + 888]
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 jmp xchain0_n39_α
 xchain0_n36_β:
 jmp xchain0_n39_α
xchain0_n37_α:
bb36_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 896]
 mov rdx, qword ptr [r12 + 904]
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 jmp xchain0_n40_α
 xchain0_n37_β:
 jmp xchain0_n38_α
xchain0_n38_α:
xchain0_n38_β:
jmp xchain0_n41_α
jmp xchain0_n41_α
xchain0_n39_α:
bb37_α:
# BOX IR_CALL sort(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+80] -> [r12+1056]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 1056], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 1064], rax
# marshal arg1 = varslot [r12+96] -> [r12+1072]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 1080], rax
  .section .rodata
  .Lcallfn53: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn53]
 lea rsi, [r12 + 1056]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
# marshal arg1 = LIT_I -> [r12+1040]
 mov qword ptr [r12 + 1040], 6
 movabs rax, 2
 mov qword ptr [r12 + 1048], rax
  .section .rodata
  .Lcallfn54: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn54]
 lea rsi, [r12 + 1024]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
  .section .rodata
  .Lrkfn55: .string "sort"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn55]
 lea rsi, [r12 + 1008]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 cmp eax, 99
 je xchain0_n43_α
 jmp xchain0_n42_α
 xchain0_n39_β:
 jmp xchain0_n43_α
xchain0_n40_α:
bb38_α:
# BOX IR_CALL many(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+16] -> [r12+1104]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1104], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1112], rax
# marshal arg1 = varslot [r12+64] -> [r12+1120]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 1128], rax
# marshal arg2 = varslot [r12+144] -> [r12+1136]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 1136], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 1144], rax
  .section .rodata
  .Lbynamefn57: .string "many"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn57]
 lea rsi, [r12 + 1104]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1088], rax
 mov qword ptr [r12 + 1096], rdx
 cmp eax, 99
 je xchain0_n45_α
 jmp xchain0_n44_α
xchain0_n40_β:
 jmp xchain0_n45_α
xchain0_n41_α:
jmp xchain0_n11_α
xchain0_n41_β:
jmp xchain0_n11_α
xchain0_n42_α:
bb39_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 992]
 mov rdx, qword ptr [r12 + 1000]
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 jmp xchain0_n43_α
 xchain0_n42_β:
 jmp xchain0_n43_α
xchain0_n43_α:
# IR_VAR
bb40_α:
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 136], rax
 jmp xchain0_n46_α
 xchain0_n43_β:
 jmp xchain0_n49_α
xchain0_n44_α:
bb41_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1088]
 mov rdx, qword ptr [r12 + 1096]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 jmp xchain0_n45_α
 xchain0_n44_β:
 jmp xchain0_n45_α
xchain0_n45_α:
# IR_VAR
bb42_α:
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 72], rax
 jmp xchain0_n47_α
 xchain0_n45_β:
 jmp xchain0_n53_α
xchain0_n46_α:
bb43_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+160] -> [r12+1200]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 1200], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 1208], rax
  .section .rodata
  .Lrkfn65: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn65]
 lea rsi, [r12 + 1200]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], rdx
 cmp eax, 99
 je xchain0_n49_α
 jmp xchain0_n48_α
 xchain0_n46_β:
 jmp xchain0_n49_α
xchain0_n47_α:
# IR_VAR
bb44_α:
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 152], rax
 jmp xsec66_i1_done
 xsec66_i1_b:
 jmp xchain0_n53_α
xsec66_i1_done:
# IR_VAR
bb45_α:
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 104], rax
 jmp xsec66_i2_done
 xsec66_i2_b:
 jmp xchain0_n53_α
xsec66_i2_done:
# IR_SECTION
bb46_α:
 mov rdi, qword ptr [r12 + 64]
 mov rsi, qword ptr [r12 + 72]
 mov rdx, qword ptr [r12 + 144]
 mov rcx, qword ptr [r12 + 152]
 mov r8, qword ptr [r12 + 96]
 mov r9, qword ptr [r12 + 104]
 call subscript_get2@PLT
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
 jmp xchain0_n50_α
 xchain0_n47_β:
 jmp xchain0_n53_α
xchain0_n48_α:
# IR_LIT_S
bb47_α:
 mov qword ptr [r12 + 1232], 1
 mov rax, qword ptr [rip + .Lx72_0]
 mov qword ptr [r12 + 1240], rax
 jmp xchain0_n51_α
 xchain0_n48_β:
 jmp xchain0_n49_α
.Lx72_0:
 .quad .Lx72_0_s
.Lx72_0_s:
 .string ", "
xchain0_n49_α:
xchain0_n49_β:
jmp xchain0_n52_α
jmp xchain0_n52_α
xchain0_n50_α:
bb48_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1216]
 mov rdx, qword ptr [r12 + 1224]
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 jmp xchain0_n53_α
 xchain0_n50_β:
 jmp xchain0_n53_α
xchain0_n51_α:
bb49_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 1184]
 mov rsi, qword ptr [r12 + 1192]
 mov rdx, qword ptr [r12 + 1232]
 mov rcx, qword ptr [r12 + 1240]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], rdx
 jmp xchain0_n54_α
 xchain0_n51_β:
 jmp xchain0_n49_α
xchain0_n52_α:
bb50_α:
# BOX IR_CALL left(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+112] -> [r12+1296]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 1296], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 1304], rax
# marshal arg1 = varslot [r12+48] -> [r12+1312]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 1312], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 1320], rax
  .section .rodata
  .Lrkfn76: .string "left"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn76]
 lea rsi, [r12 + 1296]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 cmp eax, 99
 je xchain0_n26_α
 jmp xchain0_n55_α
 xchain0_n52_β:
 jmp xchain0_n26_α
xchain0_n53_α:
# IR_VAR
bb51_α:
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 120], rax
 jmp xchain0_n56_α
 xchain0_n53_β:
 jmp xchain0_n64_α
xchain0_n54_α:
bb52_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 mov rdx, qword ptr [r12 + 1264]
 mov rcx, qword ptr [r12 + 1272]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 jmp xchain0_n57_α
 xchain0_n54_β:
 jmp xchain0_n49_α
xchain0_n55_α:
# IR_LIT_S
bb53_α:
 mov qword ptr [r12 + 1344], 1
 mov rax, qword ptr [rip + .Lx80_0]
 mov qword ptr [r12 + 1352], rax
 jmp xchain0_n58_α
 xchain0_n55_β:
 jmp xchain0_n26_α
.Lx80_0:
 .quad .Lx80_0_s
.Lx80_0_s:
 .string ": "
xchain0_n56_α:
# IR_UNOP
bb54_α:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 call rt_size_d@PLT
 mov qword ptr [r12 + 1360], rax
 mov qword ptr [r12 + 1368], rdx
 jmp xchain0_n59_α
 xchain0_n56_β:
 jmp xchain0_n64_α
xchain0_n57_α:
bb55_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1328]
 mov rdx, qword ptr [r12 + 1336]
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 mov qword ptr [r12 + 1376], rax
 mov qword ptr [r12 + 1384], rdx
 jmp main_γ
 xchain0_n57_β:
 jmp xchain0_n49_α
xchain0_n58_α:
# IR_VAR
bb56_α:
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 136], rax
 jmp xchain0_n60_α
 xchain0_n58_β:
 jmp xchain0_n26_α
xchain0_n59_α:
# IR_LIT_I
bb57_α:
 mov qword ptr [r12 + 1392], 6
 mov rax, qword ptr [rip + .Lx85_0]
 mov qword ptr [r12 + 1400], rax
 jmp xchain0_n61_α
 xchain0_n59_β:
 jmp xchain0_n64_α
.Lx85_0:
 .quad 3
xchain0_n60_α:
# IR_LIT_I
bb58_α:
 mov qword ptr [r12 + 1408], 6
 mov rax, qword ptr [rip + .Lx87_0]
 mov qword ptr [r12 + 1416], rax
 jmp xsec86_i1_done
 xsec86_i1_b:
 jmp xchain0_n26_α
.Lx87_0:
 .quad 1
xsec86_i1_done:
# IR_LIT_I
bb59_α:
 mov qword ptr [r12 + 1424], 6
 mov rax, qword ptr [rip + .Lx88_0]
 mov qword ptr [r12 + 1432], rax
 jmp xsec86_i2_done
 xsec86_i2_b:
 jmp xchain0_n26_α
.Lx88_0:
 .quad 18446744073709551614
xsec86_i2_done:
# IR_SECTION
bb60_α:
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 mov rdx, qword ptr [r12 + 1408]
 mov rcx, qword ptr [r12 + 1416]
 mov r8, qword ptr [r12 + 1424]
 mov r9, qword ptr [r12 + 1432]
 call subscript_get2@PLT
 mov qword ptr [r12 + 1440], rax
 mov qword ptr [r12 + 1448], rdx
 jmp xchain0_n62_α
 xchain0_n60_β:
 jmp xchain0_n26_α
xchain0_n61_α:
bb61_α:
# IR_BINOP_RELOP
 mov rax, qword ptr [r12 + 1368]
 mov rcx, qword ptr [r12 + 1400]
 cmp rax, rcx
 jge xchain0_n64_α
 mov rcx, qword ptr [r12 + 1392]
 mov qword ptr [r12 + 1456], rcx
 mov rcx, qword ptr [r12 + 1400]
 mov qword ptr [r12 + 1464], rcx
 jmp xchain0_n63_α
 xchain0_n61_β:
 jmp xchain0_n64_α
xchain0_n62_α:
bb62_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+1488]
 mov qword ptr [r12 + 1488], 1
 mov rax, qword ptr [rip + .Lx91_0]
 mov qword ptr [r12 + 1496], rax
 jmp .Lx91_1
.Lx91_0:
 .quad .Lx91_0_s
.Lx91_0_s:
 .string ": "
.Lx91_1:
# marshal arg1 = varslot [r12+128] -> [r12+1504]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 1504], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 1512], rax
# marshal arg2 = nested producer-box slot [r12+1440] -> [r12+1520]
 mov rax, qword ptr [r12 + 1440]
 mov qword ptr [r12 + 1520], rax
 mov rax, qword ptr [r12 + 1448]
 mov qword ptr [r12 + 1528], rax
  .section .rodata
  .Lrkfn92: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn92]
 lea rsi, [r12 + 1488]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1472], rax
 mov qword ptr [r12 + 1480], rdx
 cmp eax, 99
 je xchain0_n26_α
 jmp xchain0_n65_α
 xchain0_n62_β:
 jmp xchain0_n26_α
xchain0_n63_α:
xchain0_n63_β:
jmp xchain0_n35_α
jmp xchain0_n35_α
xchain0_n64_α:
# IR_VAR
bb63_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xchain0_n66_α
 xchain0_n64_β:
 jmp xchain0_n70_α
xchain0_n65_α:
jmp xchain0_n26_α
xchain0_n65_β:
jmp xchain0_n26_α
xchain0_n66_α:
# IR_VAR
bb64_α:
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 120], rax
 jmp xchain0_n67_α
 xchain0_n66_β:
 jmp xchain0_n70_α
xchain0_n67_α:
# IR_UNOP
bb65_α:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 call rt_size_d@PLT
 mov qword ptr [r12 + 1536], rax
 mov qword ptr [r12 + 1544], rdx
 jmp xchain0_n68_α
 xchain0_n67_β:
 jmp xchain0_n70_α
xchain0_n68_α:
bb66_α:
# IR_BINOP_RELOP
 mov rax, qword ptr [r12 + 56]
 mov rcx, qword ptr [r12 + 1544]
 cmp rax, rcx
 jge xchain0_n70_α
 mov rcx, qword ptr [r12 + 1536]
 mov qword ptr [r12 + 1552], rcx
 mov rcx, qword ptr [r12 + 1544]
 mov qword ptr [r12 + 1560], rcx
 jmp xchain0_n69_α
 xchain0_n68_β:
 jmp xchain0_n70_α
xchain0_n69_α:
bb67_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1552]
 mov rdx, qword ptr [r12 + 1560]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov qword ptr [r12 + 1568], rax
 mov qword ptr [r12 + 1576], rdx
 jmp xchain0_n70_α
 xchain0_n69_β:
 jmp xchain0_n70_α
xchain0_n70_α:
bb68_α:
# BOX IR_CALL [](...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+0] -> [r12+1600]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 1600], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 1608], rax
# marshal arg1 = varslot [r12+112] -> [r12+1616]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 1616], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 1624], rax
  .section .rodata
  .Lbynamefn101: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn101]
 lea rsi, [r12 + 1600]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1584], rax
 mov qword ptr [r12 + 1592], rdx
 cmp eax, 99
 je xchain0_n72_α
 jmp xchain0_n71_α
xchain0_n70_β:
 jmp xchain0_n72_α
xchain0_n71_α:
# IR_UNOP
bb69_α:
 mov rdi, qword ptr [r12 + 1584]
 mov rsi, qword ptr [r12 + 1592]
 call rt_size_d@PLT
 mov qword ptr [r12 + 1632], rax
 mov qword ptr [r12 + 1640], rdx
 jmp xchain0_n73_α
 xchain0_n71_β:
 jmp xchain0_n72_α
xchain0_n72_α:
bb70_α:
# BOX IR_CALL insert(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+0] -> [r12+1696]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 1696], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 1704], rax
# marshal arg1 = varslot [r12+112] -> [r12+1712]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 1712], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 1720], rax
  .section .rodata
  .Lcallfn104: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn104]
 lea rsi, [r12 + 1696]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1664], rax
 mov qword ptr [r12 + 1672], rdx
# marshal arg1 = varslot [r12+32] -> [r12+1680]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 1680], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 1688], rax
  .section .rodata
  .Lrkfn105: .string "insert"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn105]
 lea rsi, [r12 + 1664]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1648], rax
 mov qword ptr [r12 + 1656], rdx
 cmp eax, 99
 je xchain0_n35_α
 jmp xchain0_n74_α
 xchain0_n72_β:
 jmp xchain0_n35_α
xchain0_n73_α:
# IR_LIT_I
bb71_α:
 mov qword ptr [r12 + 1728], 6
 mov rax, qword ptr [rip + .Lx106_0]
 mov qword ptr [r12 + 1736], rax
 jmp xchain0_n75_α
 xchain0_n73_β:
 jmp xchain0_n72_α
.Lx106_0:
 .quad 0
xchain0_n74_α:
jmp xchain0_n35_α
xchain0_n74_β:
jmp xchain0_n35_α
xchain0_n75_α:
bb72_α:
# IR_BINOP_RELOP
 mov rax, qword ptr [r12 + 1640]
 mov rcx, qword ptr [r12 + 1736]
 cmp rax, rcx
 jne xchain0_n72_α
 mov rcx, qword ptr [r12 + 1728]
 mov qword ptr [r12 + 1744], rcx
 mov rcx, qword ptr [r12 + 1736]
 mov qword ptr [r12 + 1752], rcx
 jmp xchain0_n76_α
 xchain0_n75_β:
 jmp xchain0_n72_α
xchain0_n76_α:
# IR_VAR
bb73_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n77_α
 xchain0_n76_β:
 jmp xchain0_n35_α
xchain0_n77_α:
bb74_α:
# IR_IDX_SET: base/key/value from [ζ+off]; inline DT_A+int fast path, else subscript_set
 mov rax, qword ptr [r12 + 1568]
 cmp eax, 4
 jne .Lx112_0
 mov rax, qword ptr [r12 + 1744]
 cmp eax, 6
 jne .Lx112_0
 mov rsi, qword ptr [r12 + 1576]
 mov rcx, qword ptr [r12 + 1752]
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx112_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx112_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add r11, rcx
 mov rax, qword ptr [r12 + 0]
 mov rdx, qword ptr [r12 + 8]
 mov qword ptr [r11 + 0], rax
 mov qword ptr [r11 + 8], rdx
 jmp xchain0_n74_α
.Lx112_0:
 mov rdi, qword ptr [r12 + 1568]
 mov rsi, qword ptr [r12 + 1576]
 mov rdx, qword ptr [r12 + 1744]
 mov rcx, qword ptr [r12 + 1752]
 mov r8, qword ptr [r12 + 0]
 mov r9, qword ptr [r12 + 8]
 call subscript_set@PLT
 cmp eax, 0
 je xchain0_n35_α
 jmp xchain0_n74_α
 xchain0_n77_β:
 jmp xchain0_n35_α
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
