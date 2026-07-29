                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        xor              esi, esi
                        call             main_α
                        xor              eax, eax
                        add              rsp, 24
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        .global          main_α
                        .global          main_β
                        .global          main_γ
                        .global          main_ω
                        sub              rsp, 2552
                        mov              rdi, rsp
                        mov              ecx, 2552
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 2544], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx79_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx79_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx79_101
.Lx79_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx79_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n1_lit_string_α
n0_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        mov              qword ptr [rbp + 2400], 1
                        mov              rax, qword ptr [rip + .Lx80_0]
                        mov              qword ptr [rbp + 2408], rax
                                                                                        jmp   n2_lit_string_α
.Lx80_0:
                        .quad            .Lx80_0_s
.Lx80_0_s:
                        .string          "~q~n"
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        mov              qword ptr [rbp + 2528], 1
                        mov              rax, qword ptr [rip + .Lx81_0]
                        mov              qword ptr [rbp + 2536], rax
                                                                                        jmp   n3_lit_string_α
.Lx81_0:
                        .quad            .Lx81_0_s
.Lx81_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:
                        mov              qword ptr [rbp + 2432], 1
                        mov              rax, qword ptr [rip + .Lx82_0]
                        mov              qword ptr [rbp + 2440], rax
                                                                                        jmp   n4_lit_string_α
.Lx82_0:
                        .quad            .Lx82_0_s
.Lx82_0_s:
                        .string          "hello world"
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:
                        mov              qword ptr [rbp + 2416], 1
                        mov              rax, qword ptr [rip + .Lx83_0]
                        mov              qword ptr [rbp + 2424], rax
                                                                                        jmp   n5_op11_α
.Lx83_0:
                        .quad            .Lx83_0_s
.Lx83_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n5_op11_α:
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [rbp + 2472], rax
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [rbp + 2480], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 2488], rax
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2504], rax
                        lea              rdi, [rbp + 2464]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n6_op11_α
n5_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n6_op11_α:
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 2376], rax
                        mov              rax, qword ptr [rbp + 2448]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 2392], rax
                        .section         .rodata
.Lrkfn86:               .string          "$format2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn86]
                        lea              rsi, [rbp + 2368]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n8_lit_string_α
n6_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n7_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 80]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n7_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:
                        mov              qword ptr [rbp + 2096], 1
                        mov              rax, qword ptr [rip + .Lx88_0]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n9_lit_string_α
.Lx88_0:
                        .quad            .Lx88_0_s
.Lx88_0_s:
                        .string          "~w|~q~n"
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:
                        mov              qword ptr [rbp + 2336], 1
                        mov              rax, qword ptr [rip + .Lx89_0]
                        mov              qword ptr [rbp + 2344], rax
                                                                                        jmp   n10_lit_string_α
.Lx89_0:
                        .quad            .Lx89_0_s
.Lx89_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:
                        mov              qword ptr [rbp + 2240], 1
                        mov              rax, qword ptr [rip + .Lx90_0]
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n11_lit_string_α
.Lx90_0:
                        .quad            .Lx90_0_s
.Lx90_0_s:
                        .string          "it's"
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:
                        mov              qword ptr [rbp + 2224], 1
                        mov              rax, qword ptr [rip + .Lx91_0]
                        mov              qword ptr [rbp + 2232], rax
                                                                                        jmp   n12_lit_string_α
.Lx91_0:
                        .quad            .Lx91_0_s
.Lx91_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:
                        mov              qword ptr [rbp + 2128], 1
                        mov              rax, qword ptr [rip + .Lx92_0]
                        mov              qword ptr [rbp + 2136], rax
                                                                                        jmp   n13_lit_string_α
.Lx92_0:
                        .quad            .Lx92_0_s
.Lx92_0_s:
                        .string          "it's"
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:
                        mov              qword ptr [rbp + 2112], 1
                        mov              rax, qword ptr [rip + .Lx93_0]
                        mov              qword ptr [rbp + 2120], rax
                                                                                        jmp   n14_op11_α
.Lx93_0:
                        .quad            .Lx93_0_s
.Lx93_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n14_op11_α:
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 2168], rax
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2184], rax
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 2200], rax
                        lea              rdi, [rbp + 2160]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n15_op11_α
n14_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n15_op11_α:
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 2272], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 2280], rax
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 2288], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 2296], rax
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 2304], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2312], rax
                        lea              rdi, [rbp + 2272]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n16_op11_α
n15_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n16_op11_α:
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2072], rax
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 2088], rax
                        .section         .rodata
.Lrkfn97:               .string          "$format2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn97]
                        lea              rsi, [rbp + 2064]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n17_lit_string_α
n16_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:
                        mov              qword ptr [rbp + 1904], 1
                        mov              rax, qword ptr [rip + .Lx98_0]
                        mov              qword ptr [rbp + 1912], rax
                                                                                        jmp   n18_lit_string_α
.Lx98_0:
                        .quad            .Lx98_0_s
.Lx98_0_s:
                        .string          "~e~n"
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:
                        mov              qword ptr [rbp + 2032], 1
                        mov              rax, qword ptr [rip + .Lx99_0]
                        mov              qword ptr [rbp + 2040], rax
                                                                                        jmp   n19_lit_real_α
.Lx99_0:
                        .quad            .Lx99_0_s
.Lx99_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_real_α:
                        mov              qword ptr [rbp + 1936], 7
                        mov              rax, qword ptr [rip + .Lx100_0]
                        mov              qword ptr [rbp + 1944], rax
                                                                                        jmp   n20_lit_string_α
.Lx100_0:
                        .quad            4614256650576692846
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:
                        mov              qword ptr [rbp + 1920], 1
                        mov              rax, qword ptr [rip + .Lx101_0]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   n21_op11_α
.Lx101_0:
                        .quad            .Lx101_0_s
.Lx101_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n21_op11_α:
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 1976], rax
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1992], rax
                        mov              rax, qword ptr [rbp + 1920]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 1928]
                        mov              qword ptr [rbp + 2008], rax
                        lea              rdi, [rbp + 1968]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n22_op11_α
n21_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n22_op11_α:
                        mov              rax, qword ptr [rbp + 1904]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 1880], rax
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1896], rax
                        .section         .rodata
.Lrkfn104:              .string          "$format2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn104]
                        lea              rsi, [rbp + 1872]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n23_lit_string_α
n22_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:
                        mov              qword ptr [rbp + 1712], 1
                        mov              rax, qword ptr [rip + .Lx105_0]
                        mov              qword ptr [rbp + 1720], rax
                                                                                        jmp   n24_lit_string_α
.Lx105_0:
                        .quad            .Lx105_0_s
.Lx105_0_s:
                        .string          "~2f~n"
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:
                        mov              qword ptr [rbp + 1840], 1
                        mov              rax, qword ptr [rip + .Lx106_0]
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   n25_lit_real_α
.Lx106_0:
                        .quad            .Lx106_0_s
.Lx106_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_real_α:
                        mov              qword ptr [rbp + 1744], 7
                        mov              rax, qword ptr [rip + .Lx107_0]
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   n26_lit_string_α
.Lx107_0:
                        .quad            4614256650576692846
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:
                        mov              qword ptr [rbp + 1728], 1
                        mov              rax, qword ptr [rip + .Lx108_0]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n27_op11_α
.Lx108_0:
                        .quad            .Lx108_0_s
.Lx108_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n27_op11_α:
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1784], rax
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1800], rax
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1816], rax
                        lea              rdi, [rbp + 1776]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n28_op11_α
n27_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n28_op11_α:
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1688], rax
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1704], rax
                        .section         .rodata
.Lrkfn111:              .string          "$format2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn111]
                        lea              rsi, [rbp + 1680]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n29_lit_string_α
n28_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_string_α:
                        mov              qword ptr [rbp + 1520], 1
                        mov              rax, qword ptr [rip + .Lx112_0]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n30_lit_string_α
.Lx112_0:
                        .quad            .Lx112_0_s
.Lx112_0_s:
                        .string          "~g~n"
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_string_α:
                        mov              qword ptr [rbp + 1648], 1
                        mov              rax, qword ptr [rip + .Lx113_0]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n31_lit_real_α
.Lx113_0:
                        .quad            .Lx113_0_s
.Lx113_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_real_α:
                        mov              qword ptr [rbp + 1552], 7
                        mov              rax, qword ptr [rip + .Lx114_0]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n32_lit_string_α
.Lx114_0:
                        .quad            4614256650576692846
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_string_α:
                        mov              qword ptr [rbp + 1536], 1
                        mov              rax, qword ptr [rip + .Lx115_0]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   n33_op11_α
.Lx115_0:
                        .quad            .Lx115_0_s
.Lx115_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n33_op11_α:
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1592], rax
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1608], rax
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1624], rax
                        lea              rdi, [rbp + 1584]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n34_op11_α
n33_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n34_op11_α:
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1496], rax
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1512], rax
                        .section         .rodata
.Lrkfn118:              .string          "$format2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn118]
                        lea              rsi, [rbp + 1488]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n35_lit_string_α
n34_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:
                        mov              qword ptr [rbp + 1328], 1
                        mov              rax, qword ptr [rip + .Lx119_0]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n36_lit_string_α
.Lx119_0:
                        .quad            .Lx119_0_s
.Lx119_0_s:
                        .string          "~16r~n"
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_string_α:
                        mov              qword ptr [rbp + 1456], 1
                        mov              rax, qword ptr [rip + .Lx120_0]
                        mov              qword ptr [rbp + 1464], rax
                                                                                        jmp   n37_lit_integer_α
.Lx120_0:
                        .quad            .Lx120_0_s
.Lx120_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_integer_α:
                        mov              qword ptr [rbp + 1360], 6
                        mov              rax, qword ptr [rip + .Lx121_0]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n38_lit_string_α
.Lx121_0:
                        .quad            255
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_string_α:
                        mov              qword ptr [rbp + 1344], 1
                        mov              rax, qword ptr [rip + .Lx122_0]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n39_op11_α
.Lx122_0:
                        .quad            .Lx122_0_s
.Lx122_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n39_op11_α:
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1400], rax
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1416], rax
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1432], rax
                        lea              rdi, [rbp + 1392]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n40_op11_α
n39_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n40_op11_α:
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1304], rax
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1320], rax
                        .section         .rodata
.Lrkfn125:              .string          "$format2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn125]
                        lea              rsi, [rbp + 1296]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n41_lit_string_α
n40_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:
                        mov              qword ptr [rbp + 1136], 1
                        mov              rax, qword ptr [rip + .Lx126_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n42_lit_string_α
.Lx126_0:
                        .quad            .Lx126_0_s
.Lx126_0_s:
                        .string          "~2r~n"
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:
                        mov              qword ptr [rbp + 1264], 1
                        mov              rax, qword ptr [rip + .Lx127_0]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n43_lit_integer_α
.Lx127_0:
                        .quad            .Lx127_0_s
.Lx127_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_integer_α:
                        mov              qword ptr [rbp + 1168], 6
                        mov              rax, qword ptr [rip + .Lx128_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n44_lit_string_α
.Lx128_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_string_α:
                        mov              qword ptr [rbp + 1152], 1
                        mov              rax, qword ptr [rip + .Lx129_0]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n45_op11_α
.Lx129_0:
                        .quad            .Lx129_0_s
.Lx129_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n45_op11_α:
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1208], rax
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1224], rax
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1240], rax
                        lea              rdi, [rbp + 1200]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n46_op11_α
n45_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n46_op11_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1112], rax
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1128], rax
                        .section         .rodata
.Lrkfn132:              .string          "$format2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn132]
                        lea              rsi, [rbp + 1104]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n47_lit_string_α
n46_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_string_α:
                        mov              qword ptr [rbp + 944], 1
                        mov              rax, qword ptr [rip + .Lx133_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n48_lit_string_α
.Lx133_0:
                        .quad            .Lx133_0_s
.Lx133_0_s:
                        .string          "~c~n"
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_string_α:
                        mov              qword ptr [rbp + 1072], 1
                        mov              rax, qword ptr [rip + .Lx134_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n49_lit_integer_α
.Lx134_0:
                        .quad            .Lx134_0_s
.Lx134_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_integer_α:
                        mov              qword ptr [rbp + 976], 6
                        mov              rax, qword ptr [rip + .Lx135_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n50_lit_string_α
.Lx135_0:
                        .quad            65
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_string_α:
                        mov              qword ptr [rbp + 960], 1
                        mov              rax, qword ptr [rip + .Lx136_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n51_op11_α
.Lx136_0:
                        .quad            .Lx136_0_s
.Lx136_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n51_op11_α:
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1016], rax
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 1032], rax
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 1048], rax
                        lea              rdi, [rbp + 1008]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n52_op11_α
n51_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n52_op11_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 936], rax
                        .section         .rodata
.Lrkfn139:              .string          "$format2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn139]
                        lea              rsi, [rbp + 912]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n53_lit_string_α
n52_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:
                        mov              qword ptr [rbp + 752], 1
                        mov              rax, qword ptr [rip + .Lx140_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n54_lit_string_α
.Lx140_0:
                        .quad            .Lx140_0_s
.Lx140_0_s:
                        .string          "~3c~n"
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:
                        mov              qword ptr [rbp + 880], 1
                        mov              rax, qword ptr [rip + .Lx141_0]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n55_lit_integer_α
.Lx141_0:
                        .quad            .Lx141_0_s
.Lx141_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_integer_α:
                        mov              qword ptr [rbp + 784], 6
                        mov              rax, qword ptr [rip + .Lx142_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n56_lit_string_α
.Lx142_0:
                        .quad            42
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_string_α:
                        mov              qword ptr [rbp + 768], 1
                        mov              rax, qword ptr [rip + .Lx143_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n57_op11_α
.Lx143_0:
                        .quad            .Lx143_0_s
.Lx143_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n57_op11_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 824], rax
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 840], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 856], rax
                        lea              rdi, [rbp + 816]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n58_op11_α
n57_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n58_op11_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 744], rax
                        .section         .rodata
.Lrkfn146:              .string          "$format2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn146]
                        lea              rsi, [rbp + 720]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n59_lit_string_α
n58_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:
                        mov              qword ptr [rbp + 336], 1
                        mov              rax, qword ptr [rip + .Lx147_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n60_lit_string_α
.Lx147_0:
                        .quad            .Lx147_0_s
.Lx147_0_s:
                        .string          "~s~n"
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:
                        mov              qword ptr [rbp + 688], 1
                        mov              rax, qword ptr [rip + .Lx148_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n61_lit_string_α
.Lx148_0:
                        .quad            .Lx148_0_s
.Lx148_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_string_α:
                        mov              qword ptr [rbp + 592], 1
                        mov              rax, qword ptr [rip + .Lx149_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n62_lit_integer_α
.Lx149_0:
                        .quad            .Lx149_0_s
.Lx149_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_integer_α:
                        mov              qword ptr [rbp + 496], 6
                        mov              rax, qword ptr [rip + .Lx150_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n63_lit_string_α
.Lx150_0:
                        .quad            104
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx151_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n64_lit_integer_α
.Lx151_0:
                        .quad            .Lx151_0_s
.Lx151_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_integer_α:
                        mov              qword ptr [rbp + 384], 6
                        mov              rax, qword ptr [rip + .Lx152_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n65_lit_string_α
.Lx152_0:
                        .quad            105
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_string_α:
                        mov              qword ptr [rbp + 368], 1
                        mov              rax, qword ptr [rip + .Lx153_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n66_op11_α
.Lx153_0:
                        .quad            .Lx153_0_s
.Lx153_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n66_op11_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 456], rax
                        lea              rdi, [rbp + 416]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n67_op11_α
n66_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n67_op11_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 568], rax
                        lea              rdi, [rbp + 528]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n68_lit_string_α
n67_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_string_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              rax, qword ptr [rip + .Lx156_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n69_op11_α
.Lx156_0:
                        .quad            .Lx156_0_s
.Lx156_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n69_op11_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 648], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 664], rax
                        lea              rdi, [rbp + 624]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n70_op11_α
n69_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n70_op11_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 328], rax
                        .section         .rodata
.Lrkfn159:              .string          "$format2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn159]
                        lea              rsi, [rbp + 304]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n71_lit_string_α
n70_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx160_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n72_lit_string_α
.Lx160_0:
                        .quad            .Lx160_0_s
.Lx160_0_s:
                        .string          "~d~n"
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_string_α:
                        mov              qword ptr [rbp + 272], 1
                        mov              rax, qword ptr [rip + .Lx161_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n73_lit_integer_α
.Lx161_0:
                        .quad            .Lx161_0_s
.Lx161_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_integer_α:
                        mov              qword ptr [rbp + 176], 6
                        mov              rax, qword ptr [rip + .Lx162_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n74_lit_string_α
.Lx162_0:
                        .quad            42
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx163_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n75_op11_α
.Lx163_0:
                        .quad            .Lx163_0_s
.Lx163_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n75_op11_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 248], rax
                        lea              rdi, [rbp + 208]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n76_op11_α
n75_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n76_op11_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lrkfn166:              .string          "$format2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn166]
                        lea              rsi, [rbp + 112]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n77_move_label_α
n76_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n77_move_label_α:
                        lea              rax, [rip + n7_op11_α]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n78_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n78_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n78_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 2544]
                        add              rsp, 2552
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 2544]
                        add              rsp, 2552
                        ret
                        .section         .note.GNU-stack,"",@progbits
