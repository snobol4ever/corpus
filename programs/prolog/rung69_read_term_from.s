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
                        sub              rsp, 6304
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
                        mov              qword ptr [rsp + 5312], 0
                        mov              qword ptr [rsp + 5320], 0
                        mov              qword ptr [rsp + 5328], 0
                        mov              qword ptr [rsp + 5336], 0
                        mov              qword ptr [rsp + 5344], 0
                        mov              qword ptr [rsp + 5352], 0
                        mov              qword ptr [rsp + 5360], 0
                        mov              qword ptr [rsp + 5368], 0
                        mov              qword ptr [rsp + 5376], 0
                        mov              qword ptr [rsp + 5384], 0
                        mov              qword ptr [rsp + 5392], 0
                        mov              qword ptr [rsp + 5400], 0
                        mov              qword ptr [rsp + 5408], 0
                        mov              qword ptr [rsp + 5416], 0
                        mov              qword ptr [rsp + 5424], 0
                        mov              qword ptr [rsp + 5432], 0
                        mov              qword ptr [rsp + 5440], 0
                        mov              qword ptr [rsp + 5448], 0
                        mov              qword ptr [rsp + 5456], 0
                        mov              qword ptr [rsp + 5464], 0
                        mov              qword ptr [rsp + 5472], 0
                        mov              qword ptr [rsp + 5480], 0
                        mov              qword ptr [rsp + 5488], 0
                        mov              qword ptr [rsp + 5496], 0
                        mov              qword ptr [rsp + 5504], 0
                        mov              qword ptr [rsp + 5512], 0
                        mov              qword ptr [rsp + 5520], 0
                        mov              qword ptr [rsp + 5528], 0
                        mov              qword ptr [rsp + 5536], 0
                        mov              qword ptr [rsp + 5544], 0
                        mov              qword ptr [rsp + 5552], 0
                        mov              qword ptr [rsp + 5560], 0
                        mov              qword ptr [rsp + 5568], 0
                        mov              qword ptr [rsp + 5576], 0
                        mov              qword ptr [rsp + 5584], 0
                        mov              qword ptr [rsp + 5592], 0
                        mov              qword ptr [rsp + 5600], 0
                        mov              qword ptr [rsp + 5608], 0
                        mov              qword ptr [rsp + 5616], 0
                        mov              qword ptr [rsp + 5624], 0
                        mov              qword ptr [rsp + 5632], 0
                        mov              qword ptr [rsp + 5640], 0
                        mov              qword ptr [rsp + 5648], 0
                        mov              qword ptr [rsp + 5656], 0
                        mov              qword ptr [rsp + 5664], 0
                        mov              qword ptr [rsp + 5672], 0
                        mov              qword ptr [rsp + 5680], 0
                        mov              qword ptr [rsp + 5688], 0
                        mov              qword ptr [rsp + 5696], 0
                        mov              qword ptr [rsp + 5704], 0
                        mov              qword ptr [rsp + 5712], 0
                        mov              qword ptr [rsp + 5720], 0
                        mov              qword ptr [rsp + 5728], 0
                        mov              qword ptr [rsp + 5736], 0
                        mov              qword ptr [rsp + 5744], 0
                        mov              qword ptr [rsp + 5752], 0
                        mov              qword ptr [rsp + 5760], 0
                        mov              qword ptr [rsp + 5768], 0
                        mov              qword ptr [rsp + 5776], 0
                        mov              qword ptr [rsp + 5784], 0
                        mov              qword ptr [rsp + 5792], 0
                        mov              qword ptr [rsp + 5800], 0
                        mov              qword ptr [rsp + 5808], 0
                        mov              qword ptr [rsp + 5816], 0
                        mov              qword ptr [rsp + 5824], 0
                        mov              qword ptr [rsp + 5832], 0
                        mov              qword ptr [rsp + 5840], 0
                        mov              qword ptr [rsp + 5848], 0
                        mov              qword ptr [rsp + 5856], 0
                        mov              qword ptr [rsp + 5864], 0
                        mov              qword ptr [rsp + 5872], 0
                        mov              qword ptr [rsp + 5880], 0
                        mov              qword ptr [rsp + 5888], 0
                        mov              qword ptr [rsp + 5896], 0
                        mov              qword ptr [rsp + 5904], 0
                        mov              qword ptr [rsp + 5912], 0
                        mov              qword ptr [rsp + 5920], 0
                        mov              qword ptr [rsp + 5928], 0
                        mov              qword ptr [rsp + 5936], 0
                        mov              qword ptr [rsp + 5944], 0
                        mov              qword ptr [rsp + 5952], 0
                        mov              qword ptr [rsp + 5960], 0
                        mov              qword ptr [rsp + 5968], 0
                        mov              qword ptr [rsp + 5976], 0
                        mov              qword ptr [rsp + 5984], 0
                        mov              qword ptr [rsp + 5992], 0
                        mov              qword ptr [rsp + 6000], 0
                        mov              qword ptr [rsp + 6008], 0
                        mov              qword ptr [rsp + 6016], 0
                        mov              qword ptr [rsp + 6024], 0
                        mov              qword ptr [rsp + 6032], 0
                        mov              qword ptr [rsp + 6040], 0
                        mov              qword ptr [rsp + 6048], 0
                        mov              qword ptr [rsp + 6056], 0
                        mov              qword ptr [rsp + 6064], 0
                        mov              qword ptr [rsp + 6072], 0
                        mov              qword ptr [rsp + 6080], 0
                        mov              qword ptr [rsp + 6088], 0
                        mov              qword ptr [rsp + 6096], 0
                        mov              qword ptr [rsp + 6104], 0
                        mov              qword ptr [rsp + 6112], 0
                        mov              qword ptr [rsp + 6120], 0
                        mov              qword ptr [rsp + 6128], 0
                        mov              qword ptr [rsp + 6136], 0
                        mov              qword ptr [rsp + 6144], 0
                        mov              qword ptr [rsp + 6152], 0
                        mov              qword ptr [rsp + 6160], 0
                        mov              qword ptr [rsp + 6168], 0
                        mov              qword ptr [rsp + 6176], 0
                        mov              qword ptr [rsp + 6184], 0
                        mov              qword ptr [rsp + 6192], 0
                        mov              qword ptr [rsp + 6200], 0
                        mov              qword ptr [rsp + 6208], 0
                        mov              qword ptr [rsp + 6216], 0
                        mov              qword ptr [rsp + 6224], 0
                        mov              qword ptr [rsp + 6232], 0
                        mov              qword ptr [rsp + 6240], 0
                        mov              qword ptr [rsp + 6248], 0
                        mov              qword ptr [rsp + 6256], 0
                        mov              qword ptr [rsp + 6264], 0
                        mov              qword ptr [rsp + 6272], 0
                        mov              qword ptr [rsp + 6280], 0
                        mov              qword ptr [rsp + 6288], 0
                        mov              qword ptr [rsp + 6296], 0
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx200_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx200_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx200_101
.Lx200_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx200_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx200_240
                        add              rsp, 6304
                                                                                        jmp   main_ω
.Lx200_240:
                                                                                        jmp   n1_lit_string_α
n0_call_builtin_prolog_β:
                        add              rsp, 6304
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        mov              qword ptr [rbp + 6256], 2                      # result
                        mov              dword ptr [rbp + 6260], 11
                        mov              rax, qword ptr [rip + .Lx201_0]
                        mov              qword ptr [rbp + 6264], rax
                                                                                        jmp   n2_var_ref_α
.Lx201_0:
                        .quad            .Lx201_0_s
.Lx201_0_s:
                        .string          "foo(x,y,z)."
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6608]
                        mov              qword ptr [rbp + 6272], rax
                        mov              qword ptr [rbp + 6280], rdx
                                                                                        jmp   n3_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:
                        mov              qword ptr [rbp + 6288], 2                      # result
                        mov              dword ptr [rbp + 6292], 2
                        mov              rax, qword ptr [rip + .Lx204_0]
                        mov              qword ptr [rbp + 6296], rax
                                                                                        jmp   n4_call_builtin_prolog_α
.Lx204_0:
                        .quad            .Lx204_0_s
.Lx204_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n4_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 6256]
                        mov              qword ptr [rbp + 6208], rax
                        mov              rax, qword ptr [rbp + 6264]
                        mov              qword ptr [rbp + 6216], rax
                        mov              rax, qword ptr [rbp + 6272]
                        mov              qword ptr [rbp + 6224], rax
                        mov              rax, qword ptr [rbp + 6280]
                        mov              qword ptr [rbp + 6232], rax
                        mov              rax, qword ptr [rbp + 6288]
                        mov              qword ptr [rbp + 6240], rax
                        mov              rax, qword ptr [rbp + 6296]
                        mov              qword ptr [rbp + 6248], rax
                        .section         .rodata
.Lrkfn206:              .string          "$read_term_from_atom"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn206]                         # fn
                        lea              rsi, [rbp + 6208]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6192], rax
                        mov              qword ptr [rbp + 6200], rdx
                        cmp              eax, 104
                                                                                        je    n199_call_builtin_prolog_α
                                                                                        jmp   n5_var_ref_α
n4_call_builtin_prolog_β:
                                                                                        jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6608]
                        mov              qword ptr [rbp + 6176], rax
                        mov              qword ptr [rbp + 6184], rdx
                                                                                        jmp   n6_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n6_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 6176]
                        mov              qword ptr [rbp + 6160], rax
                        mov              rax, qword ptr [rbp + 6184]
                        mov              qword ptr [rbp + 6168], rax
                        .section         .rodata
.Lrkfn210:              .string          "$writeq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn210]                         # fn
                        lea              rsi, [rbp + 6160]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6144], rax
                        mov              qword ptr [rbp + 6152], rdx
                        cmp              eax, 104
                                                                                        je    n199_call_builtin_prolog_α
                                                                                        jmp   n7_lit_string_α
n6_call_builtin_prolog_β:
                                                                                        jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        mov              qword ptr [rbp + 6128], 2                      # result
                        mov              dword ptr [rbp + 6132], 0
                        mov              rax, qword ptr [rip + .Lx211_0]
                        mov              qword ptr [rbp + 6136], rax
                                                                                        jmp   n8_call_builtin_prolog_α
.Lx211_0:
                        .quad            .Lx211_0_s
.Lx211_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n8_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 6128]
                        mov              qword ptr [rbp + 6112], rax
                        mov              rax, qword ptr [rbp + 6136]
                        mov              qword ptr [rbp + 6120], rax
                        .section         .rodata
.Lrkfn213:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn213]                         # fn
                        lea              rsi, [rbp + 6112]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6096], rax
                        mov              qword ptr [rbp + 6104], rdx
                        cmp              eax, 104
                                                                                        je    n199_call_builtin_prolog_α
                                                                                        jmp   n9_lit_string_α
n8_call_builtin_prolog_β:
                                                                                        jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:
                        mov              qword ptr [rbp + 5856], 2                      # result
                        mov              dword ptr [rbp + 5860], 11
                        mov              rax, qword ptr [rip + .Lx214_0]
                        mov              qword ptr [rbp + 5864], rax
                                                                                        jmp   n10_var_ref_α
.Lx214_0:
                        .quad            .Lx214_0_s
.Lx214_0_s:
                        .string          "bar(A,B,A)."
#-----------------------------------------------------------------------------------------------------------------------
n10_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6576]
                        mov              qword ptr [rbp + 5872], rax
                        mov              qword ptr [rbp + 5880], rdx
                                                                                        jmp   n11_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:
                        mov              qword ptr [rbp + 6080], 2                      # result
                        mov              dword ptr [rbp + 6084], 1
                        mov              rax, qword ptr [rip + .Lx217_0]
                        mov              qword ptr [rbp + 6088], rax
                                                                                        jmp   n12_lit_string_α
.Lx217_0:
                        .quad            .Lx217_0_s
.Lx217_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:
                        mov              qword ptr [rbp + 5984], 2                      # result
                        mov              dword ptr [rbp + 5988], 9
                        mov              rax, qword ptr [rip + .Lx218_0]
                        mov              qword ptr [rbp + 5992], rax
                                                                                        jmp   n13_var_ref_α
.Lx218_0:
                        .quad            .Lx218_0_s
.Lx218_0_s:
                        .string          "variables"
#-----------------------------------------------------------------------------------------------------------------------
n13_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6560]
                        mov              qword ptr [rbp + 5904], rax
                        mov              qword ptr [rbp + 5912], rdx
                                                                                        jmp   n14_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n14_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 5984]
                        mov              qword ptr [rbp + 5936], rax
                        mov              rax, qword ptr [rbp + 5992]
                        mov              qword ptr [rbp + 5944], rax
                        mov              rax, qword ptr [rbp + 5904]
                        mov              qword ptr [rbp + 5952], rax
                        mov              rax, qword ptr [rbp + 5912]
                        mov              qword ptr [rbp + 5960], rax
                        lea              rdi, [rbp + 5936]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 5920], rax
                        mov              qword ptr [rbp + 5928], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx221_240
                        add              rsp, 6304
                                                                                        jmp   main_ω
.Lx221_240:
                                                                                        jmp   n15_lit_string_α
n14_call_builtin_prolog_β:
                        add              rsp, 6304
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:
                        mov              qword ptr [rbp + 5888], 2                      # result
                        mov              dword ptr [rbp + 5892], 2
                        mov              rax, qword ptr [rip + .Lx222_0]
                        mov              qword ptr [rbp + 5896], rax
                                                                                        jmp   n16_call_builtin_prolog_α
.Lx222_0:
                        .quad            .Lx222_0_s
.Lx222_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n16_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 6080]
                        mov              qword ptr [rbp + 6016], rax
                        mov              rax, qword ptr [rbp + 6088]
                        mov              qword ptr [rbp + 6024], rax
                        mov              rax, qword ptr [rbp + 5920]
                        mov              qword ptr [rbp + 6032], rax
                        mov              rax, qword ptr [rbp + 5928]
                        mov              qword ptr [rbp + 6040], rax
                        mov              rax, qword ptr [rbp + 5888]
                        mov              qword ptr [rbp + 6048], rax
                        mov              rax, qword ptr [rbp + 5896]
                        mov              qword ptr [rbp + 6056], rax
                        lea              rdi, [rbp + 6016]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 6000], rax
                        mov              qword ptr [rbp + 6008], rdx
                        cmp              eax, 104
                                                                                        je    n199_call_builtin_prolog_α
                                                                                        jmp   n17_call_builtin_prolog_α
n16_call_builtin_prolog_β:
                                                                                        jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n17_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 5856]
                        mov              qword ptr [rbp + 5808], rax
                        mov              rax, qword ptr [rbp + 5864]
                        mov              qword ptr [rbp + 5816], rax
                        mov              rax, qword ptr [rbp + 5872]
                        mov              qword ptr [rbp + 5824], rax
                        mov              rax, qword ptr [rbp + 5880]
                        mov              qword ptr [rbp + 5832], rax
                        mov              rax, qword ptr [rbp + 6000]
                        mov              qword ptr [rbp + 5840], rax
                        mov              rax, qword ptr [rbp + 6008]
                        mov              qword ptr [rbp + 5848], rax
                        .section         .rodata
.Lrkfn225:              .string          "$read_term_from_atom"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn225]                         # fn
                        lea              rsi, [rbp + 5808]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5792], rax
                        mov              qword ptr [rbp + 5800], rdx
                        cmp              eax, 104
                                                                                        je    n199_call_builtin_prolog_α
                                                                                        jmp   n18_lit_string_α
n17_call_builtin_prolog_β:
                                                                                        jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:
                        mov              qword ptr [rbp + 5744], 2                      # result
                        mov              dword ptr [rbp + 5748], 1
                        mov              rax, qword ptr [rip + .Lx226_0]
                        mov              qword ptr [rbp + 5752], rax
                                                                                        jmp   n19_var_ref_α
.Lx226_0:
                        .quad            .Lx226_0_s
.Lx226_0_s:
                        .string          "t"
#-----------------------------------------------------------------------------------------------------------------------
n19_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6576]
                        mov              qword ptr [rbp + 5632], rax
                        mov              qword ptr [rbp + 5640], rdx
                                                                                        jmp   n20_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n20_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6560]
                        mov              qword ptr [rbp + 5648], rax
                        mov              qword ptr [rbp + 5656], rdx
                                                                                        jmp   n21_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n21_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 5744]
                        mov              qword ptr [rbp + 5680], rax
                        mov              rax, qword ptr [rbp + 5752]
                        mov              qword ptr [rbp + 5688], rax
                        mov              rax, qword ptr [rbp + 5632]
                        mov              qword ptr [rbp + 5696], rax
                        mov              rax, qword ptr [rbp + 5640]
                        mov              qword ptr [rbp + 5704], rax
                        mov              rax, qword ptr [rbp + 5648]
                        mov              qword ptr [rbp + 5712], rax
                        mov              rax, qword ptr [rbp + 5656]
                        mov              qword ptr [rbp + 5720], rax
                        lea              rdi, [rbp + 5680]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 5664], rax
                        mov              qword ptr [rbp + 5672], rdx
                        cmp              eax, 104
                                                                                        je    n199_call_builtin_prolog_α
                                                                                        jmp   n22_lit_integer_α
n21_call_builtin_prolog_β:
                                                                                        jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_integer_α:
                        mov              qword ptr [rbp + 5760], 3                      # result
                        mov              rax, qword ptr [rip + .Lx232_0]
                        mov              qword ptr [rbp + 5768], rax
                                                                                        jmp   n23_var_ref_α
.Lx232_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n23_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6592]
                        mov              qword ptr [rbp + 5776], rax
                        mov              qword ptr [rbp + 5784], rdx
                                                                                        jmp   n24_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n24_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 5664]
                        mov              qword ptr [rbp + 5584], rax
                        mov              rax, qword ptr [rbp + 5672]
                        mov              qword ptr [rbp + 5592], rax
                        mov              rax, qword ptr [rbp + 5760]
                        mov              qword ptr [rbp + 5600], rax
                        mov              rax, qword ptr [rbp + 5768]
                        mov              qword ptr [rbp + 5608], rax
                        mov              rax, qword ptr [rbp + 5776]
                        mov              qword ptr [rbp + 5616], rax
                        mov              rax, qword ptr [rbp + 5784]
                        mov              qword ptr [rbp + 5624], rax
                        .section         .rodata
.Lrkfn236:              .string          "$numbervars"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn236]                         # fn
                        lea              rsi, [rbp + 5584]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5568], rax
                        mov              qword ptr [rbp + 5576], rdx
                        cmp              eax, 104
                                                                                        je    n199_call_builtin_prolog_α
                                                                                        jmp   n25_var_ref_α
n24_call_builtin_prolog_β:
                                                                                        jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n25_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6576]
                        mov              qword ptr [rbp + 5552], rax
                        mov              qword ptr [rbp + 5560], rdx
                                                                                        jmp   n26_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n26_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 5552]
                        mov              qword ptr [rbp + 5536], rax
                        mov              rax, qword ptr [rbp + 5560]
                        mov              qword ptr [rbp + 5544], rax
                        .section         .rodata
.Lrkfn240:              .string          "$writeq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn240]                         # fn
                        lea              rsi, [rbp + 5536]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5520], rax
                        mov              qword ptr [rbp + 5528], rdx
                        cmp              eax, 104
                                                                                        je    n199_call_builtin_prolog_α
                                                                                        jmp   n27_lit_string_α
n26_call_builtin_prolog_β:
                                                                                        jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:
                        mov              qword ptr [rbp + 5504], 2                      # result
                        mov              dword ptr [rbp + 5508], 0
                        mov              rax, qword ptr [rip + .Lx241_0]
                        mov              qword ptr [rbp + 5512], rax
                                                                                        jmp   n28_call_builtin_prolog_α
.Lx241_0:
                        .quad            .Lx241_0_s
.Lx241_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n28_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 5504]
                        mov              qword ptr [rbp + 5488], rax
                        mov              rax, qword ptr [rbp + 5512]
                        mov              qword ptr [rbp + 5496], rax
                        .section         .rodata
.Lrkfn243:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn243]                         # fn
                        lea              rsi, [rbp + 5488]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5472], rax
                        mov              qword ptr [rbp + 5480], rdx
                        cmp              eax, 104
                                                                                        je    n199_call_builtin_prolog_α
                                                                                        jmp   n29_var_ref_α
n28_call_builtin_prolog_β:
                                                                                        jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n29_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6560]
                        mov              qword ptr [rbp + 5456], rax
                        mov              qword ptr [rbp + 5464], rdx
                                                                                        jmp   n30_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n30_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 5456]
                        mov              qword ptr [rbp + 5440], rax
                        mov              rax, qword ptr [rbp + 5464]
                        mov              qword ptr [rbp + 5448], rax
                        .section         .rodata
.Lrkfn247:              .string          "$writeq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn247]                         # fn
                        lea              rsi, [rbp + 5440]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5424], rax
                        mov              qword ptr [rbp + 5432], rdx
                        cmp              eax, 104
                                                                                        je    n199_call_builtin_prolog_α
                                                                                        jmp   n31_lit_string_α
n30_call_builtin_prolog_β:
                                                                                        jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:
                        mov              qword ptr [rbp + 5408], 2                      # result
                        mov              dword ptr [rbp + 5412], 0
                        mov              rax, qword ptr [rip + .Lx248_0]
                        mov              qword ptr [rbp + 5416], rax
                                                                                        jmp   n32_call_builtin_prolog_α
.Lx248_0:
                        .quad            .Lx248_0_s
.Lx248_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n32_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 5408]
                        mov              qword ptr [rbp + 5392], rax
                        mov              rax, qword ptr [rbp + 5416]
                        mov              qword ptr [rbp + 5400], rax
                        .section         .rodata
.Lrkfn250:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn250]                         # fn
                        lea              rsi, [rbp + 5392]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5376], rax
                        mov              qword ptr [rbp + 5384], rdx
                        cmp              eax, 104
                                                                                        je    n199_call_builtin_prolog_α
                                                                                        jmp   n33_lit_string_α
n32_call_builtin_prolog_β:
                                                                                        jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:
                        mov              qword ptr [rbp + 5136], 2                      # result
                        mov              dword ptr [rbp + 5140], 11
                        mov              rax, qword ptr [rip + .Lx251_0]
                        mov              qword ptr [rbp + 5144], rax
                                                                                        jmp   n34_var_ref_α
.Lx251_0:
                        .quad            .Lx251_0_s
.Lx251_0_s:
                        .string          "bar(A,B,A)."
#-----------------------------------------------------------------------------------------------------------------------
n34_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6544]
                        mov              qword ptr [rbp + 5152], rax
                        mov              qword ptr [rbp + 5160], rdx
                                                                                        jmp   n35_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:
                        mov              qword ptr [rbp + 5360], 2                      # result
                        mov              dword ptr [rbp + 5364], 1
                        mov              rax, qword ptr [rip + .Lx254_0]
                        mov              qword ptr [rbp + 5368], rax
                                                                                        jmp   n36_lit_string_α
.Lx254_0:
                        .quad            .Lx254_0_s
.Lx254_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_string_α:
                        mov              qword ptr [rbp + 5264], 2                      # result
                        mov              dword ptr [rbp + 5268], 14
                        mov              rax, qword ptr [rip + .Lx255_0]
                        mov              qword ptr [rbp + 5272], rax
                                                                                        jmp   n37_var_ref_α
.Lx255_0:
                        .quad            .Lx255_0_s
.Lx255_0_s:
                        .string          "variable_names"
#-----------------------------------------------------------------------------------------------------------------------
n37_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6512]
                        mov              qword ptr [rbp + 5184], rax
                        mov              qword ptr [rbp + 5192], rdx
                                                                                        jmp   n38_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n38_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 5264]
                        mov              qword ptr [rbp + 5216], rax
                        mov              rax, qword ptr [rbp + 5272]
                        mov              qword ptr [rbp + 5224], rax
                        mov              rax, qword ptr [rbp + 5184]
                        mov              qword ptr [rbp + 5232], rax
                        mov              rax, qword ptr [rbp + 5192]
                        mov              qword ptr [rbp + 5240], rax
                        lea              rdi, [rbp + 5216]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 5200], rax
                        mov              qword ptr [rbp + 5208], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx258_240
                        add              rsp, 6304
                                                                                        jmp   main_ω
.Lx258_240:
                                                                                        jmp   n39_lit_string_α
n38_call_builtin_prolog_β:
                        add              rsp, 6304
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:
                        mov              qword ptr [rbp + 5168], 2                      # result
                        mov              dword ptr [rbp + 5172], 2
                        mov              rax, qword ptr [rip + .Lx259_0]
                        mov              qword ptr [rbp + 5176], rax
                                                                                        jmp   n40_call_builtin_prolog_α
.Lx259_0:
                        .quad            .Lx259_0_s
.Lx259_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n40_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 5360]
                        mov              qword ptr [rbp + 5296], rax
                        mov              rax, qword ptr [rbp + 5368]
                        mov              qword ptr [rbp + 5304], rax
                        mov              rax, qword ptr [rbp + 5200]
                        mov              qword ptr [rbp + 5312], rax
                        mov              rax, qword ptr [rbp + 5208]
                        mov              qword ptr [rbp + 5320], rax
                        mov              rax, qword ptr [rbp + 5168]
                        mov              qword ptr [rbp + 5328], rax
                        mov              rax, qword ptr [rbp + 5176]
                        mov              qword ptr [rbp + 5336], rax
                        lea              rdi, [rbp + 5296]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 5280], rax
                        mov              qword ptr [rbp + 5288], rdx
                        cmp              eax, 104
                                                                                        je    n199_call_builtin_prolog_α
                                                                                        jmp   n41_call_builtin_prolog_α
n40_call_builtin_prolog_β:
                                                                                        jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n41_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 5136]
                        mov              qword ptr [rbp + 5088], rax
                        mov              rax, qword ptr [rbp + 5144]
                        mov              qword ptr [rbp + 5096], rax
                        mov              rax, qword ptr [rbp + 5152]
                        mov              qword ptr [rbp + 5104], rax
                        mov              rax, qword ptr [rbp + 5160]
                        mov              qword ptr [rbp + 5112], rax
                        mov              rax, qword ptr [rbp + 5280]
                        mov              qword ptr [rbp + 5120], rax
                        mov              rax, qword ptr [rbp + 5288]
                        mov              qword ptr [rbp + 5128], rax
                        .section         .rodata
.Lrkfn262:              .string          "$read_term_from_atom"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn262]                         # fn
                        lea              rsi, [rbp + 5088]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5072], rax
                        mov              qword ptr [rbp + 5080], rdx
                        cmp              eax, 104
                                                                                        je    n199_call_builtin_prolog_α
                                                                                        jmp   n42_var_ref_α
n41_call_builtin_prolog_β:
                                                                                        jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n42_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6512]
                        mov              qword ptr [rbp + 5024], rax
                        mov              qword ptr [rbp + 5032], rdx
                                                                                        jmp   n43_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_integer_α:
                        mov              qword ptr [rbp + 5040], 3                      # result
                        mov              rax, qword ptr [rip + .Lx265_0]
                        mov              qword ptr [rbp + 5048], rax
                                                                                        jmp   n44_var_ref_α
.Lx265_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n44_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6528]
                        mov              qword ptr [rbp + 5056], rax
                        mov              qword ptr [rbp + 5064], rdx
                                                                                        jmp   n45_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n45_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 5024]
                        mov              qword ptr [rbp + 4976], rax
                        mov              rax, qword ptr [rbp + 5032]
                        mov              qword ptr [rbp + 4984], rax
                        mov              rax, qword ptr [rbp + 5040]
                        mov              qword ptr [rbp + 4992], rax
                        mov              rax, qword ptr [rbp + 5048]
                        mov              qword ptr [rbp + 5000], rax
                        mov              rax, qword ptr [rbp + 5056]
                        mov              qword ptr [rbp + 5008], rax
                        mov              rax, qword ptr [rbp + 5064]
                        mov              qword ptr [rbp + 5016], rax
                        .section         .rodata
.Lrkfn269:              .string          "$numbervars"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn269]                         # fn
                        lea              rsi, [rbp + 4976]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4960], rax
                        mov              qword ptr [rbp + 4968], rdx
                        cmp              eax, 104
                                                                                        je    n199_call_builtin_prolog_α
                                                                                        jmp   n46_var_ref_α
n45_call_builtin_prolog_β:
                                                                                        jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n46_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6512]
                        mov              qword ptr [rbp + 4944], rax
                        mov              qword ptr [rbp + 4952], rdx
                                                                                        jmp   n47_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n47_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4944]
                        mov              qword ptr [rbp + 4928], rax
                        mov              rax, qword ptr [rbp + 4952]
                        mov              qword ptr [rbp + 4936], rax
                        .section         .rodata
.Lrkfn273:              .string          "$writeq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn273]                         # fn
                        lea              rsi, [rbp + 4928]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4912], rax
                        mov              qword ptr [rbp + 4920], rdx
                        cmp              eax, 104
                                                                                        je    n199_call_builtin_prolog_α
                                                                                        jmp   n48_lit_string_α
n47_call_builtin_prolog_β:
                                                                                        jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_string_α:
                        mov              qword ptr [rbp + 4896], 2                      # result
                        mov              dword ptr [rbp + 4900], 0
                        mov              rax, qword ptr [rip + .Lx274_0]
                        mov              qword ptr [rbp + 4904], rax
                                                                                        jmp   n49_call_builtin_prolog_α
.Lx274_0:
                        .quad            .Lx274_0_s
.Lx274_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n49_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4896]
                        mov              qword ptr [rbp + 4880], rax
                        mov              rax, qword ptr [rbp + 4904]
                        mov              qword ptr [rbp + 4888], rax
                        .section         .rodata
.Lrkfn276:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn276]                         # fn
                        lea              rsi, [rbp + 4880]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4864], rax
                        mov              qword ptr [rbp + 4872], rdx
                        cmp              eax, 104
                                                                                        je    n199_call_builtin_prolog_α
                                                                                        jmp   n50_lit_string_α
n49_call_builtin_prolog_β:
                                                                                        jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_string_α:
                        mov              qword ptr [rbp + 4624], 2                      # result
                        mov              dword ptr [rbp + 4628], 13
                        mov              rax, qword ptr [rip + .Lx277_0]
                        mov              qword ptr [rbp + 4632], rax
                                                                                        jmp   n51_var_ref_α
.Lx277_0:
                        .quad            .Lx277_0_s
.Lx277_0_s:
                        .string          "baz(P,Q,P,R)."
#-----------------------------------------------------------------------------------------------------------------------
n51_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6480]
                        mov              qword ptr [rbp + 4640], rax
                        mov              qword ptr [rbp + 4648], rdx
                                                                                        jmp   n52_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_string_α:
                        mov              qword ptr [rbp + 4848], 2                      # result
                        mov              dword ptr [rbp + 4852], 1
                        mov              rax, qword ptr [rip + .Lx280_0]
                        mov              qword ptr [rbp + 4856], rax
                                                                                        jmp   n53_lit_string_α
.Lx280_0:
                        .quad            .Lx280_0_s
.Lx280_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:
                        mov              qword ptr [rbp + 4752], 2                      # result
                        mov              dword ptr [rbp + 4756], 10
                        mov              rax, qword ptr [rip + .Lx281_0]
                        mov              qword ptr [rbp + 4760], rax
                                                                                        jmp   n54_var_ref_α
.Lx281_0:
                        .quad            .Lx281_0_s
.Lx281_0_s:
                        .string          "singletons"
#-----------------------------------------------------------------------------------------------------------------------
n54_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6464]
                        mov              qword ptr [rbp + 4672], rax
                        mov              qword ptr [rbp + 4680], rdx
                                                                                        jmp   n55_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n55_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4752]
                        mov              qword ptr [rbp + 4704], rax
                        mov              rax, qword ptr [rbp + 4760]
                        mov              qword ptr [rbp + 4712], rax
                        mov              rax, qword ptr [rbp + 4672]
                        mov              qword ptr [rbp + 4720], rax
                        mov              rax, qword ptr [rbp + 4680]
                        mov              qword ptr [rbp + 4728], rax
                        lea              rdi, [rbp + 4704]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4688], rax
                        mov              qword ptr [rbp + 4696], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx284_240
                        add              rsp, 6304
                                                                                        jmp   main_ω
.Lx284_240:
                                                                                        jmp   n56_lit_string_α
n55_call_builtin_prolog_β:
                        add              rsp, 6304
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_string_α:
                        mov              qword ptr [rbp + 4656], 2                      # result
                        mov              dword ptr [rbp + 4660], 2
                        mov              rax, qword ptr [rip + .Lx285_0]
                        mov              qword ptr [rbp + 4664], rax
                                                                                        jmp   n57_call_builtin_prolog_α
.Lx285_0:
                        .quad            .Lx285_0_s
.Lx285_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n57_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4848]
                        mov              qword ptr [rbp + 4784], rax
                        mov              rax, qword ptr [rbp + 4856]
                        mov              qword ptr [rbp + 4792], rax
                        mov              rax, qword ptr [rbp + 4688]
                        mov              qword ptr [rbp + 4800], rax
                        mov              rax, qword ptr [rbp + 4696]
                        mov              qword ptr [rbp + 4808], rax
                        mov              rax, qword ptr [rbp + 4656]
                        mov              qword ptr [rbp + 4816], rax
                        mov              rax, qword ptr [rbp + 4664]
                        mov              qword ptr [rbp + 4824], rax
                        lea              rdi, [rbp + 4784]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4768], rax
                        mov              qword ptr [rbp + 4776], rdx
                        cmp              eax, 104
                                                                                        je    n199_call_builtin_prolog_α
                                                                                        jmp   n58_call_builtin_prolog_α
n57_call_builtin_prolog_β:
                                                                                        jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n58_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4624]
                        mov              qword ptr [rbp + 4576], rax
                        mov              rax, qword ptr [rbp + 4632]
                        mov              qword ptr [rbp + 4584], rax
                        mov              rax, qword ptr [rbp + 4640]
                        mov              qword ptr [rbp + 4592], rax
                        mov              rax, qword ptr [rbp + 4648]
                        mov              qword ptr [rbp + 4600], rax
                        mov              rax, qword ptr [rbp + 4768]
                        mov              qword ptr [rbp + 4608], rax
                        mov              rax, qword ptr [rbp + 4776]
                        mov              qword ptr [rbp + 4616], rax
                        .section         .rodata
.Lrkfn288:              .string          "$read_term_from_atom"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn288]                         # fn
                        lea              rsi, [rbp + 4576]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4560], rax
                        mov              qword ptr [rbp + 4568], rdx
                        cmp              eax, 104
                                                                                        je    n199_call_builtin_prolog_α
                                                                                        jmp   n59_lit_string_α
n58_call_builtin_prolog_β:
                                                                                        jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:
                        mov              qword ptr [rbp + 4512], 2                      # result
                        mov              dword ptr [rbp + 4516], 1
                        mov              rax, qword ptr [rip + .Lx289_0]
                        mov              qword ptr [rbp + 4520], rax
                                                                                        jmp   n60_var_ref_α
.Lx289_0:
                        .quad            .Lx289_0_s
.Lx289_0_s:
                        .string          "t"
#-----------------------------------------------------------------------------------------------------------------------
n60_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6480]
                        mov              qword ptr [rbp + 4400], rax
                        mov              qword ptr [rbp + 4408], rdx
                                                                                        jmp   n61_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n61_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6464]
                        mov              qword ptr [rbp + 4416], rax
                        mov              qword ptr [rbp + 4424], rdx
                                                                                        jmp   n62_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n62_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4512]
                        mov              qword ptr [rbp + 4448], rax
                        mov              rax, qword ptr [rbp + 4520]
                        mov              qword ptr [rbp + 4456], rax
                        mov              rax, qword ptr [rbp + 4400]
                        mov              qword ptr [rbp + 4464], rax
                        mov              rax, qword ptr [rbp + 4408]
                        mov              qword ptr [rbp + 4472], rax
                        mov              rax, qword ptr [rbp + 4416]
                        mov              qword ptr [rbp + 4480], rax
                        mov              rax, qword ptr [rbp + 4424]
                        mov              qword ptr [rbp + 4488], rax
                        lea              rdi, [rbp + 4448]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4432], rax
                        mov              qword ptr [rbp + 4440], rdx
                        cmp              eax, 104
                                                                                        je    n199_call_builtin_prolog_α
                                                                                        jmp   n63_lit_integer_α
n62_call_builtin_prolog_β:
                                                                                        jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_integer_α:
                        mov              qword ptr [rbp + 4528], 3                      # result
                        mov              rax, qword ptr [rip + .Lx295_0]
                        mov              qword ptr [rbp + 4536], rax
                                                                                        jmp   n64_var_ref_α
.Lx295_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n64_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6496]
                        mov              qword ptr [rbp + 4544], rax
                        mov              qword ptr [rbp + 4552], rdx
                                                                                        jmp   n65_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n65_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4432]
                        mov              qword ptr [rbp + 4352], rax
                        mov              rax, qword ptr [rbp + 4440]
                        mov              qword ptr [rbp + 4360], rax
                        mov              rax, qword ptr [rbp + 4528]
                        mov              qword ptr [rbp + 4368], rax
                        mov              rax, qword ptr [rbp + 4536]
                        mov              qword ptr [rbp + 4376], rax
                        mov              rax, qword ptr [rbp + 4544]
                        mov              qword ptr [rbp + 4384], rax
                        mov              rax, qword ptr [rbp + 4552]
                        mov              qword ptr [rbp + 4392], rax
                        .section         .rodata
.Lrkfn299:              .string          "$numbervars"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn299]                         # fn
                        lea              rsi, [rbp + 4352]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4336], rax
                        mov              qword ptr [rbp + 4344], rdx
                        cmp              eax, 104
                                                                                        je    n199_call_builtin_prolog_α
                                                                                        jmp   n66_var_ref_α
n65_call_builtin_prolog_β:
                                                                                        jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n66_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6464]
                        mov              qword ptr [rbp + 4320], rax
                        mov              qword ptr [rbp + 4328], rdx
                                                                                        jmp   n67_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n67_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4320]
                        mov              qword ptr [rbp + 4304], rax
                        mov              rax, qword ptr [rbp + 4328]
                        mov              qword ptr [rbp + 4312], rax
                        .section         .rodata
.Lrkfn303:              .string          "$writeq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn303]                         # fn
                        lea              rsi, [rbp + 4304]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4288], rax
                        mov              qword ptr [rbp + 4296], rdx
                        cmp              eax, 104
                                                                                        je    n199_call_builtin_prolog_α
                                                                                        jmp   n68_lit_string_α
n67_call_builtin_prolog_β:
                                                                                        jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_string_α:
                        mov              qword ptr [rbp + 4272], 2                      # result
                        mov              dword ptr [rbp + 4276], 0
                        mov              rax, qword ptr [rip + .Lx304_0]
                        mov              qword ptr [rbp + 4280], rax
                                                                                        jmp   n69_call_builtin_prolog_α
.Lx304_0:
                        .quad            .Lx304_0_s
.Lx304_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n69_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4272]
                        mov              qword ptr [rbp + 4256], rax
                        mov              rax, qword ptr [rbp + 4280]
                        mov              qword ptr [rbp + 4264], rax
                        .section         .rodata
.Lrkfn306:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn306]                         # fn
                        lea              rsi, [rbp + 4256]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4240], rax
                        mov              qword ptr [rbp + 4248], rdx
                        cmp              eax, 104
                                                                                        je    n199_call_builtin_prolog_α
                                                                                        jmp   n70_lit_string_α
n69_call_builtin_prolog_β:
                                                                                        jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_string_α:
                        mov              qword ptr [rbp + 3616], 2                      # result
                        mov              dword ptr [rbp + 3620], 16
                        mov              rax, qword ptr [rip + .Lx307_0]
                        mov              qword ptr [rbp + 3624], rax
                                                                                        jmp   n71_var_ref_α
.Lx307_0:
                        .quad            .Lx307_0_s
.Lx307_0_s:
                        .string          "quux(A,B,A,C,B)."
#-----------------------------------------------------------------------------------------------------------------------
n71_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6432]
                        mov              qword ptr [rbp + 3632], rax
                        mov              qword ptr [rbp + 3640], rdx
                                                                                        jmp   n72_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_string_α:
                        mov              qword ptr [rbp + 4224], 2                      # result
                        mov              dword ptr [rbp + 4228], 1
                        mov              rax, qword ptr [rip + .Lx310_0]
                        mov              qword ptr [rbp + 4232], rax
                                                                                        jmp   n73_lit_string_α
.Lx310_0:
                        .quad            .Lx310_0_s
.Lx310_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_string_α:
                        mov              qword ptr [rbp + 4128], 2                      # result
                        mov              dword ptr [rbp + 4132], 9
                        mov              rax, qword ptr [rip + .Lx311_0]
                        mov              qword ptr [rbp + 4136], rax
                                                                                        jmp   n74_var_ref_α
.Lx311_0:
                        .quad            .Lx311_0_s
.Lx311_0_s:
                        .string          "variables"
#-----------------------------------------------------------------------------------------------------------------------
n74_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6416]
                        mov              qword ptr [rbp + 4048], rax
                        mov              qword ptr [rbp + 4056], rdx
                                                                                        jmp   n75_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n75_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4128]
                        mov              qword ptr [rbp + 4080], rax
                        mov              rax, qword ptr [rbp + 4136]
                        mov              qword ptr [rbp + 4088], rax
                        mov              rax, qword ptr [rbp + 4048]
                        mov              qword ptr [rbp + 4096], rax
                        mov              rax, qword ptr [rbp + 4056]
                        mov              qword ptr [rbp + 4104], rax
                        lea              rdi, [rbp + 4080]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4064], rax
                        mov              qword ptr [rbp + 4072], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx314_240
                        add              rsp, 6304
                                                                                        jmp   main_ω
.Lx314_240:
                                                                                        jmp   n76_lit_string_α
n75_call_builtin_prolog_β:
                        add              rsp, 6304
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_string_α:
                        mov              qword ptr [rbp + 4032], 2                      # result
                        mov              dword ptr [rbp + 4036], 1
                        mov              rax, qword ptr [rip + .Lx315_0]
                        mov              qword ptr [rbp + 4040], rax
                                                                                        jmp   n77_lit_string_α
.Lx315_0:
                        .quad            .Lx315_0_s
.Lx315_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_string_α:
                        mov              qword ptr [rbp + 3936], 2                      # result
                        mov              dword ptr [rbp + 3940], 14
                        mov              rax, qword ptr [rip + .Lx316_0]
                        mov              qword ptr [rbp + 3944], rax
                                                                                        jmp   n78_var_ref_α
.Lx316_0:
                        .quad            .Lx316_0_s
.Lx316_0_s:
                        .string          "variable_names"
#-----------------------------------------------------------------------------------------------------------------------
n78_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6400]
                        mov              qword ptr [rbp + 3856], rax
                        mov              qword ptr [rbp + 3864], rdx
                                                                                        jmp   n79_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n79_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3936]
                        mov              qword ptr [rbp + 3888], rax
                        mov              rax, qword ptr [rbp + 3944]
                        mov              qword ptr [rbp + 3896], rax
                        mov              rax, qword ptr [rbp + 3856]
                        mov              qword ptr [rbp + 3904], rax
                        mov              rax, qword ptr [rbp + 3864]
                        mov              qword ptr [rbp + 3912], rax
                        lea              rdi, [rbp + 3888]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3872], rax
                        mov              qword ptr [rbp + 3880], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx319_240
                        add              rsp, 6304
                                                                                        jmp   main_ω
.Lx319_240:
                                                                                        jmp   n80_lit_string_α
n79_call_builtin_prolog_β:
                        add              rsp, 6304
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_string_α:
                        mov              qword ptr [rbp + 3840], 2                      # result
                        mov              dword ptr [rbp + 3844], 1
                        mov              rax, qword ptr [rip + .Lx320_0]
                        mov              qword ptr [rbp + 3848], rax
                                                                                        jmp   n81_lit_string_α
.Lx320_0:
                        .quad            .Lx320_0_s
.Lx320_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_string_α:
                        mov              qword ptr [rbp + 3744], 2                      # result
                        mov              dword ptr [rbp + 3748], 10
                        mov              rax, qword ptr [rip + .Lx321_0]
                        mov              qword ptr [rbp + 3752], rax
                                                                                        jmp   n82_var_ref_α
.Lx321_0:
                        .quad            .Lx321_0_s
.Lx321_0_s:
                        .string          "singletons"
#-----------------------------------------------------------------------------------------------------------------------
n82_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6384]
                        mov              qword ptr [rbp + 3664], rax
                        mov              qword ptr [rbp + 3672], rdx
                                                                                        jmp   n83_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n83_call_builtin_prolog_α:
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
                                                                                        jne   .Lx324_240
                        add              rsp, 6304
                                                                                        jmp   main_ω
.Lx324_240:
                                                                                        jmp   n84_lit_string_α
n83_call_builtin_prolog_β:
                        add              rsp, 6304
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_string_α:
                        mov              qword ptr [rbp + 3648], 2                      # result
                        mov              dword ptr [rbp + 3652], 2
                        mov              rax, qword ptr [rip + .Lx325_0]
                        mov              qword ptr [rbp + 3656], rax
                                                                                        jmp   n85_call_builtin_prolog_α
.Lx325_0:
                        .quad            .Lx325_0_s
.Lx325_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n85_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3840]
                        mov              qword ptr [rbp + 3776], rax
                        mov              rax, qword ptr [rbp + 3848]
                        mov              qword ptr [rbp + 3784], rax
                        mov              rax, qword ptr [rbp + 3680]
                        mov              qword ptr [rbp + 3792], rax
                        mov              rax, qword ptr [rbp + 3688]
                        mov              qword ptr [rbp + 3800], rax
                        mov              rax, qword ptr [rbp + 3648]
                        mov              qword ptr [rbp + 3808], rax
                        mov              rax, qword ptr [rbp + 3656]
                        mov              qword ptr [rbp + 3816], rax
                        lea              rdi, [rbp + 3776]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3760], rax
                        mov              qword ptr [rbp + 3768], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx326_240
                        add              rsp, 6304
                                                                                        jmp   main_ω
.Lx326_240:
                                                                                        jmp   n86_call_builtin_prolog_α
n85_call_builtin_prolog_β:
                        add              rsp, 6304
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n86_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4032]
                        mov              qword ptr [rbp + 3968], rax
                        mov              rax, qword ptr [rbp + 4040]
                        mov              qword ptr [rbp + 3976], rax
                        mov              rax, qword ptr [rbp + 3872]
                        mov              qword ptr [rbp + 3984], rax
                        mov              rax, qword ptr [rbp + 3880]
                        mov              qword ptr [rbp + 3992], rax
                        mov              rax, qword ptr [rbp + 3760]
                        mov              qword ptr [rbp + 4000], rax
                        mov              rax, qword ptr [rbp + 3768]
                        mov              qword ptr [rbp + 4008], rax
                        lea              rdi, [rbp + 3968]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3952], rax
                        mov              qword ptr [rbp + 3960], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx327_240
                        add              rsp, 6304
                                                                                        jmp   main_ω
.Lx327_240:
                                                                                        jmp   n87_call_builtin_prolog_α
n86_call_builtin_prolog_β:
                        add              rsp, 6304
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n87_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4224]
                        mov              qword ptr [rbp + 4160], rax
                        mov              rax, qword ptr [rbp + 4232]
                        mov              qword ptr [rbp + 4168], rax
                        mov              rax, qword ptr [rbp + 4064]
                        mov              qword ptr [rbp + 4176], rax
                        mov              rax, qword ptr [rbp + 4072]
                        mov              qword ptr [rbp + 4184], rax
                        mov              rax, qword ptr [rbp + 3952]
                        mov              qword ptr [rbp + 4192], rax
                        mov              rax, qword ptr [rbp + 3960]
                        mov              qword ptr [rbp + 4200], rax
                        lea              rdi, [rbp + 4160]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4144], rax
                        mov              qword ptr [rbp + 4152], rdx
                        cmp              eax, 104
                                                                                        je    n199_call_builtin_prolog_α
                                                                                        jmp   n88_call_builtin_prolog_α
n87_call_builtin_prolog_β:
                                                                                        jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n88_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3616]
                        mov              qword ptr [rbp + 3568], rax
                        mov              rax, qword ptr [rbp + 3624]
                        mov              qword ptr [rbp + 3576], rax
                        mov              rax, qword ptr [rbp + 3632]
                        mov              qword ptr [rbp + 3584], rax
                        mov              rax, qword ptr [rbp + 3640]
                        mov              qword ptr [rbp + 3592], rax
                        mov              rax, qword ptr [rbp + 4144]
                        mov              qword ptr [rbp + 3600], rax
                        mov              rax, qword ptr [rbp + 4152]
                        mov              qword ptr [rbp + 3608], rax
                        .section         .rodata
.Lrkfn330:              .string          "$read_term_from_atom"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn330]                         # fn
                        lea              rsi, [rbp + 3568]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3552], rax
                        mov              qword ptr [rbp + 3560], rdx
                        cmp              eax, 104
                                                                                        je    n199_call_builtin_prolog_α
                                                                                        jmp   n89_lit_string_α
n88_call_builtin_prolog_β:
                                                                                        jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_string_α:
                        mov              qword ptr [rbp + 3504], 2                      # result
                        mov              dword ptr [rbp + 3508], 1
                        mov              rax, qword ptr [rip + .Lx331_0]
                        mov              qword ptr [rbp + 3512], rax
                                                                                        jmp   n90_var_ref_α
.Lx331_0:
                        .quad            .Lx331_0_s
.Lx331_0_s:
                        .string          "t"
#-----------------------------------------------------------------------------------------------------------------------
n90_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6432]
                        mov              qword ptr [rbp + 3328], rax
                        mov              qword ptr [rbp + 3336], rdx
                                                                                        jmp   n91_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n91_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6416]
                        mov              qword ptr [rbp + 3344], rax
                        mov              qword ptr [rbp + 3352], rdx
                                                                                        jmp   n92_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n92_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6400]
                        mov              qword ptr [rbp + 3360], rax
                        mov              qword ptr [rbp + 3368], rdx
                                                                                        jmp   n93_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n93_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6384]
                        mov              qword ptr [rbp + 3376], rax
                        mov              qword ptr [rbp + 3384], rdx
                                                                                        jmp   n94_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n94_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3504]
                        mov              qword ptr [rbp + 3408], rax
                        mov              rax, qword ptr [rbp + 3512]
                        mov              qword ptr [rbp + 3416], rax
                        mov              rax, qword ptr [rbp + 3328]
                        mov              qword ptr [rbp + 3424], rax
                        mov              rax, qword ptr [rbp + 3336]
                        mov              qword ptr [rbp + 3432], rax
                        mov              rax, qword ptr [rbp + 3344]
                        mov              qword ptr [rbp + 3440], rax
                        mov              rax, qword ptr [rbp + 3352]
                        mov              qword ptr [rbp + 3448], rax
                        mov              rax, qword ptr [rbp + 3360]
                        mov              qword ptr [rbp + 3456], rax
                        mov              rax, qword ptr [rbp + 3368]
                        mov              qword ptr [rbp + 3464], rax
                        mov              rax, qword ptr [rbp + 3376]
                        mov              qword ptr [rbp + 3472], rax
                        mov              rax, qword ptr [rbp + 3384]
                        mov              qword ptr [rbp + 3480], rax
                        lea              rdi, [rbp + 3408]
                        mov              esi, 5
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3392], rax
                        mov              qword ptr [rbp + 3400], rdx
                        cmp              eax, 104
                                                                                        je    n199_call_builtin_prolog_α
                                                                                        jmp   n95_lit_integer_α
n94_call_builtin_prolog_β:
                                                                                        jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_integer_α:
                        mov              qword ptr [rbp + 3520], 3                      # result
                        mov              rax, qword ptr [rip + .Lx341_0]
                        mov              qword ptr [rbp + 3528], rax
                                                                                        jmp   n96_var_ref_α
.Lx341_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n96_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6448]
                        mov              qword ptr [rbp + 3536], rax
                        mov              qword ptr [rbp + 3544], rdx
                                                                                        jmp   n97_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n97_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3392]
                        mov              qword ptr [rbp + 3280], rax
                        mov              rax, qword ptr [rbp + 3400]
                        mov              qword ptr [rbp + 3288], rax
                        mov              rax, qword ptr [rbp + 3520]
                        mov              qword ptr [rbp + 3296], rax
                        mov              rax, qword ptr [rbp + 3528]
                        mov              qword ptr [rbp + 3304], rax
                        mov              rax, qword ptr [rbp + 3536]
                        mov              qword ptr [rbp + 3312], rax
                        mov              rax, qword ptr [rbp + 3544]
                        mov              qword ptr [rbp + 3320], rax
                        .section         .rodata
.Lrkfn345:              .string          "$numbervars"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn345]                         # fn
                        lea              rsi, [rbp + 3280]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3264], rax
                        mov              qword ptr [rbp + 3272], rdx
                        cmp              eax, 104
                                                                                        je    n199_call_builtin_prolog_α
                                                                                        jmp   n98_var_ref_α
n97_call_builtin_prolog_β:
                                                                                        jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n98_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6432]
                        mov              qword ptr [rbp + 3248], rax
                        mov              qword ptr [rbp + 3256], rdx
                                                                                        jmp   n99_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n99_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3248]
                        mov              qword ptr [rbp + 3232], rax
                        mov              rax, qword ptr [rbp + 3256]
                        mov              qword ptr [rbp + 3240], rax
                        .section         .rodata
.Lrkfn349:              .string          "$writeq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn349]                         # fn
                        lea              rsi, [rbp + 3232]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3216], rax
                        mov              qword ptr [rbp + 3224], rdx
                        cmp              eax, 104
                                                                                        je    n199_call_builtin_prolog_α
                                                                                        jmp   n100_lit_string_α
n99_call_builtin_prolog_β:
                                                                                        jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_string_α:
                        mov              qword ptr [rbp + 3200], 2                      # result
                        mov              dword ptr [rbp + 3204], 0
                        mov              rax, qword ptr [rip + .Lx350_0]
                        mov              qword ptr [rbp + 3208], rax
                                                                                        jmp   n101_call_builtin_prolog_α
.Lx350_0:
                        .quad            .Lx350_0_s
.Lx350_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n101_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3200]
                        mov              qword ptr [rbp + 3184], rax
                        mov              rax, qword ptr [rbp + 3208]
                        mov              qword ptr [rbp + 3192], rax
                        .section         .rodata
.Lrkfn352:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn352]                         # fn
                        lea              rsi, [rbp + 3184]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3168], rax
                        mov              qword ptr [rbp + 3176], rdx
                        cmp              eax, 104
                                                                                        je    n199_call_builtin_prolog_α
                                                                                        jmp   n102_var_ref_α
n101_call_builtin_prolog_β:
                                                                                        jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n102_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6416]
                        mov              qword ptr [rbp + 3152], rax
                        mov              qword ptr [rbp + 3160], rdx
                                                                                        jmp   n103_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n103_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3152]
                        mov              qword ptr [rbp + 3136], rax
                        mov              rax, qword ptr [rbp + 3160]
                        mov              qword ptr [rbp + 3144], rax
                        .section         .rodata
.Lrkfn356:              .string          "$writeq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn356]                         # fn
                        lea              rsi, [rbp + 3136]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3120], rax
                        mov              qword ptr [rbp + 3128], rdx
                        cmp              eax, 104
                                                                                        je    n199_call_builtin_prolog_α
                                                                                        jmp   n104_lit_string_α
n103_call_builtin_prolog_β:
                                                                                        jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_string_α:
                        mov              qword ptr [rbp + 3104], 2                      # result
                        mov              dword ptr [rbp + 3108], 0
                        mov              rax, qword ptr [rip + .Lx357_0]
                        mov              qword ptr [rbp + 3112], rax
                                                                                        jmp   n105_call_builtin_prolog_α
.Lx357_0:
                        .quad            .Lx357_0_s
.Lx357_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n105_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3104]
                        mov              qword ptr [rbp + 3088], rax
                        mov              rax, qword ptr [rbp + 3112]
                        mov              qword ptr [rbp + 3096], rax
                        .section         .rodata
.Lrkfn359:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn359]                         # fn
                        lea              rsi, [rbp + 3088]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3072], rax
                        mov              qword ptr [rbp + 3080], rdx
                        cmp              eax, 104
                                                                                        je    n199_call_builtin_prolog_α
                                                                                        jmp   n106_var_ref_α
n105_call_builtin_prolog_β:
                                                                                        jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n106_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6400]
                        mov              qword ptr [rbp + 3056], rax
                        mov              qword ptr [rbp + 3064], rdx
                                                                                        jmp   n107_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n107_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3056]
                        mov              qword ptr [rbp + 3040], rax
                        mov              rax, qword ptr [rbp + 3064]
                        mov              qword ptr [rbp + 3048], rax
                        .section         .rodata
.Lrkfn363:              .string          "$writeq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn363]                         # fn
                        lea              rsi, [rbp + 3040]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3024], rax
                        mov              qword ptr [rbp + 3032], rdx
                        cmp              eax, 104
                                                                                        je    n199_call_builtin_prolog_α
                                                                                        jmp   n108_lit_string_α
n107_call_builtin_prolog_β:
                                                                                        jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_string_α:
                        mov              qword ptr [rbp + 3008], 2                      # result
                        mov              dword ptr [rbp + 3012], 0
                        mov              rax, qword ptr [rip + .Lx364_0]
                        mov              qword ptr [rbp + 3016], rax
                                                                                        jmp   n109_call_builtin_prolog_α
.Lx364_0:
                        .quad            .Lx364_0_s
.Lx364_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n109_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3008]
                        mov              qword ptr [rbp + 2992], rax
                        mov              rax, qword ptr [rbp + 3016]
                        mov              qword ptr [rbp + 3000], rax
                        .section         .rodata
.Lrkfn366:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn366]                         # fn
                        lea              rsi, [rbp + 2992]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2976], rax
                        mov              qword ptr [rbp + 2984], rdx
                        cmp              eax, 104
                                                                                        je    n199_call_builtin_prolog_α
                                                                                        jmp   n110_var_ref_α
n109_call_builtin_prolog_β:
                                                                                        jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n110_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6384]
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx
                                                                                        jmp   n111_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n111_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 2944], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 2952], rax
                        .section         .rodata
.Lrkfn370:              .string          "$writeq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn370]                         # fn
                        lea              rsi, [rbp + 2944]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2928], rax
                        mov              qword ptr [rbp + 2936], rdx
                        cmp              eax, 104
                                                                                        je    n199_call_builtin_prolog_α
                                                                                        jmp   n112_lit_string_α
n111_call_builtin_prolog_β:
                                                                                        jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n112_lit_string_α:
                        mov              qword ptr [rbp + 2912], 2                      # result
                        mov              dword ptr [rbp + 2916], 0
                        mov              rax, qword ptr [rip + .Lx371_0]
                        mov              qword ptr [rbp + 2920], rax
                                                                                        jmp   n113_call_builtin_prolog_α
.Lx371_0:
                        .quad            .Lx371_0_s
.Lx371_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n113_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2912]
                        mov              qword ptr [rbp + 2896], rax
                        mov              rax, qword ptr [rbp + 2920]
                        mov              qword ptr [rbp + 2904], rax
                        .section         .rodata
.Lrkfn373:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn373]                         # fn
                        lea              rsi, [rbp + 2896]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2880], rax
                        mov              qword ptr [rbp + 2888], rdx
                        cmp              eax, 104
                                                                                        je    n199_call_builtin_prolog_α
                                                                                        jmp   n114_lit_string_α
n113_call_builtin_prolog_β:
                                                                                        jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_string_α:
                        mov              qword ptr [rbp + 2640], 2                      # result
                        mov              dword ptr [rbp + 2644], 1
                        mov              rax, qword ptr [rip + .Lx374_0]
                        mov              qword ptr [rbp + 2648], rax
                                                                                        jmp   n115_lit_string_α
.Lx374_0:
                        .quad            .Lx374_0_s
.Lx374_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_string_α:
                        mov              qword ptr [rbp + 2544], 2                      # result
                        mov              dword ptr [rbp + 2548], 1
                        mov              rax, qword ptr [rip + .Lx375_0]
                        mov              qword ptr [rbp + 2552], rax
                                                                                        jmp   n116_lit_string_α
.Lx375_0:
                        .quad            .Lx375_0_s
.Lx375_0_s:
                        .string          "g"
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_string_α:
                        mov              qword ptr [rbp + 2528], 2                      # result
                        mov              dword ptr [rbp + 2532], 1
                        mov              rax, qword ptr [rip + .Lx376_0]
                        mov              qword ptr [rbp + 2536], rax
                                                                                        jmp   n117_lit_string_α
.Lx376_0:
                        .quad            .Lx376_0_s
.Lx376_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_string_α:
                        mov              qword ptr [rbp + 2432], 2                      # result
                        mov              dword ptr [rbp + 2436], 1
                        mov              rax, qword ptr [rip + .Lx377_0]
                        mov              qword ptr [rbp + 2440], rax
                                                                                        jmp   n118_lit_string_α
.Lx377_0:
                        .quad            .Lx377_0_s
.Lx377_0_s:
                        .string          "("
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_string_α:
                        mov              qword ptr [rbp + 2416], 2                      # result
                        mov              dword ptr [rbp + 2420], 1
                        mov              rax, qword ptr [rip + .Lx378_0]
                        mov              qword ptr [rbp + 2424], rax
                                                                                        jmp   n119_lit_string_α
.Lx378_0:
                        .quad            .Lx378_0_s
.Lx378_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_string_α:
                        mov              qword ptr [rbp + 2320], 2                      # result
                        mov              dword ptr [rbp + 2324], 1
                        mov              rax, qword ptr [rip + .Lx379_0]
                        mov              qword ptr [rbp + 2328], rax
                                                                                        jmp   n120_lit_string_α
.Lx379_0:
                        .quad            .Lx379_0_s
.Lx379_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n120_lit_string_α:
                        mov              qword ptr [rbp + 2304], 2                      # result
                        mov              dword ptr [rbp + 2308], 1
                        mov              rax, qword ptr [rip + .Lx380_0]
                        mov              qword ptr [rbp + 2312], rax
                                                                                        jmp   n121_lit_string_α
.Lx380_0:
                        .quad            .Lx380_0_s
.Lx380_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n121_lit_string_α:
                        mov              qword ptr [rbp + 2208], 2                      # result
                        mov              dword ptr [rbp + 2212], 1
                        mov              rax, qword ptr [rip + .Lx381_0]
                        mov              qword ptr [rbp + 2216], rax
                                                                                        jmp   n122_lit_string_α
.Lx381_0:
                        .quad            .Lx381_0_s
.Lx381_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n122_lit_string_α:
                        mov              qword ptr [rbp + 2192], 2                      # result
                        mov              dword ptr [rbp + 2196], 1
                        mov              rax, qword ptr [rip + .Lx382_0]
                        mov              qword ptr [rbp + 2200], rax
                                                                                        jmp   n123_lit_string_α
.Lx382_0:
                        .quad            .Lx382_0_s
.Lx382_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n123_lit_string_α:
                        mov              qword ptr [rbp + 2096], 2                      # result
                        mov              dword ptr [rbp + 2100], 1
                        mov              rax, qword ptr [rip + .Lx383_0]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n124_lit_string_α
.Lx383_0:
                        .quad            .Lx383_0_s
.Lx383_0_s:
                        .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_string_α:
                        mov              qword ptr [rbp + 2080], 2                      # result
                        mov              dword ptr [rbp + 2084], 1
                        mov              rax, qword ptr [rip + .Lx384_0]
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   n125_lit_string_α
.Lx384_0:
                        .quad            .Lx384_0_s
.Lx384_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_string_α:
                        mov              qword ptr [rbp + 1984], 2                      # result
                        mov              dword ptr [rbp + 1988], 1
                        mov              rax, qword ptr [rip + .Lx385_0]
                        mov              qword ptr [rbp + 1992], rax
                                                                                        jmp   n126_lit_string_α
.Lx385_0:
                        .quad            .Lx385_0_s
.Lx385_0_s:
                        .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_string_α:
                        mov              qword ptr [rbp + 1968], 2                      # result
                        mov              dword ptr [rbp + 1972], 1
                        mov              rax, qword ptr [rip + .Lx386_0]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n127_lit_string_α
.Lx386_0:
                        .quad            .Lx386_0_s
.Lx386_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_string_α:
                        mov              qword ptr [rbp + 1872], 2                      # result
                        mov              dword ptr [rbp + 1876], 1
                        mov              rax, qword ptr [rip + .Lx387_0]
                        mov              qword ptr [rbp + 1880], rax
                                                                                        jmp   n128_lit_string_α
.Lx387_0:
                        .quad            .Lx387_0_s
.Lx387_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_string_α:
                        mov              qword ptr [rbp + 1856], 2                      # result
                        mov              dword ptr [rbp + 1860], 2
                        mov              rax, qword ptr [rip + .Lx388_0]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n129_call_builtin_prolog_α
.Lx388_0:
                        .quad            .Lx388_0_s
.Lx388_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n129_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 1912], rax
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 1928], rax
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1944], rax
                        lea              rdi, [rbp + 1904]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx389_240
                        add              rsp, 6304
                                                                                        jmp   main_ω
.Lx389_240:
                                                                                        jmp   n130_call_builtin_prolog_α
n129_call_builtin_prolog_β:
                        add              rsp, 6304
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n130_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 2024], rax
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 2040], rax
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 2056], rax
                        lea              rdi, [rbp + 2016]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx390_240
                        add              rsp, 6304
                                                                                        jmp   main_ω
.Lx390_240:
                                                                                        jmp   n131_call_builtin_prolog_α
n130_call_builtin_prolog_β:
                        add              rsp, 6304
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n131_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 2128], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 2136], rax
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2152], rax
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 2168], rax
                        lea              rdi, [rbp + 2128]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx391_240
                        add              rsp, 6304
                                                                                        jmp   main_ω
.Lx391_240:
                                                                                        jmp   n132_call_builtin_prolog_α
n131_call_builtin_prolog_β:
                        add              rsp, 6304
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n132_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 2248], rax
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 2256], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2264], rax
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 2272], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 2280], rax
                        lea              rdi, [rbp + 2240]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx392_240
                        add              rsp, 6304
                                                                                        jmp   main_ω
.Lx392_240:
                                                                                        jmp   n133_call_builtin_prolog_α
n132_call_builtin_prolog_β:
                        add              rsp, 6304
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n133_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2360], rax
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 2376], rax
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 2392], rax
                        lea              rdi, [rbp + 2352]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx393_240
                        add              rsp, 6304
                                                                                        jmp   main_ω
.Lx393_240:
                                                                                        jmp   n134_call_builtin_prolog_α
n133_call_builtin_prolog_β:
                        add              rsp, 6304
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n134_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [rbp + 2472], rax
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [rbp + 2480], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 2488], rax
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 2504], rax
                        lea              rdi, [rbp + 2464]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx394_240
                        add              rsp, 6304
                                                                                        jmp   main_ω
.Lx394_240:
                                                                                        jmp   n135_call_builtin_prolog_α
n134_call_builtin_prolog_β:
                        add              rsp, 6304
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n135_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 2576], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 2584], rax
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 2592], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 2600], rax
                        mov              rax, qword ptr [rbp + 2448]
                        mov              qword ptr [rbp + 2608], rax
                        mov              rax, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 2616], rax
                        lea              rdi, [rbp + 2576]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                        cmp              eax, 104
                                                                                        je    n199_call_builtin_prolog_α
                                                                                        jmp   n136_var_ref_α
n135_call_builtin_prolog_β:
                                                                                        jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n136_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6368]
                        mov              qword ptr [rbp + 2656], rax
                        mov              qword ptr [rbp + 2664], rdx
                                                                                        jmp   n137_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_string_α:
                        mov              qword ptr [rbp + 2864], 2                      # result
                        mov              dword ptr [rbp + 2868], 1
                        mov              rax, qword ptr [rip + .Lx398_0]
                        mov              qword ptr [rbp + 2872], rax
                                                                                        jmp   n138_lit_string_α
.Lx398_0:
                        .quad            .Lx398_0_s
.Lx398_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_string_α:
                        mov              qword ptr [rbp + 2768], 2                      # result
                        mov              dword ptr [rbp + 2772], 9
                        mov              rax, qword ptr [rip + .Lx399_0]
                        mov              qword ptr [rbp + 2776], rax
                                                                                        jmp   n139_var_ref_α
.Lx399_0:
                        .quad            .Lx399_0_s
.Lx399_0_s:
                        .string          "variables"
#-----------------------------------------------------------------------------------------------------------------------
n139_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6352]
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                                                                                        jmp   n140_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n140_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 2720], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 2728], rax
                        mov              rax, qword ptr [rbp + 2688]
                        mov              qword ptr [rbp + 2736], rax
                        mov              rax, qword ptr [rbp + 2696]
                        mov              qword ptr [rbp + 2744], rax
                        lea              rdi, [rbp + 2720]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2704], rax
                        mov              qword ptr [rbp + 2712], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx402_240
                        add              rsp, 6304
                                                                                        jmp   main_ω
.Lx402_240:
                                                                                        jmp   n141_lit_string_α
n140_call_builtin_prolog_β:
                        add              rsp, 6304
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_string_α:
                        mov              qword ptr [rbp + 2672], 2                      # result
                        mov              dword ptr [rbp + 2676], 2
                        mov              rax, qword ptr [rip + .Lx403_0]
                        mov              qword ptr [rbp + 2680], rax
                                                                                        jmp   n142_call_builtin_prolog_α
.Lx403_0:
                        .quad            .Lx403_0_s
.Lx403_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n142_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2864]
                        mov              qword ptr [rbp + 2800], rax
                        mov              rax, qword ptr [rbp + 2872]
                        mov              qword ptr [rbp + 2808], rax
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 2816], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 2824], rax
                        mov              rax, qword ptr [rbp + 2672]
                        mov              qword ptr [rbp + 2832], rax
                        mov              rax, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 2840], rax
                        lea              rdi, [rbp + 2800]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx
                        cmp              eax, 104
                                                                                        je    n199_call_builtin_prolog_α
                                                                                        jmp   n143_call_builtin_prolog_α
n142_call_builtin_prolog_β:
                                                                                        jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n143_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 1816], rax
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 1832], rax
                        mov              rax, qword ptr [rbp + 2784]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 2792]
                        mov              qword ptr [rbp + 1848], rax
                        .section         .rodata
.Lrkfn406:              .string          "$read_term_from_chars"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn406]                         # fn
                        lea              rsi, [rbp + 1808]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                        cmp              eax, 104
                                                                                        je    n199_call_builtin_prolog_α
                                                                                        jmp   n144_var_ref_α
n143_call_builtin_prolog_β:
                                                                                        jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n144_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6368]
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                                                                                        jmp   n145_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n145_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 1768], rax
                        .section         .rodata
.Lrkfn410:              .string          "$writeq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn410]                         # fn
                        lea              rsi, [rbp + 1760]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                        cmp              eax, 104
                                                                                        je    n199_call_builtin_prolog_α
                                                                                        jmp   n146_lit_string_α
n145_call_builtin_prolog_β:
                                                                                        jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_string_α:
                        mov              qword ptr [rbp + 1728], 2                      # result
                        mov              dword ptr [rbp + 1732], 0
                        mov              rax, qword ptr [rip + .Lx411_0]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n147_call_builtin_prolog_α
.Lx411_0:
                        .quad            .Lx411_0_s
.Lx411_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n147_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1720], rax
                        .section         .rodata
.Lrkfn413:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn413]                         # fn
                        lea              rsi, [rbp + 1712]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                        cmp              eax, 104
                                                                                        je    n199_call_builtin_prolog_α
                                                                                        jmp   n148_var_ref_α
n147_call_builtin_prolog_β:
                                                                                        jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n148_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6352]
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                                                                                        jmp   n149_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n149_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1672], rax
                        .section         .rodata
.Lrkfn417:              .string          "$writeq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn417]                         # fn
                        lea              rsi, [rbp + 1664]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                        cmp              eax, 104
                                                                                        je    n199_call_builtin_prolog_α
                                                                                        jmp   n150_lit_string_α
n149_call_builtin_prolog_β:
                                                                                        jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_string_α:
                        mov              qword ptr [rbp + 1632], 2                      # result
                        mov              dword ptr [rbp + 1636], 0
                        mov              rax, qword ptr [rip + .Lx418_0]
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   n151_call_builtin_prolog_α
.Lx418_0:
                        .quad            .Lx418_0_s
.Lx418_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n151_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1624], rax
                        .section         .rodata
.Lrkfn420:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn420]                         # fn
                        lea              rsi, [rbp + 1616]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                        cmp              eax, 104
                                                                                        je    n199_call_builtin_prolog_α
                                                                                        jmp   n152_lit_string_α
n151_call_builtin_prolog_β:
                                                                                        jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n152_lit_string_α:
                        mov              qword ptr [rbp + 1360], 2                      # result
                        mov              dword ptr [rbp + 1364], 1
                        mov              rax, qword ptr [rip + .Lx421_0]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n153_lit_integer_α
.Lx421_0:
                        .quad            .Lx421_0_s
.Lx421_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_integer_α:
                        mov              qword ptr [rbp + 1264], 3                      # result
                        mov              rax, qword ptr [rip + .Lx422_0]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n154_lit_string_α
.Lx422_0:
                        .quad            104
#-----------------------------------------------------------------------------------------------------------------------
n154_lit_string_α:
                        mov              qword ptr [rbp + 1248], 2                      # result
                        mov              dword ptr [rbp + 1252], 1
                        mov              rax, qword ptr [rip + .Lx423_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n155_lit_integer_α
.Lx423_0:
                        .quad            .Lx423_0_s
.Lx423_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_integer_α:
                        mov              qword ptr [rbp + 1152], 3                      # result
                        mov              rax, qword ptr [rip + .Lx424_0]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n156_lit_string_α
.Lx424_0:
                        .quad            105
#-----------------------------------------------------------------------------------------------------------------------
n156_lit_string_α:
                        mov              qword ptr [rbp + 1136], 2                      # result
                        mov              dword ptr [rbp + 1140], 1
                        mov              rax, qword ptr [rip + .Lx425_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n157_lit_integer_α
.Lx425_0:
                        .quad            .Lx425_0_s
.Lx425_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n157_lit_integer_α:
                        mov              qword ptr [rbp + 1040], 3                      # result
                        mov              rax, qword ptr [rip + .Lx426_0]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n158_lit_string_α
.Lx426_0:
                        .quad            40
#-----------------------------------------------------------------------------------------------------------------------
n158_lit_string_α:
                        mov              qword ptr [rbp + 1024], 2                      # result
                        mov              dword ptr [rbp + 1028], 1
                        mov              rax, qword ptr [rip + .Lx427_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n159_lit_integer_α
.Lx427_0:
                        .quad            .Lx427_0_s
.Lx427_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_integer_α:
                        mov              qword ptr [rbp + 928], 3                       # result
                        mov              rax, qword ptr [rip + .Lx428_0]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n160_lit_string_α
.Lx428_0:
                        .quad            88
#-----------------------------------------------------------------------------------------------------------------------
n160_lit_string_α:
                        mov              qword ptr [rbp + 912], 2                       # result
                        mov              dword ptr [rbp + 916], 1
                        mov              rax, qword ptr [rip + .Lx429_0]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n161_lit_integer_α
.Lx429_0:
                        .quad            .Lx429_0_s
.Lx429_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n161_lit_integer_α:
                        mov              qword ptr [rbp + 816], 3                       # result
                        mov              rax, qword ptr [rip + .Lx430_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n162_lit_string_α
.Lx430_0:
                        .quad            44
#-----------------------------------------------------------------------------------------------------------------------
n162_lit_string_α:
                        mov              qword ptr [rbp + 800], 2                       # result
                        mov              dword ptr [rbp + 804], 1
                        mov              rax, qword ptr [rip + .Lx431_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n163_lit_integer_α
.Lx431_0:
                        .quad            .Lx431_0_s
.Lx431_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n163_lit_integer_α:
                        mov              qword ptr [rbp + 704], 3                       # result
                        mov              rax, qword ptr [rip + .Lx432_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n164_lit_string_α
.Lx432_0:
                        .quad            89
#-----------------------------------------------------------------------------------------------------------------------
n164_lit_string_α:
                        mov              qword ptr [rbp + 688], 2                       # result
                        mov              dword ptr [rbp + 692], 1
                        mov              rax, qword ptr [rip + .Lx433_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n165_lit_integer_α
.Lx433_0:
                        .quad            .Lx433_0_s
.Lx433_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_integer_α:
                        mov              qword ptr [rbp + 592], 3                       # result
                        mov              rax, qword ptr [rip + .Lx434_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n166_lit_string_α
.Lx434_0:
                        .quad            41
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_string_α:
                        mov              qword ptr [rbp + 576], 2                       # result
                        mov              dword ptr [rbp + 580], 1
                        mov              rax, qword ptr [rip + .Lx435_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n167_lit_integer_α
.Lx435_0:
                        .quad            .Lx435_0_s
.Lx435_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n167_lit_integer_α:
                        mov              qword ptr [rbp + 480], 3                       # result
                        mov              rax, qword ptr [rip + .Lx436_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n168_lit_string_α
.Lx436_0:
                        .quad            46
#-----------------------------------------------------------------------------------------------------------------------
n168_lit_string_α:
                        mov              qword ptr [rbp + 464], 2                       # result
                        mov              dword ptr [rbp + 468], 2
                        mov              rax, qword ptr [rip + .Lx437_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n169_call_builtin_prolog_α
.Lx437_0:
                        .quad            .Lx437_0_s
.Lx437_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n169_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 552], rax
                        lea              rdi, [rbp + 512]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx438_240
                        add              rsp, 6304
                                                                                        jmp   main_ω
.Lx438_240:
                                                                                        jmp   n170_call_builtin_prolog_α
n169_call_builtin_prolog_β:
                        add              rsp, 6304
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n170_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 648], rax
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 664], rax
                        lea              rdi, [rbp + 624]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx439_240
                        add              rsp, 6304
                                                                                        jmp   main_ω
.Lx439_240:
                                                                                        jmp   n171_call_builtin_prolog_α
n170_call_builtin_prolog_β:
                        add              rsp, 6304
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n171_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 744], rax
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 760], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 776], rax
                        lea              rdi, [rbp + 736]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx440_240
                        add              rsp, 6304
                                                                                        jmp   main_ω
.Lx440_240:
                                                                                        jmp   n172_call_builtin_prolog_α
n171_call_builtin_prolog_β:
                        add              rsp, 6304
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n172_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 856], rax
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 872], rax
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 888], rax
                        lea              rdi, [rbp + 848]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx441_240
                        add              rsp, 6304
                                                                                        jmp   main_ω
.Lx441_240:
                                                                                        jmp   n173_call_builtin_prolog_α
n172_call_builtin_prolog_β:
                        add              rsp, 6304
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n173_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 968], rax
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 984], rax
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 1000], rax
                        lea              rdi, [rbp + 960]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx442_240
                        add              rsp, 6304
                                                                                        jmp   main_ω
.Lx442_240:
                                                                                        jmp   n174_call_builtin_prolog_α
n173_call_builtin_prolog_β:
                        add              rsp, 6304
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n174_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1096], rax
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 1112], rax
                        lea              rdi, [rbp + 1072]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx443_240
                        add              rsp, 6304
                                                                                        jmp   main_ω
.Lx443_240:
                                                                                        jmp   n175_call_builtin_prolog_α
n174_call_builtin_prolog_β:
                        add              rsp, 6304
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n175_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1192], rax
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1208], rax
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1224], rax
                        lea              rdi, [rbp + 1184]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx444_240
                        add              rsp, 6304
                                                                                        jmp   main_ω
.Lx444_240:
                                                                                        jmp   n176_call_builtin_prolog_α
n175_call_builtin_prolog_β:
                        add              rsp, 6304
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n176_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1304], rax
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1320], rax
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1336], rax
                        lea              rdi, [rbp + 1296]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        cmp              eax, 104
                                                                                        je    n199_call_builtin_prolog_α
                                                                                        jmp   n177_var_ref_α
n176_call_builtin_prolog_β:
                                                                                        jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n177_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6336]
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n178_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n178_lit_string_α:
                        mov              qword ptr [rbp + 1584], 2                      # result
                        mov              dword ptr [rbp + 1588], 1
                        mov              rax, qword ptr [rip + .Lx448_0]
                        mov              qword ptr [rbp + 1592], rax
                                                                                        jmp   n179_lit_string_α
.Lx448_0:
                        .quad            .Lx448_0_s
.Lx448_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n179_lit_string_α:
                        mov              qword ptr [rbp + 1488], 2                      # result
                        mov              dword ptr [rbp + 1492], 14
                        mov              rax, qword ptr [rip + .Lx449_0]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n180_var_ref_α
.Lx449_0:
                        .quad            .Lx449_0_s
.Lx449_0_s:
                        .string          "variable_names"
#-----------------------------------------------------------------------------------------------------------------------
n180_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6304]
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                                                                                        jmp   n181_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n181_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1448], rax
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1464], rax
                        lea              rdi, [rbp + 1440]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx452_240
                        add              rsp, 6304
                                                                                        jmp   main_ω
.Lx452_240:
                                                                                        jmp   n182_lit_string_α
n181_call_builtin_prolog_β:
                        add              rsp, 6304
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n182_lit_string_α:
                        mov              qword ptr [rbp + 1392], 2                      # result
                        mov              dword ptr [rbp + 1396], 2
                        mov              rax, qword ptr [rip + .Lx453_0]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n183_call_builtin_prolog_α
.Lx453_0:
                        .quad            .Lx453_0_s
.Lx453_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n183_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1528], rax
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1544], rax
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1560], rax
                        lea              rdi, [rbp + 1520]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        cmp              eax, 104
                                                                                        je    n199_call_builtin_prolog_α
                                                                                        jmp   n184_call_builtin_prolog_α
n183_call_builtin_prolog_β:
                                                                                        jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n184_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn456:              .string          "$read_term_from_codes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn456]                         # fn
                        lea              rsi, [rbp + 416]                               # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 104
                                                                                        je    n199_call_builtin_prolog_α
                                                                                        jmp   n185_var_ref_α
n184_call_builtin_prolog_β:
                                                                                        jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n185_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6304]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n186_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n186_lit_integer_α:
                        mov              qword ptr [rbp + 368], 3                       # result
                        mov              rax, qword ptr [rip + .Lx459_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n187_var_ref_α
.Lx459_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n187_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6320]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n188_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n188_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 344], rax
                        .section         .rodata
.Lrkfn463:              .string          "$numbervars"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn463]                         # fn
                        lea              rsi, [rbp + 304]                               # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 104
                                                                                        je    n199_call_builtin_prolog_α
                                                                                        jmp   n189_var_ref_α
n188_call_builtin_prolog_β:
                                                                                        jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n189_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6304]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n190_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n190_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 264], rax
                        .section         .rodata
.Lrkfn467:              .string          "$writeq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn467]                         # fn
                        lea              rsi, [rbp + 256]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 104
                                                                                        je    n199_call_builtin_prolog_α
                                                                                        jmp   n191_lit_string_α
n190_call_builtin_prolog_β:
                                                                                        jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n191_lit_string_α:
                        mov              qword ptr [rbp + 224], 2                       # result
                        mov              dword ptr [rbp + 228], 0
                        mov              rax, qword ptr [rip + .Lx468_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n192_call_builtin_prolog_α
.Lx468_0:
                        .quad            .Lx468_0_s
.Lx468_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n192_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 216], rax
                        .section         .rodata
.Lrkfn470:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn470]                         # fn
                        lea              rsi, [rbp + 208]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 104
                                                                                        je    n199_call_builtin_prolog_α
                                                                                        jmp   n193_lit_string_α
n192_call_builtin_prolog_β:
                                                                                        jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n193_lit_string_α:
                        mov              qword ptr [rbp + 176], 2                       # result
                        mov              dword ptr [rbp + 180], 4
                        mov              rax, qword ptr [rip + .Lx471_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n194_call_builtin_prolog_α
.Lx471_0:
                        .quad            .Lx471_0_s
.Lx471_0_s:
                        .string          "done"
#-----------------------------------------------------------------------------------------------------------------------
n194_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn473:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn473]                         # fn
                        lea              rsi, [rbp + 160]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 104
                                                                                        je    n199_call_builtin_prolog_α
                                                                                        jmp   n195_lit_string_α
n194_call_builtin_prolog_β:
                                                                                        jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n195_lit_string_α:
                        mov              qword ptr [rbp + 128], 2                       # result
                        mov              dword ptr [rbp + 132], 0
                        mov              rax, qword ptr [rip + .Lx474_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n196_call_builtin_prolog_α
.Lx474_0:
                        .quad            .Lx474_0_s
.Lx474_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n196_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn476:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn476]                         # fn
                        lea              rsi, [rbp + 112]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 104
                                                                                        je    n199_call_builtin_prolog_α
                                                                                        jmp   n197_move_label_α
n196_call_builtin_prolog_β:
                                                                                        jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n197_move_label_α:
                        lea              rax, [rip + n199_call_builtin_prolog_α]
                        mov              qword ptr [rbp + 16], rax
                        add              rsp, 6304
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n198_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n198_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n199_call_builtin_prolog_α:
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
n199_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n198_disjunction_α
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
