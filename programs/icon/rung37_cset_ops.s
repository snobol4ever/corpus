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
 mov qword ptr [r12 + 48], 1
 mov dword ptr [r12 + 52], -1
 mov rax, qword ptr [rip + .Lx1_0]
 mov qword ptr [r12 + 56], rax
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n2_α
.Lx1_0:
 .quad .Lx1_0_s
.Lx1_0_s:
 .string "abc"
xchain0_n1_α:
bb2_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n2_α
xchain0_n2_α:
bb3_α:
# BOX IR_CALL type(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+0] -> [r12+96]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lrkfn4: .string "type"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn4]
 lea rsi, [r12 + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je xchain0_n4_α
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n4_α
xchain0_n3_α:
bb4_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 80]
 mov rsi, qword ptr [r12 + 88]
 call rt_write_any_nl@PLT
 jmp xchain0_n4_α
xchain0_n3_β:
xchain0_n3_β:
 jmp xchain0_n4_α
xchain0_n4_α:
bb5_α:
# BOX IR_CALL cset(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+128]
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx6_0]
 mov qword ptr [r12 + 136], rax
 jmp .Lx6_1
.Lx6_0:
 .quad .Lx6_0_s
.Lx6_0_s:
 .string "xyz"
.Lx6_1:
  .section .rodata
  .Lrkfn7: .string "cset"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn7]
 lea rsi, [r12 + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain0_n6_α
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp xchain0_n6_α
xchain0_n5_α:
bb6_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain0_n6_α
 xchain0_n5_β:
 jmp xchain0_n6_α
xchain0_n6_α:
bb7_α:
# BOX IR_CALL type(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+176]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 184], rax
  .section .rodata
  .Lrkfn10: .string "type"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn10]
 lea rsi, [r12 + 176]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je xchain0_n8_α
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp xchain0_n8_α
xchain0_n7_α:
bb8_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 call rt_write_any_nl@PLT
 jmp xchain0_n8_α
xchain0_n7_β:
xchain0_n7_β:
 jmp xchain0_n8_α
xchain0_n8_α:
# IR_VAR
bb9_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n9_α
 xchain0_n8_β:
 jmp xchain0_n12_α
xchain0_n9_α:
# IR_VAR
bb10_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n10_α
 xchain0_n9_β:
 jmp xchain0_n12_α
xchain0_n10_α:
jmp xbinop16_lhs_done
xbinop16_lhs_done:
jmp xbinop16_rhs_done
xbinop16_rhs_done:
bb11_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 16]
 mov rcx, qword ptr [r12 + 24]
 mov r8d, 19
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n12_α
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain0_n11_α
 xchain0_n10_β:
 jmp xchain0_n12_α
xchain0_n11_α:
bb12_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain0_n12_α
 xchain0_n11_β:
 jmp xchain0_n12_α
xchain0_n12_α:
bb13_α:
# BOX IR_CALL type(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+32] -> [r12+240]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 248], rax
  .section .rodata
  .Lrkfn20: .string "type"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn20]
 lea rsi, [r12 + 240]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n13_α
 xchain0_n12_β:
 jmp xchain0_n14_α
xchain0_n13_α:
bb14_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 224]
 mov rsi, qword ptr [r12 + 232]
 call rt_write_any_nl@PLT
 jmp xchain0_n14_α
xchain0_n13_β:
xchain0_n13_β:
 jmp xchain0_n14_α
xchain0_n14_α:
bb15_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+32] -> [r12+272]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 280], rax
  .section .rodata
  .Lrkfn23: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn23]
 lea rsi, [r12 + 272]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je xchain0_n16_α
 jmp xchain0_n15_α
 xchain0_n14_β:
 jmp xchain0_n16_α
xchain0_n15_α:
bb16_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 256]
 mov rsi, qword ptr [r12 + 264]
 call rt_write_any_nl@PLT
 jmp xchain0_n16_α
xchain0_n15_β:
xchain0_n15_β:
 jmp xchain0_n16_α
xchain0_n16_α:
# IR_VAR
bb17_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n17_α
 xchain0_n16_β:
 jmp xchain0_n19_α
xchain0_n17_α:
bb18_α:
# BOX IR_CALL cset(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+304]
 mov qword ptr [r12 + 304], 1
 mov rax, qword ptr [rip + .Lx27_0]
 mov qword ptr [r12 + 312], rax
 jmp .Lx27_1
.Lx27_0:
 .quad .Lx27_0_s
.Lx27_0_s:
 .string "bx"
.Lx27_1:
  .section .rodata
  .Lrkfn28: .string "cset"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn28]
 lea rsi, [r12 + 304]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je xchain0_n19_α
 jmp xchain0_n18_α
 xchain0_n17_β:
 jmp xchain0_n19_α
xchain0_n18_α:
jmp xbinop29_lhs_done
xbinop29_lhs_done:
jmp xbinop29_rhs_done
xbinop29_rhs_done:
bb19_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 mov rdx, qword ptr [r12 + 288]
 mov rcx, qword ptr [r12 + 296]
 mov r8d, 20
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n19_α
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain0_n20_α
 xchain0_n18_β:
 jmp xchain0_n19_α
xchain0_n19_α:
bb20_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+32] -> [r12+352]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 360], rax
  .section .rodata
  .Lrkfn32: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn32]
 lea rsi, [r12 + 352]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 cmp eax, 99
 je xchain0_n22_α
 jmp xchain0_n21_α
 xchain0_n19_β:
 jmp xchain0_n22_α
xchain0_n20_α:
bb21_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain0_n19_α
 xchain0_n20_β:
 jmp xchain0_n19_α
xchain0_n21_α:
bb22_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 336]
 mov rsi, qword ptr [r12 + 344]
 call rt_write_any_nl@PLT
 jmp xchain0_n22_α
xchain0_n21_β:
xchain0_n21_β:
 jmp xchain0_n22_α
xchain0_n22_α:
# IR_VAR
bb23_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n23_α
 xchain0_n22_β:
 jmp xchain0_n25_α
xchain0_n23_α:
bb24_α:
# BOX IR_CALL cset(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+400]
 mov qword ptr [r12 + 400], 1
 mov rax, qword ptr [rip + .Lx37_0]
 mov qword ptr [r12 + 408], rax
 jmp .Lx37_1
.Lx37_0:
 .quad .Lx37_0_s
.Lx37_0_s:
 .string "acyz"
.Lx37_1:
  .section .rodata
  .Lrkfn38: .string "cset"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn38]
 lea rsi, [r12 + 400]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je xchain0_n25_α
 jmp xchain0_n24_α
 xchain0_n23_β:
 jmp xchain0_n25_α
xchain0_n24_α:
jmp xbinop39_lhs_done
xbinop39_lhs_done:
jmp xbinop39_rhs_done
xbinop39_rhs_done:
bb25_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 mov rdx, qword ptr [r12 + 384]
 mov rcx, qword ptr [r12 + 392]
 mov r8d, 21
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n25_α
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain0_n26_α
 xchain0_n24_β:
 jmp xchain0_n25_α
xchain0_n25_α:
bb26_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+32] -> [r12+448]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 456], rax
  .section .rodata
  .Lrkfn42: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn42]
 lea rsi, [r12 + 448]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 cmp eax, 99
 je xchain0_n28_α
 jmp xchain0_n27_α
 xchain0_n25_β:
 jmp xchain0_n28_α
xchain0_n26_α:
bb27_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 416]
 mov rdx, qword ptr [r12 + 424]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain0_n25_α
 xchain0_n26_β:
 jmp xchain0_n25_α
xchain0_n27_α:
bb28_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 432]
 mov rsi, qword ptr [r12 + 440]
 call rt_write_any_nl@PLT
 jmp xchain0_n28_α
xchain0_n27_β:
xchain0_n27_β:
 jmp xchain0_n28_α
xchain0_n28_α:
bb29_α:
# BOX IR_CALL cset(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+496]
 mov qword ptr [r12 + 496], 1
 mov rax, qword ptr [rip + .Lx45_0]
 mov qword ptr [r12 + 504], rax
 jmp .Lx45_1
.Lx45_0:
 .quad .Lx45_0_s
.Lx45_0_s:
 .string "abc"
.Lx45_1:
  .section .rodata
  .Lrkfn46: .string "cset"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn46]
 lea rsi, [r12 + 496]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 cmp eax, 99
 je xchain0_n30_α
 jmp xchain0_n29_α
 xchain0_n28_β:
 jmp xchain0_n30_α
xchain0_n29_α:
bb30_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 480]
 mov rdx, qword ptr [r12 + 488]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain0_n30_α
 xchain0_n29_β:
 jmp xchain0_n30_α
xchain0_n30_α:
# IR_VAR
bb31_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n31_α
 xchain0_n30_β:
 jmp xchain0_n33_α
xchain0_n31_α:
bb32_α:
# BOX IR_CALL cset(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+544]
 mov qword ptr [r12 + 544], 1
 mov rax, qword ptr [rip + .Lx50_0]
 mov qword ptr [r12 + 552], rax
 jmp .Lx50_1
.Lx50_0:
 .quad .Lx50_0_s
.Lx50_0_s:
 .string "d"
.Lx50_1:
  .section .rodata
  .Lrkfn51: .string "cset"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn51]
 lea rsi, [r12 + 544]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 cmp eax, 99
 je xchain0_n33_α
 jmp xchain0_n32_α
 xchain0_n31_β:
 jmp xchain0_n33_α
xchain0_n32_α:
jmp xbinop52_lhs_done
xbinop52_lhs_done:
jmp xbinop52_rhs_done
xbinop52_rhs_done:
bb33_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 528]
 mov rcx, qword ptr [r12 + 536]
 mov r8d, 19
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n33_α
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain0_n34_α
 xchain0_n32_β:
 jmp xchain0_n33_α
xchain0_n33_α:
bb34_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+0] -> [r12+592]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 600], rax
  .section .rodata
  .Lrkfn55: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn55]
 lea rsi, [r12 + 592]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 cmp eax, 99
 je xchain0_n36_α
 jmp xchain0_n35_α
 xchain0_n33_β:
 jmp xchain0_n36_α
xchain0_n34_α:
bb35_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 560]
 mov rdx, qword ptr [r12 + 568]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain0_n33_α
 xchain0_n34_β:
 jmp xchain0_n33_α
xchain0_n35_α:
bb36_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 576]
 mov rsi, qword ptr [r12 + 584]
 call rt_write_any_nl@PLT
 jmp xchain0_n36_α
xchain0_n35_β:
xchain0_n35_β:
 jmp xchain0_n36_α
xchain0_n36_α:
# IR_VAR
bb37_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n37_α
 xchain0_n36_β:
 jmp xchain0_n39_α
xchain0_n37_α:
bb38_α:
# BOX IR_CALL cset(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+640]
 mov qword ptr [r12 + 640], 1
 mov rax, qword ptr [rip + .Lx60_0]
 mov qword ptr [r12 + 648], rax
 jmp .Lx60_1
.Lx60_0:
 .quad .Lx60_0_s
.Lx60_0_s:
 .string "b"
.Lx60_1:
  .section .rodata
  .Lrkfn61: .string "cset"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn61]
 lea rsi, [r12 + 640]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 cmp eax, 99
 je xchain0_n39_α
 jmp xchain0_n38_α
 xchain0_n37_β:
 jmp xchain0_n39_α
xchain0_n38_α:
jmp xbinop62_lhs_done
xbinop62_lhs_done:
jmp xbinop62_rhs_done
xbinop62_rhs_done:
bb39_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 624]
 mov rcx, qword ptr [r12 + 632]
 mov r8d, 20
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n39_α
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain0_n40_α
 xchain0_n38_β:
 jmp xchain0_n39_α
xchain0_n39_α:
bb40_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+0] -> [r12+688]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 696], rax
  .section .rodata
  .Lrkfn65: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn65]
 lea rsi, [r12 + 688]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 cmp eax, 99
 je xchain0_n42_α
 jmp xchain0_n41_α
 xchain0_n39_β:
 jmp xchain0_n42_α
xchain0_n40_α:
bb41_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 656]
 mov rdx, qword ptr [r12 + 664]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain0_n39_α
 xchain0_n40_β:
 jmp xchain0_n39_α
xchain0_n41_α:
bb42_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 672]
 mov rsi, qword ptr [r12 + 680]
 call rt_write_any_nl@PLT
 jmp xchain0_n42_α
xchain0_n41_β:
xchain0_n41_β:
 jmp xchain0_n42_α
xchain0_n42_α:
# IR_VAR
bb43_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xchain0_n43_α
 xchain0_n42_β:
 jmp xchain0_n45_α
xchain0_n43_α:
bb44_α:
# BOX IR_CALL cset(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+736]
 mov qword ptr [r12 + 736], 1
 mov rax, qword ptr [rip + .Lx70_0]
 mov qword ptr [r12 + 744], rax
 jmp .Lx70_1
.Lx70_0:
 .quad .Lx70_0_s
.Lx70_0_s:
 .string "cd"
.Lx70_1:
  .section .rodata
  .Lrkfn71: .string "cset"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn71]
 lea rsi, [r12 + 736]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 cmp eax, 99
 je xchain0_n45_α
 jmp xchain0_n44_α
 xchain0_n43_β:
 jmp xchain0_n45_α
xchain0_n44_α:
jmp xbinop72_lhs_done
xbinop72_lhs_done:
jmp xbinop72_rhs_done
xbinop72_rhs_done:
bb45_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 720]
 mov rcx, qword ptr [r12 + 728]
 mov r8d, 21
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n45_α
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain0_n46_α
 xchain0_n44_β:
 jmp xchain0_n45_α
xchain0_n45_α:
bb46_α:
# BOX IR_CALL image(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+0] -> [r12+784]
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 792], rax
  .section .rodata
  .Lrkfn75: .string "image"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn75]
 lea rsi, [r12 + 784]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 cmp eax, 99
 je xchain0_n48_α
 jmp xchain0_n47_α
 xchain0_n45_β:
 jmp xchain0_n48_α
xchain0_n46_α:
bb47_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 752]
 mov rdx, qword ptr [r12 + 760]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 jmp xchain0_n45_α
 xchain0_n46_β:
 jmp xchain0_n45_α
xchain0_n47_α:
bb48_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 768]
 mov rsi, qword ptr [r12 + 776]
 call rt_write_any_nl@PLT
 jmp xchain0_n48_α
xchain0_n47_β:
xchain0_n47_β:
 jmp xchain0_n48_α
xchain0_n48_α:
bb49_α:
# BOX IR_CALL cset(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+832]
 mov qword ptr [r12 + 832], 1
 mov rax, qword ptr [rip + .Lx78_0]
 mov qword ptr [r12 + 840], rax
 jmp .Lx78_1
.Lx78_0:
 .quad .Lx78_0_s
.Lx78_0_s:
 .string "ba"
.Lx78_1:
  .section .rodata
  .Lrkfn79: .string "cset"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn79]
 lea rsi, [r12 + 832]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 cmp eax, 99
 je xchain0_n50_α
 jmp xchain0_n49_α
 xchain0_n48_β:
 jmp xchain0_n50_α
xchain0_n49_α:
bb50_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 816]
 mov rdx, qword ptr [r12 + 824]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 jmp xchain0_n50_α
 xchain0_n49_β:
 jmp xchain0_n50_α
xchain0_n50_α:
# IR_VAR
bb51_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xbang81_iter_done
 xbang81_iter_β:
 jmp xchain0_n52_α
xbang81_iter_done:
# IR_LIST_BANG
bb52_α:
 mov qword ptr [r12 + 864], 0
.Lx85_0:
 mov rdi, qword ptr [r12 + 0]
 mov rsi, qword ptr [r12 + 8]
 mov rdx, qword ptr [r12 + 864]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 872], rax
 mov qword ptr [r12 + 880], rdx
 cmp rax, 99
 je xchain0_n52_α
 jmp xchain0_n51_α
 xchain0_n50_β:
 inc qword ptr [r12 + 864]
 jmp .Lx85_0
xchain0_n51_α:
bb53_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 872]
 mov rsi, qword ptr [r12 + 880]
 call rt_write_any_nl@PLT
 jmp xchain0_n50_β
xchain0_n51_β:
xchain0_n51_β:
 jmp xchain0_n50_β
xchain0_n52_α:
# IR_EVERY
 jmp xchain0_n53_α
 xchain0_n52_β:
 jmp xchain0_n53_α
xchain0_n53_α:
bb55_α:
# BOX IR_CALL cset(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+904]
 mov qword ptr [r12 + 904], 1
 mov rax, qword ptr [rip + .Lx88_0]
 mov qword ptr [r12 + 912], rax
 jmp .Lx88_1
.Lx88_0:
 .quad .Lx88_0_s
.Lx88_0_s:
 .string "hello"
.Lx88_1:
  .section .rodata
  .Lrkfn89: .string "cset"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn89]
 lea rsi, [r12 + 904]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 888], rax
 mov qword ptr [r12 + 896], rdx
 cmp eax, 99
 je main_ω
 jmp xchain0_n54_α
 xchain0_n53_β:
 jmp main_ω
xchain0_n54_α:
# IR_UNOP
bb56_α:
 mov rdi, qword ptr [r12 + 888]
 mov rsi, qword ptr [r12 + 896]
 call rt_size_d@PLT
 mov qword ptr [r12 + 920], rax
 mov qword ptr [r12 + 928], rdx
 jmp xchain0_n55_α
 xchain0_n54_β:
 jmp main_ω
xchain0_n55_α:
bb57_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 920]
 mov rsi, qword ptr [r12 + 928]
 call rt_write_any_nl@PLT
 jmp main_γ
xchain0_n55_β:
xchain0_n55_β:
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
