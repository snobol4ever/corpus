  .intel_syntax noprefix
  .text
  .globl proc_area$2F2_α
proc_area$2F2_α:
#=======================================================================================================================
    .global proc_area$2F2_α
    .global proc_area$2F2_β
    .global proc_area$2F2_γ
    .global proc_area$2F2_ω
  sub rsp, 6976
  mov [rsp + 6952], rcx
  mov [rsp + 6960], rdx
  mov [rsp + 6968], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 6936], rsp
  mov rdi, rsp
  mov esi, 6912
  mov edx, 6944
  call rt_jmp_frame_lexprep2@PLT
proc_area$2F2_α_body:
lea rax, [rip + xchain0_n10_β]
mov qword ptr [rbp + 6912], rax
 xchain0_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_area$2F2_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_area$2F2_ω
# IR_VAR_REF
 xchain0_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 6848], rax
 mov qword ptr [rbp + 6856], rdx
 jmp xchain0_n2_α
# IR_LIT_STRING
 xchain0_n2_α:
 mov qword ptr [rbp + 6880], 1
 mov rax, qword ptr [rip + .Lx4_0]
 mov qword ptr [rbp + 6888], rax
 jmp xchain0_n3_α
.Lx4_0:
 .quad .Lx4_0_s
.Lx4_0_s:
 .string "china"
 xchain0_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6848] -> [zr+6816]
 mov rax, qword ptr [rbp + 6848]
 mov qword ptr [rbp + 6816], rax
 mov rax, qword ptr [rbp + 6856]
 mov qword ptr [rbp + 6824], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 6816]
 mov rsi, qword ptr [rip + .Lx5_2]
 jmp .Lx5_3
.Lx5_2:
 .quad .Lx5_2_s
.Lx5_2_s:
 .string "china"
.Lx5_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 6800], rax
 mov qword ptr [rbp + 6808], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 6736], rax
 mov qword ptr [rbp + 6744], rdx
 jmp xchain0_n6_α
 xchain0_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+6656]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 6656], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 6664], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 6656]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 6640], rax
 mov qword ptr [rbp + 6648], rdx
 cmp eax, 99
 je proc_area$2F2_ω
 jmp xchain0_n7_α
 xchain0_n5_β:
 jmp proc_area$2F2_ω
# IR_LIT_INTEGER
 xchain0_n6_α:
 mov qword ptr [rbp + 6768], 6
 mov rax, qword ptr [rip + .Lx9_0]
 mov qword ptr [rbp + 6776], rax
 jmp xchain0_n8_α
.Lx9_0:
 .quad 3380
# IR_VAR_REF
 xchain0_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 6576], rax
 mov qword ptr [rbp + 6584], rdx
 jmp xchain0_n9_α
 xchain0_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6736] -> [zr+6704]
 mov rax, qword ptr [rbp + 6736]
 mov qword ptr [rbp + 6704], rax
 mov rax, qword ptr [rbp + 6744]
 mov qword ptr [rbp + 6712], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 6704]
 movabs rsi, 3380
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 6688], rax
 mov qword ptr [rbp + 6696], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n10_α
 xchain0_n8_β:
 jmp xchain0_n5_α
# IR_LIT_STRING
 xchain0_n9_α:
 mov qword ptr [rbp + 6608], 1
 mov rax, qword ptr [rip + .Lx13_0]
 mov qword ptr [rbp + 6616], rax
 jmp xchain0_n11_α
.Lx13_0:
 .quad .Lx13_0_s
.Lx13_0_s:
 .string "india"
# IR_SUSPEND yield+resume
 xchain0_n10_α:
 lea rax, [rip + xchain0_n10_β]
 mov qword ptr [rbp + 6912], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_area$2F2_γ
 xchain0_n10_β:
 jmp xchain0_n5_α
 xchain0_n11_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6576] -> [zr+6544]
 mov rax, qword ptr [rbp + 6576]
 mov qword ptr [rbp + 6544], rax
 mov rax, qword ptr [rbp + 6584]
 mov qword ptr [rbp + 6552], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 6544]
 mov rsi, qword ptr [rip + .Lx16_2]
 jmp .Lx16_3
.Lx16_2:
 .quad .Lx16_2_s
.Lx16_2_s:
 .string "india"
.Lx16_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 6528], rax
 mov qword ptr [rbp + 6536], rdx
 cmp eax, 99
 je xchain0_n13_α
 jmp xchain0_n12_α
 xchain0_n11_β:
 jmp xchain0_n13_α
# IR_VAR_REF
 xchain0_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 6464], rax
 mov qword ptr [rbp + 6472], rdx
 jmp xchain0_n14_α
 xchain0_n13_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+6384]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 6384], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 6392], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 6384]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 6368], rax
 mov qword ptr [rbp + 6376], rdx
 cmp eax, 99
 je proc_area$2F2_ω
 jmp xchain0_n15_α
 xchain0_n13_β:
 jmp proc_area$2F2_ω
# IR_LIT_INTEGER
 xchain0_n14_α:
 mov qword ptr [rbp + 6496], 6
 mov rax, qword ptr [rip + .Lx20_0]
 mov qword ptr [rbp + 6504], rax
 jmp xchain0_n16_α
.Lx20_0:
 .quad 1139
# IR_VAR_REF
 xchain0_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 6304], rax
 mov qword ptr [rbp + 6312], rdx
 jmp xchain0_n17_α
 xchain0_n16_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6464] -> [zr+6432]
 mov rax, qword ptr [rbp + 6464]
 mov qword ptr [rbp + 6432], rax
 mov rax, qword ptr [rbp + 6472]
 mov qword ptr [rbp + 6440], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 6432]
 movabs rsi, 1139
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 6416], rax
 mov qword ptr [rbp + 6424], rdx
 cmp eax, 99
 je xchain0_n13_α
 jmp xchain0_n18_α
 xchain0_n16_β:
 jmp xchain0_n13_α
# IR_LIT_STRING
 xchain0_n17_α:
 mov qword ptr [rbp + 6336], 1
 mov rax, qword ptr [rip + .Lx24_0]
 mov qword ptr [rbp + 6344], rax
 jmp xchain0_n19_α
.Lx24_0:
 .quad .Lx24_0_s
.Lx24_0_s:
 .string "ussr"
# IR_SUSPEND yield+resume
 xchain0_n18_α:
 lea rax, [rip + xchain0_n18_β]
 mov qword ptr [rbp + 6912], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_area$2F2_γ
 xchain0_n18_β:
 jmp xchain0_n13_α
 xchain0_n19_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6304] -> [zr+6272]
 mov rax, qword ptr [rbp + 6304]
 mov qword ptr [rbp + 6272], rax
 mov rax, qword ptr [rbp + 6312]
 mov qword ptr [rbp + 6280], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 6272]
 mov rsi, qword ptr [rip + .Lx27_2]
 jmp .Lx27_3
.Lx27_2:
 .quad .Lx27_2_s
.Lx27_2_s:
 .string "ussr"
.Lx27_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 6256], rax
 mov qword ptr [rbp + 6264], rdx
 cmp eax, 99
 je xchain0_n21_α
 jmp xchain0_n20_α
 xchain0_n19_β:
 jmp xchain0_n21_α
# IR_VAR_REF
 xchain0_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 6192], rax
 mov qword ptr [rbp + 6200], rdx
 jmp xchain0_n22_α
 xchain0_n21_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+6112]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 6112], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 6120], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 6112]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 6096], rax
 mov qword ptr [rbp + 6104], rdx
 cmp eax, 99
 je proc_area$2F2_ω
 jmp xchain0_n23_α
 xchain0_n21_β:
 jmp proc_area$2F2_ω
# IR_LIT_INTEGER
 xchain0_n22_α:
 mov qword ptr [rbp + 6224], 6
 mov rax, qword ptr [rip + .Lx31_0]
 mov qword ptr [rbp + 6232], rax
 jmp xchain0_n24_α
.Lx31_0:
 .quad 8708
# IR_VAR_REF
 xchain0_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 6032], rax
 mov qword ptr [rbp + 6040], rdx
 jmp xchain0_n25_α
 xchain0_n24_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6192] -> [zr+6160]
 mov rax, qword ptr [rbp + 6192]
 mov qword ptr [rbp + 6160], rax
 mov rax, qword ptr [rbp + 6200]
 mov qword ptr [rbp + 6168], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 6160]
 movabs rsi, 8708
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 6144], rax
 mov qword ptr [rbp + 6152], rdx
 cmp eax, 99
 je xchain0_n21_α
 jmp xchain0_n26_α
 xchain0_n24_β:
 jmp xchain0_n21_α
# IR_LIT_STRING
 xchain0_n25_α:
 mov qword ptr [rbp + 6064], 1
 mov rax, qword ptr [rip + .Lx35_0]
 mov qword ptr [rbp + 6072], rax
 jmp xchain0_n27_α
.Lx35_0:
 .quad .Lx35_0_s
.Lx35_0_s:
 .string "usa"
# IR_SUSPEND yield+resume
 xchain0_n26_α:
 lea rax, [rip + xchain0_n26_β]
 mov qword ptr [rbp + 6912], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_area$2F2_γ
 xchain0_n26_β:
 jmp xchain0_n21_α
 xchain0_n27_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6032] -> [zr+6000]
 mov rax, qword ptr [rbp + 6032]
 mov qword ptr [rbp + 6000], rax
 mov rax, qword ptr [rbp + 6040]
 mov qword ptr [rbp + 6008], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 6000]
 mov rsi, qword ptr [rip + .Lx38_2]
 jmp .Lx38_3
.Lx38_2:
 .quad .Lx38_2_s
.Lx38_2_s:
 .string "usa"
.Lx38_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 5984], rax
 mov qword ptr [rbp + 5992], rdx
 cmp eax, 99
 je xchain0_n29_α
 jmp xchain0_n28_α
 xchain0_n27_β:
 jmp xchain0_n29_α
# IR_VAR_REF
 xchain0_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 5920], rax
 mov qword ptr [rbp + 5928], rdx
 jmp xchain0_n30_α
 xchain0_n29_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+5840]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 5840], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 5848], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 5840]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 5824], rax
 mov qword ptr [rbp + 5832], rdx
 cmp eax, 99
 je proc_area$2F2_ω
 jmp xchain0_n31_α
 xchain0_n29_β:
 jmp proc_area$2F2_ω
# IR_LIT_INTEGER
 xchain0_n30_α:
 mov qword ptr [rbp + 5952], 6
 mov rax, qword ptr [rip + .Lx42_0]
 mov qword ptr [rbp + 5960], rax
 jmp xchain0_n32_α
.Lx42_0:
 .quad 3609
# IR_VAR_REF
 xchain0_n31_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 5760], rax
 mov qword ptr [rbp + 5768], rdx
 jmp xchain0_n33_α
 xchain0_n32_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5920] -> [zr+5888]
 mov rax, qword ptr [rbp + 5920]
 mov qword ptr [rbp + 5888], rax
 mov rax, qword ptr [rbp + 5928]
 mov qword ptr [rbp + 5896], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 5888]
 movabs rsi, 3609
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 5872], rax
 mov qword ptr [rbp + 5880], rdx
 cmp eax, 99
 je xchain0_n29_α
 jmp xchain0_n34_α
 xchain0_n32_β:
 jmp xchain0_n29_α
# IR_LIT_STRING
 xchain0_n33_α:
 mov qword ptr [rbp + 5792], 1
 mov rax, qword ptr [rip + .Lx46_0]
 mov qword ptr [rbp + 5800], rax
 jmp xchain0_n35_α
.Lx46_0:
 .quad .Lx46_0_s
.Lx46_0_s:
 .string "indonesia"
# IR_SUSPEND yield+resume
 xchain0_n34_α:
 lea rax, [rip + xchain0_n34_β]
 mov qword ptr [rbp + 6912], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_area$2F2_γ
 xchain0_n34_β:
 jmp xchain0_n29_α
 xchain0_n35_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5760] -> [zr+5728]
 mov rax, qword ptr [rbp + 5760]
 mov qword ptr [rbp + 5728], rax
 mov rax, qword ptr [rbp + 5768]
 mov qword ptr [rbp + 5736], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 5728]
 mov rsi, qword ptr [rip + .Lx49_2]
 jmp .Lx49_3
.Lx49_2:
 .quad .Lx49_2_s
.Lx49_2_s:
 .string "indonesia"
.Lx49_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 5712], rax
 mov qword ptr [rbp + 5720], rdx
 cmp eax, 99
 je xchain0_n37_α
 jmp xchain0_n36_α
 xchain0_n35_β:
 jmp xchain0_n37_α
# IR_VAR_REF
 xchain0_n36_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 5648], rax
 mov qword ptr [rbp + 5656], rdx
 jmp xchain0_n38_α
 xchain0_n37_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+5568]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 5568], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 5576], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 5568]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 5552], rax
 mov qword ptr [rbp + 5560], rdx
 cmp eax, 99
 je proc_area$2F2_ω
 jmp xchain0_n39_α
 xchain0_n37_β:
 jmp proc_area$2F2_ω
# IR_LIT_INTEGER
 xchain0_n38_α:
 mov qword ptr [rbp + 5680], 6
 mov rax, qword ptr [rip + .Lx53_0]
 mov qword ptr [rbp + 5688], rax
 jmp xchain0_n40_α
.Lx53_0:
 .quad 570
# IR_VAR_REF
 xchain0_n39_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 5488], rax
 mov qword ptr [rbp + 5496], rdx
 jmp xchain0_n41_α
 xchain0_n40_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5648] -> [zr+5616]
 mov rax, qword ptr [rbp + 5648]
 mov qword ptr [rbp + 5616], rax
 mov rax, qword ptr [rbp + 5656]
 mov qword ptr [rbp + 5624], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 5616]
 movabs rsi, 570
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 5600], rax
 mov qword ptr [rbp + 5608], rdx
 cmp eax, 99
 je xchain0_n37_α
 jmp xchain0_n42_α
 xchain0_n40_β:
 jmp xchain0_n37_α
# IR_LIT_STRING
 xchain0_n41_α:
 mov qword ptr [rbp + 5520], 1
 mov rax, qword ptr [rip + .Lx57_0]
 mov qword ptr [rbp + 5528], rax
 jmp xchain0_n43_α
.Lx57_0:
 .quad .Lx57_0_s
.Lx57_0_s:
 .string "japan"
# IR_SUSPEND yield+resume
 xchain0_n42_α:
 lea rax, [rip + xchain0_n42_β]
 mov qword ptr [rbp + 6912], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_area$2F2_γ
 xchain0_n42_β:
 jmp xchain0_n37_α
 xchain0_n43_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5488] -> [zr+5456]
 mov rax, qword ptr [rbp + 5488]
 mov qword ptr [rbp + 5456], rax
 mov rax, qword ptr [rbp + 5496]
 mov qword ptr [rbp + 5464], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 5456]
 mov rsi, qword ptr [rip + .Lx60_2]
 jmp .Lx60_3
.Lx60_2:
 .quad .Lx60_2_s
.Lx60_2_s:
 .string "japan"
.Lx60_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 5440], rax
 mov qword ptr [rbp + 5448], rdx
 cmp eax, 99
 je xchain0_n45_α
 jmp xchain0_n44_α
 xchain0_n43_β:
 jmp xchain0_n45_α
# IR_VAR_REF
 xchain0_n44_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 5376], rax
 mov qword ptr [rbp + 5384], rdx
 jmp xchain0_n46_α
 xchain0_n45_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+5296]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 5296], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 5304], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 5296]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 5280], rax
 mov qword ptr [rbp + 5288], rdx
 cmp eax, 99
 je proc_area$2F2_ω
 jmp xchain0_n47_α
 xchain0_n45_β:
 jmp proc_area$2F2_ω
# IR_LIT_INTEGER
 xchain0_n46_α:
 mov qword ptr [rbp + 5408], 6
 mov rax, qword ptr [rip + .Lx64_0]
 mov qword ptr [rbp + 5416], rax
 jmp xchain0_n48_α
.Lx64_0:
 .quad 148
# IR_VAR_REF
 xchain0_n47_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 5216], rax
 mov qword ptr [rbp + 5224], rdx
 jmp xchain0_n49_α
 xchain0_n48_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5376] -> [zr+5344]
 mov rax, qword ptr [rbp + 5376]
 mov qword ptr [rbp + 5344], rax
 mov rax, qword ptr [rbp + 5384]
 mov qword ptr [rbp + 5352], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 5344]
 movabs rsi, 148
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 5328], rax
 mov qword ptr [rbp + 5336], rdx
 cmp eax, 99
 je xchain0_n45_α
 jmp xchain0_n50_α
 xchain0_n48_β:
 jmp xchain0_n45_α
# IR_LIT_STRING
 xchain0_n49_α:
 mov qword ptr [rbp + 5248], 1
 mov rax, qword ptr [rip + .Lx68_0]
 mov qword ptr [rbp + 5256], rax
 jmp xchain0_n51_α
.Lx68_0:
 .quad .Lx68_0_s
.Lx68_0_s:
 .string "brazil"
# IR_SUSPEND yield+resume
 xchain0_n50_α:
 lea rax, [rip + xchain0_n50_β]
 mov qword ptr [rbp + 6912], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_area$2F2_γ
 xchain0_n50_β:
 jmp xchain0_n45_α
 xchain0_n51_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5216] -> [zr+5184]
 mov rax, qword ptr [rbp + 5216]
 mov qword ptr [rbp + 5184], rax
 mov rax, qword ptr [rbp + 5224]
 mov qword ptr [rbp + 5192], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 5184]
 mov rsi, qword ptr [rip + .Lx71_2]
 jmp .Lx71_3
.Lx71_2:
 .quad .Lx71_2_s
.Lx71_2_s:
 .string "brazil"
.Lx71_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 5168], rax
 mov qword ptr [rbp + 5176], rdx
 cmp eax, 99
 je xchain0_n53_α
 jmp xchain0_n52_α
 xchain0_n51_β:
 jmp xchain0_n53_α
# IR_VAR_REF
 xchain0_n52_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 5104], rax
 mov qword ptr [rbp + 5112], rdx
 jmp xchain0_n54_α
 xchain0_n53_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+5024]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 5024], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 5032], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 5024]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 5008], rax
 mov qword ptr [rbp + 5016], rdx
 cmp eax, 99
 je proc_area$2F2_ω
 jmp xchain0_n55_α
 xchain0_n53_β:
 jmp proc_area$2F2_ω
# IR_LIT_INTEGER
 xchain0_n54_α:
 mov qword ptr [rbp + 5136], 6
 mov rax, qword ptr [rip + .Lx75_0]
 mov qword ptr [rbp + 5144], rax
 jmp xchain0_n56_α
.Lx75_0:
 .quad 3288
# IR_VAR_REF
 xchain0_n55_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 4944], rax
 mov qword ptr [rbp + 4952], rdx
 jmp xchain0_n57_α
 xchain0_n56_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5104] -> [zr+5072]
 mov rax, qword ptr [rbp + 5104]
 mov qword ptr [rbp + 5072], rax
 mov rax, qword ptr [rbp + 5112]
 mov qword ptr [rbp + 5080], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 5072]
 movabs rsi, 3288
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 5056], rax
 mov qword ptr [rbp + 5064], rdx
 cmp eax, 99
 je xchain0_n53_α
 jmp xchain0_n58_α
 xchain0_n56_β:
 jmp xchain0_n53_α
# IR_LIT_STRING
 xchain0_n57_α:
 mov qword ptr [rbp + 4976], 1
 mov rax, qword ptr [rip + .Lx79_0]
 mov qword ptr [rbp + 4984], rax
 jmp xchain0_n59_α
.Lx79_0:
 .quad .Lx79_0_s
.Lx79_0_s:
 .string "bangladesh"
# IR_SUSPEND yield+resume
 xchain0_n58_α:
 lea rax, [rip + xchain0_n58_β]
 mov qword ptr [rbp + 6912], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_area$2F2_γ
 xchain0_n58_β:
 jmp xchain0_n53_α
 xchain0_n59_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4944] -> [zr+4912]
 mov rax, qword ptr [rbp + 4944]
 mov qword ptr [rbp + 4912], rax
 mov rax, qword ptr [rbp + 4952]
 mov qword ptr [rbp + 4920], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 4912]
 mov rsi, qword ptr [rip + .Lx82_2]
 jmp .Lx82_3
.Lx82_2:
 .quad .Lx82_2_s
.Lx82_2_s:
 .string "bangladesh"
.Lx82_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 4896], rax
 mov qword ptr [rbp + 4904], rdx
 cmp eax, 99
 je xchain0_n61_α
 jmp xchain0_n60_α
 xchain0_n59_β:
 jmp xchain0_n61_α
# IR_VAR_REF
 xchain0_n60_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 4832], rax
 mov qword ptr [rbp + 4840], rdx
 jmp xchain0_n62_α
 xchain0_n61_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+4752]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 4752], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 4760], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 4752]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 4736], rax
 mov qword ptr [rbp + 4744], rdx
 cmp eax, 99
 je proc_area$2F2_ω
 jmp xchain0_n63_α
 xchain0_n61_β:
 jmp proc_area$2F2_ω
# IR_LIT_INTEGER
 xchain0_n62_α:
 mov qword ptr [rbp + 4864], 6
 mov rax, qword ptr [rip + .Lx86_0]
 mov qword ptr [rbp + 4872], rax
 jmp xchain0_n64_α
.Lx86_0:
 .quad 55
# IR_VAR_REF
 xchain0_n63_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 4672], rax
 mov qword ptr [rbp + 4680], rdx
 jmp xchain0_n65_α
 xchain0_n64_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4832] -> [zr+4800]
 mov rax, qword ptr [rbp + 4832]
 mov qword ptr [rbp + 4800], rax
 mov rax, qword ptr [rbp + 4840]
 mov qword ptr [rbp + 4808], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 4800]
 movabs rsi, 55
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 4784], rax
 mov qword ptr [rbp + 4792], rdx
 cmp eax, 99
 je xchain0_n61_α
 jmp xchain0_n66_α
 xchain0_n64_β:
 jmp xchain0_n61_α
# IR_LIT_STRING
 xchain0_n65_α:
 mov qword ptr [rbp + 4704], 1
 mov rax, qword ptr [rip + .Lx90_0]
 mov qword ptr [rbp + 4712], rax
 jmp xchain0_n67_α
.Lx90_0:
 .quad .Lx90_0_s
.Lx90_0_s:
 .string "pakistan"
# IR_SUSPEND yield+resume
 xchain0_n66_α:
 lea rax, [rip + xchain0_n66_β]
 mov qword ptr [rbp + 6912], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_area$2F2_γ
 xchain0_n66_β:
 jmp xchain0_n61_α
 xchain0_n67_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4672] -> [zr+4640]
 mov rax, qword ptr [rbp + 4672]
 mov qword ptr [rbp + 4640], rax
 mov rax, qword ptr [rbp + 4680]
 mov qword ptr [rbp + 4648], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 4640]
 mov rsi, qword ptr [rip + .Lx93_2]
 jmp .Lx93_3
.Lx93_2:
 .quad .Lx93_2_s
.Lx93_2_s:
 .string "pakistan"
.Lx93_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 4624], rax
 mov qword ptr [rbp + 4632], rdx
 cmp eax, 99
 je xchain0_n69_α
 jmp xchain0_n68_α
 xchain0_n67_β:
 jmp xchain0_n69_α
# IR_VAR_REF
 xchain0_n68_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 4560], rax
 mov qword ptr [rbp + 4568], rdx
 jmp xchain0_n70_α
 xchain0_n69_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+4480]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 4480], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 4488], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 4480]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 4464], rax
 mov qword ptr [rbp + 4472], rdx
 cmp eax, 99
 je proc_area$2F2_ω
 jmp xchain0_n71_α
 xchain0_n69_β:
 jmp proc_area$2F2_ω
# IR_LIT_INTEGER
 xchain0_n70_α:
 mov qword ptr [rbp + 4592], 6
 mov rax, qword ptr [rip + .Lx97_0]
 mov qword ptr [rbp + 4600], rax
 jmp xchain0_n72_α
.Lx97_0:
 .quad 311
# IR_VAR_REF
 xchain0_n71_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 4400], rax
 mov qword ptr [rbp + 4408], rdx
 jmp xchain0_n73_α
 xchain0_n72_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4560] -> [zr+4528]
 mov rax, qword ptr [rbp + 4560]
 mov qword ptr [rbp + 4528], rax
 mov rax, qword ptr [rbp + 4568]
 mov qword ptr [rbp + 4536], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 4528]
 movabs rsi, 311
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 4512], rax
 mov qword ptr [rbp + 4520], rdx
 cmp eax, 99
 je xchain0_n69_α
 jmp xchain0_n74_α
 xchain0_n72_β:
 jmp xchain0_n69_α
# IR_LIT_STRING
 xchain0_n73_α:
 mov qword ptr [rbp + 4432], 1
 mov rax, qword ptr [rip + .Lx101_0]
 mov qword ptr [rbp + 4440], rax
 jmp xchain0_n75_α
.Lx101_0:
 .quad .Lx101_0_s
.Lx101_0_s:
 .string "w_germany"
# IR_SUSPEND yield+resume
 xchain0_n74_α:
 lea rax, [rip + xchain0_n74_β]
 mov qword ptr [rbp + 6912], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_area$2F2_γ
 xchain0_n74_β:
 jmp xchain0_n69_α
 xchain0_n75_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4400] -> [zr+4368]
 mov rax, qword ptr [rbp + 4400]
 mov qword ptr [rbp + 4368], rax
 mov rax, qword ptr [rbp + 4408]
 mov qword ptr [rbp + 4376], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 4368]
 mov rsi, qword ptr [rip + .Lx104_2]
 jmp .Lx104_3
.Lx104_2:
 .quad .Lx104_2_s
.Lx104_2_s:
 .string "w_germany"
.Lx104_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 4352], rax
 mov qword ptr [rbp + 4360], rdx
 cmp eax, 99
 je xchain0_n77_α
 jmp xchain0_n76_α
 xchain0_n75_β:
 jmp xchain0_n77_α
# IR_VAR_REF
 xchain0_n76_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 4288], rax
 mov qword ptr [rbp + 4296], rdx
 jmp xchain0_n78_α
 xchain0_n77_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+4208]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 4208], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 4216], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 4208]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 4192], rax
 mov qword ptr [rbp + 4200], rdx
 cmp eax, 99
 je proc_area$2F2_ω
 jmp xchain0_n79_α
 xchain0_n77_β:
 jmp proc_area$2F2_ω
# IR_LIT_INTEGER
 xchain0_n78_α:
 mov qword ptr [rbp + 4320], 6
 mov rax, qword ptr [rip + .Lx108_0]
 mov qword ptr [rbp + 4328], rax
 jmp xchain0_n80_α
.Lx108_0:
 .quad 96
# IR_VAR_REF
 xchain0_n79_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 4128], rax
 mov qword ptr [rbp + 4136], rdx
 jmp xchain0_n81_α
 xchain0_n80_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4288] -> [zr+4256]
 mov rax, qword ptr [rbp + 4288]
 mov qword ptr [rbp + 4256], rax
 mov rax, qword ptr [rbp + 4296]
 mov qword ptr [rbp + 4264], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 4256]
 movabs rsi, 96
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 4240], rax
 mov qword ptr [rbp + 4248], rdx
 cmp eax, 99
 je xchain0_n77_α
 jmp xchain0_n82_α
 xchain0_n80_β:
 jmp xchain0_n77_α
# IR_LIT_STRING
 xchain0_n81_α:
 mov qword ptr [rbp + 4160], 1
 mov rax, qword ptr [rip + .Lx112_0]
 mov qword ptr [rbp + 4168], rax
 jmp xchain0_n83_α
.Lx112_0:
 .quad .Lx112_0_s
.Lx112_0_s:
 .string "nigeria"
# IR_SUSPEND yield+resume
 xchain0_n82_α:
 lea rax, [rip + xchain0_n82_β]
 mov qword ptr [rbp + 6912], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_area$2F2_γ
 xchain0_n82_β:
 jmp xchain0_n77_α
 xchain0_n83_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4128] -> [zr+4096]
 mov rax, qword ptr [rbp + 4128]
 mov qword ptr [rbp + 4096], rax
 mov rax, qword ptr [rbp + 4136]
 mov qword ptr [rbp + 4104], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 4096]
 mov rsi, qword ptr [rip + .Lx115_2]
 jmp .Lx115_3
.Lx115_2:
 .quad .Lx115_2_s
.Lx115_2_s:
 .string "nigeria"
.Lx115_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 4080], rax
 mov qword ptr [rbp + 4088], rdx
 cmp eax, 99
 je xchain0_n85_α
 jmp xchain0_n84_α
 xchain0_n83_β:
 jmp xchain0_n85_α
# IR_VAR_REF
 xchain0_n84_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 4016], rax
 mov qword ptr [rbp + 4024], rdx
 jmp xchain0_n86_α
 xchain0_n85_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+3936]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 3936], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 3944], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 3936]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 3920], rax
 mov qword ptr [rbp + 3928], rdx
 cmp eax, 99
 je proc_area$2F2_ω
 jmp xchain0_n87_α
 xchain0_n85_β:
 jmp proc_area$2F2_ω
# IR_LIT_INTEGER
 xchain0_n86_α:
 mov qword ptr [rbp + 4048], 6
 mov rax, qword ptr [rip + .Lx119_0]
 mov qword ptr [rbp + 4056], rax
 jmp xchain0_n88_α
.Lx119_0:
 .quad 373
# IR_VAR_REF
 xchain0_n87_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3856], rax
 mov qword ptr [rbp + 3864], rdx
 jmp xchain0_n89_α
 xchain0_n88_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4016] -> [zr+3984]
 mov rax, qword ptr [rbp + 4016]
 mov qword ptr [rbp + 3984], rax
 mov rax, qword ptr [rbp + 4024]
 mov qword ptr [rbp + 3992], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 3984]
 movabs rsi, 373
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 3968], rax
 mov qword ptr [rbp + 3976], rdx
 cmp eax, 99
 je xchain0_n85_α
 jmp xchain0_n90_α
 xchain0_n88_β:
 jmp xchain0_n85_α
# IR_LIT_STRING
 xchain0_n89_α:
 mov qword ptr [rbp + 3888], 1
 mov rax, qword ptr [rip + .Lx123_0]
 mov qword ptr [rbp + 3896], rax
 jmp xchain0_n91_α
.Lx123_0:
 .quad .Lx123_0_s
.Lx123_0_s:
 .string "mexico"
# IR_SUSPEND yield+resume
 xchain0_n90_α:
 lea rax, [rip + xchain0_n90_β]
 mov qword ptr [rbp + 6912], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_area$2F2_γ
 xchain0_n90_β:
 jmp xchain0_n85_α
 xchain0_n91_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3856] -> [zr+3824]
 mov rax, qword ptr [rbp + 3856]
 mov qword ptr [rbp + 3824], rax
 mov rax, qword ptr [rbp + 3864]
 mov qword ptr [rbp + 3832], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 3824]
 mov rsi, qword ptr [rip + .Lx126_2]
 jmp .Lx126_3
.Lx126_2:
 .quad .Lx126_2_s
.Lx126_2_s:
 .string "mexico"
.Lx126_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 3808], rax
 mov qword ptr [rbp + 3816], rdx
 cmp eax, 99
 je xchain0_n93_α
 jmp xchain0_n92_α
 xchain0_n91_β:
 jmp xchain0_n93_α
# IR_VAR_REF
 xchain0_n92_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 3744], rax
 mov qword ptr [rbp + 3752], rdx
 jmp xchain0_n94_α
 xchain0_n93_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+3664]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 3664], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 3672], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 3664]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 3648], rax
 mov qword ptr [rbp + 3656], rdx
 cmp eax, 99
 je proc_area$2F2_ω
 jmp xchain0_n95_α
 xchain0_n93_β:
 jmp proc_area$2F2_ω
# IR_LIT_INTEGER
 xchain0_n94_α:
 mov qword ptr [rbp + 3776], 6
 mov rax, qword ptr [rip + .Lx130_0]
 mov qword ptr [rbp + 3784], rax
 jmp xchain0_n96_α
.Lx130_0:
 .quad 764
# IR_VAR_REF
 xchain0_n95_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3584], rax
 mov qword ptr [rbp + 3592], rdx
 jmp xchain0_n97_α
 xchain0_n96_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3744] -> [zr+3712]
 mov rax, qword ptr [rbp + 3744]
 mov qword ptr [rbp + 3712], rax
 mov rax, qword ptr [rbp + 3752]
 mov qword ptr [rbp + 3720], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 3712]
 movabs rsi, 764
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 3696], rax
 mov qword ptr [rbp + 3704], rdx
 cmp eax, 99
 je xchain0_n93_α
 jmp xchain0_n98_α
 xchain0_n96_β:
 jmp xchain0_n93_α
# IR_LIT_STRING
 xchain0_n97_α:
 mov qword ptr [rbp + 3616], 1
 mov rax, qword ptr [rip + .Lx134_0]
 mov qword ptr [rbp + 3624], rax
 jmp xchain0_n99_α
.Lx134_0:
 .quad .Lx134_0_s
.Lx134_0_s:
 .string "uk"
# IR_SUSPEND yield+resume
 xchain0_n98_α:
 lea rax, [rip + xchain0_n98_β]
 mov qword ptr [rbp + 6912], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_area$2F2_γ
 xchain0_n98_β:
 jmp xchain0_n93_α
 xchain0_n99_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3584] -> [zr+3552]
 mov rax, qword ptr [rbp + 3584]
 mov qword ptr [rbp + 3552], rax
 mov rax, qword ptr [rbp + 3592]
 mov qword ptr [rbp + 3560], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 3552]
 mov rsi, qword ptr [rip + .Lx137_2]
 jmp .Lx137_3
.Lx137_2:
 .quad .Lx137_2_s
.Lx137_2_s:
 .string "uk"
.Lx137_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 3536], rax
 mov qword ptr [rbp + 3544], rdx
 cmp eax, 99
 je xchain0_n101_α
 jmp xchain0_n100_α
 xchain0_n99_β:
 jmp xchain0_n101_α
# IR_VAR_REF
 xchain0_n100_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 3472], rax
 mov qword ptr [rbp + 3480], rdx
 jmp xchain0_n102_α
 xchain0_n101_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+3392]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 3392], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 3400], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 3392]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 3376], rax
 mov qword ptr [rbp + 3384], rdx
 cmp eax, 99
 je proc_area$2F2_ω
 jmp xchain0_n103_α
 xchain0_n101_β:
 jmp proc_area$2F2_ω
# IR_LIT_INTEGER
 xchain0_n102_α:
 mov qword ptr [rbp + 3504], 6
 mov rax, qword ptr [rip + .Lx141_0]
 mov qword ptr [rbp + 3512], rax
 jmp xchain0_n104_α
.Lx141_0:
 .quad 86
# IR_VAR_REF
 xchain0_n103_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3312], rax
 mov qword ptr [rbp + 3320], rdx
 jmp xchain0_n105_α
 xchain0_n104_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3472] -> [zr+3440]
 mov rax, qword ptr [rbp + 3472]
 mov qword ptr [rbp + 3440], rax
 mov rax, qword ptr [rbp + 3480]
 mov qword ptr [rbp + 3448], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 3440]
 movabs rsi, 86
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 3424], rax
 mov qword ptr [rbp + 3432], rdx
 cmp eax, 99
 je xchain0_n101_α
 jmp xchain0_n106_α
 xchain0_n104_β:
 jmp xchain0_n101_α
# IR_LIT_STRING
 xchain0_n105_α:
 mov qword ptr [rbp + 3344], 1
 mov rax, qword ptr [rip + .Lx145_0]
 mov qword ptr [rbp + 3352], rax
 jmp xchain0_n107_α
.Lx145_0:
 .quad .Lx145_0_s
.Lx145_0_s:
 .string "italy"
# IR_SUSPEND yield+resume
 xchain0_n106_α:
 lea rax, [rip + xchain0_n106_β]
 mov qword ptr [rbp + 6912], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_area$2F2_γ
 xchain0_n106_β:
 jmp xchain0_n101_α
 xchain0_n107_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3312] -> [zr+3280]
 mov rax, qword ptr [rbp + 3312]
 mov qword ptr [rbp + 3280], rax
 mov rax, qword ptr [rbp + 3320]
 mov qword ptr [rbp + 3288], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 3280]
 mov rsi, qword ptr [rip + .Lx148_2]
 jmp .Lx148_3
.Lx148_2:
 .quad .Lx148_2_s
.Lx148_2_s:
 .string "italy"
.Lx148_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 3264], rax
 mov qword ptr [rbp + 3272], rdx
 cmp eax, 99
 je xchain0_n109_α
 jmp xchain0_n108_α
 xchain0_n107_β:
 jmp xchain0_n109_α
# IR_VAR_REF
 xchain0_n108_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 3200], rax
 mov qword ptr [rbp + 3208], rdx
 jmp xchain0_n110_α
 xchain0_n109_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+3120]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 3120], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 3128], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 3120]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 3104], rax
 mov qword ptr [rbp + 3112], rdx
 cmp eax, 99
 je proc_area$2F2_ω
 jmp xchain0_n111_α
 xchain0_n109_β:
 jmp proc_area$2F2_ω
# IR_LIT_INTEGER
 xchain0_n110_α:
 mov qword ptr [rbp + 3232], 6
 mov rax, qword ptr [rip + .Lx152_0]
 mov qword ptr [rbp + 3240], rax
 jmp xchain0_n112_α
.Lx152_0:
 .quad 116
# IR_VAR_REF
 xchain0_n111_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3040], rax
 mov qword ptr [rbp + 3048], rdx
 jmp xchain0_n113_α
 xchain0_n112_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3200] -> [zr+3168]
 mov rax, qword ptr [rbp + 3200]
 mov qword ptr [rbp + 3168], rax
 mov rax, qword ptr [rbp + 3208]
 mov qword ptr [rbp + 3176], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 3168]
 movabs rsi, 116
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 3152], rax
 mov qword ptr [rbp + 3160], rdx
 cmp eax, 99
 je xchain0_n109_α
 jmp xchain0_n114_α
 xchain0_n112_β:
 jmp xchain0_n109_α
# IR_LIT_STRING
 xchain0_n113_α:
 mov qword ptr [rbp + 3072], 1
 mov rax, qword ptr [rip + .Lx156_0]
 mov qword ptr [rbp + 3080], rax
 jmp xchain0_n115_α
.Lx156_0:
 .quad .Lx156_0_s
.Lx156_0_s:
 .string "france"
# IR_SUSPEND yield+resume
 xchain0_n114_α:
 lea rax, [rip + xchain0_n114_β]
 mov qword ptr [rbp + 6912], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_area$2F2_γ
 xchain0_n114_β:
 jmp xchain0_n109_α
 xchain0_n115_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3040] -> [zr+3008]
 mov rax, qword ptr [rbp + 3040]
 mov qword ptr [rbp + 3008], rax
 mov rax, qword ptr [rbp + 3048]
 mov qword ptr [rbp + 3016], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 3008]
 mov rsi, qword ptr [rip + .Lx159_2]
 jmp .Lx159_3
.Lx159_2:
 .quad .Lx159_2_s
.Lx159_2_s:
 .string "france"
.Lx159_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 2992], rax
 mov qword ptr [rbp + 3000], rdx
 cmp eax, 99
 je xchain0_n117_α
 jmp xchain0_n116_α
 xchain0_n115_β:
 jmp xchain0_n117_α
# IR_VAR_REF
 xchain0_n116_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2928], rax
 mov qword ptr [rbp + 2936], rdx
 jmp xchain0_n118_α
 xchain0_n117_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+2848]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 2848], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 2856], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 2848]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 2832], rax
 mov qword ptr [rbp + 2840], rdx
 cmp eax, 99
 je proc_area$2F2_ω
 jmp xchain0_n119_α
 xchain0_n117_β:
 jmp proc_area$2F2_ω
# IR_LIT_INTEGER
 xchain0_n118_α:
 mov qword ptr [rbp + 2960], 6
 mov rax, qword ptr [rip + .Lx163_0]
 mov qword ptr [rbp + 2968], rax
 jmp xchain0_n120_α
.Lx163_0:
 .quad 213
# IR_VAR_REF
 xchain0_n119_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2768], rax
 mov qword ptr [rbp + 2776], rdx
 jmp xchain0_n121_α
 xchain0_n120_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2928] -> [zr+2896]
 mov rax, qword ptr [rbp + 2928]
 mov qword ptr [rbp + 2896], rax
 mov rax, qword ptr [rbp + 2936]
 mov qword ptr [rbp + 2904], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 2896]
 movabs rsi, 213
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 2880], rax
 mov qword ptr [rbp + 2888], rdx
 cmp eax, 99
 je xchain0_n117_α
 jmp xchain0_n122_α
 xchain0_n120_β:
 jmp xchain0_n117_α
# IR_LIT_STRING
 xchain0_n121_α:
 mov qword ptr [rbp + 2800], 1
 mov rax, qword ptr [rip + .Lx167_0]
 mov qword ptr [rbp + 2808], rax
 jmp xchain0_n123_α
.Lx167_0:
 .quad .Lx167_0_s
.Lx167_0_s:
 .string "philippines"
# IR_SUSPEND yield+resume
 xchain0_n122_α:
 lea rax, [rip + xchain0_n122_β]
 mov qword ptr [rbp + 6912], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_area$2F2_γ
 xchain0_n122_β:
 jmp xchain0_n117_α
 xchain0_n123_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2768] -> [zr+2736]
 mov rax, qword ptr [rbp + 2768]
 mov qword ptr [rbp + 2736], rax
 mov rax, qword ptr [rbp + 2776]
 mov qword ptr [rbp + 2744], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 2736]
 mov rsi, qword ptr [rip + .Lx170_2]
 jmp .Lx170_3
.Lx170_2:
 .quad .Lx170_2_s
.Lx170_2_s:
 .string "philippines"
.Lx170_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 2720], rax
 mov qword ptr [rbp + 2728], rdx
 cmp eax, 99
 je xchain0_n125_α
 jmp xchain0_n124_α
 xchain0_n123_β:
 jmp xchain0_n125_α
# IR_VAR_REF
 xchain0_n124_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2656], rax
 mov qword ptr [rbp + 2664], rdx
 jmp xchain0_n126_α
 xchain0_n125_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+2576]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 2576], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 2584], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 2576]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 2560], rax
 mov qword ptr [rbp + 2568], rdx
 cmp eax, 99
 je proc_area$2F2_ω
 jmp xchain0_n127_α
 xchain0_n125_β:
 jmp proc_area$2F2_ω
# IR_LIT_INTEGER
 xchain0_n126_α:
 mov qword ptr [rbp + 2688], 6
 mov rax, qword ptr [rip + .Lx174_0]
 mov qword ptr [rbp + 2696], rax
 jmp xchain0_n128_α
.Lx174_0:
 .quad 90
# IR_VAR_REF
 xchain0_n127_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2496], rax
 mov qword ptr [rbp + 2504], rdx
 jmp xchain0_n129_α
 xchain0_n128_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2656] -> [zr+2624]
 mov rax, qword ptr [rbp + 2656]
 mov qword ptr [rbp + 2624], rax
 mov rax, qword ptr [rbp + 2664]
 mov qword ptr [rbp + 2632], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 2624]
 movabs rsi, 90
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 2608], rax
 mov qword ptr [rbp + 2616], rdx
 cmp eax, 99
 je xchain0_n125_α
 jmp xchain0_n130_α
 xchain0_n128_β:
 jmp xchain0_n125_α
# IR_LIT_STRING
 xchain0_n129_α:
 mov qword ptr [rbp + 2528], 1
 mov rax, qword ptr [rip + .Lx178_0]
 mov qword ptr [rbp + 2536], rax
 jmp xchain0_n131_α
.Lx178_0:
 .quad .Lx178_0_s
.Lx178_0_s:
 .string "thailand"
# IR_SUSPEND yield+resume
 xchain0_n130_α:
 lea rax, [rip + xchain0_n130_β]
 mov qword ptr [rbp + 6912], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_area$2F2_γ
 xchain0_n130_β:
 jmp xchain0_n125_α
 xchain0_n131_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2496] -> [zr+2464]
 mov rax, qword ptr [rbp + 2496]
 mov qword ptr [rbp + 2464], rax
 mov rax, qword ptr [rbp + 2504]
 mov qword ptr [rbp + 2472], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 2464]
 mov rsi, qword ptr [rip + .Lx181_2]
 jmp .Lx181_3
.Lx181_2:
 .quad .Lx181_2_s
.Lx181_2_s:
 .string "thailand"
.Lx181_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 2448], rax
 mov qword ptr [rbp + 2456], rdx
 cmp eax, 99
 je xchain0_n133_α
 jmp xchain0_n132_α
 xchain0_n131_β:
 jmp xchain0_n133_α
# IR_VAR_REF
 xchain0_n132_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2384], rax
 mov qword ptr [rbp + 2392], rdx
 jmp xchain0_n134_α
 xchain0_n133_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+2304]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 2304], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 2312], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 2304]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 2288], rax
 mov qword ptr [rbp + 2296], rdx
 cmp eax, 99
 je proc_area$2F2_ω
 jmp xchain0_n135_α
 xchain0_n133_β:
 jmp proc_area$2F2_ω
# IR_LIT_INTEGER
 xchain0_n134_α:
 mov qword ptr [rbp + 2416], 6
 mov rax, qword ptr [rip + .Lx185_0]
 mov qword ptr [rbp + 2424], rax
 jmp xchain0_n136_α
.Lx185_0:
 .quad 200
# IR_VAR_REF
 xchain0_n135_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2224], rax
 mov qword ptr [rbp + 2232], rdx
 jmp xchain0_n137_α
 xchain0_n136_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2384] -> [zr+2352]
 mov rax, qword ptr [rbp + 2384]
 mov qword ptr [rbp + 2352], rax
 mov rax, qword ptr [rbp + 2392]
 mov qword ptr [rbp + 2360], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 2352]
 movabs rsi, 200
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 2336], rax
 mov qword ptr [rbp + 2344], rdx
 cmp eax, 99
 je xchain0_n133_α
 jmp xchain0_n138_α
 xchain0_n136_β:
 jmp xchain0_n133_α
# IR_LIT_STRING
 xchain0_n137_α:
 mov qword ptr [rbp + 2256], 1
 mov rax, qword ptr [rip + .Lx189_0]
 mov qword ptr [rbp + 2264], rax
 jmp xchain0_n139_α
.Lx189_0:
 .quad .Lx189_0_s
.Lx189_0_s:
 .string "turkey"
# IR_SUSPEND yield+resume
 xchain0_n138_α:
 lea rax, [rip + xchain0_n138_β]
 mov qword ptr [rbp + 6912], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_area$2F2_γ
 xchain0_n138_β:
 jmp xchain0_n133_α
 xchain0_n139_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2224] -> [zr+2192]
 mov rax, qword ptr [rbp + 2224]
 mov qword ptr [rbp + 2192], rax
 mov rax, qword ptr [rbp + 2232]
 mov qword ptr [rbp + 2200], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 2192]
 mov rsi, qword ptr [rip + .Lx192_2]
 jmp .Lx192_3
.Lx192_2:
 .quad .Lx192_2_s
.Lx192_2_s:
 .string "turkey"
.Lx192_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 2176], rax
 mov qword ptr [rbp + 2184], rdx
 cmp eax, 99
 je xchain0_n141_α
 jmp xchain0_n140_α
 xchain0_n139_β:
 jmp xchain0_n141_α
# IR_VAR_REF
 xchain0_n140_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2112], rax
 mov qword ptr [rbp + 2120], rdx
 jmp xchain0_n142_α
 xchain0_n141_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+2032]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 2032], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 2040], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 2032]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 2016], rax
 mov qword ptr [rbp + 2024], rdx
 cmp eax, 99
 je proc_area$2F2_ω
 jmp xchain0_n143_α
 xchain0_n141_β:
 jmp proc_area$2F2_ω
# IR_LIT_INTEGER
 xchain0_n142_α:
 mov qword ptr [rbp + 2144], 6
 mov rax, qword ptr [rip + .Lx196_0]
 mov qword ptr [rbp + 2152], rax
 jmp xchain0_n144_α
.Lx196_0:
 .quad 296
# IR_VAR_REF
 xchain0_n143_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1952], rax
 mov qword ptr [rbp + 1960], rdx
 jmp xchain0_n145_α
 xchain0_n144_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2112] -> [zr+2080]
 mov rax, qword ptr [rbp + 2112]
 mov qword ptr [rbp + 2080], rax
 mov rax, qword ptr [rbp + 2120]
 mov qword ptr [rbp + 2088], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 2080]
 movabs rsi, 296
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 2064], rax
 mov qword ptr [rbp + 2072], rdx
 cmp eax, 99
 je xchain0_n141_α
 jmp xchain0_n146_α
 xchain0_n144_β:
 jmp xchain0_n141_α
# IR_LIT_STRING
 xchain0_n145_α:
 mov qword ptr [rbp + 1984], 1
 mov rax, qword ptr [rip + .Lx200_0]
 mov qword ptr [rbp + 1992], rax
 jmp xchain0_n147_α
.Lx200_0:
 .quad .Lx200_0_s
.Lx200_0_s:
 .string "egypt"
# IR_SUSPEND yield+resume
 xchain0_n146_α:
 lea rax, [rip + xchain0_n146_β]
 mov qword ptr [rbp + 6912], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_area$2F2_γ
 xchain0_n146_β:
 jmp xchain0_n141_α
 xchain0_n147_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1952] -> [zr+1920]
 mov rax, qword ptr [rbp + 1952]
 mov qword ptr [rbp + 1920], rax
 mov rax, qword ptr [rbp + 1960]
 mov qword ptr [rbp + 1928], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1920]
 mov rsi, qword ptr [rip + .Lx203_2]
 jmp .Lx203_3
.Lx203_2:
 .quad .Lx203_2_s
.Lx203_2_s:
 .string "egypt"
.Lx203_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1904], rax
 mov qword ptr [rbp + 1912], rdx
 cmp eax, 99
 je xchain0_n149_α
 jmp xchain0_n148_α
 xchain0_n147_β:
 jmp xchain0_n149_α
# IR_VAR_REF
 xchain0_n148_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1840], rax
 mov qword ptr [rbp + 1848], rdx
 jmp xchain0_n150_α
 xchain0_n149_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1760]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 1760], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 1768], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1760]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1744], rax
 mov qword ptr [rbp + 1752], rdx
 cmp eax, 99
 je proc_area$2F2_ω
 jmp xchain0_n151_α
 xchain0_n149_β:
 jmp proc_area$2F2_ω
# IR_LIT_INTEGER
 xchain0_n150_α:
 mov qword ptr [rbp + 1872], 6
 mov rax, qword ptr [rip + .Lx207_0]
 mov qword ptr [rbp + 1880], rax
 jmp xchain0_n152_α
.Lx207_0:
 .quad 386
# IR_VAR_REF
 xchain0_n151_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1680], rax
 mov qword ptr [rbp + 1688], rdx
 jmp xchain0_n153_α
 xchain0_n152_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1840] -> [zr+1808]
 mov rax, qword ptr [rbp + 1840]
 mov qword ptr [rbp + 1808], rax
 mov rax, qword ptr [rbp + 1848]
 mov qword ptr [rbp + 1816], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 1808]
 movabs rsi, 386
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 1792], rax
 mov qword ptr [rbp + 1800], rdx
 cmp eax, 99
 je xchain0_n149_α
 jmp xchain0_n154_α
 xchain0_n152_β:
 jmp xchain0_n149_α
# IR_LIT_STRING
 xchain0_n153_α:
 mov qword ptr [rbp + 1712], 1
 mov rax, qword ptr [rip + .Lx211_0]
 mov qword ptr [rbp + 1720], rax
 jmp xchain0_n155_α
.Lx211_0:
 .quad .Lx211_0_s
.Lx211_0_s:
 .string "spain"
# IR_SUSPEND yield+resume
 xchain0_n154_α:
 lea rax, [rip + xchain0_n154_β]
 mov qword ptr [rbp + 6912], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_area$2F2_γ
 xchain0_n154_β:
 jmp xchain0_n149_α
 xchain0_n155_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1680] -> [zr+1648]
 mov rax, qword ptr [rbp + 1680]
 mov qword ptr [rbp + 1648], rax
 mov rax, qword ptr [rbp + 1688]
 mov qword ptr [rbp + 1656], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1648]
 mov rsi, qword ptr [rip + .Lx214_2]
 jmp .Lx214_3
.Lx214_2:
 .quad .Lx214_2_s
.Lx214_2_s:
 .string "spain"
.Lx214_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1632], rax
 mov qword ptr [rbp + 1640], rdx
 cmp eax, 99
 je xchain0_n157_α
 jmp xchain0_n156_α
 xchain0_n155_β:
 jmp xchain0_n157_α
# IR_VAR_REF
 xchain0_n156_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1568], rax
 mov qword ptr [rbp + 1576], rdx
 jmp xchain0_n158_α
 xchain0_n157_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1488]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 1488], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 1496], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1488]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 cmp eax, 99
 je proc_area$2F2_ω
 jmp xchain0_n159_α
 xchain0_n157_β:
 jmp proc_area$2F2_ω
# IR_LIT_INTEGER
 xchain0_n158_α:
 mov qword ptr [rbp + 1600], 6
 mov rax, qword ptr [rip + .Lx218_0]
 mov qword ptr [rbp + 1608], rax
 jmp xchain0_n160_α
.Lx218_0:
 .quad 190
# IR_VAR_REF
 xchain0_n159_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 jmp xchain0_n161_α
 xchain0_n160_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1568] -> [zr+1536]
 mov rax, qword ptr [rbp + 1568]
 mov qword ptr [rbp + 1536], rax
 mov rax, qword ptr [rbp + 1576]
 mov qword ptr [rbp + 1544], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 1536]
 movabs rsi, 190
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 cmp eax, 99
 je xchain0_n157_α
 jmp xchain0_n162_α
 xchain0_n160_β:
 jmp xchain0_n157_α
# IR_LIT_STRING
 xchain0_n161_α:
 mov qword ptr [rbp + 1440], 1
 mov rax, qword ptr [rip + .Lx222_0]
 mov qword ptr [rbp + 1448], rax
 jmp xchain0_n163_α
.Lx222_0:
 .quad .Lx222_0_s
.Lx222_0_s:
 .string "poland"
# IR_SUSPEND yield+resume
 xchain0_n162_α:
 lea rax, [rip + xchain0_n162_β]
 mov qword ptr [rbp + 6912], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_area$2F2_γ
 xchain0_n162_β:
 jmp xchain0_n157_α
 xchain0_n163_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1408] -> [zr+1376]
 mov rax, qword ptr [rbp + 1408]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 1416]
 mov qword ptr [rbp + 1384], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1376]
 mov rsi, qword ptr [rip + .Lx225_2]
 jmp .Lx225_3
.Lx225_2:
 .quad .Lx225_2_s
.Lx225_2_s:
 .string "poland"
.Lx225_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 cmp eax, 99
 je xchain0_n165_α
 jmp xchain0_n164_α
 xchain0_n163_β:
 jmp xchain0_n165_α
# IR_VAR_REF
 xchain0_n164_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 jmp xchain0_n166_α
 xchain0_n165_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1216]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 1216], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 1224], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1216]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 cmp eax, 99
 je proc_area$2F2_ω
 jmp xchain0_n167_α
 xchain0_n165_β:
 jmp proc_area$2F2_ω
# IR_LIT_INTEGER
 xchain0_n166_α:
 mov qword ptr [rbp + 1328], 6
 mov rax, qword ptr [rip + .Lx229_0]
 mov qword ptr [rbp + 1336], rax
 jmp xchain0_n168_α
.Lx229_0:
 .quad 121
# IR_VAR_REF
 xchain0_n167_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain0_n169_α
 xchain0_n168_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1296] -> [zr+1264]
 mov rax, qword ptr [rbp + 1296]
 mov qword ptr [rbp + 1264], rax
 mov rax, qword ptr [rbp + 1304]
 mov qword ptr [rbp + 1272], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 1264]
 movabs rsi, 121
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 cmp eax, 99
 je xchain0_n165_α
 jmp xchain0_n170_α
 xchain0_n168_β:
 jmp xchain0_n165_α
# IR_LIT_STRING
 xchain0_n169_α:
 mov qword ptr [rbp + 1168], 1
 mov rax, qword ptr [rip + .Lx233_0]
 mov qword ptr [rbp + 1176], rax
 jmp xchain0_n171_α
.Lx233_0:
 .quad .Lx233_0_s
.Lx233_0_s:
 .string "s_korea"
# IR_SUSPEND yield+resume
 xchain0_n170_α:
 lea rax, [rip + xchain0_n170_β]
 mov qword ptr [rbp + 6912], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_area$2F2_γ
 xchain0_n170_β:
 jmp xchain0_n165_α
 xchain0_n171_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1136] -> [zr+1104]
 mov rax, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 1112], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1104]
 mov rsi, qword ptr [rip + .Lx236_2]
 jmp .Lx236_3
.Lx236_2:
 .quad .Lx236_2_s
.Lx236_2_s:
 .string "s_korea"
.Lx236_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 cmp eax, 99
 je xchain0_n173_α
 jmp xchain0_n172_α
 xchain0_n171_β:
 jmp xchain0_n173_α
# IR_VAR_REF
 xchain0_n172_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 jmp xchain0_n174_α
 xchain0_n173_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+944]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 952], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 944]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 cmp eax, 99
 je proc_area$2F2_ω
 jmp xchain0_n175_α
 xchain0_n173_β:
 jmp proc_area$2F2_ω
# IR_LIT_INTEGER
 xchain0_n174_α:
 mov qword ptr [rbp + 1056], 6
 mov rax, qword ptr [rip + .Lx240_0]
 mov qword ptr [rbp + 1064], rax
 jmp xchain0_n176_α
.Lx240_0:
 .quad 37
# IR_VAR_REF
 xchain0_n175_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain0_n177_α
 xchain0_n176_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1024] -> [zr+992]
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 1000], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 992]
 movabs rsi, 37
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 cmp eax, 99
 je xchain0_n173_α
 jmp xchain0_n178_α
 xchain0_n176_β:
 jmp xchain0_n173_α
# IR_LIT_STRING
 xchain0_n177_α:
 mov qword ptr [rbp + 896], 1
 mov rax, qword ptr [rip + .Lx244_0]
 mov qword ptr [rbp + 904], rax
 jmp xchain0_n179_α
.Lx244_0:
 .quad .Lx244_0_s
.Lx244_0_s:
 .string "iran"
# IR_SUSPEND yield+resume
 xchain0_n178_α:
 lea rax, [rip + xchain0_n178_β]
 mov qword ptr [rbp + 6912], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_area$2F2_γ
 xchain0_n178_β:
 jmp xchain0_n173_α
 xchain0_n179_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+864] -> [zr+832]
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 840], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 832]
 mov rsi, qword ptr [rip + .Lx247_2]
 jmp .Lx247_3
.Lx247_2:
 .quad .Lx247_2_s
.Lx247_2_s:
 .string "iran"
.Lx247_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 cmp eax, 99
 je xchain0_n181_α
 jmp xchain0_n180_α
 xchain0_n179_β:
 jmp xchain0_n181_α
# IR_VAR_REF
 xchain0_n180_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain0_n182_α
 xchain0_n181_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+672]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 680], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 672]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 cmp eax, 99
 je proc_area$2F2_ω
 jmp xchain0_n183_α
 xchain0_n181_β:
 jmp proc_area$2F2_ω
# IR_LIT_INTEGER
 xchain0_n182_α:
 mov qword ptr [rbp + 784], 6
 mov rax, qword ptr [rip + .Lx251_0]
 mov qword ptr [rbp + 792], rax
 jmp xchain0_n184_α
.Lx251_0:
 .quad 628
# IR_VAR_REF
 xchain0_n183_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain0_n185_α
 xchain0_n184_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+752] -> [zr+720]
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 728], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 720]
 movabs rsi, 628
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 cmp eax, 99
 je xchain0_n181_α
 jmp xchain0_n186_α
 xchain0_n184_β:
 jmp xchain0_n181_α
# IR_LIT_STRING
 xchain0_n185_α:
 mov qword ptr [rbp + 624], 1
 mov rax, qword ptr [rip + .Lx255_0]
 mov qword ptr [rbp + 632], rax
 jmp xchain0_n187_α
.Lx255_0:
 .quad .Lx255_0_s
.Lx255_0_s:
 .string "ethiopia"
# IR_SUSPEND yield+resume
 xchain0_n186_α:
 lea rax, [rip + xchain0_n186_β]
 mov qword ptr [rbp + 6912], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_area$2F2_γ
 xchain0_n186_β:
 jmp xchain0_n181_α
 xchain0_n187_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+592] -> [zr+560]
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 568], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 560]
 mov rsi, qword ptr [rip + .Lx258_2]
 jmp .Lx258_3
.Lx258_2:
 .quad .Lx258_2_s
.Lx258_2_s:
 .string "ethiopia"
.Lx258_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 cmp eax, 99
 je xchain0_n189_α
 jmp xchain0_n188_α
 xchain0_n187_β:
 jmp xchain0_n189_α
# IR_VAR_REF
 xchain0_n188_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain0_n190_α
 xchain0_n189_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+400]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 408], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 400]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 cmp eax, 99
 je proc_area$2F2_ω
 jmp xchain0_n191_α
 xchain0_n189_β:
 jmp proc_area$2F2_ω
# IR_LIT_INTEGER
 xchain0_n190_α:
 mov qword ptr [rbp + 512], 6
 mov rax, qword ptr [rip + .Lx262_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain0_n192_α
.Lx262_0:
 .quad 350
# IR_VAR_REF
 xchain0_n191_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain0_n193_α
 xchain0_n192_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+480] -> [zr+448]
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 456], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 448]
 movabs rsi, 350
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je xchain0_n189_α
 jmp xchain0_n194_α
 xchain0_n192_β:
 jmp xchain0_n189_α
# IR_LIT_STRING
 xchain0_n193_α:
 mov qword ptr [rbp + 352], 1
 mov rax, qword ptr [rip + .Lx266_0]
 mov qword ptr [rbp + 360], rax
 jmp xchain0_n195_α
.Lx266_0:
 .quad .Lx266_0_s
.Lx266_0_s:
 .string "argentina"
# IR_SUSPEND yield+resume
 xchain0_n194_α:
 lea rax, [rip + xchain0_n194_β]
 mov qword ptr [rbp + 6912], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_area$2F2_γ
 xchain0_n194_β:
 jmp xchain0_n189_α
 xchain0_n195_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+288]
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 296], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 288]
 mov rsi, qword ptr [rip + .Lx269_2]
 jmp .Lx269_3
.Lx269_2:
 .quad .Lx269_2_s
.Lx269_2_s:
 .string "argentina"
.Lx269_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je xchain0_n197_α
 jmp xchain0_n196_α
 xchain0_n195_β:
 jmp xchain0_n197_α
# IR_VAR_REF
 xchain0_n196_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain0_n198_α
 xchain0_n197_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+128]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 136], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_unwind (no by-name dispatch)
 lea rdi, [rbp + 128]
 mov esi, 1
 call rt_pl_dop_trail_unwind@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_area$2F2_ω
 jmp proc_area$2F2_ω
 xchain0_n197_β:
 jmp proc_area$2F2_ω
# IR_LIT_INTEGER
 xchain0_n198_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx273_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain0_n199_α
.Lx273_0:
 .quad 1080
 xchain0_n199_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+176]
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 184], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 176]
 movabs rsi, 1080
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain0_n197_α
 jmp xchain0_n200_α
 xchain0_n199_β:
 jmp xchain0_n197_α
# IR_SUSPEND yield+resume
 xchain0_n200_α:
 lea rax, [rip + xchain0_n200_β]
 mov qword ptr [rbp + 6912], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_area$2F2_γ
 xchain0_n200_β:
 jmp xchain0_n197_α
proc_area$2F2_res:
add rsp, 8
pop rbp
proc_area$2F2_β:
jmp qword ptr [rbp + 6912]
proc_area$2F2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_area$2F2_res]
push rax
mov rax, [rbp + 6952]
mov rbp, [rbp + 6968]
jmp rax
proc_area$2F2_ω:
mov rax, [rbp + 6960]
lea rsp, [rbp + 6976]
mov rbp, [rbp + 6968]
jmp rax
  .globl proc_query$2F1_α
proc_query$2F1_α:
#=======================================================================================================================
    .global proc_query$2F1_α
    .global proc_query$2F1_β
    .global proc_query$2F1_γ
    .global proc_query$2F1_ω
  sub rsp, 1904
  mov [rsp + 1880], rcx
  mov [rsp + 1888], rdx
  mov [rsp + 1896], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1768], rsp
  mov rdi, rsp
  mov esi, 1744
  mov edx, 1872
  call rt_jmp_frame_lexprep2@PLT
proc_query$2F1_α_body:
lea rax, [rip + xchain277_n39_β]
mov qword ptr [rbp + 1744], rax
 xchain277_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 80]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je proc_query$2F1_ω
 jmp xchain277_n1_α
 xchain277_n0_β:
 jmp proc_query$2F1_ω
# IR_VAR_REF
 xchain277_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain277_n2_α
# IR_LIT_STRING
 xchain277_n2_α:
 mov qword ptr [rbp + 1712], 1
 mov rax, qword ptr [rip + .Lx281_0]
 mov qword ptr [rbp + 1720], rax
 jmp xchain277_n3_α
.Lx281_0:
 .quad .Lx281_0_s
.Lx281_0_s:
 .string "."
# IR_VAR_REF
 xchain277_n3_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1856]
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 jmp xchain277_n4_α
# IR_LIT_STRING
 xchain277_n4_α:
 mov qword ptr [rbp + 1568], 1
 mov rax, qword ptr [rip + .Lx284_0]
 mov qword ptr [rbp + 1576], rax
 jmp xchain277_n5_α
.Lx284_0:
 .quad .Lx284_0_s
.Lx284_0_s:
 .string "."
# IR_VAR_REF
 xchain277_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1824]
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 jmp xchain277_n6_α
# IR_LIT_STRING
 xchain277_n6_α:
 mov qword ptr [rbp + 1424], 1
 mov rax, qword ptr [rip + .Lx287_0]
 mov qword ptr [rbp + 1432], rax
 jmp xchain277_n7_α
.Lx287_0:
 .quad .Lx287_0_s
.Lx287_0_s:
 .string "."
# IR_VAR_REF
 xchain277_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1840]
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 jmp xchain277_n8_α
# IR_LIT_STRING
 xchain277_n8_α:
 mov qword ptr [rbp + 1280], 1
 mov rax, qword ptr [rip + .Lx290_0]
 mov qword ptr [rbp + 1288], rax
 jmp xchain277_n9_α
.Lx290_0:
 .quad .Lx290_0_s
.Lx290_0_s:
 .string "."
# IR_VAR_REF
 xchain277_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1808]
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 jmp xchain277_n10_α
# IR_LIT_STRING
 xchain277_n10_α:
 mov qword ptr [rbp + 1136], 1
 mov rax, qword ptr [rip + .Lx293_0]
 mov qword ptr [rbp + 1144], rax
 jmp xchain277_n11_α
.Lx293_0:
 .quad .Lx293_0_s
.Lx293_0_s:
 .string "[]"
 xchain277_n11_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1280] -> [zr+1216]
 mov rax, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 1216], rax
 mov rax, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 1224], rax
# marshal arg1 = producer-box slot [zr+1168] -> [zr+1232]
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 1240], rax
# marshal arg2 = producer-box slot [zr+1136] -> [zr+1248]
 mov rax, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 1256], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1216]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 cmp eax, 99
 je proc_query$2F1_ω
 jmp xchain277_n12_α
 xchain277_n11_β:
 jmp proc_query$2F1_ω
 xchain277_n12_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1424] -> [zr+1360]
 mov rax, qword ptr [rbp + 1424]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 1432]
 mov qword ptr [rbp + 1368], rax
# marshal arg1 = producer-box slot [zr+1312] -> [zr+1376]
 mov rax, qword ptr [rbp + 1312]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 1320]
 mov qword ptr [rbp + 1384], rax
# marshal arg2 = producer-box slot [zr+1200] -> [zr+1392]
 mov rax, qword ptr [rbp + 1200]
 mov qword ptr [rbp + 1392], rax
 mov rax, qword ptr [rbp + 1208]
 mov qword ptr [rbp + 1400], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1360]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 cmp eax, 99
 je proc_query$2F1_ω
 jmp xchain277_n13_α
 xchain277_n12_β:
 jmp proc_query$2F1_ω
 xchain277_n13_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1568] -> [zr+1504]
 mov rax, qword ptr [rbp + 1568]
 mov qword ptr [rbp + 1504], rax
 mov rax, qword ptr [rbp + 1576]
 mov qword ptr [rbp + 1512], rax
# marshal arg1 = producer-box slot [zr+1456] -> [zr+1520]
 mov rax, qword ptr [rbp + 1456]
 mov qword ptr [rbp + 1520], rax
 mov rax, qword ptr [rbp + 1464]
 mov qword ptr [rbp + 1528], rax
# marshal arg2 = producer-box slot [zr+1344] -> [zr+1536]
 mov rax, qword ptr [rbp + 1344]
 mov qword ptr [rbp + 1536], rax
 mov rax, qword ptr [rbp + 1352]
 mov qword ptr [rbp + 1544], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1504]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1488], rax
 mov qword ptr [rbp + 1496], rdx
 cmp eax, 99
 je proc_query$2F1_ω
 jmp xchain277_n14_α
 xchain277_n13_β:
 jmp proc_query$2F1_ω
 xchain277_n14_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1712] -> [zr+1648]
 mov rax, qword ptr [rbp + 1712]
 mov qword ptr [rbp + 1648], rax
 mov rax, qword ptr [rbp + 1720]
 mov qword ptr [rbp + 1656], rax
# marshal arg1 = producer-box slot [zr+1600] -> [zr+1664]
 mov rax, qword ptr [rbp + 1600]
 mov qword ptr [rbp + 1664], rax
 mov rax, qword ptr [rbp + 1608]
 mov qword ptr [rbp + 1672], rax
# marshal arg2 = producer-box slot [zr+1488] -> [zr+1680]
 mov rax, qword ptr [rbp + 1488]
 mov qword ptr [rbp + 1680], rax
 mov rax, qword ptr [rbp + 1496]
 mov qword ptr [rbp + 1688], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1648]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1632], rax
 mov qword ptr [rbp + 1640], rdx
 cmp eax, 99
 je xchain277_n16_α
 jmp xchain277_n15_α
 xchain277_n14_β:
 jmp xchain277_n16_α
 xchain277_n15_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1104] -> [zr+1072]
 mov rax, qword ptr [rbp + 1104]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 1112]
 mov qword ptr [rbp + 1080], rax
# marshal arg1 = producer-box slot [zr+1632] -> [zr+1088]
 mov rax, qword ptr [rbp + 1632]
 mov qword ptr [rbp + 1088], rax
 mov rax, qword ptr [rbp + 1640]
 mov qword ptr [rbp + 1096], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 1072]
 lea r8, [rbp + 1072]
.Lx298_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx298_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx298_41
 cmp esi, 1
 jne .Lx298_55
 mov r8, rax
 jmp .Lx298_40
.Lx298_55:
 cmp esi, 2
 jne .Lx298_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx298_41
 mov r8, rax
 jmp .Lx298_40
.Lx298_56:
 cmp eax, 13
 jne .Lx298_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx298_41
 cmp rax, r8
 je .Lx298_41
 mov r8, rax
 jmp .Lx298_40
.Lx298_41:
 lea r9, [rbp + 1088]
.Lx298_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx298_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx298_43
 cmp esi, 1
 jne .Lx298_57
 mov r9, rax
 jmp .Lx298_42
.Lx298_57:
 cmp esi, 2
 jne .Lx298_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx298_43
 mov r9, rax
 jmp .Lx298_42
.Lx298_58:
 cmp eax, 13
 jne .Lx298_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx298_43
 cmp rax, r9
 je .Lx298_43
 mov r9, rax
 jmp .Lx298_42
.Lx298_43:
 cmp r8, r9
 je .Lx298_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx298_44
 cmp eax, 99
 je .Lx298_44
 cmp eax, 13
 jne .Lx298_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx298_44
 jmp .Lx298_45
.Lx298_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx298_53
 cmp eax, 99
 je .Lx298_53
 cmp eax, 13
 jne .Lx298_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx298_53
 jmp .Lx298_46
.Lx298_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx298_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx298_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx298_51
.Lx298_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx298_47
 cmp eax, 99
 je .Lx298_47
 cmp eax, 13
 jne .Lx298_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx298_47
 jmp .Lx298_48
.Lx298_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx298_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx298_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx298_51
.Lx298_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx298_49
 cmp edx, 14
 je .Lx298_53
 jmp .Lx298_52
.Lx298_49:
 cmp edx, 14
 je .Lx298_52
 cmp ecx, 7
 je .Lx298_53
 cmp edx, 7
 je .Lx298_53
 cmp ecx, 6
 jne .Lx298_50
 cmp edx, 6
 jne .Lx298_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx298_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx298_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx298_51
 jmp .Lx298_52
.Lx298_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx298_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx298_53
.Lx298_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx298_54
.Lx298_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx298_54
.Lx298_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx298_54:
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 cmp eax, 99
 je xchain277_n16_α
 jmp xchain277_n17_α
 xchain277_n15_β:
 jmp xchain277_n16_α
 xchain277_n16_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+112]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 120], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_unwind (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 1
 call rt_pl_dop_trail_unwind@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_query$2F1_ω
 jmp proc_query$2F1_ω
 xchain277_n16_β:
 jmp proc_query$2F1_ω
# IR_VAR_REF
 xchain277_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1856]
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain277_n18_α
# IR_VAR_REF
 xchain277_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1824]
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 jmp xchain277_n19_α
 xchain277_n19_α:
 mov qword ptr [rbp + 960], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx305_20
 mov rax, qword ptr [rbp + 992]
 mov rdx, qword ptr [rbp + 1000]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx305_21
.Lx305_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 992]
 mov rdx, qword ptr [rbp + 1000]
 call rt_arg_stage@PLT
.Lx305_21:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx305_22
 mov rax, qword ptr [rbp + 1024]
 mov rdx, qword ptr [rbp + 1032]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 16], rax
 mov qword ptr [r10 + 24], rdx
 jmp .Lx305_23
.Lx305_22:
 mov edi, 1
 mov rsi, qword ptr [rbp + 1024]
 mov rdx, qword ptr [rbp + 1032]
 call rt_arg_stage@PLT
.Lx305_23:
 mov rdi, qword ptr [rip + .Lx305_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx305_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx305_3]
 lea rdx, [rip + .Lx305_4]
 jmp rax
.Lx305_3:
 mov qword ptr [rbp + 968], rsp
 mov rax, qword ptr [rbp + 960]
 test rax, rax
 jne .Lx305_5
 mov qword ptr [rbp + 960], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx305_2
.Lx305_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx305_2
.Lx305_4:
 mov rax, qword ptr [rbp + 960]
 test rax, rax
 jne .Lx305_6
 mov qword ptr [rbp + 960], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx305_2
.Lx305_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx305_2
.Lx305_1:
 call rt_faildescr@PLT
.Lx305_2:
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 cmp eax, 99
 je xchain277_n16_α
 jmp xchain277_n20_α
 xchain277_n19_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 968]
 jmp qword ptr [rsp]
.Lx305_0:
 .quad .Lx305_0_s
.Lx305_0_s:
 .string "density/2"
# IR_VAR_REF
 xchain277_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1840]
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 jmp xchain277_n21_α
# IR_VAR_REF
 xchain277_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1808]
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp xchain277_n22_α
 xchain277_n22_α:
 mov qword ptr [rbp + 816], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx311_20
 mov rax, qword ptr [rbp + 848]
 mov rdx, qword ptr [rbp + 856]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx311_21
.Lx311_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 848]
 mov rdx, qword ptr [rbp + 856]
 call rt_arg_stage@PLT
.Lx311_21:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx311_22
 mov rax, qword ptr [rbp + 880]
 mov rdx, qword ptr [rbp + 888]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 16], rax
 mov qword ptr [r10 + 24], rdx
 jmp .Lx311_23
.Lx311_22:
 mov edi, 1
 mov rsi, qword ptr [rbp + 880]
 mov rdx, qword ptr [rbp + 888]
 call rt_arg_stage@PLT
.Lx311_23:
 mov rdi, qword ptr [rip + .Lx311_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx311_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx311_3]
 lea rdx, [rip + .Lx311_4]
 jmp rax
.Lx311_3:
 mov qword ptr [rbp + 824], rsp
 mov rax, qword ptr [rbp + 816]
 test rax, rax
 jne .Lx311_5
 mov qword ptr [rbp + 816], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx311_2
.Lx311_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx311_2
.Lx311_4:
 mov rax, qword ptr [rbp + 816]
 test rax, rax
 jne .Lx311_6
 mov qword ptr [rbp + 816], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx311_2
.Lx311_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx311_2
.Lx311_1:
 call rt_faildescr@PLT
.Lx311_2:
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 cmp eax, 99
 je xchain277_n19_β
 jmp xchain277_n23_α
 xchain277_n22_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 824]
 jmp qword ptr [rsp]
.Lx311_0:
 .quad .Lx311_0_s
.Lx311_0_s:
 .string "density/2"
# IR_VAR
 xchain277_n23_α:
 mov rax, qword ptr [rbp + 1824]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 1832]
 mov qword ptr [rbp + 712], rax
 jmp xchain277_n24_α
# IR_VAR
 xchain277_n24_α:
 mov rax, qword ptr [rbp + 1808]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 1816]
 mov qword ptr [rbp + 744], rax
 jmp xchain277_n25_α
 xchain277_n25_α:
# BOX IR_CALL $cmp_gt(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+704] -> [zr+672]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 680], rax
# marshal arg1 = producer-box slot [zr+736] -> [zr+688]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 696], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_gt (no by-name dispatch)
 lea rdi, [rbp + 672]
 mov esi, 2
 call rt_pl_dop_cmp_gt@PLT
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 cmp eax, 99
 je xchain277_n22_β
 jmp xchain277_n26_α
 xchain277_n25_β:
 jmp xchain277_n22_β
# IR_VAR_REF
 xchain277_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1776]
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain277_n27_α
# IR_LIT_INTEGER
 xchain277_n27_α:
 mov qword ptr [rbp + 592], 6
 mov rax, qword ptr [rip + .Lx319_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain277_n28_α
.Lx319_0:
 .quad 20
# IR_VAR
 xchain277_n28_α:
 mov rax, qword ptr [rbp + 1824]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 1832]
 mov qword ptr [rbp + 632], rax
 jmp xchain277_n29_α
 xchain277_n29_α:
# BOX IR_CALL $ax_mul(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+592] -> [zr+544]
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 552], rax
# marshal arg1 = producer-box slot [zr+624] -> [zr+560]
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 568], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_mul (no by-name dispatch)
 lea rdi, [rbp + 544]
 mov esi, 2
 call rt_pl_dop_ax_mul@PLT
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 cmp eax, 99
 je xchain277_n16_α
 jmp xchain277_n30_α
 xchain277_n29_β:
 jmp xchain277_n16_α
 xchain277_n30_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+496] -> [zr+464]
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 472], rax
# marshal arg1 = producer-box slot [zr+528] -> [zr+480]
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 488], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 464]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 cmp eax, 99
 je xchain277_n22_β
 jmp xchain277_n31_α
 xchain277_n30_β:
 jmp xchain277_n22_β
# IR_VAR_REF
 xchain277_n31_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1792]
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain277_n32_α
# IR_LIT_INTEGER
 xchain277_n32_α:
 mov qword ptr [rbp + 384], 6
 mov rax, qword ptr [rip + .Lx326_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain277_n33_α
.Lx326_0:
 .quad 21
# IR_VAR
 xchain277_n33_α:
 mov rax, qword ptr [rbp + 1808]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 1816]
 mov qword ptr [rbp + 424], rax
 jmp xchain277_n34_α
 xchain277_n34_α:
# BOX IR_CALL $ax_mul(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+336]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 344], rax
# marshal arg1 = producer-box slot [zr+416] -> [zr+352]
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 360], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_mul (no by-name dispatch)
 lea rdi, [rbp + 336]
 mov esi, 2
 call rt_pl_dop_ax_mul@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je xchain277_n16_α
 jmp xchain277_n35_α
 xchain277_n34_β:
 jmp xchain277_n16_α
 xchain277_n35_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+288] -> [zr+256]
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 264], rax
# marshal arg1 = producer-box slot [zr+320] -> [zr+272]
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 280], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 256]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 cmp eax, 99
 je xchain277_n22_β
 jmp xchain277_n36_α
 xchain277_n35_β:
 jmp xchain277_n22_β
# IR_VAR
 xchain277_n36_α:
 mov rax, qword ptr [rbp + 1776]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 1784]
 mov qword ptr [rbp + 184], rax
 jmp xchain277_n37_α
# IR_VAR
 xchain277_n37_α:
 mov rax, qword ptr [rbp + 1792]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 1800]
 mov qword ptr [rbp + 216], rax
 jmp xchain277_n38_α
 xchain277_n38_α:
# BOX IR_CALL $cmp_lt(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
# marshal arg1 = producer-box slot [zr+208] -> [zr+160]
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 168], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_lt (no by-name dispatch)
 lea rdi, [rbp + 144]
 mov esi, 2
 call rt_pl_dop_cmp_lt@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain277_n22_β
 jmp xchain277_n39_α
 xchain277_n38_β:
 jmp xchain277_n22_β
# IR_SUSPEND yield+resume
 xchain277_n39_α:
 lea rax, [rip + xchain277_n39_β]
 mov qword ptr [rbp + 1744], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_query$2F1_γ
 xchain277_n39_β:
 jmp xchain277_n22_β
proc_query$2F1_res:
add rsp, 8
pop rbp
proc_query$2F1_β:
jmp qword ptr [rbp + 1744]
proc_query$2F1_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_query$2F1_res]
push rax
mov rax, [rbp + 1880]
mov rbp, [rbp + 1896]
jmp rax
proc_query$2F1_ω:
mov rax, [rbp + 1888]
lea rsp, [rbp + 1904]
mov rbp, [rbp + 1896]
jmp rax
  .globl proc_pop$2F2_α
proc_pop$2F2_α:
#=======================================================================================================================
    .global proc_pop$2F2_α
    .global proc_pop$2F2_β
    .global proc_pop$2F2_γ
    .global proc_pop$2F2_ω
  sub rsp, 6976
  mov [rsp + 6952], rcx
  mov [rsp + 6960], rdx
  mov [rsp + 6968], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 6936], rsp
  mov rdi, rsp
  mov esi, 6912
  mov edx, 6944
  call rt_jmp_frame_lexprep2@PLT
proc_pop$2F2_α_body:
lea rax, [rip + xchain338_n10_β]
mov qword ptr [rbp + 6912], rax
 xchain338_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_pop$2F2_ω
 jmp xchain338_n1_α
 xchain338_n0_β:
 jmp proc_pop$2F2_ω
# IR_VAR_REF
 xchain338_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 6848], rax
 mov qword ptr [rbp + 6856], rdx
 jmp xchain338_n2_α
# IR_LIT_STRING
 xchain338_n2_α:
 mov qword ptr [rbp + 6880], 1
 mov rax, qword ptr [rip + .Lx342_0]
 mov qword ptr [rbp + 6888], rax
 jmp xchain338_n3_α
.Lx342_0:
 .quad .Lx342_0_s
.Lx342_0_s:
 .string "china"
 xchain338_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6848] -> [zr+6816]
 mov rax, qword ptr [rbp + 6848]
 mov qword ptr [rbp + 6816], rax
 mov rax, qword ptr [rbp + 6856]
 mov qword ptr [rbp + 6824], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 6816]
 mov rsi, qword ptr [rip + .Lx343_2]
 jmp .Lx343_3
.Lx343_2:
 .quad .Lx343_2_s
.Lx343_2_s:
 .string "china"
.Lx343_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 6800], rax
 mov qword ptr [rbp + 6808], rdx
 cmp eax, 99
 je xchain338_n5_α
 jmp xchain338_n4_α
 xchain338_n3_β:
 jmp xchain338_n5_α
# IR_VAR_REF
 xchain338_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 6736], rax
 mov qword ptr [rbp + 6744], rdx
 jmp xchain338_n6_α
 xchain338_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+6656]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 6656], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 6664], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 6656]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 6640], rax
 mov qword ptr [rbp + 6648], rdx
 cmp eax, 99
 je proc_pop$2F2_ω
 jmp xchain338_n7_α
 xchain338_n5_β:
 jmp proc_pop$2F2_ω
# IR_LIT_INTEGER
 xchain338_n6_α:
 mov qword ptr [rbp + 6768], 6
 mov rax, qword ptr [rip + .Lx347_0]
 mov qword ptr [rbp + 6776], rax
 jmp xchain338_n8_α
.Lx347_0:
 .quad 8250
# IR_VAR_REF
 xchain338_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 6576], rax
 mov qword ptr [rbp + 6584], rdx
 jmp xchain338_n9_α
 xchain338_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6736] -> [zr+6704]
 mov rax, qword ptr [rbp + 6736]
 mov qword ptr [rbp + 6704], rax
 mov rax, qword ptr [rbp + 6744]
 mov qword ptr [rbp + 6712], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 6704]
 movabs rsi, 8250
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 6688], rax
 mov qword ptr [rbp + 6696], rdx
 cmp eax, 99
 je xchain338_n5_α
 jmp xchain338_n10_α
 xchain338_n8_β:
 jmp xchain338_n5_α
# IR_LIT_STRING
 xchain338_n9_α:
 mov qword ptr [rbp + 6608], 1
 mov rax, qword ptr [rip + .Lx351_0]
 mov qword ptr [rbp + 6616], rax
 jmp xchain338_n11_α
.Lx351_0:
 .quad .Lx351_0_s
.Lx351_0_s:
 .string "india"
# IR_SUSPEND yield+resume
 xchain338_n10_α:
 lea rax, [rip + xchain338_n10_β]
 mov qword ptr [rbp + 6912], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_pop$2F2_γ
 xchain338_n10_β:
 jmp xchain338_n5_α
 xchain338_n11_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6576] -> [zr+6544]
 mov rax, qword ptr [rbp + 6576]
 mov qword ptr [rbp + 6544], rax
 mov rax, qword ptr [rbp + 6584]
 mov qword ptr [rbp + 6552], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 6544]
 mov rsi, qword ptr [rip + .Lx354_2]
 jmp .Lx354_3
.Lx354_2:
 .quad .Lx354_2_s
.Lx354_2_s:
 .string "india"
.Lx354_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 6528], rax
 mov qword ptr [rbp + 6536], rdx
 cmp eax, 99
 je xchain338_n13_α
 jmp xchain338_n12_α
 xchain338_n11_β:
 jmp xchain338_n13_α
# IR_VAR_REF
 xchain338_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 6464], rax
 mov qword ptr [rbp + 6472], rdx
 jmp xchain338_n14_α
 xchain338_n13_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+6384]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 6384], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 6392], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 6384]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 6368], rax
 mov qword ptr [rbp + 6376], rdx
 cmp eax, 99
 je proc_pop$2F2_ω
 jmp xchain338_n15_α
 xchain338_n13_β:
 jmp proc_pop$2F2_ω
# IR_LIT_INTEGER
 xchain338_n14_α:
 mov qword ptr [rbp + 6496], 6
 mov rax, qword ptr [rip + .Lx358_0]
 mov qword ptr [rbp + 6504], rax
 jmp xchain338_n16_α
.Lx358_0:
 .quad 5863
# IR_VAR_REF
 xchain338_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 6304], rax
 mov qword ptr [rbp + 6312], rdx
 jmp xchain338_n17_α
 xchain338_n16_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6464] -> [zr+6432]
 mov rax, qword ptr [rbp + 6464]
 mov qword ptr [rbp + 6432], rax
 mov rax, qword ptr [rbp + 6472]
 mov qword ptr [rbp + 6440], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 6432]
 movabs rsi, 5863
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 6416], rax
 mov qword ptr [rbp + 6424], rdx
 cmp eax, 99
 je xchain338_n13_α
 jmp xchain338_n18_α
 xchain338_n16_β:
 jmp xchain338_n13_α
# IR_LIT_STRING
 xchain338_n17_α:
 mov qword ptr [rbp + 6336], 1
 mov rax, qword ptr [rip + .Lx362_0]
 mov qword ptr [rbp + 6344], rax
 jmp xchain338_n19_α
.Lx362_0:
 .quad .Lx362_0_s
.Lx362_0_s:
 .string "ussr"
# IR_SUSPEND yield+resume
 xchain338_n18_α:
 lea rax, [rip + xchain338_n18_β]
 mov qword ptr [rbp + 6912], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_pop$2F2_γ
 xchain338_n18_β:
 jmp xchain338_n13_α
 xchain338_n19_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6304] -> [zr+6272]
 mov rax, qword ptr [rbp + 6304]
 mov qword ptr [rbp + 6272], rax
 mov rax, qword ptr [rbp + 6312]
 mov qword ptr [rbp + 6280], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 6272]
 mov rsi, qword ptr [rip + .Lx365_2]
 jmp .Lx365_3
.Lx365_2:
 .quad .Lx365_2_s
.Lx365_2_s:
 .string "ussr"
.Lx365_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 6256], rax
 mov qword ptr [rbp + 6264], rdx
 cmp eax, 99
 je xchain338_n21_α
 jmp xchain338_n20_α
 xchain338_n19_β:
 jmp xchain338_n21_α
# IR_VAR_REF
 xchain338_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 6192], rax
 mov qword ptr [rbp + 6200], rdx
 jmp xchain338_n22_α
 xchain338_n21_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+6112]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 6112], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 6120], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 6112]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 6096], rax
 mov qword ptr [rbp + 6104], rdx
 cmp eax, 99
 je proc_pop$2F2_ω
 jmp xchain338_n23_α
 xchain338_n21_β:
 jmp proc_pop$2F2_ω
# IR_LIT_INTEGER
 xchain338_n22_α:
 mov qword ptr [rbp + 6224], 6
 mov rax, qword ptr [rip + .Lx369_0]
 mov qword ptr [rbp + 6232], rax
 jmp xchain338_n24_α
.Lx369_0:
 .quad 2521
# IR_VAR_REF
 xchain338_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 6032], rax
 mov qword ptr [rbp + 6040], rdx
 jmp xchain338_n25_α
 xchain338_n24_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6192] -> [zr+6160]
 mov rax, qword ptr [rbp + 6192]
 mov qword ptr [rbp + 6160], rax
 mov rax, qword ptr [rbp + 6200]
 mov qword ptr [rbp + 6168], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 6160]
 movabs rsi, 2521
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 6144], rax
 mov qword ptr [rbp + 6152], rdx
 cmp eax, 99
 je xchain338_n21_α
 jmp xchain338_n26_α
 xchain338_n24_β:
 jmp xchain338_n21_α
# IR_LIT_STRING
 xchain338_n25_α:
 mov qword ptr [rbp + 6064], 1
 mov rax, qword ptr [rip + .Lx373_0]
 mov qword ptr [rbp + 6072], rax
 jmp xchain338_n27_α
.Lx373_0:
 .quad .Lx373_0_s
.Lx373_0_s:
 .string "usa"
# IR_SUSPEND yield+resume
 xchain338_n26_α:
 lea rax, [rip + xchain338_n26_β]
 mov qword ptr [rbp + 6912], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_pop$2F2_γ
 xchain338_n26_β:
 jmp xchain338_n21_α
 xchain338_n27_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6032] -> [zr+6000]
 mov rax, qword ptr [rbp + 6032]
 mov qword ptr [rbp + 6000], rax
 mov rax, qword ptr [rbp + 6040]
 mov qword ptr [rbp + 6008], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 6000]
 mov rsi, qword ptr [rip + .Lx376_2]
 jmp .Lx376_3
.Lx376_2:
 .quad .Lx376_2_s
.Lx376_2_s:
 .string "usa"
.Lx376_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 5984], rax
 mov qword ptr [rbp + 5992], rdx
 cmp eax, 99
 je xchain338_n29_α
 jmp xchain338_n28_α
 xchain338_n27_β:
 jmp xchain338_n29_α
# IR_VAR_REF
 xchain338_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 5920], rax
 mov qword ptr [rbp + 5928], rdx
 jmp xchain338_n30_α
 xchain338_n29_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+5840]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 5840], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 5848], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 5840]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 5824], rax
 mov qword ptr [rbp + 5832], rdx
 cmp eax, 99
 je proc_pop$2F2_ω
 jmp xchain338_n31_α
 xchain338_n29_β:
 jmp proc_pop$2F2_ω
# IR_LIT_INTEGER
 xchain338_n30_α:
 mov qword ptr [rbp + 5952], 6
 mov rax, qword ptr [rip + .Lx380_0]
 mov qword ptr [rbp + 5960], rax
 jmp xchain338_n32_α
.Lx380_0:
 .quad 2119
# IR_VAR_REF
 xchain338_n31_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 5760], rax
 mov qword ptr [rbp + 5768], rdx
 jmp xchain338_n33_α
 xchain338_n32_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5920] -> [zr+5888]
 mov rax, qword ptr [rbp + 5920]
 mov qword ptr [rbp + 5888], rax
 mov rax, qword ptr [rbp + 5928]
 mov qword ptr [rbp + 5896], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 5888]
 movabs rsi, 2119
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 5872], rax
 mov qword ptr [rbp + 5880], rdx
 cmp eax, 99
 je xchain338_n29_α
 jmp xchain338_n34_α
 xchain338_n32_β:
 jmp xchain338_n29_α
# IR_LIT_STRING
 xchain338_n33_α:
 mov qword ptr [rbp + 5792], 1
 mov rax, qword ptr [rip + .Lx384_0]
 mov qword ptr [rbp + 5800], rax
 jmp xchain338_n35_α
.Lx384_0:
 .quad .Lx384_0_s
.Lx384_0_s:
 .string "indonesia"
# IR_SUSPEND yield+resume
 xchain338_n34_α:
 lea rax, [rip + xchain338_n34_β]
 mov qword ptr [rbp + 6912], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_pop$2F2_γ
 xchain338_n34_β:
 jmp xchain338_n29_α
 xchain338_n35_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5760] -> [zr+5728]
 mov rax, qword ptr [rbp + 5760]
 mov qword ptr [rbp + 5728], rax
 mov rax, qword ptr [rbp + 5768]
 mov qword ptr [rbp + 5736], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 5728]
 mov rsi, qword ptr [rip + .Lx387_2]
 jmp .Lx387_3
.Lx387_2:
 .quad .Lx387_2_s
.Lx387_2_s:
 .string "indonesia"
.Lx387_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 5712], rax
 mov qword ptr [rbp + 5720], rdx
 cmp eax, 99
 je xchain338_n37_α
 jmp xchain338_n36_α
 xchain338_n35_β:
 jmp xchain338_n37_α
# IR_VAR_REF
 xchain338_n36_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 5648], rax
 mov qword ptr [rbp + 5656], rdx
 jmp xchain338_n38_α
 xchain338_n37_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+5568]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 5568], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 5576], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 5568]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 5552], rax
 mov qword ptr [rbp + 5560], rdx
 cmp eax, 99
 je proc_pop$2F2_ω
 jmp xchain338_n39_α
 xchain338_n37_β:
 jmp proc_pop$2F2_ω
# IR_LIT_INTEGER
 xchain338_n38_α:
 mov qword ptr [rbp + 5680], 6
 mov rax, qword ptr [rip + .Lx391_0]
 mov qword ptr [rbp + 5688], rax
 jmp xchain338_n40_α
.Lx391_0:
 .quad 1276
# IR_VAR_REF
 xchain338_n39_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 5488], rax
 mov qword ptr [rbp + 5496], rdx
 jmp xchain338_n41_α
 xchain338_n40_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5648] -> [zr+5616]
 mov rax, qword ptr [rbp + 5648]
 mov qword ptr [rbp + 5616], rax
 mov rax, qword ptr [rbp + 5656]
 mov qword ptr [rbp + 5624], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 5616]
 movabs rsi, 1276
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 5600], rax
 mov qword ptr [rbp + 5608], rdx
 cmp eax, 99
 je xchain338_n37_α
 jmp xchain338_n42_α
 xchain338_n40_β:
 jmp xchain338_n37_α
# IR_LIT_STRING
 xchain338_n41_α:
 mov qword ptr [rbp + 5520], 1
 mov rax, qword ptr [rip + .Lx395_0]
 mov qword ptr [rbp + 5528], rax
 jmp xchain338_n43_α
.Lx395_0:
 .quad .Lx395_0_s
.Lx395_0_s:
 .string "japan"
# IR_SUSPEND yield+resume
 xchain338_n42_α:
 lea rax, [rip + xchain338_n42_β]
 mov qword ptr [rbp + 6912], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_pop$2F2_γ
 xchain338_n42_β:
 jmp xchain338_n37_α
 xchain338_n43_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5488] -> [zr+5456]
 mov rax, qword ptr [rbp + 5488]
 mov qword ptr [rbp + 5456], rax
 mov rax, qword ptr [rbp + 5496]
 mov qword ptr [rbp + 5464], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 5456]
 mov rsi, qword ptr [rip + .Lx398_2]
 jmp .Lx398_3
.Lx398_2:
 .quad .Lx398_2_s
.Lx398_2_s:
 .string "japan"
.Lx398_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 5440], rax
 mov qword ptr [rbp + 5448], rdx
 cmp eax, 99
 je xchain338_n45_α
 jmp xchain338_n44_α
 xchain338_n43_β:
 jmp xchain338_n45_α
# IR_VAR_REF
 xchain338_n44_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 5376], rax
 mov qword ptr [rbp + 5384], rdx
 jmp xchain338_n46_α
 xchain338_n45_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+5296]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 5296], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 5304], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 5296]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 5280], rax
 mov qword ptr [rbp + 5288], rdx
 cmp eax, 99
 je proc_pop$2F2_ω
 jmp xchain338_n47_α
 xchain338_n45_β:
 jmp proc_pop$2F2_ω
# IR_LIT_INTEGER
 xchain338_n46_α:
 mov qword ptr [rbp + 5408], 6
 mov rax, qword ptr [rip + .Lx402_0]
 mov qword ptr [rbp + 5416], rax
 jmp xchain338_n48_α
.Lx402_0:
 .quad 1097
# IR_VAR_REF
 xchain338_n47_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 5216], rax
 mov qword ptr [rbp + 5224], rdx
 jmp xchain338_n49_α
 xchain338_n48_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5376] -> [zr+5344]
 mov rax, qword ptr [rbp + 5376]
 mov qword ptr [rbp + 5344], rax
 mov rax, qword ptr [rbp + 5384]
 mov qword ptr [rbp + 5352], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 5344]
 movabs rsi, 1097
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 5328], rax
 mov qword ptr [rbp + 5336], rdx
 cmp eax, 99
 je xchain338_n45_α
 jmp xchain338_n50_α
 xchain338_n48_β:
 jmp xchain338_n45_α
# IR_LIT_STRING
 xchain338_n49_α:
 mov qword ptr [rbp + 5248], 1
 mov rax, qword ptr [rip + .Lx406_0]
 mov qword ptr [rbp + 5256], rax
 jmp xchain338_n51_α
.Lx406_0:
 .quad .Lx406_0_s
.Lx406_0_s:
 .string "brazil"
# IR_SUSPEND yield+resume
 xchain338_n50_α:
 lea rax, [rip + xchain338_n50_β]
 mov qword ptr [rbp + 6912], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_pop$2F2_γ
 xchain338_n50_β:
 jmp xchain338_n45_α
 xchain338_n51_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5216] -> [zr+5184]
 mov rax, qword ptr [rbp + 5216]
 mov qword ptr [rbp + 5184], rax
 mov rax, qword ptr [rbp + 5224]
 mov qword ptr [rbp + 5192], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 5184]
 mov rsi, qword ptr [rip + .Lx409_2]
 jmp .Lx409_3
.Lx409_2:
 .quad .Lx409_2_s
.Lx409_2_s:
 .string "brazil"
.Lx409_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 5168], rax
 mov qword ptr [rbp + 5176], rdx
 cmp eax, 99
 je xchain338_n53_α
 jmp xchain338_n52_α
 xchain338_n51_β:
 jmp xchain338_n53_α
# IR_VAR_REF
 xchain338_n52_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 5104], rax
 mov qword ptr [rbp + 5112], rdx
 jmp xchain338_n54_α
 xchain338_n53_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+5024]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 5024], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 5032], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 5024]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 5008], rax
 mov qword ptr [rbp + 5016], rdx
 cmp eax, 99
 je proc_pop$2F2_ω
 jmp xchain338_n55_α
 xchain338_n53_β:
 jmp proc_pop$2F2_ω
# IR_LIT_INTEGER
 xchain338_n54_α:
 mov qword ptr [rbp + 5136], 6
 mov rax, qword ptr [rip + .Lx413_0]
 mov qword ptr [rbp + 5144], rax
 jmp xchain338_n56_α
.Lx413_0:
 .quad 1042
# IR_VAR_REF
 xchain338_n55_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 4944], rax
 mov qword ptr [rbp + 4952], rdx
 jmp xchain338_n57_α
 xchain338_n56_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5104] -> [zr+5072]
 mov rax, qword ptr [rbp + 5104]
 mov qword ptr [rbp + 5072], rax
 mov rax, qword ptr [rbp + 5112]
 mov qword ptr [rbp + 5080], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 5072]
 movabs rsi, 1042
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 5056], rax
 mov qword ptr [rbp + 5064], rdx
 cmp eax, 99
 je xchain338_n53_α
 jmp xchain338_n58_α
 xchain338_n56_β:
 jmp xchain338_n53_α
# IR_LIT_STRING
 xchain338_n57_α:
 mov qword ptr [rbp + 4976], 1
 mov rax, qword ptr [rip + .Lx417_0]
 mov qword ptr [rbp + 4984], rax
 jmp xchain338_n59_α
.Lx417_0:
 .quad .Lx417_0_s
.Lx417_0_s:
 .string "bangladesh"
# IR_SUSPEND yield+resume
 xchain338_n58_α:
 lea rax, [rip + xchain338_n58_β]
 mov qword ptr [rbp + 6912], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_pop$2F2_γ
 xchain338_n58_β:
 jmp xchain338_n53_α
 xchain338_n59_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4944] -> [zr+4912]
 mov rax, qword ptr [rbp + 4944]
 mov qword ptr [rbp + 4912], rax
 mov rax, qword ptr [rbp + 4952]
 mov qword ptr [rbp + 4920], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 4912]
 mov rsi, qword ptr [rip + .Lx420_2]
 jmp .Lx420_3
.Lx420_2:
 .quad .Lx420_2_s
.Lx420_2_s:
 .string "bangladesh"
.Lx420_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 4896], rax
 mov qword ptr [rbp + 4904], rdx
 cmp eax, 99
 je xchain338_n61_α
 jmp xchain338_n60_α
 xchain338_n59_β:
 jmp xchain338_n61_α
# IR_VAR_REF
 xchain338_n60_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 4832], rax
 mov qword ptr [rbp + 4840], rdx
 jmp xchain338_n62_α
 xchain338_n61_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+4752]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 4752], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 4760], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 4752]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 4736], rax
 mov qword ptr [rbp + 4744], rdx
 cmp eax, 99
 je proc_pop$2F2_ω
 jmp xchain338_n63_α
 xchain338_n61_β:
 jmp proc_pop$2F2_ω
# IR_LIT_INTEGER
 xchain338_n62_α:
 mov qword ptr [rbp + 4864], 6
 mov rax, qword ptr [rip + .Lx424_0]
 mov qword ptr [rbp + 4872], rax
 jmp xchain338_n64_α
.Lx424_0:
 .quad 750
# IR_VAR_REF
 xchain338_n63_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 4672], rax
 mov qword ptr [rbp + 4680], rdx
 jmp xchain338_n65_α
 xchain338_n64_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4832] -> [zr+4800]
 mov rax, qword ptr [rbp + 4832]
 mov qword ptr [rbp + 4800], rax
 mov rax, qword ptr [rbp + 4840]
 mov qword ptr [rbp + 4808], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 4800]
 movabs rsi, 750
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 4784], rax
 mov qword ptr [rbp + 4792], rdx
 cmp eax, 99
 je xchain338_n61_α
 jmp xchain338_n66_α
 xchain338_n64_β:
 jmp xchain338_n61_α
# IR_LIT_STRING
 xchain338_n65_α:
 mov qword ptr [rbp + 4704], 1
 mov rax, qword ptr [rip + .Lx428_0]
 mov qword ptr [rbp + 4712], rax
 jmp xchain338_n67_α
.Lx428_0:
 .quad .Lx428_0_s
.Lx428_0_s:
 .string "pakistan"
# IR_SUSPEND yield+resume
 xchain338_n66_α:
 lea rax, [rip + xchain338_n66_β]
 mov qword ptr [rbp + 6912], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_pop$2F2_γ
 xchain338_n66_β:
 jmp xchain338_n61_α
 xchain338_n67_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4672] -> [zr+4640]
 mov rax, qword ptr [rbp + 4672]
 mov qword ptr [rbp + 4640], rax
 mov rax, qword ptr [rbp + 4680]
 mov qword ptr [rbp + 4648], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 4640]
 mov rsi, qword ptr [rip + .Lx431_2]
 jmp .Lx431_3
.Lx431_2:
 .quad .Lx431_2_s
.Lx431_2_s:
 .string "pakistan"
.Lx431_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 4624], rax
 mov qword ptr [rbp + 4632], rdx
 cmp eax, 99
 je xchain338_n69_α
 jmp xchain338_n68_α
 xchain338_n67_β:
 jmp xchain338_n69_α
# IR_VAR_REF
 xchain338_n68_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 4560], rax
 mov qword ptr [rbp + 4568], rdx
 jmp xchain338_n70_α
 xchain338_n69_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+4480]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 4480], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 4488], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 4480]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 4464], rax
 mov qword ptr [rbp + 4472], rdx
 cmp eax, 99
 je proc_pop$2F2_ω
 jmp xchain338_n71_α
 xchain338_n69_β:
 jmp proc_pop$2F2_ω
# IR_LIT_INTEGER
 xchain338_n70_α:
 mov qword ptr [rbp + 4592], 6
 mov rax, qword ptr [rip + .Lx435_0]
 mov qword ptr [rbp + 4600], rax
 jmp xchain338_n72_α
.Lx435_0:
 .quad 682
# IR_VAR_REF
 xchain338_n71_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 4400], rax
 mov qword ptr [rbp + 4408], rdx
 jmp xchain338_n73_α
 xchain338_n72_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4560] -> [zr+4528]
 mov rax, qword ptr [rbp + 4560]
 mov qword ptr [rbp + 4528], rax
 mov rax, qword ptr [rbp + 4568]
 mov qword ptr [rbp + 4536], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 4528]
 movabs rsi, 682
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 4512], rax
 mov qword ptr [rbp + 4520], rdx
 cmp eax, 99
 je xchain338_n69_α
 jmp xchain338_n74_α
 xchain338_n72_β:
 jmp xchain338_n69_α
# IR_LIT_STRING
 xchain338_n73_α:
 mov qword ptr [rbp + 4432], 1
 mov rax, qword ptr [rip + .Lx439_0]
 mov qword ptr [rbp + 4440], rax
 jmp xchain338_n75_α
.Lx439_0:
 .quad .Lx439_0_s
.Lx439_0_s:
 .string "w_germany"
# IR_SUSPEND yield+resume
 xchain338_n74_α:
 lea rax, [rip + xchain338_n74_β]
 mov qword ptr [rbp + 6912], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_pop$2F2_γ
 xchain338_n74_β:
 jmp xchain338_n69_α
 xchain338_n75_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4400] -> [zr+4368]
 mov rax, qword ptr [rbp + 4400]
 mov qword ptr [rbp + 4368], rax
 mov rax, qword ptr [rbp + 4408]
 mov qword ptr [rbp + 4376], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 4368]
 mov rsi, qword ptr [rip + .Lx442_2]
 jmp .Lx442_3
.Lx442_2:
 .quad .Lx442_2_s
.Lx442_2_s:
 .string "w_germany"
.Lx442_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 4352], rax
 mov qword ptr [rbp + 4360], rdx
 cmp eax, 99
 je xchain338_n77_α
 jmp xchain338_n76_α
 xchain338_n75_β:
 jmp xchain338_n77_α
# IR_VAR_REF
 xchain338_n76_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 4288], rax
 mov qword ptr [rbp + 4296], rdx
 jmp xchain338_n78_α
 xchain338_n77_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+4208]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 4208], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 4216], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 4208]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 4192], rax
 mov qword ptr [rbp + 4200], rdx
 cmp eax, 99
 je proc_pop$2F2_ω
 jmp xchain338_n79_α
 xchain338_n77_β:
 jmp proc_pop$2F2_ω
# IR_LIT_INTEGER
 xchain338_n78_α:
 mov qword ptr [rbp + 4320], 6
 mov rax, qword ptr [rip + .Lx446_0]
 mov qword ptr [rbp + 4328], rax
 jmp xchain338_n80_α
.Lx446_0:
 .quad 620
# IR_VAR_REF
 xchain338_n79_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 4128], rax
 mov qword ptr [rbp + 4136], rdx
 jmp xchain338_n81_α
 xchain338_n80_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4288] -> [zr+4256]
 mov rax, qword ptr [rbp + 4288]
 mov qword ptr [rbp + 4256], rax
 mov rax, qword ptr [rbp + 4296]
 mov qword ptr [rbp + 4264], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 4256]
 movabs rsi, 620
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 4240], rax
 mov qword ptr [rbp + 4248], rdx
 cmp eax, 99
 je xchain338_n77_α
 jmp xchain338_n82_α
 xchain338_n80_β:
 jmp xchain338_n77_α
# IR_LIT_STRING
 xchain338_n81_α:
 mov qword ptr [rbp + 4160], 1
 mov rax, qword ptr [rip + .Lx450_0]
 mov qword ptr [rbp + 4168], rax
 jmp xchain338_n83_α
.Lx450_0:
 .quad .Lx450_0_s
.Lx450_0_s:
 .string "nigeria"
# IR_SUSPEND yield+resume
 xchain338_n82_α:
 lea rax, [rip + xchain338_n82_β]
 mov qword ptr [rbp + 6912], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_pop$2F2_γ
 xchain338_n82_β:
 jmp xchain338_n77_α
 xchain338_n83_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4128] -> [zr+4096]
 mov rax, qword ptr [rbp + 4128]
 mov qword ptr [rbp + 4096], rax
 mov rax, qword ptr [rbp + 4136]
 mov qword ptr [rbp + 4104], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 4096]
 mov rsi, qword ptr [rip + .Lx453_2]
 jmp .Lx453_3
.Lx453_2:
 .quad .Lx453_2_s
.Lx453_2_s:
 .string "nigeria"
.Lx453_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 4080], rax
 mov qword ptr [rbp + 4088], rdx
 cmp eax, 99
 je xchain338_n85_α
 jmp xchain338_n84_α
 xchain338_n83_β:
 jmp xchain338_n85_α
# IR_VAR_REF
 xchain338_n84_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 4016], rax
 mov qword ptr [rbp + 4024], rdx
 jmp xchain338_n86_α
 xchain338_n85_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+3936]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 3936], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 3944], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 3936]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 3920], rax
 mov qword ptr [rbp + 3928], rdx
 cmp eax, 99
 je proc_pop$2F2_ω
 jmp xchain338_n87_α
 xchain338_n85_β:
 jmp proc_pop$2F2_ω
# IR_LIT_INTEGER
 xchain338_n86_α:
 mov qword ptr [rbp + 4048], 6
 mov rax, qword ptr [rip + .Lx457_0]
 mov qword ptr [rbp + 4056], rax
 jmp xchain338_n88_α
.Lx457_0:
 .quad 613
# IR_VAR_REF
 xchain338_n87_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3856], rax
 mov qword ptr [rbp + 3864], rdx
 jmp xchain338_n89_α
 xchain338_n88_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4016] -> [zr+3984]
 mov rax, qword ptr [rbp + 4016]
 mov qword ptr [rbp + 3984], rax
 mov rax, qword ptr [rbp + 4024]
 mov qword ptr [rbp + 3992], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 3984]
 movabs rsi, 613
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 3968], rax
 mov qword ptr [rbp + 3976], rdx
 cmp eax, 99
 je xchain338_n85_α
 jmp xchain338_n90_α
 xchain338_n88_β:
 jmp xchain338_n85_α
# IR_LIT_STRING
 xchain338_n89_α:
 mov qword ptr [rbp + 3888], 1
 mov rax, qword ptr [rip + .Lx461_0]
 mov qword ptr [rbp + 3896], rax
 jmp xchain338_n91_α
.Lx461_0:
 .quad .Lx461_0_s
.Lx461_0_s:
 .string "mexico"
# IR_SUSPEND yield+resume
 xchain338_n90_α:
 lea rax, [rip + xchain338_n90_β]
 mov qword ptr [rbp + 6912], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_pop$2F2_γ
 xchain338_n90_β:
 jmp xchain338_n85_α
 xchain338_n91_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3856] -> [zr+3824]
 mov rax, qword ptr [rbp + 3856]
 mov qword ptr [rbp + 3824], rax
 mov rax, qword ptr [rbp + 3864]
 mov qword ptr [rbp + 3832], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 3824]
 mov rsi, qword ptr [rip + .Lx464_2]
 jmp .Lx464_3
.Lx464_2:
 .quad .Lx464_2_s
.Lx464_2_s:
 .string "mexico"
.Lx464_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 3808], rax
 mov qword ptr [rbp + 3816], rdx
 cmp eax, 99
 je xchain338_n93_α
 jmp xchain338_n92_α
 xchain338_n91_β:
 jmp xchain338_n93_α
# IR_VAR_REF
 xchain338_n92_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 3744], rax
 mov qword ptr [rbp + 3752], rdx
 jmp xchain338_n94_α
 xchain338_n93_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+3664]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 3664], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 3672], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 3664]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 3648], rax
 mov qword ptr [rbp + 3656], rdx
 cmp eax, 99
 je proc_pop$2F2_ω
 jmp xchain338_n95_α
 xchain338_n93_β:
 jmp proc_pop$2F2_ω
# IR_LIT_INTEGER
 xchain338_n94_α:
 mov qword ptr [rbp + 3776], 6
 mov rax, qword ptr [rip + .Lx468_0]
 mov qword ptr [rbp + 3784], rax
 jmp xchain338_n96_α
.Lx468_0:
 .quad 581
# IR_VAR_REF
 xchain338_n95_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3584], rax
 mov qword ptr [rbp + 3592], rdx
 jmp xchain338_n97_α
 xchain338_n96_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3744] -> [zr+3712]
 mov rax, qword ptr [rbp + 3744]
 mov qword ptr [rbp + 3712], rax
 mov rax, qword ptr [rbp + 3752]
 mov qword ptr [rbp + 3720], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 3712]
 movabs rsi, 581
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 3696], rax
 mov qword ptr [rbp + 3704], rdx
 cmp eax, 99
 je xchain338_n93_α
 jmp xchain338_n98_α
 xchain338_n96_β:
 jmp xchain338_n93_α
# IR_LIT_STRING
 xchain338_n97_α:
 mov qword ptr [rbp + 3616], 1
 mov rax, qword ptr [rip + .Lx472_0]
 mov qword ptr [rbp + 3624], rax
 jmp xchain338_n99_α
.Lx472_0:
 .quad .Lx472_0_s
.Lx472_0_s:
 .string "uk"
# IR_SUSPEND yield+resume
 xchain338_n98_α:
 lea rax, [rip + xchain338_n98_β]
 mov qword ptr [rbp + 6912], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_pop$2F2_γ
 xchain338_n98_β:
 jmp xchain338_n93_α
 xchain338_n99_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3584] -> [zr+3552]
 mov rax, qword ptr [rbp + 3584]
 mov qword ptr [rbp + 3552], rax
 mov rax, qword ptr [rbp + 3592]
 mov qword ptr [rbp + 3560], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 3552]
 mov rsi, qword ptr [rip + .Lx475_2]
 jmp .Lx475_3
.Lx475_2:
 .quad .Lx475_2_s
.Lx475_2_s:
 .string "uk"
.Lx475_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 3536], rax
 mov qword ptr [rbp + 3544], rdx
 cmp eax, 99
 je xchain338_n101_α
 jmp xchain338_n100_α
 xchain338_n99_β:
 jmp xchain338_n101_α
# IR_VAR_REF
 xchain338_n100_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 3472], rax
 mov qword ptr [rbp + 3480], rdx
 jmp xchain338_n102_α
 xchain338_n101_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+3392]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 3392], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 3400], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 3392]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 3376], rax
 mov qword ptr [rbp + 3384], rdx
 cmp eax, 99
 je proc_pop$2F2_ω
 jmp xchain338_n103_α
 xchain338_n101_β:
 jmp proc_pop$2F2_ω
# IR_LIT_INTEGER
 xchain338_n102_α:
 mov qword ptr [rbp + 3504], 6
 mov rax, qword ptr [rip + .Lx479_0]
 mov qword ptr [rbp + 3512], rax
 jmp xchain338_n104_α
.Lx479_0:
 .quad 559
# IR_VAR_REF
 xchain338_n103_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3312], rax
 mov qword ptr [rbp + 3320], rdx
 jmp xchain338_n105_α
 xchain338_n104_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3472] -> [zr+3440]
 mov rax, qword ptr [rbp + 3472]
 mov qword ptr [rbp + 3440], rax
 mov rax, qword ptr [rbp + 3480]
 mov qword ptr [rbp + 3448], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 3440]
 movabs rsi, 559
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 3424], rax
 mov qword ptr [rbp + 3432], rdx
 cmp eax, 99
 je xchain338_n101_α
 jmp xchain338_n106_α
 xchain338_n104_β:
 jmp xchain338_n101_α
# IR_LIT_STRING
 xchain338_n105_α:
 mov qword ptr [rbp + 3344], 1
 mov rax, qword ptr [rip + .Lx483_0]
 mov qword ptr [rbp + 3352], rax
 jmp xchain338_n107_α
.Lx483_0:
 .quad .Lx483_0_s
.Lx483_0_s:
 .string "italy"
# IR_SUSPEND yield+resume
 xchain338_n106_α:
 lea rax, [rip + xchain338_n106_β]
 mov qword ptr [rbp + 6912], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_pop$2F2_γ
 xchain338_n106_β:
 jmp xchain338_n101_α
 xchain338_n107_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3312] -> [zr+3280]
 mov rax, qword ptr [rbp + 3312]
 mov qword ptr [rbp + 3280], rax
 mov rax, qword ptr [rbp + 3320]
 mov qword ptr [rbp + 3288], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 3280]
 mov rsi, qword ptr [rip + .Lx486_2]
 jmp .Lx486_3
.Lx486_2:
 .quad .Lx486_2_s
.Lx486_2_s:
 .string "italy"
.Lx486_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 3264], rax
 mov qword ptr [rbp + 3272], rdx
 cmp eax, 99
 je xchain338_n109_α
 jmp xchain338_n108_α
 xchain338_n107_β:
 jmp xchain338_n109_α
# IR_VAR_REF
 xchain338_n108_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 3200], rax
 mov qword ptr [rbp + 3208], rdx
 jmp xchain338_n110_α
 xchain338_n109_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+3120]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 3120], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 3128], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 3120]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 3104], rax
 mov qword ptr [rbp + 3112], rdx
 cmp eax, 99
 je proc_pop$2F2_ω
 jmp xchain338_n111_α
 xchain338_n109_β:
 jmp proc_pop$2F2_ω
# IR_LIT_INTEGER
 xchain338_n110_α:
 mov qword ptr [rbp + 3232], 6
 mov rax, qword ptr [rip + .Lx490_0]
 mov qword ptr [rbp + 3240], rax
 jmp xchain338_n112_α
.Lx490_0:
 .quad 554
# IR_VAR_REF
 xchain338_n111_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3040], rax
 mov qword ptr [rbp + 3048], rdx
 jmp xchain338_n113_α
 xchain338_n112_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3200] -> [zr+3168]
 mov rax, qword ptr [rbp + 3200]
 mov qword ptr [rbp + 3168], rax
 mov rax, qword ptr [rbp + 3208]
 mov qword ptr [rbp + 3176], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 3168]
 movabs rsi, 554
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 3152], rax
 mov qword ptr [rbp + 3160], rdx
 cmp eax, 99
 je xchain338_n109_α
 jmp xchain338_n114_α
 xchain338_n112_β:
 jmp xchain338_n109_α
# IR_LIT_STRING
 xchain338_n113_α:
 mov qword ptr [rbp + 3072], 1
 mov rax, qword ptr [rip + .Lx494_0]
 mov qword ptr [rbp + 3080], rax
 jmp xchain338_n115_α
.Lx494_0:
 .quad .Lx494_0_s
.Lx494_0_s:
 .string "france"
# IR_SUSPEND yield+resume
 xchain338_n114_α:
 lea rax, [rip + xchain338_n114_β]
 mov qword ptr [rbp + 6912], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_pop$2F2_γ
 xchain338_n114_β:
 jmp xchain338_n109_α
 xchain338_n115_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3040] -> [zr+3008]
 mov rax, qword ptr [rbp + 3040]
 mov qword ptr [rbp + 3008], rax
 mov rax, qword ptr [rbp + 3048]
 mov qword ptr [rbp + 3016], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 3008]
 mov rsi, qword ptr [rip + .Lx497_2]
 jmp .Lx497_3
.Lx497_2:
 .quad .Lx497_2_s
.Lx497_2_s:
 .string "france"
.Lx497_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 2992], rax
 mov qword ptr [rbp + 3000], rdx
 cmp eax, 99
 je xchain338_n117_α
 jmp xchain338_n116_α
 xchain338_n115_β:
 jmp xchain338_n117_α
# IR_VAR_REF
 xchain338_n116_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2928], rax
 mov qword ptr [rbp + 2936], rdx
 jmp xchain338_n118_α
 xchain338_n117_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+2848]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 2848], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 2856], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 2848]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 2832], rax
 mov qword ptr [rbp + 2840], rdx
 cmp eax, 99
 je proc_pop$2F2_ω
 jmp xchain338_n119_α
 xchain338_n117_β:
 jmp proc_pop$2F2_ω
# IR_LIT_INTEGER
 xchain338_n118_α:
 mov qword ptr [rbp + 2960], 6
 mov rax, qword ptr [rip + .Lx501_0]
 mov qword ptr [rbp + 2968], rax
 jmp xchain338_n120_α
.Lx501_0:
 .quad 525
# IR_VAR_REF
 xchain338_n119_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2768], rax
 mov qword ptr [rbp + 2776], rdx
 jmp xchain338_n121_α
 xchain338_n120_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2928] -> [zr+2896]
 mov rax, qword ptr [rbp + 2928]
 mov qword ptr [rbp + 2896], rax
 mov rax, qword ptr [rbp + 2936]
 mov qword ptr [rbp + 2904], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 2896]
 movabs rsi, 525
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 2880], rax
 mov qword ptr [rbp + 2888], rdx
 cmp eax, 99
 je xchain338_n117_α
 jmp xchain338_n122_α
 xchain338_n120_β:
 jmp xchain338_n117_α
# IR_LIT_STRING
 xchain338_n121_α:
 mov qword ptr [rbp + 2800], 1
 mov rax, qword ptr [rip + .Lx505_0]
 mov qword ptr [rbp + 2808], rax
 jmp xchain338_n123_α
.Lx505_0:
 .quad .Lx505_0_s
.Lx505_0_s:
 .string "philippines"
# IR_SUSPEND yield+resume
 xchain338_n122_α:
 lea rax, [rip + xchain338_n122_β]
 mov qword ptr [rbp + 6912], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_pop$2F2_γ
 xchain338_n122_β:
 jmp xchain338_n117_α
 xchain338_n123_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2768] -> [zr+2736]
 mov rax, qword ptr [rbp + 2768]
 mov qword ptr [rbp + 2736], rax
 mov rax, qword ptr [rbp + 2776]
 mov qword ptr [rbp + 2744], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 2736]
 mov rsi, qword ptr [rip + .Lx508_2]
 jmp .Lx508_3
.Lx508_2:
 .quad .Lx508_2_s
.Lx508_2_s:
 .string "philippines"
.Lx508_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 2720], rax
 mov qword ptr [rbp + 2728], rdx
 cmp eax, 99
 je xchain338_n125_α
 jmp xchain338_n124_α
 xchain338_n123_β:
 jmp xchain338_n125_α
# IR_VAR_REF
 xchain338_n124_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2656], rax
 mov qword ptr [rbp + 2664], rdx
 jmp xchain338_n126_α
 xchain338_n125_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+2576]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 2576], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 2584], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 2576]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 2560], rax
 mov qword ptr [rbp + 2568], rdx
 cmp eax, 99
 je proc_pop$2F2_ω
 jmp xchain338_n127_α
 xchain338_n125_β:
 jmp proc_pop$2F2_ω
# IR_LIT_INTEGER
 xchain338_n126_α:
 mov qword ptr [rbp + 2688], 6
 mov rax, qword ptr [rip + .Lx512_0]
 mov qword ptr [rbp + 2696], rax
 jmp xchain338_n128_α
.Lx512_0:
 .quad 415
# IR_VAR_REF
 xchain338_n127_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2496], rax
 mov qword ptr [rbp + 2504], rdx
 jmp xchain338_n129_α
 xchain338_n128_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2656] -> [zr+2624]
 mov rax, qword ptr [rbp + 2656]
 mov qword ptr [rbp + 2624], rax
 mov rax, qword ptr [rbp + 2664]
 mov qword ptr [rbp + 2632], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 2624]
 movabs rsi, 415
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 2608], rax
 mov qword ptr [rbp + 2616], rdx
 cmp eax, 99
 je xchain338_n125_α
 jmp xchain338_n130_α
 xchain338_n128_β:
 jmp xchain338_n125_α
# IR_LIT_STRING
 xchain338_n129_α:
 mov qword ptr [rbp + 2528], 1
 mov rax, qword ptr [rip + .Lx516_0]
 mov qword ptr [rbp + 2536], rax
 jmp xchain338_n131_α
.Lx516_0:
 .quad .Lx516_0_s
.Lx516_0_s:
 .string "thailand"
# IR_SUSPEND yield+resume
 xchain338_n130_α:
 lea rax, [rip + xchain338_n130_β]
 mov qword ptr [rbp + 6912], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_pop$2F2_γ
 xchain338_n130_β:
 jmp xchain338_n125_α
 xchain338_n131_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2496] -> [zr+2464]
 mov rax, qword ptr [rbp + 2496]
 mov qword ptr [rbp + 2464], rax
 mov rax, qword ptr [rbp + 2504]
 mov qword ptr [rbp + 2472], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 2464]
 mov rsi, qword ptr [rip + .Lx519_2]
 jmp .Lx519_3
.Lx519_2:
 .quad .Lx519_2_s
.Lx519_2_s:
 .string "thailand"
.Lx519_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 2448], rax
 mov qword ptr [rbp + 2456], rdx
 cmp eax, 99
 je xchain338_n133_α
 jmp xchain338_n132_α
 xchain338_n131_β:
 jmp xchain338_n133_α
# IR_VAR_REF
 xchain338_n132_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2384], rax
 mov qword ptr [rbp + 2392], rdx
 jmp xchain338_n134_α
 xchain338_n133_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+2304]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 2304], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 2312], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 2304]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 2288], rax
 mov qword ptr [rbp + 2296], rdx
 cmp eax, 99
 je proc_pop$2F2_ω
 jmp xchain338_n135_α
 xchain338_n133_β:
 jmp proc_pop$2F2_ω
# IR_LIT_INTEGER
 xchain338_n134_α:
 mov qword ptr [rbp + 2416], 6
 mov rax, qword ptr [rip + .Lx523_0]
 mov qword ptr [rbp + 2424], rax
 jmp xchain338_n136_α
.Lx523_0:
 .quad 410
# IR_VAR_REF
 xchain338_n135_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2224], rax
 mov qword ptr [rbp + 2232], rdx
 jmp xchain338_n137_α
 xchain338_n136_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2384] -> [zr+2352]
 mov rax, qword ptr [rbp + 2384]
 mov qword ptr [rbp + 2352], rax
 mov rax, qword ptr [rbp + 2392]
 mov qword ptr [rbp + 2360], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 2352]
 movabs rsi, 410
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 2336], rax
 mov qword ptr [rbp + 2344], rdx
 cmp eax, 99
 je xchain338_n133_α
 jmp xchain338_n138_α
 xchain338_n136_β:
 jmp xchain338_n133_α
# IR_LIT_STRING
 xchain338_n137_α:
 mov qword ptr [rbp + 2256], 1
 mov rax, qword ptr [rip + .Lx527_0]
 mov qword ptr [rbp + 2264], rax
 jmp xchain338_n139_α
.Lx527_0:
 .quad .Lx527_0_s
.Lx527_0_s:
 .string "turkey"
# IR_SUSPEND yield+resume
 xchain338_n138_α:
 lea rax, [rip + xchain338_n138_β]
 mov qword ptr [rbp + 6912], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_pop$2F2_γ
 xchain338_n138_β:
 jmp xchain338_n133_α
 xchain338_n139_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2224] -> [zr+2192]
 mov rax, qword ptr [rbp + 2224]
 mov qword ptr [rbp + 2192], rax
 mov rax, qword ptr [rbp + 2232]
 mov qword ptr [rbp + 2200], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 2192]
 mov rsi, qword ptr [rip + .Lx530_2]
 jmp .Lx530_3
.Lx530_2:
 .quad .Lx530_2_s
.Lx530_2_s:
 .string "turkey"
.Lx530_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 2176], rax
 mov qword ptr [rbp + 2184], rdx
 cmp eax, 99
 je xchain338_n141_α
 jmp xchain338_n140_α
 xchain338_n139_β:
 jmp xchain338_n141_α
# IR_VAR_REF
 xchain338_n140_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2112], rax
 mov qword ptr [rbp + 2120], rdx
 jmp xchain338_n142_α
 xchain338_n141_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+2032]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 2032], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 2040], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 2032]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 2016], rax
 mov qword ptr [rbp + 2024], rdx
 cmp eax, 99
 je proc_pop$2F2_ω
 jmp xchain338_n143_α
 xchain338_n141_β:
 jmp proc_pop$2F2_ω
# IR_LIT_INTEGER
 xchain338_n142_α:
 mov qword ptr [rbp + 2144], 6
 mov rax, qword ptr [rip + .Lx534_0]
 mov qword ptr [rbp + 2152], rax
 jmp xchain338_n144_α
.Lx534_0:
 .quad 383
# IR_VAR_REF
 xchain338_n143_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1952], rax
 mov qword ptr [rbp + 1960], rdx
 jmp xchain338_n145_α
 xchain338_n144_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2112] -> [zr+2080]
 mov rax, qword ptr [rbp + 2112]
 mov qword ptr [rbp + 2080], rax
 mov rax, qword ptr [rbp + 2120]
 mov qword ptr [rbp + 2088], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 2080]
 movabs rsi, 383
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 2064], rax
 mov qword ptr [rbp + 2072], rdx
 cmp eax, 99
 je xchain338_n141_α
 jmp xchain338_n146_α
 xchain338_n144_β:
 jmp xchain338_n141_α
# IR_LIT_STRING
 xchain338_n145_α:
 mov qword ptr [rbp + 1984], 1
 mov rax, qword ptr [rip + .Lx538_0]
 mov qword ptr [rbp + 1992], rax
 jmp xchain338_n147_α
.Lx538_0:
 .quad .Lx538_0_s
.Lx538_0_s:
 .string "egypt"
# IR_SUSPEND yield+resume
 xchain338_n146_α:
 lea rax, [rip + xchain338_n146_β]
 mov qword ptr [rbp + 6912], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_pop$2F2_γ
 xchain338_n146_β:
 jmp xchain338_n141_α
 xchain338_n147_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1952] -> [zr+1920]
 mov rax, qword ptr [rbp + 1952]
 mov qword ptr [rbp + 1920], rax
 mov rax, qword ptr [rbp + 1960]
 mov qword ptr [rbp + 1928], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1920]
 mov rsi, qword ptr [rip + .Lx541_2]
 jmp .Lx541_3
.Lx541_2:
 .quad .Lx541_2_s
.Lx541_2_s:
 .string "egypt"
.Lx541_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1904], rax
 mov qword ptr [rbp + 1912], rdx
 cmp eax, 99
 je xchain338_n149_α
 jmp xchain338_n148_α
 xchain338_n147_β:
 jmp xchain338_n149_α
# IR_VAR_REF
 xchain338_n148_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1840], rax
 mov qword ptr [rbp + 1848], rdx
 jmp xchain338_n150_α
 xchain338_n149_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1760]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 1760], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 1768], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1760]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1744], rax
 mov qword ptr [rbp + 1752], rdx
 cmp eax, 99
 je proc_pop$2F2_ω
 jmp xchain338_n151_α
 xchain338_n149_β:
 jmp proc_pop$2F2_ω
# IR_LIT_INTEGER
 xchain338_n150_α:
 mov qword ptr [rbp + 1872], 6
 mov rax, qword ptr [rip + .Lx545_0]
 mov qword ptr [rbp + 1880], rax
 jmp xchain338_n152_α
.Lx545_0:
 .quad 364
# IR_VAR_REF
 xchain338_n151_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1680], rax
 mov qword ptr [rbp + 1688], rdx
 jmp xchain338_n153_α
 xchain338_n152_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1840] -> [zr+1808]
 mov rax, qword ptr [rbp + 1840]
 mov qword ptr [rbp + 1808], rax
 mov rax, qword ptr [rbp + 1848]
 mov qword ptr [rbp + 1816], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 1808]
 movabs rsi, 364
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 1792], rax
 mov qword ptr [rbp + 1800], rdx
 cmp eax, 99
 je xchain338_n149_α
 jmp xchain338_n154_α
 xchain338_n152_β:
 jmp xchain338_n149_α
# IR_LIT_STRING
 xchain338_n153_α:
 mov qword ptr [rbp + 1712], 1
 mov rax, qword ptr [rip + .Lx549_0]
 mov qword ptr [rbp + 1720], rax
 jmp xchain338_n155_α
.Lx549_0:
 .quad .Lx549_0_s
.Lx549_0_s:
 .string "spain"
# IR_SUSPEND yield+resume
 xchain338_n154_α:
 lea rax, [rip + xchain338_n154_β]
 mov qword ptr [rbp + 6912], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_pop$2F2_γ
 xchain338_n154_β:
 jmp xchain338_n149_α
 xchain338_n155_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1680] -> [zr+1648]
 mov rax, qword ptr [rbp + 1680]
 mov qword ptr [rbp + 1648], rax
 mov rax, qword ptr [rbp + 1688]
 mov qword ptr [rbp + 1656], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1648]
 mov rsi, qword ptr [rip + .Lx552_2]
 jmp .Lx552_3
.Lx552_2:
 .quad .Lx552_2_s
.Lx552_2_s:
 .string "spain"
.Lx552_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1632], rax
 mov qword ptr [rbp + 1640], rdx
 cmp eax, 99
 je xchain338_n157_α
 jmp xchain338_n156_α
 xchain338_n155_β:
 jmp xchain338_n157_α
# IR_VAR_REF
 xchain338_n156_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1568], rax
 mov qword ptr [rbp + 1576], rdx
 jmp xchain338_n158_α
 xchain338_n157_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1488]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 1488], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 1496], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1488]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 cmp eax, 99
 je proc_pop$2F2_ω
 jmp xchain338_n159_α
 xchain338_n157_β:
 jmp proc_pop$2F2_ω
# IR_LIT_INTEGER
 xchain338_n158_α:
 mov qword ptr [rbp + 1600], 6
 mov rax, qword ptr [rip + .Lx556_0]
 mov qword ptr [rbp + 1608], rax
 jmp xchain338_n160_α
.Lx556_0:
 .quad 352
# IR_VAR_REF
 xchain338_n159_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 jmp xchain338_n161_α
 xchain338_n160_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1568] -> [zr+1536]
 mov rax, qword ptr [rbp + 1568]
 mov qword ptr [rbp + 1536], rax
 mov rax, qword ptr [rbp + 1576]
 mov qword ptr [rbp + 1544], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 1536]
 movabs rsi, 352
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 cmp eax, 99
 je xchain338_n157_α
 jmp xchain338_n162_α
 xchain338_n160_β:
 jmp xchain338_n157_α
# IR_LIT_STRING
 xchain338_n161_α:
 mov qword ptr [rbp + 1440], 1
 mov rax, qword ptr [rip + .Lx560_0]
 mov qword ptr [rbp + 1448], rax
 jmp xchain338_n163_α
.Lx560_0:
 .quad .Lx560_0_s
.Lx560_0_s:
 .string "poland"
# IR_SUSPEND yield+resume
 xchain338_n162_α:
 lea rax, [rip + xchain338_n162_β]
 mov qword ptr [rbp + 6912], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_pop$2F2_γ
 xchain338_n162_β:
 jmp xchain338_n157_α
 xchain338_n163_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1408] -> [zr+1376]
 mov rax, qword ptr [rbp + 1408]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 1416]
 mov qword ptr [rbp + 1384], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1376]
 mov rsi, qword ptr [rip + .Lx563_2]
 jmp .Lx563_3
.Lx563_2:
 .quad .Lx563_2_s
.Lx563_2_s:
 .string "poland"
.Lx563_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 cmp eax, 99
 je xchain338_n165_α
 jmp xchain338_n164_α
 xchain338_n163_β:
 jmp xchain338_n165_α
# IR_VAR_REF
 xchain338_n164_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 jmp xchain338_n166_α
 xchain338_n165_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1216]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 1216], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 1224], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1216]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 cmp eax, 99
 je proc_pop$2F2_ω
 jmp xchain338_n167_α
 xchain338_n165_β:
 jmp proc_pop$2F2_ω
# IR_LIT_INTEGER
 xchain338_n166_α:
 mov qword ptr [rbp + 1328], 6
 mov rax, qword ptr [rip + .Lx567_0]
 mov qword ptr [rbp + 1336], rax
 jmp xchain338_n168_α
.Lx567_0:
 .quad 337
# IR_VAR_REF
 xchain338_n167_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain338_n169_α
 xchain338_n168_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1296] -> [zr+1264]
 mov rax, qword ptr [rbp + 1296]
 mov qword ptr [rbp + 1264], rax
 mov rax, qword ptr [rbp + 1304]
 mov qword ptr [rbp + 1272], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 1264]
 movabs rsi, 337
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 cmp eax, 99
 je xchain338_n165_α
 jmp xchain338_n170_α
 xchain338_n168_β:
 jmp xchain338_n165_α
# IR_LIT_STRING
 xchain338_n169_α:
 mov qword ptr [rbp + 1168], 1
 mov rax, qword ptr [rip + .Lx571_0]
 mov qword ptr [rbp + 1176], rax
 jmp xchain338_n171_α
.Lx571_0:
 .quad .Lx571_0_s
.Lx571_0_s:
 .string "s_korea"
# IR_SUSPEND yield+resume
 xchain338_n170_α:
 lea rax, [rip + xchain338_n170_β]
 mov qword ptr [rbp + 6912], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_pop$2F2_γ
 xchain338_n170_β:
 jmp xchain338_n165_α
 xchain338_n171_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1136] -> [zr+1104]
 mov rax, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 1112], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1104]
 mov rsi, qword ptr [rip + .Lx574_2]
 jmp .Lx574_3
.Lx574_2:
 .quad .Lx574_2_s
.Lx574_2_s:
 .string "s_korea"
.Lx574_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 cmp eax, 99
 je xchain338_n173_α
 jmp xchain338_n172_α
 xchain338_n171_β:
 jmp xchain338_n173_α
# IR_VAR_REF
 xchain338_n172_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 jmp xchain338_n174_α
 xchain338_n173_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+944]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 952], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 944]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 cmp eax, 99
 je proc_pop$2F2_ω
 jmp xchain338_n175_α
 xchain338_n173_β:
 jmp proc_pop$2F2_ω
# IR_LIT_INTEGER
 xchain338_n174_α:
 mov qword ptr [rbp + 1056], 6
 mov rax, qword ptr [rip + .Lx578_0]
 mov qword ptr [rbp + 1064], rax
 jmp xchain338_n176_α
.Lx578_0:
 .quad 335
# IR_VAR_REF
 xchain338_n175_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain338_n177_α
 xchain338_n176_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1024] -> [zr+992]
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 1000], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 992]
 movabs rsi, 335
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 cmp eax, 99
 je xchain338_n173_α
 jmp xchain338_n178_α
 xchain338_n176_β:
 jmp xchain338_n173_α
# IR_LIT_STRING
 xchain338_n177_α:
 mov qword ptr [rbp + 896], 1
 mov rax, qword ptr [rip + .Lx582_0]
 mov qword ptr [rbp + 904], rax
 jmp xchain338_n179_α
.Lx582_0:
 .quad .Lx582_0_s
.Lx582_0_s:
 .string "iran"
# IR_SUSPEND yield+resume
 xchain338_n178_α:
 lea rax, [rip + xchain338_n178_β]
 mov qword ptr [rbp + 6912], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_pop$2F2_γ
 xchain338_n178_β:
 jmp xchain338_n173_α
 xchain338_n179_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+864] -> [zr+832]
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 840], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 832]
 mov rsi, qword ptr [rip + .Lx585_2]
 jmp .Lx585_3
.Lx585_2:
 .quad .Lx585_2_s
.Lx585_2_s:
 .string "iran"
.Lx585_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 cmp eax, 99
 je xchain338_n181_α
 jmp xchain338_n180_α
 xchain338_n179_β:
 jmp xchain338_n181_α
# IR_VAR_REF
 xchain338_n180_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain338_n182_α
 xchain338_n181_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+672]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 680], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 672]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 cmp eax, 99
 je proc_pop$2F2_ω
 jmp xchain338_n183_α
 xchain338_n181_β:
 jmp proc_pop$2F2_ω
# IR_LIT_INTEGER
 xchain338_n182_α:
 mov qword ptr [rbp + 784], 6
 mov rax, qword ptr [rip + .Lx589_0]
 mov qword ptr [rbp + 792], rax
 jmp xchain338_n184_α
.Lx589_0:
 .quad 320
# IR_VAR_REF
 xchain338_n183_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain338_n185_α
 xchain338_n184_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+752] -> [zr+720]
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 728], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 720]
 movabs rsi, 320
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 cmp eax, 99
 je xchain338_n181_α
 jmp xchain338_n186_α
 xchain338_n184_β:
 jmp xchain338_n181_α
# IR_LIT_STRING
 xchain338_n185_α:
 mov qword ptr [rbp + 624], 1
 mov rax, qword ptr [rip + .Lx593_0]
 mov qword ptr [rbp + 632], rax
 jmp xchain338_n187_α
.Lx593_0:
 .quad .Lx593_0_s
.Lx593_0_s:
 .string "ethiopia"
# IR_SUSPEND yield+resume
 xchain338_n186_α:
 lea rax, [rip + xchain338_n186_β]
 mov qword ptr [rbp + 6912], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_pop$2F2_γ
 xchain338_n186_β:
 jmp xchain338_n181_α
 xchain338_n187_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+592] -> [zr+560]
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 568], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 560]
 mov rsi, qword ptr [rip + .Lx596_2]
 jmp .Lx596_3
.Lx596_2:
 .quad .Lx596_2_s
.Lx596_2_s:
 .string "ethiopia"
.Lx596_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 cmp eax, 99
 je xchain338_n189_α
 jmp xchain338_n188_α
 xchain338_n187_β:
 jmp xchain338_n189_α
# IR_VAR_REF
 xchain338_n188_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain338_n190_α
 xchain338_n189_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+400]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 408], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 400]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 cmp eax, 99
 je proc_pop$2F2_ω
 jmp xchain338_n191_α
 xchain338_n189_β:
 jmp proc_pop$2F2_ω
# IR_LIT_INTEGER
 xchain338_n190_α:
 mov qword ptr [rbp + 512], 6
 mov rax, qword ptr [rip + .Lx600_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain338_n192_α
.Lx600_0:
 .quad 272
# IR_VAR_REF
 xchain338_n191_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain338_n193_α
 xchain338_n192_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+480] -> [zr+448]
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 456], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 448]
 movabs rsi, 272
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je xchain338_n189_α
 jmp xchain338_n194_α
 xchain338_n192_β:
 jmp xchain338_n189_α
# IR_LIT_STRING
 xchain338_n193_α:
 mov qword ptr [rbp + 352], 1
 mov rax, qword ptr [rip + .Lx604_0]
 mov qword ptr [rbp + 360], rax
 jmp xchain338_n195_α
.Lx604_0:
 .quad .Lx604_0_s
.Lx604_0_s:
 .string "argentina"
# IR_SUSPEND yield+resume
 xchain338_n194_α:
 lea rax, [rip + xchain338_n194_β]
 mov qword ptr [rbp + 6912], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_pop$2F2_γ
 xchain338_n194_β:
 jmp xchain338_n189_α
 xchain338_n195_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+288]
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 296], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 288]
 mov rsi, qword ptr [rip + .Lx607_2]
 jmp .Lx607_3
.Lx607_2:
 .quad .Lx607_2_s
.Lx607_2_s:
 .string "argentina"
.Lx607_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je xchain338_n197_α
 jmp xchain338_n196_α
 xchain338_n195_β:
 jmp xchain338_n197_α
# IR_VAR_REF
 xchain338_n196_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain338_n198_α
 xchain338_n197_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+128]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 136], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_unwind (no by-name dispatch)
 lea rdi, [rbp + 128]
 mov esi, 1
 call rt_pl_dop_trail_unwind@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_pop$2F2_ω
 jmp proc_pop$2F2_ω
 xchain338_n197_β:
 jmp proc_pop$2F2_ω
# IR_LIT_INTEGER
 xchain338_n198_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx611_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain338_n199_α
.Lx611_0:
 .quad 251
 xchain338_n199_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+176]
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 184], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 176]
 movabs rsi, 251
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain338_n197_α
 jmp xchain338_n200_α
 xchain338_n199_β:
 jmp xchain338_n197_α
# IR_SUSPEND yield+resume
 xchain338_n200_α:
 lea rax, [rip + xchain338_n200_β]
 mov qword ptr [rbp + 6912], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_pop$2F2_γ
 xchain338_n200_β:
 jmp xchain338_n197_α
proc_pop$2F2_res:
add rsp, 8
pop rbp
proc_pop$2F2_β:
jmp qword ptr [rbp + 6912]
proc_pop$2F2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_pop$2F2_res]
push rax
mov rax, [rbp + 6952]
mov rbp, [rbp + 6968]
jmp rax
proc_pop$2F2_ω:
mov rax, [rbp + 6960]
lea rsp, [rbp + 6976]
mov rbp, [rbp + 6968]
jmp rax
  .globl proc_density$2F2_α
proc_density$2F2_α:
#=======================================================================================================================
    .global proc_density$2F2_α
    .global proc_density$2F2_β
    .global proc_density$2F2_γ
    .global proc_density$2F2_ω
  sub rsp, 1088
  mov [rsp + 1064], rcx
  mov [rsp + 1072], rdx
  mov [rsp + 1080], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 984], rsp
  mov rdi, rsp
  mov esi, 960
  mov edx, 1056
  call rt_jmp_frame_lexprep2@PLT
proc_density$2F2_α_body:
lea rax, [rip + xchain615_n21_β]
mov qword ptr [rbp + 960], rax
 xchain615_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_density$2F2_ω
 jmp xchain615_n1_α
 xchain615_n0_β:
 jmp proc_density$2F2_ω
# IR_VAR_REF
 xchain615_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 jmp xchain615_n2_α
# IR_VAR_REF
 xchain615_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1040]
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 jmp xchain615_n3_α
 xchain615_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+896] -> [zr+864]
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 872], rax
# marshal arg1 = producer-box slot [zr+928] -> [zr+880]
 mov rax, qword ptr [rbp + 928]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 936]
 mov qword ptr [rbp + 888], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 864]
 lea r8, [rbp + 864]
.Lx621_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx621_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx621_41
 cmp esi, 1
 jne .Lx621_55
 mov r8, rax
 jmp .Lx621_40
.Lx621_55:
 cmp esi, 2
 jne .Lx621_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx621_41
 mov r8, rax
 jmp .Lx621_40
.Lx621_56:
 cmp eax, 13
 jne .Lx621_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx621_41
 cmp rax, r8
 je .Lx621_41
 mov r8, rax
 jmp .Lx621_40
.Lx621_41:
 lea r9, [rbp + 880]
.Lx621_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx621_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx621_43
 cmp esi, 1
 jne .Lx621_57
 mov r9, rax
 jmp .Lx621_42
.Lx621_57:
 cmp esi, 2
 jne .Lx621_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx621_43
 mov r9, rax
 jmp .Lx621_42
.Lx621_58:
 cmp eax, 13
 jne .Lx621_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx621_43
 cmp rax, r9
 je .Lx621_43
 mov r9, rax
 jmp .Lx621_42
.Lx621_43:
 cmp r8, r9
 je .Lx621_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx621_44
 cmp eax, 99
 je .Lx621_44
 cmp eax, 13
 jne .Lx621_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx621_44
 jmp .Lx621_45
.Lx621_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx621_53
 cmp eax, 99
 je .Lx621_53
 cmp eax, 13
 jne .Lx621_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx621_53
 jmp .Lx621_46
.Lx621_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx621_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx621_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx621_51
.Lx621_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx621_47
 cmp eax, 99
 je .Lx621_47
 cmp eax, 13
 jne .Lx621_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx621_47
 jmp .Lx621_48
.Lx621_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx621_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx621_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx621_51
.Lx621_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx621_49
 cmp edx, 14
 je .Lx621_53
 jmp .Lx621_52
.Lx621_49:
 cmp edx, 14
 je .Lx621_52
 cmp ecx, 7
 je .Lx621_53
 cmp edx, 7
 je .Lx621_53
 cmp ecx, 6
 jne .Lx621_50
 cmp edx, 6
 jne .Lx621_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx621_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx621_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx621_51
 jmp .Lx621_52
.Lx621_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx621_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx621_53
.Lx621_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx621_54
.Lx621_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx621_54
.Lx621_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx621_54:
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 cmp eax, 99
 je xchain615_n5_α
 jmp xchain615_n4_α
 xchain615_n3_β:
 jmp xchain615_n5_α
# IR_VAR_REF
 xchain615_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 jmp xchain615_n6_α
 xchain615_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+128]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 136], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_unwind (no by-name dispatch)
 lea rdi, [rbp + 128]
 mov esi, 1
 call rt_pl_dop_trail_unwind@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_density$2F2_ω
 jmp proc_density$2F2_ω
 xchain615_n5_β:
 jmp proc_density$2F2_ω
# IR_VAR_REF
 xchain615_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 992]
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain615_n7_α
 xchain615_n7_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+784] -> [zr+752]
 mov rax, qword ptr [rbp + 784]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 792]
 mov qword ptr [rbp + 760], rax
# marshal arg1 = producer-box slot [zr+816] -> [zr+768]
 mov rax, qword ptr [rbp + 816]
 mov qword ptr [rbp + 768], rax
 mov rax, qword ptr [rbp + 824]
 mov qword ptr [rbp + 776], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 752]
 lea r8, [rbp + 752]
.Lx627_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx627_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx627_41
 cmp esi, 1
 jne .Lx627_55
 mov r8, rax
 jmp .Lx627_40
.Lx627_55:
 cmp esi, 2
 jne .Lx627_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx627_41
 mov r8, rax
 jmp .Lx627_40
.Lx627_56:
 cmp eax, 13
 jne .Lx627_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx627_41
 cmp rax, r8
 je .Lx627_41
 mov r8, rax
 jmp .Lx627_40
.Lx627_41:
 lea r9, [rbp + 768]
.Lx627_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx627_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx627_43
 cmp esi, 1
 jne .Lx627_57
 mov r9, rax
 jmp .Lx627_42
.Lx627_57:
 cmp esi, 2
 jne .Lx627_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx627_43
 mov r9, rax
 jmp .Lx627_42
.Lx627_58:
 cmp eax, 13
 jne .Lx627_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx627_43
 cmp rax, r9
 je .Lx627_43
 mov r9, rax
 jmp .Lx627_42
.Lx627_43:
 cmp r8, r9
 je .Lx627_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx627_44
 cmp eax, 99
 je .Lx627_44
 cmp eax, 13
 jne .Lx627_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx627_44
 jmp .Lx627_45
.Lx627_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx627_53
 cmp eax, 99
 je .Lx627_53
 cmp eax, 13
 jne .Lx627_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx627_53
 jmp .Lx627_46
.Lx627_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx627_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx627_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx627_51
.Lx627_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx627_47
 cmp eax, 99
 je .Lx627_47
 cmp eax, 13
 jne .Lx627_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx627_47
 jmp .Lx627_48
.Lx627_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx627_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx627_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx627_51
.Lx627_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx627_49
 cmp edx, 14
 je .Lx627_53
 jmp .Lx627_52
.Lx627_49:
 cmp edx, 14
 je .Lx627_52
 cmp ecx, 7
 je .Lx627_53
 cmp edx, 7
 je .Lx627_53
 cmp ecx, 6
 jne .Lx627_50
 cmp edx, 6
 jne .Lx627_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx627_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx627_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx627_51
 jmp .Lx627_52
.Lx627_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx627_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx627_53
.Lx627_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx627_54
.Lx627_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx627_54
.Lx627_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx627_54:
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain615_n5_α
 jmp xchain615_n8_α
 xchain615_n7_β:
 jmp xchain615_n5_α
# IR_VAR_REF
 xchain615_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1040]
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain615_n9_α
# IR_VAR_REF
 xchain615_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1008]
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain615_n10_α
 xchain615_n10_α:
 mov qword ptr [rbp + 640], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx633_20
 mov rax, qword ptr [rbp + 672]
 mov rdx, qword ptr [rbp + 680]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx633_21
.Lx633_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 672]
 mov rdx, qword ptr [rbp + 680]
 call rt_arg_stage@PLT
.Lx633_21:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx633_22
 mov rax, qword ptr [rbp + 704]
 mov rdx, qword ptr [rbp + 712]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 16], rax
 mov qword ptr [r10 + 24], rdx
 jmp .Lx633_23
.Lx633_22:
 mov edi, 1
 mov rsi, qword ptr [rbp + 704]
 mov rdx, qword ptr [rbp + 712]
 call rt_arg_stage@PLT
.Lx633_23:
 mov rdi, qword ptr [rip + .Lx633_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx633_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx633_3]
 lea rdx, [rip + .Lx633_4]
 jmp rax
.Lx633_3:
 mov qword ptr [rbp + 648], rsp
 mov rax, qword ptr [rbp + 640]
 test rax, rax
 jne .Lx633_5
 mov qword ptr [rbp + 640], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx633_2
.Lx633_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx633_2
.Lx633_4:
 mov rax, qword ptr [rbp + 640]
 test rax, rax
 jne .Lx633_6
 mov qword ptr [rbp + 640], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx633_2
.Lx633_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx633_2
.Lx633_1:
 call rt_faildescr@PLT
.Lx633_2:
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 cmp eax, 99
 je xchain615_n5_α
 jmp xchain615_n11_α
 xchain615_n10_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 648]
 jmp qword ptr [rsp]
.Lx633_0:
 .quad .Lx633_0_s
.Lx633_0_s:
 .string "pop/2"
# IR_VAR_REF
 xchain615_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1040]
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain615_n12_α
# IR_VAR_REF
 xchain615_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1024]
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain615_n13_α
 xchain615_n13_α:
 mov qword ptr [rbp + 496], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx639_20
 mov rax, qword ptr [rbp + 528]
 mov rdx, qword ptr [rbp + 536]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx639_21
.Lx639_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 528]
 mov rdx, qword ptr [rbp + 536]
 call rt_arg_stage@PLT
.Lx639_21:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx639_22
 mov rax, qword ptr [rbp + 560]
 mov rdx, qword ptr [rbp + 568]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 16], rax
 mov qword ptr [r10 + 24], rdx
 jmp .Lx639_23
.Lx639_22:
 mov edi, 1
 mov rsi, qword ptr [rbp + 560]
 mov rdx, qword ptr [rbp + 568]
 call rt_arg_stage@PLT
.Lx639_23:
 mov rdi, qword ptr [rip + .Lx639_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx639_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx639_3]
 lea rdx, [rip + .Lx639_4]
 jmp rax
.Lx639_3:
 mov qword ptr [rbp + 504], rsp
 mov rax, qword ptr [rbp + 496]
 test rax, rax
 jne .Lx639_5
 mov qword ptr [rbp + 496], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx639_2
.Lx639_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx639_2
.Lx639_4:
 mov rax, qword ptr [rbp + 496]
 test rax, rax
 jne .Lx639_6
 mov qword ptr [rbp + 496], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx639_2
.Lx639_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx639_2
.Lx639_1:
 call rt_faildescr@PLT
.Lx639_2:
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 cmp eax, 99
 je xchain615_n10_β
 jmp xchain615_n14_α
 xchain615_n13_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 504]
 jmp qword ptr [rsp]
.Lx639_0:
 .quad .Lx639_0_s
.Lx639_0_s:
 .string "area/2"
# IR_VAR_REF
 xchain615_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 992]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain615_n15_α
# IR_VAR
 xchain615_n15_α:
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 360], rax
 jmp xchain615_n16_α
# IR_LIT_INTEGER
 xchain615_n16_α:
 mov qword ptr [rbp + 384], 6
 mov rax, qword ptr [rip + .Lx644_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain615_n17_α
.Lx644_0:
 .quad 100
 xchain615_n17_α:
# BOX IR_CALL $ax_mul(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+352] -> [zr+304]
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 312], rax
# marshal arg1 = producer-box slot [zr+384] -> [zr+320]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 328], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_mul (no by-name dispatch)
 lea rdi, [rbp + 304]
 mov esi, 2
 call rt_pl_dop_ax_mul@PLT
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain615_n5_α
 jmp xchain615_n18_α
 xchain615_n17_β:
 jmp xchain615_n5_α
# IR_VAR
 xchain615_n18_α:
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 424], rax
 jmp xchain615_n19_α
 xchain615_n19_α:
# BOX IR_CALL $ax_idiv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+288] -> [zr+240]
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 240], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 248], rax
# marshal arg1 = producer-box slot [zr+416] -> [zr+256]
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 264], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_idiv (no by-name dispatch)
 lea rdi, [rbp + 240]
 mov esi, 2
 call rt_pl_dop_ax_idiv@PLT
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 cmp eax, 99
 je xchain615_n5_α
 jmp xchain615_n20_α
 xchain615_n19_β:
 jmp xchain615_n5_α
 xchain615_n20_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+192] -> [zr+160]
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 168], rax
# marshal arg1 = producer-box slot [zr+224] -> [zr+176]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 184], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 160]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain615_n13_β
 jmp xchain615_n21_α
 xchain615_n20_β:
 jmp xchain615_n13_β
# IR_SUSPEND yield+resume
 xchain615_n21_α:
 lea rax, [rip + xchain615_n21_β]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_density$2F2_γ
 xchain615_n21_β:
 jmp xchain615_n13_β
proc_density$2F2_res:
add rsp, 8
pop rbp
proc_density$2F2_β:
jmp qword ptr [rbp + 960]
proc_density$2F2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_density$2F2_res]
push rax
mov rax, [rbp + 1064]
mov rbp, [rbp + 1080]
jmp rax
proc_density$2F2_ω:
mov rax, [rbp + 1072]
lea rsp, [rbp + 1088]
mov rbp, [rbp + 1080]
jmp rax
proc_startup:
  sub rsp, 8
  .section .rodata
  .Lstartup_pname0: .string "area/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_area$2F2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 6944
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname1: .string "query/1"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_query$2F1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1872
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname2: .string "pop/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_pop$2F2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 6944
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname3: .string "density/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_density$2F2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1056
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_generator@PLT
  add rsp, 8
  ret
  .globl main
main:
  sub rsp, 8
  push rdi
  push rsi
  call core_lib_init@PLT
  call proc_startup
  xor esi, esi
  call main_α
  xor eax, eax
  add rsp, 24
  ret
main_α:
#=======================================================================================================================
    .global main_α
    .global main_β
    .global main_γ
    .global main_ω
  sub rsp, 65544
  mov rdi, rsp
  mov ecx, 65544
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1272], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
main_α_body:
 xchain652_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain652_n1_α
 xchain652_n0_β:
 jmp main_ω
# IR_LIT_STRING
 xchain652_n1_α:
 mov qword ptr [rbp + 1232], 1
 mov rax, qword ptr [rip + .Lx654_0]
 mov qword ptr [rbp + 1240], rax
 jmp xchain652_n2_α
.Lx654_0:
 .quad .Lx654_0_s
.Lx654_0_s:
 .string "."
# IR_VAR_REF
 xchain652_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1296]
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain652_n3_α
# IR_LIT_STRING
 xchain652_n3_α:
 mov qword ptr [rbp + 1088], 1
 mov rax, qword ptr [rip + .Lx657_0]
 mov qword ptr [rbp + 1096], rax
 jmp xchain652_n4_α
.Lx657_0:
 .quad .Lx657_0_s
.Lx657_0_s:
 .string "."
# IR_VAR_REF
 xchain652_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1328]
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 jmp xchain652_n5_α
# IR_LIT_STRING
 xchain652_n5_α:
 mov qword ptr [rbp + 944], 1
 mov rax, qword ptr [rip + .Lx660_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain652_n6_α
.Lx660_0:
 .quad .Lx660_0_s
.Lx660_0_s:
 .string "."
# IR_VAR_REF
 xchain652_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1280]
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain652_n7_α
# IR_LIT_STRING
 xchain652_n7_α:
 mov qword ptr [rbp + 800], 1
 mov rax, qword ptr [rip + .Lx663_0]
 mov qword ptr [rbp + 808], rax
 jmp xchain652_n8_α
.Lx663_0:
 .quad .Lx663_0_s
.Lx663_0_s:
 .string "."
# IR_VAR_REF
 xchain652_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1312]
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 jmp xchain652_n9_α
# IR_LIT_STRING
 xchain652_n9_α:
 mov qword ptr [rbp + 656], 1
 mov rax, qword ptr [rip + .Lx666_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain652_n10_α
.Lx666_0:
 .quad .Lx666_0_s
.Lx666_0_s:
 .string "[]"
 xchain652_n10_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+800] -> [zr+736]
 mov rax, qword ptr [rbp + 800]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 808]
 mov qword ptr [rbp + 744], rax
# marshal arg1 = producer-box slot [zr+688] -> [zr+752]
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 760], rax
# marshal arg2 = producer-box slot [zr+656] -> [zr+768]
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [rbp + 768], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [rbp + 776], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 736]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 cmp eax, 99
 je main_ω
 jmp xchain652_n11_α
 xchain652_n10_β:
 jmp main_ω
 xchain652_n11_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+944] -> [zr+880]
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 888], rax
# marshal arg1 = producer-box slot [zr+832] -> [zr+896]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 904], rax
# marshal arg2 = producer-box slot [zr+720] -> [zr+912]
 mov rax, qword ptr [rbp + 720]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 728]
 mov qword ptr [rbp + 920], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 880]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 cmp eax, 99
 je main_ω
 jmp xchain652_n12_α
 xchain652_n11_β:
 jmp main_ω
 xchain652_n12_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1088] -> [zr+1024]
 mov rax, qword ptr [rbp + 1088]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 1096]
 mov qword ptr [rbp + 1032], rax
# marshal arg1 = producer-box slot [zr+976] -> [zr+1040]
 mov rax, qword ptr [rbp + 976]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 984]
 mov qword ptr [rbp + 1048], rax
# marshal arg2 = producer-box slot [zr+864] -> [zr+1056]
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 1064], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1024]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 cmp eax, 99
 je main_ω
 jmp xchain652_n13_α
 xchain652_n12_β:
 jmp main_ω
 xchain652_n13_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1232] -> [zr+1168]
 mov rax, qword ptr [rbp + 1232]
 mov qword ptr [rbp + 1168], rax
 mov rax, qword ptr [rbp + 1240]
 mov qword ptr [rbp + 1176], rax
# marshal arg1 = producer-box slot [zr+1120] -> [zr+1184]
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 1184], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 1192], rax
# marshal arg2 = producer-box slot [zr+1008] -> [zr+1200]
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 1200], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 1208], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1168]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 cmp eax, 99
 je xchain652_n15_α
 jmp xchain652_n14_α
 xchain652_n13_β:
 jmp xchain652_n15_α
 xchain652_n14_α:
 mov qword ptr [rbp + 624], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx672_20
 mov rax, qword ptr [rbp + 1152]
 mov rdx, qword ptr [rbp + 1160]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx672_21
.Lx672_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1152]
 mov rdx, qword ptr [rbp + 1160]
 call rt_arg_stage@PLT
.Lx672_21:
 mov rdi, qword ptr [rip + .Lx672_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx672_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx672_3]
 lea rdx, [rip + .Lx672_4]
 jmp rax
.Lx672_3:
 mov qword ptr [rbp + 632], rsp
 mov rax, qword ptr [rbp + 624]
 test rax, rax
 jne .Lx672_5
 mov qword ptr [rbp + 624], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx672_2
.Lx672_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx672_2
.Lx672_4:
 mov rax, qword ptr [rbp + 624]
 test rax, rax
 jne .Lx672_6
 mov qword ptr [rbp + 624], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx672_2
.Lx672_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx672_2
.Lx672_1:
 call rt_faildescr@PLT
.Lx672_2:
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 cmp eax, 99
 je xchain652_n15_α
 jmp xchain652_n16_α
 xchain652_n14_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 632]
 jmp qword ptr [rsp]
.Lx672_0:
 .quad .Lx672_0_s
.Lx672_0_s:
 .string "query/1"
# IR_LIT_STRING
 xchain652_n15_α:
 mov qword ptr [rbp + 560], 1
 mov rax, qword ptr [rip + .Lx673_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain652_n17_α
.Lx673_0:
 .quad .Lx673_0_s
.Lx673_0_s:
 .string "none"
# IR_LIT_STRING
 xchain652_n16_α:
 mov qword ptr [rbp + 496], 1
 mov rax, qword ptr [rip + .Lx674_0]
 mov qword ptr [rbp + 504], rax
 jmp xchain652_n18_α
.Lx674_0:
 .quad .Lx674_0_s
.Lx674_0_s:
 .string "."
 xchain652_n17_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+560] -> [zr+544]
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 552], rax
  .section .rodata
  .Lrkfn676: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn676]
 lea rsi, [rbp + 544]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 cmp eax, 99
 je xchain652_n20_α
 jmp xchain652_n19_α
 xchain652_n17_β:
 jmp xchain652_n20_α
# IR_VAR_REF
 xchain652_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1296]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain652_n21_α
# IR_LIT_STRING
 xchain652_n19_α:
 mov qword ptr [rbp + 144], 1
 mov rax, qword ptr [rip + .Lx679_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain652_n22_α
.Lx679_0:
 .quad .Lx679_0_s
.Lx679_0_s:
 .string ""
 xchain652_n20_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+96]
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 104], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_unwind (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 1
 call rt_pl_dop_trail_unwind@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain652_n20_β:
 jmp main_ω
# IR_LIT_STRING
 xchain652_n21_α:
 mov qword ptr [rbp + 352], 1
 mov rax, qword ptr [rip + .Lx681_0]
 mov qword ptr [rbp + 360], rax
 jmp xchain652_n23_α
.Lx681_0:
 .quad .Lx681_0_s
.Lx681_0_s:
 .string "."
 xchain652_n22_α:
# BOX IR_CALL $nl0(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+128]
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn683: .string "$nl0"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn683]
 lea rsi, [rbp + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je xchain652_n20_α
 jmp xchain652_n24_α
 xchain652_n22_β:
 jmp xchain652_n20_α
# IR_VAR_REF
 xchain652_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1280]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain652_n25_α
# IR_MOVE_LABEL
 xchain652_n24_α:
 lea rax, [rip + xchain652_n20_α]
 mov qword ptr [rbp + 32], rax
 jmp main_γ
# IR_LIT_STRING
 xchain652_n25_α:
 mov qword ptr [rbp + 208], 1
 mov rax, qword ptr [rip + .Lx688_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain652_n27_α
.Lx688_0:
 .quad .Lx688_0_s
.Lx688_0_s:
 .string "[]"
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain652_n26_α:
 jmp qword ptr [rbp + 32]
 xchain652_n26_β:
 jmp main_ω
 xchain652_n27_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+352] -> [zr+288]
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 296], rax
# marshal arg1 = producer-box slot [zr+240] -> [zr+304]
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 312], rax
# marshal arg2 = producer-box slot [zr+208] -> [zr+320]
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 328], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 288]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je main_ω
 jmp xchain652_n28_α
 xchain652_n27_β:
 jmp main_ω
 xchain652_n28_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+496] -> [zr+432]
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 440], rax
# marshal arg1 = producer-box slot [zr+384] -> [zr+448]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 456], rax
# marshal arg2 = producer-box slot [zr+272] -> [zr+464]
 mov rax, qword ptr [rbp + 272]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 280]
 mov qword ptr [rbp + 472], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 432]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 cmp eax, 99
 je xchain652_n20_α
 jmp xchain652_n29_α
 xchain652_n28_β:
 jmp xchain652_n20_α
 xchain652_n29_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+416] -> [zr+192]
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn694: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn694]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain652_n20_α
 jmp xchain652_n19_α
 xchain652_n29_β:
 jmp xchain652_n20_α
main_β:
jmp xchain652_n26_α
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 1272]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 1272]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
