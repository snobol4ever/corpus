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
n0_call_builtin_prolog_α:
                        sub              rsp, 5312
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
                        mov              qword ptr [rsp + 2736], 0
                        mov              qword ptr [rsp + 2744], 0
                        mov              qword ptr [rsp + 2752], 0
                        mov              qword ptr [rsp + 2760], 0
                        mov              qword ptr [rsp + 2768], 0
                        mov              qword ptr [rsp + 2776], 0
                        mov              qword ptr [rsp + 2784], 0
                        mov              qword ptr [rsp + 2792], 0
                        mov              qword ptr [rsp + 2800], 0
                        mov              qword ptr [rsp + 2808], 0
                        mov              qword ptr [rsp + 2816], 0
                        mov              qword ptr [rsp + 2824], 0
                        mov              qword ptr [rsp + 2832], 0
                        mov              qword ptr [rsp + 2840], 0
                        mov              qword ptr [rsp + 2848], 0
                        mov              qword ptr [rsp + 2856], 0
                        mov              qword ptr [rsp + 2864], 0
                        mov              qword ptr [rsp + 2872], 0
                        mov              qword ptr [rsp + 2880], 0
                        mov              qword ptr [rsp + 2888], 0
                        mov              qword ptr [rsp + 2896], 0
                        mov              qword ptr [rsp + 2904], 0
                        mov              qword ptr [rsp + 2912], 0
                        mov              qword ptr [rsp + 2920], 0
                        mov              qword ptr [rsp + 2928], 0
                        mov              qword ptr [rsp + 2936], 0
                        mov              qword ptr [rsp + 2944], 0
                        mov              qword ptr [rsp + 2952], 0
                        mov              qword ptr [rsp + 2960], 0
                        mov              qword ptr [rsp + 2968], 0
                        mov              qword ptr [rsp + 2976], 0
                        mov              qword ptr [rsp + 2984], 0
                        mov              qword ptr [rsp + 2992], 0
                        mov              qword ptr [rsp + 3000], 0
                        mov              qword ptr [rsp + 3008], 0
                        mov              qword ptr [rsp + 3016], 0
                        mov              qword ptr [rsp + 3024], 0
                        mov              qword ptr [rsp + 3032], 0
                        mov              qword ptr [rsp + 3040], 0
                        mov              qword ptr [rsp + 3048], 0
                        mov              qword ptr [rsp + 3056], 0
                        mov              qword ptr [rsp + 3064], 0
                        mov              qword ptr [rsp + 3072], 0
                        mov              qword ptr [rsp + 3080], 0
                        mov              qword ptr [rsp + 3088], 0
                        mov              qword ptr [rsp + 3096], 0
                        mov              qword ptr [rsp + 3104], 0
                        mov              qword ptr [rsp + 3112], 0
                        mov              qword ptr [rsp + 3120], 0
                        mov              qword ptr [rsp + 3128], 0
                        mov              qword ptr [rsp + 3136], 0
                        mov              qword ptr [rsp + 3144], 0
                        mov              qword ptr [rsp + 3152], 0
                        mov              qword ptr [rsp + 3160], 0
                        mov              qword ptr [rsp + 3168], 0
                        mov              qword ptr [rsp + 3176], 0
                        mov              qword ptr [rsp + 3184], 0
                        mov              qword ptr [rsp + 3192], 0
                        mov              qword ptr [rsp + 3200], 0
                        mov              qword ptr [rsp + 3208], 0
                        mov              qword ptr [rsp + 3216], 0
                        mov              qword ptr [rsp + 3224], 0
                        mov              qword ptr [rsp + 3232], 0
                        mov              qword ptr [rsp + 3240], 0
                        mov              qword ptr [rsp + 3248], 0
                        mov              qword ptr [rsp + 3256], 0
                        mov              qword ptr [rsp + 3264], 0
                        mov              qword ptr [rsp + 3272], 0
                        mov              qword ptr [rsp + 3280], 0
                        mov              qword ptr [rsp + 3288], 0
                        mov              qword ptr [rsp + 3296], 0
                        mov              qword ptr [rsp + 3304], 0
                        mov              qword ptr [rsp + 3312], 0
                        mov              qword ptr [rsp + 3320], 0
                        mov              qword ptr [rsp + 3328], 0
                        mov              qword ptr [rsp + 3336], 0
                        mov              qword ptr [rsp + 3344], 0
                        mov              qword ptr [rsp + 3352], 0
                        mov              qword ptr [rsp + 3360], 0
                        mov              qword ptr [rsp + 3368], 0
                        mov              qword ptr [rsp + 3376], 0
                        mov              qword ptr [rsp + 3384], 0
                        mov              qword ptr [rsp + 3392], 0
                        mov              qword ptr [rsp + 3400], 0
                        mov              qword ptr [rsp + 3408], 0
                        mov              qword ptr [rsp + 3416], 0
                        mov              qword ptr [rsp + 3424], 0
                        mov              qword ptr [rsp + 3432], 0
                        mov              qword ptr [rsp + 3440], 0
                        mov              qword ptr [rsp + 3448], 0
                        mov              qword ptr [rsp + 3456], 0
                        mov              qword ptr [rsp + 3464], 0
                        mov              qword ptr [rsp + 3472], 0
                        mov              qword ptr [rsp + 3480], 0
                        mov              qword ptr [rsp + 3488], 0
                        mov              qword ptr [rsp + 3496], 0
                        mov              qword ptr [rsp + 3504], 0
                        mov              qword ptr [rsp + 3512], 0
                        mov              qword ptr [rsp + 3520], 0
                        mov              qword ptr [rsp + 3528], 0
                        mov              qword ptr [rsp + 3536], 0
                        mov              qword ptr [rsp + 3544], 0
                        mov              qword ptr [rsp + 3552], 0
                        mov              qword ptr [rsp + 3560], 0
                        mov              qword ptr [rsp + 3568], 0
                        mov              qword ptr [rsp + 3576], 0
                        mov              qword ptr [rsp + 3584], 0
                        mov              qword ptr [rsp + 3592], 0
                        mov              qword ptr [rsp + 3600], 0
                        mov              qword ptr [rsp + 3608], 0
                        mov              qword ptr [rsp + 3616], 0
                        mov              qword ptr [rsp + 3624], 0
                        mov              qword ptr [rsp + 3632], 0
                        mov              qword ptr [rsp + 3640], 0
                        mov              qword ptr [rsp + 3648], 0
                        mov              qword ptr [rsp + 3656], 0
                        mov              qword ptr [rsp + 3664], 0
                        mov              qword ptr [rsp + 3672], 0
                        mov              qword ptr [rsp + 3680], 0
                        mov              qword ptr [rsp + 3688], 0
                        mov              qword ptr [rsp + 3696], 0
                        mov              qword ptr [rsp + 3704], 0
                        mov              qword ptr [rsp + 3712], 0
                        mov              qword ptr [rsp + 3720], 0
                        mov              qword ptr [rsp + 3728], 0
                        mov              qword ptr [rsp + 3736], 0
                        mov              qword ptr [rsp + 3744], 0
                        mov              qword ptr [rsp + 3752], 0
                        mov              qword ptr [rsp + 3760], 0
                        mov              qword ptr [rsp + 3768], 0
                        mov              qword ptr [rsp + 3776], 0
                        mov              qword ptr [rsp + 3784], 0
                        mov              qword ptr [rsp + 3792], 0
                        mov              qword ptr [rsp + 3800], 0
                        mov              qword ptr [rsp + 3808], 0
                        mov              qword ptr [rsp + 3816], 0
                        mov              qword ptr [rsp + 3824], 0
                        mov              qword ptr [rsp + 3832], 0
                        mov              qword ptr [rsp + 3840], 0
                        mov              qword ptr [rsp + 3848], 0
                        mov              qword ptr [rsp + 3856], 0
                        mov              qword ptr [rsp + 3864], 0
                        mov              qword ptr [rsp + 3872], 0
                        mov              qword ptr [rsp + 3880], 0
                        mov              qword ptr [rsp + 3888], 0
                        mov              qword ptr [rsp + 3896], 0
                        mov              qword ptr [rsp + 3904], 0
                        mov              qword ptr [rsp + 3912], 0
                        mov              qword ptr [rsp + 3920], 0
                        mov              qword ptr [rsp + 3928], 0
                        mov              qword ptr [rsp + 3936], 0
                        mov              qword ptr [rsp + 3944], 0
                        mov              qword ptr [rsp + 3952], 0
                        mov              qword ptr [rsp + 3960], 0
                        mov              qword ptr [rsp + 3968], 0
                        mov              qword ptr [rsp + 3976], 0
                        mov              qword ptr [rsp + 3984], 0
                        mov              qword ptr [rsp + 3992], 0
                        mov              qword ptr [rsp + 4000], 0
                        mov              qword ptr [rsp + 4008], 0
                        mov              qword ptr [rsp + 4016], 0
                        mov              qword ptr [rsp + 4024], 0
                        mov              qword ptr [rsp + 4032], 0
                        mov              qword ptr [rsp + 4040], 0
                        mov              qword ptr [rsp + 4048], 0
                        mov              qword ptr [rsp + 4056], 0
                        mov              qword ptr [rsp + 4064], 0
                        mov              qword ptr [rsp + 4072], 0
                        mov              qword ptr [rsp + 4080], 0
                        mov              qword ptr [rsp + 4088], 0
                        mov              qword ptr [rsp + 4096], 0
                        mov              qword ptr [rsp + 4104], 0
                        mov              qword ptr [rsp + 4112], 0
                        mov              qword ptr [rsp + 4120], 0
                        mov              qword ptr [rsp + 4128], 0
                        mov              qword ptr [rsp + 4136], 0
                        mov              qword ptr [rsp + 4144], 0
                        mov              qword ptr [rsp + 4152], 0
                        mov              qword ptr [rsp + 4160], 0
                        mov              qword ptr [rsp + 4168], 0
                        mov              qword ptr [rsp + 4176], 0
                        mov              qword ptr [rsp + 4184], 0
                        mov              qword ptr [rsp + 4192], 0
                        mov              qword ptr [rsp + 4200], 0
                        mov              qword ptr [rsp + 4208], 0
                        mov              qword ptr [rsp + 4216], 0
                        mov              qword ptr [rsp + 4224], 0
                        mov              qword ptr [rsp + 4232], 0
                        mov              qword ptr [rsp + 4240], 0
                        mov              qword ptr [rsp + 4248], 0
                        mov              qword ptr [rsp + 4256], 0
                        mov              qword ptr [rsp + 4264], 0
                        mov              qword ptr [rsp + 4272], 0
                        mov              qword ptr [rsp + 4280], 0
                        mov              qword ptr [rsp + 4288], 0
                        mov              qword ptr [rsp + 4296], 0
                        mov              qword ptr [rsp + 4304], 0
                        mov              qword ptr [rsp + 4312], 0
                        mov              qword ptr [rsp + 4320], 0
                        mov              qword ptr [rsp + 4328], 0
                        mov              qword ptr [rsp + 4336], 0
                        mov              qword ptr [rsp + 4344], 0
                        mov              qword ptr [rsp + 4352], 0
                        mov              qword ptr [rsp + 4360], 0
                        mov              qword ptr [rsp + 4368], 0
                        mov              qword ptr [rsp + 4376], 0
                        mov              qword ptr [rsp + 4384], 0
                        mov              qword ptr [rsp + 4392], 0
                        mov              qword ptr [rsp + 4400], 0
                        mov              qword ptr [rsp + 4408], 0
                        mov              qword ptr [rsp + 4416], 0
                        mov              qword ptr [rsp + 4424], 0
                        mov              qword ptr [rsp + 4432], 0
                        mov              qword ptr [rsp + 4440], 0
                        mov              qword ptr [rsp + 4448], 0
                        mov              qword ptr [rsp + 4456], 0
                        mov              qword ptr [rsp + 4464], 0
                        mov              qword ptr [rsp + 4472], 0
                        mov              qword ptr [rsp + 4480], 0
                        mov              qword ptr [rsp + 4488], 0
                        mov              qword ptr [rsp + 4496], 0
                        mov              qword ptr [rsp + 4504], 0
                        mov              qword ptr [rsp + 4512], 0
                        mov              qword ptr [rsp + 4520], 0
                        mov              qword ptr [rsp + 4528], 0
                        mov              qword ptr [rsp + 4536], 0
                        mov              qword ptr [rsp + 4544], 0
                        mov              qword ptr [rsp + 4552], 0
                        mov              qword ptr [rsp + 4560], 0
                        mov              qword ptr [rsp + 4568], 0
                        mov              qword ptr [rsp + 4576], 0
                        mov              qword ptr [rsp + 4584], 0
                        mov              qword ptr [rsp + 4592], 0
                        mov              qword ptr [rsp + 4600], 0
                        mov              qword ptr [rsp + 4608], 0
                        mov              qword ptr [rsp + 4616], 0
                        mov              qword ptr [rsp + 4624], 0
                        mov              qword ptr [rsp + 4632], 0
                        mov              qword ptr [rsp + 4640], 0
                        mov              qword ptr [rsp + 4648], 0
                        mov              qword ptr [rsp + 4656], 0
                        mov              qword ptr [rsp + 4664], 0
                        mov              qword ptr [rsp + 4672], 0
                        mov              qword ptr [rsp + 4680], 0
                        mov              qword ptr [rsp + 4688], 0
                        mov              qword ptr [rsp + 4696], 0
                        mov              qword ptr [rsp + 4704], 0
                        mov              qword ptr [rsp + 4712], 0
                        mov              qword ptr [rsp + 4720], 0
                        mov              qword ptr [rsp + 4728], 0
                        mov              qword ptr [rsp + 4736], 0
                        mov              qword ptr [rsp + 4744], 0
                        mov              qword ptr [rsp + 4752], 0
                        mov              qword ptr [rsp + 4760], 0
                        mov              qword ptr [rsp + 4768], 0
                        mov              qword ptr [rsp + 4776], 0
                        mov              qword ptr [rsp + 4784], 0
                        mov              qword ptr [rsp + 4792], 0
                        mov              qword ptr [rsp + 4800], 0
                        mov              qword ptr [rsp + 4808], 0
                        mov              qword ptr [rsp + 4816], 0
                        mov              qword ptr [rsp + 4824], 0
                        mov              qword ptr [rsp + 4832], 0
                        mov              qword ptr [rsp + 4840], 0
                        mov              qword ptr [rsp + 4848], 0
                        mov              qword ptr [rsp + 4856], 0
                        mov              qword ptr [rsp + 4864], 0
                        mov              qword ptr [rsp + 4872], 0
                        mov              qword ptr [rsp + 4880], 0
                        mov              qword ptr [rsp + 4888], 0
                        mov              qword ptr [rsp + 4896], 0
                        mov              qword ptr [rsp + 4904], 0
                        mov              qword ptr [rsp + 4912], 0
                        mov              qword ptr [rsp + 4920], 0
                        mov              qword ptr [rsp + 4928], 0
                        mov              qword ptr [rsp + 4936], 0
                        mov              qword ptr [rsp + 4944], 0
                        mov              qword ptr [rsp + 4952], 0
                        mov              qword ptr [rsp + 4960], 0
                        mov              qword ptr [rsp + 4968], 0
                        mov              qword ptr [rsp + 4976], 0
                        mov              qword ptr [rsp + 4984], 0
                        mov              qword ptr [rsp + 4992], 0
                        mov              qword ptr [rsp + 5000], 0
                        mov              qword ptr [rsp + 5008], 0
                        mov              qword ptr [rsp + 5016], 0
                        mov              qword ptr [rsp + 5024], 0
                        mov              qword ptr [rsp + 5032], 0
                        mov              qword ptr [rsp + 5040], 0
                        mov              qword ptr [rsp + 5048], 0
                        mov              qword ptr [rsp + 5056], 0
                        mov              qword ptr [rsp + 5064], 0
                        mov              qword ptr [rsp + 5072], 0
                        mov              qword ptr [rsp + 5080], 0
                        mov              qword ptr [rsp + 5088], 0
                        mov              qword ptr [rsp + 5096], 0
                        mov              qword ptr [rsp + 5104], 0
                        mov              qword ptr [rsp + 5112], 0
                        mov              qword ptr [rsp + 5120], 0
                        mov              qword ptr [rsp + 5128], 0
                        mov              qword ptr [rsp + 5136], 0
                        mov              qword ptr [rsp + 5144], 0
                        mov              qword ptr [rsp + 5152], 0
                        mov              qword ptr [rsp + 5160], 0
                        mov              qword ptr [rsp + 5168], 0
                        mov              qword ptr [rsp + 5176], 0
                        mov              qword ptr [rsp + 5184], 0
                        mov              qword ptr [rsp + 5192], 0
                        mov              qword ptr [rsp + 5200], 0
                        mov              qword ptr [rsp + 5208], 0
                        mov              qword ptr [rsp + 5216], 0
                        mov              qword ptr [rsp + 5224], 0
                        mov              qword ptr [rsp + 5232], 0
                        mov              qword ptr [rsp + 5240], 0
                        mov              qword ptr [rsp + 5248], 0
                        mov              qword ptr [rsp + 5256], 0
                        mov              qword ptr [rsp + 5264], 0
                        mov              qword ptr [rsp + 5272], 0
                        mov              qword ptr [rsp + 5280], 0
                        mov              qword ptr [rsp + 5288], 0
                        mov              qword ptr [rsp + 5296], 0
                        mov              qword ptr [rsp + 5304], 0
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx173_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx173_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx173_101
.Lx173_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx173_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx173_240
                        add              rsp, 5312
                                                                                        jmp   main_ω
.Lx173_240:
                                                                                        jmp   n1_lit_string_α
n0_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        mov              qword ptr [rbp + 5296], 2                      # result
                        mov              dword ptr [rbp + 5300], 1
                        mov              rax, qword ptr [rip + .Lx174_0]
                        mov              qword ptr [rbp + 5304], rax
                                                                                        jmp   n2_lit_integer_α
.Lx174_0:
                        .quad            .Lx174_0_s
.Lx174_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        mov              qword ptr [rbp + 5072], 3                      # result
                        mov              rax, qword ptr [rip + .Lx175_0]
                        mov              qword ptr [rbp + 5080], rax
                                                                                        jmp   n3_lit_string_α
.Lx175_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:
                        mov              qword ptr [rbp + 5200], 2                      # result
                        mov              dword ptr [rbp + 5204], 1
                        mov              rax, qword ptr [rip + .Lx176_0]
                        mov              qword ptr [rbp + 5208], rax
                                                                                        jmp   n4_lit_integer_α
.Lx176_0:
                        .quad            .Lx176_0_s
.Lx176_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:
                        mov              qword ptr [rbp + 5088], 3                      # result
                        mov              rax, qword ptr [rip + .Lx177_0]
                        mov              qword ptr [rbp + 5096], rax
                                                                                        jmp   n5_lit_integer_α
.Lx177_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:
                        mov              qword ptr [rbp + 5104], 3                      # result
                        mov              rax, qword ptr [rip + .Lx178_0]
                        mov              qword ptr [rbp + 5112], rax
                                                                                        jmp   n6_call_builtin_prolog_α
.Lx178_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n6_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 5200]
                        mov              qword ptr [rbp + 5136], rax
                        mov              rax, qword ptr [rbp + 5208]
                        mov              qword ptr [rbp + 5144], rax
                        mov              rax, qword ptr [rbp + 5088]
                        mov              qword ptr [rbp + 5152], rax
                        mov              rax, qword ptr [rbp + 5096]
                        mov              qword ptr [rbp + 5160], rax
                        mov              rax, qword ptr [rbp + 5104]
                        mov              qword ptr [rbp + 5168], rax
                        mov              rax, qword ptr [rbp + 5112]
                        mov              qword ptr [rbp + 5176], rax
                        lea              rdi, [rbp + 5136]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 5120], rax
                        mov              qword ptr [rbp + 5128], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx179_240
                        add              rsp, 5312
                                                                                        jmp   main_ω
.Lx179_240:
                                                                                        jmp   n7_call_builtin_prolog_α
n6_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n7_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 5296]
                        mov              qword ptr [rbp + 5232], rax
                        mov              rax, qword ptr [rbp + 5304]
                        mov              qword ptr [rbp + 5240], rax
                        mov              rax, qword ptr [rbp + 5072]
                        mov              qword ptr [rbp + 5248], rax
                        mov              rax, qword ptr [rbp + 5080]
                        mov              qword ptr [rbp + 5256], rax
                        mov              rax, qword ptr [rbp + 5120]
                        mov              qword ptr [rbp + 5264], rax
                        mov              rax, qword ptr [rbp + 5128]
                        mov              qword ptr [rbp + 5272], rax
                        lea              rdi, [rbp + 5232]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 5216], rax
                        mov              qword ptr [rbp + 5224], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx180_240
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
.Lx180_240:
                                                                                        jmp   n8_call_builtin_prolog_α
n7_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n8_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 5216]
                        mov              qword ptr [rbp + 5056], rax
                        mov              rax, qword ptr [rbp + 5224]
                        mov              qword ptr [rbp + 5064], rax
                        .section         .rodata
.Lrkfn182:              .string          "$display"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn182]                         # fn
                        lea              rsi, [rbp + 5056]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5040], rax
                        mov              qword ptr [rbp + 5048], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx181_240
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
.Lx181_240:
                                                                                        jmp   n9_lit_string_α
n8_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:
                        mov              qword ptr [rbp + 5024], 2                      # result
                        mov              dword ptr [rbp + 5028], 0
                        mov              rax, qword ptr [rip + .Lx183_0]
                        mov              qword ptr [rbp + 5032], rax
                                                                                        jmp   n10_call_builtin_prolog_α
.Lx183_0:
                        .quad            .Lx183_0_s
.Lx183_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n10_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 5024]
                        mov              qword ptr [rbp + 5008], rax
                        mov              rax, qword ptr [rbp + 5032]
                        mov              qword ptr [rbp + 5016], rax
                        .section         .rodata
.Lrkfn185:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn185]                         # fn
                        lea              rsi, [rbp + 5008]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4992], rax
                        mov              qword ptr [rbp + 5000], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx184_240
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
.Lx184_240:
                                                                                        jmp   n11_lit_string_α
n10_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:
                        mov              qword ptr [rbp + 4976], 2                      # result
                        mov              dword ptr [rbp + 4980], 1
                        mov              rax, qword ptr [rip + .Lx186_0]
                        mov              qword ptr [rbp + 4984], rax
                                                                                        jmp   n12_lit_string_α
.Lx186_0:
                        .quad            .Lx186_0_s
.Lx186_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:
                        mov              qword ptr [rbp + 4864], 2                      # result
                        mov              dword ptr [rbp + 4868], 1
                        mov              rax, qword ptr [rip + .Lx187_0]
                        mov              qword ptr [rbp + 4872], rax
                                                                                        jmp   n13_lit_integer_α
.Lx187_0:
                        .quad            .Lx187_0_s
.Lx187_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_integer_α:
                        mov              qword ptr [rbp + 4752], 3                      # result
                        mov              rax, qword ptr [rip + .Lx188_0]
                        mov              qword ptr [rbp + 4760], rax
                                                                                        jmp   n14_lit_integer_α
.Lx188_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_integer_α:
                        mov              qword ptr [rbp + 4768], 3                      # result
                        mov              rax, qword ptr [rip + .Lx189_0]
                        mov              qword ptr [rbp + 4776], rax
                                                                                        jmp   n15_call_builtin_prolog_α
.Lx189_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n15_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4864]
                        mov              qword ptr [rbp + 4800], rax
                        mov              rax, qword ptr [rbp + 4872]
                        mov              qword ptr [rbp + 4808], rax
                        mov              rax, qword ptr [rbp + 4752]
                        mov              qword ptr [rbp + 4816], rax
                        mov              rax, qword ptr [rbp + 4760]
                        mov              qword ptr [rbp + 4824], rax
                        mov              rax, qword ptr [rbp + 4768]
                        mov              qword ptr [rbp + 4832], rax
                        mov              rax, qword ptr [rbp + 4776]
                        mov              qword ptr [rbp + 4840], rax
                        lea              rdi, [rbp + 4800]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4784], rax
                        mov              qword ptr [rbp + 4792], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx190_240
                        add              rsp, 5312
                                                                                        jmp   main_ω
.Lx190_240:
                                                                                        jmp   n16_lit_integer_α
n15_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:
                        mov              qword ptr [rbp + 4880], 3                      # result
                        mov              rax, qword ptr [rip + .Lx191_0]
                        mov              qword ptr [rbp + 4888], rax
                                                                                        jmp   n17_call_builtin_prolog_α
.Lx191_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n17_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4976]
                        mov              qword ptr [rbp + 4912], rax
                        mov              rax, qword ptr [rbp + 4984]
                        mov              qword ptr [rbp + 4920], rax
                        mov              rax, qword ptr [rbp + 4784]
                        mov              qword ptr [rbp + 4928], rax
                        mov              rax, qword ptr [rbp + 4792]
                        mov              qword ptr [rbp + 4936], rax
                        mov              rax, qword ptr [rbp + 4880]
                        mov              qword ptr [rbp + 4944], rax
                        mov              rax, qword ptr [rbp + 4888]
                        mov              qword ptr [rbp + 4952], rax
                        lea              rdi, [rbp + 4912]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4896], rax
                        mov              qword ptr [rbp + 4904], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx192_240
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
.Lx192_240:
                                                                                        jmp   n18_call_builtin_prolog_α
n17_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n18_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4896]
                        mov              qword ptr [rbp + 4736], rax
                        mov              rax, qword ptr [rbp + 4904]
                        mov              qword ptr [rbp + 4744], rax
                        .section         .rodata
.Lrkfn194:              .string          "$display"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn194]                         # fn
                        lea              rsi, [rbp + 4736]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4720], rax
                        mov              qword ptr [rbp + 4728], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx193_240
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
.Lx193_240:
                                                                                        jmp   n19_lit_string_α
n18_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:
                        mov              qword ptr [rbp + 4704], 2                      # result
                        mov              dword ptr [rbp + 4708], 0
                        mov              rax, qword ptr [rip + .Lx195_0]
                        mov              qword ptr [rbp + 4712], rax
                                                                                        jmp   n20_call_builtin_prolog_α
.Lx195_0:
                        .quad            .Lx195_0_s
.Lx195_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n20_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4704]
                        mov              qword ptr [rbp + 4688], rax
                        mov              rax, qword ptr [rbp + 4712]
                        mov              qword ptr [rbp + 4696], rax
                        .section         .rodata
.Lrkfn197:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn197]                         # fn
                        lea              rsi, [rbp + 4688]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4672], rax
                        mov              qword ptr [rbp + 4680], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx196_240
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
.Lx196_240:
                                                                                        jmp   n21_lit_string_α
n20_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_string_α:
                        mov              qword ptr [rbp + 4656], 2                      # result
                        mov              dword ptr [rbp + 4660], 1
                        mov              rax, qword ptr [rip + .Lx198_0]
                        mov              qword ptr [rbp + 4664], rax
                                                                                        jmp   n22_lit_string_α
.Lx198_0:
                        .quad            .Lx198_0_s
.Lx198_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:
                        mov              qword ptr [rbp + 4560], 2                      # result
                        mov              dword ptr [rbp + 4564], 1
                        mov              rax, qword ptr [rip + .Lx199_0]
                        mov              qword ptr [rbp + 4568], rax
                                                                                        jmp   n23_lit_string_α
.Lx199_0:
                        .quad            .Lx199_0_s
.Lx199_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:
                        mov              qword ptr [rbp + 4544], 2                      # result
                        mov              dword ptr [rbp + 4548], 1
                        mov              rax, qword ptr [rip + .Lx200_0]
                        mov              qword ptr [rbp + 4552], rax
                                                                                        jmp   n24_lit_string_α
.Lx200_0:
                        .quad            .Lx200_0_s
.Lx200_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:
                        mov              qword ptr [rbp + 4448], 2                      # result
                        mov              dword ptr [rbp + 4452], 1
                        mov              rax, qword ptr [rip + .Lx201_0]
                        mov              qword ptr [rbp + 4456], rax
                                                                                        jmp   n25_lit_string_α
.Lx201_0:
                        .quad            .Lx201_0_s
.Lx201_0_s:
                        .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:
                        mov              qword ptr [rbp + 4432], 2                      # result
                        mov              dword ptr [rbp + 4436], 1
                        mov              rax, qword ptr [rip + .Lx202_0]
                        mov              qword ptr [rbp + 4440], rax
                                                                                        jmp   n26_lit_string_α
.Lx202_0:
                        .quad            .Lx202_0_s
.Lx202_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:
                        mov              qword ptr [rbp + 4336], 2                      # result
                        mov              dword ptr [rbp + 4340], 1
                        mov              rax, qword ptr [rip + .Lx203_0]
                        mov              qword ptr [rbp + 4344], rax
                                                                                        jmp   n27_lit_string_α
.Lx203_0:
                        .quad            .Lx203_0_s
.Lx203_0_s:
                        .string          "c"
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:
                        mov              qword ptr [rbp + 4320], 2                      # result
                        mov              dword ptr [rbp + 4324], 2
                        mov              rax, qword ptr [rip + .Lx204_0]
                        mov              qword ptr [rbp + 4328], rax
                                                                                        jmp   n28_call_builtin_prolog_α
.Lx204_0:
                        .quad            .Lx204_0_s
.Lx204_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n28_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4432]
                        mov              qword ptr [rbp + 4368], rax
                        mov              rax, qword ptr [rbp + 4440]
                        mov              qword ptr [rbp + 4376], rax
                        mov              rax, qword ptr [rbp + 4336]
                        mov              qword ptr [rbp + 4384], rax
                        mov              rax, qword ptr [rbp + 4344]
                        mov              qword ptr [rbp + 4392], rax
                        mov              rax, qword ptr [rbp + 4320]
                        mov              qword ptr [rbp + 4400], rax
                        mov              rax, qword ptr [rbp + 4328]
                        mov              qword ptr [rbp + 4408], rax
                        lea              rdi, [rbp + 4368]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4352], rax
                        mov              qword ptr [rbp + 4360], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx205_240
                        add              rsp, 5312
                                                                                        jmp   main_ω
.Lx205_240:
                                                                                        jmp   n29_call_builtin_prolog_α
n28_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n29_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4544]
                        mov              qword ptr [rbp + 4480], rax
                        mov              rax, qword ptr [rbp + 4552]
                        mov              qword ptr [rbp + 4488], rax
                        mov              rax, qword ptr [rbp + 4448]
                        mov              qword ptr [rbp + 4496], rax
                        mov              rax, qword ptr [rbp + 4456]
                        mov              qword ptr [rbp + 4504], rax
                        mov              rax, qword ptr [rbp + 4352]
                        mov              qword ptr [rbp + 4512], rax
                        mov              rax, qword ptr [rbp + 4360]
                        mov              qword ptr [rbp + 4520], rax
                        lea              rdi, [rbp + 4480]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4464], rax
                        mov              qword ptr [rbp + 4472], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx206_240
                        add              rsp, 5312
                                                                                        jmp   main_ω
.Lx206_240:
                                                                                        jmp   n30_call_builtin_prolog_α
n29_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n30_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4656]
                        mov              qword ptr [rbp + 4592], rax
                        mov              rax, qword ptr [rbp + 4664]
                        mov              qword ptr [rbp + 4600], rax
                        mov              rax, qword ptr [rbp + 4560]
                        mov              qword ptr [rbp + 4608], rax
                        mov              rax, qword ptr [rbp + 4568]
                        mov              qword ptr [rbp + 4616], rax
                        mov              rax, qword ptr [rbp + 4464]
                        mov              qword ptr [rbp + 4624], rax
                        mov              rax, qword ptr [rbp + 4472]
                        mov              qword ptr [rbp + 4632], rax
                        lea              rdi, [rbp + 4592]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4576], rax
                        mov              qword ptr [rbp + 4584], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx207_240
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
.Lx207_240:
                                                                                        jmp   n31_call_builtin_prolog_α
n30_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n31_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4576]
                        mov              qword ptr [rbp + 4304], rax
                        mov              rax, qword ptr [rbp + 4584]
                        mov              qword ptr [rbp + 4312], rax
                        .section         .rodata
.Lrkfn209:              .string          "$display"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn209]                         # fn
                        lea              rsi, [rbp + 4304]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4288], rax
                        mov              qword ptr [rbp + 4296], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx208_240
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
.Lx208_240:
                                                                                        jmp   n32_lit_string_α
n31_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_string_α:
                        mov              qword ptr [rbp + 4272], 2                      # result
                        mov              dword ptr [rbp + 4276], 0
                        mov              rax, qword ptr [rip + .Lx210_0]
                        mov              qword ptr [rbp + 4280], rax
                                                                                        jmp   n33_call_builtin_prolog_α
.Lx210_0:
                        .quad            .Lx210_0_s
.Lx210_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n33_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4272]
                        mov              qword ptr [rbp + 4256], rax
                        mov              rax, qword ptr [rbp + 4280]
                        mov              qword ptr [rbp + 4264], rax
                        .section         .rodata
.Lrkfn212:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn212]                         # fn
                        lea              rsi, [rbp + 4256]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4240], rax
                        mov              qword ptr [rbp + 4248], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx211_240
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
.Lx211_240:
                                                                                        jmp   n34_lit_string_α
n33_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_string_α:
                        mov              qword ptr [rbp + 4224], 2                      # result
                        mov              dword ptr [rbp + 4228], 11
                        mov              rax, qword ptr [rip + .Lx213_0]
                        mov              qword ptr [rbp + 4232], rax
                                                                                        jmp   n35_call_builtin_prolog_α
.Lx213_0:
                        .quad            .Lx213_0_s
.Lx213_0_s:
                        .string          "hello world"
#-----------------------------------------------------------------------------------------------------------------------
n35_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4224]
                        mov              qword ptr [rbp + 4208], rax
                        mov              rax, qword ptr [rbp + 4232]
                        mov              qword ptr [rbp + 4216], rax
                        .section         .rodata
.Lrkfn215:              .string          "$display"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn215]                         # fn
                        lea              rsi, [rbp + 4208]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4192], rax
                        mov              qword ptr [rbp + 4200], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx214_240
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
.Lx214_240:
                                                                                        jmp   n36_lit_string_α
n35_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_string_α:
                        mov              qword ptr [rbp + 4176], 2                      # result
                        mov              dword ptr [rbp + 4180], 0
                        mov              rax, qword ptr [rip + .Lx216_0]
                        mov              qword ptr [rbp + 4184], rax
                                                                                        jmp   n37_call_builtin_prolog_α
.Lx216_0:
                        .quad            .Lx216_0_s
.Lx216_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n37_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4176]
                        mov              qword ptr [rbp + 4160], rax
                        mov              rax, qword ptr [rbp + 4184]
                        mov              qword ptr [rbp + 4168], rax
                        .section         .rodata
.Lrkfn218:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn218]                         # fn
                        lea              rsi, [rbp + 4160]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4144], rax
                        mov              qword ptr [rbp + 4152], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx217_240
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
.Lx217_240:
                                                                                        jmp   n38_lit_string_α
n37_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_string_α:
                        mov              qword ptr [rbp + 4128], 2                      # result
                        mov              dword ptr [rbp + 4132], 3
                        mov              rax, qword ptr [rip + .Lx219_0]
                        mov              qword ptr [rbp + 4136], rax
                                                                                        jmp   n39_call_builtin_prolog_α
.Lx219_0:
                        .quad            .Lx219_0_s
.Lx219_0_s:
                        .string          "Foo"
#-----------------------------------------------------------------------------------------------------------------------
n39_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4128]
                        mov              qword ptr [rbp + 4112], rax
                        mov              rax, qword ptr [rbp + 4136]
                        mov              qword ptr [rbp + 4120], rax
                        .section         .rodata
.Lrkfn221:              .string          "$display"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn221]                         # fn
                        lea              rsi, [rbp + 4112]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4096], rax
                        mov              qword ptr [rbp + 4104], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx220_240
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
.Lx220_240:
                                                                                        jmp   n40_lit_string_α
n39_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:
                        mov              qword ptr [rbp + 4080], 2                      # result
                        mov              dword ptr [rbp + 4084], 0
                        mov              rax, qword ptr [rip + .Lx222_0]
                        mov              qword ptr [rbp + 4088], rax
                                                                                        jmp   n41_call_builtin_prolog_α
.Lx222_0:
                        .quad            .Lx222_0_s
.Lx222_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n41_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4080]
                        mov              qword ptr [rbp + 4064], rax
                        mov              rax, qword ptr [rbp + 4088]
                        mov              qword ptr [rbp + 4072], rax
                        .section         .rodata
.Lrkfn224:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn224]                         # fn
                        lea              rsi, [rbp + 4064]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4048], rax
                        mov              qword ptr [rbp + 4056], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx223_240
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
.Lx223_240:
                                                                                        jmp   n42_lit_string_α
n41_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:
                        mov              qword ptr [rbp + 4032], 2                      # result
                        mov              dword ptr [rbp + 4036], 1
                        mov              rax, qword ptr [rip + .Lx225_0]
                        mov              qword ptr [rbp + 4040], rax
                                                                                        jmp   n43_call_builtin_prolog_α
.Lx225_0:
                        .quad            .Lx225_0_s
.Lx225_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n43_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4032]
                        mov              qword ptr [rbp + 4016], rax
                        mov              rax, qword ptr [rbp + 4040]
                        mov              qword ptr [rbp + 4024], rax
                        .section         .rodata
.Lrkfn227:              .string          "$display"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn227]                         # fn
                        lea              rsi, [rbp + 4016]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4000], rax
                        mov              qword ptr [rbp + 4008], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx226_240
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
.Lx226_240:
                                                                                        jmp   n44_lit_string_α
n43_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_string_α:
                        mov              qword ptr [rbp + 3984], 2                      # result
                        mov              dword ptr [rbp + 3988], 0
                        mov              rax, qword ptr [rip + .Lx228_0]
                        mov              qword ptr [rbp + 3992], rax
                                                                                        jmp   n45_call_builtin_prolog_α
.Lx228_0:
                        .quad            .Lx228_0_s
.Lx228_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n45_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3984]
                        mov              qword ptr [rbp + 3968], rax
                        mov              rax, qword ptr [rbp + 3992]
                        mov              qword ptr [rbp + 3976], rax
                        .section         .rodata
.Lrkfn230:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn230]                         # fn
                        lea              rsi, [rbp + 3968]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3952], rax
                        mov              qword ptr [rbp + 3960], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx229_240
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
.Lx229_240:
                                                                                        jmp   n46_lit_string_α
n45_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:
                        mov              qword ptr [rbp + 3936], 2                      # result
                        mov              dword ptr [rbp + 3940], 3
                        mov              rax, qword ptr [rip + .Lx231_0]
                        mov              qword ptr [rbp + 3944], rax
                                                                                        jmp   n47_lit_string_α
.Lx231_0:
                        .quad            .Lx231_0_s
.Lx231_0_s:
                        .string          "foo"
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_string_α:
                        mov              qword ptr [rbp + 3744], 2                      # result
                        mov              dword ptr [rbp + 3748], 3
                        mov              rax, qword ptr [rip + .Lx232_0]
                        mov              qword ptr [rbp + 3752], rax
                                                                                        jmp   n48_lit_integer_α
.Lx232_0:
                        .quad            .Lx232_0_s
.Lx232_0_s:
                        .string          "bar"
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_integer_α:
                        mov              qword ptr [rbp + 3664], 3                      # result
                        mov              rax, qword ptr [rip + .Lx233_0]
                        mov              qword ptr [rbp + 3672], rax
                                                                                        jmp   n49_call_builtin_prolog_α
.Lx233_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n49_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3744]
                        mov              qword ptr [rbp + 3696], rax
                        mov              rax, qword ptr [rbp + 3752]
                        mov              qword ptr [rbp + 3704], rax
                        mov              rax, qword ptr [rbp + 3664]
                        mov              qword ptr [rbp + 3712], rax
                        mov              rax, qword ptr [rbp + 3672]
                        mov              qword ptr [rbp + 3720], rax
                        lea              rdi, [rbp + 3696]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3680], rax
                        mov              qword ptr [rbp + 3688], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx234_240
                        add              rsp, 5312
                                                                                        jmp   main_ω
.Lx234_240:
                                                                                        jmp   n50_lit_string_α
n49_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_string_α:
                        mov              qword ptr [rbp + 3840], 2                      # result
                        mov              dword ptr [rbp + 3844], 3
                        mov              rax, qword ptr [rip + .Lx235_0]
                        mov              qword ptr [rbp + 3848], rax
                                                                                        jmp   n51_lit_integer_α
.Lx235_0:
                        .quad            .Lx235_0_s
.Lx235_0_s:
                        .string          "baz"
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_integer_α:
                        mov              qword ptr [rbp + 3760], 3                      # result
                        mov              rax, qword ptr [rip + .Lx236_0]
                        mov              qword ptr [rbp + 3768], rax
                                                                                        jmp   n52_call_builtin_prolog_α
.Lx236_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n52_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3840]
                        mov              qword ptr [rbp + 3792], rax
                        mov              rax, qword ptr [rbp + 3848]
                        mov              qword ptr [rbp + 3800], rax
                        mov              rax, qword ptr [rbp + 3760]
                        mov              qword ptr [rbp + 3808], rax
                        mov              rax, qword ptr [rbp + 3768]
                        mov              qword ptr [rbp + 3816], rax
                        lea              rdi, [rbp + 3792]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3776], rax
                        mov              qword ptr [rbp + 3784], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx237_240
                        add              rsp, 5312
                                                                                        jmp   main_ω
.Lx237_240:
                                                                                        jmp   n53_call_builtin_prolog_α
n52_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n53_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3936]
                        mov              qword ptr [rbp + 3872], rax
                        mov              rax, qword ptr [rbp + 3944]
                        mov              qword ptr [rbp + 3880], rax
                        mov              rax, qword ptr [rbp + 3680]
                        mov              qword ptr [rbp + 3888], rax
                        mov              rax, qword ptr [rbp + 3688]
                        mov              qword ptr [rbp + 3896], rax
                        mov              rax, qword ptr [rbp + 3776]
                        mov              qword ptr [rbp + 3904], rax
                        mov              rax, qword ptr [rbp + 3784]
                        mov              qword ptr [rbp + 3912], rax
                        lea              rdi, [rbp + 3872]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3856], rax
                        mov              qword ptr [rbp + 3864], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx238_240
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
.Lx238_240:
                                                                                        jmp   n54_call_builtin_prolog_α
n53_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n54_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3856]
                        mov              qword ptr [rbp + 3648], rax
                        mov              rax, qword ptr [rbp + 3864]
                        mov              qword ptr [rbp + 3656], rax
                        .section         .rodata
.Lrkfn240:              .string          "$display"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn240]                         # fn
                        lea              rsi, [rbp + 3648]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3632], rax
                        mov              qword ptr [rbp + 3640], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx239_240
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
.Lx239_240:
                                                                                        jmp   n55_lit_string_α
n54_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_string_α:
                        mov              qword ptr [rbp + 3616], 2                      # result
                        mov              dword ptr [rbp + 3620], 0
                        mov              rax, qword ptr [rip + .Lx241_0]
                        mov              qword ptr [rbp + 3624], rax
                                                                                        jmp   n56_call_builtin_prolog_α
.Lx241_0:
                        .quad            .Lx241_0_s
.Lx241_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n56_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3616]
                        mov              qword ptr [rbp + 3600], rax
                        mov              rax, qword ptr [rbp + 3624]
                        mov              qword ptr [rbp + 3608], rax
                        .section         .rodata
.Lrkfn243:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn243]                         # fn
                        lea              rsi, [rbp + 3600]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3584], rax
                        mov              qword ptr [rbp + 3592], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx242_240
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
.Lx242_240:
                                                                                        jmp   n57_lit_string_α
n56_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_string_α:
                        mov              qword ptr [rbp + 3568], 2                      # result
                        mov              dword ptr [rbp + 3572], 2
                        mov              rax, qword ptr [rip + .Lx244_0]
                        mov              qword ptr [rbp + 3576], rax
                                                                                        jmp   n58_lit_string_α
.Lx244_0:
                        .quad            .Lx244_0_s
.Lx244_0_s:
                        .string          ":-"
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_string_α:
                        mov              qword ptr [rbp + 3344], 2                      # result
                        mov              dword ptr [rbp + 3348], 1
                        mov              rax, qword ptr [rip + .Lx245_0]
                        mov              qword ptr [rbp + 3352], rax
                                                                                        jmp   n59_lit_string_α
.Lx245_0:
                        .quad            .Lx245_0_s
.Lx245_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:
                        mov              qword ptr [rbp + 3472], 2                      # result
                        mov              dword ptr [rbp + 3476], 1
                        mov              rax, qword ptr [rip + .Lx246_0]
                        mov              qword ptr [rbp + 3480], rax
                                                                                        jmp   n60_lit_string_α
.Lx246_0:
                        .quad            .Lx246_0_s
.Lx246_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:
                        mov              qword ptr [rbp + 3360], 2                      # result
                        mov              dword ptr [rbp + 3364], 1
                        mov              rax, qword ptr [rip + .Lx247_0]
                        mov              qword ptr [rbp + 3368], rax
                                                                                        jmp   n61_lit_string_α
.Lx247_0:
                        .quad            .Lx247_0_s
.Lx247_0_s:
                        .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_string_α:
                        mov              qword ptr [rbp + 3376], 2                      # result
                        mov              dword ptr [rbp + 3380], 1
                        mov              rax, qword ptr [rip + .Lx248_0]
                        mov              qword ptr [rbp + 3384], rax
                                                                                        jmp   n62_call_builtin_prolog_α
.Lx248_0:
                        .quad            .Lx248_0_s
.Lx248_0_s:
                        .string          "c"
#-----------------------------------------------------------------------------------------------------------------------
n62_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3472]
                        mov              qword ptr [rbp + 3408], rax
                        mov              rax, qword ptr [rbp + 3480]
                        mov              qword ptr [rbp + 3416], rax
                        mov              rax, qword ptr [rbp + 3360]
                        mov              qword ptr [rbp + 3424], rax
                        mov              rax, qword ptr [rbp + 3368]
                        mov              qword ptr [rbp + 3432], rax
                        mov              rax, qword ptr [rbp + 3376]
                        mov              qword ptr [rbp + 3440], rax
                        mov              rax, qword ptr [rbp + 3384]
                        mov              qword ptr [rbp + 3448], rax
                        lea              rdi, [rbp + 3408]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3392], rax
                        mov              qword ptr [rbp + 3400], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx249_240
                        add              rsp, 5312
                                                                                        jmp   main_ω
.Lx249_240:
                                                                                        jmp   n63_call_builtin_prolog_α
n62_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n63_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3568]
                        mov              qword ptr [rbp + 3504], rax
                        mov              rax, qword ptr [rbp + 3576]
                        mov              qword ptr [rbp + 3512], rax
                        mov              rax, qword ptr [rbp + 3344]
                        mov              qword ptr [rbp + 3520], rax
                        mov              rax, qword ptr [rbp + 3352]
                        mov              qword ptr [rbp + 3528], rax
                        mov              rax, qword ptr [rbp + 3392]
                        mov              qword ptr [rbp + 3536], rax
                        mov              rax, qword ptr [rbp + 3400]
                        mov              qword ptr [rbp + 3544], rax
                        lea              rdi, [rbp + 3504]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3488], rax
                        mov              qword ptr [rbp + 3496], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx250_240
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
.Lx250_240:
                                                                                        jmp   n64_call_builtin_prolog_α
n63_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n64_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3488]
                        mov              qword ptr [rbp + 3328], rax
                        mov              rax, qword ptr [rbp + 3496]
                        mov              qword ptr [rbp + 3336], rax
                        .section         .rodata
.Lrkfn252:              .string          "$display"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn252]                         # fn
                        lea              rsi, [rbp + 3328]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3312], rax
                        mov              qword ptr [rbp + 3320], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx251_240
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
.Lx251_240:
                                                                                        jmp   n65_lit_string_α
n64_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_string_α:
                        mov              qword ptr [rbp + 3296], 2                      # result
                        mov              dword ptr [rbp + 3300], 0
                        mov              rax, qword ptr [rip + .Lx253_0]
                        mov              qword ptr [rbp + 3304], rax
                                                                                        jmp   n66_call_builtin_prolog_α
.Lx253_0:
                        .quad            .Lx253_0_s
.Lx253_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n66_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 3280], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 3288], rax
                        .section         .rodata
.Lrkfn255:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn255]                         # fn
                        lea              rsi, [rbp + 3280]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3264], rax
                        mov              qword ptr [rbp + 3272], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx254_240
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
.Lx254_240:
                                                                                        jmp   n67_lit_integer_α
n66_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_integer_α:
                        mov              qword ptr [rbp + 3248], 3                      # result
                        mov              rax, qword ptr [rip + .Lx256_0]
                        mov              qword ptr [rbp + 3256], rax
                                                                                        jmp   n68_call_builtin_prolog_α
.Lx256_0:
                        .quad            18446744073709551611
#-----------------------------------------------------------------------------------------------------------------------
n68_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3248]
                        mov              qword ptr [rbp + 3232], rax
                        mov              rax, qword ptr [rbp + 3256]
                        mov              qword ptr [rbp + 3240], rax
                        .section         .rodata
.Lrkfn258:              .string          "$display"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn258]                         # fn
                        lea              rsi, [rbp + 3232]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3216], rax
                        mov              qword ptr [rbp + 3224], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx257_240
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
.Lx257_240:
                                                                                        jmp   n69_lit_string_α
n68_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_string_α:
                        mov              qword ptr [rbp + 3200], 2                      # result
                        mov              dword ptr [rbp + 3204], 0
                        mov              rax, qword ptr [rip + .Lx259_0]
                        mov              qword ptr [rbp + 3208], rax
                                                                                        jmp   n70_call_builtin_prolog_α
.Lx259_0:
                        .quad            .Lx259_0_s
.Lx259_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n70_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3200]
                        mov              qword ptr [rbp + 3184], rax
                        mov              rax, qword ptr [rbp + 3208]
                        mov              qword ptr [rbp + 3192], rax
                        .section         .rodata
.Lrkfn261:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn261]                         # fn
                        lea              rsi, [rbp + 3184]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3168], rax
                        mov              qword ptr [rbp + 3176], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx260_240
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
.Lx260_240:
                                                                                        jmp   n71_var_ref_α
n70_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n71_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5360]
                        mov              qword ptr [rbp + 2880], rax
                        mov              qword ptr [rbp + 2888], rdx
                                                                                        jmp   n72_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_string_α:
                        mov              qword ptr [rbp + 3152], 2                      # result
                        mov              dword ptr [rbp + 3156], 1
                        mov              rax, qword ptr [rip + .Lx264_0]
                        mov              qword ptr [rbp + 3160], rax
                                                                                        jmp   n73_var_ref_α
.Lx264_0:
                        .quad            .Lx264_0_s
.Lx264_0_s:
                        .string          "f"
#-----------------------------------------------------------------------------------------------------------------------
n73_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5392]
                        mov              qword ptr [rbp + 2896], rax
                        mov              qword ptr [rbp + 2904], rdx
                                                                                        jmp   n74_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n74_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5408]
                        mov              qword ptr [rbp + 2912], rax
                        mov              qword ptr [rbp + 2920], rdx
                                                                                        jmp   n75_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_string_α:
                        mov              qword ptr [rbp + 3040], 2                      # result
                        mov              dword ptr [rbp + 3044], 1
                        mov              rax, qword ptr [rip + .Lx269_0]
                        mov              qword ptr [rbp + 3048], rax
                                                                                        jmp   n76_var_ref_α
.Lx269_0:
                        .quad            .Lx269_0_s
.Lx269_0_s:
                        .string          "g"
#-----------------------------------------------------------------------------------------------------------------------
n76_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5392]
                        mov              qword ptr [rbp + 2928], rax
                        mov              qword ptr [rbp + 2936], rdx
                                                                                        jmp   n77_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n77_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5424]
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx
                                                                                        jmp   n78_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n78_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3040]
                        mov              qword ptr [rbp + 2976], rax
                        mov              rax, qword ptr [rbp + 3048]
                        mov              qword ptr [rbp + 2984], rax
                        mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 2992], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 3000], rax
                        mov              rax, qword ptr [rbp + 2944]
                        mov              qword ptr [rbp + 3008], rax
                        mov              rax, qword ptr [rbp + 2952]
                        mov              qword ptr [rbp + 3016], rax
                        lea              rdi, [rbp + 2976]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx274_240
                        add              rsp, 5312
                                                                                        jmp   main_ω
.Lx274_240:
                                                                                        jmp   n79_call_builtin_prolog_α
n78_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n79_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3152]
                        mov              qword ptr [rbp + 3072], rax
                        mov              rax, qword ptr [rbp + 3160]
                        mov              qword ptr [rbp + 3080], rax
                        mov              rax, qword ptr [rbp + 2896]
                        mov              qword ptr [rbp + 3088], rax
                        mov              rax, qword ptr [rbp + 2904]
                        mov              qword ptr [rbp + 3096], rax
                        mov              rax, qword ptr [rbp + 2912]
                        mov              qword ptr [rbp + 3104], rax
                        mov              rax, qword ptr [rbp + 2920]
                        mov              qword ptr [rbp + 3112], rax
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 3120], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 3128], rax
                        lea              rdi, [rbp + 3072]
                        mov              esi, 4
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3056], rax
                        mov              qword ptr [rbp + 3064], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx275_240
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
.Lx275_240:
                                                                                        jmp   n80_call_builtin_prolog_α
n79_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n80_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2880]
                        mov              qword ptr [rbp + 2848], rax
                        mov              rax, qword ptr [rbp + 2888]
                        mov              qword ptr [rbp + 2856], rax
                        mov              rax, qword ptr [rbp + 3056]
                        mov              qword ptr [rbp + 2864], rax
                        mov              rax, qword ptr [rbp + 3064]
                        mov              qword ptr [rbp + 2872], rax
                        lea              rdi, [rbp + 2848]
                        lea              r8, [rbp + 2848]
.Lx276_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx276_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx276_41
                        cmp              esi, 1
                                                                                        jne   .Lx276_55
                        mov              r8, rax
                                                                                        jmp   .Lx276_40
.Lx276_55:
                        cmp              esi, 2
                                                                                        jne   .Lx276_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx276_41
                        mov              r8, rax
                                                                                        jmp   .Lx276_40
.Lx276_56:
                        cmp              eax, 72
                                                                                        jne   .Lx276_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx276_41
                        cmp              rax, r8
                                                                                        je    .Lx276_41
                        mov              r8, rax
                                                                                        jmp   .Lx276_40
.Lx276_41:
                        lea              r9, [rbp + 2864]
.Lx276_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx276_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx276_43
                        cmp              esi, 1
                                                                                        jne   .Lx276_57
                        mov              r9, rax
                                                                                        jmp   .Lx276_42
.Lx276_57:
                        cmp              esi, 2
                                                                                        jne   .Lx276_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx276_43
                        mov              r9, rax
                                                                                        jmp   .Lx276_42
.Lx276_58:
                        cmp              eax, 72
                                                                                        jne   .Lx276_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx276_43
                        cmp              rax, r9
                                                                                        je    .Lx276_43
                        mov              r9, rax
                                                                                        jmp   .Lx276_42
.Lx276_43:
                        cmp              r8, r9
                                                                                        je    .Lx276_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx276_44
                        cmp              eax, 104
                                                                                        je    .Lx276_44
                        cmp              eax, 72
                                                                                        jne   .Lx276_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx276_44
                                                                                        jmp   .Lx276_45
.Lx276_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx276_53
                        cmp              eax, 104
                                                                                        je    .Lx276_53
                        cmp              eax, 72
                                                                                        jne   .Lx276_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx276_53
                                                                                        jmp   .Lx276_46
.Lx276_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx276_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx276_53
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
                                                                                        jmp   .Lx276_51
.Lx276_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx276_47
                        cmp              eax, 104
                                                                                        je    .Lx276_47
                        cmp              eax, 72
                                                                                        jne   .Lx276_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx276_47
                                                                                        jmp   .Lx276_48
.Lx276_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx276_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx276_53
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
                                                                                        jmp   .Lx276_51
.Lx276_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx276_49
                        cmp              edx, 80
                                                                                        je    .Lx276_53
                                                                                        jmp   .Lx276_52
.Lx276_49:
                        cmp              edx, 80
                                                                                        je    .Lx276_52
                        cmp              ecx, 5
                                                                                        je    .Lx276_53
                        cmp              edx, 5
                                                                                        je    .Lx276_53
                        cmp              ecx, 3
                                                                                        jne   .Lx276_50
                        cmp              edx, 3
                                                                                        jne   .Lx276_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx276_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx276_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx276_51
                                                                                        jmp   .Lx276_52
.Lx276_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx276_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx276_53
.Lx276_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx276_54
.Lx276_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx276_54
.Lx276_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx276_54:
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx276_240
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
.Lx276_240:
                                                                                        jmp   n81_var_ref_α
n80_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n81_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5360]
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx
                                                                                        jmp   n82_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_integer_α:
                        mov              qword ptr [rbp + 2800], 3                      # result
                        mov              rax, qword ptr [rip + .Lx279_0]
                        mov              qword ptr [rbp + 2808], rax
                                                                                        jmp   n83_var_ref_α
.Lx279_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n83_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5376]
                        mov              qword ptr [rbp + 2816], rax
                        mov              qword ptr [rbp + 2824], rdx
                                                                                        jmp   n84_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n84_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2784]
                        mov              qword ptr [rbp + 2736], rax
                        mov              rax, qword ptr [rbp + 2792]
                        mov              qword ptr [rbp + 2744], rax
                        mov              rax, qword ptr [rbp + 2800]
                        mov              qword ptr [rbp + 2752], rax
                        mov              rax, qword ptr [rbp + 2808]
                        mov              qword ptr [rbp + 2760], rax
                        mov              rax, qword ptr [rbp + 2816]
                        mov              qword ptr [rbp + 2768], rax
                        mov              rax, qword ptr [rbp + 2824]
                        mov              qword ptr [rbp + 2776], rax
                        .section         .rodata
.Lrkfn283:              .string          "$numbervars"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn283]                         # fn
                        lea              rsi, [rbp + 2736]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2720], rax
                        mov              qword ptr [rbp + 2728], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx282_240
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
.Lx282_240:
                                                                                        jmp   n85_var_ref_α
n84_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n85_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5360]
                        mov              qword ptr [rbp + 2704], rax
                        mov              qword ptr [rbp + 2712], rdx
                                                                                        jmp   n86_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n86_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 2688], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 2696], rax
                        .section         .rodata
.Lrkfn287:              .string          "$display"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn287]                         # fn
                        lea              rsi, [rbp + 2688]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx286_240
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
.Lx286_240:
                                                                                        jmp   n87_lit_string_α
n86_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_string_α:
                        mov              qword ptr [rbp + 2656], 2                      # result
                        mov              dword ptr [rbp + 2660], 0
                        mov              rax, qword ptr [rip + .Lx288_0]
                        mov              qword ptr [rbp + 2664], rax
                                                                                        jmp   n88_call_builtin_prolog_α
.Lx288_0:
                        .quad            .Lx288_0_s
.Lx288_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n88_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 2640], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 2648], rax
                        .section         .rodata
.Lrkfn290:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn290]                         # fn
                        lea              rsi, [rbp + 2640]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx289_240
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
.Lx289_240:
                                                                                        jmp   n89_var_ref_α
n88_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n89_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5312]
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx
                                                                                        jmp   n90_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_string_α:
                        mov              qword ptr [rbp + 2608], 2                      # result
                        mov              dword ptr [rbp + 2612], 1
                        mov              rax, qword ptr [rip + .Lx293_0]
                        mov              qword ptr [rbp + 2616], rax
                                                                                        jmp   n91_lit_string_α
.Lx293_0:
                        .quad            .Lx293_0_s
.Lx293_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_string_α:
                        mov              qword ptr [rbp + 2512], 2                      # result
                        mov              dword ptr [rbp + 2516], 1
                        mov              rax, qword ptr [rip + .Lx294_0]
                        mov              qword ptr [rbp + 2520], rax
                                                                                        jmp   n92_lit_string_α
.Lx294_0:
                        .quad            .Lx294_0_s
.Lx294_0_s:
                        .string          "p"
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_string_α:
                        mov              qword ptr [rbp + 2496], 2                      # result
                        mov              dword ptr [rbp + 2500], 1
                        mov              rax, qword ptr [rip + .Lx295_0]
                        mov              qword ptr [rbp + 2504], rax
                                                                                        jmp   n93_lit_string_α
.Lx295_0:
                        .quad            .Lx295_0_s
.Lx295_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_string_α:
                        mov              qword ptr [rbp + 2400], 2                      # result
                        mov              dword ptr [rbp + 2404], 1
                        mov              rax, qword ptr [rip + .Lx296_0]
                        mov              qword ptr [rbp + 2408], rax
                                                                                        jmp   n94_var_ref_α
.Lx296_0:
                        .quad            .Lx296_0_s
.Lx296_0_s:
                        .string          "q"
#-----------------------------------------------------------------------------------------------------------------------
n94_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5344]
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx
                                                                                        jmp   n95_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n95_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 2432], rax
                        mov              rax, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 2440], rax
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 2448], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 2456], rax
                        mov              rax, qword ptr [rbp + 2384]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 2392]
                        mov              qword ptr [rbp + 2472], rax
                        lea              rdi, [rbp + 2432]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx299_240
                        add              rsp, 5312
                                                                                        jmp   main_ω
.Lx299_240:
                                                                                        jmp   n96_call_builtin_prolog_α
n95_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n96_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 2544], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 2552], rax
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 2560], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 2568], rax
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2576], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2584], rax
                        lea              rdi, [rbp + 2544]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx300_240
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
.Lx300_240:
                                                                                        jmp   n97_call_builtin_prolog_α
n96_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n97_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 2336], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 2344], rax
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [rbp + 2360], rax
                        lea              rdi, [rbp + 2336]
                        lea              r8, [rbp + 2336]
.Lx301_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx301_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx301_41
                        cmp              esi, 1
                                                                                        jne   .Lx301_55
                        mov              r8, rax
                                                                                        jmp   .Lx301_40
.Lx301_55:
                        cmp              esi, 2
                                                                                        jne   .Lx301_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx301_41
                        mov              r8, rax
                                                                                        jmp   .Lx301_40
.Lx301_56:
                        cmp              eax, 72
                                                                                        jne   .Lx301_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx301_41
                        cmp              rax, r8
                                                                                        je    .Lx301_41
                        mov              r8, rax
                                                                                        jmp   .Lx301_40
.Lx301_41:
                        lea              r9, [rbp + 2352]
.Lx301_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx301_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx301_43
                        cmp              esi, 1
                                                                                        jne   .Lx301_57
                        mov              r9, rax
                                                                                        jmp   .Lx301_42
.Lx301_57:
                        cmp              esi, 2
                                                                                        jne   .Lx301_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx301_43
                        mov              r9, rax
                                                                                        jmp   .Lx301_42
.Lx301_58:
                        cmp              eax, 72
                                                                                        jne   .Lx301_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx301_43
                        cmp              rax, r9
                                                                                        je    .Lx301_43
                        mov              r9, rax
                                                                                        jmp   .Lx301_42
.Lx301_43:
                        cmp              r8, r9
                                                                                        je    .Lx301_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx301_44
                        cmp              eax, 104
                                                                                        je    .Lx301_44
                        cmp              eax, 72
                                                                                        jne   .Lx301_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx301_44
                                                                                        jmp   .Lx301_45
.Lx301_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx301_53
                        cmp              eax, 104
                                                                                        je    .Lx301_53
                        cmp              eax, 72
                                                                                        jne   .Lx301_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx301_53
                                                                                        jmp   .Lx301_46
.Lx301_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx301_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx301_53
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
                                                                                        jmp   .Lx301_51
.Lx301_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx301_47
                        cmp              eax, 104
                                                                                        je    .Lx301_47
                        cmp              eax, 72
                                                                                        jne   .Lx301_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx301_47
                                                                                        jmp   .Lx301_48
.Lx301_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx301_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx301_53
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
                                                                                        jmp   .Lx301_51
.Lx301_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx301_49
                        cmp              edx, 80
                                                                                        je    .Lx301_53
                                                                                        jmp   .Lx301_52
.Lx301_49:
                        cmp              edx, 80
                                                                                        je    .Lx301_52
                        cmp              ecx, 5
                                                                                        je    .Lx301_53
                        cmp              edx, 5
                                                                                        je    .Lx301_53
                        cmp              ecx, 3
                                                                                        jne   .Lx301_50
                        cmp              edx, 3
                                                                                        jne   .Lx301_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx301_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx301_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx301_51
                                                                                        jmp   .Lx301_52
.Lx301_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx301_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx301_53
.Lx301_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx301_54
.Lx301_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx301_54
.Lx301_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx301_54:
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx301_240
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
.Lx301_240:
                                                                                        jmp   n98_var_ref_α
n97_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n98_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5312]
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                                                                                        jmp   n99_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_integer_α:
                        mov              qword ptr [rbp + 2288], 3                      # result
                        mov              rax, qword ptr [rip + .Lx304_0]
                        mov              qword ptr [rbp + 2296], rax
                                                                                        jmp   n100_var_ref_α
.Lx304_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n100_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5328]
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                                                                                        jmp   n101_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n101_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 2232], rax
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 2248], rax
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 2256], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 2264], rax
                        .section         .rodata
.Lrkfn308:              .string          "$numbervars"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn308]                         # fn
                        lea              rsi, [rbp + 2224]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx307_240
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
.Lx307_240:
                                                                                        jmp   n102_var_ref_α
n101_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n102_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5312]
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                                                                                        jmp   n103_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n103_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 2184], rax
                        .section         .rodata
.Lrkfn312:              .string          "$display"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn312]                         # fn
                        lea              rsi, [rbp + 2176]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx311_240
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
.Lx311_240:
                                                                                        jmp   n104_lit_string_α
n103_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_string_α:
                        mov              qword ptr [rbp + 2144], 2                      # result
                        mov              dword ptr [rbp + 2148], 0
                        mov              rax, qword ptr [rip + .Lx313_0]
                        mov              qword ptr [rbp + 2152], rax
                                                                                        jmp   n105_call_builtin_prolog_α
.Lx313_0:
                        .quad            .Lx313_0_s
.Lx313_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n105_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 2128], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2136], rax
                        .section         .rodata
.Lrkfn315:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn315]                         # fn
                        lea              rsi, [rbp + 2128]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx314_240
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
.Lx314_240:
                                                                                        jmp   n106_lit_string_α
n105_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_string_α:
                        mov              qword ptr [rbp + 2000], 2                      # result
                        mov              dword ptr [rbp + 2004], 11
                        mov              rax, qword ptr [rip + .Lx316_0]
                        mov              qword ptr [rbp + 2008], rax
                                                                                        jmp   n107_lit_string_α
.Lx316_0:
                        .quad            .Lx316_0_s
.Lx316_0_s:
                        .string          "user_output"
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_string_α:
                        mov              qword ptr [rbp + 2096], 2                      # result
                        mov              dword ptr [rbp + 2100], 5
                        mov              rax, qword ptr [rip + .Lx317_0]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n108_lit_string_α
.Lx317_0:
                        .quad            .Lx317_0_s
.Lx317_0_s:
                        .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_string_α:
                        mov              qword ptr [rbp + 2016], 2                      # result
                        mov              dword ptr [rbp + 2020], 5
                        mov              rax, qword ptr [rip + .Lx318_0]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   n109_call_builtin_prolog_α
.Lx318_0:
                        .quad            .Lx318_0_s
.Lx318_0_s:
                        .string          "world"
#-----------------------------------------------------------------------------------------------------------------------
n109_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2056], rax
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 2072], rax
                        lea              rdi, [rbp + 2048]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx319_240
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
.Lx319_240:
                                                                                        jmp   n110_call_builtin_prolog_α
n109_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n110_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 1976], rax
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 1992], rax
                        .section         .rodata
.Lrkfn321:              .string          "$display2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn321]                         # fn
                        lea              rsi, [rbp + 1968]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx320_240
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
.Lx320_240:
                                                                                        jmp   n111_lit_string_α
n110_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n111_lit_string_α:
                        mov              qword ptr [rbp + 1936], 2                      # result
                        mov              dword ptr [rbp + 1940], 0
                        mov              rax, qword ptr [rip + .Lx322_0]
                        mov              qword ptr [rbp + 1944], rax
                                                                                        jmp   n112_call_builtin_prolog_α
.Lx322_0:
                        .quad            .Lx322_0_s
.Lx322_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n112_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1928], rax
                        .section         .rodata
.Lrkfn324:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn324]                         # fn
                        lea              rsi, [rbp + 1920]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx323_240
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
.Lx323_240:
                                                                                        jmp   n113_lit_string_α
n112_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_string_α:
                        mov              qword ptr [rbp + 1888], 2                      # result
                        mov              dword ptr [rbp + 1892], 1
                        mov              rax, qword ptr [rip + .Lx325_0]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n114_lit_integer_α
.Lx325_0:
                        .quad            .Lx325_0_s
.Lx325_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_integer_α:
                        mov              qword ptr [rbp + 1664], 3                      # result
                        mov              rax, qword ptr [rip + .Lx326_0]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n115_lit_string_α
.Lx326_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_string_α:
                        mov              qword ptr [rbp + 1792], 2                      # result
                        mov              dword ptr [rbp + 1796], 1
                        mov              rax, qword ptr [rip + .Lx327_0]
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n116_lit_integer_α
.Lx327_0:
                        .quad            .Lx327_0_s
.Lx327_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_integer_α:
                        mov              qword ptr [rbp + 1680], 3                      # result
                        mov              rax, qword ptr [rip + .Lx328_0]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n117_lit_integer_α
.Lx328_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_integer_α:
                        mov              qword ptr [rbp + 1696], 3                      # result
                        mov              rax, qword ptr [rip + .Lx329_0]
                        mov              qword ptr [rbp + 1704], rax
                                                                                        jmp   n118_call_builtin_prolog_α
.Lx329_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n118_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1736], rax
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1752], rax
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1768], rax
                        lea              rdi, [rbp + 1728]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx330_240
                        add              rsp, 5312
                                                                                        jmp   main_ω
.Lx330_240:
                                                                                        jmp   n119_call_builtin_prolog_α
n118_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n119_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 1832], rax
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1848], rax
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1864], rax
                        lea              rdi, [rbp + 1824]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx331_240
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
.Lx331_240:
                                                                                        jmp   n120_call_builtin_prolog_α
n119_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n120_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1656], rax
                        .section         .rodata
.Lrkfn333:              .string          "$print"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn333]                         # fn
                        lea              rsi, [rbp + 1648]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx332_240
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
.Lx332_240:
                                                                                        jmp   n121_lit_string_α
n120_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n121_lit_string_α:
                        mov              qword ptr [rbp + 1616], 2                      # result
                        mov              dword ptr [rbp + 1620], 0
                        mov              rax, qword ptr [rip + .Lx334_0]
                        mov              qword ptr [rbp + 1624], rax
                                                                                        jmp   n122_call_builtin_prolog_α
.Lx334_0:
                        .quad            .Lx334_0_s
.Lx334_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n122_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1608], rax
                        .section         .rodata
.Lrkfn336:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn336]                         # fn
                        lea              rsi, [rbp + 1600]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx335_240
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
.Lx335_240:
                                                                                        jmp   n123_lit_string_α
n122_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n123_lit_string_α:
                        mov              qword ptr [rbp + 1568], 2                      # result
                        mov              dword ptr [rbp + 1572], 1
                        mov              rax, qword ptr [rip + .Lx337_0]
                        mov              qword ptr [rbp + 1576], rax
                                                                                        jmp   n124_lit_string_α
.Lx337_0:
                        .quad            .Lx337_0_s
.Lx337_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_string_α:
                        mov              qword ptr [rbp + 1472], 2                      # result
                        mov              dword ptr [rbp + 1476], 1
                        mov              rax, qword ptr [rip + .Lx338_0]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   n125_lit_string_α
.Lx338_0:
                        .quad            .Lx338_0_s
.Lx338_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_string_α:
                        mov              qword ptr [rbp + 1456], 2                      # result
                        mov              dword ptr [rbp + 1460], 1
                        mov              rax, qword ptr [rip + .Lx339_0]
                        mov              qword ptr [rbp + 1464], rax
                                                                                        jmp   n126_lit_string_α
.Lx339_0:
                        .quad            .Lx339_0_s
.Lx339_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_string_α:
                        mov              qword ptr [rbp + 1360], 2                      # result
                        mov              dword ptr [rbp + 1364], 1
                        mov              rax, qword ptr [rip + .Lx340_0]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n127_lit_string_α
.Lx340_0:
                        .quad            .Lx340_0_s
.Lx340_0_s:
                        .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_string_α:
                        mov              qword ptr [rbp + 1344], 2                      # result
                        mov              dword ptr [rbp + 1348], 1
                        mov              rax, qword ptr [rip + .Lx341_0]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n128_lit_string_α
.Lx341_0:
                        .quad            .Lx341_0_s
.Lx341_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_string_α:
                        mov              qword ptr [rbp + 1248], 2                      # result
                        mov              dword ptr [rbp + 1252], 1
                        mov              rax, qword ptr [rip + .Lx342_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n129_lit_string_α
.Lx342_0:
                        .quad            .Lx342_0_s
.Lx342_0_s:
                        .string          "c"
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_string_α:
                        mov              qword ptr [rbp + 1232], 2                      # result
                        mov              dword ptr [rbp + 1236], 2
                        mov              rax, qword ptr [rip + .Lx343_0]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n130_call_builtin_prolog_α
.Lx343_0:
                        .quad            .Lx343_0_s
.Lx343_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n130_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1288], rax
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1304], rax
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1320], rax
                        lea              rdi, [rbp + 1280]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx344_240
                        add              rsp, 5312
                                                                                        jmp   main_ω
.Lx344_240:
                                                                                        jmp   n131_call_builtin_prolog_α
n130_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n131_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1400], rax
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1416], rax
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1432], rax
                        lea              rdi, [rbp + 1392]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx345_240
                        add              rsp, 5312
                                                                                        jmp   main_ω
.Lx345_240:
                                                                                        jmp   n132_call_builtin_prolog_α
n131_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n132_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1512], rax
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1528], rax
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1544], rax
                        lea              rdi, [rbp + 1504]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx346_240
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
.Lx346_240:
                                                                                        jmp   n133_call_builtin_prolog_α
n132_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n133_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1224], rax
                        .section         .rodata
.Lrkfn348:              .string          "$print"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn348]                         # fn
                        lea              rsi, [rbp + 1216]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx347_240
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
.Lx347_240:
                                                                                        jmp   n134_lit_string_α
n133_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n134_lit_string_α:
                        mov              qword ptr [rbp + 1184], 2                      # result
                        mov              dword ptr [rbp + 1188], 0
                        mov              rax, qword ptr [rip + .Lx349_0]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n135_call_builtin_prolog_α
.Lx349_0:
                        .quad            .Lx349_0_s
.Lx349_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n135_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1176], rax
                        .section         .rodata
.Lrkfn351:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn351]                         # fn
                        lea              rsi, [rbp + 1168]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx350_240
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
.Lx350_240:
                                                                                        jmp   n136_lit_string_α
n135_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n136_lit_string_α:
                        mov              qword ptr [rbp + 1136], 2                      # result
                        mov              dword ptr [rbp + 1140], 11
                        mov              rax, qword ptr [rip + .Lx352_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n137_call_builtin_prolog_α
.Lx352_0:
                        .quad            .Lx352_0_s
.Lx352_0_s:
                        .string          "hello world"
#-----------------------------------------------------------------------------------------------------------------------
n137_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1128], rax
                        .section         .rodata
.Lrkfn354:              .string          "$print"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn354]                         # fn
                        lea              rsi, [rbp + 1120]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx353_240
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
.Lx353_240:
                                                                                        jmp   n138_lit_string_α
n137_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_string_α:
                        mov              qword ptr [rbp + 1088], 2                      # result
                        mov              dword ptr [rbp + 1092], 0
                        mov              rax, qword ptr [rip + .Lx355_0]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n139_call_builtin_prolog_α
.Lx355_0:
                        .quad            .Lx355_0_s
.Lx355_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n139_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1080], rax
                        .section         .rodata
.Lrkfn357:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn357]                         # fn
                        lea              rsi, [rbp + 1072]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx356_240
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
.Lx356_240:
                                                                                        jmp   n140_lit_string_α
n139_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n140_lit_string_α:
                        mov              qword ptr [rbp + 1040], 2                      # result
                        mov              dword ptr [rbp + 1044], 3
                        mov              rax, qword ptr [rip + .Lx358_0]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n141_lit_string_α
.Lx358_0:
                        .quad            .Lx358_0_s
.Lx358_0_s:
                        .string          "foo"
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_string_α:
                        mov              qword ptr [rbp + 848], 2                       # result
                        mov              dword ptr [rbp + 852], 3
                        mov              rax, qword ptr [rip + .Lx359_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n142_lit_integer_α
.Lx359_0:
                        .quad            .Lx359_0_s
.Lx359_0_s:
                        .string          "bar"
#-----------------------------------------------------------------------------------------------------------------------
n142_lit_integer_α:
                        mov              qword ptr [rbp + 768], 3                       # result
                        mov              rax, qword ptr [rip + .Lx360_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n143_call_builtin_prolog_α
.Lx360_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n143_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 808], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 824], rax
                        lea              rdi, [rbp + 800]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx361_240
                        add              rsp, 5312
                                                                                        jmp   main_ω
.Lx361_240:
                                                                                        jmp   n144_lit_string_α
n143_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n144_lit_string_α:
                        mov              qword ptr [rbp + 944], 2                       # result
                        mov              dword ptr [rbp + 948], 3
                        mov              rax, qword ptr [rip + .Lx362_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n145_lit_integer_α
.Lx362_0:
                        .quad            .Lx362_0_s
.Lx362_0_s:
                        .string          "baz"
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_integer_α:
                        mov              qword ptr [rbp + 864], 3                       # result
                        mov              rax, qword ptr [rip + .Lx363_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n146_call_builtin_prolog_α
.Lx363_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n146_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 920], rax
                        lea              rdi, [rbp + 896]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx364_240
                        add              rsp, 5312
                                                                                        jmp   main_ω
.Lx364_240:
                                                                                        jmp   n147_call_builtin_prolog_α
n146_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n147_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 984], rax
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 1000], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 1016], rax
                        lea              rdi, [rbp + 976]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx365_240
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
.Lx365_240:
                                                                                        jmp   n148_call_builtin_prolog_α
n147_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n148_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 760], rax
                        .section         .rodata
.Lrkfn367:              .string          "$print"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn367]                         # fn
                        lea              rsi, [rbp + 752]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx366_240
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
.Lx366_240:
                                                                                        jmp   n149_lit_string_α
n148_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n149_lit_string_α:
                        mov              qword ptr [rbp + 720], 2                       # result
                        mov              dword ptr [rbp + 724], 0
                        mov              rax, qword ptr [rip + .Lx368_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n150_call_builtin_prolog_α
.Lx368_0:
                        .quad            .Lx368_0_s
.Lx368_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n150_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 712], rax
                        .section         .rodata
.Lrkfn370:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn370]                         # fn
                        lea              rsi, [rbp + 704]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx369_240
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
.Lx369_240:
                                                                                        jmp   n151_lit_string_α
n150_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n151_lit_string_α:
                        mov              qword ptr [rbp + 320], 2                       # result
                        mov              dword ptr [rbp + 324], 11
                        mov              rax, qword ptr [rip + .Lx371_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n152_lit_string_α
.Lx371_0:
                        .quad            .Lx371_0_s
.Lx371_0_s:
                        .string          "user_output"
#-----------------------------------------------------------------------------------------------------------------------
n152_lit_string_α:
                        mov              qword ptr [rbp + 672], 2                       # result
                        mov              dword ptr [rbp + 676], 1
                        mov              rax, qword ptr [rip + .Lx372_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n153_lit_string_α
.Lx372_0:
                        .quad            .Lx372_0_s
.Lx372_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_string_α:
                        mov              qword ptr [rbp + 576], 2                       # result
                        mov              dword ptr [rbp + 580], 1
                        mov              rax, qword ptr [rip + .Lx373_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n154_lit_string_α
.Lx373_0:
                        .quad            .Lx373_0_s
.Lx373_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n154_lit_string_α:
                        mov              qword ptr [rbp + 560], 2                       # result
                        mov              dword ptr [rbp + 564], 1
                        mov              rax, qword ptr [rip + .Lx374_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n155_lit_string_α
.Lx374_0:
                        .quad            .Lx374_0_s
.Lx374_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_string_α:
                        mov              qword ptr [rbp + 464], 2                       # result
                        mov              dword ptr [rbp + 468], 1
                        mov              rax, qword ptr [rip + .Lx375_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n156_lit_string_α
.Lx375_0:
                        .quad            .Lx375_0_s
.Lx375_0_s:
                        .string          "y"
#-----------------------------------------------------------------------------------------------------------------------
n156_lit_string_α:
                        mov              qword ptr [rbp + 448], 2                       # result
                        mov              dword ptr [rbp + 452], 1
                        mov              rax, qword ptr [rip + .Lx376_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n157_lit_string_α
.Lx376_0:
                        .quad            .Lx376_0_s
.Lx376_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n157_lit_string_α:
                        mov              qword ptr [rbp + 352], 2                       # result
                        mov              dword ptr [rbp + 356], 1
                        mov              rax, qword ptr [rip + .Lx377_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n158_lit_string_α
.Lx377_0:
                        .quad            .Lx377_0_s
.Lx377_0_s:
                        .string          "z"
#-----------------------------------------------------------------------------------------------------------------------
n158_lit_string_α:
                        mov              qword ptr [rbp + 336], 2                       # result
                        mov              dword ptr [rbp + 340], 2
                        mov              rax, qword ptr [rip + .Lx378_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n159_call_builtin_prolog_α
.Lx378_0:
                        .quad            .Lx378_0_s
.Lx378_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n159_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 392], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 424], rax
                        lea              rdi, [rbp + 384]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx379_240
                        add              rsp, 5312
                                                                                        jmp   main_ω
.Lx379_240:
                                                                                        jmp   n160_call_builtin_prolog_α
n159_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n160_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 536], rax
                        lea              rdi, [rbp + 496]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx380_240
                        add              rsp, 5312
                                                                                        jmp   main_ω
.Lx380_240:
                                                                                        jmp   n161_call_builtin_prolog_α
n160_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n161_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 648], rax
                        lea              rdi, [rbp + 608]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx381_240
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
.Lx381_240:
                                                                                        jmp   n162_call_builtin_prolog_α
n161_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n162_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 312], rax
                        .section         .rodata
.Lrkfn383:              .string          "$print2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn383]                         # fn
                        lea              rsi, [rbp + 288]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx382_240
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
.Lx382_240:
                                                                                        jmp   n163_lit_string_α
n162_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n163_lit_string_α:
                        mov              qword ptr [rbp + 256], 2                       # result
                        mov              dword ptr [rbp + 260], 0
                        mov              rax, qword ptr [rip + .Lx384_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n164_call_builtin_prolog_α
.Lx384_0:
                        .quad            .Lx384_0_s
.Lx384_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n164_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 248], rax
                        .section         .rodata
.Lrkfn386:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn386]                         # fn
                        lea              rsi, [rbp + 240]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx385_240
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
.Lx385_240:
                                                                                        jmp   n165_lit_string_α
n164_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_string_α:
                        mov              qword ptr [rbp + 208], 2                       # result
                        mov              dword ptr [rbp + 212], 4
                        mov              rax, qword ptr [rip + .Lx387_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n166_call_builtin_prolog_α
.Lx387_0:
                        .quad            .Lx387_0_s
.Lx387_0_s:
                        .string          "done"
#-----------------------------------------------------------------------------------------------------------------------
n166_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn389:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn389]                         # fn
                        lea              rsi, [rbp + 192]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx388_240
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
.Lx388_240:
                                                                                        jmp   n167_lit_string_α
n166_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n167_lit_string_α:
                        mov              qword ptr [rbp + 160], 2                       # result
                        mov              dword ptr [rbp + 164], 0
                        mov              rax, qword ptr [rip + .Lx390_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n168_call_builtin_prolog_α
.Lx390_0:
                        .quad            .Lx390_0_s
.Lx390_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n168_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 152], rax
                        .section         .rodata
.Lrkfn392:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn392]                         # fn
                        lea              rsi, [rbp + 144]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx391_240
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
.Lx391_240:
                                                                                        jmp   n169_call_proc_staged_α
n168_call_builtin_prolog_β:
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n169_call_proc_staged_α:
                        mov              rdi, qword ptr [rip + .Lx394_0]                # name
                        mov              esi, 0                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx394_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx394_3]
                        lea              rdx, [rip + .Lx394_4]
                                                                                        jmp   rax
.Lx394_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx394_2
.Lx394_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx394_2
.Lx394_1:
                        call             rt_faildescr@PLT
.Lx394_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx394_240
                        add              rsp, 5312
                                                                                        jmp   n172_call_builtin_prolog_α
.Lx394_240:
                                                                                        jmp   n170_move_label_α
n169_call_proc_staged_β:
                                                                                        jmp   n172_call_builtin_prolog_α
.Lx394_0:
                        .quad            .Lx394_0_s
.Lx394_0_s:
                        .string          "halt/0"
#-----------------------------------------------------------------------------------------------------------------------
n170_move_label_α:
                        lea              rax, [rip + n169_call_proc_staged_β]
                        mov              qword ptr [rbp + 16], rax
                        add              rsp, 5312
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n171_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n171_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n172_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 80]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 104
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n172_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n171_disjunction_α
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
