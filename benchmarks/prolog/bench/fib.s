  .intel_syntax noprefix
  .text
  .globl proc_fib$2_α
proc_fib$2_α:
#=======================================================================================================================
    .global proc_fib$2_α
    .global proc_fib$2_β
    .global proc_fib$2_γ
    .global proc_fib$2_ω
  sub rsp, 2224
  mov [rsp + 2200], rcx
  mov [rsp + 2208], rdx
  mov [rsp + 2216], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 2192
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 2088], rsp
  mov rdi, rsp
  mov esi, 2192
  call rt_jmp_frame_lexprep@PLT
proc_fib$2_α_body:
 xchain0_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_fib$2_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_fib$2_ω
# IR_VAR_REF
 xchain0_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2016], rax
 mov qword ptr [rbp + 2024], rdx
 jmp xchain0_n2_α
# IR_LIT_INTEGER
 xchain0_n2_α:
 mov qword ptr [rbp + 2048], 6
 mov rax, qword ptr [rip + .Lx4_0]
 mov qword ptr [rbp + 2056], rax
 jmp xchain0_n3_α
<<<<<<< HEAD
.Lx5_0:
=======
.Lx4_0:
>>>>>>> origin/main
 .quad 0
 xchain0_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2016] -> [zr+1968]
 mov rax, qword ptr [rbp + 2016]
 mov qword ptr [rbp + 1968], rax
 mov rax, qword ptr [rbp + 2024]
 mov qword ptr [rbp + 1976], rax
# marshal arg1 = producer-box slot [zr+2048] -> [zr+1984]
 mov rax, qword ptr [rbp + 2048]
 mov qword ptr [rbp + 1984], rax
 mov rax, qword ptr [rbp + 2056]
 mov qword ptr [rbp + 1992], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1968]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1952], rax
 mov qword ptr [rbp + 1960], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1888], rax
 mov qword ptr [rbp + 1896], rdx
 jmp xchain0_n6_α
 xchain0_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1792]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 1792], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 1800], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1792]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1776], rax
 mov qword ptr [rbp + 1784], rdx
 cmp eax, 99
 je proc_fib$2_ω
 jmp xchain0_n7_α
 xchain0_n5_β:
 jmp proc_fib$2_ω
# IR_LIT_INTEGER
 xchain0_n6_α:
 mov qword ptr [rbp + 1920], 6
 mov rax, qword ptr [rip + .Lx9_0]
 mov qword ptr [rbp + 1928], rax
 jmp xchain0_n8_α
<<<<<<< HEAD
.Lx12_0:
=======
.Lx9_0:
>>>>>>> origin/main
 .quad 1
# IR_VAR_REF
 xchain0_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1712], rax
 mov qword ptr [rbp + 1720], rdx
 jmp xchain0_n9_α
 xchain0_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1888] -> [zr+1840]
 mov rax, qword ptr [rbp + 1888]
 mov qword ptr [rbp + 1840], rax
 mov rax, qword ptr [rbp + 1896]
 mov qword ptr [rbp + 1848], rax
# marshal arg1 = producer-box slot [zr+1920] -> [zr+1856]
 mov rax, qword ptr [rbp + 1920]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 1928]
 mov qword ptr [rbp + 1864], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1840]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1824], rax
 mov qword ptr [rbp + 1832], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n10_α
 xchain0_n8_β:
 jmp xchain0_n5_α
# IR_LIT_INTEGER
 xchain0_n9_α:
 mov qword ptr [rbp + 1744], 6
 mov rax, qword ptr [rip + .Lx13_0]
 mov qword ptr [rbp + 1752], rax
 jmp xchain0_n11_α
<<<<<<< HEAD
.Lx17_0:
=======
.Lx13_0:
>>>>>>> origin/main
 .quad 1
 xchain0_n10_α:
# IR_CUT
 jmp xchain0_n12_α
 xchain0_n11_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1712] -> [zr+1664]
 mov rax, qword ptr [rbp + 1712]
 mov qword ptr [rbp + 1664], rax
 mov rax, qword ptr [rbp + 1720]
 mov qword ptr [rbp + 1672], rax
# marshal arg1 = producer-box slot [zr+1744] -> [zr+1680]
 mov rax, qword ptr [rbp + 1744]
 mov qword ptr [rbp + 1680], rax
 mov rax, qword ptr [rbp + 1752]
 mov qword ptr [rbp + 1688], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1664]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1648], rax
 mov qword ptr [rbp + 1656], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n13_α
 xchain0_n11_β:
 jmp xchain0_n14_α
# IR_MOVE_LABEL
 xchain0_n12_α:
 lea rax, [rip + xchain0_n5_α]
 mov qword ptr [rbp + 64], rax
 jmp proc_fib$2_γ
# IR_VAR_REF
 xchain0_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 jmp xchain0_n16_α
 xchain0_n14_α:
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
 je proc_fib$2_ω
 jmp xchain0_n17_α
 xchain0_n14_β:
 jmp proc_fib$2_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n15_α:
 jmp qword ptr [rbp + 64]
 xchain0_n15_β:
 jmp proc_fib$2_ω
# IR_LIT_INTEGER
 xchain0_n16_α:
 mov qword ptr [rbp + 1616], 6
 mov rax, qword ptr [rip + .Lx23_0]
 mov qword ptr [rbp + 1624], rax
 jmp xchain0_n18_α
<<<<<<< HEAD
.Lx29_0:
=======
.Lx23_0:
>>>>>>> origin/main
 .quad 1
# IR_VAR_REF
 xchain0_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 jmp xchain0_n19_α
 xchain0_n18_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1584] -> [zr+1536]
 mov rax, qword ptr [rbp + 1584]
 mov qword ptr [rbp + 1536], rax
 mov rax, qword ptr [rbp + 1592]
 mov qword ptr [rbp + 1544], rax
# marshal arg1 = producer-box slot [zr+1616] -> [zr+1552]
 mov rax, qword ptr [rbp + 1616]
 mov qword ptr [rbp + 1552], rax
 mov rax, qword ptr [rbp + 1624]
 mov qword ptr [rbp + 1560], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1536]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n20_α
 xchain0_n18_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2176]
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 jmp xchain0_n21_α
 xchain0_n20_α:
# IR_CUT
 jmp xchain0_n22_α
 xchain0_n21_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1408] -> [zr+1360]
 mov rax, qword ptr [rbp + 1408]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 1416]
 mov qword ptr [rbp + 1368], rax
# marshal arg1 = producer-box slot [zr+1440] -> [zr+1376]
 mov rax, qword ptr [rbp + 1440]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 1448]
 mov qword ptr [rbp + 1384], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1360]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 cmp eax, 99
 je xchain0_n24_α
 jmp xchain0_n23_α
 xchain0_n21_β:
 jmp xchain0_n24_α
# IR_MOVE_LABEL
 xchain0_n22_α:
 lea rax, [rip + xchain0_n14_α]
 mov qword ptr [rbp + 64], rax
 jmp proc_fib$2_γ
# IR_VAR_REF
 xchain0_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 jmp xchain0_n25_α
 xchain0_n24_α:
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
 je proc_fib$2_ω
 jmp proc_fib$2_ω
 xchain0_n24_β:
 jmp proc_fib$2_ω
# IR_VAR_REF
 xchain0_n25_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2096]
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 jmp xchain0_n26_α
 xchain0_n26_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1232]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 cmp eax, 99
 je xchain0_n24_α
 jmp xchain0_n27_α
 xchain0_n26_β:
 jmp xchain0_n24_α
# IR_VAR
 xchain0_n27_α:
 mov rax, qword ptr [rbp + 2176]
 mov qword ptr [rbp + 1152], rax
 mov rax, qword ptr [rbp + 2184]
 mov qword ptr [rbp + 1160], rax
 jmp xchain0_n28_α
# IR_LIT_INTEGER
 xchain0_n28_α:
 mov qword ptr [rbp + 1184], 6
 mov rax, qword ptr [rip + .Lx41_0]
 mov qword ptr [rbp + 1192], rax
 jmp xchain0_n29_α
<<<<<<< HEAD
.Lx51_0:
=======
.Lx41_0:
>>>>>>> origin/main
 .quad 1
 xchain0_n29_α:
# BOX IR_CALL $cmp_gt(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1152] -> [zr+1104]
 mov rax, qword ptr [rbp + 1152]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 1160]
 mov qword ptr [rbp + 1112], rax
# marshal arg1 = producer-box slot [zr+1184] -> [zr+1120]
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 1128], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_gt (no by-name dispatch)
 lea rdi, [rbp + 1104]
 mov esi, 2
 call rt_pl_dop_cmp_gt@PLT
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 cmp eax, 99
 je xchain0_n24_α
 jmp xchain0_n30_α
 xchain0_n29_β:
 jmp xchain0_n24_α
# IR_VAR_REF
 xchain0_n30_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2160]
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 jmp xchain0_n31_α
# IR_VAR
 xchain0_n31_α:
 mov rax, qword ptr [rbp + 2176]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 2184]
 mov qword ptr [rbp + 1032], rax
 jmp xchain0_n32_α
# IR_LIT_INTEGER
 xchain0_n32_α:
 mov qword ptr [rbp + 1056], 6
 mov rax, qword ptr [rip + .Lx47_0]
 mov qword ptr [rbp + 1064], rax
 jmp xchain0_n33_α
<<<<<<< HEAD
.Lx58_0:
=======
.Lx47_0:
>>>>>>> origin/main
 .quad 1
 xchain0_n33_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1024] -> [zr+976]
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 984], rax
# marshal arg1 = producer-box slot [zr+1056] -> [zr+992]
 mov rax, qword ptr [rbp + 1056]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 1064]
 mov qword ptr [rbp + 1000], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_sub (no by-name dispatch)
 lea rdi, [rbp + 976]
 mov esi, 2
 call rt_pl_dop_ax_sub@PLT
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 cmp eax, 99
 je xchain0_n24_α
 jmp xchain0_n34_α
 xchain0_n33_β:
 jmp xchain0_n24_α
 xchain0_n34_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+928] -> [zr+880]
 mov rax, qword ptr [rbp + 928]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 936]
 mov qword ptr [rbp + 888], rax
# marshal arg1 = producer-box slot [zr+960] -> [zr+896]
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 904], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 880]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 cmp eax, 99
 je xchain0_n24_α
 jmp xchain0_n35_α
 xchain0_n34_β:
 jmp xchain0_n24_α
# IR_VAR_REF
 xchain0_n35_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2144]
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain0_n36_α
# IR_VAR
 xchain0_n36_α:
 mov rax, qword ptr [rbp + 2176]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 2184]
 mov qword ptr [rbp + 808], rax
 jmp xchain0_n37_α
# IR_LIT_INTEGER
 xchain0_n37_α:
 mov qword ptr [rbp + 832], 6
 mov rax, qword ptr [rip + .Lx54_0]
 mov qword ptr [rbp + 840], rax
 jmp xchain0_n38_α
<<<<<<< HEAD
.Lx67_0:
=======
.Lx54_0:
>>>>>>> origin/main
 .quad 2
 xchain0_n38_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+800] -> [zr+752]
 mov rax, qword ptr [rbp + 800]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 808]
 mov qword ptr [rbp + 760], rax
# marshal arg1 = producer-box slot [zr+832] -> [zr+768]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 768], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 776], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_sub (no by-name dispatch)
 lea rdi, [rbp + 752]
 mov esi, 2
 call rt_pl_dop_ax_sub@PLT
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain0_n24_α
 jmp xchain0_n39_α
 xchain0_n38_β:
 jmp xchain0_n24_α
 xchain0_n39_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+704] -> [zr+656]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 664], rax
# marshal arg1 = producer-box slot [zr+736] -> [zr+672]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 680], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 656]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 cmp eax, 99
 je xchain0_n24_α
 jmp xchain0_n40_α
 xchain0_n39_β:
 jmp xchain0_n24_α
# IR_VAR_REF
 xchain0_n40_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2160]
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain0_n41_α
# IR_VAR_REF
 xchain0_n41_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2112]
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain0_n42_α
 xchain0_n42_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 576]
 mov rdx, qword ptr [rbp + 584]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 2
 call rt_proc_call_open_det@PLT
 test rax, rax
<<<<<<< HEAD
 je .Lx77_1
 lea rcx, [rip + .Lx77_3]
 lea rdx, [rip + .Lx77_4]
=======
 je .Lx62_1
 lea rcx, [rip + .Lx62_3]
 lea rdx, [rip + .Lx62_4]
>>>>>>> origin/main
 jmp rax
.Lx62_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx62_2
.Lx62_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx62_2
.Lx62_1:
 call rt_faildescr@PLT
.Lx62_2:
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 cmp eax, 99
 je xchain0_n24_α
 jmp xchain0_n43_α
 xchain0_n42_β:
 jmp xchain0_n24_α
.Lx62_0:
 .quad .Lx62_0_s
.Lx62_0_s:
 .string "fib/2"
# IR_VAR_REF
 xchain0_n43_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2144]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain0_n44_α
# IR_VAR_REF
 xchain0_n44_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2128]
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain0_n45_α
 xchain0_n45_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 448]
 mov rdx, qword ptr [rbp + 456]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 480]
 mov rdx, qword ptr [rbp + 488]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 2
 call rt_proc_call_open_det@PLT
 test rax, rax
<<<<<<< HEAD
 je .Lx83_1
 lea rcx, [rip + .Lx83_3]
 lea rdx, [rip + .Lx83_4]
=======
 je .Lx68_1
 lea rcx, [rip + .Lx68_3]
 lea rdx, [rip + .Lx68_4]
>>>>>>> origin/main
 jmp rax
.Lx68_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx68_2
.Lx68_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx68_2
.Lx68_1:
 call rt_faildescr@PLT
.Lx68_2:
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 cmp eax, 99
 je xchain0_n42_β
 jmp xchain0_n46_α
 xchain0_n45_β:
 jmp xchain0_n42_β
.Lx68_0:
 .quad .Lx68_0_s
.Lx68_0_s:
 .string "fib/2"
# IR_VAR_REF
 xchain0_n46_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2096]
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain0_n47_α
# IR_VAR
 xchain0_n47_α:
 mov rax, qword ptr [rbp + 2112]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 2120]
 mov qword ptr [rbp + 328], rax
 jmp xchain0_n48_α
# IR_VAR
 xchain0_n48_α:
 mov rax, qword ptr [rbp + 2128]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 2136]
 mov qword ptr [rbp + 360], rax
 jmp xchain0_n49_α
 xchain0_n49_α:
# BOX IR_CALL $ax_add(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+272]
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 280], rax
# marshal arg1 = producer-box slot [zr+352] -> [zr+288]
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 296], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_add (no by-name dispatch)
 lea rdi, [rbp + 272]
 mov esi, 2
 call rt_pl_dop_ax_add@PLT
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 cmp eax, 99
 je xchain0_n24_α
 jmp xchain0_n50_α
 xchain0_n49_β:
 jmp xchain0_n24_α
 xchain0_n50_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+176]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 184], rax
# marshal arg1 = producer-box slot [zr+256] -> [zr+192]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 200], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 176]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain0_n45_β
 jmp xchain0_n51_α
 xchain0_n50_β:
 jmp xchain0_n45_β
# IR_MOVE_LABEL
 xchain0_n51_α:
 lea rax, [rip + xchain0_n45_β]
 mov qword ptr [rbp + 64], rax
 jmp proc_fib$2_γ
proc_fib$2_res:
add rsp, 8
pop rbp
proc_fib$2_β:
jmp xchain0_n15_α
proc_fib$2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 2200]
lea rsp, [rbp + 2224]
mov rbp, [rbp + 2216]
jmp rax
proc_fib$2_ω:
mov rax, [rbp + 2208]
lea rsp, [rbp + 2224]
mov rbp, [rbp + 2216]
jmp rax
proc_startup:
  sub rsp, 8
  .section .rodata
  .Lstartup_pname0: .string "fib/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_fib$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 2192
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  mov qword ptr [rsp + 424], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
main_α_body:
 xchain79_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain79_n1_α
 xchain79_n0_β:
 jmp main_ω
# IR_LIT_INTEGER
 xchain79_n1_α:
 mov qword ptr [rbp + 352], 6
 mov rax, qword ptr [rip + .Lx81_0]
 mov qword ptr [rbp + 360], rax
<<<<<<< HEAD
 jmp xchain96_n2_α
.Lx99_0:
 .quad 20
# IR_VAR_REF
 xchain96_n2_α:
=======
 jmp xchain79_n2_α
.Lx81_0:
 .quad 20
# IR_VAR_REF
 xchain79_n2_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 432]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
<<<<<<< HEAD
 jmp xchain96_n3_α
 xchain96_n3_α:
=======
 jmp xchain79_n3_α
 xchain79_n3_α:
>>>>>>> origin/main
 mov edi, 0
 mov rsi, qword ptr [rbp + 352]
 mov rdx, qword ptr [rbp + 360]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 2
 call rt_proc_call_open_det@PLT
 test rax, rax
<<<<<<< HEAD
 je .Lx103_1
 lea rcx, [rip + .Lx103_3]
 lea rdx, [rip + .Lx103_4]
=======
 je .Lx85_1
 lea rcx, [rip + .Lx85_3]
 lea rdx, [rip + .Lx85_4]
>>>>>>> origin/main
 jmp rax
.Lx85_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx85_2
.Lx85_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx85_2
.Lx85_1:
 call rt_faildescr@PLT
.Lx85_2:
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain79_n5_α
 jmp xchain79_n4_α
 xchain79_n3_β:
 jmp xchain79_n5_α
.Lx85_0:
 .quad .Lx85_0_s
.Lx85_0_s:
 .string "fib/2"
# IR_VAR
 xchain79_n4_α:
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 264], rax
<<<<<<< HEAD
 jmp xchain96_n6_α
 xchain96_n5_α:
=======
 jmp xchain79_n6_α
 xchain79_n5_α:
>>>>>>> origin/main
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
 xchain79_n5_β:
 jmp main_ω
 xchain79_n6_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 232], rax
  .section .rodata
  .Lrkfn90: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn90]
 lea rsi, [rbp + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain79_n3_β
 jmp xchain79_n7_α
 xchain79_n6_β:
 jmp xchain79_n3_β
# IR_LIT_STRING
 xchain79_n7_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx91_0]
 mov qword ptr [rbp + 184], rax
<<<<<<< HEAD
 jmp xchain96_n8_α
.Lx110_0:
 .quad .Lx110_0_s
.Lx110_0_s:
=======
 jmp xchain79_n8_α
.Lx91_0:
 .quad .Lx91_0_s
.Lx91_0_s:
>>>>>>> origin/main
 .string ""
 xchain79_n8_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn93: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn93]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain79_n3_β
 jmp xchain79_n9_α
 xchain79_n8_β:
 jmp xchain79_n3_β
# IR_MOVE_LABEL
 xchain79_n9_α:
 lea rax, [rip + xchain79_n3_β]
 mov qword ptr [rbp + 32], rax
 jmp main_γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain79_n10_α:
 jmp qword ptr [rbp + 32]
 xchain79_n10_β:
 jmp main_ω
main_β:
jmp xchain79_n10_α
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 424]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 424]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
