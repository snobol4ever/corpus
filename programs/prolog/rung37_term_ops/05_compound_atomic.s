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
                        sub              rsp, 2088
                        mov              rdi, rsp
                        mov              ecx, 2088
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 2080], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx73_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx73_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx73_101
.Lx73_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx73_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n1_lit_string_α
n0_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        mov              qword ptr [rbp + 2016], 1
                        mov              rax, qword ptr [rip + .Lx74_0]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   n2_lit_string_α
.Lx74_0:
                        .quad            .Lx74_0_s
.Lx74_0_s:
                        .string          "foo"
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        mov              qword ptr [rbp + 1936], 1
                        mov              rax, qword ptr [rip + .Lx75_0]
                        mov              qword ptr [rbp + 1944], rax
                                                                                        jmp   n3_op11_α
.Lx75_0:
                        .quad            .Lx75_0_s
.Lx75_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n3_op11_α:
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 1976], rax
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1992], rax
                        lea              rdi, [rbp + 1968]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                        cmp              eax, 99
                                                                                        je    n5_lit_string_α
                                                                                        jmp   n4_op11_α
n3_op11_β:
                                                                                        jmp   n5_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n4_op11_α:
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1928], rax
                        .section         .rodata
.Lrkfn78:               .string          "$tt_compound"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn78]
                        lea              rsi, [rbp + 1920]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                        cmp              eax, 99
                                                                                        je    n5_lit_string_α
                                                                                        jmp   n6_lit_string_α
n4_op11_β:
                                                                                        jmp   n5_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:
                        mov              qword ptr [rbp + 1888], 1
                        mov              rax, qword ptr [rip + .Lx79_0]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n7_op11_α
.Lx79_0:
                        .quad            .Lx79_0_s
.Lx79_0_s:
                        .string          "no"
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:
                        mov              qword ptr [rbp + 1840], 1
                        mov              rax, qword ptr [rip + .Lx80_0]
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   n8_op11_α
.Lx80_0:
                        .quad            .Lx80_0_s
.Lx80_0_s:
                        .string          "yes"
#-----------------------------------------------------------------------------------------------------------------------
n7_op11_α:
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 1880], rax
                        .section         .rodata
.Lrkfn82:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn82]
                        lea              rsi, [rbp + 1872]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                        cmp              eax, 99
                                                                                        je    n10_op11_α
                                                                                        jmp   n9_lit_string_α
n7_op11_β:
                                                                                        jmp   n10_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n8_op11_α:
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1832], rax
                        .section         .rodata
.Lrkfn84:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn84]
                        lea              rsi, [rbp + 1824]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        cmp              eax, 99
                                                                                        je    n10_op11_α
                                                                                        jmp   n9_lit_string_α
n8_op11_β:
                                                                                        jmp   n10_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:
                        mov              qword ptr [rbp + 1792], 1
                        mov              rax, qword ptr [rip + .Lx85_0]
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n11_op11_α
.Lx85_0:
                        .quad            .Lx85_0_s
.Lx85_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n10_op11_α:
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
n10_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n11_op11_α:
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1784], rax
                        .section         .rodata
.Lrkfn88:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn88]
                        lea              rsi, [rbp + 1776]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                        cmp              eax, 99
                                                                                        je    n10_op11_α
                                                                                        jmp   n12_lit_string_α
n11_op11_β:
                                                                                        jmp   n10_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:
                        mov              qword ptr [rbp + 1744], 1
                        mov              rax, qword ptr [rip + .Lx89_0]
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   n13_op11_α
.Lx89_0:
                        .quad            .Lx89_0_s
.Lx89_0_s:
                        .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n13_op11_α:
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1736], rax
                        .section         .rodata
.Lrkfn91:               .string          "$tt_compound"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn91]
                        lea              rsi, [rbp + 1728]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                        cmp              eax, 99
                                                                                        je    n15_lit_string_α
                                                                                        jmp   n14_lit_string_α
n13_op11_β:
                                                                                        jmp   n15_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:
                        mov              qword ptr [rbp + 1648], 1
                        mov              rax, qword ptr [rip + .Lx92_0]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n16_op11_α
.Lx92_0:
                        .quad            .Lx92_0_s
.Lx92_0_s:
                        .string          "yes"
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:
                        mov              qword ptr [rbp + 1696], 1
                        mov              rax, qword ptr [rip + .Lx93_0]
                        mov              qword ptr [rbp + 1704], rax
                                                                                        jmp   n17_op11_α
.Lx93_0:
                        .quad            .Lx93_0_s
.Lx93_0_s:
                        .string          "no"
#-----------------------------------------------------------------------------------------------------------------------
n16_op11_α:
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1640], rax
                        .section         .rodata
.Lrkfn95:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn95]
                        lea              rsi, [rbp + 1632]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                        cmp              eax, 99
                                                                                        je    n10_op11_α
                                                                                        jmp   n18_lit_string_α
n16_op11_β:
                                                                                        jmp   n10_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n17_op11_α:
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1688], rax
                        .section         .rodata
.Lrkfn97:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn97]
                        lea              rsi, [rbp + 1680]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                        cmp              eax, 99
                                                                                        je    n10_op11_α
                                                                                        jmp   n18_lit_string_α
n17_op11_β:
                                                                                        jmp   n10_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:
                        mov              qword ptr [rbp + 1600], 1
                        mov              rax, qword ptr [rip + .Lx98_0]
                        mov              qword ptr [rbp + 1608], rax
                                                                                        jmp   n19_op11_α
.Lx98_0:
                        .quad            .Lx98_0_s
.Lx98_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n19_op11_α:
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1592], rax
                        .section         .rodata
.Lrkfn100:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn100]
                        lea              rsi, [rbp + 1584]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                        cmp              eax, 99
                                                                                        je    n10_op11_α
                                                                                        jmp   n20_lit_string_α
n19_op11_β:
                                                                                        jmp   n10_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:
                        mov              qword ptr [rbp + 1552], 1
                        mov              rax, qword ptr [rip + .Lx101_0]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n21_op11_α
.Lx101_0:
                        .quad            .Lx101_0_s
.Lx101_0_s:
                        .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n21_op11_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1544], rax
                        .section         .rodata
.Lrkfn103:              .string          "$tt_atomic"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn103]
                        lea              rsi, [rbp + 1536]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                        cmp              eax, 99
                                                                                        je    n23_lit_string_α
                                                                                        jmp   n22_lit_string_α
n21_op11_β:
                                                                                        jmp   n23_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:
                        mov              qword ptr [rbp + 1456], 1
                        mov              rax, qword ptr [rip + .Lx104_0]
                        mov              qword ptr [rbp + 1464], rax
                                                                                        jmp   n24_op11_α
.Lx104_0:
                        .quad            .Lx104_0_s
.Lx104_0_s:
                        .string          "yes"
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:
                        mov              qword ptr [rbp + 1504], 1
                        mov              rax, qword ptr [rip + .Lx105_0]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n25_op11_α
.Lx105_0:
                        .quad            .Lx105_0_s
.Lx105_0_s:
                        .string          "no"
#-----------------------------------------------------------------------------------------------------------------------
n24_op11_α:
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1448], rax
                        .section         .rodata
.Lrkfn107:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn107]
                        lea              rsi, [rbp + 1440]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                        cmp              eax, 99
                                                                                        je    n10_op11_α
                                                                                        jmp   n26_lit_string_α
n24_op11_β:
                                                                                        jmp   n10_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n25_op11_α:
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1496], rax
                        .section         .rodata
.Lrkfn109:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn109]
                        lea              rsi, [rbp + 1488]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                        cmp              eax, 99
                                                                                        je    n10_op11_α
                                                                                        jmp   n26_lit_string_α
n25_op11_β:
                                                                                        jmp   n10_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:
                        mov              qword ptr [rbp + 1408], 1
                        mov              rax, qword ptr [rip + .Lx110_0]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n27_op11_α
.Lx110_0:
                        .quad            .Lx110_0_s
.Lx110_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n27_op11_α:
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1400], rax
                        .section         .rodata
.Lrkfn112:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn112]
                        lea              rsi, [rbp + 1392]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        cmp              eax, 99
                                                                                        je    n10_op11_α
                                                                                        jmp   n28_lit_integer_α
n27_op11_β:
                                                                                        jmp   n10_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_integer_α:
                        mov              qword ptr [rbp + 1360], 6
                        mov              rax, qword ptr [rip + .Lx113_0]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n29_op11_α
.Lx113_0:
                        .quad            42
#-----------------------------------------------------------------------------------------------------------------------
n29_op11_α:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1352], rax
                        .section         .rodata
.Lrkfn115:              .string          "$tt_atomic"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn115]
                        lea              rsi, [rbp + 1344]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                        cmp              eax, 99
                                                                                        je    n31_lit_string_α
                                                                                        jmp   n30_lit_string_α
n29_op11_β:
                                                                                        jmp   n31_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_string_α:
                        mov              qword ptr [rbp + 1264], 1
                        mov              rax, qword ptr [rip + .Lx116_0]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n32_op11_α
.Lx116_0:
                        .quad            .Lx116_0_s
.Lx116_0_s:
                        .string          "yes"
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:
                        mov              qword ptr [rbp + 1312], 1
                        mov              rax, qword ptr [rip + .Lx117_0]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n33_op11_α
.Lx117_0:
                        .quad            .Lx117_0_s
.Lx117_0_s:
                        .string          "no"
#-----------------------------------------------------------------------------------------------------------------------
n32_op11_α:
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1256], rax
                        .section         .rodata
.Lrkfn119:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn119]
                        lea              rsi, [rbp + 1248]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        cmp              eax, 99
                                                                                        je    n10_op11_α
                                                                                        jmp   n34_lit_string_α
n32_op11_β:
                                                                                        jmp   n10_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n33_op11_α:
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1304], rax
                        .section         .rodata
.Lrkfn121:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn121]
                        lea              rsi, [rbp + 1296]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        cmp              eax, 99
                                                                                        je    n10_op11_α
                                                                                        jmp   n34_lit_string_α
n33_op11_β:
                                                                                        jmp   n10_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_string_α:
                        mov              qword ptr [rbp + 1216], 1
                        mov              rax, qword ptr [rip + .Lx122_0]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n35_op11_α
.Lx122_0:
                        .quad            .Lx122_0_s
.Lx122_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n35_op11_α:
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1208], rax
                        .section         .rodata
.Lrkfn124:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn124]
                        lea              rsi, [rbp + 1200]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 99
                                                                                        je    n10_op11_α
                                                                                        jmp   n36_lit_string_α
n35_op11_β:
                                                                                        jmp   n10_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_string_α:
                        mov              qword ptr [rbp + 1168], 1
                        mov              rax, qword ptr [rip + .Lx125_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n37_lit_string_α
.Lx125_0:
                        .quad            .Lx125_0_s
.Lx125_0_s:
                        .string          "foo"
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:
                        mov              qword ptr [rbp + 1088], 1
                        mov              rax, qword ptr [rip + .Lx126_0]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n38_op11_α
.Lx126_0:
                        .quad            .Lx126_0_s
.Lx126_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n38_op11_α:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1128], rax
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1144], rax
                        lea              rdi, [rbp + 1120]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              eax, 99
                                                                                        je    n40_lit_string_α
                                                                                        jmp   n39_op11_α
n38_op11_β:
                                                                                        jmp   n40_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n39_op11_α:
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1080], rax
                        .section         .rodata
.Lrkfn129:              .string          "$tt_atomic"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn129]
                        lea              rsi, [rbp + 1072]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 99
                                                                                        je    n40_lit_string_α
                                                                                        jmp   n41_lit_string_α
n39_op11_β:
                                                                                        jmp   n40_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:
                        mov              qword ptr [rbp + 1040], 1
                        mov              rax, qword ptr [rip + .Lx130_0]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n42_op11_α
.Lx130_0:
                        .quad            .Lx130_0_s
.Lx130_0_s:
                        .string          "no"
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:
                        mov              qword ptr [rbp + 992], 1
                        mov              rax, qword ptr [rip + .Lx131_0]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n43_op11_α
.Lx131_0:
                        .quad            .Lx131_0_s
.Lx131_0_s:
                        .string          "yes"
#-----------------------------------------------------------------------------------------------------------------------
n42_op11_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1032], rax
                        .section         .rodata
.Lrkfn133:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn133]
                        lea              rsi, [rbp + 1024]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              eax, 99
                                                                                        je    n10_op11_α
                                                                                        jmp   n44_lit_string_α
n42_op11_β:
                                                                                        jmp   n10_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n43_op11_α:
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 984], rax
                        .section         .rodata
.Lrkfn135:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn135]
                        lea              rsi, [rbp + 976]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 99
                                                                                        je    n10_op11_α
                                                                                        jmp   n44_lit_string_α
n43_op11_β:
                                                                                        jmp   n10_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_string_α:
                        mov              qword ptr [rbp + 944], 1
                        mov              rax, qword ptr [rip + .Lx136_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n45_op11_α
.Lx136_0:
                        .quad            .Lx136_0_s
.Lx136_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n45_op11_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 936], rax
                        .section         .rodata
.Lrkfn138:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn138]
                        lea              rsi, [rbp + 928]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 99
                                                                                        je    n10_op11_α
                                                                                        jmp   n46_var_ref_α
n45_op11_β:
                                                                                        jmp   n10_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n46_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2048]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n47_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_string_α:
                        mov              qword ptr [rbp + 896], 1
                        mov              rax, qword ptr [rip + .Lx141_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n48_lit_integer_α
.Lx141_0:
                        .quad            .Lx141_0_s
.Lx141_0_s:
                        .string          "p"
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_integer_α:
                        mov              qword ptr [rbp + 560], 6
                        mov              rax, qword ptr [rip + .Lx142_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n49_lit_string_α
.Lx142_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_string_α:
                        mov              qword ptr [rbp + 800], 1
                        mov              rax, qword ptr [rip + .Lx143_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n50_lit_integer_α
.Lx143_0:
                        .quad            .Lx143_0_s
.Lx143_0_s:
                        .string          "p"
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_integer_α:
                        mov              qword ptr [rbp + 576], 6
                        mov              rax, qword ptr [rip + .Lx144_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n51_lit_string_α
.Lx144_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_string_α:
                        mov              qword ptr [rbp + 704], 1
                        mov              rax, qword ptr [rip + .Lx145_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n52_lit_integer_α
.Lx145_0:
                        .quad            .Lx145_0_s
.Lx145_0_s:
                        .string          "p"
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_integer_α:
                        mov              qword ptr [rbp + 592], 6
                        mov              rax, qword ptr [rip + .Lx146_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n53_lit_string_α
.Lx146_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:
                        mov              qword ptr [rbp + 608], 1
                        mov              rax, qword ptr [rip + .Lx147_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n54_op11_α
.Lx147_0:
                        .quad            .Lx147_0_s
.Lx147_0_s:
                        .string          "nil"
#-----------------------------------------------------------------------------------------------------------------------
n54_op11_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 648], rax
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 664], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 680], rax
                        lea              rdi, [rbp + 640]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n55_op11_α
n54_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n55_op11_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 744], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 760], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 776], rax
                        lea              rdi, [rbp + 736]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n56_op11_α
n55_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n56_op11_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 840], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 856], rax
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 872], rax
                        lea              rdi, [rbp + 832]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 99
                                                                                        je    n10_op11_α
                                                                                        jmp   n57_op11_α
n56_op11_β:
                                                                                        jmp   n10_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n57_op11_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 536], rax
                        lea              rdi, [rbp + 512]
                        lea              r8, [rbp + 512]
.Lx151_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx151_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx151_41
                        cmp              esi, 1
                                                                                        jne   .Lx151_55
                        mov              r8, rax
                                                                                        jmp   .Lx151_40
.Lx151_55:
                        cmp              esi, 2
                                                                                        jne   .Lx151_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx151_41
                        mov              r8, rax
                                                                                        jmp   .Lx151_40
.Lx151_56:
                        cmp              eax, 13
                                                                                        jne   .Lx151_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx151_41
                        cmp              rax, r8
                                                                                        je    .Lx151_41
                        mov              r8, rax
                                                                                        jmp   .Lx151_40
.Lx151_41:
                        lea              r9, [rbp + 528]
.Lx151_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx151_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx151_43
                        cmp              esi, 1
                                                                                        jne   .Lx151_57
                        mov              r9, rax
                                                                                        jmp   .Lx151_42
.Lx151_57:
                        cmp              esi, 2
                                                                                        jne   .Lx151_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx151_43
                        mov              r9, rax
                                                                                        jmp   .Lx151_42
.Lx151_58:
                        cmp              eax, 13
                                                                                        jne   .Lx151_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx151_43
                        cmp              rax, r9
                                                                                        je    .Lx151_43
                        mov              r9, rax
                                                                                        jmp   .Lx151_42
.Lx151_43:
                        cmp              r8, r9
                                                                                        je    .Lx151_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx151_44
                        cmp              eax, 99
                                                                                        je    .Lx151_44
                        cmp              eax, 13
                                                                                        jne   .Lx151_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx151_44
                                                                                        jmp   .Lx151_45
.Lx151_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx151_53
                        cmp              eax, 99
                                                                                        je    .Lx151_53
                        cmp              eax, 13
                                                                                        jne   .Lx151_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx151_53
                                                                                        jmp   .Lx151_46
.Lx151_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx151_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx151_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx151_51
.Lx151_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx151_47
                        cmp              eax, 99
                                                                                        je    .Lx151_47
                        cmp              eax, 13
                                                                                        jne   .Lx151_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx151_47
                                                                                        jmp   .Lx151_48
.Lx151_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx151_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx151_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx151_51
.Lx151_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx151_49
                        cmp              edx, 14
                                                                                        je    .Lx151_53
                                                                                        jmp   .Lx151_52
.Lx151_49:
                        cmp              edx, 14
                                                                                        je    .Lx151_52
                        cmp              ecx, 7
                                                                                        je    .Lx151_53
                        cmp              edx, 7
                                                                                        je    .Lx151_53
                        cmp              ecx, 6
                                                                                        jne   .Lx151_50
                        cmp              edx, 6
                                                                                        jne   .Lx151_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx151_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx151_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx151_51
                                                                                        jmp   .Lx151_52
.Lx151_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx151_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx151_53
.Lx151_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx151_54
.Lx151_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx151_54
.Lx151_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx151_54:
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n10_op11_α
                                                                                        jmp   n58_var_ref_α
n57_op11_β:
                                                                                        jmp   n10_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n58_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2048]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n59_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx154_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n60_lit_string_α
.Lx154_0:
                        .quad            .Lx154_0_s
.Lx154_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx155_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n61_lit_string_α
.Lx155_0:
                        .quad            .Lx155_0_s
.Lx155_0_s:
                        .string          "p"
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_string_α:
                        mov              qword ptr [rbp + 368], 1
                        mov              rax, qword ptr [rip + .Lx156_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n62_var_ref_α
.Lx156_0:
                        .quad            .Lx156_0_s
.Lx156_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n62_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2032]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n63_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n63_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2064]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n64_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n64_op11_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 304]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n65_op11_α
n64_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n65_op11_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 456], rax
                        lea              rdi, [rbp + 416]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n10_op11_α
                                                                                        jmp   n66_op11_α
n65_op11_β:
                                                                                        jmp   n10_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n66_op11_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 232], rax
                        .section         .rodata
.Lrkfn164:              .string          "$univ"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn164]
                        lea              rsi, [rbp + 208]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n10_op11_α
                                                                                        jmp   n67_var_α
n66_op11_β:
                                                                                        jmp   n10_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n67_var_α:
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n68_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n68_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn168:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn168]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n10_op11_α
                                                                                        jmp   n69_lit_string_α
n68_op11_β:
                                                                                        jmp   n10_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx169_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n70_op11_α
.Lx169_0:
                        .quad            .Lx169_0_s
.Lx169_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n70_op11_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn171:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn171]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n10_op11_α
                                                                                        jmp   n71_move_label_α
n70_op11_β:
                                                                                        jmp   n10_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n71_move_label_α:
                        lea              rax, [rip + n10_op11_α]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n72_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n72_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n72_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 2080]
                        add              rsp, 2088
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 2080]
                        add              rsp, 2088
                        ret
                        .section         .note.GNU-stack,"",@progbits
