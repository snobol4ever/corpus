                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_dofile_α
proc_dofile_α:
                        sub              rsp, 3136
                        mov              qword ptr [rsp + 3112], rcx
                        mov              qword ptr [rsp + 3120], rdx
                        mov              qword ptr [rsp + 3128], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 3104
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 2
                        mov              edx, 8
                        call             rt_icn_zframe_args_install@PLT
proc_dofile_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_make_list_α:
                        sub              rsp, 2672
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
                        mov              qword ptr [rsp + 2528], 0
                        mov              qword ptr [rsp + 2536], 0
                        mov              qword ptr [rsp + 2544], 0
                        mov              qword ptr [rsp + 2552], 0
                        mov              qword ptr [rsp + 2560], 0
                        mov              qword ptr [rsp + 2568], 0
                        mov              qword ptr [rsp + 2576], 0
                        mov              qword ptr [rsp + 2584], 0
                        mov              qword ptr [rsp + 2592], 0
                        mov              qword ptr [rsp + 2600], 0
                        mov              qword ptr [rsp + 2608], 0
                        mov              qword ptr [rsp + 2616], 0
                        mov              qword ptr [rsp + 2624], 0
                        mov              qword ptr [rsp + 2632], 0
                        mov              qword ptr [rsp + 2640], 0
                        mov              qword ptr [rsp + 2648], 0
                        mov              qword ptr [rsp + 2656], 0
                        mov              qword ptr [rsp + 2664], 0
                        lea              rdi, [rbp + 2960]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx
                                                                                        jmp   n1_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:
                        mov              rax, qword ptr [rbp + 2944]
                        mov              rdx, qword ptr [rbp + 2952]
                        mov              qword ptr [rbp + 3008], rax
                        mov              qword ptr [rbp + 3016], rdx
                                                                                        jmp   n2_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n2_make_list_α:
                        lea              rdi, [rbp + 2944]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 2928], rax
                        mov              qword ptr [rbp + 2936], rdx
                                                                                        jmp   n3_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:
                        mov              rax, qword ptr [rbp + 2928]
                        mov              rdx, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 2976], rax
                        mov              qword ptr [rbp + 2984], rdx
                                                                                        jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 2128], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 2136], rax
                                                                                        jmp   n5_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n5_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2104], rax
                        .section         .rodata
.Lrkfn147:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn147]                         # fn
                        lea              rsi, [rbp + 2096]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx00001_240
                        add              rsp, 2672
                                                                                        jmp   n42_var_α
.Lx00001_240:
                                                                                        jmp   n6_assign_α
n5_call_builtin_icon_β:
                        add              rsp, 2672
                                                                                        jmp   n42_var_α
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:
                        mov              rax, qword ptr [rbp + 2080]
                        mov              rdx, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 3040], rax
                        mov              qword ptr [rbp + 3048], rdx
                                                                                        jmp   n7_var_α
#-----------------------------------------------------------------------------------------------------------------------
n7_var_α:
                        mov              rax, qword ptr [rbp + 3040]
                        mov              qword ptr [rbp + 2912], rax
                        mov              rax, qword ptr [rbp + 3048]
                        mov              qword ptr [rbp + 2920], rax
                                                                                        jmp   n8_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n8_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 2912]                    # lo
                        mov              rsi, qword ptr [rbp + 2920]                    # hi
                        mov              rdx, r13                                       # sigma
                        mov              rcx, r14                                       # delta
                        mov              r8, r15                                        # Delta
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n9_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_charset_α:
                        mov              qword ptr [rbp + 2896], 2                      # result
                        mov              dword ptr [rbp + 2900], -1
                        mov              rax, qword ptr [rip + .Lx00002_0]
                        mov              qword ptr [rbp + 2904], rax
                                                                                        jmp   n10_scan_many_α
.Lx00002_0:
                        .quad            .Lx00002_0_s
.Lx00002_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n10_scan_many_α:
                        mov              eax, r14d
.Lx00003_0:
                        cmp              eax, r15d
                                                                                        jge   .Lx00003_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00003_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx00003_1
                        add              eax, 1
                                                                                        jmp   .Lx00003_0
.Lx00003_1:
                        cmp              eax, r14d
                                                                                        je    n12_lit_charset_α
                        mov              qword ptr [rbp + 2880], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 2888], rcx
                                                                                        jmp   n11_scan_tab_α
n10_scan_many_β:
                                                                                        jmp   n12_lit_charset_α
.Lx00003_2:
                        .quad            .Lx00003_2_s
.Lx00003_2_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n11_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 2888]
                        cmp              rax, 1
                                                                                        jge   .Lx00004_0
                        add              rax, r15
                        add              rax, 1
.Lx00004_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00004_239
                        add              rsp, 16
                                                                                        jmp   n12_lit_charset_α
.Lx00004_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00004_240
                        add              rsp, 16
                                                                                        jmp   n12_lit_charset_α
.Lx00004_240:
                        mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        call             rt_substr@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rbp + 2848], rax
                        mov              qword ptr [rbp + 2856], rdx
                                                                                        jmp   n12_lit_charset_α
n11_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n12_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_charset_α:
                        mov              qword ptr [rbp + 2832], 2                      # result
                        mov              dword ptr [rbp + 2836], -1
                        mov              rax, qword ptr [rip + .Lx00005_0]
                        mov              qword ptr [rbp + 2840], rax
                                                                                        jmp   n13_scan_many_α
.Lx00005_0:
                        .quad            .Lx00005_0_s
.Lx00005_0_s:
                        .string          "-0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n13_scan_many_α:
                        mov              eax, r14d
.Lx00006_0:
                        cmp              eax, r15d
                                                                                        jge   .Lx00006_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00006_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx00006_1
                        add              eax, 1
                                                                                        jmp   .Lx00006_0
.Lx00006_1:
                        cmp              eax, r14d
                                                                                        je    n17_lit_charset_α
                        mov              qword ptr [rbp + 2816], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 2824], rcx
                                                                                        jmp   n14_scan_tab_α
n13_scan_many_β:
                                                                                        jmp   n17_lit_charset_α
.Lx00006_2:
                        .quad            .Lx00006_2_s
.Lx00006_2_s:
                        .string          "-0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n14_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 2824]
                        cmp              rax, 1
                                                                                        jge   .Lx00007_0
                        add              rax, r15
                        add              rax, 1
.Lx00007_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00007_239
                        add              rsp, 16
                                                                                        jmp   n17_lit_charset_α
.Lx00007_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00007_240
                        add              rsp, 16
                                                                                        jmp   n17_lit_charset_α
.Lx00007_240:
                        mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        call             rt_substr@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx
                                                                                        jmp   n15_call_builtin_icon_α
n14_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n17_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n15_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2784]
                        mov              qword ptr [rbp + 2752], rax
                        mov              rax, qword ptr [rbp + 2792]
                        mov              qword ptr [rbp + 2760], rax
                        .section         .rodata
.Lrkfn164:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn164]                         # fn
                        lea              rsi, [rbp + 2752]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2736], rax
                        mov              qword ptr [rbp + 2744], rdx
                        cmp              eax, 104
                                                                                        je    n17_lit_charset_α
                                                                                        jmp   n16_assign_α
n15_call_builtin_icon_β:
                                                                                        jmp   n17_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n16_assign_α:
                        mov              rax, qword ptr [rbp + 2736]
                        mov              rdx, qword ptr [rbp + 2744]
                        mov              qword ptr [rbp + 3056], rax
                        mov              qword ptr [rbp + 3064], rdx
                                                                                        jmp   n17_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_charset_α:
                        mov              qword ptr [rbp + 2720], 2                      # result
                        mov              dword ptr [rbp + 2724], -1
                        mov              rax, qword ptr [rip + .Lx00008_0]
                        mov              qword ptr [rbp + 2728], rax
                                                                                        jmp   n18_scan_many_α
.Lx00008_0:
                        .quad            .Lx00008_0_s
.Lx00008_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n18_scan_many_α:
                        mov              eax, r14d
.Lx00009_0:
                        cmp              eax, r15d
                                                                                        jge   .Lx00009_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00009_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx00009_1
                        add              eax, 1
                                                                                        jmp   .Lx00009_0
.Lx00009_1:
                        cmp              eax, r14d
                                                                                        je    n20_lit_integer_α
                        mov              qword ptr [rbp + 2704], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 2712], rcx
                                                                                        jmp   n19_scan_tab_α
n18_scan_many_β:
                                                                                        jmp   n20_lit_integer_α
.Lx00009_2:
                        .quad            .Lx00009_2_s
.Lx00009_2_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n19_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 2712]
                        cmp              rax, 1
                                                                                        jge   .Lx00010_0
                        add              rax, r15
                        add              rax, 1
.Lx00010_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00010_239
                        add              rsp, 16
                                                                                        jmp   n20_lit_integer_α
.Lx00010_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00010_240
                        add              rsp, 16
                                                                                        jmp   n20_lit_integer_α
.Lx00010_240:
                        mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        call             rt_substr@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                                                                                        jmp   n20_lit_integer_α
n19_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n20_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_integer_α:
                        mov              qword ptr [rbp + 2656], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00011_0]
                        mov              qword ptr [rbp + 2664], rax
                                                                                        jmp   n21_scan_tab_α
.Lx00011_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n21_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx00012_0
                        add              rax, r15
                        add              rax, 1
.Lx00012_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00012_239
                        add              rsp, 16
                                                                                        jmp   n23_disjunction_α
.Lx00012_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00012_240
                        add              rsp, 16
                                                                                        jmp   n23_disjunction_α
.Lx00012_240:
                        mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        call             rt_substr@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx
                                                                                        jmp   n22_assign_α
n21_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n23_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n22_assign_α:
                        mov              rax, qword ptr [rbp + 2624]
                        mov              rdx, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 3072], rax
                        mov              qword ptr [rbp + 3080], rdx
                                                                                        jmp   n23_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n23_disjunction_α:
                        mov              qword ptr [rbp + 2240], 0
                        mov              qword ptr [rbp + 2248], 0
                        mov              dword ptr [rbp + 2256], 0
                                                                                        jmp   n36_var_α
n23_disjunction_as:
                        mov              eax, dword ptr [rbp + 2256]
                        cmp              eax, 0
                                                                                        jne   .Lx00013_0
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n24_conjunction_α
.Lx00013_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00013_1
                        mov              rax, qword ptr [rbp + 2352]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n24_conjunction_α
.Lx00013_1:
                                                                                        jmp   n24_conjunction_α
n23_disjunction_β:
                        mov              eax, dword ptr [rbp + 2256]
                        cmp              eax, 0
                                                                                        je    n41_scan_α
                                                                                        jmp   n26_disjunction_β
n23_disjunction_af:
                        add              dword ptr [rbp + 2256], 1
                        mov              eax, dword ptr [rbp + 2256]
                        cmp              eax, 1
                                                                                        je    n26_disjunction_α
                                                                                        jmp   n41_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n24_conjunction_α:
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 2232], rax
                                                                                        jmp   n25_scan_α
n24_conjunction_β:
                                                                                        jmp   n41_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n25_scan_α:
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 2200], rax
                        lea              rdi, [rbp + 2160]                              # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 2160]
                        mov              r14, qword ptr [rbp + 2168]
                        mov              r15, qword ptr [rbp + 2176]
                                                                                        jmp   n4_var_α
n25_scan_β:
                                                                                        jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n26_disjunction_α:
                        mov              qword ptr [rbp + 2352], 0
                        mov              qword ptr [rbp + 2360], 0
                        mov              dword ptr [rbp + 2368], 0
                                                                                        jmp   n30_var_α
n26_disjunction_as:
                        mov              eax, dword ptr [rbp + 2368]
                        cmp              eax, 0
                                                                                        jne   .Lx00014_0
                        mov              rax, qword ptr [rbp + 2384]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 2392]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n23_disjunction_as
.Lx00014_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00014_1
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n23_disjunction_as
.Lx00014_1:
                                                                                        jmp   n23_disjunction_as
n26_disjunction_β:
                        mov              eax, dword ptr [rbp + 2368]
                        cmp              eax, 0
                                                                                        je    n41_scan_α
                                                                                        jmp   n41_scan_α
n26_disjunction_af:
                        add              dword ptr [rbp + 2368], 1
                        mov              eax, dword ptr [rbp + 2368]
                        cmp              eax, 1
                                                                                        je    n27_var_α
                                                                                        jmp   n41_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n27_var_α:
                        mov              rax, qword ptr [rbp + 2976]
                        mov              qword ptr [rbp + 2592], rax
                        mov              rax, qword ptr [rbp + 2984]
                        mov              qword ptr [rbp + 2600], rax
                                                                                        jmp   n28_var_α
n27_var_β:
                                                                                        jmp   n41_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n28_var_α:
                        mov              rax, qword ptr [rbp + 3056]
                        mov              qword ptr [rbp + 2608], rax
                        mov              rax, qword ptr [rbp + 3064]
                        mov              qword ptr [rbp + 2616], rax
                                                                                        jmp   n29_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n29_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 2560], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 2568], rax
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 2544], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 2552], rax
                        .section         .rodata
.Lrkfn187:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn187]                         # fn
                        lea              rsi, [rbp + 2544]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx
                        cmp              eax, 104
                                                                                        je    n41_scan_α
                                                                                        jmp   n26_disjunction_as
n29_call_builtin_icon_β:
                                                                                        jmp   n41_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n30_var_α:
                        mov              rax, qword ptr [rbp + 3072]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 3080]
                        mov              qword ptr [rbp + 2504], rax
                                                                                        jmp   n31_lit_string_α
n30_var_β:
                                                                                        jmp   n26_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:
                        mov              qword ptr [rbp + 2512], 2                      # result
                        mov              dword ptr [rbp + 2516], 7
                        mov              rax, qword ptr [rip + .Lx00015_0]
                        mov              qword ptr [rbp + 2520], rax
                                                                                        jmp   n32_binop_test_α
.Lx00015_0:
                        .quad            .Lx00015_0_s
.Lx00015_0_s:
                        .string          "nothing"
#-----------------------------------------------------------------------------------------------------------------------
n32_binop_test_α:
                        mov              rdi, qword ptr [rbp + 3072]                    # lhs
                        mov              rsi, qword ptr [rbp + 3080]                    # lhs
                        mov              rdx, qword ptr [rbp + 2512]                    # rhs
                        mov              rcx, qword ptr [rbp + 2520]                    # rhs
                        mov              r8d, 16                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n26_disjunction_af
                        mov              rdi, qword ptr [rbp + 2512]                    # d
                        mov              rsi, qword ptr [rbp + 2520]                    # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                                                                                        jmp   n33_var_α
#-----------------------------------------------------------------------------------------------------------------------
n33_var_α:
                        mov              rax, qword ptr [rbp + 3008]
                        mov              qword ptr [rbp + 2448], rax
                        mov              rax, qword ptr [rbp + 3016]
                        mov              qword ptr [rbp + 2456], rax
                                                                                        jmp   n34_var_α
#-----------------------------------------------------------------------------------------------------------------------
n34_var_α:
                        mov              rax, qword ptr [rbp + 3056]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 3064]
                        mov              qword ptr [rbp + 2472], rax
                                                                                        jmp   n35_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n35_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2464]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2472]
                        mov              qword ptr [rbp + 2424], rax
                        mov              rax, qword ptr [rbp + 2448]
                        mov              qword ptr [rbp + 2400], rax
                        mov              rax, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 2408], rax
                        .section         .rodata
.Lrkfn197:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn197]                         # fn
                        lea              rsi, [rbp + 2400]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx
                        cmp              eax, 104
                                                                                        je    n41_scan_α
                                                                                        jmp   n26_disjunction_as
n35_call_builtin_icon_β:
                                                                                        jmp   n41_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n36_var_α:
                        mov              rax, qword ptr [rbp + 3072]
                        mov              qword ptr [rbp + 2320], rax
                        mov              rax, qword ptr [rbp + 3080]
                        mov              qword ptr [rbp + 2328], rax
                                                                                        jmp   n37_lit_string_α
n36_var_β:
                                                                                        jmp   n23_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:
                        mov              qword ptr [rbp + 2336], 2                      # result
                        mov              dword ptr [rbp + 2340], 8
                        mov              rax, qword ptr [rip + .Lx00016_0]
                        mov              qword ptr [rbp + 2344], rax
                                                                                        jmp   n38_binop_test_α
.Lx00016_0:
                        .quad            .Lx00016_0_s
.Lx00016_0_s:
                        .string          "overhead"
#-----------------------------------------------------------------------------------------------------------------------
n38_binop_test_α:
                        mov              rdi, qword ptr [rbp + 3072]                    # lhs
                        mov              rsi, qword ptr [rbp + 3080]                    # lhs
                        mov              rdx, qword ptr [rbp + 2336]                    # rhs
                        mov              rcx, qword ptr [rbp + 2344]                    # rhs
                        mov              r8d, 16                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n23_disjunction_af
                        mov              rdi, qword ptr [rbp + 2336]                    # d
                        mov              rsi, qword ptr [rbp + 2344]                    # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                                                                                        jmp   n39_var_α
#-----------------------------------------------------------------------------------------------------------------------
n39_var_α:
                        mov              rax, qword ptr [rbp + 3056]
                        mov              qword ptr [rbp + 2288], rax
                        mov              rax, qword ptr [rbp + 3064]
                        mov              qword ptr [rbp + 2296], rax
                                                                                        jmp   n40_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n40_assign_α:
                        mov              rax, qword ptr [rbp + 2288]
                        mov              rdx, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 3024], rax
                        mov              qword ptr [rbp + 3032], rdx
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                                                                                        jmp   n23_disjunction_as
n40_assign_β:
                                                                                        jmp   n41_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n41_scan_α:
                        lea              rdi, [rbp + 2160]                              # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 2160]
                        mov              r14, qword ptr [rbp + 2168]
                        mov              r15, qword ptr [rbp + 2176]
                                                                                        jmp   n4_var_α
n41_scan_β:
                                                                                        jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n42_var_α:
                        mov              rax, qword ptr [rbp + 2976]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2984]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n43_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n43_unop_α:
                        mov              rdi, qword ptr [rbp + 2976]                    # lo
                        mov              rsi, qword ptr [rbp + 2984]                    # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                                                                                        jmp   n44_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n44_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 2024], rax
                        .section         .rodata
.Lrkfn211:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn211]                         # fn
                        lea              rsi, [rbp + 2016]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                        cmp              eax, 104
                                                                                        je    n45_var_α
                                                                                        jmp   n45_var_α
n44_call_builtin_icon_β:
                                                                                        jmp   n45_var_α
#-----------------------------------------------------------------------------------------------------------------------
n45_var_α:
                        mov              rax, qword ptr [rbp + 3024]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 3032]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n46_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_integer_α:
                        mov              qword ptr [rbp + 1984], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00017_0]
                        mov              qword ptr [rbp + 1992], rax
                                                                                        jmp   n47_call_builtin_icon_α
.Lx00017_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n47_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 1944], rax
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 1928], rax
                        .section         .rodata
.Lrkfn216:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn216]                         # fn
                        lea              rsi, [rbp + 1920]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                        cmp              eax, 104
                                                                                        je    n49_lit_integer_α
                                                                                        jmp   n48_call_builtin_icon_α
n47_call_builtin_icon_β:
                                                                                        jmp   n49_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n48_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1904]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 1880], rax
                        .section         .rodata
.Lrkfn218:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn218]                         # fn
                        lea              rsi, [rbp + 1872]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                        cmp              eax, 104
                                                                                        je    n49_lit_integer_α
                                                                                        jmp   n49_lit_integer_α
n48_call_builtin_icon_β:
                                                                                        jmp   n49_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_integer_α:
                        mov              qword ptr [rbp + 1840], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00018_0]
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   n50_assign_α
.Lx00018_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n50_assign_α:
                        mov              rax, qword ptr [rbp + 1840]
                        mov              rdx, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx
                                                                                        jmp   n51_var_α
#-----------------------------------------------------------------------------------------------------------------------
n51_var_α:
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n52_var_α
#-----------------------------------------------------------------------------------------------------------------------
n52_var_α:
                        mov              rax, qword ptr [rbp + 3008]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 3016]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n53_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n53_iterate_α:
                        mov              qword ptr [rbp + 1792], 0
.Lx00019_0:
                        mov              rdi, qword ptr [rbp + 1808]                    # obj
                        mov              rsi, qword ptr [rbp + 1816]                    # obj
                        mov              rdx, qword ptr [rbp + 1792]                    # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                        cmp              rax, 99
                                                                                        je    n61_var_α
                                                                                        jmp   n54_lit_integer_α
n53_iterate_β:
                        inc              qword ptr [rbp + 1792]
                                                                                        jmp   .Lx00019_0
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_integer_α:
                        mov              qword ptr [rbp + 1824], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00020_0]
                        mov              qword ptr [rbp + 1832], rax
                                                                                        jmp   n55_coerce_numeric_α
.Lx00020_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n55_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 1776]
                        cmp              eax, 5
                                                                                        je    .Lx00021_1
                        cmp              eax, 3
                                                                                        jne   .Lx00021_0
                        mov              eax, dword ptr [rbp + 1824]
                        cmp              eax, 3
                                                                                        jne   .Lx00021_0
.Lx00021_1:
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n56_binop_α
.Lx00021_0:
                        lea              rdi, [rbp + 1776]                              # self
                        lea              rsi, [rbp + 1824]                              # other
                        lea              rdx, [rbp + 1760]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n56_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n56_binop_α:
                        mov              rdi, qword ptr [rbp + 1760]
                        mov              rsi, qword ptr [rbp + 1768]
                        mov              rdx, qword ptr [rbp + 1824]
                        mov              rcx, qword ptr [rbp + 1832]
                        call             rt_pow@PLT
                        cmp              eax, 104
                                                                                        je    n61_var_α
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                                                                                        jmp   n57_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n57_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 2960]
                        cmp              eax, 5
                                                                                        je    .Lx00022_1
                        cmp              eax, 3
                                                                                        jne   .Lx00022_0
                        mov              eax, dword ptr [rbp + 1744]
                        cmp              eax, 3
                                                                                        jne   .Lx00022_0
.Lx00022_1:
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 1720], rax
                                                                                        jmp   n58_coerce_numeric_α
.Lx00022_0:
                        lea              rdi, [rbp + 2960]                              # self
                        lea              rsi, [rbp + 1744]                              # other
                        lea              rdx, [rbp + 1712]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n58_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n58_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 1744]
                        cmp              eax, 5
                                                                                        je    .Lx00023_1
                        cmp              eax, 3
                                                                                        jne   .Lx00023_0
                        mov              eax, dword ptr [rbp + 2960]
                        cmp              eax, 3
                                                                                        jne   .Lx00023_0
.Lx00023_1:
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1704], rax
                                                                                        jmp   n59_binop_α
.Lx00023_0:
                        lea              rdi, [rbp + 1744]                              # self
                        lea              rsi, [rbp + 2960]                              # other
                        lea              rdx, [rbp + 1696]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n59_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n59_binop_α:
                        mov              eax, dword ptr [rbp + 1712]
                        cmp              eax, 3
                                                                                        jne   .Lx00024_0
                        mov              eax, dword ptr [rbp + 1696]
                        cmp              eax, 3
                                                                                        jne   .Lx00024_0
                        mov              rax, qword ptr [rbp + 1720]
                        mov              rcx, qword ptr [rbp + 1704]
                        add              rax, rcx
                        mov              qword ptr [rbp + 1680], 3
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n60_assign_α
.Lx00024_0:
                        mov              rdi, qword ptr [rbp + 1712]
                        mov              rsi, qword ptr [rbp + 1720]
                        mov              rdx, qword ptr [rbp + 1696]
                        mov              rcx, qword ptr [rbp + 1704]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n61_var_α
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                                                                                        jmp   n60_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n60_assign_α:
                        mov              rax, qword ptr [rbp + 1680]
                        mov              rdx, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx
                                                                                        jmp   n53_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n61_var_α:
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 1624], rax
                                                                                        jmp   n62_var_α
#-----------------------------------------------------------------------------------------------------------------------
n62_var_α:
                        mov              rax, qword ptr [rbp + 3008]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 3016]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n63_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n63_unop_α:
                        mov              rdi, qword ptr [rbp + 3008]                    # lo
                        mov              rsi, qword ptr [rbp + 3016]                    # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                                                                                        jmp   n64_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n64_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 2960]
                        cmp              eax, 5
                                                                                        je    .Lx00025_1
                        cmp              eax, 3
                                                                                        jne   .Lx00025_0
                        mov              eax, dword ptr [rbp + 1632]
                        cmp              eax, 3
                                                                                        jne   .Lx00025_0
.Lx00025_1:
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 1608], rax
                                                                                        jmp   n65_coerce_numeric_α
.Lx00025_0:
                        lea              rdi, [rbp + 2960]                              # self
                        lea              rsi, [rbp + 1632]                              # other
                        lea              rdx, [rbp + 1600]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n65_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n65_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 1632]
                        cmp              eax, 5
                                                                                        je    .Lx00026_1
                        cmp              eax, 3
                                                                                        jne   .Lx00026_0
                        mov              eax, dword ptr [rbp + 2960]
                        cmp              eax, 3
                                                                                        jne   .Lx00026_0
.Lx00026_1:
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1592], rax
                                                                                        jmp   n66_binop_α
.Lx00026_0:
                        lea              rdi, [rbp + 1632]                              # self
                        lea              rsi, [rbp + 2960]                              # other
                        lea              rdx, [rbp + 1584]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n66_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n66_binop_α:
                        mov              rdi, qword ptr [rbp + 1600]
                        mov              rsi, qword ptr [rbp + 1608]
                        mov              rdx, qword ptr [rbp + 1584]
                        mov              rcx, qword ptr [rbp + 1592]
                        call             rt_div@PLT
                        cmp              eax, 104
                                                                                        je    n73_var_α
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                                                                                        jmp   n67_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n67_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1544], rax
                        .section         .rodata
.Lrkfn248:              .string          "sqrt"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn248]                         # fn
                        lea              rsi, [rbp + 1536]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                        cmp              eax, 104
                                                                                        je    n73_var_α
                                                                                        jmp   n68_lit_real_α
n67_call_builtin_icon_β:
                                                                                        jmp   n73_var_α
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_real_α:
                        mov              qword ptr [rbp + 1664], 5                      # result
                        mov              rax, qword ptr [rip + .Lx00027_0]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n69_coerce_numeric_α
.Lx00027_0:
                        .quad            4602678819172646912
#-----------------------------------------------------------------------------------------------------------------------
n69_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 1520]
                        cmp              eax, 5
                                                                                        je    .Lx00028_1
                        cmp              eax, 3
                                                                                        jne   .Lx00028_0
                        mov              eax, dword ptr [rbp + 1664]
                        cmp              eax, 3
                                                                                        jne   .Lx00028_0
.Lx00028_1:
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n70_binop_α
.Lx00028_0:
                        lea              rdi, [rbp + 1520]                              # self
                        lea              rsi, [rbp + 1664]                              # other
                        lea              rdx, [rbp + 1504]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n70_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n70_binop_α:
                        mov              rdi, qword ptr [rbp + 1504]
                        mov              rsi, qword ptr [rbp + 1512]
                        mov              rdx, qword ptr [rbp + 1664]
                        mov              rcx, qword ptr [rbp + 1672]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n73_var_α
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                                                                                        jmp   n71_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n71_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1464], rax
                        .section         .rodata
.Lrkfn254:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn254]                         # fn
                        lea              rsi, [rbp + 1456]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                        cmp              eax, 104
                                                                                        je    n73_var_α
                                                                                        jmp   n72_assign_α
n71_call_builtin_icon_β:
                                                                                        jmp   n73_var_α
#-----------------------------------------------------------------------------------------------------------------------
n72_assign_α:
                        mov              rax, qword ptr [rbp + 1440]
                        mov              rdx, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx
                                                                                        jmp   n73_var_α
#-----------------------------------------------------------------------------------------------------------------------
n73_var_α:
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n74_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_integer_α:
                        mov              qword ptr [rbp + 1424], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00029_0]
                        mov              qword ptr [rbp + 1432], rax
                                                                                        jmp   n75_call_builtin_icon_α
.Lx00029_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n75_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1384], rax
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1368], rax
                        .section         .rodata
.Lrkfn260:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn260]                         # fn
                        lea              rsi, [rbp + 1360]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                        cmp              eax, 104
                                                                                        je    n77_var_α
                                                                                        jmp   n76_call_builtin_icon_α
n75_call_builtin_icon_β:
                                                                                        jmp   n77_var_α
#-----------------------------------------------------------------------------------------------------------------------
n76_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1320], rax
                        .section         .rodata
.Lrkfn262:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn262]                         # fn
                        lea              rsi, [rbp + 1312]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        cmp              eax, 104
                                                                                        je    n77_var_α
                                                                                        jmp   n77_var_α
n76_call_builtin_icon_β:
                                                                                        jmp   n77_var_α
#-----------------------------------------------------------------------------------------------------------------------
n77_var_α:
                        mov              rax, qword ptr [rbp + 2976]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 2984]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n78_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n78_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1256], rax
                        .section         .rodata
.Lrkfn266:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn266]                         # fn
                        lea              rsi, [rbp + 1248]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        cmp              eax, 104
                                                                                        je    n80_var_ref_α
                                                                                        jmp   n79_assign_α
n78_call_builtin_icon_β:
                                                                                        jmp   n80_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n79_assign_α:
                        mov              rax, qword ptr [rbp + 1232]
                        mov              rdx, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 2976], rax
                        mov              qword ptr [rbp + 2984], rdx
                                                                                        jmp   n80_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n80_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2976]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n81_var_α
#-----------------------------------------------------------------------------------------------------------------------
n81_var_α:
                        mov              rax, qword ptr [rbp + 2976]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 2984]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n82_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n82_unop_α:
                        mov              rdi, qword ptr [rbp + 2976]                    # lo
                        mov              rsi, qword ptr [rbp + 2984]                    # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n83_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_integer_α:
                        mov              qword ptr [rbp + 1168], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00030_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n84_coerce_numeric_α
.Lx00030_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n84_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 1136]
                        cmp              eax, 5
                                                                                        je    .Lx00031_1
                        cmp              eax, 3
                                                                                        jne   .Lx00031_0
                        mov              eax, dword ptr [rbp + 1168]
                        cmp              eax, 3
                                                                                        jne   .Lx00031_0
.Lx00031_1:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n85_binop_α
.Lx00031_0:
                        lea              rdi, [rbp + 1136]                              # self
                        lea              rsi, [rbp + 1168]                              # other
                        lea              rdx, [rbp + 1120]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n85_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n85_binop_α:
                        mov              rdi, qword ptr [rbp + 1120]
                        mov              rsi, qword ptr [rbp + 1128]
                        mov              rdx, qword ptr [rbp + 1168]
                        mov              rcx, qword ptr [rbp + 1176]
                        call             rt_div@PLT
                        cmp              eax, 104
                                                                                        je    n92_var_α
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   n86_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_integer_α:
                        mov              qword ptr [rbp + 1184], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00032_0]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n87_coerce_numeric_α
.Lx00032_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n87_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 1104]
                        cmp              eax, 5
                                                                                        je    .Lx00033_1
                        cmp              eax, 3
                                                                                        jne   .Lx00033_0
                        mov              eax, dword ptr [rbp + 1184]
                        cmp              eax, 3
                                                                                        jne   .Lx00033_0
.Lx00033_1:
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n88_binop_α
.Lx00033_0:
                        lea              rdi, [rbp + 1104]                              # self
                        lea              rsi, [rbp + 1184]                              # other
                        lea              rdx, [rbp + 1088]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n88_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n88_binop_α:
                        mov              eax, dword ptr [rbp + 1088]
                        cmp              eax, 3
                                                                                        jne   .Lx00034_0
                        mov              rax, qword ptr [rbp + 1096]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 1072], 3
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n89_subscript_α
.Lx00034_0:
                        mov              rdi, qword ptr [rbp + 1088]
                        mov              rsi, qword ptr [rbp + 1096]
                        mov              rdx, qword ptr [rbp + 1184]
                        mov              rcx, qword ptr [rbp + 1192]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n92_var_α
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   n89_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n89_subscript_α:
                        mov              rdi, qword ptr [rbp + 1056]                    # base
                        mov              rsi, qword ptr [rbp + 1064]                    # base
                        mov              rdx, qword ptr [rbp + 1072]                    # idx
                        mov              rcx, qword ptr [rbp + 1080]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n92_var_α
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                                                                                        jmp   n90_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n90_deref_α:
                        mov              rdi, qword ptr [rbp + 1200]                    # d
                        mov              rsi, qword ptr [rbp + 1208]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n92_var_α
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                                                                                        jmp   n91_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n91_assign_α:
                        mov              rax, qword ptr [rbp + 1216]
                        mov              rdx, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx
                                                                                        jmp   n92_var_α
#-----------------------------------------------------------------------------------------------------------------------
n92_var_α:
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n93_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_integer_α:
                        mov              qword ptr [rbp + 1040], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00035_0]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n94_call_builtin_icon_α
.Lx00035_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n94_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1000], rax
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 984], rax
                        .section         .rodata
.Lrkfn288:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn288]                         # fn
                        lea              rsi, [rbp + 976]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 104
                                                                                        je    n96_lit_real_α
                                                                                        jmp   n95_call_builtin_icon_α
n94_call_builtin_icon_β:
                                                                                        jmp   n96_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n95_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 936], rax
                        .section         .rodata
.Lrkfn290:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn290]                         # fn
                        lea              rsi, [rbp + 928]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 104
                                                                                        je    n96_lit_real_α
                                                                                        jmp   n96_lit_real_α
n95_call_builtin_icon_β:
                                                                                        jmp   n96_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_real_α:
                        mov              qword ptr [rbp + 896], 5                       # result
                        mov              rax, qword ptr [rip + .Lx00036_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n97_assign_α
.Lx00036_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n97_assign_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              rdx, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx
                                                                                        jmp   n98_var_α
#-----------------------------------------------------------------------------------------------------------------------
n98_var_α:
                        mov              rax, qword ptr [rbp + 2976]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 2984]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n99_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n99_iterate_α:
                        mov              qword ptr [rbp + 592], 0
.Lx00037_0:
                        mov              rdi, qword ptr [rbp + 608]                     # obj
                        mov              rsi, qword ptr [rbp + 616]                     # obj
                        mov              rdx, qword ptr [rbp + 592]                     # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              rax, 99
                                                                                        je    n00038_keyword_icon_α
                                                                                        jmp   n00039_assign_α
n99_iterate_β:
                        inc              qword ptr [rbp + 592]
                                                                                        jmp   .Lx00037_0
#-----------------------------------------------------------------------------------------------------------------------
n00039_assign_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 2992], rax
                        mov              qword ptr [rbp + 3000], rdx
                                                                                        jmp   n00040_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00040_bound_α:
                        mov              qword ptr [rbp + 624], rsp
                                                                                        jmp   n00041_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00041_var_α:
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n00042_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00042_disjunction_α:
                        mov              qword ptr [rbp + 736], 0
                        mov              qword ptr [rbp + 744], 0
                        mov              dword ptr [rbp + 752], 0
                                                                                        jmp   n00043_var_α
n00042_disjunction_as:
                        mov              eax, dword ptr [rbp + 752]
                        cmp              eax, 0
                                                                                        jne   .Lx00044_0
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n00045_coerce_numeric_α
.Lx00044_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00044_1
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n00045_coerce_numeric_α
.Lx00044_1:
                                                                                        jmp   n00045_coerce_numeric_α
n00042_disjunction_β:
                        mov              eax, dword ptr [rbp + 752]
                        cmp              eax, 0
                                                                                        je    n00046_unmark_α
                                                                                        jmp   n00046_unmark_α
n00042_disjunction_af:
                        add              dword ptr [rbp + 752], 1
                        mov              eax, dword ptr [rbp + 752]
                        cmp              eax, 1
                                                                                        je    n00047_var_α
                                                                                        jmp   n00046_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00045_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 2960]
                        cmp              eax, 5
                                                                                        je    .Lx00048_1
                        cmp              eax, 3
                                                                                        jne   .Lx00048_0
                        mov              eax, dword ptr [rbp + 736]
                        cmp              eax, 3
                                                                                        jne   .Lx00048_0
.Lx00048_1:
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n00049_coerce_numeric_α
.Lx00048_0:
                        lea              rdi, [rbp + 2960]                              # self
                        lea              rsi, [rbp + 736]                               # other
                        lea              rdx, [rbp + 704]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00049_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n00049_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 736]
                        cmp              eax, 5
                                                                                        je    .Lx00050_1
                        cmp              eax, 3
                                                                                        jne   .Lx00050_0
                        mov              eax, dword ptr [rbp + 2960]
                        cmp              eax, 3
                                                                                        jne   .Lx00050_0
.Lx00050_1:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n00051_binop_α
.Lx00050_0:
                        lea              rdi, [rbp + 736]                               # self
                        lea              rsi, [rbp + 2960]                              # other
                        lea              rdx, [rbp + 688]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00051_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00051_binop_α:
                        mov              eax, dword ptr [rbp + 704]
                        cmp              eax, 3
                                                                                        jne   .Lx00052_0
                        mov              eax, dword ptr [rbp + 688]
                        cmp              eax, 3
                                                                                        jne   .Lx00052_0
                        mov              rax, qword ptr [rbp + 712]
                        mov              rcx, qword ptr [rbp + 696]
                        add              rax, rcx
                        mov              qword ptr [rbp + 672], 3
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n00053_assign_α
.Lx00052_0:
                        mov              rdi, qword ptr [rbp + 704]
                        mov              rsi, qword ptr [rbp + 712]
                        mov              rdx, qword ptr [rbp + 688]
                        mov              rcx, qword ptr [rbp + 696]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n00046_unmark_α
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n00053_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00053_assign_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx
                                                                                        jmp   n00046_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00047_var_α:
                        mov              rax, qword ptr [rbp + 2992]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 3000]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n00054_call_builtin_icon_α
n00047_var_β:
                                                                                        jmp   n00046_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00054_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                        .section         .rodata
.Lrkfn313:              .string          "log"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn313]                         # fn
                        lea              rsi, [rbp + 848]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 104
                                                                                        je    n00046_unmark_α
                                                                                        jmp   n00042_disjunction_as
n00054_call_builtin_icon_β:
                                                                                        jmp   n00046_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00043_var_α:
                        mov              rax, qword ptr [rbp + 2992]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 3000]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n00055_lit_integer_α
n00043_var_β:
                                                                                        jmp   n00042_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00055_lit_integer_α:
                        mov              qword ptr [rbp + 816], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00056_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n00057_binop_test_α
.Lx00056_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00057_binop_test_α:
                        mov              eax, dword ptr [rbp + 2992]
                        cmp              eax, 112
                                                                                        je    .Lx00058_0
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 112
                                                                                        je    .Lx00058_0
                        mov              eax, dword ptr [rbp + 2992]
                        cmp              eax, 3
                                                                                        jne   .Lx00058_2
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 3
                                                                                        jne   .Lx00058_2
.Lx00058_1:
                        mov              rax, qword ptr [rbp + 3000]
                        mov              rcx, qword ptr [rbp + 824]
                        cmp              rax, rcx
                                                                                        jg    n00042_disjunction_af
                        mov              rcx, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 784], rcx
                        mov              rcx, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 792], rcx
                                                                                        jmp   n00059_lit_integer_α
.Lx00058_0:
                        mov              rdi, qword ptr [rbp + 2992]                    # a
                        mov              rsi, qword ptr [rbp + 3000]                    # a
                        mov              rdx, qword ptr [rbp + 816]                     # b
                        mov              rcx, qword ptr [rbp + 824]                     # b
                        mov              r8d, 6                                         # op
                        lea              r9, [rbp + 784]                                # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx00058_1
                        cmp              eax, 1
                                                                                        je    n00042_disjunction_af
                                                                                        jmp   n00059_lit_integer_α
.Lx00058_2:
                        mov              rdi, qword ptr [rbp + 2992]                    # lhs
                        mov              rsi, qword ptr [rbp + 3000]                    # lhs
                        mov              rdx, qword ptr [rbp + 816]                     # rhs
                        mov              rcx, qword ptr [rbp + 824]                     # rhs
                        mov              r8d, 6                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00042_disjunction_af
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n00059_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00059_lit_integer_α:
                        mov              qword ptr [rbp + 768], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00060_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n00042_disjunction_as
n00059_lit_integer_β:
                                                                                        jmp   n00046_unmark_α
.Lx00060_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00046_unmark_α:
                        mov              rsp, qword ptr [rbp + 624]
                                                                                        jmp   n99_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n00038_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx00061_0]                # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    n00062_var_α
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n00063_var_α
n00038_keyword_icon_β:
                                                                                        jmp   n00062_var_α
.Lx00061_0:
                        .quad            .Lx00061_0_s
.Lx00061_0_s:
                        .string          "&e"
#-----------------------------------------------------------------------------------------------------------------------
n00063_var_α:
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n00064_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00064_var_α:
                        mov              rax, qword ptr [rbp + 2976]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 2984]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n00065_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n00065_unop_α:
                        mov              rdi, qword ptr [rbp + 2976]                    # lo
                        mov              rsi, qword ptr [rbp + 2984]                    # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n00066_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n00066_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 2960]
                        cmp              eax, 5
                                                                                        je    .Lx00067_1
                        cmp              eax, 3
                                                                                        jne   .Lx00067_0
                        mov              eax, dword ptr [rbp + 528]
                        cmp              eax, 3
                                                                                        jne   .Lx00067_0
.Lx00067_1:
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n00068_coerce_numeric_α
.Lx00067_0:
                        lea              rdi, [rbp + 2960]                              # self
                        lea              rsi, [rbp + 528]                               # other
                        lea              rdx, [rbp + 496]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00068_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n00068_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 528]
                        cmp              eax, 5
                                                                                        je    .Lx00069_1
                        cmp              eax, 3
                                                                                        jne   .Lx00069_0
                        mov              eax, dword ptr [rbp + 2960]
                        cmp              eax, 3
                                                                                        jne   .Lx00069_0
.Lx00069_1:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n00070_binop_α
.Lx00069_0:
                        lea              rdi, [rbp + 528]                               # self
                        lea              rsi, [rbp + 2960]                              # other
                        lea              rdx, [rbp + 480]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00070_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00070_binop_α:
                        mov              rdi, qword ptr [rbp + 496]
                        mov              rsi, qword ptr [rbp + 504]
                        mov              rdx, qword ptr [rbp + 480]
                        mov              rcx, qword ptr [rbp + 488]
                        call             rt_div@PLT
                        cmp              eax, 104
                                                                                        je    n00062_var_α
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n00071_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n00071_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 432]
                        cmp              eax, 5
                                                                                        je    .Lx00072_1
                        cmp              eax, 3
                                                                                        jne   .Lx00072_0
                        mov              eax, dword ptr [rbp + 464]
                        cmp              eax, 3
                                                                                        jne   .Lx00072_0
.Lx00072_1:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n00073_coerce_numeric_α
.Lx00072_0:
                        lea              rdi, [rbp + 432]                               # self
                        lea              rsi, [rbp + 464]                               # other
                        lea              rdx, [rbp + 416]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00073_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n00073_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 464]
                        cmp              eax, 5
                                                                                        je    .Lx00074_1
                        cmp              eax, 3
                                                                                        jne   .Lx00074_0
                        mov              eax, dword ptr [rbp + 432]
                        cmp              eax, 3
                                                                                        jne   .Lx00074_0
.Lx00074_1:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n00075_binop_α
.Lx00074_0:
                        lea              rdi, [rbp + 464]                               # self
                        lea              rsi, [rbp + 432]                               # other
                        lea              rdx, [rbp + 400]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00075_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00075_binop_α:
                        mov              rdi, qword ptr [rbp + 416]
                        mov              rsi, qword ptr [rbp + 424]
                        mov              rdx, qword ptr [rbp + 400]
                        mov              rcx, qword ptr [rbp + 408]
                        call             rt_pow@PLT
                        cmp              eax, 104
                                                                                        je    n00062_var_α
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n00076_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n00076_lit_real_α:
                        mov              qword ptr [rbp + 560], 5                       # result
                        mov              rax, qword ptr [rip + .Lx00077_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00078_coerce_numeric_α
.Lx00077_0:
                        .quad            4602678819172646912
#-----------------------------------------------------------------------------------------------------------------------
n00078_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 5
                                                                                        je    .Lx00079_1
                        cmp              eax, 3
                                                                                        jne   .Lx00079_0
                        mov              eax, dword ptr [rbp + 560]
                        cmp              eax, 3
                                                                                        jne   .Lx00079_0
.Lx00079_1:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n00080_binop_α
.Lx00079_0:
                        lea              rdi, [rbp + 384]                               # self
                        lea              rsi, [rbp + 560]                               # other
                        lea              rdx, [rbp + 368]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00080_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00080_binop_α:
                        mov              rdi, qword ptr [rbp + 368]
                        mov              rsi, qword ptr [rbp + 376]
                        mov              rdx, qword ptr [rbp + 560]
                        mov              rcx, qword ptr [rbp + 568]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n00062_var_α
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n00081_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00081_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                        .section         .rodata
.Lrkfn342:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn342]                         # fn
                        lea              rsi, [rbp + 320]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 104
                                                                                        je    n00062_var_α
                                                                                        jmp   n00082_assign_α
n00081_call_builtin_icon_β:
                                                                                        jmp   n00062_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00082_assign_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx
                                                                                        jmp   n00062_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00062_var_α:
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n00083_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00083_lit_integer_α:
                        mov              qword ptr [rbp + 272], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00084_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n00085_call_builtin_icon_α
.Lx00084_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n00085_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 216], rax
                        .section         .rodata
.Lrkfn348:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn348]                         # fn
                        lea              rsi, [rbp + 208]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 104
                                                                                        je    n00086_lit_string_α
                                                                                        jmp   n00087_call_builtin_icon_α
n00085_call_builtin_icon_β:
                                                                                        jmp   n00086_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00087_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn350:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn350]                         # fn
                        lea              rsi, [rbp + 160]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 104
                                                                                        je    n00086_lit_string_α
                                                                                        jmp   n00086_lit_string_α
n00087_call_builtin_icon_β:
                                                                                        jmp   n00086_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00086_lit_string_α:
                        mov              qword ptr [rbp + 112], 2                       # result
                        mov              dword ptr [rbp + 116], 3
                        mov              rax, qword ptr [rip + .Lx00088_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n00089_var_α
.Lx00088_0:
                        .quad            .Lx00088_0_s
.Lx00088_0_s:
                        .string          "   "
#-----------------------------------------------------------------------------------------------------------------------
n00089_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n00090_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00090_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lrkfn355:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn355]                         # fn
                        lea              rsi, [rbp + 64]                                # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        je    n00091_return_α
                                                                                        jmp   n00091_return_α
n00090_call_builtin_icon_β:
                                                                                        jmp   n00091_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00091_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_dofile_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_dofile_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_dofile_β:
                                                                                        jmp   proc_dofile_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_dofile_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 3136]
                        mov              rcx, qword ptr [rbp + 3112]
                        mov              rbp, qword ptr [rbp + 3128]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_dofile_ω:
                        lea              rsp, [rbp + 3136]
                        mov              rcx, qword ptr [rbp + 3120]
                        mov              rbp, qword ptr [rbp + 3128]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_dofile_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             rdx
                        push             rsi
                        mov              r10, qword ptr [rsp + 0]
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [r10 + 0]                       # v
                        mov              rdx, qword ptr [r10 + 8]                       # v
                        call             rt_arg_stage@PLT
                        mov              r10, qword ptr [rsp + 8]
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [r10 + 0]                       # v
                        mov              rdx, qword ptr [r10 + 8]                       # v
                        call             rt_arg_stage@PLT
                        add              rsp, 16
                        lea              rcx, [rip + .Lx00092_2]
                        lea              rdx, [rip + .Lx00092_3]
                                                                                        jmp   proc_dofile_α
.Lx00092_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00092_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "dofile"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_dofile_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 3088
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_dofile_dcα]
                        call             rt_proc_set_dcfn@PLT
                        add              rsp, 8
                        ret
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              rdi, qword ptr [rsp]
                        add              rdi, 8
                        mov              esi, dword ptr [rsp + 8]
                        sub              esi, 1
                        call             rt_main_args_stage@PLT
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
                        sub              rsp, 768
                        mov              qword ptr [rsp + 744], rcx
                        mov              qword ptr [rsp + 752], rdx
                        mov              qword ptr [rsp + 760], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 736
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 1
                        mov              edx, 2
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00093_lit_string_α:
                        sub              rsp, 656
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
                        mov              qword ptr [rbp + 672], 2                       # result
                        mov              dword ptr [rbp + 676], 42
                        mov              rax, qword ptr [rip + .Lx00094_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n00095_call_builtin_icon_α
.Lx00094_0:
                        .quad            .Lx00094_0_s
.Lx00094_0_s:
                        .string          "  N ovhead rmserr median  gmean   filename"
#-----------------------------------------------------------------------------------------------------------------------
n00095_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 648], rax
                        .section         .rodata
.Lrkfn385:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn385]                         # fn
                        lea              rsi, [rbp + 640]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 104
                                                                                        je    n00096_disjunction_α
                                                                                        jmp   n00096_disjunction_α
n00095_call_builtin_icon_β:
                                                                                        jmp   n00096_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00096_disjunction_α:
                        mov              qword ptr [rbp + 32], 0
                        mov              qword ptr [rbp + 40], 0
                        mov              dword ptr [rbp + 48], 0
                                                                                        jmp   n00097_var_α
n00096_disjunction_as:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        jne   .Lx00098_0
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   main_γ
.Lx00098_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00098_1
                                                                                        jmp   main_γ
.Lx00098_1:
                                                                                        jmp   main_γ
n00096_disjunction_β:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        je    main_ω
                                                                                        jmp   n00099_goto_β
n00096_disjunction_af:
                        add              dword ptr [rbp + 48], 1
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 1
                                                                                        je    n00100_var_α
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n00100_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n00101_call_builtin_icon_α
n00100_var_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n00101_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rax
                        .section         .rodata
.Lrkfn391:              .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn391]                         # fn
                        lea              rsi, [rbp + 272]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 104
                                                                                        je    main_ω
                                                                                        jmp   n00102_assign_α
n00101_call_builtin_icon_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n00102_assign_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n00103_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00103_disjunction_α:
                        mov              qword ptr [rbp + 432], 0
                        mov              qword ptr [rbp + 440], 0
                        mov              dword ptr [rbp + 448], 0
                                                                                        jmp   n00104_var_α
n00103_disjunction_as:
                        mov              eax, dword ptr [rbp + 448]
                        cmp              eax, 0
                                                                                        jne   .Lx00105_0
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n00106_assign_α
.Lx00105_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00105_1
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n00106_assign_α
.Lx00105_1:
                                                                                        jmp   n00106_assign_α
n00103_disjunction_β:
                        mov              eax, dword ptr [rbp + 448]
                        cmp              eax, 0
                                                                                        je    n00103_disjunction_af
                                                                                        jmp   n00103_disjunction_af
n00103_disjunction_af:
                        add              dword ptr [rbp + 448], 1
                        mov              eax, dword ptr [rbp + 448]
                        cmp              eax, 1
                                                                                        je    n00107_lit_string_α
                                                                                        jmp   n00108_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00106_assign_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n00108_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00108_var_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n00109_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00109_var_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n00110_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00110_call_proc_staged_α:
                        lea              rsi, [rbp + 400]
                        lea              rdx, [rbp + 416]
                        call             proc_dofile_dcα
                                                                                        jmp   .Lx00111_2
.Lx00111_2:
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 104
                                                                                        je    n00100_var_α
                                                                                        jmp   n00112_conjunction_α
n00110_call_proc_staged_β:
                                                                                        jmp   n00100_var_α
.Lx00111_0:
                        .quad            .Lx00111_0_s
.Lx00111_0_s:
                        .string          "dofile"
#-----------------------------------------------------------------------------------------------------------------------
n00112_conjunction_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n00100_var_α
n00112_conjunction_β:
                                                                                        jmp   n00100_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00099_goto_α:
                                                                                        jmp   n00100_var_α
n00099_goto_β:
                                                                                        jmp   n00100_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00107_lit_string_α:
                        mov              qword ptr [rbp + 592], 2                       # result
                        mov              dword ptr [rbp + 596], 12
                        mov              rax, qword ptr [rip + .Lx00113_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n00114_var_α
n00107_lit_string_β:
                                                                                        jmp   n00103_disjunction_af
.Lx00113_0:
                        .quad            .Lx00113_0_s
.Lx00113_0_s:
                        .string          "cannot open "
#-----------------------------------------------------------------------------------------------------------------------
n00114_var_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n00115_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00115_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 552], rax
                        .section         .rodata
.Lrkfn408:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn408]                         # fn
                        lea              rsi, [rbp + 544]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 104
                                                                                        je    n00103_disjunction_af
                                                                                        jmp   n00103_disjunction_as
n00115_call_builtin_icon_β:
                                                                                        jmp   n00103_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00104_var_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n00116_call_builtin_icon_α
n00104_var_β:
                                                                                        jmp   n00103_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00116_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 488], rax
                        .section         .rodata
.Lrkfn412:              .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn412]                         # fn
                        lea              rsi, [rbp + 480]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 104
                                                                                        je    n00103_disjunction_af
                                                                                        jmp   n00103_disjunction_as
n00116_call_builtin_icon_β:
                                                                                        jmp   n00103_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00097_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n00117_unop_α
n00097_var_β:
                                                                                        jmp   n00096_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00117_unop_α:
                        mov              rdi, qword ptr [rbp + 16]                      # lo
                        mov              rsi, qword ptr [rbp + 24]                      # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n00118_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00118_lit_integer_α:
                        mov              qword ptr [rbp + 224], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00119_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n00120_binop_test_α
.Lx00119_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00120_binop_test_α:
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 112
                                                                                        je    .Lx00121_0
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 112
                                                                                        je    .Lx00121_0
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 3
                                                                                        jne   .Lx00121_2
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 3
                                                                                        jne   .Lx00121_2
.Lx00121_1:
                        mov              rax, qword ptr [rbp + 200]
                        mov              rcx, qword ptr [rbp + 232]
                        cmp              rax, rcx
                                                                                        jne   n00096_disjunction_af
                        mov              rcx, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 176], rcx
                        mov              rcx, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 184], rcx
                                                                                        jmp   n00122_keyword_icon_α
.Lx00121_0:
                        mov              rdi, qword ptr [rbp + 192]                     # a
                        mov              rsi, qword ptr [rbp + 200]                     # a
                        mov              rdx, qword ptr [rbp + 224]                     # b
                        mov              rcx, qword ptr [rbp + 232]                     # b
                        mov              r8d, 9                                         # op
                        lea              r9, [rbp + 176]                                # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx00121_1
                        cmp              eax, 1
                                                                                        je    n00096_disjunction_af
                                                                                        jmp   n00122_keyword_icon_α
.Lx00121_2:
                        mov              rdi, qword ptr [rbp + 192]                     # lhs
                        mov              rsi, qword ptr [rbp + 200]                     # lhs
                        mov              rdx, qword ptr [rbp + 224]                     # rhs
                        mov              rcx, qword ptr [rbp + 232]                     # rhs
                        mov              r8d, 9                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00096_disjunction_af
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n00122_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00122_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx00123_0]                # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    main_ω
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n00124_lit_string_α
n00122_keyword_icon_β:
                                                                                        jmp   main_ω
.Lx00123_0:
                        .quad            .Lx00123_0_s
.Lx00123_0_s:
                        .string          "&input"
#-----------------------------------------------------------------------------------------------------------------------
n00124_lit_string_α:
                        mov              qword ptr [rbp + 160], 2                       # result
                        mov              dword ptr [rbp + 164], 5
                        mov              rax, qword ptr [rip + .Lx00125_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n00126_call_proc_staged_α
.Lx00125_0:
                        .quad            .Lx00125_0_s
.Lx00125_0_s:
                        .string          "stdin"
#-----------------------------------------------------------------------------------------------------------------------
n00126_call_proc_staged_α:
                        lea              rsi, [rbp + 128]
                        lea              rdx, [rbp + 160]
                        call             proc_dofile_dcα
                                                                                        jmp   .Lx00127_2
.Lx00127_2:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 104
                                                                                        je    main_ω
                                                                                        jmp   n00096_disjunction_as
n00126_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx00127_0:
                        .quad            .Lx00127_0_s
.Lx00127_0_s:
                        .string          "dofile"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 768]
                        mov              rcx, qword ptr [rbp + 744]
                        mov              rbp, qword ptr [rbp + 760]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        lea              rsp, [rbp + 768]
                        mov              rcx, qword ptr [rbp + 752]
                        mov              rbp, qword ptr [rbp + 760]
                                                                                        jmp   rcx
                        .section         .note.GNU-stack,"",@progbits
