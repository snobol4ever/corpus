  .intel_syntax noprefix
  .text
  .globl proc_dow$2_α
proc_dow$2_α:
#=======================================================================================================================
    .global proc_dow$2_α
    .global proc_dow$2_β
    .global proc_dow$2_γ
    .global proc_dow$2_ω
  sub rsp, 2304
  mov [rsp + 2280], rcx
  mov [rsp + 2288], rdx
  mov [rsp + 2296], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 2264], rsp
  mov rdi, rsp
  mov esi, 2240
  mov edx, 2272
  call rt_jmp_frame_lexprep2@PLT
proc_dow$2_α_body:
lea rax, [rip + xchain0_n10_β]
mov qword ptr [rbp + 2240], rax
 xchain0_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_dow$2_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_dow$2_ω
# IR_VAR_REF
 xchain0_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2176], rax
 mov qword ptr [rbp + 2184], rdx
 jmp xchain0_n2_α
# IR_LIT_INTEGER
 xchain0_n2_α:
 mov qword ptr [rbp + 2208], 6
 mov rax, qword ptr [rip + .Lx4_0]
 mov qword ptr [rbp + 2216], rax
 jmp xchain0_n3_α
.Lx4_0:
 .quad 0
 xchain0_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2176] -> [zr+2128]
 mov rax, qword ptr [rbp + 2176]
 mov qword ptr [rbp + 2128], rax
 mov rax, qword ptr [rbp + 2184]
 mov qword ptr [rbp + 2136], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 2128]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 2112], rax
 mov qword ptr [rbp + 2120], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2048], rax
 mov qword ptr [rbp + 2056], rdx
 jmp xchain0_n6_α
 xchain0_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1952]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 1952], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 1960], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1952]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1936], rax
 mov qword ptr [rbp + 1944], rdx
 cmp eax, 99
 je proc_dow$2_ω
 jmp xchain0_n7_α
 xchain0_n5_β:
 jmp proc_dow$2_ω
# IR_LIT_STRING
 xchain0_n6_α:
 mov qword ptr [rbp + 2080], 1
 mov rax, qword ptr [rip + .Lx9_0]
 mov qword ptr [rbp + 2088], rax
 jmp xchain0_n8_α
.Lx9_0:
 .quad .Lx9_0_s
.Lx9_0_s:
 .string "sun"
# IR_VAR_REF
 xchain0_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1872], rax
 mov qword ptr [rbp + 1880], rdx
 jmp xchain0_n9_α
 xchain0_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2048] -> [zr+2000]
 mov rax, qword ptr [rbp + 2048]
 mov qword ptr [rbp + 2000], rax
 mov rax, qword ptr [rbp + 2056]
 mov qword ptr [rbp + 2008], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 2000]
 mov rsi, qword ptr [rip + .Lx12_2]
 jmp .Lx12_3
.Lx12_2:
 .quad .Lx12_2_s
.Lx12_2_s:
 .string "sun"
.Lx12_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1984], rax
 mov qword ptr [rbp + 1992], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n10_α
 xchain0_n8_β:
 jmp xchain0_n5_α
# IR_LIT_INTEGER
 xchain0_n9_α:
 mov qword ptr [rbp + 1904], 6
 mov rax, qword ptr [rip + .Lx13_0]
 mov qword ptr [rbp + 1912], rax
 jmp xchain0_n11_α
.Lx13_0:
 .quad 1
# IR_SUSPEND yield+resume
 xchain0_n10_α:
 lea rax, [rip + xchain0_n10_β]
 mov qword ptr [rbp + 2240], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_dow$2_γ
 xchain0_n10_β:
 jmp xchain0_n5_α
 xchain0_n11_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1872] -> [zr+1824]
 mov rax, qword ptr [rbp + 1872]
 mov qword ptr [rbp + 1824], rax
 mov rax, qword ptr [rbp + 1880]
 mov qword ptr [rbp + 1832], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 1824]
 movabs rsi, 1
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 1808], rax
 mov qword ptr [rbp + 1816], rdx
 cmp eax, 99
 je xchain0_n13_α
 jmp xchain0_n12_α
 xchain0_n11_β:
 jmp xchain0_n13_α
# IR_VAR_REF
 xchain0_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1744], rax
 mov qword ptr [rbp + 1752], rdx
 jmp xchain0_n14_α
 xchain0_n13_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1648]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 1648], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 1656], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1648]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1632], rax
 mov qword ptr [rbp + 1640], rdx
 cmp eax, 99
 je proc_dow$2_ω
 jmp xchain0_n15_α
 xchain0_n13_β:
 jmp proc_dow$2_ω
# IR_LIT_STRING
 xchain0_n14_α:
 mov qword ptr [rbp + 1776], 1
 mov rax, qword ptr [rip + .Lx20_0]
 mov qword ptr [rbp + 1784], rax
 jmp xchain0_n16_α
.Lx20_0:
 .quad .Lx20_0_s
.Lx20_0_s:
 .string "mon"
# IR_VAR_REF
 xchain0_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1568], rax
 mov qword ptr [rbp + 1576], rdx
 jmp xchain0_n17_α
 xchain0_n16_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1744] -> [zr+1696]
 mov rax, qword ptr [rbp + 1744]
 mov qword ptr [rbp + 1696], rax
 mov rax, qword ptr [rbp + 1752]
 mov qword ptr [rbp + 1704], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1696]
 mov rsi, qword ptr [rip + .Lx23_2]
 jmp .Lx23_3
.Lx23_2:
 .quad .Lx23_2_s
.Lx23_2_s:
 .string "mon"
.Lx23_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1680], rax
 mov qword ptr [rbp + 1688], rdx
 cmp eax, 99
 je xchain0_n13_α
 jmp xchain0_n18_α
 xchain0_n16_β:
 jmp xchain0_n13_α
# IR_LIT_INTEGER
 xchain0_n17_α:
 mov qword ptr [rbp + 1600], 6
 mov rax, qword ptr [rip + .Lx24_0]
 mov qword ptr [rbp + 1608], rax
 jmp xchain0_n19_α
.Lx24_0:
 .quad 2
# IR_SUSPEND yield+resume
 xchain0_n18_α:
 lea rax, [rip + xchain0_n18_β]
 mov qword ptr [rbp + 2240], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_dow$2_γ
 xchain0_n18_β:
 jmp xchain0_n13_α
 xchain0_n19_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1568] -> [zr+1520]
 mov rax, qword ptr [rbp + 1568]
 mov qword ptr [rbp + 1520], rax
 mov rax, qword ptr [rbp + 1576]
 mov qword ptr [rbp + 1528], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 1520]
 movabs rsi, 2
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 1504], rax
 mov qword ptr [rbp + 1512], rdx
 cmp eax, 99
 je xchain0_n21_α
 jmp xchain0_n20_α
 xchain0_n19_β:
 jmp xchain0_n21_α
# IR_VAR_REF
 xchain0_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 jmp xchain0_n22_α
 xchain0_n21_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1344]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 1352], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1344]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 cmp eax, 99
 je proc_dow$2_ω
 jmp xchain0_n23_α
 xchain0_n21_β:
 jmp proc_dow$2_ω
# IR_LIT_STRING
 xchain0_n22_α:
 mov qword ptr [rbp + 1472], 1
 mov rax, qword ptr [rip + .Lx31_0]
 mov qword ptr [rbp + 1480], rax
 jmp xchain0_n24_α
.Lx31_0:
 .quad .Lx31_0_s
.Lx31_0_s:
 .string "tue"
# IR_VAR_REF
 xchain0_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 jmp xchain0_n25_α
 xchain0_n24_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1440] -> [zr+1392]
 mov rax, qword ptr [rbp + 1440]
 mov qword ptr [rbp + 1392], rax
 mov rax, qword ptr [rbp + 1448]
 mov qword ptr [rbp + 1400], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1392]
 mov rsi, qword ptr [rip + .Lx34_2]
 jmp .Lx34_3
.Lx34_2:
 .quad .Lx34_2_s
.Lx34_2_s:
 .string "tue"
.Lx34_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 cmp eax, 99
 je xchain0_n21_α
 jmp xchain0_n26_α
 xchain0_n24_β:
 jmp xchain0_n21_α
# IR_LIT_INTEGER
 xchain0_n25_α:
 mov qword ptr [rbp + 1296], 6
 mov rax, qword ptr [rip + .Lx35_0]
 mov qword ptr [rbp + 1304], rax
 jmp xchain0_n27_α
.Lx35_0:
 .quad 3
# IR_SUSPEND yield+resume
 xchain0_n26_α:
 lea rax, [rip + xchain0_n26_β]
 mov qword ptr [rbp + 2240], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_dow$2_γ
 xchain0_n26_β:
 jmp xchain0_n21_α
 xchain0_n27_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1264] -> [zr+1216]
 mov rax, qword ptr [rbp + 1264]
 mov qword ptr [rbp + 1216], rax
 mov rax, qword ptr [rbp + 1272]
 mov qword ptr [rbp + 1224], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 1216]
 movabs rsi, 3
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 cmp eax, 99
 je xchain0_n29_α
 jmp xchain0_n28_α
 xchain0_n27_β:
 jmp xchain0_n29_α
# IR_VAR_REF
 xchain0_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain0_n30_α
 xchain0_n29_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1040]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 1048], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1040]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 cmp eax, 99
 je proc_dow$2_ω
 jmp xchain0_n31_α
 xchain0_n29_β:
 jmp proc_dow$2_ω
# IR_LIT_STRING
 xchain0_n30_α:
 mov qword ptr [rbp + 1168], 1
 mov rax, qword ptr [rip + .Lx42_0]
 mov qword ptr [rbp + 1176], rax
 jmp xchain0_n32_α
.Lx42_0:
 .quad .Lx42_0_s
.Lx42_0_s:
 .string "wed"
# IR_VAR_REF
 xchain0_n31_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain0_n33_α
 xchain0_n32_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1136] -> [zr+1088]
 mov rax, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 1088], rax
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 1096], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1088]
 mov rsi, qword ptr [rip + .Lx45_2]
 jmp .Lx45_3
.Lx45_2:
 .quad .Lx45_2_s
.Lx45_2_s:
 .string "wed"
.Lx45_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 cmp eax, 99
 je xchain0_n29_α
 jmp xchain0_n34_α
 xchain0_n32_β:
 jmp xchain0_n29_α
# IR_LIT_INTEGER
 xchain0_n33_α:
 mov qword ptr [rbp + 992], 6
 mov rax, qword ptr [rip + .Lx46_0]
 mov qword ptr [rbp + 1000], rax
 jmp xchain0_n35_α
.Lx46_0:
 .quad 4
# IR_SUSPEND yield+resume
 xchain0_n34_α:
 lea rax, [rip + xchain0_n34_β]
 mov qword ptr [rbp + 2240], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_dow$2_γ
 xchain0_n34_β:
 jmp xchain0_n29_α
 xchain0_n35_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+960] -> [zr+912]
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 920], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 912]
 movabs rsi, 4
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je xchain0_n37_α
 jmp xchain0_n36_α
 xchain0_n35_β:
 jmp xchain0_n37_α
# IR_VAR_REF
 xchain0_n36_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain0_n38_α
 xchain0_n37_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+736]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 744], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 736]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 cmp eax, 99
 je proc_dow$2_ω
 jmp xchain0_n39_α
 xchain0_n37_β:
 jmp proc_dow$2_ω
# IR_LIT_STRING
 xchain0_n38_α:
 mov qword ptr [rbp + 864], 1
 mov rax, qword ptr [rip + .Lx53_0]
 mov qword ptr [rbp + 872], rax
 jmp xchain0_n40_α
.Lx53_0:
 .quad .Lx53_0_s
.Lx53_0_s:
 .string "thu"
# IR_VAR_REF
 xchain0_n39_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain0_n41_α
 xchain0_n40_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+832] -> [zr+784]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 792], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 784]
 mov rsi, qword ptr [rip + .Lx56_2]
 jmp .Lx56_3
.Lx56_2:
 .quad .Lx56_2_s
.Lx56_2_s:
 .string "thu"
.Lx56_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 cmp eax, 99
 je xchain0_n37_α
 jmp xchain0_n42_α
 xchain0_n40_β:
 jmp xchain0_n37_α
# IR_LIT_INTEGER
 xchain0_n41_α:
 mov qword ptr [rbp + 688], 6
 mov rax, qword ptr [rip + .Lx57_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain0_n43_α
.Lx57_0:
 .quad 5
# IR_SUSPEND yield+resume
 xchain0_n42_α:
 lea rax, [rip + xchain0_n42_β]
 mov qword ptr [rbp + 2240], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_dow$2_γ
 xchain0_n42_β:
 jmp xchain0_n37_α
 xchain0_n43_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+656] -> [zr+608]
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [rbp + 616], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 608]
 movabs rsi, 5
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 cmp eax, 99
 je xchain0_n45_α
 jmp xchain0_n44_α
 xchain0_n43_β:
 jmp xchain0_n45_α
# IR_VAR_REF
 xchain0_n44_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain0_n46_α
 xchain0_n45_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+432]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 440], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 432]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 cmp eax, 99
 je proc_dow$2_ω
 jmp xchain0_n47_α
 xchain0_n45_β:
 jmp proc_dow$2_ω
# IR_LIT_STRING
 xchain0_n46_α:
 mov qword ptr [rbp + 560], 1
 mov rax, qword ptr [rip + .Lx64_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain0_n48_α
.Lx64_0:
 .quad .Lx64_0_s
.Lx64_0_s:
 .string "fri"
# IR_VAR_REF
 xchain0_n47_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain0_n49_α
 xchain0_n48_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+528] -> [zr+480]
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 488], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 480]
 mov rsi, qword ptr [rip + .Lx67_2]
 jmp .Lx67_3
.Lx67_2:
 .quad .Lx67_2_s
.Lx67_2_s:
 .string "fri"
.Lx67_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain0_n45_α
 jmp xchain0_n50_α
 xchain0_n48_β:
 jmp xchain0_n45_α
# IR_LIT_INTEGER
 xchain0_n49_α:
 mov qword ptr [rbp + 384], 6
 mov rax, qword ptr [rip + .Lx68_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain0_n51_α
.Lx68_0:
 .quad 6
# IR_SUSPEND yield+resume
 xchain0_n50_α:
 lea rax, [rip + xchain0_n50_β]
 mov qword ptr [rbp + 2240], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_dow$2_γ
 xchain0_n50_β:
 jmp xchain0_n45_α
 xchain0_n51_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+352] -> [zr+304]
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 312], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 304]
 movabs rsi, 6
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain0_n53_α
 jmp xchain0_n52_α
 xchain0_n51_β:
 jmp xchain0_n53_α
# IR_VAR_REF
 xchain0_n52_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain0_n54_α
 xchain0_n53_α:
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
 je proc_dow$2_ω
 jmp proc_dow$2_ω
 xchain0_n53_β:
 jmp proc_dow$2_ω
# IR_LIT_STRING
 xchain0_n54_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx75_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain0_n55_α
.Lx75_0:
 .quad .Lx75_0_s
.Lx75_0_s:
 .string "sat"
 xchain0_n55_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+176]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 184], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 176]
 mov rsi, qword ptr [rip + .Lx76_2]
 jmp .Lx76_3
.Lx76_2:
 .quad .Lx76_2_s
.Lx76_2_s:
 .string "sat"
.Lx76_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain0_n53_α
 jmp xchain0_n56_α
 xchain0_n55_β:
 jmp xchain0_n53_α
# IR_SUSPEND yield+resume
 xchain0_n56_α:
 lea rax, [rip + xchain0_n56_β]
 mov qword ptr [rbp + 2240], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_dow$2_γ
 xchain0_n56_β:
 jmp xchain0_n53_α
proc_dow$2_res:
add rsp, 8
pop rbp
proc_dow$2_β:
jmp qword ptr [rbp + 2240]
proc_dow$2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_dow$2_res]
push rax
mov rax, [rbp + 2280]
mov rbp, [rbp + 2296]
jmp rax
proc_dow$2_ω:
mov rax, [rbp + 2288]
lea rsp, [rbp + 2304]
mov rbp, [rbp + 2296]
jmp rax
  .globl proc_day_of_week$4_α
proc_day_of_week$4_α:
#=======================================================================================================================
    .global proc_day_of_week$4_α
    .global proc_day_of_week$4_β
    .global proc_day_of_week$4_γ
    .global proc_day_of_week$4_ω
  sub rsp, 1344
  mov [rsp + 1320], rcx
  mov [rsp + 1328], rdx
  mov [rsp + 1336], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1208], rsp
  mov rdi, rsp
  mov esi, 1184
  mov edx, 1312
  call rt_jmp_frame_lexprep2@PLT
proc_day_of_week$4_α_body:
lea rax, [rip + xchain79_n24_β]
mov qword ptr [rbp + 1184], rax
 xchain79_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 128]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_day_of_week$4_ω
 jmp xchain79_n1_α
 xchain79_n0_β:
 jmp proc_day_of_week$4_ω
# IR_VAR_REF
 xchain79_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain79_n2_α
# IR_VAR_REF
 xchain79_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1216]
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain79_n3_α
 xchain79_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1120] -> [zr+1072]
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 1080], rax
# marshal arg1 = producer-box slot [zr+1152] -> [zr+1088]
 mov rax, qword ptr [rbp + 1152]
 mov qword ptr [rbp + 1088], rax
 mov rax, qword ptr [rbp + 1160]
 mov qword ptr [rbp + 1096], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1072]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 cmp eax, 99
 je xchain79_n5_α
 jmp xchain79_n4_α
 xchain79_n3_β:
 jmp xchain79_n5_α
# IR_VAR_REF
 xchain79_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain79_n6_α
 xchain79_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+160]
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 168], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_unwind (no by-name dispatch)
 lea rdi, [rbp + 160]
 mov esi, 1
 call rt_pl_dop_trail_unwind@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je proc_day_of_week$4_ω
 jmp proc_day_of_week$4_ω
 xchain79_n5_β:
 jmp proc_day_of_week$4_ω
# IR_VAR_REF
 xchain79_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1296]
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 jmp xchain79_n7_α
 xchain79_n7_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+992] -> [zr+944]
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 952], rax
# marshal arg1 = producer-box slot [zr+1024] -> [zr+960]
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 968], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 944]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 cmp eax, 99
 je xchain79_n5_α
 jmp xchain79_n8_α
 xchain79_n7_β:
 jmp xchain79_n5_α
# IR_VAR_REF
 xchain79_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain79_n9_α
# IR_VAR_REF
 xchain79_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1232]
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 jmp xchain79_n10_α
 xchain79_n10_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+864] -> [zr+816]
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 824], rax
# marshal arg1 = producer-box slot [zr+896] -> [zr+832]
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 840], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 816]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 cmp eax, 99
 je xchain79_n5_α
 jmp xchain79_n11_α
 xchain79_n10_β:
 jmp xchain79_n5_α
# IR_VAR_REF
 xchain79_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 64]
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain79_n12_α
# IR_VAR_REF
 xchain79_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1280]
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain79_n13_α
 xchain79_n13_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+736] -> [zr+688]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 696], rax
# marshal arg1 = producer-box slot [zr+768] -> [zr+704]
 mov rax, qword ptr [rbp + 768]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 776]
 mov qword ptr [rbp + 712], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 688]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 cmp eax, 99
 je xchain79_n5_α
 jmp xchain79_n14_α
 xchain79_n13_β:
 jmp xchain79_n5_α
# IR_VAR_REF
 xchain79_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1296]
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain79_n15_α
# IR_VAR_REF
 xchain79_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1248]
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain79_n16_α
# IR_VAR_REF
 xchain79_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1264]
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain79_n17_α
 xchain79_n17_α:
 mov qword ptr [rbp + 544], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 576]
 mov rdx, qword ptr [rbp + 584]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 640]
 mov rdx, qword ptr [rbp + 648]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx109_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx109_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx109_3]
 lea rdx, [rip + .Lx109_4]
 jmp rax
.Lx109_3:
 mov qword ptr [rbp + 552], rsp
 mov rax, qword ptr [rbp + 544]
 test rax, rax
 jne .Lx109_5
 mov qword ptr [rbp + 544], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx109_2
.Lx109_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx109_2
.Lx109_4:
 mov rax, qword ptr [rbp + 544]
 test rax, rax
 jne .Lx109_6
 mov qword ptr [rbp + 544], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx109_2
.Lx109_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx109_2
.Lx109_1:
 call rt_faildescr@PLT
.Lx109_2:
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 cmp eax, 99
 je xchain79_n5_α
 jmp xchain79_n18_α
 xchain79_n17_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 552]
 jmp qword ptr [rsp]
.Lx109_0:
 .quad .Lx109_0_s
.Lx109_0_s:
 .string "cal_key/3"
# IR_VAR_REF
 xchain79_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1216]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain79_n19_α
# IR_VAR_REF
 xchain79_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1232]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain79_n20_α
# IR_VAR_REF
 xchain79_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1248]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain79_n21_α
# IR_VAR_REF
 xchain79_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1264]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain79_n22_α
# IR_VAR_REF
 xchain79_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1280]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain79_n23_α
 xchain79_n23_α:
 mov qword ptr [rbp + 288], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 320]
 mov rdx, qword ptr [rbp + 328]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 352]
 mov rdx, qword ptr [rbp + 360]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 call rt_arg_stage@PLT
 mov edi, 3
 mov rsi, qword ptr [rbp + 416]
 mov rdx, qword ptr [rbp + 424]
 call rt_arg_stage@PLT
 mov edi, 4
 mov rsi, qword ptr [rbp + 448]
 mov rdx, qword ptr [rbp + 456]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx121_0]
 mov esi, 5
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx121_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx121_3]
 lea rdx, [rip + .Lx121_4]
 jmp rax
.Lx121_3:
 mov qword ptr [rbp + 296], rsp
 mov rax, qword ptr [rbp + 288]
 test rax, rax
 jne .Lx121_5
 mov qword ptr [rbp + 288], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx121_2
.Lx121_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx121_2
.Lx121_4:
 mov rax, qword ptr [rbp + 288]
 test rax, rax
 jne .Lx121_6
 mov qword ptr [rbp + 288], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx121_2
.Lx121_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx121_2
.Lx121_1:
 call rt_faildescr@PLT
.Lx121_2:
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain79_n17_β
 jmp xchain79_n24_α
 xchain79_n23_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 296]
 jmp qword ptr [rsp]
.Lx121_0:
 .quad .Lx121_0_s
.Lx121_0_s:
 .string "compute_it/5"
# IR_SUSPEND yield+resume
 xchain79_n24_α:
 lea rax, [rip + xchain79_n24_β]
 mov qword ptr [rbp + 1184], rax
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 8], rax
 jmp proc_day_of_week$4_γ
 xchain79_n24_β:
 jmp xchain79_n23_β
proc_day_of_week$4_res:
add rsp, 8
pop rbp
proc_day_of_week$4_β:
jmp qword ptr [rbp + 1184]
proc_day_of_week$4_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_day_of_week$4_res]
push rax
mov rax, [rbp + 1320]
mov rbp, [rbp + 1336]
jmp rax
proc_day_of_week$4_ω:
mov rax, [rbp + 1328]
lea rsp, [rbp + 1344]
mov rbp, [rbp + 1336]
jmp rax
  .globl proc_cal_key$3_α
proc_cal_key$3_α:
#=======================================================================================================================
    .global proc_cal_key$3_α
    .global proc_cal_key$3_β
    .global proc_cal_key$3_γ
    .global proc_cal_key$3_ω
  sub rsp, 15744
  mov [rsp + 15720], rcx
  mov [rsp + 15728], rdx
  mov [rsp + 15736], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 15704], rsp
  mov rdi, rsp
  mov esi, 15680
  mov edx, 15712
  call rt_jmp_frame_lexprep2@PLT
proc_cal_key$3_α_body:
lea rax, [rip + xchain124_n18_β]
mov qword ptr [rbp + 15680], rax
 xchain124_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_cal_key$3_ω
 jmp xchain124_n1_α
 xchain124_n0_β:
 jmp proc_cal_key$3_ω
# IR_VAR_REF
 xchain124_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 15616], rax
 mov qword ptr [rbp + 15624], rdx
 jmp xchain124_n2_α
# IR_LIT_INTEGER
 xchain124_n2_α:
 mov qword ptr [rbp + 15648], 6
 mov rax, qword ptr [rip + .Lx128_0]
 mov qword ptr [rbp + 15656], rax
 jmp xchain124_n3_α
.Lx128_0:
 .quad 1
 xchain124_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+15616] -> [zr+15568]
 mov rax, qword ptr [rbp + 15616]
 mov qword ptr [rbp + 15568], rax
 mov rax, qword ptr [rbp + 15624]
 mov qword ptr [rbp + 15576], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 15568]
 movabs rsi, 1
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 15552], rax
 mov qword ptr [rbp + 15560], rdx
 cmp eax, 99
 je xchain124_n5_α
 jmp xchain124_n4_α
 xchain124_n3_β:
 jmp xchain124_n5_α
# IR_VAR_REF
 xchain124_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 15488], rax
 mov qword ptr [rbp + 15496], rdx
 jmp xchain124_n6_α
 xchain124_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+15264]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 15264], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 15272], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 15264]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 15248], rax
 mov qword ptr [rbp + 15256], rdx
 cmp eax, 99
 je proc_cal_key$3_ω
 jmp xchain124_n7_α
 xchain124_n5_β:
 jmp proc_cal_key$3_ω
# IR_LIT_INTEGER
 xchain124_n6_α:
 mov qword ptr [rbp + 15520], 6
 mov rax, qword ptr [rip + .Lx133_0]
 mov qword ptr [rbp + 15528], rax
 jmp xchain124_n8_α
.Lx133_0:
 .quad 6
# IR_VAR_REF
 xchain124_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 15184], rax
 mov qword ptr [rbp + 15192], rdx
 jmp xchain124_n9_α
 xchain124_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+15488] -> [zr+15440]
 mov rax, qword ptr [rbp + 15488]
 mov qword ptr [rbp + 15440], rax
 mov rax, qword ptr [rbp + 15496]
 mov qword ptr [rbp + 15448], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 15440]
 movabs rsi, 6
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 15424], rax
 mov qword ptr [rbp + 15432], rdx
 cmp eax, 99
 je xchain124_n5_α
 jmp xchain124_n10_α
 xchain124_n8_β:
 jmp xchain124_n5_α
# IR_LIT_INTEGER
 xchain124_n9_α:
 mov qword ptr [rbp + 15216], 6
 mov rax, qword ptr [rip + .Lx137_0]
 mov qword ptr [rbp + 15224], rax
 jmp xchain124_n11_α
.Lx137_0:
 .quad 2
# IR_VAR_REF
 xchain124_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 15360], rax
 mov qword ptr [rbp + 15368], rdx
 jmp xchain124_n12_α
 xchain124_n11_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+15184] -> [zr+15136]
 mov rax, qword ptr [rbp + 15184]
 mov qword ptr [rbp + 15136], rax
 mov rax, qword ptr [rbp + 15192]
 mov qword ptr [rbp + 15144], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 15136]
 movabs rsi, 2
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 15120], rax
 mov qword ptr [rbp + 15128], rdx
 cmp eax, 99
 je xchain124_n14_α
 jmp xchain124_n13_α
 xchain124_n11_β:
 jmp xchain124_n14_α
# IR_LIT_INTEGER
 xchain124_n12_α:
 mov qword ptr [rbp + 15392], 6
 mov rax, qword ptr [rip + .Lx141_0]
 mov qword ptr [rbp + 15400], rax
 jmp xchain124_n15_α
.Lx141_0:
 .quad 1
# IR_VAR_REF
 xchain124_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 15056], rax
 mov qword ptr [rbp + 15064], rdx
 jmp xchain124_n16_α
 xchain124_n14_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+14832]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 14832], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 14840], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 14832]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 14816], rax
 mov qword ptr [rbp + 14824], rdx
 cmp eax, 99
 je proc_cal_key$3_ω
 jmp xchain124_n17_α
 xchain124_n14_β:
 jmp proc_cal_key$3_ω
 xchain124_n15_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+15360] -> [zr+15312]
 mov rax, qword ptr [rbp + 15360]
 mov qword ptr [rbp + 15312], rax
 mov rax, qword ptr [rbp + 15368]
 mov qword ptr [rbp + 15320], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 15312]
 movabs rsi, 1
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 15296], rax
 mov qword ptr [rbp + 15304], rdx
 cmp eax, 99
 je xchain124_n5_α
 jmp xchain124_n18_α
 xchain124_n15_β:
 jmp xchain124_n5_α
# IR_LIT_INTEGER
 xchain124_n16_α:
 mov qword ptr [rbp + 15088], 6
 mov rax, qword ptr [rip + .Lx146_0]
 mov qword ptr [rbp + 15096], rax
 jmp xchain124_n19_α
.Lx146_0:
 .quad 2
# IR_VAR_REF
 xchain124_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 14752], rax
 mov qword ptr [rbp + 14760], rdx
 jmp xchain124_n20_α
# IR_SUSPEND yield+resume
 xchain124_n18_α:
 lea rax, [rip + xchain124_n18_β]
 mov qword ptr [rbp + 15680], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$3_γ
 xchain124_n18_β:
 jmp xchain124_n5_α
 xchain124_n19_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+15056] -> [zr+15008]
 mov rax, qword ptr [rbp + 15056]
 mov qword ptr [rbp + 15008], rax
 mov rax, qword ptr [rbp + 15064]
 mov qword ptr [rbp + 15016], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 15008]
 movabs rsi, 2
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 14992], rax
 mov qword ptr [rbp + 15000], rdx
 cmp eax, 99
 je xchain124_n14_α
 jmp xchain124_n21_α
 xchain124_n19_β:
 jmp xchain124_n14_α
# IR_LIT_INTEGER
 xchain124_n20_α:
 mov qword ptr [rbp + 14784], 6
 mov rax, qword ptr [rip + .Lx152_0]
 mov qword ptr [rbp + 14792], rax
 jmp xchain124_n22_α
.Lx152_0:
 .quad 3
# IR_VAR_REF
 xchain124_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 14928], rax
 mov qword ptr [rbp + 14936], rdx
 jmp xchain124_n23_α
 xchain124_n22_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+14752] -> [zr+14704]
 mov rax, qword ptr [rbp + 14752]
 mov qword ptr [rbp + 14704], rax
 mov rax, qword ptr [rbp + 14760]
 mov qword ptr [rbp + 14712], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 14704]
 movabs rsi, 3
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 14688], rax
 mov qword ptr [rbp + 14696], rdx
 cmp eax, 99
 je xchain124_n25_α
 jmp xchain124_n24_α
 xchain124_n22_β:
 jmp xchain124_n25_α
# IR_LIT_INTEGER
 xchain124_n23_α:
 mov qword ptr [rbp + 14960], 6
 mov rax, qword ptr [rip + .Lx156_0]
 mov qword ptr [rbp + 14968], rax
 jmp xchain124_n26_α
.Lx156_0:
 .quad 1
# IR_VAR_REF
 xchain124_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 14624], rax
 mov qword ptr [rbp + 14632], rdx
 jmp xchain124_n27_α
 xchain124_n25_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+14400]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 14400], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 14408], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 14400]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 14384], rax
 mov qword ptr [rbp + 14392], rdx
 cmp eax, 99
 je proc_cal_key$3_ω
 jmp xchain124_n28_α
 xchain124_n25_β:
 jmp proc_cal_key$3_ω
 xchain124_n26_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+14928] -> [zr+14880]
 mov rax, qword ptr [rbp + 14928]
 mov qword ptr [rbp + 14880], rax
 mov rax, qword ptr [rbp + 14936]
 mov qword ptr [rbp + 14888], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 14880]
 movabs rsi, 1
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 14864], rax
 mov qword ptr [rbp + 14872], rdx
 cmp eax, 99
 je xchain124_n14_α
 jmp xchain124_n29_α
 xchain124_n26_β:
 jmp xchain124_n14_α
# IR_LIT_INTEGER
 xchain124_n27_α:
 mov qword ptr [rbp + 14656], 6
 mov rax, qword ptr [rip + .Lx161_0]
 mov qword ptr [rbp + 14664], rax
 jmp xchain124_n30_α
.Lx161_0:
 .quad 2
# IR_VAR_REF
 xchain124_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 14320], rax
 mov qword ptr [rbp + 14328], rdx
 jmp xchain124_n31_α
# IR_SUSPEND yield+resume
 xchain124_n29_α:
 lea rax, [rip + xchain124_n29_β]
 mov qword ptr [rbp + 15680], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$3_γ
 xchain124_n29_β:
 jmp xchain124_n14_α
 xchain124_n30_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+14624] -> [zr+14576]
 mov rax, qword ptr [rbp + 14624]
 mov qword ptr [rbp + 14576], rax
 mov rax, qword ptr [rbp + 14632]
 mov qword ptr [rbp + 14584], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 14576]
 movabs rsi, 2
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 14560], rax
 mov qword ptr [rbp + 14568], rdx
 cmp eax, 99
 je xchain124_n25_α
 jmp xchain124_n32_α
 xchain124_n30_β:
 jmp xchain124_n25_α
# IR_LIT_INTEGER
 xchain124_n31_α:
 mov qword ptr [rbp + 14352], 6
 mov rax, qword ptr [rip + .Lx167_0]
 mov qword ptr [rbp + 14360], rax
 jmp xchain124_n33_α
.Lx167_0:
 .quad 4
# IR_VAR_REF
 xchain124_n32_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 14496], rax
 mov qword ptr [rbp + 14504], rdx
 jmp xchain124_n34_α
 xchain124_n33_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+14320] -> [zr+14272]
 mov rax, qword ptr [rbp + 14320]
 mov qword ptr [rbp + 14272], rax
 mov rax, qword ptr [rbp + 14328]
 mov qword ptr [rbp + 14280], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 14272]
 movabs rsi, 4
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 14256], rax
 mov qword ptr [rbp + 14264], rdx
 cmp eax, 99
 je xchain124_n36_α
 jmp xchain124_n35_α
 xchain124_n33_β:
 jmp xchain124_n36_α
# IR_LIT_INTEGER
 xchain124_n34_α:
 mov qword ptr [rbp + 14528], 6
 mov rax, qword ptr [rip + .Lx171_0]
 mov qword ptr [rbp + 14536], rax
 jmp xchain124_n37_α
.Lx171_0:
 .quad 0
# IR_VAR_REF
 xchain124_n35_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 14192], rax
 mov qword ptr [rbp + 14200], rdx
 jmp xchain124_n38_α
 xchain124_n36_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+13968]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 13968], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 13976], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 13968]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 13952], rax
 mov qword ptr [rbp + 13960], rdx
 cmp eax, 99
 je proc_cal_key$3_ω
 jmp xchain124_n39_α
 xchain124_n36_β:
 jmp proc_cal_key$3_ω
 xchain124_n37_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+14496] -> [zr+14448]
 mov rax, qword ptr [rbp + 14496]
 mov qword ptr [rbp + 14448], rax
 mov rax, qword ptr [rbp + 14504]
 mov qword ptr [rbp + 14456], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 14448]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 14432], rax
 mov qword ptr [rbp + 14440], rdx
 cmp eax, 99
 je xchain124_n25_α
 jmp xchain124_n40_α
 xchain124_n37_β:
 jmp xchain124_n25_α
# IR_LIT_INTEGER
 xchain124_n38_α:
 mov qword ptr [rbp + 14224], 6
 mov rax, qword ptr [rip + .Lx176_0]
 mov qword ptr [rbp + 14232], rax
 jmp xchain124_n41_α
.Lx176_0:
 .quad 5
# IR_VAR_REF
 xchain124_n39_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 13888], rax
 mov qword ptr [rbp + 13896], rdx
 jmp xchain124_n42_α
# IR_SUSPEND yield+resume
 xchain124_n40_α:
 lea rax, [rip + xchain124_n40_β]
 mov qword ptr [rbp + 15680], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$3_γ
 xchain124_n40_β:
 jmp xchain124_n25_α
 xchain124_n41_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+14192] -> [zr+14144]
 mov rax, qword ptr [rbp + 14192]
 mov qword ptr [rbp + 14144], rax
 mov rax, qword ptr [rbp + 14200]
 mov qword ptr [rbp + 14152], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 14144]
 movabs rsi, 5
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 14128], rax
 mov qword ptr [rbp + 14136], rdx
 cmp eax, 99
 je xchain124_n36_α
 jmp xchain124_n43_α
 xchain124_n41_β:
 jmp xchain124_n36_α
# IR_LIT_INTEGER
 xchain124_n42_α:
 mov qword ptr [rbp + 13920], 6
 mov rax, qword ptr [rip + .Lx182_0]
 mov qword ptr [rbp + 13928], rax
 jmp xchain124_n44_α
.Lx182_0:
 .quad 5
# IR_VAR_REF
 xchain124_n43_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 14064], rax
 mov qword ptr [rbp + 14072], rdx
 jmp xchain124_n45_α
 xchain124_n44_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+13888] -> [zr+13840]
 mov rax, qword ptr [rbp + 13888]
 mov qword ptr [rbp + 13840], rax
 mov rax, qword ptr [rbp + 13896]
 mov qword ptr [rbp + 13848], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 13840]
 movabs rsi, 5
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 13824], rax
 mov qword ptr [rbp + 13832], rdx
 cmp eax, 99
 je xchain124_n47_α
 jmp xchain124_n46_α
 xchain124_n44_β:
 jmp xchain124_n47_α
# IR_LIT_INTEGER
 xchain124_n45_α:
 mov qword ptr [rbp + 14096], 6
 mov rax, qword ptr [rip + .Lx186_0]
 mov qword ptr [rbp + 14104], rax
 jmp xchain124_n48_α
.Lx186_0:
 .quad 0
# IR_VAR_REF
 xchain124_n46_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 13760], rax
 mov qword ptr [rbp + 13768], rdx
 jmp xchain124_n49_α
 xchain124_n47_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+13536]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 13536], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 13544], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 13536]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 13520], rax
 mov qword ptr [rbp + 13528], rdx
 cmp eax, 99
 je proc_cal_key$3_ω
 jmp xchain124_n50_α
 xchain124_n47_β:
 jmp proc_cal_key$3_ω
 xchain124_n48_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+14064] -> [zr+14016]
 mov rax, qword ptr [rbp + 14064]
 mov qword ptr [rbp + 14016], rax
 mov rax, qword ptr [rbp + 14072]
 mov qword ptr [rbp + 14024], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 14016]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 14000], rax
 mov qword ptr [rbp + 14008], rdx
 cmp eax, 99
 je xchain124_n36_α
 jmp xchain124_n51_α
 xchain124_n48_β:
 jmp xchain124_n36_α
# IR_LIT_INTEGER
 xchain124_n49_α:
 mov qword ptr [rbp + 13792], 6
 mov rax, qword ptr [rip + .Lx191_0]
 mov qword ptr [rbp + 13800], rax
 jmp xchain124_n52_α
.Lx191_0:
 .quad 0
# IR_VAR_REF
 xchain124_n50_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 13456], rax
 mov qword ptr [rbp + 13464], rdx
 jmp xchain124_n53_α
# IR_SUSPEND yield+resume
 xchain124_n51_α:
 lea rax, [rip + xchain124_n51_β]
 mov qword ptr [rbp + 15680], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$3_γ
 xchain124_n51_β:
 jmp xchain124_n36_α
 xchain124_n52_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+13760] -> [zr+13712]
 mov rax, qword ptr [rbp + 13760]
 mov qword ptr [rbp + 13712], rax
 mov rax, qword ptr [rbp + 13768]
 mov qword ptr [rbp + 13720], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 13712]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 13696], rax
 mov qword ptr [rbp + 13704], rdx
 cmp eax, 99
 je xchain124_n47_α
 jmp xchain124_n54_α
 xchain124_n52_β:
 jmp xchain124_n47_α
# IR_LIT_INTEGER
 xchain124_n53_α:
 mov qword ptr [rbp + 13488], 6
 mov rax, qword ptr [rip + .Lx197_0]
 mov qword ptr [rbp + 13496], rax
 jmp xchain124_n55_α
.Lx197_0:
 .quad 6
# IR_VAR_REF
 xchain124_n54_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 13632], rax
 mov qword ptr [rbp + 13640], rdx
 jmp xchain124_n56_α
 xchain124_n55_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+13456] -> [zr+13408]
 mov rax, qword ptr [rbp + 13456]
 mov qword ptr [rbp + 13408], rax
 mov rax, qword ptr [rbp + 13464]
 mov qword ptr [rbp + 13416], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 13408]
 movabs rsi, 6
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 13392], rax
 mov qword ptr [rbp + 13400], rdx
 cmp eax, 99
 je xchain124_n58_α
 jmp xchain124_n57_α
 xchain124_n55_β:
 jmp xchain124_n58_α
# IR_LIT_INTEGER
 xchain124_n56_α:
 mov qword ptr [rbp + 13664], 6
 mov rax, qword ptr [rip + .Lx201_0]
 mov qword ptr [rbp + 13672], rax
 jmp xchain124_n59_α
.Lx201_0:
 .quad 0
# IR_VAR_REF
 xchain124_n57_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 13328], rax
 mov qword ptr [rbp + 13336], rdx
 jmp xchain124_n60_α
 xchain124_n58_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+13104]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 13104], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 13112], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 13104]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 13088], rax
 mov qword ptr [rbp + 13096], rdx
 cmp eax, 99
 je proc_cal_key$3_ω
 jmp xchain124_n61_α
 xchain124_n58_β:
 jmp proc_cal_key$3_ω
 xchain124_n59_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+13632] -> [zr+13584]
 mov rax, qword ptr [rbp + 13632]
 mov qword ptr [rbp + 13584], rax
 mov rax, qword ptr [rbp + 13640]
 mov qword ptr [rbp + 13592], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 13584]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 13568], rax
 mov qword ptr [rbp + 13576], rdx
 cmp eax, 99
 je xchain124_n47_α
 jmp xchain124_n62_α
 xchain124_n59_β:
 jmp xchain124_n47_α
# IR_LIT_INTEGER
 xchain124_n60_α:
 mov qword ptr [rbp + 13360], 6
 mov rax, qword ptr [rip + .Lx206_0]
 mov qword ptr [rbp + 13368], rax
 jmp xchain124_n63_α
.Lx206_0:
 .quad 3
# IR_VAR_REF
 xchain124_n61_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 13024], rax
 mov qword ptr [rbp + 13032], rdx
 jmp xchain124_n64_α
# IR_SUSPEND yield+resume
 xchain124_n62_α:
 lea rax, [rip + xchain124_n62_β]
 mov qword ptr [rbp + 15680], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$3_γ
 xchain124_n62_β:
 jmp xchain124_n47_α
 xchain124_n63_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+13328] -> [zr+13280]
 mov rax, qword ptr [rbp + 13328]
 mov qword ptr [rbp + 13280], rax
 mov rax, qword ptr [rbp + 13336]
 mov qword ptr [rbp + 13288], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 13280]
 movabs rsi, 3
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 13264], rax
 mov qword ptr [rbp + 13272], rdx
 cmp eax, 99
 je xchain124_n58_α
 jmp xchain124_n65_α
 xchain124_n63_β:
 jmp xchain124_n58_α
# IR_LIT_INTEGER
 xchain124_n64_α:
 mov qword ptr [rbp + 13056], 6
 mov rax, qword ptr [rip + .Lx212_0]
 mov qword ptr [rbp + 13064], rax
 jmp xchain124_n66_α
.Lx212_0:
 .quad 7
# IR_VAR_REF
 xchain124_n65_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 13200], rax
 mov qword ptr [rbp + 13208], rdx
 jmp xchain124_n67_α
 xchain124_n66_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+13024] -> [zr+12976]
 mov rax, qword ptr [rbp + 13024]
 mov qword ptr [rbp + 12976], rax
 mov rax, qword ptr [rbp + 13032]
 mov qword ptr [rbp + 12984], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 12976]
 movabs rsi, 7
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 12960], rax
 mov qword ptr [rbp + 12968], rdx
 cmp eax, 99
 je xchain124_n69_α
 jmp xchain124_n68_α
 xchain124_n66_β:
 jmp xchain124_n69_α
# IR_LIT_INTEGER
 xchain124_n67_α:
 mov qword ptr [rbp + 13232], 6
 mov rax, qword ptr [rip + .Lx216_0]
 mov qword ptr [rbp + 13240], rax
 jmp xchain124_n70_α
.Lx216_0:
 .quad 0
# IR_VAR_REF
 xchain124_n68_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 12896], rax
 mov qword ptr [rbp + 12904], rdx
 jmp xchain124_n71_α
 xchain124_n69_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+12672]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 12672], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 12680], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 12672]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 12656], rax
 mov qword ptr [rbp + 12664], rdx
 cmp eax, 99
 je proc_cal_key$3_ω
 jmp xchain124_n72_α
 xchain124_n69_β:
 jmp proc_cal_key$3_ω
 xchain124_n70_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+13200] -> [zr+13152]
 mov rax, qword ptr [rbp + 13200]
 mov qword ptr [rbp + 13152], rax
 mov rax, qword ptr [rbp + 13208]
 mov qword ptr [rbp + 13160], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 13152]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 13136], rax
 mov qword ptr [rbp + 13144], rdx
 cmp eax, 99
 je xchain124_n58_α
 jmp xchain124_n73_α
 xchain124_n70_β:
 jmp xchain124_n58_α
# IR_LIT_INTEGER
 xchain124_n71_α:
 mov qword ptr [rbp + 12928], 6
 mov rax, qword ptr [rip + .Lx221_0]
 mov qword ptr [rbp + 12936], rax
 jmp xchain124_n74_α
.Lx221_0:
 .quad 5
# IR_VAR_REF
 xchain124_n72_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 12592], rax
 mov qword ptr [rbp + 12600], rdx
 jmp xchain124_n75_α
# IR_SUSPEND yield+resume
 xchain124_n73_α:
 lea rax, [rip + xchain124_n73_β]
 mov qword ptr [rbp + 15680], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$3_γ
 xchain124_n73_β:
 jmp xchain124_n58_α
 xchain124_n74_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+12896] -> [zr+12848]
 mov rax, qword ptr [rbp + 12896]
 mov qword ptr [rbp + 12848], rax
 mov rax, qword ptr [rbp + 12904]
 mov qword ptr [rbp + 12856], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 12848]
 movabs rsi, 5
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 12832], rax
 mov qword ptr [rbp + 12840], rdx
 cmp eax, 99
 je xchain124_n69_α
 jmp xchain124_n76_α
 xchain124_n74_β:
 jmp xchain124_n69_α
# IR_LIT_INTEGER
 xchain124_n75_α:
 mov qword ptr [rbp + 12624], 6
 mov rax, qword ptr [rip + .Lx227_0]
 mov qword ptr [rbp + 12632], rax
 jmp xchain124_n77_α
.Lx227_0:
 .quad 8
# IR_VAR_REF
 xchain124_n76_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 12768], rax
 mov qword ptr [rbp + 12776], rdx
 jmp xchain124_n78_α
 xchain124_n77_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+12592] -> [zr+12544]
 mov rax, qword ptr [rbp + 12592]
 mov qword ptr [rbp + 12544], rax
 mov rax, qword ptr [rbp + 12600]
 mov qword ptr [rbp + 12552], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 12544]
 movabs rsi, 8
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 12528], rax
 mov qword ptr [rbp + 12536], rdx
 cmp eax, 99
 je xchain124_n80_α
 jmp xchain124_n79_α
 xchain124_n77_β:
 jmp xchain124_n80_α
# IR_LIT_INTEGER
 xchain124_n78_α:
 mov qword ptr [rbp + 12800], 6
 mov rax, qword ptr [rip + .Lx231_0]
 mov qword ptr [rbp + 12808], rax
 jmp xchain124_n81_α
.Lx231_0:
 .quad 0
# IR_VAR_REF
 xchain124_n79_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 12464], rax
 mov qword ptr [rbp + 12472], rdx
 jmp xchain124_n82_α
 xchain124_n80_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+12240]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 12240], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 12248], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 12240]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 12224], rax
 mov qword ptr [rbp + 12232], rdx
 cmp eax, 99
 je proc_cal_key$3_ω
 jmp xchain124_n83_α
 xchain124_n80_β:
 jmp proc_cal_key$3_ω
 xchain124_n81_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+12768] -> [zr+12720]
 mov rax, qword ptr [rbp + 12768]
 mov qword ptr [rbp + 12720], rax
 mov rax, qword ptr [rbp + 12776]
 mov qword ptr [rbp + 12728], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 12720]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 12704], rax
 mov qword ptr [rbp + 12712], rdx
 cmp eax, 99
 je xchain124_n69_α
 jmp xchain124_n84_α
 xchain124_n81_β:
 jmp xchain124_n69_α
# IR_LIT_INTEGER
 xchain124_n82_α:
 mov qword ptr [rbp + 12496], 6
 mov rax, qword ptr [rip + .Lx236_0]
 mov qword ptr [rbp + 12504], rax
 jmp xchain124_n85_α
.Lx236_0:
 .quad 1
# IR_VAR_REF
 xchain124_n83_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 12160], rax
 mov qword ptr [rbp + 12168], rdx
 jmp xchain124_n86_α
# IR_SUSPEND yield+resume
 xchain124_n84_α:
 lea rax, [rip + xchain124_n84_β]
 mov qword ptr [rbp + 15680], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$3_γ
 xchain124_n84_β:
 jmp xchain124_n69_α
 xchain124_n85_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+12464] -> [zr+12416]
 mov rax, qword ptr [rbp + 12464]
 mov qword ptr [rbp + 12416], rax
 mov rax, qword ptr [rbp + 12472]
 mov qword ptr [rbp + 12424], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 12416]
 movabs rsi, 1
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 12400], rax
 mov qword ptr [rbp + 12408], rdx
 cmp eax, 99
 je xchain124_n80_α
 jmp xchain124_n87_α
 xchain124_n85_β:
 jmp xchain124_n80_α
# IR_LIT_INTEGER
 xchain124_n86_α:
 mov qword ptr [rbp + 12192], 6
 mov rax, qword ptr [rip + .Lx242_0]
 mov qword ptr [rbp + 12200], rax
 jmp xchain124_n88_α
.Lx242_0:
 .quad 9
# IR_VAR_REF
 xchain124_n87_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 12336], rax
 mov qword ptr [rbp + 12344], rdx
 jmp xchain124_n89_α
 xchain124_n88_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+12160] -> [zr+12112]
 mov rax, qword ptr [rbp + 12160]
 mov qword ptr [rbp + 12112], rax
 mov rax, qword ptr [rbp + 12168]
 mov qword ptr [rbp + 12120], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 12112]
 movabs rsi, 9
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 12096], rax
 mov qword ptr [rbp + 12104], rdx
 cmp eax, 99
 je xchain124_n91_α
 jmp xchain124_n90_α
 xchain124_n88_β:
 jmp xchain124_n91_α
# IR_LIT_INTEGER
 xchain124_n89_α:
 mov qword ptr [rbp + 12368], 6
 mov rax, qword ptr [rip + .Lx246_0]
 mov qword ptr [rbp + 12376], rax
 jmp xchain124_n92_α
.Lx246_0:
 .quad 0
# IR_VAR_REF
 xchain124_n90_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 12032], rax
 mov qword ptr [rbp + 12040], rdx
 jmp xchain124_n93_α
 xchain124_n91_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+11808]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 11808], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 11816], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 11808]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 11792], rax
 mov qword ptr [rbp + 11800], rdx
 cmp eax, 99
 je proc_cal_key$3_ω
 jmp xchain124_n94_α
 xchain124_n91_β:
 jmp proc_cal_key$3_ω
 xchain124_n92_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+12336] -> [zr+12288]
 mov rax, qword ptr [rbp + 12336]
 mov qword ptr [rbp + 12288], rax
 mov rax, qword ptr [rbp + 12344]
 mov qword ptr [rbp + 12296], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 12288]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 12272], rax
 mov qword ptr [rbp + 12280], rdx
 cmp eax, 99
 je xchain124_n80_α
 jmp xchain124_n95_α
 xchain124_n92_β:
 jmp xchain124_n80_α
# IR_LIT_INTEGER
 xchain124_n93_α:
 mov qword ptr [rbp + 12064], 6
 mov rax, qword ptr [rip + .Lx251_0]
 mov qword ptr [rbp + 12072], rax
 jmp xchain124_n96_α
.Lx251_0:
 .quad 4
# IR_VAR_REF
 xchain124_n94_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 11728], rax
 mov qword ptr [rbp + 11736], rdx
 jmp xchain124_n97_α
# IR_SUSPEND yield+resume
 xchain124_n95_α:
 lea rax, [rip + xchain124_n95_β]
 mov qword ptr [rbp + 15680], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$3_γ
 xchain124_n95_β:
 jmp xchain124_n80_α
 xchain124_n96_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+12032] -> [zr+11984]
 mov rax, qword ptr [rbp + 12032]
 mov qword ptr [rbp + 11984], rax
 mov rax, qword ptr [rbp + 12040]
 mov qword ptr [rbp + 11992], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 11984]
 movabs rsi, 4
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 11968], rax
 mov qword ptr [rbp + 11976], rdx
 cmp eax, 99
 je xchain124_n91_α
 jmp xchain124_n98_α
 xchain124_n96_β:
 jmp xchain124_n91_α
# IR_LIT_INTEGER
 xchain124_n97_α:
 mov qword ptr [rbp + 11760], 6
 mov rax, qword ptr [rip + .Lx257_0]
 mov qword ptr [rbp + 11768], rax
 jmp xchain124_n99_α
.Lx257_0:
 .quad 10
# IR_VAR_REF
 xchain124_n98_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 11904], rax
 mov qword ptr [rbp + 11912], rdx
 jmp xchain124_n100_α
 xchain124_n99_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11728] -> [zr+11680]
 mov rax, qword ptr [rbp + 11728]
 mov qword ptr [rbp + 11680], rax
 mov rax, qword ptr [rbp + 11736]
 mov qword ptr [rbp + 11688], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 11680]
 movabs rsi, 10
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 11664], rax
 mov qword ptr [rbp + 11672], rdx
 cmp eax, 99
 je xchain124_n102_α
 jmp xchain124_n101_α
 xchain124_n99_β:
 jmp xchain124_n102_α
# IR_LIT_INTEGER
 xchain124_n100_α:
 mov qword ptr [rbp + 11936], 6
 mov rax, qword ptr [rip + .Lx261_0]
 mov qword ptr [rbp + 11944], rax
 jmp xchain124_n103_α
.Lx261_0:
 .quad 0
# IR_VAR_REF
 xchain124_n101_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 11600], rax
 mov qword ptr [rbp + 11608], rdx
 jmp xchain124_n104_α
 xchain124_n102_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+11376]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 11376], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 11384], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 11376]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 11360], rax
 mov qword ptr [rbp + 11368], rdx
 cmp eax, 99
 je proc_cal_key$3_ω
 jmp xchain124_n105_α
 xchain124_n102_β:
 jmp proc_cal_key$3_ω
 xchain124_n103_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11904] -> [zr+11856]
 mov rax, qword ptr [rbp + 11904]
 mov qword ptr [rbp + 11856], rax
 mov rax, qword ptr [rbp + 11912]
 mov qword ptr [rbp + 11864], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 11856]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 11840], rax
 mov qword ptr [rbp + 11848], rdx
 cmp eax, 99
 je xchain124_n91_α
 jmp xchain124_n106_α
 xchain124_n103_β:
 jmp xchain124_n91_α
# IR_LIT_INTEGER
 xchain124_n104_α:
 mov qword ptr [rbp + 11632], 6
 mov rax, qword ptr [rip + .Lx266_0]
 mov qword ptr [rbp + 11640], rax
 jmp xchain124_n107_α
.Lx266_0:
 .quad 6
# IR_VAR_REF
 xchain124_n105_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 11296], rax
 mov qword ptr [rbp + 11304], rdx
 jmp xchain124_n108_α
# IR_SUSPEND yield+resume
 xchain124_n106_α:
 lea rax, [rip + xchain124_n106_β]
 mov qword ptr [rbp + 15680], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$3_γ
 xchain124_n106_β:
 jmp xchain124_n91_α
 xchain124_n107_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11600] -> [zr+11552]
 mov rax, qword ptr [rbp + 11600]
 mov qword ptr [rbp + 11552], rax
 mov rax, qword ptr [rbp + 11608]
 mov qword ptr [rbp + 11560], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 11552]
 movabs rsi, 6
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 11536], rax
 mov qword ptr [rbp + 11544], rdx
 cmp eax, 99
 je xchain124_n102_α
 jmp xchain124_n109_α
 xchain124_n107_β:
 jmp xchain124_n102_α
# IR_LIT_INTEGER
 xchain124_n108_α:
 mov qword ptr [rbp + 11328], 6
 mov rax, qword ptr [rip + .Lx272_0]
 mov qword ptr [rbp + 11336], rax
 jmp xchain124_n110_α
.Lx272_0:
 .quad 11
# IR_VAR_REF
 xchain124_n109_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 11472], rax
 mov qword ptr [rbp + 11480], rdx
 jmp xchain124_n111_α
 xchain124_n110_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11296] -> [zr+11248]
 mov rax, qword ptr [rbp + 11296]
 mov qword ptr [rbp + 11248], rax
 mov rax, qword ptr [rbp + 11304]
 mov qword ptr [rbp + 11256], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 11248]
 movabs rsi, 11
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 11232], rax
 mov qword ptr [rbp + 11240], rdx
 cmp eax, 99
 je xchain124_n113_α
 jmp xchain124_n112_α
 xchain124_n110_β:
 jmp xchain124_n113_α
# IR_LIT_INTEGER
 xchain124_n111_α:
 mov qword ptr [rbp + 11504], 6
 mov rax, qword ptr [rip + .Lx276_0]
 mov qword ptr [rbp + 11512], rax
 jmp xchain124_n114_α
.Lx276_0:
 .quad 0
# IR_VAR_REF
 xchain124_n112_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 11168], rax
 mov qword ptr [rbp + 11176], rdx
 jmp xchain124_n115_α
 xchain124_n113_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+10944]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 10944], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 10952], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 10944]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 10928], rax
 mov qword ptr [rbp + 10936], rdx
 cmp eax, 99
 je proc_cal_key$3_ω
 jmp xchain124_n116_α
 xchain124_n113_β:
 jmp proc_cal_key$3_ω
 xchain124_n114_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11472] -> [zr+11424]
 mov rax, qword ptr [rbp + 11472]
 mov qword ptr [rbp + 11424], rax
 mov rax, qword ptr [rbp + 11480]
 mov qword ptr [rbp + 11432], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 11424]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 11408], rax
 mov qword ptr [rbp + 11416], rdx
 cmp eax, 99
 je xchain124_n102_α
 jmp xchain124_n117_α
 xchain124_n114_β:
 jmp xchain124_n102_α
# IR_LIT_INTEGER
 xchain124_n115_α:
 mov qword ptr [rbp + 11200], 6
 mov rax, qword ptr [rip + .Lx281_0]
 mov qword ptr [rbp + 11208], rax
 jmp xchain124_n118_α
.Lx281_0:
 .quad 2
# IR_VAR_REF
 xchain124_n116_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 10864], rax
 mov qword ptr [rbp + 10872], rdx
 jmp xchain124_n119_α
# IR_SUSPEND yield+resume
 xchain124_n117_α:
 lea rax, [rip + xchain124_n117_β]
 mov qword ptr [rbp + 15680], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$3_γ
 xchain124_n117_β:
 jmp xchain124_n102_α
 xchain124_n118_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11168] -> [zr+11120]
 mov rax, qword ptr [rbp + 11168]
 mov qword ptr [rbp + 11120], rax
 mov rax, qword ptr [rbp + 11176]
 mov qword ptr [rbp + 11128], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 11120]
 movabs rsi, 2
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 11104], rax
 mov qword ptr [rbp + 11112], rdx
 cmp eax, 99
 je xchain124_n113_α
 jmp xchain124_n120_α
 xchain124_n118_β:
 jmp xchain124_n113_α
# IR_LIT_INTEGER
 xchain124_n119_α:
 mov qword ptr [rbp + 10896], 6
 mov rax, qword ptr [rip + .Lx287_0]
 mov qword ptr [rbp + 10904], rax
 jmp xchain124_n121_α
.Lx287_0:
 .quad 12
# IR_VAR_REF
 xchain124_n120_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 11040], rax
 mov qword ptr [rbp + 11048], rdx
 jmp xchain124_n122_α
 xchain124_n121_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10864] -> [zr+10816]
 mov rax, qword ptr [rbp + 10864]
 mov qword ptr [rbp + 10816], rax
 mov rax, qword ptr [rbp + 10872]
 mov qword ptr [rbp + 10824], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 10816]
 movabs rsi, 12
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 10800], rax
 mov qword ptr [rbp + 10808], rdx
 cmp eax, 99
 je xchain124_n124_α
 jmp xchain124_n123_α
 xchain124_n121_β:
 jmp xchain124_n124_α
# IR_LIT_INTEGER
 xchain124_n122_α:
 mov qword ptr [rbp + 11072], 6
 mov rax, qword ptr [rip + .Lx291_0]
 mov qword ptr [rbp + 11080], rax
 jmp xchain124_n125_α
.Lx291_0:
 .quad 0
# IR_VAR_REF
 xchain124_n123_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 10736], rax
 mov qword ptr [rbp + 10744], rdx
 jmp xchain124_n126_α
 xchain124_n124_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+10512]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 10512], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 10520], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 10512]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 10496], rax
 mov qword ptr [rbp + 10504], rdx
 cmp eax, 99
 je proc_cal_key$3_ω
 jmp xchain124_n127_α
 xchain124_n124_β:
 jmp proc_cal_key$3_ω
 xchain124_n125_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11040] -> [zr+10992]
 mov rax, qword ptr [rbp + 11040]
 mov qword ptr [rbp + 10992], rax
 mov rax, qword ptr [rbp + 11048]
 mov qword ptr [rbp + 11000], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 10992]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 10976], rax
 mov qword ptr [rbp + 10984], rdx
 cmp eax, 99
 je xchain124_n113_α
 jmp xchain124_n128_α
 xchain124_n125_β:
 jmp xchain124_n113_α
# IR_LIT_INTEGER
 xchain124_n126_α:
 mov qword ptr [rbp + 10768], 6
 mov rax, qword ptr [rip + .Lx296_0]
 mov qword ptr [rbp + 10776], rax
 jmp xchain124_n129_α
.Lx296_0:
 .quad 4
# IR_VAR_REF
 xchain124_n127_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 10432], rax
 mov qword ptr [rbp + 10440], rdx
 jmp xchain124_n130_α
# IR_SUSPEND yield+resume
 xchain124_n128_α:
 lea rax, [rip + xchain124_n128_β]
 mov qword ptr [rbp + 15680], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$3_γ
 xchain124_n128_β:
 jmp xchain124_n113_α
 xchain124_n129_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10736] -> [zr+10688]
 mov rax, qword ptr [rbp + 10736]
 mov qword ptr [rbp + 10688], rax
 mov rax, qword ptr [rbp + 10744]
 mov qword ptr [rbp + 10696], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 10688]
 movabs rsi, 4
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 10672], rax
 mov qword ptr [rbp + 10680], rdx
 cmp eax, 99
 je xchain124_n124_α
 jmp xchain124_n131_α
 xchain124_n129_β:
 jmp xchain124_n124_α
# IR_LIT_STRING
 xchain124_n130_α:
 mov qword ptr [rbp + 10464], 1
 mov rax, qword ptr [rip + .Lx302_0]
 mov qword ptr [rbp + 10472], rax
 jmp xchain124_n132_α
.Lx302_0:
 .quad .Lx302_0_s
.Lx302_0_s:
 .string "jan"
# IR_VAR_REF
 xchain124_n131_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 10608], rax
 mov qword ptr [rbp + 10616], rdx
 jmp xchain124_n133_α
 xchain124_n132_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10432] -> [zr+10384]
 mov rax, qword ptr [rbp + 10432]
 mov qword ptr [rbp + 10384], rax
 mov rax, qword ptr [rbp + 10440]
 mov qword ptr [rbp + 10392], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 10384]
 mov rsi, qword ptr [rip + .Lx305_2]
 jmp .Lx305_3
.Lx305_2:
 .quad .Lx305_2_s
.Lx305_2_s:
 .string "jan"
.Lx305_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 10368], rax
 mov qword ptr [rbp + 10376], rdx
 cmp eax, 99
 je xchain124_n135_α
 jmp xchain124_n134_α
 xchain124_n132_β:
 jmp xchain124_n135_α
# IR_LIT_INTEGER
 xchain124_n133_α:
 mov qword ptr [rbp + 10640], 6
 mov rax, qword ptr [rip + .Lx306_0]
 mov qword ptr [rbp + 10648], rax
 jmp xchain124_n136_α
.Lx306_0:
 .quad 0
# IR_VAR_REF
 xchain124_n134_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 10304], rax
 mov qword ptr [rbp + 10312], rdx
 jmp xchain124_n137_α
 xchain124_n135_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+10080]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 10080], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 10088], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 10080]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 10064], rax
 mov qword ptr [rbp + 10072], rdx
 cmp eax, 99
 je proc_cal_key$3_ω
 jmp xchain124_n138_α
 xchain124_n135_β:
 jmp proc_cal_key$3_ω
 xchain124_n136_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10608] -> [zr+10560]
 mov rax, qword ptr [rbp + 10608]
 mov qword ptr [rbp + 10560], rax
 mov rax, qword ptr [rbp + 10616]
 mov qword ptr [rbp + 10568], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 10560]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 10544], rax
 mov qword ptr [rbp + 10552], rdx
 cmp eax, 99
 je xchain124_n124_α
 jmp xchain124_n139_α
 xchain124_n136_β:
 jmp xchain124_n124_α
# IR_LIT_INTEGER
 xchain124_n137_α:
 mov qword ptr [rbp + 10336], 6
 mov rax, qword ptr [rip + .Lx311_0]
 mov qword ptr [rbp + 10344], rax
 jmp xchain124_n140_α
.Lx311_0:
 .quad 6
# IR_VAR_REF
 xchain124_n138_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 10000], rax
 mov qword ptr [rbp + 10008], rdx
 jmp xchain124_n141_α
# IR_SUSPEND yield+resume
 xchain124_n139_α:
 lea rax, [rip + xchain124_n139_β]
 mov qword ptr [rbp + 15680], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$3_γ
 xchain124_n139_β:
 jmp xchain124_n124_α
 xchain124_n140_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10304] -> [zr+10256]
 mov rax, qword ptr [rbp + 10304]
 mov qword ptr [rbp + 10256], rax
 mov rax, qword ptr [rbp + 10312]
 mov qword ptr [rbp + 10264], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 10256]
 movabs rsi, 6
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 10240], rax
 mov qword ptr [rbp + 10248], rdx
 cmp eax, 99
 je xchain124_n135_α
 jmp xchain124_n142_α
 xchain124_n140_β:
 jmp xchain124_n135_α
# IR_LIT_STRING
 xchain124_n141_α:
 mov qword ptr [rbp + 10032], 1
 mov rax, qword ptr [rip + .Lx317_0]
 mov qword ptr [rbp + 10040], rax
 jmp xchain124_n143_α
.Lx317_0:
 .quad .Lx317_0_s
.Lx317_0_s:
 .string "feb"
# IR_VAR_REF
 xchain124_n142_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 10176], rax
 mov qword ptr [rbp + 10184], rdx
 jmp xchain124_n144_α
 xchain124_n143_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10000] -> [zr+9952]
 mov rax, qword ptr [rbp + 10000]
 mov qword ptr [rbp + 9952], rax
 mov rax, qword ptr [rbp + 10008]
 mov qword ptr [rbp + 9960], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 9952]
 mov rsi, qword ptr [rip + .Lx320_2]
 jmp .Lx320_3
.Lx320_2:
 .quad .Lx320_2_s
.Lx320_2_s:
 .string "feb"
.Lx320_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 9936], rax
 mov qword ptr [rbp + 9944], rdx
 cmp eax, 99
 je xchain124_n146_α
 jmp xchain124_n145_α
 xchain124_n143_β:
 jmp xchain124_n146_α
# IR_LIT_INTEGER
 xchain124_n144_α:
 mov qword ptr [rbp + 10208], 6
 mov rax, qword ptr [rip + .Lx321_0]
 mov qword ptr [rbp + 10216], rax
 jmp xchain124_n147_α
.Lx321_0:
 .quad 1
# IR_VAR_REF
 xchain124_n145_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 9872], rax
 mov qword ptr [rbp + 9880], rdx
 jmp xchain124_n148_α
 xchain124_n146_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+9648]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 9648], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 9656], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 9648]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 9632], rax
 mov qword ptr [rbp + 9640], rdx
 cmp eax, 99
 je proc_cal_key$3_ω
 jmp xchain124_n149_α
 xchain124_n146_β:
 jmp proc_cal_key$3_ω
 xchain124_n147_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10176] -> [zr+10128]
 mov rax, qword ptr [rbp + 10176]
 mov qword ptr [rbp + 10128], rax
 mov rax, qword ptr [rbp + 10184]
 mov qword ptr [rbp + 10136], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 10128]
 movabs rsi, 1
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 10112], rax
 mov qword ptr [rbp + 10120], rdx
 cmp eax, 99
 je xchain124_n135_α
 jmp xchain124_n150_α
 xchain124_n147_β:
 jmp xchain124_n135_α
# IR_LIT_INTEGER
 xchain124_n148_α:
 mov qword ptr [rbp + 9904], 6
 mov rax, qword ptr [rip + .Lx326_0]
 mov qword ptr [rbp + 9912], rax
 jmp xchain124_n151_α
.Lx326_0:
 .quad 2
# IR_VAR_REF
 xchain124_n149_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 9568], rax
 mov qword ptr [rbp + 9576], rdx
 jmp xchain124_n152_α
# IR_SUSPEND yield+resume
 xchain124_n150_α:
 lea rax, [rip + xchain124_n150_β]
 mov qword ptr [rbp + 15680], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$3_γ
 xchain124_n150_β:
 jmp xchain124_n135_α
 xchain124_n151_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9872] -> [zr+9824]
 mov rax, qword ptr [rbp + 9872]
 mov qword ptr [rbp + 9824], rax
 mov rax, qword ptr [rbp + 9880]
 mov qword ptr [rbp + 9832], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 9824]
 movabs rsi, 2
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 9808], rax
 mov qword ptr [rbp + 9816], rdx
 cmp eax, 99
 je xchain124_n146_α
 jmp xchain124_n153_α
 xchain124_n151_β:
 jmp xchain124_n146_α
# IR_LIT_STRING
 xchain124_n152_α:
 mov qword ptr [rbp + 9600], 1
 mov rax, qword ptr [rip + .Lx332_0]
 mov qword ptr [rbp + 9608], rax
 jmp xchain124_n154_α
.Lx332_0:
 .quad .Lx332_0_s
.Lx332_0_s:
 .string "mar"
# IR_VAR_REF
 xchain124_n153_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 9744], rax
 mov qword ptr [rbp + 9752], rdx
 jmp xchain124_n155_α
 xchain124_n154_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9568] -> [zr+9520]
 mov rax, qword ptr [rbp + 9568]
 mov qword ptr [rbp + 9520], rax
 mov rax, qword ptr [rbp + 9576]
 mov qword ptr [rbp + 9528], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 9520]
 mov rsi, qword ptr [rip + .Lx335_2]
 jmp .Lx335_3
.Lx335_2:
 .quad .Lx335_2_s
.Lx335_2_s:
 .string "mar"
.Lx335_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 9504], rax
 mov qword ptr [rbp + 9512], rdx
 cmp eax, 99
 je xchain124_n157_α
 jmp xchain124_n156_α
 xchain124_n154_β:
 jmp xchain124_n157_α
# IR_LIT_INTEGER
 xchain124_n155_α:
 mov qword ptr [rbp + 9776], 6
 mov rax, qword ptr [rip + .Lx336_0]
 mov qword ptr [rbp + 9784], rax
 jmp xchain124_n158_α
.Lx336_0:
 .quad 1
# IR_VAR_REF
 xchain124_n156_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 9440], rax
 mov qword ptr [rbp + 9448], rdx
 jmp xchain124_n159_α
 xchain124_n157_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+9216]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 9216], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 9224], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 9216]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 9200], rax
 mov qword ptr [rbp + 9208], rdx
 cmp eax, 99
 je proc_cal_key$3_ω
 jmp xchain124_n160_α
 xchain124_n157_β:
 jmp proc_cal_key$3_ω
 xchain124_n158_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9744] -> [zr+9696]
 mov rax, qword ptr [rbp + 9744]
 mov qword ptr [rbp + 9696], rax
 mov rax, qword ptr [rbp + 9752]
 mov qword ptr [rbp + 9704], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 9696]
 movabs rsi, 1
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 9680], rax
 mov qword ptr [rbp + 9688], rdx
 cmp eax, 99
 je xchain124_n146_α
 jmp xchain124_n161_α
 xchain124_n158_β:
 jmp xchain124_n146_α
# IR_LIT_INTEGER
 xchain124_n159_α:
 mov qword ptr [rbp + 9472], 6
 mov rax, qword ptr [rip + .Lx341_0]
 mov qword ptr [rbp + 9480], rax
 jmp xchain124_n162_α
.Lx341_0:
 .quad 2
# IR_VAR_REF
 xchain124_n160_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 9136], rax
 mov qword ptr [rbp + 9144], rdx
 jmp xchain124_n163_α
# IR_SUSPEND yield+resume
 xchain124_n161_α:
 lea rax, [rip + xchain124_n161_β]
 mov qword ptr [rbp + 15680], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$3_γ
 xchain124_n161_β:
 jmp xchain124_n146_α
 xchain124_n162_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9440] -> [zr+9392]
 mov rax, qword ptr [rbp + 9440]
 mov qword ptr [rbp + 9392], rax
 mov rax, qword ptr [rbp + 9448]
 mov qword ptr [rbp + 9400], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 9392]
 movabs rsi, 2
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 9376], rax
 mov qword ptr [rbp + 9384], rdx
 cmp eax, 99
 je xchain124_n157_α
 jmp xchain124_n164_α
 xchain124_n162_β:
 jmp xchain124_n157_α
# IR_LIT_STRING
 xchain124_n163_α:
 mov qword ptr [rbp + 9168], 1
 mov rax, qword ptr [rip + .Lx347_0]
 mov qword ptr [rbp + 9176], rax
 jmp xchain124_n165_α
.Lx347_0:
 .quad .Lx347_0_s
.Lx347_0_s:
 .string "apr"
# IR_VAR_REF
 xchain124_n164_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 9312], rax
 mov qword ptr [rbp + 9320], rdx
 jmp xchain124_n166_α
 xchain124_n165_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9136] -> [zr+9088]
 mov rax, qword ptr [rbp + 9136]
 mov qword ptr [rbp + 9088], rax
 mov rax, qword ptr [rbp + 9144]
 mov qword ptr [rbp + 9096], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 9088]
 mov rsi, qword ptr [rip + .Lx350_2]
 jmp .Lx350_3
.Lx350_2:
 .quad .Lx350_2_s
.Lx350_2_s:
 .string "apr"
.Lx350_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 9072], rax
 mov qword ptr [rbp + 9080], rdx
 cmp eax, 99
 je xchain124_n168_α
 jmp xchain124_n167_α
 xchain124_n165_β:
 jmp xchain124_n168_α
# IR_LIT_INTEGER
 xchain124_n166_α:
 mov qword ptr [rbp + 9344], 6
 mov rax, qword ptr [rip + .Lx351_0]
 mov qword ptr [rbp + 9352], rax
 jmp xchain124_n169_α
.Lx351_0:
 .quad 0
# IR_VAR_REF
 xchain124_n167_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 9008], rax
 mov qword ptr [rbp + 9016], rdx
 jmp xchain124_n170_α
 xchain124_n168_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+8784]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 8784], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8792], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 8784]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 8768], rax
 mov qword ptr [rbp + 8776], rdx
 cmp eax, 99
 je proc_cal_key$3_ω
 jmp xchain124_n171_α
 xchain124_n168_β:
 jmp proc_cal_key$3_ω
 xchain124_n169_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9312] -> [zr+9264]
 mov rax, qword ptr [rbp + 9312]
 mov qword ptr [rbp + 9264], rax
 mov rax, qword ptr [rbp + 9320]
 mov qword ptr [rbp + 9272], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 9264]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 9248], rax
 mov qword ptr [rbp + 9256], rdx
 cmp eax, 99
 je xchain124_n157_α
 jmp xchain124_n172_α
 xchain124_n169_β:
 jmp xchain124_n157_α
# IR_LIT_INTEGER
 xchain124_n170_α:
 mov qword ptr [rbp + 9040], 6
 mov rax, qword ptr [rip + .Lx356_0]
 mov qword ptr [rbp + 9048], rax
 jmp xchain124_n173_α
.Lx356_0:
 .quad 5
# IR_VAR_REF
 xchain124_n171_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 8704], rax
 mov qword ptr [rbp + 8712], rdx
 jmp xchain124_n174_α
# IR_SUSPEND yield+resume
 xchain124_n172_α:
 lea rax, [rip + xchain124_n172_β]
 mov qword ptr [rbp + 15680], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$3_γ
 xchain124_n172_β:
 jmp xchain124_n157_α
 xchain124_n173_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9008] -> [zr+8960]
 mov rax, qword ptr [rbp + 9008]
 mov qword ptr [rbp + 8960], rax
 mov rax, qword ptr [rbp + 9016]
 mov qword ptr [rbp + 8968], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 8960]
 movabs rsi, 5
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 8944], rax
 mov qword ptr [rbp + 8952], rdx
 cmp eax, 99
 je xchain124_n168_α
 jmp xchain124_n175_α
 xchain124_n173_β:
 jmp xchain124_n168_α
# IR_LIT_STRING
 xchain124_n174_α:
 mov qword ptr [rbp + 8736], 1
 mov rax, qword ptr [rip + .Lx362_0]
 mov qword ptr [rbp + 8744], rax
 jmp xchain124_n176_α
.Lx362_0:
 .quad .Lx362_0_s
.Lx362_0_s:
 .string "may"
# IR_VAR_REF
 xchain124_n175_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 8880], rax
 mov qword ptr [rbp + 8888], rdx
 jmp xchain124_n177_α
 xchain124_n176_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8704] -> [zr+8656]
 mov rax, qword ptr [rbp + 8704]
 mov qword ptr [rbp + 8656], rax
 mov rax, qword ptr [rbp + 8712]
 mov qword ptr [rbp + 8664], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 8656]
 mov rsi, qword ptr [rip + .Lx365_2]
 jmp .Lx365_3
.Lx365_2:
 .quad .Lx365_2_s
.Lx365_2_s:
 .string "may"
.Lx365_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 8640], rax
 mov qword ptr [rbp + 8648], rdx
 cmp eax, 99
 je xchain124_n179_α
 jmp xchain124_n178_α
 xchain124_n176_β:
 jmp xchain124_n179_α
# IR_LIT_INTEGER
 xchain124_n177_α:
 mov qword ptr [rbp + 8912], 6
 mov rax, qword ptr [rip + .Lx366_0]
 mov qword ptr [rbp + 8920], rax
 jmp xchain124_n180_α
.Lx366_0:
 .quad 0
# IR_VAR_REF
 xchain124_n178_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 8576], rax
 mov qword ptr [rbp + 8584], rdx
 jmp xchain124_n181_α
 xchain124_n179_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+8352]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 8352], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8360], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 8352]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 8336], rax
 mov qword ptr [rbp + 8344], rdx
 cmp eax, 99
 je proc_cal_key$3_ω
 jmp xchain124_n182_α
 xchain124_n179_β:
 jmp proc_cal_key$3_ω
 xchain124_n180_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8880] -> [zr+8832]
 mov rax, qword ptr [rbp + 8880]
 mov qword ptr [rbp + 8832], rax
 mov rax, qword ptr [rbp + 8888]
 mov qword ptr [rbp + 8840], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 8832]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 8816], rax
 mov qword ptr [rbp + 8824], rdx
 cmp eax, 99
 je xchain124_n168_α
 jmp xchain124_n183_α
 xchain124_n180_β:
 jmp xchain124_n168_α
# IR_LIT_INTEGER
 xchain124_n181_α:
 mov qword ptr [rbp + 8608], 6
 mov rax, qword ptr [rip + .Lx371_0]
 mov qword ptr [rbp + 8616], rax
 jmp xchain124_n184_α
.Lx371_0:
 .quad 0
# IR_VAR_REF
 xchain124_n182_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 8272], rax
 mov qword ptr [rbp + 8280], rdx
 jmp xchain124_n185_α
# IR_SUSPEND yield+resume
 xchain124_n183_α:
 lea rax, [rip + xchain124_n183_β]
 mov qword ptr [rbp + 15680], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$3_γ
 xchain124_n183_β:
 jmp xchain124_n168_α
 xchain124_n184_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8576] -> [zr+8528]
 mov rax, qword ptr [rbp + 8576]
 mov qword ptr [rbp + 8528], rax
 mov rax, qword ptr [rbp + 8584]
 mov qword ptr [rbp + 8536], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 8528]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 8512], rax
 mov qword ptr [rbp + 8520], rdx
 cmp eax, 99
 je xchain124_n179_α
 jmp xchain124_n186_α
 xchain124_n184_β:
 jmp xchain124_n179_α
# IR_LIT_STRING
 xchain124_n185_α:
 mov qword ptr [rbp + 8304], 1
 mov rax, qword ptr [rip + .Lx377_0]
 mov qword ptr [rbp + 8312], rax
 jmp xchain124_n187_α
.Lx377_0:
 .quad .Lx377_0_s
.Lx377_0_s:
 .string "jun"
# IR_VAR_REF
 xchain124_n186_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 8448], rax
 mov qword ptr [rbp + 8456], rdx
 jmp xchain124_n188_α
 xchain124_n187_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8272] -> [zr+8224]
 mov rax, qword ptr [rbp + 8272]
 mov qword ptr [rbp + 8224], rax
 mov rax, qword ptr [rbp + 8280]
 mov qword ptr [rbp + 8232], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 8224]
 mov rsi, qword ptr [rip + .Lx380_2]
 jmp .Lx380_3
.Lx380_2:
 .quad .Lx380_2_s
.Lx380_2_s:
 .string "jun"
.Lx380_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 8208], rax
 mov qword ptr [rbp + 8216], rdx
 cmp eax, 99
 je xchain124_n190_α
 jmp xchain124_n189_α
 xchain124_n187_β:
 jmp xchain124_n190_α
# IR_LIT_INTEGER
 xchain124_n188_α:
 mov qword ptr [rbp + 8480], 6
 mov rax, qword ptr [rip + .Lx381_0]
 mov qword ptr [rbp + 8488], rax
 jmp xchain124_n191_α
.Lx381_0:
 .quad 0
# IR_VAR_REF
 xchain124_n189_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 8144], rax
 mov qword ptr [rbp + 8152], rdx
 jmp xchain124_n192_α
 xchain124_n190_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+7920]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 7920], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 7928], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 7920]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 7904], rax
 mov qword ptr [rbp + 7912], rdx
 cmp eax, 99
 je proc_cal_key$3_ω
 jmp xchain124_n193_α
 xchain124_n190_β:
 jmp proc_cal_key$3_ω
 xchain124_n191_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8448] -> [zr+8400]
 mov rax, qword ptr [rbp + 8448]
 mov qword ptr [rbp + 8400], rax
 mov rax, qword ptr [rbp + 8456]
 mov qword ptr [rbp + 8408], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 8400]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 8384], rax
 mov qword ptr [rbp + 8392], rdx
 cmp eax, 99
 je xchain124_n179_α
 jmp xchain124_n194_α
 xchain124_n191_β:
 jmp xchain124_n179_α
# IR_LIT_INTEGER
 xchain124_n192_α:
 mov qword ptr [rbp + 8176], 6
 mov rax, qword ptr [rip + .Lx386_0]
 mov qword ptr [rbp + 8184], rax
 jmp xchain124_n195_α
.Lx386_0:
 .quad 3
# IR_VAR_REF
 xchain124_n193_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 7840], rax
 mov qword ptr [rbp + 7848], rdx
 jmp xchain124_n196_α
# IR_SUSPEND yield+resume
 xchain124_n194_α:
 lea rax, [rip + xchain124_n194_β]
 mov qword ptr [rbp + 15680], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$3_γ
 xchain124_n194_β:
 jmp xchain124_n179_α
 xchain124_n195_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8144] -> [zr+8096]
 mov rax, qword ptr [rbp + 8144]
 mov qword ptr [rbp + 8096], rax
 mov rax, qword ptr [rbp + 8152]
 mov qword ptr [rbp + 8104], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 8096]
 movabs rsi, 3
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 8080], rax
 mov qword ptr [rbp + 8088], rdx
 cmp eax, 99
 je xchain124_n190_α
 jmp xchain124_n197_α
 xchain124_n195_β:
 jmp xchain124_n190_α
# IR_LIT_STRING
 xchain124_n196_α:
 mov qword ptr [rbp + 7872], 1
 mov rax, qword ptr [rip + .Lx392_0]
 mov qword ptr [rbp + 7880], rax
 jmp xchain124_n198_α
.Lx392_0:
 .quad .Lx392_0_s
.Lx392_0_s:
 .string "jul"
# IR_VAR_REF
 xchain124_n197_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 8016], rax
 mov qword ptr [rbp + 8024], rdx
 jmp xchain124_n199_α
 xchain124_n198_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7840] -> [zr+7792]
 mov rax, qword ptr [rbp + 7840]
 mov qword ptr [rbp + 7792], rax
 mov rax, qword ptr [rbp + 7848]
 mov qword ptr [rbp + 7800], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 7792]
 mov rsi, qword ptr [rip + .Lx395_2]
 jmp .Lx395_3
.Lx395_2:
 .quad .Lx395_2_s
.Lx395_2_s:
 .string "jul"
.Lx395_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 7776], rax
 mov qword ptr [rbp + 7784], rdx
 cmp eax, 99
 je xchain124_n201_α
 jmp xchain124_n200_α
 xchain124_n198_β:
 jmp xchain124_n201_α
# IR_LIT_INTEGER
 xchain124_n199_α:
 mov qword ptr [rbp + 8048], 6
 mov rax, qword ptr [rip + .Lx396_0]
 mov qword ptr [rbp + 8056], rax
 jmp xchain124_n202_α
.Lx396_0:
 .quad 0
# IR_VAR_REF
 xchain124_n200_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 7712], rax
 mov qword ptr [rbp + 7720], rdx
 jmp xchain124_n203_α
 xchain124_n201_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+7488]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 7488], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 7496], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 7488]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 7472], rax
 mov qword ptr [rbp + 7480], rdx
 cmp eax, 99
 je proc_cal_key$3_ω
 jmp xchain124_n204_α
 xchain124_n201_β:
 jmp proc_cal_key$3_ω
 xchain124_n202_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8016] -> [zr+7968]
 mov rax, qword ptr [rbp + 8016]
 mov qword ptr [rbp + 7968], rax
 mov rax, qword ptr [rbp + 8024]
 mov qword ptr [rbp + 7976], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 7968]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 7952], rax
 mov qword ptr [rbp + 7960], rdx
 cmp eax, 99
 je xchain124_n190_α
 jmp xchain124_n205_α
 xchain124_n202_β:
 jmp xchain124_n190_α
# IR_LIT_INTEGER
 xchain124_n203_α:
 mov qword ptr [rbp + 7744], 6
 mov rax, qword ptr [rip + .Lx401_0]
 mov qword ptr [rbp + 7752], rax
 jmp xchain124_n206_α
.Lx401_0:
 .quad 5
# IR_VAR_REF
 xchain124_n204_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 7408], rax
 mov qword ptr [rbp + 7416], rdx
 jmp xchain124_n207_α
# IR_SUSPEND yield+resume
 xchain124_n205_α:
 lea rax, [rip + xchain124_n205_β]
 mov qword ptr [rbp + 15680], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$3_γ
 xchain124_n205_β:
 jmp xchain124_n190_α
 xchain124_n206_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7712] -> [zr+7664]
 mov rax, qword ptr [rbp + 7712]
 mov qword ptr [rbp + 7664], rax
 mov rax, qword ptr [rbp + 7720]
 mov qword ptr [rbp + 7672], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 7664]
 movabs rsi, 5
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 7648], rax
 mov qword ptr [rbp + 7656], rdx
 cmp eax, 99
 je xchain124_n201_α
 jmp xchain124_n208_α
 xchain124_n206_β:
 jmp xchain124_n201_α
# IR_LIT_STRING
 xchain124_n207_α:
 mov qword ptr [rbp + 7440], 1
 mov rax, qword ptr [rip + .Lx407_0]
 mov qword ptr [rbp + 7448], rax
 jmp xchain124_n209_α
.Lx407_0:
 .quad .Lx407_0_s
.Lx407_0_s:
 .string "aug"
# IR_VAR_REF
 xchain124_n208_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 7584], rax
 mov qword ptr [rbp + 7592], rdx
 jmp xchain124_n210_α
 xchain124_n209_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7408] -> [zr+7360]
 mov rax, qword ptr [rbp + 7408]
 mov qword ptr [rbp + 7360], rax
 mov rax, qword ptr [rbp + 7416]
 mov qword ptr [rbp + 7368], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 7360]
 mov rsi, qword ptr [rip + .Lx410_2]
 jmp .Lx410_3
.Lx410_2:
 .quad .Lx410_2_s
.Lx410_2_s:
 .string "aug"
.Lx410_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 7344], rax
 mov qword ptr [rbp + 7352], rdx
 cmp eax, 99
 je xchain124_n212_α
 jmp xchain124_n211_α
 xchain124_n209_β:
 jmp xchain124_n212_α
# IR_LIT_INTEGER
 xchain124_n210_α:
 mov qword ptr [rbp + 7616], 6
 mov rax, qword ptr [rip + .Lx411_0]
 mov qword ptr [rbp + 7624], rax
 jmp xchain124_n213_α
.Lx411_0:
 .quad 0
# IR_VAR_REF
 xchain124_n211_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 7280], rax
 mov qword ptr [rbp + 7288], rdx
 jmp xchain124_n214_α
 xchain124_n212_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+7056]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 7056], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 7064], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 7056]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 7040], rax
 mov qword ptr [rbp + 7048], rdx
 cmp eax, 99
 je proc_cal_key$3_ω
 jmp xchain124_n215_α
 xchain124_n212_β:
 jmp proc_cal_key$3_ω
 xchain124_n213_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7584] -> [zr+7536]
 mov rax, qword ptr [rbp + 7584]
 mov qword ptr [rbp + 7536], rax
 mov rax, qword ptr [rbp + 7592]
 mov qword ptr [rbp + 7544], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 7536]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 7520], rax
 mov qword ptr [rbp + 7528], rdx
 cmp eax, 99
 je xchain124_n201_α
 jmp xchain124_n216_α
 xchain124_n213_β:
 jmp xchain124_n201_α
# IR_LIT_INTEGER
 xchain124_n214_α:
 mov qword ptr [rbp + 7312], 6
 mov rax, qword ptr [rip + .Lx416_0]
 mov qword ptr [rbp + 7320], rax
 jmp xchain124_n217_α
.Lx416_0:
 .quad 1
# IR_VAR_REF
 xchain124_n215_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 6976], rax
 mov qword ptr [rbp + 6984], rdx
 jmp xchain124_n218_α
# IR_SUSPEND yield+resume
 xchain124_n216_α:
 lea rax, [rip + xchain124_n216_β]
 mov qword ptr [rbp + 15680], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$3_γ
 xchain124_n216_β:
 jmp xchain124_n201_α
 xchain124_n217_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7280] -> [zr+7232]
 mov rax, qword ptr [rbp + 7280]
 mov qword ptr [rbp + 7232], rax
 mov rax, qword ptr [rbp + 7288]
 mov qword ptr [rbp + 7240], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 7232]
 movabs rsi, 1
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 7216], rax
 mov qword ptr [rbp + 7224], rdx
 cmp eax, 99
 je xchain124_n212_α
 jmp xchain124_n219_α
 xchain124_n217_β:
 jmp xchain124_n212_α
# IR_LIT_STRING
 xchain124_n218_α:
 mov qword ptr [rbp + 7008], 1
 mov rax, qword ptr [rip + .Lx422_0]
 mov qword ptr [rbp + 7016], rax
 jmp xchain124_n220_α
.Lx422_0:
 .quad .Lx422_0_s
.Lx422_0_s:
 .string "sep"
# IR_VAR_REF
 xchain124_n219_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 7152], rax
 mov qword ptr [rbp + 7160], rdx
 jmp xchain124_n221_α
 xchain124_n220_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6976] -> [zr+6928]
 mov rax, qword ptr [rbp + 6976]
 mov qword ptr [rbp + 6928], rax
 mov rax, qword ptr [rbp + 6984]
 mov qword ptr [rbp + 6936], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 6928]
 mov rsi, qword ptr [rip + .Lx425_2]
 jmp .Lx425_3
.Lx425_2:
 .quad .Lx425_2_s
.Lx425_2_s:
 .string "sep"
.Lx425_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 6912], rax
 mov qword ptr [rbp + 6920], rdx
 cmp eax, 99
 je xchain124_n223_α
 jmp xchain124_n222_α
 xchain124_n220_β:
 jmp xchain124_n223_α
# IR_LIT_INTEGER
 xchain124_n221_α:
 mov qword ptr [rbp + 7184], 6
 mov rax, qword ptr [rip + .Lx426_0]
 mov qword ptr [rbp + 7192], rax
 jmp xchain124_n224_α
.Lx426_0:
 .quad 0
# IR_VAR_REF
 xchain124_n222_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 6848], rax
 mov qword ptr [rbp + 6856], rdx
 jmp xchain124_n225_α
 xchain124_n223_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+6624]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 6624], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 6632], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 6624]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 6608], rax
 mov qword ptr [rbp + 6616], rdx
 cmp eax, 99
 je proc_cal_key$3_ω
 jmp xchain124_n226_α
 xchain124_n223_β:
 jmp proc_cal_key$3_ω
 xchain124_n224_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7152] -> [zr+7104]
 mov rax, qword ptr [rbp + 7152]
 mov qword ptr [rbp + 7104], rax
 mov rax, qword ptr [rbp + 7160]
 mov qword ptr [rbp + 7112], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 7104]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 7088], rax
 mov qword ptr [rbp + 7096], rdx
 cmp eax, 99
 je xchain124_n212_α
 jmp xchain124_n227_α
 xchain124_n224_β:
 jmp xchain124_n212_α
# IR_LIT_INTEGER
 xchain124_n225_α:
 mov qword ptr [rbp + 6880], 6
 mov rax, qword ptr [rip + .Lx431_0]
 mov qword ptr [rbp + 6888], rax
 jmp xchain124_n228_α
.Lx431_0:
 .quad 4
# IR_VAR_REF
 xchain124_n226_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 6544], rax
 mov qword ptr [rbp + 6552], rdx
 jmp xchain124_n229_α
# IR_SUSPEND yield+resume
 xchain124_n227_α:
 lea rax, [rip + xchain124_n227_β]
 mov qword ptr [rbp + 15680], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$3_γ
 xchain124_n227_β:
 jmp xchain124_n212_α
 xchain124_n228_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6848] -> [zr+6800]
 mov rax, qword ptr [rbp + 6848]
 mov qword ptr [rbp + 6800], rax
 mov rax, qword ptr [rbp + 6856]
 mov qword ptr [rbp + 6808], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 6800]
 movabs rsi, 4
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 6784], rax
 mov qword ptr [rbp + 6792], rdx
 cmp eax, 99
 je xchain124_n223_α
 jmp xchain124_n230_α
 xchain124_n228_β:
 jmp xchain124_n223_α
# IR_LIT_STRING
 xchain124_n229_α:
 mov qword ptr [rbp + 6576], 1
 mov rax, qword ptr [rip + .Lx437_0]
 mov qword ptr [rbp + 6584], rax
 jmp xchain124_n231_α
.Lx437_0:
 .quad .Lx437_0_s
.Lx437_0_s:
 .string "oct"
# IR_VAR_REF
 xchain124_n230_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 6720], rax
 mov qword ptr [rbp + 6728], rdx
 jmp xchain124_n232_α
 xchain124_n231_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6544] -> [zr+6496]
 mov rax, qword ptr [rbp + 6544]
 mov qword ptr [rbp + 6496], rax
 mov rax, qword ptr [rbp + 6552]
 mov qword ptr [rbp + 6504], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 6496]
 mov rsi, qword ptr [rip + .Lx440_2]
 jmp .Lx440_3
.Lx440_2:
 .quad .Lx440_2_s
.Lx440_2_s:
 .string "oct"
.Lx440_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 6480], rax
 mov qword ptr [rbp + 6488], rdx
 cmp eax, 99
 je xchain124_n234_α
 jmp xchain124_n233_α
 xchain124_n231_β:
 jmp xchain124_n234_α
# IR_LIT_INTEGER
 xchain124_n232_α:
 mov qword ptr [rbp + 6752], 6
 mov rax, qword ptr [rip + .Lx441_0]
 mov qword ptr [rbp + 6760], rax
 jmp xchain124_n235_α
.Lx441_0:
 .quad 0
# IR_VAR_REF
 xchain124_n233_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 6416], rax
 mov qword ptr [rbp + 6424], rdx
 jmp xchain124_n236_α
 xchain124_n234_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+6192]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 6192], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 6200], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 6192]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 6176], rax
 mov qword ptr [rbp + 6184], rdx
 cmp eax, 99
 je proc_cal_key$3_ω
 jmp xchain124_n237_α
 xchain124_n234_β:
 jmp proc_cal_key$3_ω
 xchain124_n235_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6720] -> [zr+6672]
 mov rax, qword ptr [rbp + 6720]
 mov qword ptr [rbp + 6672], rax
 mov rax, qword ptr [rbp + 6728]
 mov qword ptr [rbp + 6680], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 6672]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 6656], rax
 mov qword ptr [rbp + 6664], rdx
 cmp eax, 99
 je xchain124_n223_α
 jmp xchain124_n238_α
 xchain124_n235_β:
 jmp xchain124_n223_α
# IR_LIT_INTEGER
 xchain124_n236_α:
 mov qword ptr [rbp + 6448], 6
 mov rax, qword ptr [rip + .Lx446_0]
 mov qword ptr [rbp + 6456], rax
 jmp xchain124_n239_α
.Lx446_0:
 .quad 6
# IR_VAR_REF
 xchain124_n237_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 6112], rax
 mov qword ptr [rbp + 6120], rdx
 jmp xchain124_n240_α
# IR_SUSPEND yield+resume
 xchain124_n238_α:
 lea rax, [rip + xchain124_n238_β]
 mov qword ptr [rbp + 15680], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$3_γ
 xchain124_n238_β:
 jmp xchain124_n223_α
 xchain124_n239_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6416] -> [zr+6368]
 mov rax, qword ptr [rbp + 6416]
 mov qword ptr [rbp + 6368], rax
 mov rax, qword ptr [rbp + 6424]
 mov qword ptr [rbp + 6376], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 6368]
 movabs rsi, 6
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 6352], rax
 mov qword ptr [rbp + 6360], rdx
 cmp eax, 99
 je xchain124_n234_α
 jmp xchain124_n241_α
 xchain124_n239_β:
 jmp xchain124_n234_α
# IR_LIT_STRING
 xchain124_n240_α:
 mov qword ptr [rbp + 6144], 1
 mov rax, qword ptr [rip + .Lx452_0]
 mov qword ptr [rbp + 6152], rax
 jmp xchain124_n242_α
.Lx452_0:
 .quad .Lx452_0_s
.Lx452_0_s:
 .string "nov"
# IR_VAR_REF
 xchain124_n241_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 6288], rax
 mov qword ptr [rbp + 6296], rdx
 jmp xchain124_n243_α
 xchain124_n242_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6112] -> [zr+6064]
 mov rax, qword ptr [rbp + 6112]
 mov qword ptr [rbp + 6064], rax
 mov rax, qword ptr [rbp + 6120]
 mov qword ptr [rbp + 6072], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 6064]
 mov rsi, qword ptr [rip + .Lx455_2]
 jmp .Lx455_3
.Lx455_2:
 .quad .Lx455_2_s
.Lx455_2_s:
 .string "nov"
.Lx455_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 6048], rax
 mov qword ptr [rbp + 6056], rdx
 cmp eax, 99
 je xchain124_n245_α
 jmp xchain124_n244_α
 xchain124_n242_β:
 jmp xchain124_n245_α
# IR_LIT_INTEGER
 xchain124_n243_α:
 mov qword ptr [rbp + 6320], 6
 mov rax, qword ptr [rip + .Lx456_0]
 mov qword ptr [rbp + 6328], rax
 jmp xchain124_n246_α
.Lx456_0:
 .quad 0
# IR_VAR_REF
 xchain124_n244_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 5984], rax
 mov qword ptr [rbp + 5992], rdx
 jmp xchain124_n247_α
 xchain124_n245_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+5760]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 5760], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 5768], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 5760]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 5744], rax
 mov qword ptr [rbp + 5752], rdx
 cmp eax, 99
 je proc_cal_key$3_ω
 jmp xchain124_n248_α
 xchain124_n245_β:
 jmp proc_cal_key$3_ω
 xchain124_n246_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6288] -> [zr+6240]
 mov rax, qword ptr [rbp + 6288]
 mov qword ptr [rbp + 6240], rax
 mov rax, qword ptr [rbp + 6296]
 mov qword ptr [rbp + 6248], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 6240]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 6224], rax
 mov qword ptr [rbp + 6232], rdx
 cmp eax, 99
 je xchain124_n234_α
 jmp xchain124_n249_α
 xchain124_n246_β:
 jmp xchain124_n234_α
# IR_LIT_INTEGER
 xchain124_n247_α:
 mov qword ptr [rbp + 6016], 6
 mov rax, qword ptr [rip + .Lx461_0]
 mov qword ptr [rbp + 6024], rax
 jmp xchain124_n250_α
.Lx461_0:
 .quad 2
# IR_VAR_REF
 xchain124_n248_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 5680], rax
 mov qword ptr [rbp + 5688], rdx
 jmp xchain124_n251_α
# IR_SUSPEND yield+resume
 xchain124_n249_α:
 lea rax, [rip + xchain124_n249_β]
 mov qword ptr [rbp + 15680], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$3_γ
 xchain124_n249_β:
 jmp xchain124_n234_α
 xchain124_n250_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5984] -> [zr+5936]
 mov rax, qword ptr [rbp + 5984]
 mov qword ptr [rbp + 5936], rax
 mov rax, qword ptr [rbp + 5992]
 mov qword ptr [rbp + 5944], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 5936]
 movabs rsi, 2
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 5920], rax
 mov qword ptr [rbp + 5928], rdx
 cmp eax, 99
 je xchain124_n245_α
 jmp xchain124_n252_α
 xchain124_n250_β:
 jmp xchain124_n245_α
# IR_LIT_STRING
 xchain124_n251_α:
 mov qword ptr [rbp + 5712], 1
 mov rax, qword ptr [rip + .Lx467_0]
 mov qword ptr [rbp + 5720], rax
 jmp xchain124_n253_α
.Lx467_0:
 .quad .Lx467_0_s
.Lx467_0_s:
 .string "dec"
# IR_VAR_REF
 xchain124_n252_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 5856], rax
 mov qword ptr [rbp + 5864], rdx
 jmp xchain124_n254_α
 xchain124_n253_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5680] -> [zr+5632]
 mov rax, qword ptr [rbp + 5680]
 mov qword ptr [rbp + 5632], rax
 mov rax, qword ptr [rbp + 5688]
 mov qword ptr [rbp + 5640], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 5632]
 mov rsi, qword ptr [rip + .Lx470_2]
 jmp .Lx470_3
.Lx470_2:
 .quad .Lx470_2_s
.Lx470_2_s:
 .string "dec"
.Lx470_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 5616], rax
 mov qword ptr [rbp + 5624], rdx
 cmp eax, 99
 je xchain124_n256_α
 jmp xchain124_n255_α
 xchain124_n253_β:
 jmp xchain124_n256_α
# IR_LIT_INTEGER
 xchain124_n254_α:
 mov qword ptr [rbp + 5888], 6
 mov rax, qword ptr [rip + .Lx471_0]
 mov qword ptr [rbp + 5896], rax
 jmp xchain124_n257_α
.Lx471_0:
 .quad 0
# IR_VAR_REF
 xchain124_n255_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 5552], rax
 mov qword ptr [rbp + 5560], rdx
 jmp xchain124_n258_α
 xchain124_n256_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+5328]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 5328], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 5336], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 5328]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 5312], rax
 mov qword ptr [rbp + 5320], rdx
 cmp eax, 99
 je proc_cal_key$3_ω
 jmp xchain124_n259_α
 xchain124_n256_β:
 jmp proc_cal_key$3_ω
 xchain124_n257_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5856] -> [zr+5808]
 mov rax, qword ptr [rbp + 5856]
 mov qword ptr [rbp + 5808], rax
 mov rax, qword ptr [rbp + 5864]
 mov qword ptr [rbp + 5816], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 5808]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 5792], rax
 mov qword ptr [rbp + 5800], rdx
 cmp eax, 99
 je xchain124_n245_α
 jmp xchain124_n260_α
 xchain124_n257_β:
 jmp xchain124_n245_α
# IR_LIT_INTEGER
 xchain124_n258_α:
 mov qword ptr [rbp + 5584], 6
 mov rax, qword ptr [rip + .Lx476_0]
 mov qword ptr [rbp + 5592], rax
 jmp xchain124_n261_α
.Lx476_0:
 .quad 4
# IR_VAR_REF
 xchain124_n259_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 5248], rax
 mov qword ptr [rbp + 5256], rdx
 jmp xchain124_n262_α
# IR_SUSPEND yield+resume
 xchain124_n260_α:
 lea rax, [rip + xchain124_n260_β]
 mov qword ptr [rbp + 15680], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$3_γ
 xchain124_n260_β:
 jmp xchain124_n245_α
 xchain124_n261_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5552] -> [zr+5504]
 mov rax, qword ptr [rbp + 5552]
 mov qword ptr [rbp + 5504], rax
 mov rax, qword ptr [rbp + 5560]
 mov qword ptr [rbp + 5512], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 5504]
 movabs rsi, 4
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 5488], rax
 mov qword ptr [rbp + 5496], rdx
 cmp eax, 99
 je xchain124_n256_α
 jmp xchain124_n263_α
 xchain124_n261_β:
 jmp xchain124_n256_α
# IR_LIT_STRING
 xchain124_n262_α:
 mov qword ptr [rbp + 5280], 1
 mov rax, qword ptr [rip + .Lx482_0]
 mov qword ptr [rbp + 5288], rax
 jmp xchain124_n264_α
.Lx482_0:
 .quad .Lx482_0_s
.Lx482_0_s:
 .string "January"
# IR_VAR_REF
 xchain124_n263_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 5424], rax
 mov qword ptr [rbp + 5432], rdx
 jmp xchain124_n265_α
 xchain124_n264_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5248] -> [zr+5200]
 mov rax, qword ptr [rbp + 5248]
 mov qword ptr [rbp + 5200], rax
 mov rax, qword ptr [rbp + 5256]
 mov qword ptr [rbp + 5208], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 5200]
 mov rsi, qword ptr [rip + .Lx485_2]
 jmp .Lx485_3
.Lx485_2:
 .quad .Lx485_2_s
.Lx485_2_s:
 .string "January"
.Lx485_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 5184], rax
 mov qword ptr [rbp + 5192], rdx
 cmp eax, 99
 je xchain124_n267_α
 jmp xchain124_n266_α
 xchain124_n264_β:
 jmp xchain124_n267_α
# IR_LIT_INTEGER
 xchain124_n265_α:
 mov qword ptr [rbp + 5456], 6
 mov rax, qword ptr [rip + .Lx486_0]
 mov qword ptr [rbp + 5464], rax
 jmp xchain124_n268_α
.Lx486_0:
 .quad 0
# IR_VAR_REF
 xchain124_n266_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 5120], rax
 mov qword ptr [rbp + 5128], rdx
 jmp xchain124_n269_α
 xchain124_n267_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+4896]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 4896], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 4904], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 4896]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 4880], rax
 mov qword ptr [rbp + 4888], rdx
 cmp eax, 99
 je proc_cal_key$3_ω
 jmp xchain124_n270_α
 xchain124_n267_β:
 jmp proc_cal_key$3_ω
 xchain124_n268_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5424] -> [zr+5376]
 mov rax, qword ptr [rbp + 5424]
 mov qword ptr [rbp + 5376], rax
 mov rax, qword ptr [rbp + 5432]
 mov qword ptr [rbp + 5384], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 5376]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 5360], rax
 mov qword ptr [rbp + 5368], rdx
 cmp eax, 99
 je xchain124_n256_α
 jmp xchain124_n271_α
 xchain124_n268_β:
 jmp xchain124_n256_α
# IR_LIT_INTEGER
 xchain124_n269_α:
 mov qword ptr [rbp + 5152], 6
 mov rax, qword ptr [rip + .Lx491_0]
 mov qword ptr [rbp + 5160], rax
 jmp xchain124_n272_α
.Lx491_0:
 .quad 6
# IR_VAR_REF
 xchain124_n270_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 4816], rax
 mov qword ptr [rbp + 4824], rdx
 jmp xchain124_n273_α
# IR_SUSPEND yield+resume
 xchain124_n271_α:
 lea rax, [rip + xchain124_n271_β]
 mov qword ptr [rbp + 15680], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$3_γ
 xchain124_n271_β:
 jmp xchain124_n256_α
 xchain124_n272_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5120] -> [zr+5072]
 mov rax, qword ptr [rbp + 5120]
 mov qword ptr [rbp + 5072], rax
 mov rax, qword ptr [rbp + 5128]
 mov qword ptr [rbp + 5080], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 5072]
 movabs rsi, 6
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 5056], rax
 mov qword ptr [rbp + 5064], rdx
 cmp eax, 99
 je xchain124_n267_α
 jmp xchain124_n274_α
 xchain124_n272_β:
 jmp xchain124_n267_α
# IR_LIT_STRING
 xchain124_n273_α:
 mov qword ptr [rbp + 4848], 1
 mov rax, qword ptr [rip + .Lx497_0]
 mov qword ptr [rbp + 4856], rax
 jmp xchain124_n275_α
.Lx497_0:
 .quad .Lx497_0_s
.Lx497_0_s:
 .string "February"
# IR_VAR_REF
 xchain124_n274_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 4992], rax
 mov qword ptr [rbp + 5000], rdx
 jmp xchain124_n276_α
 xchain124_n275_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4816] -> [zr+4768]
 mov rax, qword ptr [rbp + 4816]
 mov qword ptr [rbp + 4768], rax
 mov rax, qword ptr [rbp + 4824]
 mov qword ptr [rbp + 4776], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 4768]
 mov rsi, qword ptr [rip + .Lx500_2]
 jmp .Lx500_3
.Lx500_2:
 .quad .Lx500_2_s
.Lx500_2_s:
 .string "February"
.Lx500_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 4752], rax
 mov qword ptr [rbp + 4760], rdx
 cmp eax, 99
 je xchain124_n278_α
 jmp xchain124_n277_α
 xchain124_n275_β:
 jmp xchain124_n278_α
# IR_LIT_INTEGER
 xchain124_n276_α:
 mov qword ptr [rbp + 5024], 6
 mov rax, qword ptr [rip + .Lx501_0]
 mov qword ptr [rbp + 5032], rax
 jmp xchain124_n279_α
.Lx501_0:
 .quad 1
# IR_VAR_REF
 xchain124_n277_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 4688], rax
 mov qword ptr [rbp + 4696], rdx
 jmp xchain124_n280_α
 xchain124_n278_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+4464]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 4464], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 4472], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 4464]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 4448], rax
 mov qword ptr [rbp + 4456], rdx
 cmp eax, 99
 je proc_cal_key$3_ω
 jmp xchain124_n281_α
 xchain124_n278_β:
 jmp proc_cal_key$3_ω
 xchain124_n279_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4992] -> [zr+4944]
 mov rax, qword ptr [rbp + 4992]
 mov qword ptr [rbp + 4944], rax
 mov rax, qword ptr [rbp + 5000]
 mov qword ptr [rbp + 4952], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 4944]
 movabs rsi, 1
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 4928], rax
 mov qword ptr [rbp + 4936], rdx
 cmp eax, 99
 je xchain124_n267_α
 jmp xchain124_n282_α
 xchain124_n279_β:
 jmp xchain124_n267_α
# IR_LIT_INTEGER
 xchain124_n280_α:
 mov qword ptr [rbp + 4720], 6
 mov rax, qword ptr [rip + .Lx506_0]
 mov qword ptr [rbp + 4728], rax
 jmp xchain124_n283_α
.Lx506_0:
 .quad 2
# IR_VAR_REF
 xchain124_n281_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 4384], rax
 mov qword ptr [rbp + 4392], rdx
 jmp xchain124_n284_α
# IR_SUSPEND yield+resume
 xchain124_n282_α:
 lea rax, [rip + xchain124_n282_β]
 mov qword ptr [rbp + 15680], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$3_γ
 xchain124_n282_β:
 jmp xchain124_n267_α
 xchain124_n283_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4688] -> [zr+4640]
 mov rax, qword ptr [rbp + 4688]
 mov qword ptr [rbp + 4640], rax
 mov rax, qword ptr [rbp + 4696]
 mov qword ptr [rbp + 4648], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 4640]
 movabs rsi, 2
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 4624], rax
 mov qword ptr [rbp + 4632], rdx
 cmp eax, 99
 je xchain124_n278_α
 jmp xchain124_n285_α
 xchain124_n283_β:
 jmp xchain124_n278_α
# IR_LIT_STRING
 xchain124_n284_α:
 mov qword ptr [rbp + 4416], 1
 mov rax, qword ptr [rip + .Lx512_0]
 mov qword ptr [rbp + 4424], rax
 jmp xchain124_n286_α
.Lx512_0:
 .quad .Lx512_0_s
.Lx512_0_s:
 .string "March"
# IR_VAR_REF
 xchain124_n285_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 4560], rax
 mov qword ptr [rbp + 4568], rdx
 jmp xchain124_n287_α
 xchain124_n286_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4384] -> [zr+4336]
 mov rax, qword ptr [rbp + 4384]
 mov qword ptr [rbp + 4336], rax
 mov rax, qword ptr [rbp + 4392]
 mov qword ptr [rbp + 4344], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 4336]
 mov rsi, qword ptr [rip + .Lx515_2]
 jmp .Lx515_3
.Lx515_2:
 .quad .Lx515_2_s
.Lx515_2_s:
 .string "March"
.Lx515_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 4320], rax
 mov qword ptr [rbp + 4328], rdx
 cmp eax, 99
 je xchain124_n289_α
 jmp xchain124_n288_α
 xchain124_n286_β:
 jmp xchain124_n289_α
# IR_LIT_INTEGER
 xchain124_n287_α:
 mov qword ptr [rbp + 4592], 6
 mov rax, qword ptr [rip + .Lx516_0]
 mov qword ptr [rbp + 4600], rax
 jmp xchain124_n290_α
.Lx516_0:
 .quad 1
# IR_VAR_REF
 xchain124_n288_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 4256], rax
 mov qword ptr [rbp + 4264], rdx
 jmp xchain124_n291_α
 xchain124_n289_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+4032]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 4032], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 4040], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 4032]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 4016], rax
 mov qword ptr [rbp + 4024], rdx
 cmp eax, 99
 je proc_cal_key$3_ω
 jmp xchain124_n292_α
 xchain124_n289_β:
 jmp proc_cal_key$3_ω
 xchain124_n290_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4560] -> [zr+4512]
 mov rax, qword ptr [rbp + 4560]
 mov qword ptr [rbp + 4512], rax
 mov rax, qword ptr [rbp + 4568]
 mov qword ptr [rbp + 4520], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 4512]
 movabs rsi, 1
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 4496], rax
 mov qword ptr [rbp + 4504], rdx
 cmp eax, 99
 je xchain124_n278_α
 jmp xchain124_n293_α
 xchain124_n290_β:
 jmp xchain124_n278_α
# IR_LIT_INTEGER
 xchain124_n291_α:
 mov qword ptr [rbp + 4288], 6
 mov rax, qword ptr [rip + .Lx521_0]
 mov qword ptr [rbp + 4296], rax
 jmp xchain124_n294_α
.Lx521_0:
 .quad 2
# IR_VAR_REF
 xchain124_n292_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3952], rax
 mov qword ptr [rbp + 3960], rdx
 jmp xchain124_n295_α
# IR_SUSPEND yield+resume
 xchain124_n293_α:
 lea rax, [rip + xchain124_n293_β]
 mov qword ptr [rbp + 15680], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$3_γ
 xchain124_n293_β:
 jmp xchain124_n278_α
 xchain124_n294_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4256] -> [zr+4208]
 mov rax, qword ptr [rbp + 4256]
 mov qword ptr [rbp + 4208], rax
 mov rax, qword ptr [rbp + 4264]
 mov qword ptr [rbp + 4216], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 4208]
 movabs rsi, 2
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 4192], rax
 mov qword ptr [rbp + 4200], rdx
 cmp eax, 99
 je xchain124_n289_α
 jmp xchain124_n296_α
 xchain124_n294_β:
 jmp xchain124_n289_α
# IR_LIT_STRING
 xchain124_n295_α:
 mov qword ptr [rbp + 3984], 1
 mov rax, qword ptr [rip + .Lx527_0]
 mov qword ptr [rbp + 3992], rax
 jmp xchain124_n297_α
.Lx527_0:
 .quad .Lx527_0_s
.Lx527_0_s:
 .string "April"
# IR_VAR_REF
 xchain124_n296_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 4128], rax
 mov qword ptr [rbp + 4136], rdx
 jmp xchain124_n298_α
 xchain124_n297_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3952] -> [zr+3904]
 mov rax, qword ptr [rbp + 3952]
 mov qword ptr [rbp + 3904], rax
 mov rax, qword ptr [rbp + 3960]
 mov qword ptr [rbp + 3912], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 3904]
 mov rsi, qword ptr [rip + .Lx530_2]
 jmp .Lx530_3
.Lx530_2:
 .quad .Lx530_2_s
.Lx530_2_s:
 .string "April"
.Lx530_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 3888], rax
 mov qword ptr [rbp + 3896], rdx
 cmp eax, 99
 je xchain124_n300_α
 jmp xchain124_n299_α
 xchain124_n297_β:
 jmp xchain124_n300_α
# IR_LIT_INTEGER
 xchain124_n298_α:
 mov qword ptr [rbp + 4160], 6
 mov rax, qword ptr [rip + .Lx531_0]
 mov qword ptr [rbp + 4168], rax
 jmp xchain124_n301_α
.Lx531_0:
 .quad 0
# IR_VAR_REF
 xchain124_n299_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 3824], rax
 mov qword ptr [rbp + 3832], rdx
 jmp xchain124_n302_α
 xchain124_n300_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+3600]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 3600], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 3608], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 3600]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 3584], rax
 mov qword ptr [rbp + 3592], rdx
 cmp eax, 99
 je proc_cal_key$3_ω
 jmp xchain124_n303_α
 xchain124_n300_β:
 jmp proc_cal_key$3_ω
 xchain124_n301_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4128] -> [zr+4080]
 mov rax, qword ptr [rbp + 4128]
 mov qword ptr [rbp + 4080], rax
 mov rax, qword ptr [rbp + 4136]
 mov qword ptr [rbp + 4088], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 4080]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 4064], rax
 mov qword ptr [rbp + 4072], rdx
 cmp eax, 99
 je xchain124_n289_α
 jmp xchain124_n304_α
 xchain124_n301_β:
 jmp xchain124_n289_α
# IR_LIT_INTEGER
 xchain124_n302_α:
 mov qword ptr [rbp + 3856], 6
 mov rax, qword ptr [rip + .Lx536_0]
 mov qword ptr [rbp + 3864], rax
 jmp xchain124_n305_α
.Lx536_0:
 .quad 5
# IR_VAR_REF
 xchain124_n303_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3520], rax
 mov qword ptr [rbp + 3528], rdx
 jmp xchain124_n306_α
# IR_SUSPEND yield+resume
 xchain124_n304_α:
 lea rax, [rip + xchain124_n304_β]
 mov qword ptr [rbp + 15680], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$3_γ
 xchain124_n304_β:
 jmp xchain124_n289_α
 xchain124_n305_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3824] -> [zr+3776]
 mov rax, qword ptr [rbp + 3824]
 mov qword ptr [rbp + 3776], rax
 mov rax, qword ptr [rbp + 3832]
 mov qword ptr [rbp + 3784], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 3776]
 movabs rsi, 5
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 3760], rax
 mov qword ptr [rbp + 3768], rdx
 cmp eax, 99
 je xchain124_n300_α
 jmp xchain124_n307_α
 xchain124_n305_β:
 jmp xchain124_n300_α
# IR_LIT_STRING
 xchain124_n306_α:
 mov qword ptr [rbp + 3552], 1
 mov rax, qword ptr [rip + .Lx542_0]
 mov qword ptr [rbp + 3560], rax
 jmp xchain124_n308_α
.Lx542_0:
 .quad .Lx542_0_s
.Lx542_0_s:
 .string "May"
# IR_VAR_REF
 xchain124_n307_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 3696], rax
 mov qword ptr [rbp + 3704], rdx
 jmp xchain124_n309_α
 xchain124_n308_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3520] -> [zr+3472]
 mov rax, qword ptr [rbp + 3520]
 mov qword ptr [rbp + 3472], rax
 mov rax, qword ptr [rbp + 3528]
 mov qword ptr [rbp + 3480], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 3472]
 mov rsi, qword ptr [rip + .Lx545_2]
 jmp .Lx545_3
.Lx545_2:
 .quad .Lx545_2_s
.Lx545_2_s:
 .string "May"
.Lx545_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 3456], rax
 mov qword ptr [rbp + 3464], rdx
 cmp eax, 99
 je xchain124_n311_α
 jmp xchain124_n310_α
 xchain124_n308_β:
 jmp xchain124_n311_α
# IR_LIT_INTEGER
 xchain124_n309_α:
 mov qword ptr [rbp + 3728], 6
 mov rax, qword ptr [rip + .Lx546_0]
 mov qword ptr [rbp + 3736], rax
 jmp xchain124_n312_α
.Lx546_0:
 .quad 0
# IR_VAR_REF
 xchain124_n310_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 3392], rax
 mov qword ptr [rbp + 3400], rdx
 jmp xchain124_n313_α
 xchain124_n311_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+3168]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 3168], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 3176], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 3168]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 3152], rax
 mov qword ptr [rbp + 3160], rdx
 cmp eax, 99
 je proc_cal_key$3_ω
 jmp xchain124_n314_α
 xchain124_n311_β:
 jmp proc_cal_key$3_ω
 xchain124_n312_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3696] -> [zr+3648]
 mov rax, qword ptr [rbp + 3696]
 mov qword ptr [rbp + 3648], rax
 mov rax, qword ptr [rbp + 3704]
 mov qword ptr [rbp + 3656], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 3648]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 3632], rax
 mov qword ptr [rbp + 3640], rdx
 cmp eax, 99
 je xchain124_n300_α
 jmp xchain124_n315_α
 xchain124_n312_β:
 jmp xchain124_n300_α
# IR_LIT_INTEGER
 xchain124_n313_α:
 mov qword ptr [rbp + 3424], 6
 mov rax, qword ptr [rip + .Lx551_0]
 mov qword ptr [rbp + 3432], rax
 jmp xchain124_n316_α
.Lx551_0:
 .quad 0
# IR_VAR_REF
 xchain124_n314_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3088], rax
 mov qword ptr [rbp + 3096], rdx
 jmp xchain124_n317_α
# IR_SUSPEND yield+resume
 xchain124_n315_α:
 lea rax, [rip + xchain124_n315_β]
 mov qword ptr [rbp + 15680], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$3_γ
 xchain124_n315_β:
 jmp xchain124_n300_α
 xchain124_n316_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3392] -> [zr+3344]
 mov rax, qword ptr [rbp + 3392]
 mov qword ptr [rbp + 3344], rax
 mov rax, qword ptr [rbp + 3400]
 mov qword ptr [rbp + 3352], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 3344]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 3328], rax
 mov qword ptr [rbp + 3336], rdx
 cmp eax, 99
 je xchain124_n311_α
 jmp xchain124_n318_α
 xchain124_n316_β:
 jmp xchain124_n311_α
# IR_LIT_STRING
 xchain124_n317_α:
 mov qword ptr [rbp + 3120], 1
 mov rax, qword ptr [rip + .Lx557_0]
 mov qword ptr [rbp + 3128], rax
 jmp xchain124_n319_α
.Lx557_0:
 .quad .Lx557_0_s
.Lx557_0_s:
 .string "June"
# IR_VAR_REF
 xchain124_n318_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 3264], rax
 mov qword ptr [rbp + 3272], rdx
 jmp xchain124_n320_α
 xchain124_n319_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3088] -> [zr+3040]
 mov rax, qword ptr [rbp + 3088]
 mov qword ptr [rbp + 3040], rax
 mov rax, qword ptr [rbp + 3096]
 mov qword ptr [rbp + 3048], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 3040]
 mov rsi, qword ptr [rip + .Lx560_2]
 jmp .Lx560_3
.Lx560_2:
 .quad .Lx560_2_s
.Lx560_2_s:
 .string "June"
.Lx560_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 3024], rax
 mov qword ptr [rbp + 3032], rdx
 cmp eax, 99
 je xchain124_n322_α
 jmp xchain124_n321_α
 xchain124_n319_β:
 jmp xchain124_n322_α
# IR_LIT_INTEGER
 xchain124_n320_α:
 mov qword ptr [rbp + 3296], 6
 mov rax, qword ptr [rip + .Lx561_0]
 mov qword ptr [rbp + 3304], rax
 jmp xchain124_n323_α
.Lx561_0:
 .quad 0
# IR_VAR_REF
 xchain124_n321_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2960], rax
 mov qword ptr [rbp + 2968], rdx
 jmp xchain124_n324_α
 xchain124_n322_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+2736]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 2736], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 2744], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 2736]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 2720], rax
 mov qword ptr [rbp + 2728], rdx
 cmp eax, 99
 je proc_cal_key$3_ω
 jmp xchain124_n325_α
 xchain124_n322_β:
 jmp proc_cal_key$3_ω
 xchain124_n323_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3264] -> [zr+3216]
 mov rax, qword ptr [rbp + 3264]
 mov qword ptr [rbp + 3216], rax
 mov rax, qword ptr [rbp + 3272]
 mov qword ptr [rbp + 3224], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 3216]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 3200], rax
 mov qword ptr [rbp + 3208], rdx
 cmp eax, 99
 je xchain124_n311_α
 jmp xchain124_n326_α
 xchain124_n323_β:
 jmp xchain124_n311_α
# IR_LIT_INTEGER
 xchain124_n324_α:
 mov qword ptr [rbp + 2992], 6
 mov rax, qword ptr [rip + .Lx566_0]
 mov qword ptr [rbp + 3000], rax
 jmp xchain124_n327_α
.Lx566_0:
 .quad 3
# IR_VAR_REF
 xchain124_n325_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2656], rax
 mov qword ptr [rbp + 2664], rdx
 jmp xchain124_n328_α
# IR_SUSPEND yield+resume
 xchain124_n326_α:
 lea rax, [rip + xchain124_n326_β]
 mov qword ptr [rbp + 15680], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$3_γ
 xchain124_n326_β:
 jmp xchain124_n311_α
 xchain124_n327_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2960] -> [zr+2912]
 mov rax, qword ptr [rbp + 2960]
 mov qword ptr [rbp + 2912], rax
 mov rax, qword ptr [rbp + 2968]
 mov qword ptr [rbp + 2920], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 2912]
 movabs rsi, 3
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 2896], rax
 mov qword ptr [rbp + 2904], rdx
 cmp eax, 99
 je xchain124_n322_α
 jmp xchain124_n329_α
 xchain124_n327_β:
 jmp xchain124_n322_α
# IR_LIT_STRING
 xchain124_n328_α:
 mov qword ptr [rbp + 2688], 1
 mov rax, qword ptr [rip + .Lx572_0]
 mov qword ptr [rbp + 2696], rax
 jmp xchain124_n330_α
.Lx572_0:
 .quad .Lx572_0_s
.Lx572_0_s:
 .string "July"
# IR_VAR_REF
 xchain124_n329_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 2832], rax
 mov qword ptr [rbp + 2840], rdx
 jmp xchain124_n331_α
 xchain124_n330_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2656] -> [zr+2608]
 mov rax, qword ptr [rbp + 2656]
 mov qword ptr [rbp + 2608], rax
 mov rax, qword ptr [rbp + 2664]
 mov qword ptr [rbp + 2616], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 2608]
 mov rsi, qword ptr [rip + .Lx575_2]
 jmp .Lx575_3
.Lx575_2:
 .quad .Lx575_2_s
.Lx575_2_s:
 .string "July"
.Lx575_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 2592], rax
 mov qword ptr [rbp + 2600], rdx
 cmp eax, 99
 je xchain124_n333_α
 jmp xchain124_n332_α
 xchain124_n330_β:
 jmp xchain124_n333_α
# IR_LIT_INTEGER
 xchain124_n331_α:
 mov qword ptr [rbp + 2864], 6
 mov rax, qword ptr [rip + .Lx576_0]
 mov qword ptr [rbp + 2872], rax
 jmp xchain124_n334_α
.Lx576_0:
 .quad 0
# IR_VAR_REF
 xchain124_n332_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2528], rax
 mov qword ptr [rbp + 2536], rdx
 jmp xchain124_n335_α
 xchain124_n333_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+2304]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 2304], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 2312], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 2304]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 2288], rax
 mov qword ptr [rbp + 2296], rdx
 cmp eax, 99
 je proc_cal_key$3_ω
 jmp xchain124_n336_α
 xchain124_n333_β:
 jmp proc_cal_key$3_ω
 xchain124_n334_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2832] -> [zr+2784]
 mov rax, qword ptr [rbp + 2832]
 mov qword ptr [rbp + 2784], rax
 mov rax, qword ptr [rbp + 2840]
 mov qword ptr [rbp + 2792], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 2784]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 2768], rax
 mov qword ptr [rbp + 2776], rdx
 cmp eax, 99
 je xchain124_n322_α
 jmp xchain124_n337_α
 xchain124_n334_β:
 jmp xchain124_n322_α
# IR_LIT_INTEGER
 xchain124_n335_α:
 mov qword ptr [rbp + 2560], 6
 mov rax, qword ptr [rip + .Lx581_0]
 mov qword ptr [rbp + 2568], rax
 jmp xchain124_n338_α
.Lx581_0:
 .quad 5
# IR_VAR_REF
 xchain124_n336_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2224], rax
 mov qword ptr [rbp + 2232], rdx
 jmp xchain124_n339_α
# IR_SUSPEND yield+resume
 xchain124_n337_α:
 lea rax, [rip + xchain124_n337_β]
 mov qword ptr [rbp + 15680], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$3_γ
 xchain124_n337_β:
 jmp xchain124_n322_α
 xchain124_n338_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2528] -> [zr+2480]
 mov rax, qword ptr [rbp + 2528]
 mov qword ptr [rbp + 2480], rax
 mov rax, qword ptr [rbp + 2536]
 mov qword ptr [rbp + 2488], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 2480]
 movabs rsi, 5
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 2464], rax
 mov qword ptr [rbp + 2472], rdx
 cmp eax, 99
 je xchain124_n333_α
 jmp xchain124_n340_α
 xchain124_n338_β:
 jmp xchain124_n333_α
# IR_LIT_STRING
 xchain124_n339_α:
 mov qword ptr [rbp + 2256], 1
 mov rax, qword ptr [rip + .Lx587_0]
 mov qword ptr [rbp + 2264], rax
 jmp xchain124_n341_α
.Lx587_0:
 .quad .Lx587_0_s
.Lx587_0_s:
 .string "August"
# IR_VAR_REF
 xchain124_n340_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 2400], rax
 mov qword ptr [rbp + 2408], rdx
 jmp xchain124_n342_α
 xchain124_n341_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2224] -> [zr+2176]
 mov rax, qword ptr [rbp + 2224]
 mov qword ptr [rbp + 2176], rax
 mov rax, qword ptr [rbp + 2232]
 mov qword ptr [rbp + 2184], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 2176]
 mov rsi, qword ptr [rip + .Lx590_2]
 jmp .Lx590_3
.Lx590_2:
 .quad .Lx590_2_s
.Lx590_2_s:
 .string "August"
.Lx590_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 2160], rax
 mov qword ptr [rbp + 2168], rdx
 cmp eax, 99
 je xchain124_n344_α
 jmp xchain124_n343_α
 xchain124_n341_β:
 jmp xchain124_n344_α
# IR_LIT_INTEGER
 xchain124_n342_α:
 mov qword ptr [rbp + 2432], 6
 mov rax, qword ptr [rip + .Lx591_0]
 mov qword ptr [rbp + 2440], rax
 jmp xchain124_n345_α
.Lx591_0:
 .quad 0
# IR_VAR_REF
 xchain124_n343_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2096], rax
 mov qword ptr [rbp + 2104], rdx
 jmp xchain124_n346_α
 xchain124_n344_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1872]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1872], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1880], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1872]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1856], rax
 mov qword ptr [rbp + 1864], rdx
 cmp eax, 99
 je proc_cal_key$3_ω
 jmp xchain124_n347_α
 xchain124_n344_β:
 jmp proc_cal_key$3_ω
 xchain124_n345_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2400] -> [zr+2352]
 mov rax, qword ptr [rbp + 2400]
 mov qword ptr [rbp + 2352], rax
 mov rax, qword ptr [rbp + 2408]
 mov qword ptr [rbp + 2360], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 2352]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 2336], rax
 mov qword ptr [rbp + 2344], rdx
 cmp eax, 99
 je xchain124_n333_α
 jmp xchain124_n348_α
 xchain124_n345_β:
 jmp xchain124_n333_α
# IR_LIT_INTEGER
 xchain124_n346_α:
 mov qword ptr [rbp + 2128], 6
 mov rax, qword ptr [rip + .Lx596_0]
 mov qword ptr [rbp + 2136], rax
 jmp xchain124_n349_α
.Lx596_0:
 .quad 1
# IR_VAR_REF
 xchain124_n347_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1792], rax
 mov qword ptr [rbp + 1800], rdx
 jmp xchain124_n350_α
# IR_SUSPEND yield+resume
 xchain124_n348_α:
 lea rax, [rip + xchain124_n348_β]
 mov qword ptr [rbp + 15680], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$3_γ
 xchain124_n348_β:
 jmp xchain124_n333_α
 xchain124_n349_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2096] -> [zr+2048]
 mov rax, qword ptr [rbp + 2096]
 mov qword ptr [rbp + 2048], rax
 mov rax, qword ptr [rbp + 2104]
 mov qword ptr [rbp + 2056], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 2048]
 movabs rsi, 1
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 2032], rax
 mov qword ptr [rbp + 2040], rdx
 cmp eax, 99
 je xchain124_n344_α
 jmp xchain124_n351_α
 xchain124_n349_β:
 jmp xchain124_n344_α
# IR_LIT_STRING
 xchain124_n350_α:
 mov qword ptr [rbp + 1824], 1
 mov rax, qword ptr [rip + .Lx602_0]
 mov qword ptr [rbp + 1832], rax
 jmp xchain124_n352_α
.Lx602_0:
 .quad .Lx602_0_s
.Lx602_0_s:
 .string "September"
# IR_VAR_REF
 xchain124_n351_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1968], rax
 mov qword ptr [rbp + 1976], rdx
 jmp xchain124_n353_α
 xchain124_n352_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1792] -> [zr+1744]
 mov rax, qword ptr [rbp + 1792]
 mov qword ptr [rbp + 1744], rax
 mov rax, qword ptr [rbp + 1800]
 mov qword ptr [rbp + 1752], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1744]
 mov rsi, qword ptr [rip + .Lx605_2]
 jmp .Lx605_3
.Lx605_2:
 .quad .Lx605_2_s
.Lx605_2_s:
 .string "September"
.Lx605_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 cmp eax, 99
 je xchain124_n355_α
 jmp xchain124_n354_α
 xchain124_n352_β:
 jmp xchain124_n355_α
# IR_LIT_INTEGER
 xchain124_n353_α:
 mov qword ptr [rbp + 2000], 6
 mov rax, qword ptr [rip + .Lx606_0]
 mov qword ptr [rbp + 2008], rax
 jmp xchain124_n356_α
.Lx606_0:
 .quad 0
# IR_VAR_REF
 xchain124_n354_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1664], rax
 mov qword ptr [rbp + 1672], rdx
 jmp xchain124_n357_α
 xchain124_n355_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1440]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1440], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1448], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1440]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1424], rax
 mov qword ptr [rbp + 1432], rdx
 cmp eax, 99
 je proc_cal_key$3_ω
 jmp xchain124_n358_α
 xchain124_n355_β:
 jmp proc_cal_key$3_ω
 xchain124_n356_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1968] -> [zr+1920]
 mov rax, qword ptr [rbp + 1968]
 mov qword ptr [rbp + 1920], rax
 mov rax, qword ptr [rbp + 1976]
 mov qword ptr [rbp + 1928], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 1920]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 1904], rax
 mov qword ptr [rbp + 1912], rdx
 cmp eax, 99
 je xchain124_n344_α
 jmp xchain124_n359_α
 xchain124_n356_β:
 jmp xchain124_n344_α
# IR_LIT_INTEGER
 xchain124_n357_α:
 mov qword ptr [rbp + 1696], 6
 mov rax, qword ptr [rip + .Lx611_0]
 mov qword ptr [rbp + 1704], rax
 jmp xchain124_n360_α
.Lx611_0:
 .quad 4
# IR_VAR_REF
 xchain124_n358_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 jmp xchain124_n361_α
# IR_SUSPEND yield+resume
 xchain124_n359_α:
 lea rax, [rip + xchain124_n359_β]
 mov qword ptr [rbp + 15680], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$3_γ
 xchain124_n359_β:
 jmp xchain124_n344_α
 xchain124_n360_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1664] -> [zr+1616]
 mov rax, qword ptr [rbp + 1664]
 mov qword ptr [rbp + 1616], rax
 mov rax, qword ptr [rbp + 1672]
 mov qword ptr [rbp + 1624], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 1616]
 movabs rsi, 4
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 cmp eax, 99
 je xchain124_n355_α
 jmp xchain124_n362_α
 xchain124_n360_β:
 jmp xchain124_n355_α
# IR_LIT_STRING
 xchain124_n361_α:
 mov qword ptr [rbp + 1392], 1
 mov rax, qword ptr [rip + .Lx617_0]
 mov qword ptr [rbp + 1400], rax
 jmp xchain124_n363_α
.Lx617_0:
 .quad .Lx617_0_s
.Lx617_0_s:
 .string "October"
# IR_VAR_REF
 xchain124_n362_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 jmp xchain124_n364_α
 xchain124_n363_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1360] -> [zr+1312]
 mov rax, qword ptr [rbp + 1360]
 mov qword ptr [rbp + 1312], rax
 mov rax, qword ptr [rbp + 1368]
 mov qword ptr [rbp + 1320], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1312]
 mov rsi, qword ptr [rip + .Lx620_2]
 jmp .Lx620_3
.Lx620_2:
 .quad .Lx620_2_s
.Lx620_2_s:
 .string "October"
.Lx620_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 cmp eax, 99
 je xchain124_n366_α
 jmp xchain124_n365_α
 xchain124_n363_β:
 jmp xchain124_n366_α
# IR_LIT_INTEGER
 xchain124_n364_α:
 mov qword ptr [rbp + 1568], 6
 mov rax, qword ptr [rip + .Lx621_0]
 mov qword ptr [rbp + 1576], rax
 jmp xchain124_n367_α
.Lx621_0:
 .quad 0
# IR_VAR_REF
 xchain124_n365_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 jmp xchain124_n368_α
 xchain124_n366_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1008]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1016], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1008]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 cmp eax, 99
 je proc_cal_key$3_ω
 jmp xchain124_n369_α
 xchain124_n366_β:
 jmp proc_cal_key$3_ω
 xchain124_n367_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1536] -> [zr+1488]
 mov rax, qword ptr [rbp + 1536]
 mov qword ptr [rbp + 1488], rax
 mov rax, qword ptr [rbp + 1544]
 mov qword ptr [rbp + 1496], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 1488]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 cmp eax, 99
 je xchain124_n355_α
 jmp xchain124_n370_α
 xchain124_n367_β:
 jmp xchain124_n355_α
# IR_LIT_INTEGER
 xchain124_n368_α:
 mov qword ptr [rbp + 1264], 6
 mov rax, qword ptr [rip + .Lx626_0]
 mov qword ptr [rbp + 1272], rax
 jmp xchain124_n371_α
.Lx626_0:
 .quad 6
# IR_VAR_REF
 xchain124_n369_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 jmp xchain124_n372_α
# IR_SUSPEND yield+resume
 xchain124_n370_α:
 lea rax, [rip + xchain124_n370_β]
 mov qword ptr [rbp + 15680], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$3_γ
 xchain124_n370_β:
 jmp xchain124_n355_α
 xchain124_n371_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1232] -> [zr+1184]
 mov rax, qword ptr [rbp + 1232]
 mov qword ptr [rbp + 1184], rax
 mov rax, qword ptr [rbp + 1240]
 mov qword ptr [rbp + 1192], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 1184]
 movabs rsi, 6
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 cmp eax, 99
 je xchain124_n366_α
 jmp xchain124_n373_α
 xchain124_n371_β:
 jmp xchain124_n366_α
# IR_LIT_STRING
 xchain124_n372_α:
 mov qword ptr [rbp + 960], 1
 mov rax, qword ptr [rip + .Lx632_0]
 mov qword ptr [rbp + 968], rax
 jmp xchain124_n374_α
.Lx632_0:
 .quad .Lx632_0_s
.Lx632_0_s:
 .string "November"
# IR_VAR_REF
 xchain124_n373_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain124_n375_α
 xchain124_n374_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+928] -> [zr+880]
 mov rax, qword ptr [rbp + 928]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 936]
 mov qword ptr [rbp + 888], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 880]
 mov rsi, qword ptr [rip + .Lx635_2]
 jmp .Lx635_3
.Lx635_2:
 .quad .Lx635_2_s
.Lx635_2_s:
 .string "November"
.Lx635_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 cmp eax, 99
 je xchain124_n377_α
 jmp xchain124_n376_α
 xchain124_n374_β:
 jmp xchain124_n377_α
# IR_LIT_INTEGER
 xchain124_n375_α:
 mov qword ptr [rbp + 1136], 6
 mov rax, qword ptr [rip + .Lx636_0]
 mov qword ptr [rbp + 1144], rax
 jmp xchain124_n378_α
.Lx636_0:
 .quad 0
# IR_VAR_REF
 xchain124_n376_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain124_n379_α
 xchain124_n377_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+576]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 584], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 576]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 cmp eax, 99
 je proc_cal_key$3_ω
 jmp xchain124_n380_α
 xchain124_n377_β:
 jmp proc_cal_key$3_ω
 xchain124_n378_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1104] -> [zr+1056]
 mov rax, qword ptr [rbp + 1104]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 1112]
 mov qword ptr [rbp + 1064], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 1056]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 cmp eax, 99
 je xchain124_n366_α
 jmp xchain124_n381_α
 xchain124_n378_β:
 jmp xchain124_n366_α
# IR_LIT_INTEGER
 xchain124_n379_α:
 mov qword ptr [rbp + 832], 6
 mov rax, qword ptr [rip + .Lx641_0]
 mov qword ptr [rbp + 840], rax
 jmp xchain124_n382_α
.Lx641_0:
 .quad 2
# IR_VAR_REF
 xchain124_n380_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain124_n383_α
# IR_SUSPEND yield+resume
 xchain124_n381_α:
 lea rax, [rip + xchain124_n381_β]
 mov qword ptr [rbp + 15680], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$3_γ
 xchain124_n381_β:
 jmp xchain124_n366_α
 xchain124_n382_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+800] -> [zr+752]
 mov rax, qword ptr [rbp + 800]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 808]
 mov qword ptr [rbp + 760], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 752]
 movabs rsi, 2
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain124_n377_α
 jmp xchain124_n384_α
 xchain124_n382_β:
 jmp xchain124_n377_α
# IR_LIT_STRING
 xchain124_n383_α:
 mov qword ptr [rbp + 528], 1
 mov rax, qword ptr [rip + .Lx647_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain124_n385_α
.Lx647_0:
 .quad .Lx647_0_s
.Lx647_0_s:
 .string "December"
# IR_VAR_REF
 xchain124_n384_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain124_n386_α
 xchain124_n385_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+496] -> [zr+448]
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 456], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 448]
 mov rsi, qword ptr [rip + .Lx650_2]
 jmp .Lx650_3
.Lx650_2:
 .quad .Lx650_2_s
.Lx650_2_s:
 .string "December"
.Lx650_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je xchain124_n388_α
 jmp xchain124_n387_α
 xchain124_n385_β:
 jmp xchain124_n388_α
# IR_LIT_INTEGER
 xchain124_n386_α:
 mov qword ptr [rbp + 704], 6
 mov rax, qword ptr [rip + .Lx651_0]
 mov qword ptr [rbp + 712], rax
 jmp xchain124_n389_α
.Lx651_0:
 .quad 0
# IR_VAR_REF
 xchain124_n387_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain124_n390_α
 xchain124_n388_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+144]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 152], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_unwind (no by-name dispatch)
 lea rdi, [rbp + 144]
 mov esi, 1
 call rt_pl_dop_trail_unwind@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je proc_cal_key$3_ω
 jmp proc_cal_key$3_ω
 xchain124_n388_β:
 jmp proc_cal_key$3_ω
 xchain124_n389_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+672] -> [zr+624]
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 632], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 624]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain124_n377_α
 jmp xchain124_n391_α
 xchain124_n389_β:
 jmp xchain124_n377_α
# IR_LIT_INTEGER
 xchain124_n390_α:
 mov qword ptr [rbp + 400], 6
 mov rax, qword ptr [rip + .Lx656_0]
 mov qword ptr [rbp + 408], rax
 jmp xchain124_n392_α
.Lx656_0:
 .quad 4
# IR_SUSPEND yield+resume
 xchain124_n391_α:
 lea rax, [rip + xchain124_n391_β]
 mov qword ptr [rbp + 15680], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$3_γ
 xchain124_n391_β:
 jmp xchain124_n377_α
 xchain124_n392_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+320]
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 328], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 320]
 movabs rsi, 4
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je xchain124_n388_α
 jmp xchain124_n393_α
 xchain124_n392_β:
 jmp xchain124_n388_α
# IR_VAR_REF
 xchain124_n393_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain124_n394_α
# IR_LIT_INTEGER
 xchain124_n394_α:
 mov qword ptr [rbp + 272], 6
 mov rax, qword ptr [rip + .Lx662_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain124_n395_α
.Lx662_0:
 .quad 0
 xchain124_n395_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+240] -> [zr+192]
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 200], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 192]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain124_n388_α
 jmp xchain124_n396_α
 xchain124_n395_β:
 jmp xchain124_n388_α
# IR_SUSPEND yield+resume
 xchain124_n396_α:
 lea rax, [rip + xchain124_n396_β]
 mov qword ptr [rbp + 15680], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$3_γ
 xchain124_n396_β:
 jmp xchain124_n388_α
proc_cal_key$3_res:
add rsp, 8
pop rbp
proc_cal_key$3_β:
jmp qword ptr [rbp + 15680]
proc_cal_key$3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_cal_key$3_res]
push rax
mov rax, [rbp + 15720]
mov rbp, [rbp + 15736]
jmp rax
proc_cal_key$3_ω:
mov rax, [rbp + 15728]
lea rsp, [rbp + 15744]
mov rbp, [rbp + 15736]
jmp rax
  .globl proc_compute_it$5_α
proc_compute_it$5_α:
#=======================================================================================================================
    .global proc_compute_it$5_α
    .global proc_compute_it$5_β
    .global proc_compute_it$5_γ
    .global proc_compute_it$5_ω
  sub rsp, 2816
  mov [rsp + 2792], rcx
  mov [rsp + 2800], rdx
  mov [rsp + 2808], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 2648], rsp
  mov rdi, rsp
  mov esi, 2624
  mov edx, 2784
  call rt_jmp_frame_lexprep2@PLT
proc_compute_it$5_α_body:
lea rax, [rip + xchain666_n55_β]
mov qword ptr [rbp + 2624], rax
 xchain666_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 144]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je proc_compute_it$5_ω
 jmp xchain666_n1_α
 xchain666_n0_β:
 jmp proc_compute_it$5_ω
# IR_VAR_REF
 xchain666_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2560], rax
 mov qword ptr [rbp + 2568], rdx
 jmp xchain666_n2_α
# IR_VAR_REF
 xchain666_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2656]
 mov qword ptr [rbp + 2592], rax
 mov qword ptr [rbp + 2600], rdx
 jmp xchain666_n3_α
 xchain666_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2560] -> [zr+2512]
 mov rax, qword ptr [rbp + 2560]
 mov qword ptr [rbp + 2512], rax
 mov rax, qword ptr [rbp + 2568]
 mov qword ptr [rbp + 2520], rax
# marshal arg1 = producer-box slot [zr+2592] -> [zr+2528]
 mov rax, qword ptr [rbp + 2592]
 mov qword ptr [rbp + 2528], rax
 mov rax, qword ptr [rbp + 2600]
 mov qword ptr [rbp + 2536], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2512]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2496], rax
 mov qword ptr [rbp + 2504], rdx
 cmp eax, 99
 je xchain666_n5_α
 jmp xchain666_n4_α
 xchain666_n3_β:
 jmp xchain666_n5_α
# IR_VAR_REF
 xchain666_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2432], rax
 mov qword ptr [rbp + 2440], rdx
 jmp xchain666_n6_α
 xchain666_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+176]
 mov rax, qword ptr [rbp + 128]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 136]
 mov qword ptr [rbp + 184], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_unwind (no by-name dispatch)
 lea rdi, [rbp + 176]
 mov esi, 1
 call rt_pl_dop_trail_unwind@PLT
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je proc_compute_it$5_ω
 jmp proc_compute_it$5_ω
 xchain666_n5_β:
 jmp proc_compute_it$5_ω
# IR_VAR_REF
 xchain666_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2752]
 mov qword ptr [rbp + 2464], rax
 mov qword ptr [rbp + 2472], rdx
 jmp xchain666_n7_α
 xchain666_n7_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2432] -> [zr+2384]
 mov rax, qword ptr [rbp + 2432]
 mov qword ptr [rbp + 2384], rax
 mov rax, qword ptr [rbp + 2440]
 mov qword ptr [rbp + 2392], rax
# marshal arg1 = producer-box slot [zr+2464] -> [zr+2400]
 mov rax, qword ptr [rbp + 2464]
 mov qword ptr [rbp + 2400], rax
 mov rax, qword ptr [rbp + 2472]
 mov qword ptr [rbp + 2408], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2384]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2368], rax
 mov qword ptr [rbp + 2376], rdx
 cmp eax, 99
 je xchain666_n5_α
 jmp xchain666_n8_α
 xchain666_n7_β:
 jmp xchain666_n5_α
# IR_VAR_REF
 xchain666_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 2304], rax
 mov qword ptr [rbp + 2312], rdx
 jmp xchain666_n9_α
# IR_VAR_REF
 xchain666_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2768]
 mov qword ptr [rbp + 2336], rax
 mov qword ptr [rbp + 2344], rdx
 jmp xchain666_n10_α
 xchain666_n10_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2304] -> [zr+2256]
 mov rax, qword ptr [rbp + 2304]
 mov qword ptr [rbp + 2256], rax
 mov rax, qword ptr [rbp + 2312]
 mov qword ptr [rbp + 2264], rax
# marshal arg1 = producer-box slot [zr+2336] -> [zr+2272]
 mov rax, qword ptr [rbp + 2336]
 mov qword ptr [rbp + 2272], rax
 mov rax, qword ptr [rbp + 2344]
 mov qword ptr [rbp + 2280], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2256]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2240], rax
 mov qword ptr [rbp + 2248], rdx
 cmp eax, 99
 je xchain666_n5_α
 jmp xchain666_n11_α
 xchain666_n10_β:
 jmp xchain666_n5_α
# IR_VAR_REF
 xchain666_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 64]
 mov qword ptr [rbp + 2176], rax
 mov qword ptr [rbp + 2184], rdx
 jmp xchain666_n12_α
# IR_VAR_REF
 xchain666_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2688]
 mov qword ptr [rbp + 2208], rax
 mov qword ptr [rbp + 2216], rdx
 jmp xchain666_n13_α
 xchain666_n13_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2176] -> [zr+2128]
 mov rax, qword ptr [rbp + 2176]
 mov qword ptr [rbp + 2128], rax
 mov rax, qword ptr [rbp + 2184]
 mov qword ptr [rbp + 2136], rax
# marshal arg1 = producer-box slot [zr+2208] -> [zr+2144]
 mov rax, qword ptr [rbp + 2208]
 mov qword ptr [rbp + 2144], rax
 mov rax, qword ptr [rbp + 2216]
 mov qword ptr [rbp + 2152], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2128]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2112], rax
 mov qword ptr [rbp + 2120], rdx
 cmp eax, 99
 je xchain666_n5_α
 jmp xchain666_n14_α
 xchain666_n13_β:
 jmp xchain666_n5_α
# IR_VAR_REF
 xchain666_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 80]
 mov qword ptr [rbp + 2048], rax
 mov qword ptr [rbp + 2056], rdx
 jmp xchain666_n15_α
# IR_VAR_REF
 xchain666_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2704]
 mov qword ptr [rbp + 2080], rax
 mov qword ptr [rbp + 2088], rdx
 jmp xchain666_n16_α
 xchain666_n16_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2048] -> [zr+2000]
 mov rax, qword ptr [rbp + 2048]
 mov qword ptr [rbp + 2000], rax
 mov rax, qword ptr [rbp + 2056]
 mov qword ptr [rbp + 2008], rax
# marshal arg1 = producer-box slot [zr+2080] -> [zr+2016]
 mov rax, qword ptr [rbp + 2080]
 mov qword ptr [rbp + 2016], rax
 mov rax, qword ptr [rbp + 2088]
 mov qword ptr [rbp + 2024], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2000]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1984], rax
 mov qword ptr [rbp + 1992], rdx
 cmp eax, 99
 je xchain666_n5_α
 jmp xchain666_n17_α
 xchain666_n16_β:
 jmp xchain666_n5_α
# IR_VAR_REF
 xchain666_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2720]
 mov qword ptr [rbp + 1824], rax
 mov qword ptr [rbp + 1832], rdx
 jmp xchain666_n18_α
# IR_VAR
 xchain666_n18_α:
 mov rax, qword ptr [rbp + 2656]
 mov qword ptr [rbp + 1920], rax
 mov rax, qword ptr [rbp + 2664]
 mov qword ptr [rbp + 1928], rax
 jmp xchain666_n19_α
# IR_LIT_INTEGER
 xchain666_n19_α:
 mov qword ptr [rbp + 1952], 6
 mov rax, qword ptr [rip + .Lx698_0]
 mov qword ptr [rbp + 1960], rax
 jmp xchain666_n20_α
.Lx698_0:
 .quad 100
 xchain666_n20_α:
# BOX IR_CALL $ax_idiv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1920] -> [zr+1872]
 mov rax, qword ptr [rbp + 1920]
 mov qword ptr [rbp + 1872], rax
 mov rax, qword ptr [rbp + 1928]
 mov qword ptr [rbp + 1880], rax
# marshal arg1 = producer-box slot [zr+1952] -> [zr+1888]
 mov rax, qword ptr [rbp + 1952]
 mov qword ptr [rbp + 1888], rax
 mov rax, qword ptr [rbp + 1960]
 mov qword ptr [rbp + 1896], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_idiv (no by-name dispatch)
 lea rdi, [rbp + 1872]
 mov esi, 2
 call rt_pl_dop_ax_idiv@PLT
 mov qword ptr [rbp + 1856], rax
 mov qword ptr [rbp + 1864], rdx
 cmp eax, 99
 je xchain666_n5_α
 jmp xchain666_n21_α
 xchain666_n20_β:
 jmp xchain666_n5_α
 xchain666_n21_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1824] -> [zr+1776]
 mov rax, qword ptr [rbp + 1824]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 1832]
 mov qword ptr [rbp + 1784], rax
# marshal arg1 = producer-box slot [zr+1856] -> [zr+1792]
 mov rax, qword ptr [rbp + 1856]
 mov qword ptr [rbp + 1792], rax
 mov rax, qword ptr [rbp + 1864]
 mov qword ptr [rbp + 1800], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 1776]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
 cmp eax, 99
 je xchain666_n5_α
 jmp xchain666_n22_α
 xchain666_n21_β:
 jmp xchain666_n5_α
# IR_VAR_REF
 xchain666_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2736]
 mov qword ptr [rbp + 1504], rax
 mov qword ptr [rbp + 1512], rdx
 jmp xchain666_n23_α
# IR_VAR
 xchain666_n23_α:
 mov rax, qword ptr [rbp + 2656]
 mov qword ptr [rbp + 1600], rax
 mov rax, qword ptr [rbp + 2664]
 mov qword ptr [rbp + 1608], rax
 jmp xchain666_n24_α
# IR_VAR
 xchain666_n24_α:
 mov rax, qword ptr [rbp + 2720]
 mov qword ptr [rbp + 1696], rax
 mov rax, qword ptr [rbp + 2728]
 mov qword ptr [rbp + 1704], rax
 jmp xchain666_n25_α
# IR_LIT_INTEGER
 xchain666_n25_α:
 mov qword ptr [rbp + 1728], 6
 mov rax, qword ptr [rip + .Lx707_0]
 mov qword ptr [rbp + 1736], rax
 jmp xchain666_n26_α
.Lx707_0:
 .quad 100
 xchain666_n26_α:
# BOX IR_CALL $ax_mul(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1696] -> [zr+1648]
 mov rax, qword ptr [rbp + 1696]
 mov qword ptr [rbp + 1648], rax
 mov rax, qword ptr [rbp + 1704]
 mov qword ptr [rbp + 1656], rax
# marshal arg1 = producer-box slot [zr+1728] -> [zr+1664]
 mov rax, qword ptr [rbp + 1728]
 mov qword ptr [rbp + 1664], rax
 mov rax, qword ptr [rbp + 1736]
 mov qword ptr [rbp + 1672], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_mul (no by-name dispatch)
 lea rdi, [rbp + 1648]
 mov esi, 2
 call rt_pl_dop_ax_mul@PLT
 mov qword ptr [rbp + 1632], rax
 mov qword ptr [rbp + 1640], rdx
 cmp eax, 99
 je xchain666_n5_α
 jmp xchain666_n27_α
 xchain666_n26_β:
 jmp xchain666_n5_α
 xchain666_n27_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1600] -> [zr+1552]
 mov rax, qword ptr [rbp + 1600]
 mov qword ptr [rbp + 1552], rax
 mov rax, qword ptr [rbp + 1608]
 mov qword ptr [rbp + 1560], rax
# marshal arg1 = producer-box slot [zr+1632] -> [zr+1568]
 mov rax, qword ptr [rbp + 1632]
 mov qword ptr [rbp + 1568], rax
 mov rax, qword ptr [rbp + 1640]
 mov qword ptr [rbp + 1576], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_sub (no by-name dispatch)
 lea rdi, [rbp + 1552]
 mov esi, 2
 call rt_pl_dop_ax_sub@PLT
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 cmp eax, 99
 je xchain666_n5_α
 jmp xchain666_n28_α
 xchain666_n27_β:
 jmp xchain666_n5_α
 xchain666_n28_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1504] -> [zr+1456]
 mov rax, qword ptr [rbp + 1504]
 mov qword ptr [rbp + 1456], rax
 mov rax, qword ptr [rbp + 1512]
 mov qword ptr [rbp + 1464], rax
# marshal arg1 = producer-box slot [zr+1536] -> [zr+1472]
 mov rax, qword ptr [rbp + 1536]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 1544]
 mov qword ptr [rbp + 1480], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 1456]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 cmp eax, 99
 je xchain666_n5_α
 jmp xchain666_n29_α
 xchain666_n28_β:
 jmp xchain666_n5_α
# IR_VAR_REF
 xchain666_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2672]
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain666_n30_α
# IR_VAR
 xchain666_n30_α:
 mov rax, qword ptr [rbp + 2720]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 2728]
 mov qword ptr [rbp + 1000], rax
 jmp xchain666_n31_α
# IR_LIT_INTEGER
 xchain666_n31_α:
 mov qword ptr [rbp + 1024], 6
 mov rax, qword ptr [rip + .Lx715_0]
 mov qword ptr [rbp + 1032], rax
 jmp xchain666_n32_α
.Lx715_0:
 .quad 5
 xchain666_n32_α:
# BOX IR_CALL $ax_mul(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+992] -> [zr+944]
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 952], rax
# marshal arg1 = producer-box slot [zr+1024] -> [zr+960]
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 968], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_mul (no by-name dispatch)
 lea rdi, [rbp + 944]
 mov esi, 2
 call rt_pl_dop_ax_mul@PLT
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 cmp eax, 99
 je xchain666_n5_α
 jmp xchain666_n33_α
 xchain666_n32_β:
 jmp xchain666_n5_α
# IR_VAR
 xchain666_n33_α:
 mov rax, qword ptr [rbp + 2720]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 2728]
 mov qword ptr [rbp + 1128], rax
 jmp xchain666_n34_α
# IR_LIT_INTEGER
 xchain666_n34_α:
 mov qword ptr [rbp + 1152], 6
 mov rax, qword ptr [rip + .Lx719_0]
 mov qword ptr [rbp + 1160], rax
 jmp xchain666_n35_α
.Lx719_0:
 .quad 4
 xchain666_n35_α:
# BOX IR_CALL $ax_idiv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1120] -> [zr+1072]
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 1080], rax
# marshal arg1 = producer-box slot [zr+1152] -> [zr+1088]
 mov rax, qword ptr [rbp + 1152]
 mov qword ptr [rbp + 1088], rax
 mov rax, qword ptr [rbp + 1160]
 mov qword ptr [rbp + 1096], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_idiv (no by-name dispatch)
 lea rdi, [rbp + 1072]
 mov esi, 2
 call rt_pl_dop_ax_idiv@PLT
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 cmp eax, 99
 je xchain666_n5_α
 jmp xchain666_n36_α
 xchain666_n35_β:
 jmp xchain666_n5_α
 xchain666_n36_α:
# BOX IR_CALL $ax_add(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+928] -> [zr+880]
 mov rax, qword ptr [rbp + 928]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 936]
 mov qword ptr [rbp + 888], rax
# marshal arg1 = producer-box slot [zr+1056] -> [zr+896]
 mov rax, qword ptr [rbp + 1056]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 1064]
 mov qword ptr [rbp + 904], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_add (no by-name dispatch)
 lea rdi, [rbp + 880]
 mov esi, 2
 call rt_pl_dop_ax_add@PLT
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 cmp eax, 99
 je xchain666_n5_α
 jmp xchain666_n37_α
 xchain666_n36_β:
 jmp xchain666_n5_α
# IR_VAR
 xchain666_n37_α:
 mov rax, qword ptr [rbp + 2736]
 mov qword ptr [rbp + 1184], rax
 mov rax, qword ptr [rbp + 2744]
 mov qword ptr [rbp + 1192], rax
 jmp xchain666_n38_α
 xchain666_n38_α:
# BOX IR_CALL $ax_add(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+864] -> [zr+816]
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 824], rax
# marshal arg1 = producer-box slot [zr+1184] -> [zr+832]
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 840], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_add (no by-name dispatch)
 lea rdi, [rbp + 816]
 mov esi, 2
 call rt_pl_dop_ax_add@PLT
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 cmp eax, 99
 je xchain666_n5_α
 jmp xchain666_n39_α
 xchain666_n38_β:
 jmp xchain666_n5_α
# IR_VAR
 xchain666_n39_α:
 mov rax, qword ptr [rbp + 2736]
 mov qword ptr [rbp + 1280], rax
 mov rax, qword ptr [rbp + 2744]
 mov qword ptr [rbp + 1288], rax
 jmp xchain666_n40_α
# IR_LIT_INTEGER
 xchain666_n40_α:
 mov qword ptr [rbp + 1312], 6
 mov rax, qword ptr [rip + .Lx727_0]
 mov qword ptr [rbp + 1320], rax
 jmp xchain666_n41_α
.Lx727_0:
 .quad 4
 xchain666_n41_α:
# BOX IR_CALL $ax_idiv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1280] -> [zr+1232]
 mov rax, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 1240], rax
# marshal arg1 = producer-box slot [zr+1312] -> [zr+1248]
 mov rax, qword ptr [rbp + 1312]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1320]
 mov qword ptr [rbp + 1256], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_idiv (no by-name dispatch)
 lea rdi, [rbp + 1232]
 mov esi, 2
 call rt_pl_dop_ax_idiv@PLT
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 cmp eax, 99
 je xchain666_n5_α
 jmp xchain666_n42_α
 xchain666_n41_β:
 jmp xchain666_n5_α
 xchain666_n42_α:
# BOX IR_CALL $ax_add(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+800] -> [zr+752]
 mov rax, qword ptr [rbp + 800]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 808]
 mov qword ptr [rbp + 760], rax
# marshal arg1 = producer-box slot [zr+1216] -> [zr+768]
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 768], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 776], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_add (no by-name dispatch)
 lea rdi, [rbp + 752]
 mov esi, 2
 call rt_pl_dop_ax_add@PLT
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain666_n5_α
 jmp xchain666_n43_α
 xchain666_n42_β:
 jmp xchain666_n5_α
# IR_VAR
 xchain666_n43_α:
 mov rax, qword ptr [rbp + 2752]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 2760]
 mov qword ptr [rbp + 1352], rax
 jmp xchain666_n44_α
 xchain666_n44_α:
# BOX IR_CALL $ax_add(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+736] -> [zr+688]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 696], rax
# marshal arg1 = producer-box slot [zr+1344] -> [zr+704]
 mov rax, qword ptr [rbp + 1344]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 1352]
 mov qword ptr [rbp + 712], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_add (no by-name dispatch)
 lea rdi, [rbp + 688]
 mov esi, 2
 call rt_pl_dop_ax_add@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 cmp eax, 99
 je xchain666_n5_α
 jmp xchain666_n45_α
 xchain666_n44_β:
 jmp xchain666_n5_α
# IR_VAR
 xchain666_n45_α:
 mov rax, qword ptr [rbp + 2768]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 2776]
 mov qword ptr [rbp + 1384], rax
 jmp xchain666_n46_α
 xchain666_n46_α:
# BOX IR_CALL $ax_add(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+672] -> [zr+624]
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 632], rax
# marshal arg1 = producer-box slot [zr+1376] -> [zr+640]
 mov rax, qword ptr [rbp + 1376]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 1384]
 mov qword ptr [rbp + 648], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_add (no by-name dispatch)
 lea rdi, [rbp + 624]
 mov esi, 2
 call rt_pl_dop_ax_add@PLT
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain666_n5_α
 jmp xchain666_n47_α
 xchain666_n46_β:
 jmp xchain666_n5_α
# IR_LIT_INTEGER
 xchain666_n47_α:
 mov qword ptr [rbp + 1408], 6
 mov rax, qword ptr [rip + .Lx736_0]
 mov qword ptr [rbp + 1416], rax
 jmp xchain666_n48_α
.Lx736_0:
 .quad 7
 xchain666_n48_α:
# BOX IR_CALL $ax_mod(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+608] -> [zr+560]
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 568], rax
# marshal arg1 = producer-box slot [zr+1408] -> [zr+576]
 mov rax, qword ptr [rbp + 1408]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 1416]
 mov qword ptr [rbp + 584], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_mod (no by-name dispatch)
 lea rdi, [rbp + 560]
 mov esi, 2
 call rt_pl_dop_ax_mod@PLT
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 cmp eax, 99
 je xchain666_n5_α
 jmp xchain666_n49_α
 xchain666_n48_β:
 jmp xchain666_n5_α
 xchain666_n49_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+512] -> [zr+464]
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 472], rax
# marshal arg1 = producer-box slot [zr+544] -> [zr+480]
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 488], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 464]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 cmp eax, 99
 je xchain666_n5_α
 jmp xchain666_n50_α
 xchain666_n49_β:
 jmp xchain666_n5_α
# IR_VAR_REF
 xchain666_n50_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2656]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain666_n51_α
# IR_VAR_REF
 xchain666_n51_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2672]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain666_n52_α
# IR_VAR_REF
 xchain666_n52_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2688]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain666_n53_α
# IR_VAR_REF
 xchain666_n53_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2704]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain666_n54_α
 xchain666_n54_α:
 mov qword ptr [rbp + 288], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 320]
 mov rdx, qword ptr [rbp + 328]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 352]
 mov rdx, qword ptr [rbp + 360]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 call rt_arg_stage@PLT
 mov edi, 3
 mov rsi, qword ptr [rbp + 416]
 mov rdx, qword ptr [rbp + 424]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx748_0]
 mov esi, 4
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx748_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx748_3]
 lea rdx, [rip + .Lx748_4]
 jmp rax
.Lx748_3:
 mov qword ptr [rbp + 296], rsp
 mov rax, qword ptr [rbp + 288]
 test rax, rax
 jne .Lx748_5
 mov qword ptr [rbp + 288], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx748_2
.Lx748_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx748_2
.Lx748_4:
 mov rax, qword ptr [rbp + 288]
 test rax, rax
 jne .Lx748_6
 mov qword ptr [rbp + 288], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx748_2
.Lx748_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx748_2
.Lx748_1:
 call rt_faildescr@PLT
.Lx748_2:
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain666_n5_α
 jmp xchain666_n55_α
 xchain666_n54_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 296]
 jmp qword ptr [rsp]
.Lx748_0:
 .quad .Lx748_0_s
.Lx748_0_s:
 .string "leap_year/4"
# IR_SUSPEND yield+resume
 xchain666_n55_α:
 lea rax, [rip + xchain666_n55_β]
 mov qword ptr [rbp + 2624], rax
 mov rax, qword ptr [rbp + 128]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 136]
 mov qword ptr [rbp + 8], rax
 jmp proc_compute_it$5_γ
 xchain666_n55_β:
 jmp xchain666_n54_β
proc_compute_it$5_res:
add rsp, 8
pop rbp
proc_compute_it$5_β:
jmp qword ptr [rbp + 2624]
proc_compute_it$5_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_compute_it$5_res]
push rax
mov rax, [rbp + 2792]
mov rbp, [rbp + 2808]
jmp rax
proc_compute_it$5_ω:
mov rax, [rbp + 2800]
lea rsp, [rbp + 2816]
mov rbp, [rbp + 2808]
jmp rax
  .globl proc_leap_year$4_α
proc_leap_year$4_α:
#=======================================================================================================================
    .global proc_leap_year$4_α
    .global proc_leap_year$4_β
    .global proc_leap_year$4_γ
    .global proc_leap_year$4_ω
  sub rsp, 4240
  mov [rsp + 4216], rcx
  mov [rsp + 4224], rdx
  mov [rsp + 4232], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 4104], rsp
  mov rdi, rsp
  mov esi, 4080
  mov edx, 4208
  call rt_jmp_frame_lexprep2@PLT
proc_leap_year$4_α_body:
lea rax, [rip + xchain751_n65_β]
mov qword ptr [rbp + 4080], rax
 xchain751_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 128]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_leap_year$4_ω
 jmp xchain751_n1_α
 xchain751_n0_β:
 jmp proc_leap_year$4_ω
# IR_VAR_REF
 xchain751_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 4016], rax
 mov qword ptr [rbp + 4024], rdx
 jmp xchain751_n2_α
# IR_VAR_REF
 xchain751_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 4192]
 mov qword ptr [rbp + 4048], rax
 mov qword ptr [rbp + 4056], rdx
 jmp xchain751_n3_α
 xchain751_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4016] -> [zr+3968]
 mov rax, qword ptr [rbp + 4016]
 mov qword ptr [rbp + 3968], rax
 mov rax, qword ptr [rbp + 4024]
 mov qword ptr [rbp + 3976], rax
# marshal arg1 = producer-box slot [zr+4048] -> [zr+3984]
 mov rax, qword ptr [rbp + 4048]
 mov qword ptr [rbp + 3984], rax
 mov rax, qword ptr [rbp + 4056]
 mov qword ptr [rbp + 3992], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 3968]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 3952], rax
 mov qword ptr [rbp + 3960], rdx
 cmp eax, 99
 je xchain751_n5_α
 jmp xchain751_n4_α
 xchain751_n3_β:
 jmp xchain751_n5_α
# IR_VAR_REF
 xchain751_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 3888], rax
 mov qword ptr [rbp + 3896], rdx
 jmp xchain751_n6_α
 xchain751_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+3168]
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 3168], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 3176], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 3168]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 3152], rax
 mov qword ptr [rbp + 3160], rdx
 cmp eax, 99
 je proc_leap_year$4_ω
 jmp xchain751_n7_α
 xchain751_n5_β:
 jmp proc_leap_year$4_ω
# IR_VAR_REF
 xchain751_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 4144]
 mov qword ptr [rbp + 3920], rax
 mov qword ptr [rbp + 3928], rdx
 jmp xchain751_n8_α
# IR_VAR_REF
 xchain751_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3088], rax
 mov qword ptr [rbp + 3096], rdx
 jmp xchain751_n9_α
 xchain751_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3888] -> [zr+3840]
 mov rax, qword ptr [rbp + 3888]
 mov qword ptr [rbp + 3840], rax
 mov rax, qword ptr [rbp + 3896]
 mov qword ptr [rbp + 3848], rax
# marshal arg1 = producer-box slot [zr+3920] -> [zr+3856]
 mov rax, qword ptr [rbp + 3920]
 mov qword ptr [rbp + 3856], rax
 mov rax, qword ptr [rbp + 3928]
 mov qword ptr [rbp + 3864], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 3840]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 3824], rax
 mov qword ptr [rbp + 3832], rdx
 cmp eax, 99
 je xchain751_n5_α
 jmp xchain751_n10_α
 xchain751_n8_β:
 jmp xchain751_n5_α
# IR_VAR_REF
 xchain751_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 4192]
 mov qword ptr [rbp + 3120], rax
 mov qword ptr [rbp + 3128], rdx
 jmp xchain751_n11_α
# IR_VAR_REF
 xchain751_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 3760], rax
 mov qword ptr [rbp + 3768], rdx
 jmp xchain751_n12_α
 xchain751_n11_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3088] -> [zr+3040]
 mov rax, qword ptr [rbp + 3088]
 mov qword ptr [rbp + 3040], rax
 mov rax, qword ptr [rbp + 3096]
 mov qword ptr [rbp + 3048], rax
# marshal arg1 = producer-box slot [zr+3120] -> [zr+3056]
 mov rax, qword ptr [rbp + 3120]
 mov qword ptr [rbp + 3056], rax
 mov rax, qword ptr [rbp + 3128]
 mov qword ptr [rbp + 3064], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 3040]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 3024], rax
 mov qword ptr [rbp + 3032], rdx
 cmp eax, 99
 je xchain751_n14_α
 jmp xchain751_n13_α
 xchain751_n11_β:
 jmp xchain751_n14_α
# IR_VAR_REF
 xchain751_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 4176]
 mov qword ptr [rbp + 3792], rax
 mov qword ptr [rbp + 3800], rdx
 jmp xchain751_n15_α
# IR_VAR_REF
 xchain751_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2960], rax
 mov qword ptr [rbp + 2968], rdx
 jmp xchain751_n16_α
 xchain751_n14_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+2016]
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 2016], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 2024], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 2016]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 2000], rax
 mov qword ptr [rbp + 2008], rdx
 cmp eax, 99
 je proc_leap_year$4_ω
 jmp xchain751_n17_α
 xchain751_n14_β:
 jmp proc_leap_year$4_ω
 xchain751_n15_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3760] -> [zr+3712]
 mov rax, qword ptr [rbp + 3760]
 mov qword ptr [rbp + 3712], rax
 mov rax, qword ptr [rbp + 3768]
 mov qword ptr [rbp + 3720], rax
# marshal arg1 = producer-box slot [zr+3792] -> [zr+3728]
 mov rax, qword ptr [rbp + 3792]
 mov qword ptr [rbp + 3728], rax
 mov rax, qword ptr [rbp + 3800]
 mov qword ptr [rbp + 3736], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 3712]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 3696], rax
 mov qword ptr [rbp + 3704], rdx
 cmp eax, 99
 je xchain751_n5_α
 jmp xchain751_n18_α
 xchain751_n15_β:
 jmp xchain751_n5_α
# IR_VAR_REF
 xchain751_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 4144]
 mov qword ptr [rbp + 2992], rax
 mov qword ptr [rbp + 3000], rdx
 jmp xchain751_n19_α
# IR_VAR_REF
 xchain751_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1936], rax
 mov qword ptr [rbp + 1944], rdx
 jmp xchain751_n20_α
# IR_VAR_REF
 xchain751_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 64]
 mov qword ptr [rbp + 3632], rax
 mov qword ptr [rbp + 3640], rdx
 jmp xchain751_n21_α
 xchain751_n19_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2960] -> [zr+2912]
 mov rax, qword ptr [rbp + 2960]
 mov qword ptr [rbp + 2912], rax
 mov rax, qword ptr [rbp + 2968]
 mov qword ptr [rbp + 2920], rax
# marshal arg1 = producer-box slot [zr+2992] -> [zr+2928]
 mov rax, qword ptr [rbp + 2992]
 mov qword ptr [rbp + 2928], rax
 mov rax, qword ptr [rbp + 3000]
 mov qword ptr [rbp + 2936], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2912]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2896], rax
 mov qword ptr [rbp + 2904], rdx
 cmp eax, 99
 je xchain751_n14_α
 jmp xchain751_n22_α
 xchain751_n19_β:
 jmp xchain751_n14_α
# IR_VAR_REF
 xchain751_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 4192]
 mov qword ptr [rbp + 1968], rax
 mov qword ptr [rbp + 1976], rdx
 jmp xchain751_n23_α
# IR_VAR_REF
 xchain751_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 4128]
 mov qword ptr [rbp + 3664], rax
 mov qword ptr [rbp + 3672], rdx
 jmp xchain751_n24_α
# IR_VAR_REF
 xchain751_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 2832], rax
 mov qword ptr [rbp + 2840], rdx
 jmp xchain751_n25_α
 xchain751_n23_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1936] -> [zr+1888]
 mov rax, qword ptr [rbp + 1936]
 mov qword ptr [rbp + 1888], rax
 mov rax, qword ptr [rbp + 1944]
 mov qword ptr [rbp + 1896], rax
# marshal arg1 = producer-box slot [zr+1968] -> [zr+1904]
 mov rax, qword ptr [rbp + 1968]
 mov qword ptr [rbp + 1904], rax
 mov rax, qword ptr [rbp + 1976]
 mov qword ptr [rbp + 1912], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1888]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1872], rax
 mov qword ptr [rbp + 1880], rdx
 cmp eax, 99
 je xchain751_n27_α
 jmp xchain751_n26_α
 xchain751_n23_β:
 jmp xchain751_n27_α
 xchain751_n24_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3632] -> [zr+3584]
 mov rax, qword ptr [rbp + 3632]
 mov qword ptr [rbp + 3584], rax
 mov rax, qword ptr [rbp + 3640]
 mov qword ptr [rbp + 3592], rax
# marshal arg1 = producer-box slot [zr+3664] -> [zr+3600]
 mov rax, qword ptr [rbp + 3664]
 mov qword ptr [rbp + 3600], rax
 mov rax, qword ptr [rbp + 3672]
 mov qword ptr [rbp + 3608], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 3584]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 3568], rax
 mov qword ptr [rbp + 3576], rdx
 cmp eax, 99
 je xchain751_n5_α
 jmp xchain751_n28_α
 xchain751_n24_β:
 jmp xchain751_n5_α
# IR_VAR_REF
 xchain751_n25_α:
 mov rax, 4294967305
 lea rdx, [rbp + 4160]
 mov qword ptr [rbp + 2864], rax
 mov qword ptr [rbp + 2872], rdx
 jmp xchain751_n29_α
# IR_VAR_REF
 xchain751_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1808], rax
 mov qword ptr [rbp + 1816], rdx
 jmp xchain751_n30_α
 xchain751_n27_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+1088]
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 1088], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 1096], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1088]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 cmp eax, 99
 je proc_leap_year$4_ω
 jmp xchain751_n31_α
 xchain751_n27_β:
 jmp proc_leap_year$4_ω
# IR_LIT_INTEGER
 xchain751_n28_α:
 mov qword ptr [rbp + 3408], 6
 mov rax, qword ptr [rip + .Lx797_0]
 mov qword ptr [rbp + 3416], rax
 jmp xchain751_n32_α
.Lx797_0:
 .quad 0
 xchain751_n29_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2832] -> [zr+2784]
 mov rax, qword ptr [rbp + 2832]
 mov qword ptr [rbp + 2784], rax
 mov rax, qword ptr [rbp + 2840]
 mov qword ptr [rbp + 2792], rax
# marshal arg1 = producer-box slot [zr+2864] -> [zr+2800]
 mov rax, qword ptr [rbp + 2864]
 mov qword ptr [rbp + 2800], rax
 mov rax, qword ptr [rbp + 2872]
 mov qword ptr [rbp + 2808], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2784]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2768], rax
 mov qword ptr [rbp + 2776], rdx
 cmp eax, 99
 je xchain751_n14_α
 jmp xchain751_n33_α
 xchain751_n29_β:
 jmp xchain751_n14_α
# IR_VAR_REF
 xchain751_n30_α:
 mov rax, 4294967305
 lea rdx, [rbp + 4144]
 mov qword ptr [rbp + 1840], rax
 mov qword ptr [rbp + 1848], rdx
 jmp xchain751_n34_α
# IR_VAR_REF
 xchain751_n31_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 jmp xchain751_n35_α
# IR_VAR
 xchain751_n32_α:
 mov rax, qword ptr [rbp + 4192]
 mov qword ptr [rbp + 3504], rax
 mov rax, qword ptr [rbp + 4200]
 mov qword ptr [rbp + 3512], rax
 jmp xchain751_n36_α
# IR_VAR_REF
 xchain751_n33_α:
 mov rax, 4294967305
 lea rdx, [rbp + 64]
 mov qword ptr [rbp + 2704], rax
 mov qword ptr [rbp + 2712], rdx
 jmp xchain751_n37_α
 xchain751_n34_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1808] -> [zr+1760]
 mov rax, qword ptr [rbp + 1808]
 mov qword ptr [rbp + 1760], rax
 mov rax, qword ptr [rbp + 1816]
 mov qword ptr [rbp + 1768], rax
# marshal arg1 = producer-box slot [zr+1840] -> [zr+1776]
 mov rax, qword ptr [rbp + 1840]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 1848]
 mov qword ptr [rbp + 1784], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1760]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1744], rax
 mov qword ptr [rbp + 1752], rdx
 cmp eax, 99
 je xchain751_n27_α
 jmp xchain751_n38_α
 xchain751_n34_β:
 jmp xchain751_n27_α
# IR_VAR_REF
 xchain751_n35_α:
 mov rax, 4294967305
 lea rdx, [rbp + 4176]
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain751_n39_α
# IR_LIT_INTEGER
 xchain751_n36_α:
 mov qword ptr [rbp + 3536], 6
 mov rax, qword ptr [rip + .Lx810_0]
 mov qword ptr [rbp + 3544], rax
 jmp xchain751_n40_α
.Lx810_0:
 .quad 4
# IR_VAR_REF
 xchain751_n37_α:
 mov rax, 4294967305
 lea rdx, [rbp + 4128]
 mov qword ptr [rbp + 2736], rax
 mov qword ptr [rbp + 2744], rdx
 jmp xchain751_n41_α
# IR_VAR_REF
 xchain751_n38_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1680], rax
 mov qword ptr [rbp + 1688], rdx
 jmp xchain751_n42_α
 xchain751_n39_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1008] -> [zr+960]
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 968], rax
# marshal arg1 = producer-box slot [zr+1040] -> [zr+976]
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 984], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 960]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 cmp eax, 99
 je xchain751_n44_α
 jmp xchain751_n43_α
 xchain751_n39_β:
 jmp xchain751_n44_α
 xchain751_n40_α:
# BOX IR_CALL $ax_mod(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3504] -> [zr+3456]
 mov rax, qword ptr [rbp + 3504]
 mov qword ptr [rbp + 3456], rax
 mov rax, qword ptr [rbp + 3512]
 mov qword ptr [rbp + 3464], rax
# marshal arg1 = producer-box slot [zr+3536] -> [zr+3472]
 mov rax, qword ptr [rbp + 3536]
 mov qword ptr [rbp + 3472], rax
 mov rax, qword ptr [rbp + 3544]
 mov qword ptr [rbp + 3480], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_mod (no by-name dispatch)
 lea rdi, [rbp + 3456]
 mov esi, 2
 call rt_pl_dop_ax_mod@PLT
 mov qword ptr [rbp + 3440], rax
 mov qword ptr [rbp + 3448], rdx
 cmp eax, 99
 je xchain751_n5_α
 jmp xchain751_n45_α
 xchain751_n40_β:
 jmp xchain751_n5_α
 xchain751_n41_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2704] -> [zr+2656]
 mov rax, qword ptr [rbp + 2704]
 mov qword ptr [rbp + 2656], rax
 mov rax, qword ptr [rbp + 2712]
 mov qword ptr [rbp + 2664], rax
# marshal arg1 = producer-box slot [zr+2736] -> [zr+2672]
 mov rax, qword ptr [rbp + 2736]
 mov qword ptr [rbp + 2672], rax
 mov rax, qword ptr [rbp + 2744]
 mov qword ptr [rbp + 2680], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2656]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2640], rax
 mov qword ptr [rbp + 2648], rdx
 cmp eax, 99
 je xchain751_n14_α
 jmp xchain751_n46_α
 xchain751_n41_β:
 jmp xchain751_n14_α
# IR_VAR_REF
 xchain751_n42_α:
 mov rax, 4294967305
 lea rdx, [rbp + 4176]
 mov qword ptr [rbp + 1712], rax
 mov qword ptr [rbp + 1720], rdx
 jmp xchain751_n47_α
# IR_VAR_REF
 xchain751_n43_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp xchain751_n48_α
 xchain751_n44_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+160]
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 168], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_unwind (no by-name dispatch)
 lea rdi, [rbp + 160]
 mov esi, 1
 call rt_pl_dop_trail_unwind@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je proc_leap_year$4_ω
 jmp proc_leap_year$4_ω
 xchain751_n44_β:
 jmp proc_leap_year$4_ω
 xchain751_n45_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3408] -> [zr+3360]
 mov rax, qword ptr [rbp + 3408]
 mov qword ptr [rbp + 3360], rax
 mov rax, qword ptr [rbp + 3416]
 mov qword ptr [rbp + 3368], rax
# marshal arg1 = producer-box slot [zr+3440] -> [zr+3376]
 mov rax, qword ptr [rbp + 3440]
 mov qword ptr [rbp + 3376], rax
 mov rax, qword ptr [rbp + 3448]
 mov qword ptr [rbp + 3384], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 3360]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 3344], rax
 mov qword ptr [rbp + 3352], rdx
 cmp eax, 99
 je xchain751_n5_α
 jmp xchain751_n49_α
 xchain751_n45_β:
 jmp xchain751_n5_α
# IR_LIT_INTEGER
 xchain751_n46_α:
 mov qword ptr [rbp + 2480], 6
 mov rax, qword ptr [rip + .Lx824_0]
 mov qword ptr [rbp + 2488], rax
 jmp xchain751_n50_α
.Lx824_0:
 .quad 0
 xchain751_n47_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1680] -> [zr+1632]
 mov rax, qword ptr [rbp + 1680]
 mov qword ptr [rbp + 1632], rax
 mov rax, qword ptr [rbp + 1688]
 mov qword ptr [rbp + 1640], rax
# marshal arg1 = producer-box slot [zr+1712] -> [zr+1648]
 mov rax, qword ptr [rbp + 1712]
 mov qword ptr [rbp + 1648], rax
 mov rax, qword ptr [rbp + 1720]
 mov qword ptr [rbp + 1656], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1632]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
 cmp eax, 99
 je xchain751_n27_α
 jmp xchain751_n51_α
 xchain751_n47_β:
 jmp xchain751_n27_α
# IR_VAR_REF
 xchain751_n48_α:
 mov rax, 4294967305
 lea rdx, [rbp + 4144]
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain751_n52_α
 xchain751_n49_α:
# IR_CUT
 jmp xchain751_n53_α
# IR_VAR
 xchain751_n50_α:
 mov rax, qword ptr [rbp + 4192]
 mov qword ptr [rbp + 2576], rax
 mov rax, qword ptr [rbp + 4200]
 mov qword ptr [rbp + 2584], rax
 jmp xchain751_n54_α
# IR_VAR_REF
 xchain751_n51_α:
 mov rax, 4294967305
 lea rdx, [rbp + 64]
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 jmp xchain751_n55_α
 xchain751_n52_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+880] -> [zr+832]
 mov rax, qword ptr [rbp + 880]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 888]
 mov qword ptr [rbp + 840], rax
# marshal arg1 = producer-box slot [zr+912] -> [zr+848]
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 856], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 832]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 cmp eax, 99
 je xchain751_n44_α
 jmp xchain751_n56_α
 xchain751_n52_β:
 jmp xchain751_n44_α
# IR_VAR_REF
 xchain751_n53_α:
 mov rax, 4294967305
 lea rdx, [rbp + 4144]
 mov qword ptr [rbp + 3280], rax
 mov qword ptr [rbp + 3288], rdx
 jmp xchain751_n57_α
# IR_LIT_INTEGER
 xchain751_n54_α:
 mov qword ptr [rbp + 2608], 6
 mov rax, qword ptr [rip + .Lx836_0]
 mov qword ptr [rbp + 2616], rax
 jmp xchain751_n58_α
.Lx836_0:
 .quad 100
# IR_VAR_REF
 xchain751_n55_α:
 mov rax, 4294967305
 lea rdx, [rbp + 4128]
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 jmp xchain751_n59_α
# IR_VAR_REF
 xchain751_n56_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain751_n60_α
# IR_VAR_REF
 xchain751_n57_α:
 mov rax, 4294967305
 lea rdx, [rbp + 4128]
 mov qword ptr [rbp + 3312], rax
 mov qword ptr [rbp + 3320], rdx
 jmp xchain751_n61_α
 xchain751_n58_α:
# BOX IR_CALL $ax_mod(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2576] -> [zr+2528]
 mov rax, qword ptr [rbp + 2576]
 mov qword ptr [rbp + 2528], rax
 mov rax, qword ptr [rbp + 2584]
 mov qword ptr [rbp + 2536], rax
# marshal arg1 = producer-box slot [zr+2608] -> [zr+2544]
 mov rax, qword ptr [rbp + 2608]
 mov qword ptr [rbp + 2544], rax
 mov rax, qword ptr [rbp + 2616]
 mov qword ptr [rbp + 2552], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_mod (no by-name dispatch)
 lea rdi, [rbp + 2528]
 mov esi, 2
 call rt_pl_dop_ax_mod@PLT
 mov qword ptr [rbp + 2512], rax
 mov qword ptr [rbp + 2520], rdx
 cmp eax, 99
 je xchain751_n14_α
 jmp xchain751_n62_α
 xchain751_n58_β:
 jmp xchain751_n14_α
 xchain751_n59_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1552] -> [zr+1504]
 mov rax, qword ptr [rbp + 1552]
 mov qword ptr [rbp + 1504], rax
 mov rax, qword ptr [rbp + 1560]
 mov qword ptr [rbp + 1512], rax
# marshal arg1 = producer-box slot [zr+1584] -> [zr+1520]
 mov rax, qword ptr [rbp + 1584]
 mov qword ptr [rbp + 1520], rax
 mov rax, qword ptr [rbp + 1592]
 mov qword ptr [rbp + 1528], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1504]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1488], rax
 mov qword ptr [rbp + 1496], rdx
 cmp eax, 99
 je xchain751_n27_α
 jmp xchain751_n63_α
 xchain751_n59_β:
 jmp xchain751_n27_α
# IR_VAR_REF
 xchain751_n60_α:
 mov rax, 4294967305
 lea rdx, [rbp + 4160]
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 jmp xchain751_n64_α
 xchain751_n61_α:
 mov qword ptr [rbp + 3248], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 3280]
 mov rdx, qword ptr [rbp + 3288]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 3312]
 mov rdx, qword ptr [rbp + 3320]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx848_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx848_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx848_3]
 lea rdx, [rip + .Lx848_4]
 jmp rax
.Lx848_3:
 mov qword ptr [rbp + 3256], rsp
 mov rax, qword ptr [rbp + 3248]
 test rax, rax
 jne .Lx848_5
 mov qword ptr [rbp + 3248], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx848_2
.Lx848_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx848_2
.Lx848_4:
 mov rax, qword ptr [rbp + 3248]
 test rax, rax
 jne .Lx848_6
 mov qword ptr [rbp + 3248], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx848_2
.Lx848_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx848_2
.Lx848_1:
 call rt_faildescr@PLT
.Lx848_2:
 mov qword ptr [rbp + 3200], rax
 mov qword ptr [rbp + 3208], rdx
 cmp eax, 99
 je xchain751_n44_α
 jmp xchain751_n65_α
 xchain751_n61_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 3256]
 jmp qword ptr [rsp]
.Lx848_0:
 .quad .Lx848_0_s
.Lx848_0_s:
 .string "dow/2"
 xchain751_n62_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2480] -> [zr+2432]
 mov rax, qword ptr [rbp + 2480]
 mov qword ptr [rbp + 2432], rax
 mov rax, qword ptr [rbp + 2488]
 mov qword ptr [rbp + 2440], rax
# marshal arg1 = producer-box slot [zr+2512] -> [zr+2448]
 mov rax, qword ptr [rbp + 2512]
 mov qword ptr [rbp + 2448], rax
 mov rax, qword ptr [rbp + 2520]
 mov qword ptr [rbp + 2456], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 2432]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 2416], rax
 mov qword ptr [rbp + 2424], rdx
 cmp eax, 99
 je xchain751_n14_α
 jmp xchain751_n66_α
 xchain751_n62_β:
 jmp xchain751_n14_α
# IR_LIT_INTEGER
 xchain751_n63_α:
 mov qword ptr [rbp + 1328], 6
 mov rax, qword ptr [rip + .Lx850_0]
 mov qword ptr [rbp + 1336], rax
 jmp xchain751_n67_α
.Lx850_0:
 .quad 0
 xchain751_n64_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+752] -> [zr+704]
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 712], rax
# marshal arg1 = producer-box slot [zr+784] -> [zr+720]
 mov rax, qword ptr [rbp + 784]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 792]
 mov qword ptr [rbp + 728], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 704]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 cmp eax, 99
 je xchain751_n44_α
 jmp xchain751_n68_α
 xchain751_n64_β:
 jmp xchain751_n44_α
# IR_SUSPEND yield+resume
 xchain751_n65_α:
 lea rax, [rip + xchain751_n65_β]
 mov qword ptr [rbp + 4080], rax
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 8], rax
 jmp proc_leap_year$4_γ
 xchain751_n65_β:
 jmp xchain751_n61_β
 xchain751_n66_α:
# IR_CUT
 jmp xchain751_n69_α
# IR_VAR
 xchain751_n67_α:
 mov rax, qword ptr [rbp + 4192]
 mov qword ptr [rbp + 1424], rax
 mov rax, qword ptr [rbp + 4200]
 mov qword ptr [rbp + 1432], rax
 jmp xchain751_n70_α
# IR_VAR_REF
 xchain751_n68_α:
 mov rax, 4294967305
 lea rdx, [rbp + 64]
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain751_n71_α
# IR_VAR_REF
 xchain751_n69_α:
 mov rax, 4294967305
 lea rdx, [rbp + 4176]
 mov qword ptr [rbp + 2256], rax
 mov qword ptr [rbp + 2264], rdx
 jmp xchain751_n72_α
# IR_LIT_INTEGER
 xchain751_n70_α:
 mov qword ptr [rbp + 1456], 6
 mov rax, qword ptr [rip + .Lx861_0]
 mov qword ptr [rbp + 1464], rax
 jmp xchain751_n73_α
.Lx861_0:
 .quad 400
# IR_VAR_REF
 xchain751_n71_α:
 mov rax, 4294967305
 lea rdx, [rbp + 4128]
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain751_n74_α
# IR_VAR
 xchain751_n72_α:
 mov rax, qword ptr [rbp + 4144]
 mov qword ptr [rbp + 2352], rax
 mov rax, qword ptr [rbp + 4152]
 mov qword ptr [rbp + 2360], rax
 jmp xchain751_n75_α
 xchain751_n73_α:
# BOX IR_CALL $ax_mod(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1424] -> [zr+1376]
 mov rax, qword ptr [rbp + 1424]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 1432]
 mov qword ptr [rbp + 1384], rax
# marshal arg1 = producer-box slot [zr+1456] -> [zr+1392]
 mov rax, qword ptr [rbp + 1456]
 mov qword ptr [rbp + 1392], rax
 mov rax, qword ptr [rbp + 1464]
 mov qword ptr [rbp + 1400], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_mod (no by-name dispatch)
 lea rdi, [rbp + 1376]
 mov esi, 2
 call rt_pl_dop_ax_mod@PLT
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 cmp eax, 99
 je xchain751_n27_α
 jmp xchain751_n76_α
 xchain751_n73_β:
 jmp xchain751_n27_α
 xchain751_n74_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+624] -> [zr+576]
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 584], rax
# marshal arg1 = producer-box slot [zr+656] -> [zr+592]
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [rbp + 600], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 576]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 cmp eax, 99
 je xchain751_n44_α
 jmp xchain751_n77_α
 xchain751_n74_β:
 jmp xchain751_n44_α
# IR_VAR
 xchain751_n75_α:
 mov rax, qword ptr [rbp + 4160]
 mov qword ptr [rbp + 2384], rax
 mov rax, qword ptr [rbp + 4168]
 mov qword ptr [rbp + 2392], rax
 jmp xchain751_n78_α
 xchain751_n76_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1328] -> [zr+1280]
 mov rax, qword ptr [rbp + 1328]
 mov qword ptr [rbp + 1280], rax
 mov rax, qword ptr [rbp + 1336]
 mov qword ptr [rbp + 1288], rax
# marshal arg1 = producer-box slot [zr+1360] -> [zr+1296]
 mov rax, qword ptr [rbp + 1360]
 mov qword ptr [rbp + 1296], rax
 mov rax, qword ptr [rbp + 1368]
 mov qword ptr [rbp + 1304], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 1280]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 cmp eax, 99
 je xchain751_n27_α
 jmp xchain751_n79_α
 xchain751_n76_β:
 jmp xchain751_n27_α
# IR_VAR_REF
 xchain751_n77_α:
 mov rax, 4294967305
 lea rdx, [rbp + 4112]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain751_n80_α
 xchain751_n78_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2352] -> [zr+2304]
 mov rax, qword ptr [rbp + 2352]
 mov qword ptr [rbp + 2304], rax
 mov rax, qword ptr [rbp + 2360]
 mov qword ptr [rbp + 2312], rax
# marshal arg1 = producer-box slot [zr+2384] -> [zr+2320]
 mov rax, qword ptr [rbp + 2384]
 mov qword ptr [rbp + 2320], rax
 mov rax, qword ptr [rbp + 2392]
 mov qword ptr [rbp + 2328], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_sub (no by-name dispatch)
 lea rdi, [rbp + 2304]
 mov esi, 2
 call rt_pl_dop_ax_sub@PLT
 mov qword ptr [rbp + 2288], rax
 mov qword ptr [rbp + 2296], rdx
 cmp eax, 99
 je xchain751_n44_α
 jmp xchain751_n81_α
 xchain751_n78_β:
 jmp xchain751_n44_α
 xchain751_n79_α:
# IR_CUT
 jmp xchain751_n82_α
# IR_VAR
 xchain751_n80_α:
 mov rax, qword ptr [rbp + 4144]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 4152]
 mov qword ptr [rbp + 504], rax
 jmp xchain751_n83_α
 xchain751_n81_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2256] -> [zr+2208]
 mov rax, qword ptr [rbp + 2256]
 mov qword ptr [rbp + 2208], rax
 mov rax, qword ptr [rbp + 2264]
 mov qword ptr [rbp + 2216], rax
# marshal arg1 = producer-box slot [zr+2288] -> [zr+2224]
 mov rax, qword ptr [rbp + 2288]
 mov qword ptr [rbp + 2224], rax
 mov rax, qword ptr [rbp + 2296]
 mov qword ptr [rbp + 2232], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 2208]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 2192], rax
 mov qword ptr [rbp + 2200], rdx
 cmp eax, 99
 je xchain751_n44_α
 jmp xchain751_n84_α
 xchain751_n81_β:
 jmp xchain751_n44_α
# IR_VAR_REF
 xchain751_n82_α:
 mov rax, 4294967305
 lea rdx, [rbp + 4144]
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 jmp xchain751_n85_α
# IR_VAR
 xchain751_n83_α:
 mov rax, qword ptr [rbp + 4160]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 4168]
 mov qword ptr [rbp + 536], rax
 jmp xchain751_n86_α
# IR_VAR_REF
 xchain751_n84_α:
 mov rax, 4294967305
 lea rdx, [rbp + 4176]
 mov qword ptr [rbp + 2128], rax
 mov qword ptr [rbp + 2136], rdx
 jmp xchain751_n87_α
# IR_VAR_REF
 xchain751_n85_α:
 mov rax, 4294967305
 lea rdx, [rbp + 4128]
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 jmp xchain751_n88_α
 xchain751_n86_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+496] -> [zr+448]
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 456], rax
# marshal arg1 = producer-box slot [zr+528] -> [zr+464]
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 472], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_sub (no by-name dispatch)
 lea rdi, [rbp + 448]
 mov esi, 2
 call rt_pl_dop_ax_sub@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je xchain751_n44_α
 jmp xchain751_n89_α
 xchain751_n86_β:
 jmp xchain751_n44_α
# IR_VAR_REF
 xchain751_n87_α:
 mov rax, 4294967305
 lea rdx, [rbp + 4128]
 mov qword ptr [rbp + 2160], rax
 mov qword ptr [rbp + 2168], rdx
 jmp xchain751_n90_α
 xchain751_n88_α:
 mov qword ptr [rbp + 1168], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 1200]
 mov rdx, qword ptr [rbp + 1208]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1232]
 mov rdx, qword ptr [rbp + 1240]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx890_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx890_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx890_3]
 lea rdx, [rip + .Lx890_4]
 jmp rax
.Lx890_3:
 mov qword ptr [rbp + 1176], rsp
 mov rax, qword ptr [rbp + 1168]
 test rax, rax
 jne .Lx890_5
 mov qword ptr [rbp + 1168], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx890_2
.Lx890_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx890_2
.Lx890_4:
 mov rax, qword ptr [rbp + 1168]
 test rax, rax
 jne .Lx890_6
 mov qword ptr [rbp + 1168], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx890_2
.Lx890_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx890_2
.Lx890_1:
 call rt_faildescr@PLT
.Lx890_2:
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 cmp eax, 99
 je xchain751_n44_α
 jmp xchain751_n91_α
 xchain751_n88_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 1176]
 jmp qword ptr [rsp]
.Lx890_0:
 .quad .Lx890_0_s
.Lx890_0_s:
 .string "dow/2"
 xchain751_n89_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+400] -> [zr+352]
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 360], rax
# marshal arg1 = producer-box slot [zr+432] -> [zr+368]
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 376], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 352]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 cmp eax, 99
 je xchain751_n44_α
 jmp xchain751_n92_α
 xchain751_n89_β:
 jmp xchain751_n44_α
 xchain751_n90_α:
 mov qword ptr [rbp + 2096], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 2128]
 mov rdx, qword ptr [rbp + 2136]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 2160]
 mov rdx, qword ptr [rbp + 2168]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx893_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx893_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx893_3]
 lea rdx, [rip + .Lx893_4]
 jmp rax
.Lx893_3:
 mov qword ptr [rbp + 2104], rsp
 mov rax, qword ptr [rbp + 2096]
 test rax, rax
 jne .Lx893_5
 mov qword ptr [rbp + 2096], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx893_2
.Lx893_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx893_2
.Lx893_4:
 mov rax, qword ptr [rbp + 2096]
 test rax, rax
 jne .Lx893_6
 mov qword ptr [rbp + 2096], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx893_2
.Lx893_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx893_2
.Lx893_1:
 call rt_faildescr@PLT
.Lx893_2:
 mov qword ptr [rbp + 2048], rax
 mov qword ptr [rbp + 2056], rdx
 cmp eax, 99
 je xchain751_n44_α
 jmp xchain751_n93_α
 xchain751_n90_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 2104]
 jmp qword ptr [rsp]
.Lx893_0:
 .quad .Lx893_0_s
.Lx893_0_s:
 .string "dow/2"
# IR_SUSPEND yield+resume
 xchain751_n91_α:
 lea rax, [rip + xchain751_n91_β]
 mov qword ptr [rbp + 4080], rax
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 8], rax
 jmp proc_leap_year$4_γ
 xchain751_n91_β:
 jmp xchain751_n88_β
# IR_VAR_REF
 xchain751_n92_α:
 mov rax, 4294967305
 lea rdx, [rbp + 4112]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain751_n94_α
# IR_SUSPEND yield+resume
 xchain751_n93_α:
 lea rax, [rip + xchain751_n93_β]
 mov qword ptr [rbp + 4080], rax
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 8], rax
 jmp proc_leap_year$4_γ
 xchain751_n93_β:
 jmp xchain751_n90_β
# IR_VAR_REF
 xchain751_n94_α:
 mov rax, 4294967305
 lea rdx, [rbp + 4128]
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain751_n95_α
 xchain751_n95_α:
 mov qword ptr [rbp + 240], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx903_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx903_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx903_3]
 lea rdx, [rip + .Lx903_4]
 jmp rax
.Lx903_3:
 mov qword ptr [rbp + 248], rsp
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx903_5
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx903_2
.Lx903_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx903_2
.Lx903_4:
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx903_6
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx903_2
.Lx903_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx903_2
.Lx903_1:
 call rt_faildescr@PLT
.Lx903_2:
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain751_n44_α
 jmp xchain751_n96_α
 xchain751_n95_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 248]
 jmp qword ptr [rsp]
.Lx903_0:
 .quad .Lx903_0_s
.Lx903_0_s:
 .string "dow/2"
# IR_SUSPEND yield+resume
 xchain751_n96_α:
 lea rax, [rip + xchain751_n96_β]
 mov qword ptr [rbp + 4080], rax
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 8], rax
 jmp proc_leap_year$4_γ
 xchain751_n96_β:
 jmp xchain751_n95_β
proc_leap_year$4_res:
add rsp, 8
pop rbp
proc_leap_year$4_β:
jmp qword ptr [rbp + 4080]
proc_leap_year$4_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_leap_year$4_res]
push rax
mov rax, [rbp + 4216]
mov rbp, [rbp + 4232]
jmp rax
proc_leap_year$4_ω:
mov rax, [rbp + 4224]
lea rsp, [rbp + 4240]
mov rbp, [rbp + 4232]
jmp rax
proc_startup:
  sub rsp, 8
  .section .rodata
  .Lstartup_pname0: .string "dow/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_dow$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 2272
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname1: .string "day_of_week/4"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_day_of_week$4_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 4
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1312
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname2: .string "cal_key/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_cal_key$3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 15712
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname3: .string "compute_it/5"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_compute_it$5_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 5
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 2784
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname4: .string "leap_year/4"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname4]
  lea rsi, [rip + proc_leap_year$4_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 4
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 4208
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname4]
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
  mov qword ptr [rsp + 536], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
main_α_body:
 xchain906_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain906_n1_α
 xchain906_n0_β:
 jmp main_ω
# IR_LIT_INTEGER
 xchain906_n1_α:
 mov qword ptr [rbp + 400], 6
 mov rax, qword ptr [rip + .Lx908_0]
 mov qword ptr [rbp + 408], rax
 jmp xchain906_n2_α
.Lx908_0:
 .quad 1993
# IR_LIT_INTEGER
 xchain906_n2_α:
 mov qword ptr [rbp + 432], 6
 mov rax, qword ptr [rip + .Lx909_0]
 mov qword ptr [rbp + 440], rax
 jmp xchain906_n3_α
.Lx909_0:
 .quad 4
# IR_LIT_INTEGER
 xchain906_n3_α:
 mov qword ptr [rbp + 464], 6
 mov rax, qword ptr [rip + .Lx910_0]
 mov qword ptr [rbp + 472], rax
 jmp xchain906_n4_α
.Lx910_0:
 .quad 9
# IR_VAR_REF
 xchain906_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 544]
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain906_n5_α
 xchain906_n5_α:
 mov qword ptr [rbp + 368], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 400]
 mov rdx, qword ptr [rbp + 408]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 432]
 mov rdx, qword ptr [rbp + 440]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 464]
 mov rdx, qword ptr [rbp + 472]
 call rt_arg_stage@PLT
 mov edi, 3
 mov rsi, qword ptr [rbp + 496]
 mov rdx, qword ptr [rbp + 504]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx914_0]
 mov esi, 4
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx914_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx914_3]
 lea rdx, [rip + .Lx914_4]
 jmp rax
.Lx914_3:
 mov qword ptr [rbp + 376], rsp
 mov rax, qword ptr [rbp + 368]
 test rax, rax
 jne .Lx914_5
 mov qword ptr [rbp + 368], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx914_2
.Lx914_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx914_2
.Lx914_4:
 mov rax, qword ptr [rbp + 368]
 test rax, rax
 jne .Lx914_6
 mov qword ptr [rbp + 368], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx914_2
.Lx914_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx914_2
.Lx914_1:
 call rt_faildescr@PLT
.Lx914_2:
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain906_n7_α
 jmp xchain906_n6_α
 xchain906_n5_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 376]
 jmp qword ptr [rsp]
.Lx914_0:
 .quad .Lx914_0_s
.Lx914_0_s:
 .string "day_of_week/4"
# IR_VAR
 xchain906_n6_α:
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 264], rax
 jmp xchain906_n8_α
 xchain906_n7_α:
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
 xchain906_n7_β:
 jmp main_ω
 xchain906_n8_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 232], rax
  .section .rodata
  .Lrkfn919: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn919]
 lea rsi, [rbp + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain906_n5_β
 jmp xchain906_n9_α
 xchain906_n8_β:
 jmp xchain906_n5_β
# IR_LIT_STRING
 xchain906_n9_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx920_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain906_n10_α
.Lx920_0:
 .quad .Lx920_0_s
.Lx920_0_s:
 .string ""
 xchain906_n10_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn922: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn922]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain906_n5_β
 jmp xchain906_n11_α
 xchain906_n10_β:
 jmp xchain906_n5_β
# IR_MOVE_LABEL
 xchain906_n11_α:
 lea rax, [rip + xchain906_n5_β]
 mov qword ptr [rbp + 32], rax
 jmp main_γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain906_n12_α:
 jmp qword ptr [rbp + 32]
 xchain906_n12_β:
 jmp main_ω
main_β:
jmp xchain906_n12_α
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 536]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 536]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
