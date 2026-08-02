                        .intel_syntax    noprefix
                        .text
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lclassspec0:           .string          "simple(f)"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec0]
                        call             record_register@PLT
                        .section         .rodata
.Lclassspec1:           .string          "rec(f1,f2)"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec1]
                        call             record_register@PLT
                        add              rsp, 8
                        ret
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#-----------------------------------------------------------------------------------------------------------------------
n0_call_α:
                        sub              rsp, 2736
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
                        mov              qword ptr [rsp + 2672], 0
                        mov              qword ptr [rsp + 2680], 0
                        mov              qword ptr [rsp + 2688], 0
                        mov              qword ptr [rsp + 2696], 0
                        mov              qword ptr [rsp + 2704], 0
                        mov              qword ptr [rsp + 2712], 0
                        mov              qword ptr [rsp + 2720], 0
                        mov              qword ptr [rsp + 2728], 0
                        .section         .rodata
.Lrkfn147:              .string          "rec"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn147]                         # fn
                        lea              rsi, [rbp + 3280]                              # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3264], rax
                        mov              qword ptr [rbp + 3272], rdx
                        cmp              eax, 104
                                                                                        je    n2_var_α
                                                                                        jmp   n1_assign_α
n0_call_β:
                                                                                        jmp   n2_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:
                        mov              rax, qword ptr [rbp + 3264]
                        mov              rdx, qword ptr [rbp + 3272]
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                                                                                        jmp   n2_var_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 3216], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 3224], rax
                                                                                        jmp   n3_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n3_field_var_α:
                        mov              rdi, qword ptr [rip + .Lx151_0]                # fname
                        mov              rsi, qword ptr [rbp + 3216]                    # obj
                        mov              rdx, qword ptr [rbp + 3224]                    # obj
                        call             rt_field_var@PLT
                        cmp              eax, 104
                                                                                        je    n6_var_α
                        mov              qword ptr [rbp + 3200], rax
                        mov              qword ptr [rbp + 3208], rdx
                                                                                        jmp   n4_lit_integer_α
.Lx151_0:
                        .quad            .Lx151_0_s
.Lx151_0_s:
                        .string          "f1"
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:
                        mov              qword ptr [rbp + 3248], 3                      # result
                        mov              rax, qword ptr [rip + .Lx152_0]
                        mov              qword ptr [rbp + 3256], rax
                                                                                        jmp   n5_assign_var_α
.Lx152_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n5_assign_var_α:
                        mov              rdi, qword ptr [rbp + 3200]                    # var
                        mov              rsi, qword ptr [rbp + 3208]                    # var
                        mov              rdx, qword ptr [rbp + 3248]                    # val
                        mov              rcx, qword ptr [rbp + 3256]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n6_var_α
                        mov              qword ptr [rbp + 3232], rax
                        mov              qword ptr [rbp + 3240], rdx
                                                                                        jmp   n6_var_α
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 3152], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 3160], rax
                                                                                        jmp   n7_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n7_field_var_α:
                        mov              rdi, qword ptr [rip + .Lx156_0]                # fname
                        mov              rsi, qword ptr [rbp + 3152]                    # obj
                        mov              rdx, qword ptr [rbp + 3160]                    # obj
                        call             rt_field_var@PLT
                        cmp              eax, 104
                                                                                        je    n10_var_α
                        mov              qword ptr [rbp + 3136], rax
                        mov              qword ptr [rbp + 3144], rdx
                                                                                        jmp   n8_lit_integer_α
.Lx156_0:
                        .quad            .Lx156_0_s
.Lx156_0_s:
                        .string          "f2"
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_integer_α:
                        mov              qword ptr [rbp + 3184], 3                      # result
                        mov              rax, qword ptr [rip + .Lx157_0]
                        mov              qword ptr [rbp + 3192], rax
                                                                                        jmp   n9_assign_var_α
.Lx157_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n9_assign_var_α:
                        mov              rdi, qword ptr [rbp + 3136]                    # var
                        mov              rsi, qword ptr [rbp + 3144]                    # var
                        mov              rdx, qword ptr [rbp + 3184]                    # val
                        mov              rcx, qword ptr [rbp + 3192]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n10_var_α
                        mov              qword ptr [rbp + 3168], rax
                        mov              qword ptr [rbp + 3176], rdx
                                                                                        jmp   n10_var_α
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 3072], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 3080], rax
                                                                                        jmp   n11_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n11_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx161_0]                # fname
                        mov              rsi, qword ptr [rbp + 3072]                    # obj
                        mov              rdx, qword ptr [rbp + 3080]                    # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n16_lit_integer_α
                        mov              qword ptr [rbp + 3056], rax
                        mov              qword ptr [rbp + 3064], rdx
                                                                                        jmp   n12_lit_string_α
.Lx161_0:
                        .quad            .Lx161_0_s
.Lx161_0_s:
                        .string          "f1"
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:
                        mov              qword ptr [rbp + 3088], 2                      # result
                        mov              dword ptr [rbp + 3092], 1
                        mov              rax, qword ptr [rip + .Lx162_0]
                        mov              qword ptr [rbp + 3096], rax
                                                                                        jmp   n13_var_α
.Lx162_0:
                        .quad            .Lx162_0_s
.Lx162_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n13_var_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 3120], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 3128], rax
                                                                                        jmp   n14_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n14_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx165_0]                # fname
                        mov              rsi, qword ptr [rbp + 3120]                    # obj
                        mov              rdx, qword ptr [rbp + 3128]                    # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n16_lit_integer_α
                        mov              qword ptr [rbp + 3104], rax
                        mov              qword ptr [rbp + 3112], rdx
                                                                                        jmp   n15_call_builtin_icon_α
.Lx165_0:
                        .quad            .Lx165_0_s
.Lx165_0_s:
                        .string          "f2"
#-----------------------------------------------------------------------------------------------------------------------
n15_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3056]
                        mov              qword ptr [rbp + 2992], rax
                        mov              rax, qword ptr [rbp + 3064]
                        mov              qword ptr [rbp + 3000], rax
                        mov              rax, qword ptr [rbp + 3088]
                        mov              qword ptr [rbp + 3008], rax
                        mov              rax, qword ptr [rbp + 3096]
                        mov              qword ptr [rbp + 3016], rax
                        mov              rax, qword ptr [rbp + 3104]
                        mov              qword ptr [rbp + 3024], rax
                        mov              rax, qword ptr [rbp + 3112]
                        mov              qword ptr [rbp + 3032], rax
                        .section         .rodata
.Lrkfn167:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn167]                         # fn
                        lea              rsi, [rbp + 2992]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2976], rax
                        mov              qword ptr [rbp + 2984], rdx
                        cmp              eax, 104
                                                                                        je    n16_lit_integer_α
                                                                                        jmp   n16_lit_integer_α
n15_call_builtin_icon_β:
                                                                                        jmp   n16_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:
                        mov              qword ptr [rbp + 2960], 3                      # result
                        mov              rax, qword ptr [rip + .Lx168_0]
                        mov              qword ptr [rbp + 2968], rax
                                                                                        jmp   n17_call_α
.Lx168_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n17_call_α:
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 2928], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 2936], rax
                        .section         .rodata
.Lrkfn170:              .string          "rec"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn170]                         # fn
                        lea              rsi, [rbp + 2928]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2912], rax
                        mov              qword ptr [rbp + 2920], rdx
                        cmp              eax, 104
                                                                                        je    n19_var_α
                                                                                        jmp   n18_assign_α
n17_call_β:
                                                                                        jmp   n19_var_α
#-----------------------------------------------------------------------------------------------------------------------
n18_assign_α:
                        mov              rax, qword ptr [rbp + 2912]
                        mov              rdx, qword ptr [rbp + 2920]
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                                                                                        jmp   n19_var_α
#-----------------------------------------------------------------------------------------------------------------------
n19_var_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 2864], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 2872], rax
                                                                                        jmp   n20_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n20_field_var_α:
                        mov              rdi, qword ptr [rip + .Lx174_0]                # fname
                        mov              rsi, qword ptr [rbp + 2864]                    # obj
                        mov              rdx, qword ptr [rbp + 2872]                    # obj
                        call             rt_field_var@PLT
                        cmp              eax, 104
                                                                                        je    n23_var_α
                        mov              qword ptr [rbp + 2848], rax
                        mov              qword ptr [rbp + 2856], rdx
                                                                                        jmp   n21_lit_integer_α
.Lx174_0:
                        .quad            .Lx174_0_s
.Lx174_0_s:
                        .string          "f2"
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_integer_α:
                        mov              qword ptr [rbp + 2896], 3                      # result
                        mov              rax, qword ptr [rip + .Lx175_0]
                        mov              qword ptr [rbp + 2904], rax
                                                                                        jmp   n22_assign_var_α
.Lx175_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n22_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2848]                    # var
                        mov              rsi, qword ptr [rbp + 2856]                    # var
                        mov              rdx, qword ptr [rbp + 2896]                    # val
                        mov              rcx, qword ptr [rbp + 2904]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n23_var_α
                        mov              qword ptr [rbp + 2880], rax
                        mov              qword ptr [rbp + 2888], rdx
                                                                                        jmp   n23_var_α
#-----------------------------------------------------------------------------------------------------------------------
n23_var_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 2784], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 2792], rax
                                                                                        jmp   n24_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n24_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx179_0]                # fname
                        mov              rsi, qword ptr [rbp + 2784]                    # obj
                        mov              rdx, qword ptr [rbp + 2792]                    # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n29_lit_integer_α
                        mov              qword ptr [rbp + 2768], rax
                        mov              qword ptr [rbp + 2776], rdx
                                                                                        jmp   n25_lit_string_α
.Lx179_0:
                        .quad            .Lx179_0_s
.Lx179_0_s:
                        .string          "f1"
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:
                        mov              qword ptr [rbp + 2800], 2                      # result
                        mov              dword ptr [rbp + 2804], 1
                        mov              rax, qword ptr [rip + .Lx180_0]
                        mov              qword ptr [rbp + 2808], rax
                                                                                        jmp   n26_var_α
.Lx180_0:
                        .quad            .Lx180_0_s
.Lx180_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n26_var_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 2832], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 2840], rax
                                                                                        jmp   n27_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n27_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx183_0]                # fname
                        mov              rsi, qword ptr [rbp + 2832]                    # obj
                        mov              rdx, qword ptr [rbp + 2840]                    # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n29_lit_integer_α
                        mov              qword ptr [rbp + 2816], rax
                        mov              qword ptr [rbp + 2824], rdx
                                                                                        jmp   n28_call_builtin_icon_α
.Lx183_0:
                        .quad            .Lx183_0_s
.Lx183_0_s:
                        .string          "f2"
#-----------------------------------------------------------------------------------------------------------------------
n28_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 2704], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 2712], rax
                        mov              rax, qword ptr [rbp + 2800]
                        mov              qword ptr [rbp + 2720], rax
                        mov              rax, qword ptr [rbp + 2808]
                        mov              qword ptr [rbp + 2728], rax
                        mov              rax, qword ptr [rbp + 2816]
                        mov              qword ptr [rbp + 2736], rax
                        mov              rax, qword ptr [rbp + 2824]
                        mov              qword ptr [rbp + 2744], rax
                        .section         .rodata
.Lrkfn185:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn185]                         # fn
                        lea              rsi, [rbp + 2704]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                        cmp              eax, 104
                                                                                        je    n29_lit_integer_α
                                                                                        jmp   n29_lit_integer_α
n28_call_builtin_icon_β:
                                                                                        jmp   n29_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_integer_α:
                        mov              qword ptr [rbp + 2656], 3                      # result
                        mov              rax, qword ptr [rip + .Lx186_0]
                        mov              qword ptr [rbp + 2664], rax
                                                                                        jmp   n30_lit_integer_α
.Lx186_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:
                        mov              qword ptr [rbp + 2672], 3                      # result
                        mov              rax, qword ptr [rip + .Lx187_0]
                        mov              qword ptr [rbp + 2680], rax
                                                                                        jmp   n31_call_α
.Lx187_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n31_call_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 2608], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 2616], rax
                        mov              rax, qword ptr [rbp + 2672]
                        mov              qword ptr [rbp + 2624], rax
                        mov              rax, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 2632], rax
                        .section         .rodata
.Lrkfn189:              .string          "rec"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn189]                         # fn
                        lea              rsi, [rbp + 2608]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2592], rax
                        mov              qword ptr [rbp + 2600], rdx
                        cmp              eax, 104
                                                                                        je    n33_var_α
                                                                                        jmp   n32_assign_α
n31_call_β:
                                                                                        jmp   n33_var_α
#-----------------------------------------------------------------------------------------------------------------------
n32_assign_α:
                        mov              rax, qword ptr [rbp + 2592]
                        mov              rdx, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                                                                                        jmp   n33_var_α
#-----------------------------------------------------------------------------------------------------------------------
n33_var_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 2528], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 2536], rax
                                                                                        jmp   n34_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n34_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx193_0]                # fname
                        mov              rsi, qword ptr [rbp + 2528]                    # obj
                        mov              rdx, qword ptr [rbp + 2536]                    # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n39_var_α
                        mov              qword ptr [rbp + 2512], rax
                        mov              qword ptr [rbp + 2520], rdx
                                                                                        jmp   n35_lit_string_α
.Lx193_0:
                        .quad            .Lx193_0_s
.Lx193_0_s:
                        .string          "f1"
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:
                        mov              qword ptr [rbp + 2544], 2                      # result
                        mov              dword ptr [rbp + 2548], 1
                        mov              rax, qword ptr [rip + .Lx194_0]
                        mov              qword ptr [rbp + 2552], rax
                                                                                        jmp   n36_var_α
.Lx194_0:
                        .quad            .Lx194_0_s
.Lx194_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n36_var_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 2576], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 2584], rax
                                                                                        jmp   n37_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n37_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx197_0]                # fname
                        mov              rsi, qword ptr [rbp + 2576]                    # obj
                        mov              rdx, qword ptr [rbp + 2584]                    # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n39_var_α
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                                                                                        jmp   n38_call_builtin_icon_α
.Lx197_0:
                        .quad            .Lx197_0_s
.Lx197_0_s:
                        .string          "f2"
#-----------------------------------------------------------------------------------------------------------------------
n38_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 2448], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 2456], rax
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 2472], rax
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 2480], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 2488], rax
                        .section         .rodata
.Lrkfn199:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn199]                         # fn
                        lea              rsi, [rbp + 2448]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx
                        cmp              eax, 104
                                                                                        je    n39_var_α
                                                                                        jmp   n39_var_α
n38_call_builtin_icon_β:
                                                                                        jmp   n39_var_α
#-----------------------------------------------------------------------------------------------------------------------
n39_var_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 2392], rax
                                                                                        jmp   n40_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n40_field_var_α:
                        mov              rdi, qword ptr [rip + .Lx202_0]                # fname
                        mov              rsi, qword ptr [rbp + 2384]                    # obj
                        mov              rdx, qword ptr [rbp + 2392]                    # obj
                        call             rt_field_var@PLT
                        cmp              eax, 104
                                                                                        je    n43_var_α
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx
                                                                                        jmp   n41_lit_integer_α
.Lx202_0:
                        .quad            .Lx202_0_s
.Lx202_0_s:
                        .string          "f1"
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_integer_α:
                        mov              qword ptr [rbp + 2416], 3                      # result
                        mov              rax, qword ptr [rip + .Lx203_0]
                        mov              qword ptr [rbp + 2424], rax
                                                                                        jmp   n42_assign_var_α
.Lx203_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n42_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2368]                    # var
                        mov              rsi, qword ptr [rbp + 2376]                    # var
                        mov              rdx, qword ptr [rbp + 2416]                    # val
                        mov              rcx, qword ptr [rbp + 2424]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n43_var_α
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                                                                                        jmp   n43_var_α
#-----------------------------------------------------------------------------------------------------------------------
n43_var_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 2320], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 2328], rax
                                                                                        jmp   n44_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n44_field_var_α:
                        mov              rdi, qword ptr [rip + .Lx207_0]                # fname
                        mov              rsi, qword ptr [rbp + 2320]                    # obj
                        mov              rdx, qword ptr [rbp + 2328]                    # obj
                        call             rt_field_var@PLT
                        cmp              eax, 104
                                                                                        je    n47_var_α
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                                                                                        jmp   n45_lit_integer_α
.Lx207_0:
                        .quad            .Lx207_0_s
.Lx207_0_s:
                        .string          "f2"
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_integer_α:
                        mov              qword ptr [rbp + 2352], 3                      # result
                        mov              rax, qword ptr [rip + .Lx208_0]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n46_assign_var_α
.Lx208_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n46_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2304]                    # var
                        mov              rsi, qword ptr [rbp + 2312]                    # var
                        mov              rdx, qword ptr [rbp + 2352]                    # val
                        mov              rcx, qword ptr [rbp + 2360]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n47_var_α
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                                                                                        jmp   n47_var_α
#-----------------------------------------------------------------------------------------------------------------------
n47_var_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n48_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n48_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx212_0]                # fname
                        mov              rsi, qword ptr [rbp + 2240]                    # obj
                        mov              rdx, qword ptr [rbp + 2248]                    # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n53_lit_integer_α
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx
                                                                                        jmp   n49_lit_string_α
.Lx212_0:
                        .quad            .Lx212_0_s
.Lx212_0_s:
                        .string          "f1"
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_string_α:
                        mov              qword ptr [rbp + 2256], 2                      # result
                        mov              dword ptr [rbp + 2260], 1
                        mov              rax, qword ptr [rip + .Lx213_0]
                        mov              qword ptr [rbp + 2264], rax
                                                                                        jmp   n50_var_α
.Lx213_0:
                        .quad            .Lx213_0_s
.Lx213_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n50_var_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 2288], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 2296], rax
                                                                                        jmp   n51_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n51_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx216_0]                # fname
                        mov              rsi, qword ptr [rbp + 2288]                    # obj
                        mov              rdx, qword ptr [rbp + 2296]                    # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n53_lit_integer_α
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                                                                                        jmp   n52_call_builtin_icon_α
.Lx216_0:
                        .quad            .Lx216_0_s
.Lx216_0_s:
                        .string          "f2"
#-----------------------------------------------------------------------------------------------------------------------
n52_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 2168], rax
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 2184], rax
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 2200], rax
                        .section         .rodata
.Lrkfn218:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn218]                         # fn
                        lea              rsi, [rbp + 2160]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                        cmp              eax, 104
                                                                                        je    n53_lit_integer_α
                                                                                        jmp   n53_lit_integer_α
n52_call_builtin_icon_β:
                                                                                        jmp   n53_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_integer_α:
                        mov              qword ptr [rbp + 2096], 3                      # result
                        mov              rax, qword ptr [rip + .Lx219_0]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n54_lit_integer_α
.Lx219_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_integer_α:
                        mov              qword ptr [rbp + 2112], 3                      # result
                        mov              rax, qword ptr [rip + .Lx220_0]
                        mov              qword ptr [rbp + 2120], rax
                                                                                        jmp   n55_lit_integer_α
.Lx220_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_integer_α:
                        mov              qword ptr [rbp + 2128], 3                      # result
                        mov              rax, qword ptr [rip + .Lx221_0]
                        mov              qword ptr [rbp + 2136], rax
                                                                                        jmp   n56_call_α
.Lx221_0:
                        .quad            11
#-----------------------------------------------------------------------------------------------------------------------
n56_call_α:
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2040], rax
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 2056], rax
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2072], rax
                        .section         .rodata
.Lrkfn223:              .string          "rec"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn223]                         # fn
                        lea              rsi, [rbp + 2032]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                        cmp              eax, 104
                                                                                        je    n58_var_α
                                                                                        jmp   n57_assign_α
n56_call_β:
                                                                                        jmp   n58_var_α
#-----------------------------------------------------------------------------------------------------------------------
n57_assign_α:
                        mov              rax, qword ptr [rbp + 2016]
                        mov              rdx, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                                                                                        jmp   n58_var_α
#-----------------------------------------------------------------------------------------------------------------------
n58_var_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 1960], rax
                                                                                        jmp   n59_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n59_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx227_0]                # fname
                        mov              rsi, qword ptr [rbp + 1952]                    # obj
                        mov              rdx, qword ptr [rbp + 1960]                    # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n64_lit_integer_α
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                                                                                        jmp   n60_lit_string_α
.Lx227_0:
                        .quad            .Lx227_0_s
.Lx227_0_s:
                        .string          "f1"
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:
                        mov              qword ptr [rbp + 1968], 2                      # result
                        mov              dword ptr [rbp + 1972], 1
                        mov              rax, qword ptr [rip + .Lx228_0]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n61_var_α
.Lx228_0:
                        .quad            .Lx228_0_s
.Lx228_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n61_var_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 2008], rax
                                                                                        jmp   n62_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n62_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx231_0]                # fname
                        mov              rsi, qword ptr [rbp + 2000]                    # obj
                        mov              rdx, qword ptr [rbp + 2008]                    # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n64_lit_integer_α
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                                                                                        jmp   n63_call_builtin_icon_α
.Lx231_0:
                        .quad            .Lx231_0_s
.Lx231_0_s:
                        .string          "f2"
#-----------------------------------------------------------------------------------------------------------------------
n63_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1880], rax
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 1896], rax
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 1912], rax
                        .section         .rodata
.Lrkfn233:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn233]                         # fn
                        lea              rsi, [rbp + 1872]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                        cmp              eax, 104
                                                                                        je    n64_lit_integer_α
                                                                                        jmp   n64_lit_integer_α
n63_call_builtin_icon_β:
                                                                                        jmp   n64_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_integer_α:
                        mov              qword ptr [rbp + 1824], 3                      # result
                        mov              rax, qword ptr [rip + .Lx234_0]
                        mov              qword ptr [rbp + 1832], rax
                                                                                        jmp   n65_lit_integer_α
.Lx234_0:
                        .quad            11
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_integer_α:
                        mov              qword ptr [rbp + 1840], 3                      # result
                        mov              rax, qword ptr [rip + .Lx235_0]
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   n66_call_α
.Lx235_0:
                        .quad            12
#-----------------------------------------------------------------------------------------------------------------------
n66_call_α:
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1784], rax
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1800], rax
                        .section         .rodata
.Lrkfn237:              .string          "rec"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn237]                         # fn
                        lea              rsi, [rbp + 1776]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                        cmp              eax, 104
                                                                                        je    n68_var_α
                                                                                        jmp   n67_assign_α
n66_call_β:
                                                                                        jmp   n68_var_α
#-----------------------------------------------------------------------------------------------------------------------
n67_assign_α:
                        mov              rax, qword ptr [rbp + 1760]
                        mov              rdx, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                                                                                        jmp   n68_var_α
#-----------------------------------------------------------------------------------------------------------------------
n68_var_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   n69_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n69_iterate_α:
                        mov              qword ptr [rbp + 1728], 0
.Lx242_0:
                        mov              rdi, qword ptr [rbp + 1744]                    # obj
                        mov              rsi, qword ptr [rbp + 1752]                    # obj
                        mov              rdx, qword ptr [rbp + 1728]                    # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                        cmp              rax, 99
                                                                                        jne   .Lx242_240
                        add              rsp, 2736
                                                                                        jmp   n71_var_ref_α
.Lx242_240:
                                                                                        jmp   n70_call_builtin_icon_α
n69_iterate_β:
                        inc              qword ptr [rbp + 1728]
                                                                                        jmp   .Lx242_0
#-----------------------------------------------------------------------------------------------------------------------
n70_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1688], rax
                        .section         .rodata
.Lrkfn244:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn244]                         # fn
                        lea              rsi, [rbp + 1680]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                        cmp              eax, 104
                                                                                        je    n69_iterate_β
                                                                                        jmp   n69_iterate_β
n70_call_builtin_icon_β:
                                                                                        jmp   n69_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n71_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3296]
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                                                                                        jmp   n72_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n72_iterate_α:
                        mov              qword ptr [rbp + 1600], 0
.Lx248_0:
                        mov              rdi, qword ptr [rbp + 1616]                    # obj
                        mov              rsi, qword ptr [rbp + 1624]                    # obj
                        mov              rdx, qword ptr [rbp + 1600]                    # idx
                        call             rt_list_bang_var_at@PLT
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        cmp              rax, 99
                                                                                        je    n75_var_α
                                                                                        jmp   n73_lit_integer_α
n72_iterate_β:
                        inc              qword ptr [rbp + 1600]
                                                                                        jmp   .Lx248_0
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_integer_α:
                        mov              qword ptr [rbp + 1648], 3                      # result
                        mov              rax, qword ptr [rip + .Lx249_0]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n74_assign_var_α
.Lx249_0:
                        .quad            13
#-----------------------------------------------------------------------------------------------------------------------
n74_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1584]                    # var
                        mov              rsi, qword ptr [rbp + 1592]                    # var
                        mov              rdx, qword ptr [rbp + 1648]                    # val
                        mov              rcx, qword ptr [rbp + 1656]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n75_var_α
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                                                                                        jmp   n72_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n75_var_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 1576], rax
                                                                                        jmp   n76_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n76_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx253_0]                # fname
                        mov              rsi, qword ptr [rbp + 1568]                    # obj
                        mov              rdx, qword ptr [rbp + 1576]                    # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n78_lit_integer_α
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                                                                                        jmp   n77_call_builtin_icon_α
.Lx253_0:
                        .quad            .Lx253_0_s
.Lx253_0_s:
                        .string          "f2"
#-----------------------------------------------------------------------------------------------------------------------
n77_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1528], rax
                        .section         .rodata
.Lrkfn255:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn255]                         # fn
                        lea              rsi, [rbp + 1520]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        cmp              eax, 104
                                                                                        je    n78_lit_integer_α
                                                                                        jmp   n78_lit_integer_α
n77_call_builtin_icon_β:
                                                                                        jmp   n78_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_integer_α:
                        mov              qword ptr [rbp + 1488], 3                      # result
                        mov              rax, qword ptr [rip + .Lx256_0]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n79_call_α
.Lx256_0:
                        .quad            14
#-----------------------------------------------------------------------------------------------------------------------
n79_call_α:
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1464], rax
                        .section         .rodata
.Lrkfn258:              .string          "simple"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn258]                         # fn
                        lea              rsi, [rbp + 1456]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                        cmp              eax, 104
                                                                                        je    n81_var_ref_α
                                                                                        jmp   n80_assign_α
n79_call_β:
                                                                                        jmp   n81_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n80_assign_α:
                        mov              rax, qword ptr [rbp + 1440]
                        mov              rdx, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 3312], rax
                        mov              qword ptr [rbp + 3320], rdx
                                                                                        jmp   n81_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n81_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3312]
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                                                                                        jmp   n82_random_α
#-----------------------------------------------------------------------------------------------------------------------
n82_random_α:
                        mov              rdi, qword ptr [rbp + 1408]                    # base
                        mov              rsi, qword ptr [rbp + 1416]                    # base
                        call             rt_random_var@PLT
                        cmp              eax, 104
                                                                                        je    n85_var_ref_α
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                                                                                        jmp   n83_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n83_deref_α:
                        mov              rdi, qword ptr [rbp + 1392]                    # d
                        mov              rsi, qword ptr [rbp + 1400]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n85_var_ref_α
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                                                                                        jmp   n84_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n84_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1368], rax
                        .section         .rodata
.Lrkfn265:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn265]                         # fn
                        lea              rsi, [rbp + 1360]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                        cmp              eax, 104
                                                                                        je    n85_var_ref_α
                                                                                        jmp   n85_var_ref_α
n84_call_builtin_icon_β:
                                                                                        jmp   n85_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n85_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3312]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n86_random_α
#-----------------------------------------------------------------------------------------------------------------------
n86_random_α:
                        mov              rdi, qword ptr [rbp + 1296]                    # base
                        mov              rsi, qword ptr [rbp + 1304]                    # base
                        call             rt_random_var@PLT
                        cmp              eax, 104
                                                                                        je    n89_var_α
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n87_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_integer_α:
                        mov              qword ptr [rbp + 1328], 3                      # result
                        mov              rax, qword ptr [rip + .Lx269_0]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n88_assign_var_α
.Lx269_0:
                        .quad            15
#-----------------------------------------------------------------------------------------------------------------------
n88_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1280]                    # var
                        mov              rsi, qword ptr [rbp + 1288]                    # var
                        mov              rdx, qword ptr [rbp + 1328]                    # val
                        mov              rcx, qword ptr [rbp + 1336]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n89_var_α
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                                                                                        jmp   n89_var_α
#-----------------------------------------------------------------------------------------------------------------------
n89_var_α:
                        mov              rax, qword ptr [rbp + 3312]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 3320]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n90_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n90_iterate_α:
                        mov              qword ptr [rbp + 1248], 0
.Lx274_0:
                        mov              rdi, qword ptr [rbp + 1264]                    # obj
                        mov              rsi, qword ptr [rbp + 1272]                    # obj
                        mov              rdx, qword ptr [rbp + 1248]                    # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        cmp              rax, 99
                                                                                        je    n92_lit_integer_α
                                                                                        jmp   n91_call_builtin_icon_α
n90_iterate_β:
                        inc              qword ptr [rbp + 1248]
                                                                                        jmp   .Lx274_0
#-----------------------------------------------------------------------------------------------------------------------
n91_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1208], rax
                        .section         .rodata
.Lrkfn276:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn276]                         # fn
                        lea              rsi, [rbp + 1200]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 104
                                                                                        je    n90_iterate_β
                                                                                        jmp   n92_lit_integer_α
n91_call_builtin_icon_β:
                                                                                        jmp   n90_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_integer_α:
                        mov              qword ptr [rbp + 1152], 3                      # result
                        mov              rax, qword ptr [rip + .Lx277_0]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n93_lit_integer_α
.Lx277_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_integer_α:
                        mov              qword ptr [rbp + 1168], 3                      # result
                        mov              rax, qword ptr [rip + .Lx278_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n94_call_α
.Lx278_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n94_call_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1112], rax
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1128], rax
                        .section         .rodata
.Lrkfn280:              .string          "rec"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn280]                         # fn
                        lea              rsi, [rbp + 1104]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        cmp              eax, 104
                                                                                        je    n96_var_ref_α
                                                                                        jmp   n95_assign_α
n94_call_β:
                                                                                        jmp   n96_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n95_assign_α:
                        mov              rax, qword ptr [rbp + 1088]
                        mov              rdx, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 3312], rax
                        mov              qword ptr [rbp + 3320], rdx
                                                                                        jmp   n96_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n96_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3312]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n97_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_integer_α:
                        mov              qword ptr [rbp + 1024], 3                      # result
                        mov              rax, qword ptr [rip + .Lx284_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n98_lit_integer_α
.Lx284_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_integer_α:
                        mov              qword ptr [rbp + 1040], 3                      # result
                        mov              rax, qword ptr [rip + .Lx285_0]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n99_to_α
.Lx285_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n99_to_α:
                        mov              rdi, qword ptr [rbp + 1024]                    # v
                        mov              rsi, qword ptr [rbp + 1032]                    # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1024], 3
                        mov              qword ptr [rbp + 1032], rax
                        mov              rdi, qword ptr [rbp + 1040]                    # v
                        mov              rsi, qword ptr [rbp + 1048]                    # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1040], 3
                        mov              qword ptr [rbp + 1048], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1008], rax
.Lx287_0:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              rcx, qword ptr [rbp + 1048]
                        cmp              rax, rcx
                                                                                        jg    n103_var_ref_α
                        mov              qword ptr [rbp + 992], 3
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n100_subscript_α
n99_to_β:
                        inc              qword ptr [rbp + 1008]
                                                                                        jmp   .Lx287_0
#-----------------------------------------------------------------------------------------------------------------------
n100_subscript_α:
                        mov              rdi, qword ptr [rbp + 976]                     # base
                        mov              rsi, qword ptr [rbp + 984]                     # base
                        mov              rdx, qword ptr [rbp + 992]                     # idx
                        mov              rcx, qword ptr [rbp + 1000]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n99_to_β
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n101_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n101_deref_α:
                        mov              rdi, qword ptr [rbp + 1056]                    # d
                        mov              rsi, qword ptr [rbp + 1064]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n99_to_β
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   n102_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n102_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 952], rax
                        .section         .rodata
.Lrkfn291:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn291]                         # fn
                        lea              rsi, [rbp + 944]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              eax, 104
                                                                                        je    n99_to_β
                                                                                        jmp   n99_to_β
n102_call_builtin_icon_β:
                                                                                        jmp   n99_to_β
#-----------------------------------------------------------------------------------------------------------------------
n103_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3312]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n104_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_string_α:
                        mov              qword ptr [rbp + 816], 2                       # result
                        mov              dword ptr [rbp + 820], 1
                        mov              rax, qword ptr [rip + .Lx294_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n105_lit_integer_α
.Lx294_0:
                        .quad            .Lx294_0_s
.Lx294_0_s:
                        .string          "f"
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_integer_α:
                        mov              qword ptr [rbp + 864], 3                       # result
                        mov              rax, qword ptr [rip + .Lx295_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n106_lit_integer_α
.Lx295_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_integer_α:
                        mov              qword ptr [rbp + 880], 3                       # result
                        mov              rax, qword ptr [rip + .Lx296_0]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n107_to_α
.Lx296_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n107_to_α:
                        mov              rdi, qword ptr [rbp + 864]                     # v
                        mov              rsi, qword ptr [rbp + 872]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 864], 3
                        mov              qword ptr [rbp + 872], rax
                        mov              rdi, qword ptr [rbp + 880]                     # v
                        mov              rsi, qword ptr [rbp + 888]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 880], 3
                        mov              qword ptr [rbp + 888], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 848], rax
.Lx298_0:
                        mov              rax, qword ptr [rbp + 848]
                        mov              rcx, qword ptr [rbp + 888]
                        cmp              rax, rcx
                                                                                        jg    n112_lit_integer_α
                        mov              qword ptr [rbp + 832], 3
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n108_binop_α
n107_to_β:
                        inc              qword ptr [rbp + 848]
                                                                                        jmp   .Lx298_0
#-----------------------------------------------------------------------------------------------------------------------
n108_binop_α:
                        mov              rdi, qword ptr [rbp + 816]                     # a
                        mov              rsi, qword ptr [rbp + 824]                     # a
                        mov              rdx, qword ptr [rbp + 832]                     # b
                        mov              rcx, qword ptr [rbp + 840]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n109_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n109_subscript_α:
                        mov              rdi, qword ptr [rbp + 784]                     # base
                        mov              rsi, qword ptr [rbp + 792]                     # base
                        mov              rdx, qword ptr [rbp + 800]                     # idx
                        mov              rcx, qword ptr [rbp + 808]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n107_to_β
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n110_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n110_deref_α:
                        mov              rdi, qword ptr [rbp + 896]                     # d
                        mov              rsi, qword ptr [rbp + 904]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n107_to_β
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n111_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n111_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 760], rax
                        .section         .rodata
.Lrkfn303:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn303]                         # fn
                        lea              rsi, [rbp + 752]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 104
                                                                                        je    n107_to_β
                                                                                        jmp   n107_to_β
n111_call_builtin_icon_β:
                                                                                        jmp   n107_to_β
#-----------------------------------------------------------------------------------------------------------------------
n112_lit_integer_α:
                        mov              qword ptr [rbp + 704], 3                       # result
                        mov              rax, qword ptr [rip + .Lx304_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n113_lit_integer_α
.Lx304_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_integer_α:
                        mov              qword ptr [rbp + 720], 3                       # result
                        mov              rax, qword ptr [rip + .Lx305_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n114_call_α
.Lx305_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n114_call_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 664], rax
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 680], rax
                        .section         .rodata
.Lrkfn307:              .string          "rec"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn307]                         # fn
                        lea              rsi, [rbp + 656]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              eax, 104
                                                                                        je    n116_lit_integer_α
                                                                                        jmp   n115_assign_α
n114_call_β:
                                                                                        jmp   n116_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n115_assign_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                                                                                        jmp   n116_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_integer_α:
                        mov              qword ptr [rbp + 608], 3                       # result
                        mov              rax, qword ptr [rip + .Lx309_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n117_lit_integer_α
.Lx309_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_integer_α:
                        mov              qword ptr [rbp + 624], 3                       # result
                        mov              rax, qword ptr [rip + .Lx310_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n118_call_α
.Lx310_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n118_call_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 584], rax
                        .section         .rodata
.Lrkfn312:              .string          "rec"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn312]                         # fn
                        lea              rsi, [rbp + 560]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 104
                                                                                        je    n120_var_α
                                                                                        jmp   n119_assign_α
n118_call_β:
                                                                                        jmp   n120_var_α
#-----------------------------------------------------------------------------------------------------------------------
n119_assign_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              rdx, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 3312], rax
                        mov              qword ptr [rbp + 3320], rdx
                                                                                        jmp   n120_var_α
#-----------------------------------------------------------------------------------------------------------------------
n120_var_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n121_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n121_field_var_α:
                        mov              rdi, qword ptr [rip + .Lx316_0]                # fname
                        mov              rsi, qword ptr [rbp + 448]                     # obj
                        mov              rdx, qword ptr [rbp + 456]                     # obj
                        call             rt_field_var@PLT
                        cmp              eax, 104
                                                                                        je    n126_var_α
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n122_deref_α
.Lx316_0:
                        .quad            .Lx316_0_s
.Lx316_0_s:
                        .string          "f1"
#-----------------------------------------------------------------------------------------------------------------------
n122_deref_α:
                        mov              rdi, qword ptr [rbp + 432]                     # d
                        mov              rsi, qword ptr [rbp + 440]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n126_var_α
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n123_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n123_lit_integer_α:
                        mov              qword ptr [rbp + 512], 3                       # result
                        mov              rax, qword ptr [rip + .Lx318_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n124_binop_α
.Lx318_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n124_binop_α:
                        mov              eax, dword ptr [rbp + 496]
                        cmp              eax, 3
                                                                                        jne   .Lx319_0
                        mov              rax, qword ptr [rbp + 504]
                        mov              rcx, 10
                        add              rax, rcx
                        mov              qword ptr [rbp + 480], 3
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n125_assign_var_α
.Lx319_0:
                        mov              rdi, qword ptr [rbp + 496]
                        mov              rsi, qword ptr [rbp + 504]
                        mov              rdx, qword ptr [rbp + 512]
                        mov              rcx, qword ptr [rbp + 520]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n126_var_α
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n125_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n125_assign_var_α:
                        mov              rdi, qword ptr [rbp + 432]                     # var
                        mov              rsi, qword ptr [rbp + 440]                     # var
                        mov              rdx, qword ptr [rbp + 480]                     # val
                        mov              rcx, qword ptr [rbp + 488]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n126_var_α
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n126_var_α
#-----------------------------------------------------------------------------------------------------------------------
n126_var_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n127_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n127_field_var_α:
                        mov              rdi, qword ptr [rip + .Lx323_0]                # fname
                        mov              rsi, qword ptr [rbp + 352]                     # obj
                        mov              rdx, qword ptr [rbp + 360]                     # obj
                        call             rt_field_var@PLT
                        cmp              eax, 104
                                                                                        je    n132_var_ref_α
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n128_deref_α
.Lx323_0:
                        .quad            .Lx323_0_s
.Lx323_0_s:
                        .string          "f2"
#-----------------------------------------------------------------------------------------------------------------------
n128_deref_α:
                        mov              rdi, qword ptr [rbp + 336]                     # d
                        mov              rsi, qword ptr [rbp + 344]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n132_var_ref_α
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n129_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_integer_α:
                        mov              qword ptr [rbp + 416], 3                       # result
                        mov              rax, qword ptr [rip + .Lx325_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n130_binop_α
.Lx325_0:
                        .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n130_binop_α:
                        mov              eax, dword ptr [rbp + 400]
                        cmp              eax, 3
                                                                                        jne   .Lx326_0
                        mov              rax, qword ptr [rbp + 408]
                        mov              rcx, 20
                        add              rax, rcx
                        mov              qword ptr [rbp + 384], 3
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n131_assign_var_α
.Lx326_0:
                        mov              rdi, qword ptr [rbp + 400]
                        mov              rsi, qword ptr [rbp + 408]
                        mov              rdx, qword ptr [rbp + 416]
                        mov              rcx, qword ptr [rbp + 424]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n132_var_ref_α
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n131_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n131_assign_var_α:
                        mov              rdi, qword ptr [rbp + 336]                     # var
                        mov              rsi, qword ptr [rbp + 344]                     # var
                        mov              rdx, qword ptr [rbp + 384]                     # val
                        mov              rcx, qword ptr [rbp + 392]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n132_var_ref_α
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n132_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n132_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3312]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n133_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n133_iterate_α:
                        mov              qword ptr [rbp + 240], 0
.Lx331_0:
                        mov              rdi, qword ptr [rbp + 256]                     # obj
                        mov              rsi, qword ptr [rbp + 264]                     # obj
                        mov              rdx, qword ptr [rbp + 240]                     # idx
                        call             rt_list_bang_var_at@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              rax, 99
                                                                                        je    n138_lit_string_α
                                                                                        jmp   n134_deref_α
n133_iterate_β:
                        inc              qword ptr [rbp + 240]
                                                                                        jmp   .Lx331_0
#-----------------------------------------------------------------------------------------------------------------------
n134_deref_α:
                        mov              rdi, qword ptr [rbp + 224]                     # d
                        mov              rsi, qword ptr [rbp + 232]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n138_lit_string_α
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n135_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_integer_α:
                        mov              qword ptr [rbp + 320], 3                       # result
                        mov              rax, qword ptr [rip + .Lx333_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n136_binop_α
.Lx333_0:
                        .quad            70
#-----------------------------------------------------------------------------------------------------------------------
n136_binop_α:
                        mov              eax, dword ptr [rbp + 304]
                        cmp              eax, 3
                                                                                        jne   .Lx334_0
                        mov              rax, qword ptr [rbp + 312]
                        mov              rcx, 70
                        add              rax, rcx
                        mov              qword ptr [rbp + 288], 3
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n137_assign_var_α
.Lx334_0:
                        mov              rdi, qword ptr [rbp + 304]
                        mov              rsi, qword ptr [rbp + 312]
                        mov              rdx, qword ptr [rbp + 320]
                        mov              rcx, qword ptr [rbp + 328]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n138_lit_string_α
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n137_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n137_assign_var_α:
                        mov              rdi, qword ptr [rbp + 224]                     # var
                        mov              rsi, qword ptr [rbp + 232]                     # var
                        mov              rdx, qword ptr [rbp + 288]                     # val
                        mov              rcx, qword ptr [rbp + 296]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n138_lit_string_α
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n133_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_string_α:
                        mov              qword ptr [rbp + 64], 2                        # result
                        mov              dword ptr [rbp + 68], 1
                        mov              rax, qword ptr [rip + .Lx336_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n139_disjunction_α
.Lx336_0:
                        .quad            .Lx336_0_s
.Lx336_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n139_disjunction_α:
                        mov              qword ptr [rbp + 80], 0
                        mov              qword ptr [rbp + 88], 0
                        mov              dword ptr [rbp + 96], 0
                                                                                        jmp   n144_var_α
n139_disjunction_as:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 0
                                                                                        jne   .Lx338_0
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n140_call_builtin_icon_α
.Lx338_0:
                        cmp              eax, 1
                                                                                        jne   .Lx338_1
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n140_call_builtin_icon_α
.Lx338_1:
                        cmp              eax, 2
                                                                                        jne   .Lx338_2
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n140_call_builtin_icon_α
.Lx338_2:
                                                                                        jmp   n140_call_builtin_icon_α
n139_disjunction_β:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 0
                                                                                        je    n145_iterate_β
                        cmp              eax, 1
                                                                                        je    n143_iterate_β
                                                                                        jmp   n139_disjunction_af
n139_disjunction_af:
                        add              dword ptr [rbp + 96], 1
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 1
                                                                                        je    n142_var_α
                        cmp              eax, 2
                                                                                        je    n141_lit_string_α
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n140_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 24], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn340:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn340]                         # fn
                        lea              rsi, [rbp + 16]                                # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 104
                                                                                        je    n139_disjunction_β
                                                                                        jmp   n139_disjunction_β
n140_call_builtin_icon_β:
                                                                                        jmp   n139_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_string_α:
                        mov              qword ptr [rbp + 208], 2                       # result
                        mov              dword ptr [rbp + 212], 1
                        mov              rax, qword ptr [rip + .Lx341_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n139_disjunction_as
n141_lit_string_β:
                                                                                        jmp   n139_disjunction_af
.Lx341_0:
                        .quad            .Lx341_0_s
.Lx341_0_s:
                        .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n142_var_α:
                        mov              rax, qword ptr [rbp + 3312]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 3320]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n143_iterate_α
n142_var_β:
                                                                                        jmp   n139_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n143_iterate_α:
                        mov              qword ptr [rbp + 176], 0
.Lx345_0:
                        mov              rdi, qword ptr [rbp + 192]                     # obj
                        mov              rsi, qword ptr [rbp + 200]                     # obj
                        mov              rdx, qword ptr [rbp + 176]                     # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              rax, 99
                                                                                        je    n139_disjunction_af
                                                                                        jmp   n139_disjunction_as
n143_iterate_β:
                        inc              qword ptr [rbp + 176]
                                                                                        jmp   .Lx345_0
#-----------------------------------------------------------------------------------------------------------------------
n144_var_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n145_iterate_α
n144_var_β:
                                                                                        jmp   n139_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n145_iterate_α:
                        mov              qword ptr [rbp + 128], 0
.Lx349_0:
                        mov              rdi, qword ptr [rbp + 144]                     # obj
                        mov              rsi, qword ptr [rbp + 152]                     # obj
                        mov              rdx, qword ptr [rbp + 128]                     # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              rax, 99
                                                                                        je    n139_disjunction_af
                                                                                        jmp   n139_disjunction_as
n145_iterate_β:
                        inc              qword ptr [rbp + 128]
                                                                                        jmp   .Lx349_0
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
