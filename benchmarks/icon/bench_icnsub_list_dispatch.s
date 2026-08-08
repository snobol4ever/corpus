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
                        sub              rsp, 720
                        mov              qword ptr [rsp + 696], rcx
                        mov              qword ptr [rsp + 704], rdx
                        mov              qword ptr [rsp + 712], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 688
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 0
                        mov              edx, 3
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:
                        sub              rsp, 2528
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
                        mov              qword ptr [rsp + 2400], 0
                        mov              qword ptr [rsp + 2408], 0
                        mov              qword ptr [rsp + 2416], 0
                        mov              qword ptr [rsp + 2424], 0
                        mov              qword ptr [rsp + 2432], 0
                        mov              qword ptr [rsp + 2440], 0
                        mov              qword ptr [rsp + 2448], 0
                        mov              qword ptr [rsp + 2456], 0
                        mov              qword ptr [rsp + 2464], 0
                        mov              qword ptr [rsp + 2472], 0
                        mov              qword ptr [rsp + 2480], 0
                        mov              qword ptr [rsp + 2488], 0
                        mov              qword ptr [rsp + 2496], 0
                        mov              qword ptr [rsp + 2504], 0
                        mov              qword ptr [rsp + 2512], 0
                        mov              qword ptr [rsp + 2520], 0
                        mov              qword ptr [rbp + 496], 3                       # result
                        mov              rax, qword ptr [rip + .Lx29_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n1_lit_integer_α
.Lx29_0:
                        .quad            11
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:
                        mov              qword ptr [rbp + 512], 3                       # result
                        mov              rax, qword ptr [rip + .Lx30_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n2_lit_integer_α
.Lx30_0:
                        .quad            22
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        mov              qword ptr [rbp + 528], 3                       # result
                        mov              rax, qword ptr [rip + .Lx31_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n3_lit_integer_α
.Lx31_0:
                        .quad            33
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:
                        mov              qword ptr [rbp + 544], 3                       # result
                        mov              rax, qword ptr [rip + .Lx32_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n4_lit_integer_α
.Lx32_0:
                        .quad            44
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:
                        mov              qword ptr [rbp + 560], 3                       # result
                        mov              rax, qword ptr [rip + .Lx33_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n5_lit_integer_α
.Lx33_0:
                        .quad            55
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:
                        mov              qword ptr [rbp + 576], 3                       # result
                        mov              rax, qword ptr [rip + .Lx34_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n6_lit_integer_α
.Lx34_0:
                        .quad            66
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:
                        mov              qword ptr [rbp + 592], 3                       # result
                        mov              rax, qword ptr [rip + .Lx35_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n7_lit_integer_α
.Lx35_0:
                        .quad            77
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:
                        mov              qword ptr [rbp + 608], 3                       # result
                        mov              rax, qword ptr [rip + .Lx36_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n8_make_list_α
.Lx36_0:
                        .quad            88
#-----------------------------------------------------------------------------------------------------------------------
n8_make_list_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 392], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 488], rax
                        lea              rdi, [rbp + 368]
                        mov              esi, 8
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n9_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n9_assign_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n10_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:
                        mov              qword ptr [rbp + 112], 3                       # result
                        mov              rax, qword ptr [rip + .Lx40_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n11_lit_integer_α
.Lx40_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:
                        mov              qword ptr [rbp + 128], 3                       # result
                        mov              rax, qword ptr [rip + .Lx41_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n12_to_α
.Lx41_0:
                        .quad            2000000
#-----------------------------------------------------------------------------------------------------------------------
n12_to_α:
                        mov              rdi, qword ptr [rbp + 112]                     # v
                        mov              rsi, qword ptr [rbp + 120]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 112], 3
                        mov              qword ptr [rbp + 120], rax
                        mov              rdi, qword ptr [rbp + 128]                     # v
                        mov              rsi, qword ptr [rbp + 136]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 128], 3
                        mov              qword ptr [rbp + 136], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 96], rax
.Lx43_0:
                        mov              rax, qword ptr [rbp + 96]
                        mov              rcx, qword ptr [rbp + 136]
                        cmp              rax, rcx
                                                                                        jle   .Lx43_240
                        add              rsp, 2528
                                                                                        jmp   n27_var_α
.Lx43_240:
                        mov              qword ptr [rbp + 80], 3
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n13_assign_α
n12_to_β:
                        inc              qword ptr [rbp + 96]
                                                                                        jmp   .Lx43_0
#-----------------------------------------------------------------------------------------------------------------------
n13_assign_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n14_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n14_bound_α:
                        mov              qword ptr [rbp + 144], rsp
                                                                                        jmp   n15_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n15_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 656]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n16_var_α
#-----------------------------------------------------------------------------------------------------------------------
n16_var_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n17_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_integer_α:
                        mov              qword ptr [rbp + 288], 3                       # result
                        mov              rax, qword ptr [rip + .Lx51_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n18_coerce_numeric_α
.Lx51_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n18_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 640]
                        cmp              eax, 5
                                                                                        je    .Lx53_1
                        cmp              eax, 3
                                                                                        jne   .Lx53_0
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 3
                                                                                        jne   .Lx53_0
.Lx53_1:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n19_binop_α
.Lx53_0:
                        lea              rdi, [rbp + 640]                               # self
                        lea              rsi, [rbp + 288]                               # other
                        lea              rdx, [rbp + 256]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n19_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n19_binop_α:
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        mov              rdx, qword ptr [rbp + 288]
                        mov              rcx, qword ptr [rbp + 296]
                        call             rt_mod@PLT
                        cmp              eax, 104
                                                                                        je    n26_unmark_α
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n20_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_integer_α:
                        mov              qword ptr [rbp + 304], 3                       # result
                        mov              rax, qword ptr [rip + .Lx55_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n21_coerce_numeric_α
.Lx55_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n21_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 240]
                        cmp              eax, 5
                                                                                        je    .Lx57_1
                        cmp              eax, 3
                                                                                        jne   .Lx57_0
                        mov              eax, dword ptr [rbp + 304]
                        cmp              eax, 3
                                                                                        jne   .Lx57_0
.Lx57_1:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n22_binop_α
.Lx57_0:
                        lea              rdi, [rbp + 240]                               # self
                        lea              rsi, [rbp + 304]                               # other
                        lea              rdx, [rbp + 224]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n22_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n22_binop_α:
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 3
                                                                                        jne   .Lx58_0
                        mov              rax, qword ptr [rbp + 232]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 208], 3
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n23_subscript_α
.Lx58_0:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 304]
                        mov              rcx, qword ptr [rbp + 312]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n26_unmark_α
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n23_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n23_subscript_α:
                        mov              rdi, qword ptr [rbp + 192]                     # base
                        mov              rsi, qword ptr [rbp + 200]                     # base
                        mov              rdx, qword ptr [rbp + 208]                     # idx
                        mov              rcx, qword ptr [rbp + 216]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n26_unmark_α
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n24_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n24_deref_α:
                        mov              rdi, qword ptr [rbp + 320]                     # d
                        mov              rsi, qword ptr [rbp + 328]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n26_unmark_α
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n25_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n25_assign_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n26_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n26_unmark_α:
                        mov              rsp, qword ptr [rbp + 144]
                                                                                        jmp   n12_to_β
#-----------------------------------------------------------------------------------------------------------------------
n27_var_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n28_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n28_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lrkfn67:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn67]                          # fn
                        lea              rsi, [rbp + 16]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 104
                                                                                        je    main_ω
                                                                                        jmp   main_γ
n28_call_builtin_icon_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 720]
                        mov              rcx, qword ptr [rbp + 696]
                        mov              rbp, qword ptr [rbp + 712]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        lea              rsp, [rbp + 720]
                        mov              rcx, qword ptr [rbp + 704]
                        mov              rbp, qword ptr [rbp + 712]
                                                                                        jmp   rcx
                        .section         .note.GNU-stack,"",@progbits
