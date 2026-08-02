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
n0_lit_string_α:
                        sub              rsp, 2160
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
                        mov              qword ptr [rbp + 2144], 2                      # result
                        mov              dword ptr [rbp + 2148], 1
                        mov              rax, qword ptr [rip + .Lx100_0]
                        mov              qword ptr [rbp + 2152], rax
                                                                                        jmp   n1_assign_α
.Lx100_0:
                        .quad            .Lx100_0_s
.Lx100_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:
                        mov              rax, qword ptr [rbp + 2144]
                        mov              rdx, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                                                                                        jmp   n2_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        mov              qword ptr [rbp + 2128], 2                      # result
                        mov              dword ptr [rbp + 2132], 1
                        mov              rax, qword ptr [rip + .Lx102_0]
                        mov              qword ptr [rbp + 2136], rax
                                                                                        jmp   n3_assign_α
.Lx102_0:
                        .quad            .Lx102_0_s
.Lx102_0_s:
                        .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:
                        mov              rax, qword ptr [rbp + 2128]
                        mov              rdx, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                                                                                        jmp   n4_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n4_disjunction_α:
                        mov              qword ptr [rbp + 1984], 0
                        mov              qword ptr [rbp + 1992], 0
                        mov              dword ptr [rbp + 2000], 0
                                                                                        jmp   n5_var_α
n4_disjunction_as:
                        mov              eax, dword ptr [rbp + 2000]
                        cmp              eax, 0
                                                                                        jne   .Lx105_0
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 1992], rax
                                                                                        jmp   n10_disjunction_α
.Lx105_0:
                                                                                        jmp   n10_disjunction_α
n4_disjunction_β:
                        mov              eax, dword ptr [rbp + 2000]
                                                                                        jmp   n10_disjunction_α
n4_disjunction_af:
                        add              dword ptr [rbp + 2000], 1
                        mov              eax, dword ptr [rbp + 2000]
                                                                                        jmp   n10_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n6_var_α
n5_var_β:
                                                                                        jmp   n4_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 2112], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 2120], rax
                                                                                        jmp   n7_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n7_binop_test_α:
                        mov              rdi, qword ptr [rbp + 2176]                    # lhs
                        mov              rsi, qword ptr [rbp + 2184]                    # lhs
                        mov              rdx, qword ptr [rbp + 2160]                    # rhs
                        mov              rcx, qword ptr [rbp + 2168]                    # rhs
                        mov              r8d, 12                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n4_disjunction_af
                        mov              rdi, qword ptr [rbp + 2160]                    # d
                        mov              rsi, qword ptr [rbp + 2168]                    # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx
                                                                                        jmp   n8_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:
                        mov              qword ptr [rbp + 2064], 2                      # result
                        mov              dword ptr [rbp + 2068], 4
                        mov              rax, qword ptr [rip + .Lx111_0]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n9_call_builtin_icon_α
.Lx111_0:
                        .quad            .Lx111_0_s
.Lx111_0_s:
                        .string          "a<<b"
#-----------------------------------------------------------------------------------------------------------------------
n9_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2064]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 2040], rax
                        .section         .rodata
.Lrkfn113:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn113]                         # fn
                        lea              rsi, [rbp + 2032]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                        cmp              eax, 104
                                                                                        je    n10_disjunction_α
                                                                                        jmp   n4_disjunction_as
n9_call_builtin_icon_β:
                                                                                        jmp   n10_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n10_disjunction_α:
                        mov              qword ptr [rbp + 1840], 0
                        mov              qword ptr [rbp + 1848], 0
                        mov              dword ptr [rbp + 1856], 0
                                                                                        jmp   n11_var_α
n10_disjunction_as:
                        mov              eax, dword ptr [rbp + 1856]
                        cmp              eax, 0
                                                                                        jne   .Lx115_0
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   n16_disjunction_α
.Lx115_0:
                                                                                        jmp   n16_disjunction_α
n10_disjunction_β:
                        mov              eax, dword ptr [rbp + 1856]
                                                                                        jmp   n16_disjunction_α
n10_disjunction_af:
                        add              dword ptr [rbp + 1856], 1
                        mov              eax, dword ptr [rbp + 1856]
                                                                                        jmp   n16_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n11_var_α:
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 1960], rax
                                                                                        jmp   n12_var_α
n11_var_β:
                                                                                        jmp   n10_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n12_var_α:
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n13_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n13_binop_test_α:
                        mov              rdi, qword ptr [rbp + 2160]                    # lhs
                        mov              rsi, qword ptr [rbp + 2168]                    # lhs
                        mov              rdx, qword ptr [rbp + 2176]                    # rhs
                        mov              rcx, qword ptr [rbp + 2184]                    # rhs
                        mov              r8d, 14                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n10_disjunction_af
                        mov              rdi, qword ptr [rbp + 2176]                    # d
                        mov              rsi, qword ptr [rbp + 2184]                    # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                                                                                        jmp   n14_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:
                        mov              qword ptr [rbp + 1920], 2                      # result
                        mov              dword ptr [rbp + 1924], 4
                        mov              rax, qword ptr [rip + .Lx121_0]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   n15_call_builtin_icon_α
.Lx121_0:
                        .quad            .Lx121_0_s
.Lx121_0_s:
                        .string          "b>>a"
#-----------------------------------------------------------------------------------------------------------------------
n15_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1920]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1928]
                        mov              qword ptr [rbp + 1896], rax
                        .section         .rodata
.Lrkfn123:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn123]                         # fn
                        lea              rsi, [rbp + 1888]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        cmp              eax, 104
                                                                                        je    n16_disjunction_α
                                                                                        jmp   n10_disjunction_as
n15_call_builtin_icon_β:
                                                                                        jmp   n16_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n16_disjunction_α:
                        mov              qword ptr [rbp + 1696], 0
                        mov              qword ptr [rbp + 1704], 0
                        mov              dword ptr [rbp + 1712], 0
                                                                                        jmp   n17_var_α
n16_disjunction_as:
                        mov              eax, dword ptr [rbp + 1712]
                        cmp              eax, 0
                                                                                        jne   .Lx125_0
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1704], rax
                                                                                        jmp   n22_disjunction_α
.Lx125_0:
                                                                                        jmp   n22_disjunction_α
n16_disjunction_β:
                        mov              eax, dword ptr [rbp + 1712]
                                                                                        jmp   n22_disjunction_α
n16_disjunction_af:
                        add              dword ptr [rbp + 1712], 1
                        mov              eax, dword ptr [rbp + 1712]
                                                                                        jmp   n22_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n17_var_α:
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n18_var_α
n17_var_β:
                                                                                        jmp   n16_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n18_var_α:
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 1832], rax
                                                                                        jmp   n19_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n19_binop_test_α:
                        mov              rdi, qword ptr [rbp + 2176]                    # lhs
                        mov              rsi, qword ptr [rbp + 2184]                    # lhs
                        mov              rdx, qword ptr [rbp + 2176]                    # rhs
                        mov              rcx, qword ptr [rbp + 2184]                    # rhs
                        mov              r8d, 13                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n16_disjunction_af
                        mov              rdi, qword ptr [rbp + 2176]                    # d
                        mov              rsi, qword ptr [rbp + 2184]                    # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                                                                                        jmp   n20_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:
                        mov              qword ptr [rbp + 1776], 2                      # result
                        mov              dword ptr [rbp + 1780], 5
                        mov              rax, qword ptr [rip + .Lx131_0]
                        mov              qword ptr [rbp + 1784], rax
                                                                                        jmp   n21_call_builtin_icon_α
.Lx131_0:
                        .quad            .Lx131_0_s
.Lx131_0_s:
                        .string          "a<<=a"
#-----------------------------------------------------------------------------------------------------------------------
n21_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 1752], rax
                        .section         .rodata
.Lrkfn133:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn133]                         # fn
                        lea              rsi, [rbp + 1744]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                        cmp              eax, 104
                                                                                        je    n22_disjunction_α
                                                                                        jmp   n16_disjunction_as
n21_call_builtin_icon_β:
                                                                                        jmp   n22_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n22_disjunction_α:
                        mov              qword ptr [rbp + 1552], 0
                        mov              qword ptr [rbp + 1560], 0
                        mov              dword ptr [rbp + 1568], 0
                                                                                        jmp   n23_var_α
n22_disjunction_as:
                        mov              eax, dword ptr [rbp + 1568]
                        cmp              eax, 0
                                                                                        jne   .Lx135_0
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n28_disjunction_α
.Lx135_0:
                                                                                        jmp   n28_disjunction_α
n22_disjunction_β:
                        mov              eax, dword ptr [rbp + 1568]
                                                                                        jmp   n28_disjunction_α
n22_disjunction_af:
                        add              dword ptr [rbp + 1568], 1
                        mov              eax, dword ptr [rbp + 1568]
                                                                                        jmp   n28_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n23_var_α:
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n24_var_α
n23_var_β:
                                                                                        jmp   n22_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n24_var_α:
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n25_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n25_binop_test_α:
                        mov              rdi, qword ptr [rbp + 2160]                    # lhs
                        mov              rsi, qword ptr [rbp + 2168]                    # lhs
                        mov              rdx, qword ptr [rbp + 2160]                    # rhs
                        mov              rcx, qword ptr [rbp + 2168]                    # rhs
                        mov              r8d, 15                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n22_disjunction_af
                        mov              rdi, qword ptr [rbp + 2160]                    # d
                        mov              rsi, qword ptr [rbp + 2168]                    # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                                                                                        jmp   n26_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:
                        mov              qword ptr [rbp + 1632], 2                      # result
                        mov              dword ptr [rbp + 1636], 5
                        mov              rax, qword ptr [rip + .Lx141_0]
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   n27_call_builtin_icon_α
.Lx141_0:
                        .quad            .Lx141_0_s
.Lx141_0_s:
                        .string          "b>>=b"
#-----------------------------------------------------------------------------------------------------------------------
n27_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1608], rax
                        .section         .rodata
.Lrkfn143:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn143]                         # fn
                        lea              rsi, [rbp + 1600]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        cmp              eax, 104
                                                                                        je    n28_disjunction_α
                                                                                        jmp   n22_disjunction_as
n27_call_builtin_icon_β:
                                                                                        jmp   n28_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n28_disjunction_α:
                        mov              qword ptr [rbp + 1408], 0
                        mov              qword ptr [rbp + 1416], 0
                        mov              dword ptr [rbp + 1424], 0
                                                                                        jmp   n29_var_α
n28_disjunction_as:
                        mov              eax, dword ptr [rbp + 1424]
                        cmp              eax, 0
                                                                                        jne   .Lx145_0
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n34_disjunction_α
.Lx145_0:
                                                                                        jmp   n34_disjunction_α
n28_disjunction_β:
                        mov              eax, dword ptr [rbp + 1424]
                                                                                        jmp   n34_disjunction_α
n28_disjunction_af:
                        add              dword ptr [rbp + 1424], 1
                        mov              eax, dword ptr [rbp + 1424]
                                                                                        jmp   n34_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n29_var_α:
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n30_var_α
n29_var_β:
                                                                                        jmp   n28_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n30_var_α:
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   n31_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n31_binop_test_α:
                        mov              rdi, qword ptr [rbp + 2176]                    # lhs
                        mov              rsi, qword ptr [rbp + 2184]                    # lhs
                        mov              rdx, qword ptr [rbp + 2176]                    # rhs
                        mov              rcx, qword ptr [rbp + 2184]                    # rhs
                        mov              r8d, 16                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n28_disjunction_af
                        mov              rdi, qword ptr [rbp + 2176]                    # d
                        mov              rsi, qword ptr [rbp + 2184]                    # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                                                                                        jmp   n32_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_string_α:
                        mov              qword ptr [rbp + 1488], 2                      # result
                        mov              dword ptr [rbp + 1492], 4
                        mov              rax, qword ptr [rip + .Lx151_0]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n33_call_builtin_icon_α
.Lx151_0:
                        .quad            .Lx151_0_s
.Lx151_0_s:
                        .string          "a==a"
#-----------------------------------------------------------------------------------------------------------------------
n33_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1464], rax
                        .section         .rodata
.Lrkfn153:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn153]                         # fn
                        lea              rsi, [rbp + 1456]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                        cmp              eax, 104
                                                                                        je    n34_disjunction_α
                                                                                        jmp   n28_disjunction_as
n33_call_builtin_icon_β:
                                                                                        jmp   n34_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n34_disjunction_α:
                        mov              qword ptr [rbp + 1264], 0
                        mov              qword ptr [rbp + 1272], 0
                        mov              dword ptr [rbp + 1280], 0
                                                                                        jmp   n35_var_α
n34_disjunction_as:
                        mov              eax, dword ptr [rbp + 1280]
                        cmp              eax, 0
                                                                                        jne   .Lx155_0
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n40_lit_string_α
.Lx155_0:
                                                                                        jmp   n40_lit_string_α
n34_disjunction_β:
                        mov              eax, dword ptr [rbp + 1280]
                                                                                        jmp   n40_lit_string_α
n34_disjunction_af:
                        add              dword ptr [rbp + 1280], 1
                        mov              eax, dword ptr [rbp + 1280]
                                                                                        jmp   n40_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n35_var_α:
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n36_var_α
n35_var_β:
                                                                                        jmp   n34_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n36_var_α:
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n37_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n37_binop_test_α:
                        mov              rdi, qword ptr [rbp + 2176]                    # lhs
                        mov              rsi, qword ptr [rbp + 2184]                    # lhs
                        mov              rdx, qword ptr [rbp + 2160]                    # rhs
                        mov              rcx, qword ptr [rbp + 2168]                    # rhs
                        mov              r8d, 17                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n34_disjunction_af
                        mov              rdi, qword ptr [rbp + 2160]                    # d
                        mov              rsi, qword ptr [rbp + 2168]                    # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n38_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_string_α:
                        mov              qword ptr [rbp + 1344], 2                      # result
                        mov              dword ptr [rbp + 1348], 5
                        mov              rax, qword ptr [rip + .Lx161_0]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n39_call_builtin_icon_α
.Lx161_0:
                        .quad            .Lx161_0_s
.Lx161_0_s:
                        .string          "a~==b"
#-----------------------------------------------------------------------------------------------------------------------
n39_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1320], rax
                        .section         .rodata
.Lrkfn163:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn163]                         # fn
                        lea              rsi, [rbp + 1312]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        cmp              eax, 104
                                                                                        je    n40_lit_string_α
                                                                                        jmp   n34_disjunction_as
n39_call_builtin_icon_β:
                                                                                        jmp   n40_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:
                        mov              qword ptr [rbp + 1248], 2                      # result
                        mov              dword ptr [rbp + 1252], 1
                        mov              rax, qword ptr [rip + .Lx164_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n41_assign_α
.Lx164_0:
                        .quad            .Lx164_0_s
.Lx164_0_s:
                        .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n41_assign_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              rdx, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                                                                                        jmp   n42_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:
                        mov              qword ptr [rbp + 1232], 2                      # result
                        mov              dword ptr [rbp + 1236], 1
                        mov              rax, qword ptr [rip + .Lx166_0]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n43_assign_α
.Lx166_0:
                        .quad            .Lx166_0_s
.Lx166_0_s:
                        .string          "3"
#-----------------------------------------------------------------------------------------------------------------------
n43_assign_α:
                        mov              rax, qword ptr [rbp + 1232]
                        mov              rdx, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                                                                                        jmp   n44_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n44_disjunction_α:
                        mov              qword ptr [rbp + 1088], 0
                        mov              qword ptr [rbp + 1096], 0
                        mov              dword ptr [rbp + 1104], 0
                                                                                        jmp   n45_var_α
n44_disjunction_as:
                        mov              eax, dword ptr [rbp + 1104]
                        cmp              eax, 0
                                                                                        jne   .Lx169_0
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n50_disjunction_α
.Lx169_0:
                                                                                        jmp   n50_disjunction_α
n44_disjunction_β:
                        mov              eax, dword ptr [rbp + 1104]
                                                                                        jmp   n50_disjunction_α
n44_disjunction_af:
                        add              dword ptr [rbp + 1104], 1
                        mov              eax, dword ptr [rbp + 1104]
                                                                                        jmp   n50_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n45_var_α:
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n46_var_α
n45_var_β:
                                                                                        jmp   n44_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n46_var_α:
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n47_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n47_binop_test_α:
                        mov              rdi, qword ptr [rbp + 2176]                    # lhs
                        mov              rsi, qword ptr [rbp + 2184]                    # lhs
                        mov              rdx, qword ptr [rbp + 2160]                    # rhs
                        mov              rcx, qword ptr [rbp + 2168]                    # rhs
                        mov              r8d, 12                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n44_disjunction_af
                        mov              rdi, qword ptr [rbp + 2160]                    # d
                        mov              rsi, qword ptr [rbp + 2168]                    # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                                                                                        jmp   n48_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_string_α:
                        mov              qword ptr [rbp + 1168], 2                      # result
                        mov              dword ptr [rbp + 1172], 4
                        mov              rax, qword ptr [rip + .Lx175_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n49_call_builtin_icon_α
.Lx175_0:
                        .quad            .Lx175_0_s
.Lx175_0_s:
                        .string          "2<<3"
#-----------------------------------------------------------------------------------------------------------------------
n49_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1144], rax
                        .section         .rodata
.Lrkfn177:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn177]                         # fn
                        lea              rsi, [rbp + 1136]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        cmp              eax, 104
                                                                                        je    n50_disjunction_α
                                                                                        jmp   n44_disjunction_as
n49_call_builtin_icon_β:
                                                                                        jmp   n50_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n50_disjunction_α:
                        mov              qword ptr [rbp + 944], 0
                        mov              qword ptr [rbp + 952], 0
                        mov              dword ptr [rbp + 960], 0
                                                                                        jmp   n51_var_α
n50_disjunction_as:
                        mov              eax, dword ptr [rbp + 960]
                        cmp              eax, 0
                                                                                        jne   .Lx179_0
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n56_disjunction_α
.Lx179_0:
                                                                                        jmp   n56_disjunction_α
n50_disjunction_β:
                        mov              eax, dword ptr [rbp + 960]
                                                                                        jmp   n56_disjunction_α
n50_disjunction_af:
                        add              dword ptr [rbp + 960], 1
                        mov              eax, dword ptr [rbp + 960]
                                                                                        jmp   n56_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n51_var_α:
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n52_var_α
n51_var_β:
                                                                                        jmp   n50_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n52_var_α:
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n53_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n53_binop_test_α:
                        mov              rdi, qword ptr [rbp + 2160]                    # lhs
                        mov              rsi, qword ptr [rbp + 2168]                    # lhs
                        mov              rdx, qword ptr [rbp + 2176]                    # rhs
                        mov              rcx, qword ptr [rbp + 2184]                    # rhs
                        mov              r8d, 14                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n50_disjunction_af
                        mov              rdi, qword ptr [rbp + 2176]                    # d
                        mov              rsi, qword ptr [rbp + 2184]                    # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n54_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:
                        mov              qword ptr [rbp + 1024], 2                      # result
                        mov              dword ptr [rbp + 1028], 4
                        mov              rax, qword ptr [rip + .Lx185_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n55_call_builtin_icon_α
.Lx185_0:
                        .quad            .Lx185_0_s
.Lx185_0_s:
                        .string          "3>>2"
#-----------------------------------------------------------------------------------------------------------------------
n55_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1000], rax
                        .section         .rodata
.Lrkfn187:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn187]                         # fn
                        lea              rsi, [rbp + 992]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              eax, 104
                                                                                        je    n56_disjunction_α
                                                                                        jmp   n50_disjunction_as
n55_call_builtin_icon_β:
                                                                                        jmp   n56_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n56_disjunction_α:
                        mov              qword ptr [rbp + 800], 0
                        mov              qword ptr [rbp + 808], 0
                        mov              dword ptr [rbp + 816], 0
                                                                                        jmp   n57_var_α
n56_disjunction_as:
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 0
                                                                                        jne   .Lx189_0
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n62_lit_string_α
.Lx189_0:
                                                                                        jmp   n62_lit_string_α
n56_disjunction_β:
                        mov              eax, dword ptr [rbp + 816]
                                                                                        jmp   n62_lit_string_α
n56_disjunction_af:
                        add              dword ptr [rbp + 816], 1
                        mov              eax, dword ptr [rbp + 816]
                                                                                        jmp   n62_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n57_var_α:
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n58_lit_string_α
n57_var_β:
                                                                                        jmp   n56_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_string_α:
                        mov              qword ptr [rbp + 928], 2                       # result
                        mov              dword ptr [rbp + 932], 1
                        mov              rax, qword ptr [rip + .Lx192_0]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n59_binop_test_α
.Lx192_0:
                        .quad            .Lx192_0_s
.Lx192_0_s:
                        .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n59_binop_test_α:
                        mov              rdi, qword ptr [rbp + 2176]                    # lhs
                        mov              rsi, qword ptr [rbp + 2184]                    # lhs
                        mov              rdx, qword ptr [rbp + 928]                     # rhs
                        mov              rcx, qword ptr [rbp + 936]                     # rhs
                        mov              r8d, 16                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n56_disjunction_af
                        mov              rdi, qword ptr [rbp + 928]                     # d
                        mov              rsi, qword ptr [rbp + 936]                     # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n60_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:
                        mov              qword ptr [rbp + 880], 2                       # result
                        mov              dword ptr [rbp + 884], 4
                        mov              rax, qword ptr [rip + .Lx194_0]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n61_call_builtin_icon_α
.Lx194_0:
                        .quad            .Lx194_0_s
.Lx194_0_s:
                        .string          "2==2"
#-----------------------------------------------------------------------------------------------------------------------
n61_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                        .section         .rodata
.Lrkfn196:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn196]                         # fn
                        lea              rsi, [rbp + 848]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 104
                                                                                        je    n62_lit_string_α
                                                                                        jmp   n56_disjunction_as
n61_call_builtin_icon_β:
                                                                                        jmp   n62_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_string_α:
                        mov              qword ptr [rbp + 784], 2                       # result
                        mov              dword ptr [rbp + 788], 2
                        mov              rax, qword ptr [rip + .Lx197_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n63_assign_α
.Lx197_0:
                        .quad            .Lx197_0_s
.Lx197_0_s:
                        .string          "ac"
#-----------------------------------------------------------------------------------------------------------------------
n63_assign_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                                                                                        jmp   n64_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_charset_α:
                        mov              qword ptr [rbp + 768], 2                       # result
                        mov              dword ptr [rbp + 772], -1
                        mov              rax, qword ptr [rip + .Lx199_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n65_assign_α
.Lx199_0:
                        .quad            .Lx199_0_s
.Lx199_0_s:
                        .string          "ac"
#-----------------------------------------------------------------------------------------------------------------------
n65_assign_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                                                                                        jmp   n66_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n66_disjunction_α:
                        mov              qword ptr [rbp + 624], 0
                        mov              qword ptr [rbp + 632], 0
                        mov              dword ptr [rbp + 640], 0
                                                                                        jmp   n67_var_α
n66_disjunction_as:
                        mov              eax, dword ptr [rbp + 640]
                        cmp              eax, 0
                                                                                        jne   .Lx202_0
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n72_disjunction_α
.Lx202_0:
                                                                                        jmp   n72_disjunction_α
n66_disjunction_β:
                        mov              eax, dword ptr [rbp + 640]
                                                                                        jmp   n72_disjunction_α
n66_disjunction_af:
                        add              dword ptr [rbp + 640], 1
                        mov              eax, dword ptr [rbp + 640]
                                                                                        jmp   n72_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n67_var_α:
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n68_var_α
n67_var_β:
                                                                                        jmp   n66_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n68_var_α:
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n69_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n69_binop_test_α:
                        mov              rdi, qword ptr [rbp + 2176]                    # lhs
                        mov              rsi, qword ptr [rbp + 2184]                    # lhs
                        mov              rdx, qword ptr [rbp + 2160]                    # rhs
                        mov              rcx, qword ptr [rbp + 2168]                    # rhs
                        mov              r8d, 16                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n66_disjunction_af
                        mov              rdi, qword ptr [rbp + 2160]                    # d
                        mov              rsi, qword ptr [rbp + 2168]                    # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n70_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_string_α:
                        mov              qword ptr [rbp + 704], 2                       # result
                        mov              dword ptr [rbp + 708], 8
                        mov              rax, qword ptr [rip + .Lx208_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n71_call_builtin_icon_α
.Lx208_0:
                        .quad            .Lx208_0_s
.Lx208_0_s:
                        .string          "ac=='ca'"
#-----------------------------------------------------------------------------------------------------------------------
n71_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 680], rax
                        .section         .rodata
.Lrkfn210:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn210]                         # fn
                        lea              rsi, [rbp + 672]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 104
                                                                                        je    n72_disjunction_α
                                                                                        jmp   n66_disjunction_as
n71_call_builtin_icon_β:
                                                                                        jmp   n72_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n72_disjunction_α:
                        mov              qword ptr [rbp + 480], 0
                        mov              qword ptr [rbp + 488], 0
                        mov              dword ptr [rbp + 496], 0
                                                                                        jmp   n73_var_α
n72_disjunction_as:
                        mov              eax, dword ptr [rbp + 496]
                        cmp              eax, 0
                                                                                        jne   .Lx212_0
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n78_lit_string_α
.Lx212_0:
                                                                                        jmp   n78_lit_string_α
n72_disjunction_β:
                        mov              eax, dword ptr [rbp + 496]
                                                                                        jmp   n78_lit_string_α
n72_disjunction_af:
                        add              dword ptr [rbp + 496], 1
                        mov              eax, dword ptr [rbp + 496]
                                                                                        jmp   n78_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n73_var_α:
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n74_var_α
n73_var_β:
                                                                                        jmp   n72_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n74_var_α:
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n75_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n75_binop_test_α:
                        mov              rdi, qword ptr [rbp + 2176]                    # lhs
                        mov              rsi, qword ptr [rbp + 2184]                    # lhs
                        mov              rdx, qword ptr [rbp + 2160]                    # rhs
                        mov              rcx, qword ptr [rbp + 2168]                    # rhs
                        mov              r8d, 13                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n72_disjunction_af
                        mov              rdi, qword ptr [rbp + 2160]                    # d
                        mov              rsi, qword ptr [rbp + 2168]                    # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n76_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_string_α:
                        mov              qword ptr [rbp + 560], 2                       # result
                        mov              dword ptr [rbp + 564], 9
                        mov              rax, qword ptr [rip + .Lx218_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n77_call_builtin_icon_α
.Lx218_0:
                        .quad            .Lx218_0_s
.Lx218_0_s:
                        .string          "ac<<='ca'"
#-----------------------------------------------------------------------------------------------------------------------
n77_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 536], rax
                        .section         .rodata
.Lrkfn220:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn220]                         # fn
                        lea              rsi, [rbp + 528]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 104
                                                                                        je    n78_lit_string_α
                                                                                        jmp   n72_disjunction_as
n77_call_builtin_icon_β:
                                                                                        jmp   n78_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_string_α:
                        mov              qword ptr [rbp + 464], 2                       # result
                        mov              dword ptr [rbp + 468], 0
                        mov              rax, qword ptr [rip + .Lx221_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n79_assign_α
.Lx221_0:
                        .quad            .Lx221_0_s
.Lx221_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n79_assign_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                                                                                        jmp   n80_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_string_α:
                        mov              qword ptr [rbp + 448], 2                       # result
                        mov              dword ptr [rbp + 452], 1
                        mov              rax, qword ptr [rip + .Lx223_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n81_assign_α
.Lx223_0:
                        .quad            .Lx223_0_s
.Lx223_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n81_assign_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                                                                                        jmp   n82_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n82_disjunction_α:
                        mov              qword ptr [rbp + 288], 0
                        mov              qword ptr [rbp + 296], 0
                        mov              dword ptr [rbp + 304], 0
                                                                                        jmp   n83_var_α
n82_disjunction_as:
                        mov              eax, dword ptr [rbp + 304]
                        cmp              eax, 0
                                                                                        jne   .Lx226_0
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n88_disjunction_α
.Lx226_0:
                                                                                        jmp   n88_disjunction_α
n82_disjunction_β:
                        mov              eax, dword ptr [rbp + 304]
                                                                                        jmp   n88_disjunction_α
n82_disjunction_af:
                        add              dword ptr [rbp + 304], 1
                        mov              eax, dword ptr [rbp + 304]
                                                                                        jmp   n88_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n83_var_α:
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n84_var_α
n83_var_β:
                                                                                        jmp   n82_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n84_var_α:
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n85_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n85_binop_test_α:
                        mov              rdi, qword ptr [rbp + 2176]                    # lhs
                        mov              rsi, qword ptr [rbp + 2184]                    # lhs
                        mov              rdx, qword ptr [rbp + 2176]                    # rhs
                        mov              rcx, qword ptr [rbp + 2184]                    # rhs
                        mov              r8d, 13                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n82_disjunction_af
                        mov              rdi, qword ptr [rbp + 2176]                    # d
                        mov              rsi, qword ptr [rbp + 2184]                    # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n86_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_string_α:
                        mov              qword ptr [rbp + 368], 2                       # result
                        mov              dword ptr [rbp + 372], 13
                        mov              rax, qword ptr [rip + .Lx232_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n87_call_builtin_icon_α
.Lx232_0:
                        .quad            .Lx232_0_s
.Lx232_0_s:
                        .string          "empty<<=empty"
#-----------------------------------------------------------------------------------------------------------------------
n87_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        .section         .rodata
.Lrkfn234:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn234]                         # fn
                        lea              rsi, [rbp + 336]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 104
                                                                                        je    n88_disjunction_α
                                                                                        jmp   n82_disjunction_as
n87_call_builtin_icon_β:
                                                                                        jmp   n88_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n88_disjunction_α:
                        mov              qword ptr [rbp + 144], 0
                        mov              qword ptr [rbp + 152], 0
                        mov              dword ptr [rbp + 160], 0
                                                                                        jmp   n89_var_α
n88_disjunction_as:
                        mov              eax, dword ptr [rbp + 160]
                        cmp              eax, 0
                                                                                        jne   .Lx236_0
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n94_disjunction_α
.Lx236_0:
                                                                                        jmp   n94_disjunction_α
n88_disjunction_β:
                        mov              eax, dword ptr [rbp + 160]
                                                                                        jmp   n94_disjunction_α
n88_disjunction_af:
                        add              dword ptr [rbp + 160], 1
                        mov              eax, dword ptr [rbp + 160]
                                                                                        jmp   n94_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n89_var_α:
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n90_var_α
n89_var_β:
                                                                                        jmp   n88_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n90_var_α:
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n91_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n91_binop_test_α:
                        mov              rdi, qword ptr [rbp + 2176]                    # lhs
                        mov              rsi, qword ptr [rbp + 2184]                    # lhs
                        mov              rdx, qword ptr [rbp + 2160]                    # rhs
                        mov              rcx, qword ptr [rbp + 2168]                    # rhs
                        mov              r8d, 12                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n88_disjunction_af
                        mov              rdi, qword ptr [rbp + 2160]                    # d
                        mov              rsi, qword ptr [rbp + 2168]                    # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n92_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_string_α:
                        mov              qword ptr [rbp + 224], 2                       # result
                        mov              dword ptr [rbp + 228], 8
                        mov              rax, qword ptr [rip + .Lx242_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n93_call_builtin_icon_α
.Lx242_0:
                        .quad            .Lx242_0_s
.Lx242_0_s:
                        .string          "empty<<a"
#-----------------------------------------------------------------------------------------------------------------------
n93_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn244:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn244]                         # fn
                        lea              rsi, [rbp + 192]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 104
                                                                                        je    n94_disjunction_α
                                                                                        jmp   n88_disjunction_as
n93_call_builtin_icon_β:
                                                                                        jmp   n94_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n94_disjunction_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                        mov              dword ptr [rbp + 16], 0
                                                                                        jmp   n95_var_α
n94_disjunction_as:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 0
                                                                                        jne   .Lx246_0
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   main_ω
.Lx246_0:
                                                                                        jmp   main_ω
n94_disjunction_β:
                        mov              eax, dword ptr [rbp + 16]
                                                                                        jmp   main_ω
n94_disjunction_af:
                        add              dword ptr [rbp + 16], 1
                        mov              eax, dword ptr [rbp + 16]
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n95_var_α:
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n96_var_α
n95_var_β:
                                                                                        jmp   n94_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n96_var_α:
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n97_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n97_binop_test_α:
                        mov              rdi, qword ptr [rbp + 2160]                    # lhs
                        mov              rsi, qword ptr [rbp + 2168]                    # lhs
                        mov              rdx, qword ptr [rbp + 2176]                    # rhs
                        mov              rcx, qword ptr [rbp + 2184]                    # rhs
                        mov              r8d, 14                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n94_disjunction_af
                        mov              rdi, qword ptr [rbp + 2176]                    # d
                        mov              rsi, qword ptr [rbp + 2184]                    # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n98_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_string_α:
                        mov              qword ptr [rbp + 80], 2                        # result
                        mov              dword ptr [rbp + 84], 8
                        mov              rax, qword ptr [rip + .Lx252_0]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n99_call_builtin_icon_α
.Lx252_0:
                        .quad            .Lx252_0_s
.Lx252_0_s:
                        .string          "a>>empty"
#-----------------------------------------------------------------------------------------------------------------------
n99_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                        .section         .rodata
.Lrkfn254:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn254]                         # fn
                        lea              rsi, [rbp + 48]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        je    main_ω
                                                                                        jmp   n94_disjunction_as
n99_call_builtin_icon_β:
                                                                                        jmp   main_ω
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
