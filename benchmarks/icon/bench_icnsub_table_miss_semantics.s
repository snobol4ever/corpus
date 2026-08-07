                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              r12, qword ptr [0x70000000]
                        xor              esi, esi
                        lea              rcx, [rip + .Lmain_zf_γ]
                        lea              rdx, [rip + .Lmain_zf_ω]
                                                                                        jmp   main_α
.Lmain_zf_γ:
                        xor              edi, edi
                        call             exit@PLT
.Lmain_zf_ω:
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 2352
                        mov              qword ptr [rsp + 2328], rcx
                        mov              qword ptr [rsp + 2336], rdx
                        mov              qword ptr [rsp + 2344], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 2320
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 0
                        mov              edx, 3
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:
                        sub              rsp, 2192
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
                        mov              qword ptr [rbp + 2240], 3                      # result
                        mov              rax, qword ptr [rip + .Lx98_0]
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n1_call_builtin_icon_α
.Lx98_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n1_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 2208], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 2216], rax
                        .section         .rodata
.Lrkfn100:              .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn100]                         # fn
                        lea              rsi, [rbp + 2208]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                        cmp              eax, 104
                                                                                        je    n3_var_ref_α
                                                                                        jmp   n2_assign_α
n1_call_builtin_icon_β:
                                                                                        jmp   n3_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:
                        mov              rax, qword ptr [rbp + 2192]
                        mov              rdx, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                                                                                        jmp   n3_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n3_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                                                                                        jmp   n4_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:
                        mov              qword ptr [rbp + 2128], 2                      # result
                        mov              dword ptr [rbp + 2132], 5
                        mov              rax, qword ptr [rip + .Lx00001_0]
                        mov              qword ptr [rbp + 2136], rax
                                                                                        jmp   n5_subscript_α
.Lx00001_0:
                        .quad            .Lx00001_0_s
.Lx00001_0_s:
                        .string          "alpha"
#-----------------------------------------------------------------------------------------------------------------------
n5_subscript_α:
                        mov              rdi, qword ptr [rbp + 2112]                    # base
                        mov              rsi, qword ptr [rbp + 2120]                    # base
                        mov              rdx, qword ptr [rbp + 2128]                    # idx
                        mov              rcx, qword ptr [rbp + 2136]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n8_var_ref_α
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                                                                                        jmp   n6_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:
                        mov              qword ptr [rbp + 2176], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00002_0]
                        mov              qword ptr [rbp + 2184], rax
                                                                                        jmp   n7_assign_var_α
.Lx00002_0:
                        .quad            11
#-----------------------------------------------------------------------------------------------------------------------
n7_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2144]                    # var
                        mov              rsi, qword ptr [rbp + 2152]                    # var
                        mov              rdx, qword ptr [rbp + 2176]                    # val
                        mov              rcx, qword ptr [rbp + 2184]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n8_var_ref_α
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                                                                                        jmp   n8_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n8_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                                                                                        jmp   n9_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:
                        mov              qword ptr [rbp + 2048], 2                      # result
                        mov              dword ptr [rbp + 2052], 4
                        mov              rax, qword ptr [rip + .Lx00003_0]
                        mov              qword ptr [rbp + 2056], rax
                                                                                        jmp   n10_subscript_α
.Lx00003_0:
                        .quad            .Lx00003_0_s
.Lx00003_0_s:
                        .string          "beta"
#-----------------------------------------------------------------------------------------------------------------------
n10_subscript_α:
                        mov              rdi, qword ptr [rbp + 2032]                    # base
                        mov              rsi, qword ptr [rbp + 2040]                    # base
                        mov              rdx, qword ptr [rbp + 2048]                    # idx
                        mov              rcx, qword ptr [rbp + 2056]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n13_var_ref_α
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                                                                                        jmp   n11_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:
                        mov              qword ptr [rbp + 2096], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00004_0]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n12_assign_var_α
.Lx00004_0:
                        .quad            22
#-----------------------------------------------------------------------------------------------------------------------
n12_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2064]                    # var
                        mov              rsi, qword ptr [rbp + 2072]                    # var
                        mov              rdx, qword ptr [rbp + 2096]                    # val
                        mov              rcx, qword ptr [rbp + 2104]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n13_var_ref_α
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx
                                                                                        jmp   n13_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n13_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                                                                                        jmp   n14_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_integer_α:
                        mov              qword ptr [rbp + 1968], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00005_0]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n15_subscript_α
.Lx00005_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n15_subscript_α:
                        mov              rdi, qword ptr [rbp + 1952]                    # base
                        mov              rsi, qword ptr [rbp + 1960]                    # base
                        mov              rdx, qword ptr [rbp + 1968]                    # idx
                        mov              rcx, qword ptr [rbp + 1976]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n18_var_ref_α
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                                                                                        jmp   n16_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:
                        mov              qword ptr [rbp + 2016], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00006_0]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   n17_assign_var_α
.Lx00006_0:
                        .quad            77
#-----------------------------------------------------------------------------------------------------------------------
n17_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1984]                    # var
                        mov              rsi, qword ptr [rbp + 1992]                    # var
                        mov              rdx, qword ptr [rbp + 2016]                    # val
                        mov              rcx, qword ptr [rbp + 2024]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n18_var_ref_α
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                                                                                        jmp   n18_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n18_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                                                                                        jmp   n19_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_integer_α:
                        mov              qword ptr [rbp + 1888], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00007_0]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n20_subscript_α
.Lx00007_0:
                        .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n20_subscript_α:
                        mov              rdi, qword ptr [rbp + 1872]                    # base
                        mov              rsi, qword ptr [rbp + 1880]                    # base
                        mov              rdx, qword ptr [rbp + 1888]                    # idx
                        mov              rcx, qword ptr [rbp + 1896]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n23_var_ref_α
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                                                                                        jmp   n21_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_integer_α:
                        mov              qword ptr [rbp + 1936], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00008_0]
                        mov              qword ptr [rbp + 1944], rax
                                                                                        jmp   n22_assign_var_α
.Lx00008_0:
                        .quad            33
#-----------------------------------------------------------------------------------------------------------------------
n22_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1904]                    # var
                        mov              rsi, qword ptr [rbp + 1912]                    # var
                        mov              rdx, qword ptr [rbp + 1936]                    # val
                        mov              rcx, qword ptr [rbp + 1944]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n23_var_ref_α
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx
                                                                                        jmp   n23_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n23_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                                                                                        jmp   n24_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_integer_α:
                        mov              qword ptr [rbp + 1808], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00009_0]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n25_subscript_α
.Lx00009_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n25_subscript_α:
                        mov              rdi, qword ptr [rbp + 1792]                    # base
                        mov              rsi, qword ptr [rbp + 1800]                    # base
                        mov              rdx, qword ptr [rbp + 1808]                    # idx
                        mov              rcx, qword ptr [rbp + 1816]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n28_var_ref_α
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                                                                                        jmp   n26_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_integer_α:
                        mov              qword ptr [rbp + 1856], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00010_0]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n27_assign_var_α
.Lx00010_0:
                        .quad            99
#-----------------------------------------------------------------------------------------------------------------------
n27_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1824]                    # var
                        mov              rsi, qword ptr [rbp + 1832]                    # var
                        mov              rdx, qword ptr [rbp + 1856]                    # val
                        mov              rcx, qword ptr [rbp + 1864]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n28_var_ref_α
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                                                                                        jmp   n28_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n28_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                                                                                        jmp   n29_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_string_α:
                        mov              qword ptr [rbp + 1728], 2                      # result
                        mov              dword ptr [rbp + 1732], 5
                        mov              rax, qword ptr [rip + .Lx00011_0]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n30_subscript_α
.Lx00011_0:
                        .quad            .Lx00011_0_s
.Lx00011_0_s:
                        .string          "alpha"
#-----------------------------------------------------------------------------------------------------------------------
n30_subscript_α:
                        mov              rdi, qword ptr [rbp + 1712]                    # base
                        mov              rsi, qword ptr [rbp + 1720]                    # base
                        mov              rdx, qword ptr [rbp + 1728]                    # idx
                        mov              rcx, qword ptr [rbp + 1736]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n33_var_ref_α
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                                                                                        jmp   n31_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_integer_α:
                        mov              qword ptr [rbp + 1776], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00012_0]
                        mov              qword ptr [rbp + 1784], rax
                                                                                        jmp   n32_assign_var_α
.Lx00012_0:
                        .quad            111
#-----------------------------------------------------------------------------------------------------------------------
n32_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1744]                    # var
                        mov              rsi, qword ptr [rbp + 1752]                    # var
                        mov              rdx, qword ptr [rbp + 1776]                    # val
                        mov              rcx, qword ptr [rbp + 1784]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n33_var_ref_α
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                                                                                        jmp   n33_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n33_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   n34_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_string_α:
                        mov              qword ptr [rbp + 1184], 2                      # result
                        mov              dword ptr [rbp + 1188], 5
                        mov              rax, qword ptr [rip + .Lx00013_0]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n35_subscript_α
.Lx00013_0:
                        .quad            .Lx00013_0_s
.Lx00013_0_s:
                        .string          "alpha"
#-----------------------------------------------------------------------------------------------------------------------
n35_subscript_α:
                        mov              rdi, qword ptr [rbp + 1168]                    # base
                        mov              rsi, qword ptr [rbp + 1176]                    # base
                        mov              rdx, qword ptr [rbp + 1184]                    # idx
                        mov              rcx, qword ptr [rbp + 1192]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n68_lit_integer_α
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                                                                                        jmp   n36_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n36_deref_α:
                        mov              rdi, qword ptr [rbp + 1200]                    # d
                        mov              rsi, qword ptr [rbp + 1208]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n68_lit_integer_α
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                                                                                        jmp   n37_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:
                        mov              qword ptr [rbp + 1232], 2                      # result
                        mov              dword ptr [rbp + 1236], 1
                        mov              rax, qword ptr [rip + .Lx00014_0]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n38_var_ref_α
.Lx00014_0:
                        .quad            .Lx00014_0_s
.Lx00014_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n38_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                                                                                        jmp   n39_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:
                        mov              qword ptr [rbp + 1264], 2                      # result
                        mov              dword ptr [rbp + 1268], 4
                        mov              rax, qword ptr [rip + .Lx00015_0]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n40_subscript_α
.Lx00015_0:
                        .quad            .Lx00015_0_s
.Lx00015_0_s:
                        .string          "beta"
#-----------------------------------------------------------------------------------------------------------------------
n40_subscript_α:
                        mov              rdi, qword ptr [rbp + 1248]                    # base
                        mov              rsi, qword ptr [rbp + 1256]                    # base
                        mov              rdx, qword ptr [rbp + 1264]                    # idx
                        mov              rcx, qword ptr [rbp + 1272]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n68_lit_integer_α
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n41_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n41_deref_α:
                        mov              rdi, qword ptr [rbp + 1280]                    # d
                        mov              rsi, qword ptr [rbp + 1288]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n68_lit_integer_α
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n42_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:
                        mov              qword ptr [rbp + 1312], 2                      # result
                        mov              dword ptr [rbp + 1316], 1
                        mov              rax, qword ptr [rip + .Lx00016_0]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n43_var_ref_α
.Lx00016_0:
                        .quad            .Lx00016_0_s
.Lx00016_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n43_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                                                                                        jmp   n44_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_integer_α:
                        mov              qword ptr [rbp + 1344], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00017_0]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n45_subscript_α
.Lx00017_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n45_subscript_α:
                        mov              rdi, qword ptr [rbp + 1328]                    # base
                        mov              rsi, qword ptr [rbp + 1336]                    # base
                        mov              rdx, qword ptr [rbp + 1344]                    # idx
                        mov              rcx, qword ptr [rbp + 1352]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n68_lit_integer_α
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n46_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n46_deref_α:
                        mov              rdi, qword ptr [rbp + 1360]                    # d
                        mov              rsi, qword ptr [rbp + 1368]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n68_lit_integer_α
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n47_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_string_α:
                        mov              qword ptr [rbp + 1392], 2                      # result
                        mov              dword ptr [rbp + 1396], 1
                        mov              rax, qword ptr [rip + .Lx00018_0]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n48_var_ref_α
.Lx00018_0:
                        .quad            .Lx00018_0_s
.Lx00018_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n48_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                                                                                        jmp   n49_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_integer_α:
                        mov              qword ptr [rbp + 1424], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00019_0]
                        mov              qword ptr [rbp + 1432], rax
                                                                                        jmp   n50_subscript_α
.Lx00019_0:
                        .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n50_subscript_α:
                        mov              rdi, qword ptr [rbp + 1408]                    # base
                        mov              rsi, qword ptr [rbp + 1416]                    # base
                        mov              rdx, qword ptr [rbp + 1424]                    # idx
                        mov              rcx, qword ptr [rbp + 1432]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n68_lit_integer_α
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                                                                                        jmp   n51_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n51_deref_α:
                        mov              rdi, qword ptr [rbp + 1440]                    # d
                        mov              rsi, qword ptr [rbp + 1448]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n68_lit_integer_α
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                                                                                        jmp   n52_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_string_α:
                        mov              qword ptr [rbp + 1472], 2                      # result
                        mov              dword ptr [rbp + 1476], 1
                        mov              rax, qword ptr [rip + .Lx00020_0]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   n53_var_ref_α
.Lx00020_0:
                        .quad            .Lx00020_0_s
.Lx00020_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n53_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                                                                                        jmp   n54_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_integer_α:
                        mov              qword ptr [rbp + 1504], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00021_0]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n55_subscript_α
.Lx00021_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n55_subscript_α:
                        mov              rdi, qword ptr [rbp + 1488]                    # base
                        mov              rsi, qword ptr [rbp + 1496]                    # base
                        mov              rdx, qword ptr [rbp + 1504]                    # idx
                        mov              rcx, qword ptr [rbp + 1512]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n68_lit_integer_α
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                                                                                        jmp   n56_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n56_deref_α:
                        mov              rdi, qword ptr [rbp + 1520]                    # d
                        mov              rsi, qword ptr [rbp + 1528]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n68_lit_integer_α
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                                                                                        jmp   n57_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_string_α:
                        mov              qword ptr [rbp + 1552], 2                      # result
                        mov              dword ptr [rbp + 1556], 1
                        mov              rax, qword ptr [rip + .Lx00022_0]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n58_var_ref_α
.Lx00022_0:
                        .quad            .Lx00022_0_s
.Lx00022_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n58_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                                                                                        jmp   n59_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:
                        mov              qword ptr [rbp + 1584], 2                      # result
                        mov              dword ptr [rbp + 1588], 7
                        mov              rax, qword ptr [rip + .Lx00023_0]
                        mov              qword ptr [rbp + 1592], rax
                                                                                        jmp   n60_subscript_α
.Lx00023_0:
                        .quad            .Lx00023_0_s
.Lx00023_0_s:
                        .string          "missing"
#-----------------------------------------------------------------------------------------------------------------------
n60_subscript_α:
                        mov              rdi, qword ptr [rbp + 1568]                    # base
                        mov              rsi, qword ptr [rbp + 1576]                    # base
                        mov              rdx, qword ptr [rbp + 1584]                    # idx
                        mov              rcx, qword ptr [rbp + 1592]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n68_lit_integer_α
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                                                                                        jmp   n61_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n61_deref_α:
                        mov              rdi, qword ptr [rbp + 1600]                    # d
                        mov              rsi, qword ptr [rbp + 1608]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n68_lit_integer_α
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                                                                                        jmp   n62_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_string_α:
                        mov              qword ptr [rbp + 1632], 2                      # result
                        mov              dword ptr [rbp + 1636], 1
                        mov              rax, qword ptr [rip + .Lx00024_0]
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   n63_var_ref_α
.Lx00024_0:
                        .quad            .Lx00024_0_s
.Lx00024_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n63_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                                                                                        jmp   n64_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_integer_α:
                        mov              qword ptr [rbp + 1664], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00025_0]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n65_subscript_α
.Lx00025_0:
                        .quad            12345
#-----------------------------------------------------------------------------------------------------------------------
n65_subscript_α:
                        mov              rdi, qword ptr [rbp + 1648]                    # base
                        mov              rsi, qword ptr [rbp + 1656]                    # base
                        mov              rdx, qword ptr [rbp + 1664]                    # idx
                        mov              rcx, qword ptr [rbp + 1672]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n68_lit_integer_α
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                                                                                        jmp   n66_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n66_deref_α:
                        mov              rdi, qword ptr [rbp + 1680]                    # d
                        mov              rsi, qword ptr [rbp + 1688]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n68_lit_integer_α
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                                                                                        jmp   n67_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n67_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 952], rax
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 968], rax
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 984], rax
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1000], rax
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1016], rax
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1032], rax
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1048], rax
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1064], rax
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1096], rax
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1112], rax
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1128], rax
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1144], rax
                        .section         .rodata
.Lrkfn180:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn180]                         # fn
                        lea              rsi, [rbp + 944]                               # args
                        mov              edx, 13                                        # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              eax, 104
                                                                                        je    n68_lit_integer_α
                                                                                        jmp   n68_lit_integer_α
n67_call_builtin_icon_β:
                                                                                        jmp   n68_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_integer_α:
                        mov              qword ptr [rbp + 912], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00026_0]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n69_assign_α
.Lx00026_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n69_assign_α:
                        mov              rax, qword ptr [rbp + 912]
                        mov              rdx, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                                                                                        jmp   n70_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_integer_α:
                        mov              qword ptr [rbp + 704], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00027_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n71_lit_integer_α
.Lx00027_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_integer_α:
                        mov              qword ptr [rbp + 720], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00028_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n72_to_α
.Lx00028_0:
                        .quad            5000
#-----------------------------------------------------------------------------------------------------------------------
n72_to_α:
                        mov              rdi, qword ptr [rbp + 704]                     # v
                        mov              rsi, qword ptr [rbp + 712]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 704], 3
                        mov              qword ptr [rbp + 712], rax
                        mov              rdi, qword ptr [rbp + 720]                     # v
                        mov              rsi, qword ptr [rbp + 728]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 720], 3
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 688], rax
.Lx00029_0:
                        mov              rax, qword ptr [rbp + 688]
                        mov              rcx, qword ptr [rbp + 728]
                        cmp              rax, rcx
                                                                                        jle   .Lx00029_240
                        add              rsp, 2192
                                                                                        jmp   n82_lit_integer_α
.Lx00029_240:
                        mov              qword ptr [rbp + 672], 3
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n73_assign_α
n72_to_β:
                        inc              qword ptr [rbp + 688]
                                                                                        jmp   .Lx00029_0
#-----------------------------------------------------------------------------------------------------------------------
n73_assign_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                                                                                        jmp   n74_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n74_bound_α:
                        mov              qword ptr [rbp + 736], rsp
                                                                                        jmp   n75_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n75_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n76_var_α
#-----------------------------------------------------------------------------------------------------------------------
n76_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n77_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n77_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 824], rax
                        .section         .rodata
.Lrkfn195:              .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn195]                         # fn
                        lea              rsi, [rbp + 816]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 104
                                                                                        je    n81_unmark_α
                                                                                        jmp   n78_subscript_α
n77_call_builtin_icon_β:
                                                                                        jmp   n81_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n78_subscript_α:
                        mov              rdi, qword ptr [rbp + 784]                     # base
                        mov              rsi, qword ptr [rbp + 792]                     # base
                        mov              rdx, qword ptr [rbp + 800]                     # idx
                        mov              rcx, qword ptr [rbp + 808]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n81_unmark_α
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n79_var_α
#-----------------------------------------------------------------------------------------------------------------------
n79_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n80_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n80_assign_var_α:
                        mov              rdi, qword ptr [rbp + 864]                     # var
                        mov              rsi, qword ptr [rbp + 872]                     # var
                        mov              rdx, qword ptr [rbp + 896]                     # val
                        mov              rcx, qword ptr [rbp + 904]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n81_unmark_α
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n81_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n81_unmark_α:
                        mov              rsp, qword ptr [rbp + 736]
                                                                                        jmp   n72_to_β
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_integer_α:
                        mov              qword ptr [rbp + 416], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00030_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n83_lit_integer_α
.Lx00030_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_integer_α:
                        mov              qword ptr [rbp + 432], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00031_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n84_to_α
.Lx00031_0:
                        .quad            5000
#-----------------------------------------------------------------------------------------------------------------------
n84_to_α:
                        mov              rdi, qword ptr [rbp + 416]                     # v
                        mov              rsi, qword ptr [rbp + 424]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 416], 3
                        mov              qword ptr [rbp + 424], rax
                        mov              rdi, qword ptr [rbp + 432]                     # v
                        mov              rsi, qword ptr [rbp + 440]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 432], 3
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 400], rax
.Lx00032_0:
                        mov              rax, qword ptr [rbp + 400]
                        mov              rcx, qword ptr [rbp + 440]
                        cmp              rax, rcx
                                                                                        jg    main_ω
                        mov              qword ptr [rbp + 384], 3
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n85_assign_α
n84_to_β:
                        inc              qword ptr [rbp + 400]
                                                                                        jmp   .Lx00032_0
#-----------------------------------------------------------------------------------------------------------------------
n85_assign_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                                                                                        jmp   n86_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n86_bound_α:
                        mov              qword ptr [rbp + 448], rsp
                                                                                        jmp   n87_var_α
#-----------------------------------------------------------------------------------------------------------------------
n87_var_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n88_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n88_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n89_var_α
#-----------------------------------------------------------------------------------------------------------------------
n89_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n90_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n90_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 600], rax
                        .section         .rodata
.Lrkfn216:              .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn216]                         # fn
                        lea              rsi, [rbp + 592]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 104
                                                                                        je    n97_unmark_α
                                                                                        jmp   n91_subscript_α
n90_call_builtin_icon_β:
                                                                                        jmp   n97_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n91_subscript_α:
                        mov              rdi, qword ptr [rbp + 560]                     # base
                        mov              rsi, qword ptr [rbp + 568]                     # base
                        mov              rdx, qword ptr [rbp + 576]                     # idx
                        mov              rcx, qword ptr [rbp + 584]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n97_unmark_α
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n92_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n92_deref_α:
                        mov              rdi, qword ptr [rbp + 640]                     # d
                        mov              rsi, qword ptr [rbp + 648]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n97_unmark_α
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n93_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n93_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 5
                                                                                        je    .Lx00033_1
                        cmp              eax, 3
                                                                                        jne   .Lx00033_0
                        mov              eax, dword ptr [rbp + 656]
                        cmp              eax, 3
                                                                                        jne   .Lx00033_0
.Lx00033_1:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n94_coerce_numeric_α
.Lx00033_0:
                        lea              rdi, [rbp + 48]                                # self
                        lea              rsi, [rbp + 656]                               # other
                        lea              rdx, [rbp + 528]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n94_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n94_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 656]
                        cmp              eax, 5
                                                                                        je    .Lx00034_1
                        cmp              eax, 3
                                                                                        jne   .Lx00034_0
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 3
                                                                                        jne   .Lx00034_0
.Lx00034_1:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n95_binop_α
.Lx00034_0:
                        lea              rdi, [rbp + 656]                               # self
                        lea              rsi, [rbp + 48]                                # other
                        lea              rdx, [rbp + 512]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n95_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n95_binop_α:
                        mov              eax, dword ptr [rbp + 528]
                        cmp              eax, 3
                                                                                        jne   .Lx00035_0
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 3
                                                                                        jne   .Lx00035_0
                        mov              rax, qword ptr [rbp + 536]
                        mov              rcx, qword ptr [rbp + 520]
                        add              rax, rcx
                        mov              qword ptr [rbp + 496], 3
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n96_assign_α
.Lx00035_0:
                        mov              rdi, qword ptr [rbp + 528]
                        mov              rsi, qword ptr [rbp + 536]
                        mov              rdx, qword ptr [rbp + 512]
                        mov              rcx, qword ptr [rbp + 520]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n97_unmark_α
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n96_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n96_assign_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                                                                                        jmp   n97_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n97_unmark_α:
                        mov              rsp, qword ptr [rbp + 448]
                                                                                        jmp   n84_to_β
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 2352]
                        mov              rcx, qword ptr [rbp + 2328]
                        mov              rbp, qword ptr [rbp + 2344]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        lea              rsp, [rbp + 2352]
                        mov              rcx, qword ptr [rbp + 2336]
                        mov              rbp, qword ptr [rbp + 2344]
                                                                                        jmp   rcx
                        .section         .note.GNU-stack,"",@progbits
