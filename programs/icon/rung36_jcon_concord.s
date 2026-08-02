                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_charset_α:
                        sub              rsp, 2400
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        mov              qword ptr [rsp + 64], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 104], 0
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              qword ptr [rsp + 128], 0
                        mov              qword ptr [rsp + 136], 0
                        mov              qword ptr [rsp + 144], 0
                        mov              qword ptr [rsp + 152], 0
                        mov              qword ptr [rsp + 160], 0
                        mov              qword ptr [rsp + 168], 0
                        mov              qword ptr [rsp + 176], 0
                        mov              qword ptr [rsp + 184], 0
                        mov              qword ptr [rsp + 192], 0
                        mov              qword ptr [rsp + 200], 0
                        mov              qword ptr [rsp + 208], 0
                        mov              qword ptr [rsp + 216], 0
                        mov              qword ptr [rsp + 224], 0
                        mov              qword ptr [rsp + 232], 0
                        mov              qword ptr [rsp + 240], 0
                        mov              qword ptr [rsp + 248], 0
                        mov              qword ptr [rsp + 256], 0
                        mov              qword ptr [rsp + 264], 0
                        mov              qword ptr [rsp + 272], 0
                        mov              qword ptr [rsp + 280], 0
                        mov              qword ptr [rsp + 288], 0
                        mov              qword ptr [rsp + 296], 0
                        mov              qword ptr [rsp + 304], 0
                        mov              qword ptr [rsp + 312], 0
                        mov              qword ptr [rsp + 320], 0
                        mov              qword ptr [rsp + 328], 0
                        mov              qword ptr [rsp + 336], 0
                        mov              qword ptr [rsp + 344], 0
                        mov              qword ptr [rsp + 352], 0
                        mov              qword ptr [rsp + 360], 0
                        mov              qword ptr [rsp + 368], 0
                        mov              qword ptr [rsp + 376], 0
                        mov              qword ptr [rsp + 384], 0
                        mov              qword ptr [rsp + 392], 0
                        mov              qword ptr [rsp + 400], 0
                        mov              qword ptr [rsp + 408], 0
                        mov              qword ptr [rsp + 416], 0
                        mov              qword ptr [rsp + 424], 0
                        mov              qword ptr [rsp + 432], 0
                        mov              qword ptr [rsp + 440], 0
                        mov              qword ptr [rsp + 448], 0
                        mov              qword ptr [rsp + 456], 0
                        mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 472], 0
                        mov              qword ptr [rsp + 480], 0
                        mov              qword ptr [rsp + 488], 0
                        mov              qword ptr [rsp + 496], 0
                        mov              qword ptr [rsp + 504], 0
                        mov              qword ptr [rsp + 512], 0
                        mov              qword ptr [rsp + 520], 0
                        mov              qword ptr [rsp + 528], 0
                        mov              qword ptr [rsp + 536], 0
                        mov              qword ptr [rsp + 544], 0
                        mov              qword ptr [rsp + 552], 0
                        mov              qword ptr [rsp + 560], 0
                        mov              qword ptr [rsp + 568], 0
                        mov              qword ptr [rsp + 576], 0
                        mov              qword ptr [rsp + 584], 0
                        mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 600], 0
                        mov              qword ptr [rsp + 608], 0
                        mov              qword ptr [rsp + 616], 0
                        mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 632], 0
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              qword ptr [rsp + 656], 0
                        mov              qword ptr [rsp + 664], 0
                        mov              qword ptr [rsp + 672], 0
                        mov              qword ptr [rsp + 680], 0
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0
                        mov              qword ptr [rsp + 704], 0
                        mov              qword ptr [rsp + 712], 0
                        mov              qword ptr [rsp + 720], 0
                        mov              qword ptr [rsp + 728], 0
                        mov              qword ptr [rsp + 736], 0
                        mov              qword ptr [rsp + 744], 0
                        mov              qword ptr [rsp + 752], 0
                        mov              qword ptr [rsp + 760], 0
                        mov              qword ptr [rsp + 768], 0
                        mov              qword ptr [rsp + 776], 0
                        mov              qword ptr [rsp + 784], 0
                        mov              qword ptr [rsp + 792], 0
                        mov              qword ptr [rsp + 800], 0
                        mov              qword ptr [rsp + 808], 0
                        mov              qword ptr [rsp + 816], 0
                        mov              qword ptr [rsp + 824], 0
                        mov              qword ptr [rsp + 832], 0
                        mov              qword ptr [rsp + 840], 0
                        mov              qword ptr [rsp + 848], 0
                        mov              qword ptr [rsp + 856], 0
                        mov              qword ptr [rsp + 864], 0
                        mov              qword ptr [rsp + 872], 0
                        mov              qword ptr [rsp + 880], 0
                        mov              qword ptr [rsp + 888], 0
                        mov              qword ptr [rsp + 896], 0
                        mov              qword ptr [rsp + 904], 0
                        mov              qword ptr [rsp + 912], 0
                        mov              qword ptr [rsp + 920], 0
                        mov              qword ptr [rsp + 928], 0
                        mov              qword ptr [rsp + 936], 0
                        mov              qword ptr [rsp + 944], 0
                        mov              qword ptr [rsp + 952], 0
                        mov              qword ptr [rsp + 960], 0
                        mov              qword ptr [rsp + 968], 0
                        mov              qword ptr [rsp + 976], 0
                        mov              qword ptr [rsp + 984], 0
                        mov              qword ptr [rsp + 992], 0
                        mov              qword ptr [rsp + 1000], 0
                        mov              qword ptr [rsp + 1008], 0
                        mov              qword ptr [rsp + 1016], 0
                        mov              qword ptr [rsp + 1024], 0
                        mov              qword ptr [rsp + 1032], 0
                        mov              qword ptr [rsp + 1040], 0
                        mov              qword ptr [rsp + 1048], 0
                        mov              qword ptr [rsp + 1056], 0
                        mov              qword ptr [rsp + 1064], 0
                        mov              qword ptr [rsp + 1072], 0
                        mov              qword ptr [rsp + 1080], 0
                        mov              qword ptr [rsp + 1088], 0
                        mov              qword ptr [rsp + 1096], 0
                        mov              qword ptr [rsp + 1104], 0
                        mov              qword ptr [rsp + 1112], 0
                        mov              qword ptr [rsp + 1120], 0
                        mov              qword ptr [rsp + 1128], 0
                        mov              qword ptr [rsp + 1136], 0
                        mov              qword ptr [rsp + 1144], 0
                        mov              qword ptr [rsp + 1152], 0
                        mov              qword ptr [rsp + 1160], 0
                        mov              qword ptr [rsp + 1168], 0
                        mov              qword ptr [rsp + 1176], 0
                        mov              qword ptr [rsp + 1184], 0
                        mov              qword ptr [rsp + 1192], 0
                        mov              qword ptr [rsp + 1200], 0
                        mov              qword ptr [rsp + 1208], 0
                        mov              qword ptr [rsp + 1216], 0
                        mov              qword ptr [rsp + 1224], 0
                        mov              qword ptr [rsp + 1232], 0
                        mov              qword ptr [rsp + 1240], 0
                        mov              qword ptr [rsp + 1248], 0
                        mov              qword ptr [rsp + 1256], 0
                        mov              qword ptr [rsp + 1264], 0
                        mov              qword ptr [rsp + 1272], 0
                        mov              qword ptr [rsp + 1280], 0
                        mov              qword ptr [rsp + 1288], 0
                        mov              qword ptr [rsp + 1296], 0
                        mov              qword ptr [rsp + 1304], 0
                        mov              qword ptr [rsp + 1312], 0
                        mov              qword ptr [rsp + 1320], 0
                        mov              qword ptr [rsp + 1328], 0
                        mov              qword ptr [rsp + 1336], 0
                        mov              qword ptr [rsp + 1344], 0
                        mov              qword ptr [rsp + 1352], 0
                        mov              qword ptr [rsp + 1360], 0
                        mov              qword ptr [rsp + 1368], 0
                        mov              qword ptr [rsp + 1376], 0
                        mov              qword ptr [rsp + 1384], 0
                        mov              qword ptr [rsp + 1392], 0
                        mov              qword ptr [rsp + 1400], 0
                        mov              qword ptr [rsp + 1408], 0
                        mov              qword ptr [rsp + 1416], 0
                        mov              qword ptr [rsp + 1424], 0
                        mov              qword ptr [rsp + 1432], 0
                        mov              qword ptr [rsp + 1440], 0
                        mov              qword ptr [rsp + 1448], 0
                        mov              qword ptr [rsp + 1456], 0
                        mov              qword ptr [rsp + 1464], 0
                        mov              qword ptr [rsp + 1472], 0
                        mov              qword ptr [rsp + 1480], 0
                        mov              qword ptr [rsp + 1488], 0
                        mov              qword ptr [rsp + 1496], 0
                        mov              qword ptr [rsp + 1504], 0
                        mov              qword ptr [rsp + 1512], 0
                        mov              qword ptr [rsp + 1520], 0
                        mov              qword ptr [rsp + 1528], 0
                        mov              qword ptr [rsp + 1536], 0
                        mov              qword ptr [rsp + 1544], 0
                        mov              qword ptr [rsp + 1552], 0
                        mov              qword ptr [rsp + 1560], 0
                        mov              qword ptr [rsp + 1568], 0
                        mov              qword ptr [rsp + 1576], 0
                        mov              qword ptr [rsp + 1584], 0
                        mov              qword ptr [rsp + 1592], 0
                        mov              qword ptr [rsp + 1600], 0
                        mov              qword ptr [rsp + 1608], 0
                        mov              qword ptr [rsp + 1616], 0
                        mov              qword ptr [rsp + 1624], 0
                        mov              qword ptr [rsp + 1632], 0
                        mov              qword ptr [rsp + 1640], 0
                        mov              qword ptr [rsp + 1648], 0
                        mov              qword ptr [rsp + 1656], 0
                        mov              qword ptr [rsp + 1664], 0
                        mov              qword ptr [rsp + 1672], 0
                        mov              qword ptr [rsp + 1680], 0
                        mov              qword ptr [rsp + 1688], 0
                        mov              qword ptr [rsp + 1696], 0
                        mov              qword ptr [rsp + 1704], 0
                        mov              qword ptr [rsp + 1712], 0
                        mov              qword ptr [rsp + 1720], 0
                        mov              qword ptr [rsp + 1728], 0
                        mov              qword ptr [rsp + 1736], 0
                        mov              qword ptr [rsp + 1744], 0
                        mov              qword ptr [rsp + 1752], 0
                        mov              qword ptr [rsp + 1760], 0
                        mov              qword ptr [rsp + 1768], 0
                        mov              qword ptr [rsp + 1776], 0
                        mov              qword ptr [rsp + 1784], 0
                        mov              qword ptr [rsp + 1792], 0
                        mov              qword ptr [rsp + 1800], 0
                        mov              qword ptr [rsp + 1808], 0
                        mov              qword ptr [rsp + 1816], 0
                        mov              qword ptr [rsp + 1824], 0
                        mov              qword ptr [rsp + 1832], 0
                        mov              qword ptr [rsp + 1840], 0
                        mov              qword ptr [rsp + 1848], 0
                        mov              qword ptr [rsp + 1856], 0
                        mov              qword ptr [rsp + 1864], 0
                        mov              qword ptr [rsp + 1872], 0
                        mov              qword ptr [rsp + 1880], 0
                        mov              qword ptr [rsp + 1888], 0
                        mov              qword ptr [rsp + 1896], 0
                        mov              qword ptr [rsp + 1904], 0
                        mov              qword ptr [rsp + 1912], 0
                        mov              qword ptr [rsp + 1920], 0
                        mov              qword ptr [rsp + 1928], 0
                        mov              qword ptr [rsp + 1936], 0
                        mov              qword ptr [rsp + 1944], 0
                        mov              qword ptr [rsp + 1952], 0
                        mov              qword ptr [rsp + 1960], 0
                        mov              qword ptr [rsp + 1968], 0
                        mov              qword ptr [rsp + 1976], 0
                        mov              qword ptr [rsp + 1984], 0
                        mov              qword ptr [rsp + 1992], 0
                        mov              qword ptr [rsp + 2000], 0
                        mov              qword ptr [rsp + 2008], 0
                        mov              qword ptr [rsp + 2016], 0
                        mov              qword ptr [rsp + 2024], 0
                        mov              qword ptr [rsp + 2032], 0
                        mov              qword ptr [rsp + 2040], 0
                        mov              qword ptr [rsp + 2048], 0
                        mov              qword ptr [rsp + 2056], 0
                        mov              qword ptr [rsp + 2064], 0
                        mov              qword ptr [rsp + 2072], 0
                        mov              qword ptr [rsp + 2080], 0
                        mov              qword ptr [rsp + 2088], 0
                        mov              qword ptr [rsp + 2096], 0
                        mov              qword ptr [rsp + 2104], 0
                        mov              qword ptr [rsp + 2112], 0
                        mov              qword ptr [rsp + 2120], 0
                        mov              qword ptr [rsp + 2128], 0
                        mov              qword ptr [rsp + 2136], 0
                        mov              qword ptr [rsp + 2144], 0
                        mov              qword ptr [rsp + 2152], 0
                        mov              qword ptr [rsp + 2160], 0
                        mov              qword ptr [rsp + 2168], 0
                        mov              qword ptr [rsp + 2176], 0
                        mov              qword ptr [rsp + 2184], 0
                        mov              qword ptr [rsp + 2192], 0
                        mov              qword ptr [rsp + 2200], 0
                        mov              qword ptr [rsp + 2208], 0
                        mov              qword ptr [rsp + 2216], 0
                        mov              qword ptr [rsp + 2224], 0
                        mov              qword ptr [rsp + 2232], 0
                        mov              qword ptr [rsp + 2240], 0
                        mov              qword ptr [rsp + 2248], 0
                        mov              qword ptr [rsp + 2256], 0
                        mov              qword ptr [rsp + 2264], 0
                        mov              qword ptr [rsp + 2272], 0
                        mov              qword ptr [rsp + 2280], 0
                        mov              qword ptr [rsp + 2288], 0
                        mov              qword ptr [rsp + 2296], 0
                        mov              qword ptr [rsp + 2304], 0
                        mov              qword ptr [rsp + 2312], 0
                        mov              qword ptr [rsp + 2320], 0
                        mov              qword ptr [rsp + 2328], 0
                        mov              qword ptr [rsp + 2336], 0
                        mov              qword ptr [rsp + 2344], 0
                        mov              qword ptr [rsp + 2352], 0
                        mov              qword ptr [rsp + 2360], 0
                        mov              qword ptr [rsp + 2368], 0
                        mov              qword ptr [rsp + 2376], 0
                        mov              qword ptr [rsp + 2384], 0
                        mov              qword ptr [rsp + 2392], 0
                        mov              qword ptr [rbp + 2352], 2                      # result
                        mov              dword ptr [rbp + 2356], -1
                        mov              rax, qword ptr [rip + .Lx124_0]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n1_lit_charset_α
.Lx124_0:
                        .quad            .Lx124_0_s
.Lx124_0_s:
                        .string          "abcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_charset_α:
                        mov              qword ptr [rbp + 2368], 2                      # result
                        mov              dword ptr [rbp + 2372], -1
                        mov              rax, qword ptr [rip + .Lx125_0]
                        mov              qword ptr [rbp + 2376], rax
                                                                                        jmp   n2_binop_α
.Lx125_0:
                        .quad            .Lx125_0_s
.Lx125_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
#-----------------------------------------------------------------------------------------------------------------------
n2_binop_α:
                        mov              rdi, qword ptr [rbp + 2352]
                        mov              rsi, qword ptr [rbp + 2360]
                        mov              rdx, qword ptr [rbp + 2368]
                        mov              rcx, qword ptr [rbp + 2376]
                        call             rt_cunion@PLT
                        cmp              eax, 104
                                                                                        je    n6_lit_string_α
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                                                                                        jmp   n3_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_charset_α:
                        mov              qword ptr [rbp + 2384], 2                      # result
                        mov              dword ptr [rbp + 2388], -1
                        mov              rax, qword ptr [rip + .Lx127_0]
                        mov              qword ptr [rbp + 2392], rax
                                                                                        jmp   n4_binop_α
.Lx127_0:
                        .quad            .Lx127_0_s
.Lx127_0_s:
                        .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
n4_binop_α:
                        mov              rdi, qword ptr [rbp + 2336]
                        mov              rsi, qword ptr [rbp + 2344]
                        mov              rdx, qword ptr [rbp + 2384]
                        mov              rcx, qword ptr [rbp + 2392]
                        call             rt_cunion@PLT
                        cmp              eax, 104
                                                                                        je    n6_lit_string_α
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                                                                                        jmp   n5_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n5_assign_α:
                        mov              rax, qword ptr [rbp + 2320]
                        mov              rdx, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                                                                                        jmp   n6_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:
                        mov              qword ptr [rbp + 2304], 2                      # result
                        mov              dword ptr [rbp + 2308], 0
                        mov              rax, qword ptr [rip + .Lx130_0]
                        mov              qword ptr [rbp + 2312], rax
                                                                                        jmp   n7_call_builtin_icon_α
.Lx130_0:
                        .quad            .Lx130_0_s
.Lx130_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n7_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 2272], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 2280], rax
                        .section         .rodata
.Lrkfn132:              .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn132]                         # fn
                        lea              rsi, [rbp + 2272]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                        cmp              eax, 104
                                                                                        je    n9_lit_integer_α
                                                                                        jmp   n8_assign_α
n7_call_builtin_icon_β:
                                                                                        jmp   n9_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n8_assign_α:
                        mov              rax, qword ptr [rbp + 2256]
                        mov              rdx, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx
                                                                                        jmp   n9_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:
                        mov              qword ptr [rbp + 2240], 3                      # result
                        mov              rax, qword ptr [rip + .Lx134_0]
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n10_assign_α
.Lx134_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n10_assign_α:
                        mov              rax, qword ptr [rbp + 2240]
                        mov              rdx, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx
                                                                                        jmp   n11_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n11_assign_α:
                        mov              rax, qword ptr [rbp + 2224]
                        mov              rdx, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                                                                                        jmp   n12_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n12_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn138:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn138]                         # fn
                        lea              rsi, [rbp + 912]                               # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx137_240
                        add              rsp, 2400
                                                                                        jmp   n77_call_builtin_icon_α
.Lx137_240:
                                                                                        jmp   n13_assign_α
n12_call_builtin_icon_β:
                        add              rsp, 2400
                                                                                        jmp   n77_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n13_assign_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              rdx, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 2512], rax
                        mov              qword ptr [rbp + 2520], rdx
                                                                                        jmp   n14_var_α
#-----------------------------------------------------------------------------------------------------------------------
n14_var_α:
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 2200], rax
                                                                                        jmp   n15_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_integer_α:
                        mov              qword ptr [rbp + 2208], 3                      # result
                        mov              rax, qword ptr [rip + .Lx142_0]
                        mov              qword ptr [rbp + 2216], rax
                                                                                        jmp   n16_coerce_numeric_α
.Lx142_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n16_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 2560]
                        cmp              eax, 5
                                                                                        je    .Lx144_1
                        cmp              eax, 3
                                                                                        jne   .Lx144_0
                        mov              eax, dword ptr [rbp + 2208]
                        cmp              eax, 3
                                                                                        jne   .Lx144_0
.Lx144_1:
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 2184], rax
                                                                                        jmp   n17_binop_α
.Lx144_0:
                        lea              rdi, [rbp + 2560]                              # self
                        lea              rsi, [rbp + 2208]                              # other
                        lea              rdx, [rbp + 2176]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n17_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n17_binop_α:
                        mov              eax, dword ptr [rbp + 2176]
                        cmp              eax, 3
                                                                                        jne   .Lx145_0
                        mov              rax, qword ptr [rbp + 2184]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 2160], 3
                        mov              qword ptr [rbp + 2168], rax
                                                                                        jmp   n18_assign_α
.Lx145_0:
                        mov              rdi, qword ptr [rbp + 2176]
                        mov              rsi, qword ptr [rbp + 2184]
                        mov              rdx, qword ptr [rbp + 2208]
                        mov              rcx, qword ptr [rbp + 2216]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n19_var_α
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                                                                                        jmp   n18_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n18_assign_α:
                        mov              rax, qword ptr [rbp + 2160]
                        mov              rdx, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                                                                                        jmp   n19_var_α
#-----------------------------------------------------------------------------------------------------------------------
n19_var_α:
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n20_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_integer_α:
                        mov              qword ptr [rbp + 2112], 3                      # result
                        mov              rax, qword ptr [rip + .Lx149_0]
                        mov              qword ptr [rbp + 2120], rax
                                                                                        jmp   n21_call_builtin_icon_α
.Lx149_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n21_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2056], rax
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 2072], rax
                        .section         .rodata
.Lrkfn151:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn151]                         # fn
                        lea              rsi, [rbp + 2048]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                        cmp              eax, 104
                                                                                        je    n25_var_α
                                                                                        jmp   n22_lit_string_α
n21_call_builtin_icon_β:
                                                                                        jmp   n25_var_α
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:
                        mov              qword ptr [rbp + 2128], 2                      # result
                        mov              dword ptr [rbp + 2132], 2
                        mov              rax, qword ptr [rip + .Lx152_0]
                        mov              qword ptr [rbp + 2136], rax
                                                                                        jmp   n23_var_α
.Lx152_0:
                        .quad            .Lx152_0_s
.Lx152_0_s:
                        .string          "  "
#-----------------------------------------------------------------------------------------------------------------------
n23_var_α:
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 2152], rax
                                                                                        jmp   n24_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n24_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 1976], rax
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 1992], rax
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2008], rax
                        .section         .rodata
.Lrkfn156:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn156]                         # fn
                        lea              rsi, [rbp + 1968]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                        cmp              eax, 104
                                                                                        je    n25_var_α
                                                                                        jmp   n25_var_α
n24_call_builtin_icon_β:
                                                                                        jmp   n25_var_α
#-----------------------------------------------------------------------------------------------------------------------
n25_var_α:
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 1944], rax
                                                                                        jmp   n26_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n26_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1912], rax
                        .section         .rodata
.Lrkfn160:              .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn160]                         # fn
                        lea              rsi, [rbp + 1904]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                        cmp              eax, 104
                                                                                        je    n28_lit_integer_α
                                                                                        jmp   n27_assign_α
n26_call_builtin_icon_β:
                                                                                        jmp   n28_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n27_assign_α:
                        mov              rax, qword ptr [rbp + 1888]
                        mov              rdx, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 2512], rax
                        mov              qword ptr [rbp + 2520], rdx
                                                                                        jmp   n28_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_integer_α:
                        mov              qword ptr [rbp + 1872], 3                      # result
                        mov              rax, qword ptr [rip + .Lx162_0]
                        mov              qword ptr [rbp + 1880], rax
                                                                                        jmp   n29_assign_α
.Lx162_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n29_assign_α:
                        mov              rax, qword ptr [rbp + 1872]
                        mov              rdx, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx
                                                                                        jmp   n30_var_α
#-----------------------------------------------------------------------------------------------------------------------
n30_var_α:
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n31_var_α
#-----------------------------------------------------------------------------------------------------------------------
n31_var_α:
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n32_var_α
#-----------------------------------------------------------------------------------------------------------------------
n32_var_α:
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n33_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n33_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 952], rax
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 968], rax
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 984], rax
                        mov              qword ptr [rbp + 992], 0
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
.Lx170_60:
                        .section         .rodata
.Lbynamegenfn34:        .string          "upto"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn34]                   # fn
                        lea              rsi, [rbp + 944]                               # args
                        mov              edx, 3                                         # nargs
                        lea              rcx, [rbp + 992]                               # resume
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              eax, 104
                                                                                        je    n12_call_builtin_icon_α
                                                                                        jmp   n34_assign_α
n33_call_builtin_gen_β:
                                                                                        jmp   .Lx170_60
#-----------------------------------------------------------------------------------------------------------------------
n34_assign_α:
                        mov              rax, qword ptr [rbp + 928]
                        mov              rdx, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx
                                                                                        jmp   n35_var_α
#-----------------------------------------------------------------------------------------------------------------------
n35_var_α:
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 1832], rax
                                                                                        jmp   n36_var_α
#-----------------------------------------------------------------------------------------------------------------------
n36_var_α:
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   n37_var_α
#-----------------------------------------------------------------------------------------------------------------------
n37_var_α:
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n38_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n38_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1768], rax
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1784], rax
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1800], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn39:           .string          "many"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn39]                      # fn
                        lea              rsi, [rbp + 1760]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104
                                                                                        je    n40_var_α
                                                                                        jmp   n39_assign_α
n38_call_builtin_icon_β:
                                                                                        jmp   n40_var_α
#-----------------------------------------------------------------------------------------------------------------------
n39_assign_α:
                        mov              rax, qword ptr [rbp + 1744]
                        mov              rdx, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx
                                                                                        jmp   n40_var_α
#-----------------------------------------------------------------------------------------------------------------------
n40_var_α:
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 1704], rax
                                                                                        jmp   n41_var_α
#-----------------------------------------------------------------------------------------------------------------------
n41_var_α:
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [rbp + 1720], rax
                                                                                        jmp   n42_var_α
#-----------------------------------------------------------------------------------------------------------------------
n42_var_α:
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n43_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n43_subscript_α:
                        mov              rdi, qword ptr [rbp + 1696]                    # arr
                        mov              rsi, qword ptr [rbp + 1704]                    # arr
                        mov              rdx, qword ptr [rbp + 1712]                    # i
                        mov              rcx, qword ptr [rbp + 1720]                    # i
                        mov              r8, qword ptr [rbp + 1728]                     # j
                        mov              r9, qword ptr [rbp + 1736]                     # j
                        call             subscript_get2@PLT
                        cmp              eax, 104
                                                                                        je    n45_disjunction_α
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                                                                                        jmp   n44_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n44_assign_α:
                        mov              rax, qword ptr [rbp + 1680]
                        mov              rdx, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                                                                                        jmp   n45_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n45_disjunction_α:
                        mov              qword ptr [rbp + 1584], 0
                        mov              qword ptr [rbp + 1592], 0
                        mov              dword ptr [rbp + 1600], 0
                                                                                        jmp   n73_var_α
n45_disjunction_as:
                        mov              eax, dword ptr [rbp + 1600]
                        cmp              eax, 0
                                                                                        jne   .Lx189_0
                                                                                        jmp   n46_var_α
.Lx189_0:
                                                                                        jmp   n46_var_α
n45_disjunction_β:
                        mov              eax, dword ptr [rbp + 1600]
                                                                                        jmp   n46_var_α
n45_disjunction_af:
                        add              dword ptr [rbp + 1600], 1
                        mov              eax, dword ptr [rbp + 1600]
                                                                                        jmp   n46_var_α
#-----------------------------------------------------------------------------------------------------------------------
n46_var_α:
                        mov              rax, qword ptr [rbp + 2448]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   n47_var_α
#-----------------------------------------------------------------------------------------------------------------------
n47_var_α:
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 1576], rax
                                                                                        jmp   n48_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n48_unop_α:
                        mov              rdi, qword ptr [rbp + 2400]                    # lo
                        mov              rsi, qword ptr [rbp + 2408]                    # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                                                                                        jmp   n49_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n49_binop_test_α:
                        mov              eax, dword ptr [rbp + 2448]
                        cmp              eax, 112
                                                                                        je    .Lx195_0
                        mov              eax, dword ptr [rbp + 1552]
                        cmp              eax, 112
                                                                                        je    .Lx195_0
                        mov              eax, dword ptr [rbp + 2448]
                        cmp              eax, 3
                                                                                        jne   .Lx195_2
                        mov              eax, dword ptr [rbp + 1552]
                        cmp              eax, 3
                                                                                        jne   .Lx195_2
.Lx195_1:
                        mov              rax, qword ptr [rbp + 2456]
                        mov              rcx, qword ptr [rbp + 1560]
                        cmp              rax, rcx
                                                                                        jge   n51_disjunction_α
                        mov              rcx, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1520], rcx
                        mov              rcx, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1528], rcx
                                                                                        jmp   n50_assign_α
.Lx195_0:
                        mov              rdi, qword ptr [rbp + 2448]                    # a
                        mov              rsi, qword ptr [rbp + 2456]                    # a
                        mov              rdx, qword ptr [rbp + 1552]                    # b
                        mov              rcx, qword ptr [rbp + 1560]                    # b
                        mov              r8d, 5                                         # op
                        lea              r9, [rbp + 1520]                               # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx195_1
                        cmp              eax, 1
                                                                                        je    n51_disjunction_α
                                                                                        jmp   n50_assign_α
.Lx195_2:
                        mov              rdi, qword ptr [rbp + 2448]                    # lhs
                        mov              rsi, qword ptr [rbp + 2456]                    # lhs
                        mov              rdx, qword ptr [rbp + 1552]                    # rhs
                        mov              rcx, qword ptr [rbp + 1560]                    # rhs
                        mov              r8d, 5                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n51_disjunction_α
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n50_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n50_assign_α:
                        mov              rax, qword ptr [rbp + 1520]
                        mov              rdx, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                                                                                        jmp   n51_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n51_disjunction_α:
                        mov              qword ptr [rbp + 1072], 0
                        mov              qword ptr [rbp + 1080], 0
                        mov              dword ptr [rbp + 1088], 0
                                                                                        jmp   n59_var_ref_α
n51_disjunction_as:
                        mov              eax, dword ptr [rbp + 1088]
                        cmp              eax, 0
                                                                                        jne   .Lx198_0
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n52_conjunction_α
.Lx198_0:
                        cmp              eax, 1
                                                                                        jne   .Lx198_1
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n52_conjunction_α
.Lx198_1:
                                                                                        jmp   n52_conjunction_α
n51_disjunction_β:
                        mov              eax, dword ptr [rbp + 1088]
                        cmp              eax, 0
                                                                                        je    n30_var_α
                                                                                        jmp   n30_var_α
n51_disjunction_af:
                        add              dword ptr [rbp + 1088], 1
                        mov              eax, dword ptr [rbp + 1088]
                        cmp              eax, 1
                                                                                        je    n53_var_ref_α
                                                                                        jmp   n30_var_α
#-----------------------------------------------------------------------------------------------------------------------
n52_conjunction_α:
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n30_var_α
n52_conjunction_β:
                                                                                        jmp   n30_var_α
#-----------------------------------------------------------------------------------------------------------------------
n53_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2496]
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                                                                                        jmp   n54_var_α
n53_var_ref_β:
                                                                                        jmp   n30_var_α
#-----------------------------------------------------------------------------------------------------------------------
n54_var_α:
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 1464], rax
                                                                                        jmp   n55_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n55_subscript_α:
                        mov              rdi, qword ptr [rbp + 1440]                    # base
                        mov              rsi, qword ptr [rbp + 1448]                    # base
                        mov              rdx, qword ptr [rbp + 1456]                    # idx
                        mov              rcx, qword ptr [rbp + 1464]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n30_var_α
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                                                                                        jmp   n56_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n56_deref_α:
                        mov              rdi, qword ptr [rbp + 1472]                    # d
                        mov              rsi, qword ptr [rbp + 1480]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n30_var_α
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                                                                                        jmp   n57_var_α
#-----------------------------------------------------------------------------------------------------------------------
n57_var_α:
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n58_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n58_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1400], rax
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1416], rax
                        .section         .rodata
.Lrkfn209:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn209]                         # fn
                        lea              rsi, [rbp + 1392]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        cmp              eax, 104
                                                                                        je    n30_var_α
                                                                                        jmp   n51_disjunction_as
n58_call_builtin_icon_β:
                                                                                        jmp   n30_var_α
#-----------------------------------------------------------------------------------------------------------------------
n59_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2496]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n60_var_α
n59_var_ref_β:
                                                                                        jmp   n51_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n60_var_α:
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n61_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n61_subscript_α:
                        mov              rdi, qword ptr [rbp + 1296]                    # base
                        mov              rsi, qword ptr [rbp + 1304]                    # base
                        mov              rdx, qword ptr [rbp + 1312]                    # idx
                        mov              rcx, qword ptr [rbp + 1320]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n51_disjunction_af
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                                                                                        jmp   n62_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n62_deref_α:
                        mov              rdi, qword ptr [rbp + 1328]                    # d
                        mov              rsi, qword ptr [rbp + 1336]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n51_disjunction_af
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                                                                                        jmp   n63_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n63_unop_α:
                        mov              rdi, qword ptr [rbp + 1344]                    # lo
                        mov              rsi, qword ptr [rbp + 1352]                    # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n64_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_integer_α:
                        mov              qword ptr [rbp + 1360], 3                      # result
                        mov              rax, qword ptr [rip + .Lx217_0]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n65_binop_test_α
.Lx217_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n65_binop_test_α:
                        mov              eax, dword ptr [rbp + 1280]
                        cmp              eax, 112
                                                                                        je    .Lx218_0
                        mov              eax, dword ptr [rbp + 1360]
                        cmp              eax, 112
                                                                                        je    .Lx218_0
                        mov              eax, dword ptr [rbp + 1280]
                        cmp              eax, 3
                                                                                        jne   .Lx218_2
                        mov              eax, dword ptr [rbp + 1360]
                        cmp              eax, 3
                                                                                        jne   .Lx218_2
.Lx218_1:
                        mov              rax, qword ptr [rbp + 1288]
                        mov              rcx, qword ptr [rbp + 1368]
                        cmp              rax, rcx
                                                                                        jne   n51_disjunction_af
                        mov              rcx, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1264], rcx
                        mov              rcx, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1272], rcx
                                                                                        jmp   n66_var_ref_α
.Lx218_0:
                        mov              rdi, qword ptr [rbp + 1280]                    # a
                        mov              rsi, qword ptr [rbp + 1288]                    # a
                        mov              rdx, qword ptr [rbp + 1360]                    # b
                        mov              rcx, qword ptr [rbp + 1368]                    # b
                        mov              r8d, 9                                         # op
                        lea              r9, [rbp + 1264]                               # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx218_1
                        cmp              eax, 1
                                                                                        je    n51_disjunction_af
                                                                                        jmp   n66_var_ref_α
.Lx218_2:
                        mov              rdi, qword ptr [rbp + 1280]                    # lhs
                        mov              rsi, qword ptr [rbp + 1288]                    # lhs
                        mov              rdx, qword ptr [rbp + 1360]                    # rhs
                        mov              rcx, qword ptr [rbp + 1368]                    # rhs
                        mov              r8d, 9                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n51_disjunction_af
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n66_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n66_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2496]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   n67_var_α
#-----------------------------------------------------------------------------------------------------------------------
n67_var_α:
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n68_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n68_subscript_α:
                        mov              rdi, qword ptr [rbp + 1104]                    # base
                        mov              rsi, qword ptr [rbp + 1112]                    # base
                        mov              rdx, qword ptr [rbp + 1120]                    # idx
                        mov              rcx, qword ptr [rbp + 1128]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n30_var_α
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n69_var_α
#-----------------------------------------------------------------------------------------------------------------------
n69_var_α:
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n70_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n70_make_list_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1240], rax
                        lea              rdi, [rbp + 1232]
                        mov              esi, 1
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                                                                                        jmp   n71_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n71_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1192], rax
                        .section         .rodata
.Lrkfn229:              .string          "set"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn229]                         # fn
                        lea              rsi, [rbp + 1184]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              eax, 104
                                                                                        je    n30_var_α
                                                                                        jmp   n72_assign_var_α
n71_call_builtin_icon_β:
                                                                                        jmp   n30_var_α
#-----------------------------------------------------------------------------------------------------------------------
n72_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1136]                    # var
                        mov              rsi, qword ptr [rbp + 1144]                    # var
                        mov              rdx, qword ptr [rbp + 1168]                    # val
                        mov              rcx, qword ptr [rbp + 1176]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n30_var_α
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n51_disjunction_as
n72_assign_var_β:
                                                                                        jmp   n30_var_α
#-----------------------------------------------------------------------------------------------------------------------
n73_var_α:
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n74_unop_α
n73_var_β:
                                                                                        jmp   n45_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n74_unop_α:
                        mov              rdi, qword ptr [rbp + 2400]                    # lo
                        mov              rsi, qword ptr [rbp + 2408]                    # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                                                                                        jmp   n75_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_integer_α:
                        mov              qword ptr [rbp + 1664], 3                      # result
                        mov              rax, qword ptr [rip + .Lx234_0]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n76_binop_test_α
.Lx234_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n76_binop_test_α:
                        mov              eax, dword ptr [rbp + 1632]
                        cmp              eax, 112
                                                                                        je    .Lx235_0
                        mov              eax, dword ptr [rbp + 1664]
                        cmp              eax, 112
                                                                                        je    .Lx235_0
                        mov              eax, dword ptr [rbp + 1632]
                        cmp              eax, 3
                                                                                        jne   .Lx235_2
                        mov              eax, dword ptr [rbp + 1664]
                        cmp              eax, 3
                                                                                        jne   .Lx235_2
.Lx235_1:
                        mov              rax, qword ptr [rbp + 1640]
                        mov              rcx, qword ptr [rbp + 1672]
                        cmp              rax, rcx
                                                                                        jge   n45_disjunction_af
                        mov              rcx, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1616], rcx
                        mov              rcx, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1624], rcx
                                                                                        jmp   n30_var_α
.Lx235_0:
                        mov              rdi, qword ptr [rbp + 1632]                    # a
                        mov              rsi, qword ptr [rbp + 1640]                    # a
                        mov              rdx, qword ptr [rbp + 1664]                    # b
                        mov              rcx, qword ptr [rbp + 1672]                    # b
                        mov              r8d, 5                                         # op
                        lea              r9, [rbp + 1616]                               # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx235_1
                        cmp              eax, 1
                                                                                        je    n45_disjunction_af
                                                                                        jmp   n30_var_α
.Lx235_2:
                        mov              rdi, qword ptr [rbp + 1632]                    # lhs
                        mov              rsi, qword ptr [rbp + 1640]                    # lhs
                        mov              rdx, qword ptr [rbp + 1664]                    # rhs
                        mov              rcx, qword ptr [rbp + 1672]                    # rhs
                        mov              r8d, 5                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n45_disjunction_af
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1624], rax
                                                                                        jmp   n30_var_α
#-----------------------------------------------------------------------------------------------------------------------
n77_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn237:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn237]                         # fn
                        lea              rsi, [rbp + 880]                               # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 104
                                                                                        je    n78_var_α
                                                                                        jmp   n78_var_α
n77_call_builtin_icon_β:
                                                                                        jmp   n78_var_α
#-----------------------------------------------------------------------------------------------------------------------
n78_var_α:
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n79_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n79_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 824], rax
                        .section         .rodata
.Lrkfn241:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn241]                         # fn
                        lea              rsi, [rbp + 816]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 104
                                                                                        je    n81_lit_integer_α
                                                                                        jmp   n80_assign_α
n79_call_builtin_icon_β:
                                                                                        jmp   n81_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n80_assign_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              rdx, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx
                                                                                        jmp   n81_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_integer_α:
                        mov              qword ptr [rbp + 784], 3                       # result
                        mov              rax, qword ptr [rip + .Lx243_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n82_assign_α
.Lx243_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n82_assign_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx
                                                                                        jmp   n83_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n83_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2416]
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                                                                                        jmp   n84_var_α
#-----------------------------------------------------------------------------------------------------------------------
n84_var_α:
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n85_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_integer_α:
                        mov              qword ptr [rbp + 96], 3                        # result
                        mov              rax, qword ptr [rip + .Lx249_0]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n86_coerce_numeric_α
.Lx249_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n86_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 2432]
                        cmp              eax, 5
                                                                                        je    .Lx251_1
                        cmp              eax, 3
                                                                                        jne   .Lx251_0
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 3
                                                                                        jne   .Lx251_0
.Lx251_1:
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n87_binop_α
.Lx251_0:
                        lea              rdi, [rbp + 2432]                              # self
                        lea              rsi, [rbp + 96]                                # other
                        lea              rdx, [rbp + 64]                                # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n87_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n87_binop_α:
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 3
                                                                                        jne   .Lx252_0
                        mov              rax, qword ptr [rbp + 72]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 48], 3
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n88_assign_α
.Lx252_0:
                        mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        mov              rdx, qword ptr [rbp + 96]
                        mov              rcx, qword ptr [rbp + 104]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    main_ω
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                                                                                        jmp   n88_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n88_assign_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                                                                                        jmp   n89_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n89_subscript_α:
                        mov              rdi, qword ptr [rbp + 16]                      # base
                        mov              rsi, qword ptr [rbp + 24]                      # base
                        mov              rdx, qword ptr [rbp + 32]                      # idx
                        mov              rcx, qword ptr [rbp + 40]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    main_ω
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n90_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_integer_α:
                        mov              qword ptr [rbp + 128], 3                       # result
                        mov              rax, qword ptr [rip + .Lx255_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n91_subscript_α
.Lx255_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n91_subscript_α:
                        mov              rdi, qword ptr [rbp + 112]                     # base
                        mov              rsi, qword ptr [rbp + 120]                     # base
                        mov              rdx, qword ptr [rbp + 128]                     # idx
                        mov              rcx, qword ptr [rbp + 136]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    main_ω
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n92_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n92_deref_α:
                        mov              rdi, qword ptr [rbp + 144]                     # d
                        mov              rsi, qword ptr [rbp + 152]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    main_ω
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n93_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n93_assign_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                                                                                        jmp   n94_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_string_α:
                        mov              qword ptr [rbp + 768], 2                       # result
                        mov              dword ptr [rbp + 772], 0
                        mov              rax, qword ptr [rip + .Lx259_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n95_assign_α
.Lx259_0:
                        .quad            .Lx259_0_s
.Lx259_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n95_assign_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx
                                                                                        jmp   n96_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n96_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2416]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n97_var_α
#-----------------------------------------------------------------------------------------------------------------------
n97_var_α:
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n98_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n98_subscript_α:
                        mov              rdi, qword ptr [rbp + 672]                     # base
                        mov              rsi, qword ptr [rbp + 680]                     # base
                        mov              rdx, qword ptr [rbp + 688]                     # idx
                        mov              rcx, qword ptr [rbp + 696]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n104_var_α
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n99_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_integer_α:
                        mov              qword ptr [rbp + 720], 3                       # result
                        mov              rax, qword ptr [rip + .Lx266_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n100_subscript_α
.Lx266_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n100_subscript_α:
                        mov              rdi, qword ptr [rbp + 704]                     # base
                        mov              rsi, qword ptr [rbp + 712]                     # base
                        mov              rdx, qword ptr [rbp + 720]                     # idx
                        mov              rcx, qword ptr [rbp + 728]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n104_var_α
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n101_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n101_deref_α:
                        mov              rdi, qword ptr [rbp + 736]                     # d
                        mov              rsi, qword ptr [rbp + 744]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n104_var_α
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n102_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n102_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 648], rax
                        .section         .rodata
.Lrkfn270:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn270]                         # fn
                        lea              rsi, [rbp + 640]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 104
                                                                                        je    n104_var_α
                                                                                        jmp   n103_assign_α
n102_call_builtin_icon_β:
                                                                                        jmp   n104_var_α
#-----------------------------------------------------------------------------------------------------------------------
n103_assign_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                                                                                        jmp   n104_var_α
#-----------------------------------------------------------------------------------------------------------------------
n104_var_α:
                        mov              rax, qword ptr [rbp + 2464]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 2472]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n105_var_α
#-----------------------------------------------------------------------------------------------------------------------
n105_var_α:
                        mov              rax, qword ptr [rbp + 2480]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 2488]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n106_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n106_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 568], rax
                        .section         .rodata
.Lrkfn277:              .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn277]                         # fn
                        lea              rsi, [rbp + 560]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 104
                                                                                        je    n111_var_α
                                                                                        jmp   n107_lit_string_α
n106_call_builtin_icon_β:
                                                                                        jmp   n111_var_α
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_string_α:
                        mov              qword ptr [rbp + 608], 2                       # result
                        mov              dword ptr [rbp + 612], 2
                        mov              rax, qword ptr [rip + .Lx278_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n108_binop_α
.Lx278_0:
                        .quad            .Lx278_0_s
.Lx278_0_s:
                        .string          ", "
#-----------------------------------------------------------------------------------------------------------------------
n108_binop_α:
                        mov              rdi, qword ptr [rbp + 544]                     # a
                        mov              rsi, qword ptr [rbp + 552]                     # a
                        mov              rdx, qword ptr [rbp + 608]                     # b
                        mov              rcx, qword ptr [rbp + 616]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n109_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n109_binop_α:
                        mov              rdi, qword ptr [rbp + 2464]                    # a
                        mov              rsi, qword ptr [rbp + 2472]                    # a
                        mov              rdx, qword ptr [rbp + 528]                     # b
                        mov              rcx, qword ptr [rbp + 536]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n110_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n110_assign_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx
                                                                                        jmp   n104_var_α
#-----------------------------------------------------------------------------------------------------------------------
n111_var_α:
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n112_var_α
#-----------------------------------------------------------------------------------------------------------------------
n112_var_α:
                        mov              rax, qword ptr [rbp + 2448]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n113_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_integer_α:
                        mov              qword ptr [rbp + 400], 3                       # result
                        mov              rax, qword ptr [rip + .Lx286_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n114_coerce_numeric_α
.Lx286_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n114_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 2448]
                        cmp              eax, 5
                                                                                        je    .Lx288_1
                        cmp              eax, 3
                                                                                        jne   .Lx288_0
                        mov              eax, dword ptr [rbp + 400]
                        cmp              eax, 3
                                                                                        jne   .Lx288_0
.Lx288_1:
                        mov              rax, qword ptr [rbp + 2448]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n115_binop_α
.Lx288_0:
                        lea              rdi, [rbp + 2448]                              # self
                        lea              rsi, [rbp + 400]                               # other
                        lea              rdx, [rbp + 368]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n115_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n115_binop_α:
                        mov              eax, dword ptr [rbp + 368]
                        cmp              eax, 3
                                                                                        jne   .Lx289_0
                        mov              rax, qword ptr [rbp + 376]
                        mov              rcx, 2
                        add              rax, rcx
                        mov              qword ptr [rbp + 352], 3
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n116_call_builtin_icon_α
.Lx289_0:
                        mov              rdi, qword ptr [rbp + 368]
                        mov              rsi, qword ptr [rbp + 376]
                        mov              rdx, qword ptr [rbp + 400]
                        mov              rcx, qword ptr [rbp + 408]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n83_var_ref_α
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n116_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n116_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 312], rax
                        .section         .rodata
.Lrkfn291:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn291]                         # fn
                        lea              rsi, [rbp + 288]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 104
                                                                                        je    n83_var_ref_α
                                                                                        jmp   n117_lit_string_α
n116_call_builtin_icon_β:
                                                                                        jmp   n83_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_string_α:
                        mov              qword ptr [rbp + 416], 2                       # result
                        mov              dword ptr [rbp + 420], 2
                        mov              rax, qword ptr [rip + .Lx292_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n118_var_α
.Lx292_0:
                        .quad            .Lx292_0_s
.Lx292_0_s:
                        .string          ": "
#-----------------------------------------------------------------------------------------------------------------------
n118_var_α:
                        mov              rax, qword ptr [rbp + 2464]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 2472]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n119_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_integer_α:
                        mov              qword ptr [rbp + 464], 3                       # result
                        mov              rax, qword ptr [rip + .Lx295_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n120_lit_integer_α
.Lx295_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n120_lit_integer_α:
                        mov              qword ptr [rbp + 480], 3                       # result
                        mov              rax, qword ptr [rip + .Lx296_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n121_subscript_α
.Lx296_0:
                        .quad            18446744073709551614
#-----------------------------------------------------------------------------------------------------------------------
n121_subscript_α:
                        mov              rdi, qword ptr [rbp + 448]                     # arr
                        mov              rsi, qword ptr [rbp + 456]                     # arr
                        mov              rdx, qword ptr [rbp + 464]                     # i
                        mov              rcx, qword ptr [rbp + 472]                     # i
                        mov              r8, qword ptr [rbp + 480]                      # j
                        mov              r9, qword ptr [rbp + 488]                      # j
                        call             subscript_get2@PLT
                        cmp              eax, 104
                                                                                        je    n83_var_ref_α
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n122_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n122_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 248], rax
                        .section         .rodata
.Lrkfn299:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn299]                         # fn
                        lea              rsi, [rbp + 208]                               # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 104
                                                                                        je    n83_var_ref_α
                                                                                        jmp   n123_conjunction_α
n122_call_builtin_icon_β:
                                                                                        jmp   n83_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n123_conjunction_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n83_var_ref_α
n123_conjunction_β:
                                                                                        jmp   n83_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
                        .section         .note.GNU-stack,"",@progbits
