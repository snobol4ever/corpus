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
                        sub              rsp, 3936
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
                        mov              qword ptr [rsp + 3920], 2                      # result
                        mov              dword ptr [rsp + 3924], 3
                        mov              rax, qword ptr [rip + .Lx111_0]
                        mov              qword ptr [rsp + 3928], rax
                                                                                        jmp   n1_call_builtin_icon_α
.Lx111_0:
                        .quad            .Lx111_0_s
.Lx111_0_s:
                        .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n1_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3920]
                        mov              qword ptr [rsp + 3888], rax
                        mov              rax, qword ptr [rsp + 3928]
                        mov              qword ptr [rsp + 3896], rax
                        .section         .rodata
.Lrkfn113:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn113]                         # fn
                        lea              rsi, [rsp + 3888]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3872], rax
                        mov              qword ptr [rsp + 3880], rdx
                        cmp              eax, 104
                                                                                        je    n3_lit_string_α
                                                                                        jmp   n2_call_builtin_icon_α
n1_call_builtin_icon_β:
                                                                                        jmp   n3_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3872]
                        mov              qword ptr [rsp + 3840], rax
                        mov              rax, qword ptr [rsp + 3880]
                        mov              qword ptr [rsp + 3848], rax
                        .section         .rodata
.Lrkfn115:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn115]                         # fn
                        lea              rsi, [rsp + 3840]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3824], rax
                        mov              qword ptr [rsp + 3832], rdx
                        cmp              eax, 104
                                                                                        je    n3_lit_string_α
                                                                                        jmp   n3_lit_string_α
n2_call_builtin_icon_β:
                                                                                        jmp   n3_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:
                        mov              qword ptr [rsp + 3776], 2                      # result
                        mov              dword ptr [rsp + 3780], 3
                        mov              rax, qword ptr [rip + .Lx116_0]
                        mov              qword ptr [rsp + 3784], rax
                                                                                        jmp   n4_keyword_icon_α
.Lx116_0:
                        .quad            .Lx116_0_s
.Lx116_0_s:
                        .string          "def"
#-----------------------------------------------------------------------------------------------------------------------
n4_keyword_icon_α:
                        mov              qword ptr [rsp + 3792], 0
                        mov              qword ptr [rsp + 3800], 0
                                                                                        jmp   n5_call_builtin_icon_α
n4_keyword_icon_β:
                                                                                        jmp   n7_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n5_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3776]
                        mov              qword ptr [rsp + 3728], rax
                        mov              rax, qword ptr [rsp + 3784]
                        mov              qword ptr [rsp + 3736], rax
                        mov              rax, qword ptr [rsp + 3792]
                        mov              qword ptr [rsp + 3744], rax
                        mov              rax, qword ptr [rsp + 3800]
                        mov              qword ptr [rsp + 3752], rax
                        .section         .rodata
.Lrkfn119:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn119]                         # fn
                        lea              rsi, [rsp + 3728]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3712], rax
                        mov              qword ptr [rsp + 3720], rdx
                        cmp              eax, 104
                                                                                        je    n7_lit_string_α
                                                                                        jmp   n6_call_builtin_icon_α
n5_call_builtin_icon_β:
                                                                                        jmp   n7_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n6_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3712]
                        mov              qword ptr [rsp + 3680], rax
                        mov              rax, qword ptr [rsp + 3720]
                        mov              qword ptr [rsp + 3688], rax
                        .section         .rodata
.Lrkfn121:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn121]                         # fn
                        lea              rsi, [rsp + 3680]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3664], rax
                        mov              qword ptr [rsp + 3672], rdx
                        cmp              eax, 104
                                                                                        je    n7_lit_string_α
                                                                                        jmp   n7_lit_string_α
n6_call_builtin_icon_β:
                                                                                        jmp   n7_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        mov              qword ptr [rsp + 3616], 2                      # result
                        mov              dword ptr [rsp + 3620], 3
                        mov              rax, qword ptr [rip + .Lx122_0]
                        mov              qword ptr [rsp + 3624], rax
                                                                                        jmp   n8_keyword_icon_α
.Lx122_0:
                        .quad            .Lx122_0_s
.Lx122_0_s:
                        .string          "ghi"
#-----------------------------------------------------------------------------------------------------------------------
n8_keyword_icon_α:
                        mov              qword ptr [rsp + 3632], 0
                        mov              qword ptr [rsp + 3640], 0
                                                                                        jmp   n9_call_builtin_icon_α
n8_keyword_icon_β:
                                                                                        jmp   n11_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n9_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3616]
                        mov              qword ptr [rsp + 3568], rax
                        mov              rax, qword ptr [rsp + 3624]
                        mov              qword ptr [rsp + 3576], rax
                        mov              rax, qword ptr [rsp + 3632]
                        mov              qword ptr [rsp + 3584], rax
                        mov              rax, qword ptr [rsp + 3640]
                        mov              qword ptr [rsp + 3592], rax
                        .section         .rodata
.Lrkfn125:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn125]                         # fn
                        lea              rsi, [rsp + 3568]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3552], rax
                        mov              qword ptr [rsp + 3560], rdx
                        cmp              eax, 104
                                                                                        je    n11_lit_string_α
                                                                                        jmp   n10_call_builtin_icon_α
n9_call_builtin_icon_β:
                                                                                        jmp   n11_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n10_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3552]
                        mov              qword ptr [rsp + 3520], rax
                        mov              rax, qword ptr [rsp + 3560]
                        mov              qword ptr [rsp + 3528], rax
                        .section         .rodata
.Lrkfn127:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn127]                         # fn
                        lea              rsi, [rsp + 3520]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3504], rax
                        mov              qword ptr [rsp + 3512], rdx
                        cmp              eax, 104
                                                                                        je    n11_lit_string_α
                                                                                        jmp   n11_lit_string_α
n10_call_builtin_icon_β:
                                                                                        jmp   n11_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:
                        mov              qword ptr [rsp + 3472], 2                      # result
                        mov              dword ptr [rsp + 3476], 3
                        mov              rax, qword ptr [rip + .Lx128_0]
                        mov              qword ptr [rsp + 3480], rax
                                                                                        jmp   n12_lit_integer_α
.Lx128_0:
                        .quad            .Lx128_0_s
.Lx128_0_s:
                        .string          "jkl"
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:
                        mov              qword ptr [rsp + 3488], 3                      # result
                        mov              rax, qword ptr [rip + .Lx129_0]
                        mov              qword ptr [rsp + 3496], rax
                                                                                        jmp   n13_call_builtin_icon_α
.Lx129_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n13_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3472]
                        mov              qword ptr [rsp + 3424], rax
                        mov              rax, qword ptr [rsp + 3480]
                        mov              qword ptr [rsp + 3432], rax
                        mov              rax, qword ptr [rsp + 3488]
                        mov              qword ptr [rsp + 3440], rax
                        mov              rax, qword ptr [rsp + 3496]
                        mov              qword ptr [rsp + 3448], rax
                        .section         .rodata
.Lrkfn131:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn131]                         # fn
                        lea              rsi, [rsp + 3424]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3408], rax
                        mov              qword ptr [rsp + 3416], rdx
                        cmp              eax, 104
                                                                                        je    n15_lit_string_α
                                                                                        jmp   n14_call_builtin_icon_α
n13_call_builtin_icon_β:
                                                                                        jmp   n15_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n14_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3408]
                        mov              qword ptr [rsp + 3376], rax
                        mov              rax, qword ptr [rsp + 3416]
                        mov              qword ptr [rsp + 3384], rax
                        .section         .rodata
.Lrkfn133:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn133]                         # fn
                        lea              rsi, [rsp + 3376]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3360], rax
                        mov              qword ptr [rsp + 3368], rdx
                        cmp              eax, 104
                                                                                        je    n15_lit_string_α
                                                                                        jmp   n15_lit_string_α
n14_call_builtin_icon_β:
                                                                                        jmp   n15_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:
                        mov              qword ptr [rsp + 3328], 2                      # result
                        mov              dword ptr [rsp + 3332], 3
                        mov              rax, qword ptr [rip + .Lx134_0]
                        mov              qword ptr [rsp + 3336], rax
                                                                                        jmp   n16_lit_integer_α
.Lx134_0:
                        .quad            .Lx134_0_s
.Lx134_0_s:
                        .string          "mno"
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:
                        mov              qword ptr [rsp + 3344], 3                      # result
                        mov              rax, qword ptr [rip + .Lx135_0]
                        mov              qword ptr [rsp + 3352], rax
                                                                                        jmp   n17_call_builtin_icon_α
.Lx135_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n17_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3328]
                        mov              qword ptr [rsp + 3280], rax
                        mov              rax, qword ptr [rsp + 3336]
                        mov              qword ptr [rsp + 3288], rax
                        mov              rax, qword ptr [rsp + 3344]
                        mov              qword ptr [rsp + 3296], rax
                        mov              rax, qword ptr [rsp + 3352]
                        mov              qword ptr [rsp + 3304], rax
                        .section         .rodata
.Lrkfn137:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn137]                         # fn
                        lea              rsi, [rsp + 3280]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3264], rax
                        mov              qword ptr [rsp + 3272], rdx
                        cmp              eax, 104
                                                                                        je    n19_lit_integer_α
                                                                                        jmp   n18_call_builtin_icon_α
n17_call_builtin_icon_β:
                                                                                        jmp   n19_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n18_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3264]
                        mov              qword ptr [rsp + 3232], rax
                        mov              rax, qword ptr [rsp + 3272]
                        mov              qword ptr [rsp + 3240], rax
                        .section         .rodata
.Lrkfn139:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn139]                         # fn
                        lea              rsi, [rsp + 3232]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3216], rax
                        mov              qword ptr [rsp + 3224], rdx
                        cmp              eax, 104
                                                                                        je    n19_lit_integer_α
                                                                                        jmp   n19_lit_integer_α
n18_call_builtin_icon_β:
                                                                                        jmp   n19_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_integer_α:
                        mov              qword ptr [rsp + 3184], 3                      # result
                        mov              rax, qword ptr [rip + .Lx140_0]
                        mov              qword ptr [rsp + 3192], rax
                                                                                        jmp   n20_lit_integer_α
.Lx140_0:
                        .quad            237
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_integer_α:
                        mov              qword ptr [rsp + 3200], 3                      # result
                        mov              rax, qword ptr [rip + .Lx141_0]
                        mov              qword ptr [rsp + 3208], rax
                                                                                        jmp   n21_call_builtin_icon_α
.Lx141_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n21_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3184]
                        mov              qword ptr [rsp + 3136], rax
                        mov              rax, qword ptr [rsp + 3192]
                        mov              qword ptr [rsp + 3144], rax
                        mov              rax, qword ptr [rsp + 3200]
                        mov              qword ptr [rsp + 3152], rax
                        mov              rax, qword ptr [rsp + 3208]
                        mov              qword ptr [rsp + 3160], rax
                        .section         .rodata
.Lrkfn143:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn143]                         # fn
                        lea              rsi, [rsp + 3136]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3120], rax
                        mov              qword ptr [rsp + 3128], rdx
                        cmp              eax, 104
                                                                                        je    n23_lit_string_α
                                                                                        jmp   n22_call_builtin_icon_α
n21_call_builtin_icon_β:
                                                                                        jmp   n23_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n22_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3120]
                        mov              qword ptr [rsp + 3088], rax
                        mov              rax, qword ptr [rsp + 3128]
                        mov              qword ptr [rsp + 3096], rax
                        .section         .rodata
.Lrkfn145:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn145]                         # fn
                        lea              rsi, [rsp + 3088]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3072], rax
                        mov              qword ptr [rsp + 3080], rdx
                        cmp              eax, 104
                                                                                        je    n23_lit_string_α
                                                                                        jmp   n23_lit_string_α
n22_call_builtin_icon_β:
                                                                                        jmp   n23_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:
                        mov              qword ptr [rsp + 3040], 2                      # result
                        mov              dword ptr [rsp + 3044], 3
                        mov              rax, qword ptr [rip + .Lx146_0]
                        mov              qword ptr [rsp + 3048], rax
                                                                                        jmp   n24_lit_integer_α
.Lx146_0:
                        .quad            .Lx146_0_s
.Lx146_0_s:
                        .string          "stu"
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_integer_α:
                        mov              qword ptr [rsp + 3056], 3                      # result
                        mov              rax, qword ptr [rip + .Lx147_0]
                        mov              qword ptr [rsp + 3064], rax
                                                                                        jmp   n25_call_builtin_icon_α
.Lx147_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n25_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3040]
                        mov              qword ptr [rsp + 2992], rax
                        mov              rax, qword ptr [rsp + 3048]
                        mov              qword ptr [rsp + 3000], rax
                        mov              rax, qword ptr [rsp + 3056]
                        mov              qword ptr [rsp + 3008], rax
                        mov              rax, qword ptr [rsp + 3064]
                        mov              qword ptr [rsp + 3016], rax
                        .section         .rodata
.Lrkfn149:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn149]                         # fn
                        lea              rsi, [rsp + 2992]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2976], rax
                        mov              qword ptr [rsp + 2984], rdx
                        cmp              eax, 104
                                                                                        je    n27_lit_string_α
                                                                                        jmp   n26_call_builtin_icon_α
n25_call_builtin_icon_β:
                                                                                        jmp   n27_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n26_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2976]
                        mov              qword ptr [rsp + 2944], rax
                        mov              rax, qword ptr [rsp + 2984]
                        mov              qword ptr [rsp + 2952], rax
                        .section         .rodata
.Lrkfn151:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn151]                         # fn
                        lea              rsi, [rsp + 2944]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2928], rax
                        mov              qword ptr [rsp + 2936], rdx
                        cmp              eax, 104
                                                                                        je    n27_lit_string_α
                                                                                        jmp   n27_lit_string_α
n26_call_builtin_icon_β:
                                                                                        jmp   n27_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:
                        mov              qword ptr [rsp + 2896], 2                      # result
                        mov              dword ptr [rsp + 2900], 3
                        mov              rax, qword ptr [rip + .Lx152_0]
                        mov              qword ptr [rsp + 2904], rax
                                                                                        jmp   n28_lit_integer_α
.Lx152_0:
                        .quad            .Lx152_0_s
.Lx152_0_s:
                        .string          "vwx"
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_integer_α:
                        mov              qword ptr [rsp + 2912], 3                      # result
                        mov              rax, qword ptr [rip + .Lx153_0]
                        mov              qword ptr [rsp + 2920], rax
                                                                                        jmp   n29_call_builtin_icon_α
.Lx153_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n29_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2896]
                        mov              qword ptr [rsp + 2848], rax
                        mov              rax, qword ptr [rsp + 2904]
                        mov              qword ptr [rsp + 2856], rax
                        mov              rax, qword ptr [rsp + 2912]
                        mov              qword ptr [rsp + 2864], rax
                        mov              rax, qword ptr [rsp + 2920]
                        mov              qword ptr [rsp + 2872], rax
                        .section         .rodata
.Lrkfn155:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn155]                         # fn
                        lea              rsi, [rsp + 2848]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2832], rax
                        mov              qword ptr [rsp + 2840], rdx
                        cmp              eax, 104
                                                                                        je    n31_lit_string_α
                                                                                        jmp   n30_call_builtin_icon_α
n29_call_builtin_icon_β:
                                                                                        jmp   n31_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n30_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2832]
                        mov              qword ptr [rsp + 2800], rax
                        mov              rax, qword ptr [rsp + 2840]
                        mov              qword ptr [rsp + 2808], rax
                        .section         .rodata
.Lrkfn157:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn157]                         # fn
                        lea              rsi, [rsp + 2800]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2784], rax
                        mov              qword ptr [rsp + 2792], rdx
                        cmp              eax, 104
                                                                                        je    n31_lit_string_α
                                                                                        jmp   n31_lit_string_α
n30_call_builtin_icon_β:
                                                                                        jmp   n31_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:
                        mov              qword ptr [rsp + 2720], 2                      # result
                        mov              dword ptr [rsp + 2724], 3
                        mov              rax, qword ptr [rip + .Lx158_0]
                        mov              qword ptr [rsp + 2728], rax
                                                                                        jmp   n32_lit_integer_α
.Lx158_0:
                        .quad            .Lx158_0_s
.Lx158_0_s:
                        .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_integer_α:
                        mov              qword ptr [rsp + 2736], 3                      # result
                        mov              rax, qword ptr [rip + .Lx159_0]
                        mov              qword ptr [rsp + 2744], rax
                                                                                        jmp   n33_keyword_icon_α
.Lx159_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n33_keyword_icon_α:
                        mov              qword ptr [rsp + 2752], 0
                        mov              qword ptr [rsp + 2760], 0
                                                                                        jmp   n34_call_builtin_icon_α
n33_keyword_icon_β:
                                                                                        jmp   n36_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n34_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2720]
                        mov              qword ptr [rsp + 2656], rax
                        mov              rax, qword ptr [rsp + 2728]
                        mov              qword ptr [rsp + 2664], rax
                        mov              rax, qword ptr [rsp + 2736]
                        mov              qword ptr [rsp + 2672], rax
                        mov              rax, qword ptr [rsp + 2744]
                        mov              qword ptr [rsp + 2680], rax
                        mov              rax, qword ptr [rsp + 2752]
                        mov              qword ptr [rsp + 2688], rax
                        mov              rax, qword ptr [rsp + 2760]
                        mov              qword ptr [rsp + 2696], rax
                        .section         .rodata
.Lrkfn162:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn162]                         # fn
                        lea              rsi, [rsp + 2656]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2640], rax
                        mov              qword ptr [rsp + 2648], rdx
                        cmp              eax, 104
                                                                                        je    n36_lit_string_α
                                                                                        jmp   n35_call_builtin_icon_α
n34_call_builtin_icon_β:
                                                                                        jmp   n36_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n35_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2640]
                        mov              qword ptr [rsp + 2608], rax
                        mov              rax, qword ptr [rsp + 2648]
                        mov              qword ptr [rsp + 2616], rax
                        .section         .rodata
.Lrkfn164:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn164]                         # fn
                        lea              rsi, [rsp + 2608]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2592], rax
                        mov              qword ptr [rsp + 2600], rdx
                        cmp              eax, 104
                                                                                        je    n36_lit_string_α
                                                                                        jmp   n36_lit_string_α
n35_call_builtin_icon_β:
                                                                                        jmp   n36_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_string_α:
                        mov              qword ptr [rsp + 2528], 2                      # result
                        mov              dword ptr [rsp + 2532], 3
                        mov              rax, qword ptr [rip + .Lx165_0]
                        mov              qword ptr [rsp + 2536], rax
                                                                                        jmp   n37_keyword_icon_α
.Lx165_0:
                        .quad            .Lx165_0_s
.Lx165_0_s:
                        .string          "def"
#-----------------------------------------------------------------------------------------------------------------------
n37_keyword_icon_α:
                        mov              qword ptr [rsp + 2544], 0
                        mov              qword ptr [rsp + 2552], 0
                                                                                        jmp   n38_lit_string_α
n37_keyword_icon_β:
                                                                                        jmp   n41_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_string_α:
                        mov              qword ptr [rsp + 2576], 2                      # result
                        mov              dword ptr [rsp + 2580], 1
                        mov              rax, qword ptr [rip + .Lx167_0]
                        mov              qword ptr [rsp + 2584], rax
                                                                                        jmp   n39_call_builtin_icon_α
.Lx167_0:
                        .quad            .Lx167_0_s
.Lx167_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n39_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2528]
                        mov              qword ptr [rsp + 2464], rax
                        mov              rax, qword ptr [rsp + 2536]
                        mov              qword ptr [rsp + 2472], rax
                        mov              rax, qword ptr [rsp + 2544]
                        mov              qword ptr [rsp + 2480], rax
                        mov              rax, qword ptr [rsp + 2552]
                        mov              qword ptr [rsp + 2488], rax
                        mov              rax, qword ptr [rsp + 2576]
                        mov              qword ptr [rsp + 2496], rax
                        mov              rax, qword ptr [rsp + 2584]
                        mov              qword ptr [rsp + 2504], rax
                        .section         .rodata
.Lrkfn169:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn169]                         # fn
                        lea              rsi, [rsp + 2464]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2448], rax
                        mov              qword ptr [rsp + 2456], rdx
                        cmp              eax, 104
                                                                                        je    n41_lit_string_α
                                                                                        jmp   n40_call_builtin_icon_α
n39_call_builtin_icon_β:
                                                                                        jmp   n41_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n40_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2448]
                        mov              qword ptr [rsp + 2416], rax
                        mov              rax, qword ptr [rsp + 2456]
                        mov              qword ptr [rsp + 2424], rax
                        .section         .rodata
.Lrkfn171:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn171]                         # fn
                        lea              rsi, [rsp + 2416]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2400], rax
                        mov              qword ptr [rsp + 2408], rdx
                        cmp              eax, 104
                                                                                        je    n41_lit_string_α
                                                                                        jmp   n41_lit_string_α
n40_call_builtin_icon_β:
                                                                                        jmp   n41_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:
                        mov              qword ptr [rsp + 2336], 2                      # result
                        mov              dword ptr [rsp + 2340], 3
                        mov              rax, qword ptr [rip + .Lx172_0]
                        mov              qword ptr [rsp + 2344], rax
                                                                                        jmp   n42_keyword_icon_α
.Lx172_0:
                        .quad            .Lx172_0_s
.Lx172_0_s:
                        .string          "ghi"
#-----------------------------------------------------------------------------------------------------------------------
n42_keyword_icon_α:
                        mov              qword ptr [rsp + 2352], 0
                        mov              qword ptr [rsp + 2360], 0
                                                                                        jmp   n43_lit_string_α
n42_keyword_icon_β:
                                                                                        jmp   n46_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_string_α:
                        mov              qword ptr [rsp + 2384], 2                      # result
                        mov              dword ptr [rsp + 2388], 1
                        mov              rax, qword ptr [rip + .Lx174_0]
                        mov              qword ptr [rsp + 2392], rax
                                                                                        jmp   n44_call_builtin_icon_α
.Lx174_0:
                        .quad            .Lx174_0_s
.Lx174_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n44_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2336]
                        mov              qword ptr [rsp + 2272], rax
                        mov              rax, qword ptr [rsp + 2344]
                        mov              qword ptr [rsp + 2280], rax
                        mov              rax, qword ptr [rsp + 2352]
                        mov              qword ptr [rsp + 2288], rax
                        mov              rax, qword ptr [rsp + 2360]
                        mov              qword ptr [rsp + 2296], rax
                        mov              rax, qword ptr [rsp + 2384]
                        mov              qword ptr [rsp + 2304], rax
                        mov              rax, qword ptr [rsp + 2392]
                        mov              qword ptr [rsp + 2312], rax
                        .section         .rodata
.Lrkfn176:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn176]                         # fn
                        lea              rsi, [rsp + 2272]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2256], rax
                        mov              qword ptr [rsp + 2264], rdx
                        cmp              eax, 104
                                                                                        je    n46_lit_string_α
                                                                                        jmp   n45_call_builtin_icon_α
n44_call_builtin_icon_β:
                                                                                        jmp   n46_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n45_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2256]
                        mov              qword ptr [rsp + 2224], rax
                        mov              rax, qword ptr [rsp + 2264]
                        mov              qword ptr [rsp + 2232], rax
                        .section         .rodata
.Lrkfn178:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn178]                         # fn
                        lea              rsi, [rsp + 2224]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2208], rax
                        mov              qword ptr [rsp + 2216], rdx
                        cmp              eax, 104
                                                                                        je    n46_lit_string_α
                                                                                        jmp   n46_lit_string_α
n45_call_builtin_icon_β:
                                                                                        jmp   n46_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:
                        mov              qword ptr [rsp + 2160], 2                      # result
                        mov              dword ptr [rsp + 2164], 3
                        mov              rax, qword ptr [rip + .Lx179_0]
                        mov              qword ptr [rsp + 2168], rax
                                                                                        jmp   n47_lit_integer_α
.Lx179_0:
                        .quad            .Lx179_0_s
.Lx179_0_s:
                        .string          "jkl"
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_integer_α:
                        mov              qword ptr [rsp + 2176], 3                      # result
                        mov              rax, qword ptr [rip + .Lx180_0]
                        mov              qword ptr [rsp + 2184], rax
                                                                                        jmp   n48_lit_string_α
.Lx180_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_string_α:
                        mov              qword ptr [rsp + 2192], 2                      # result
                        mov              dword ptr [rsp + 2196], 1
                        mov              rax, qword ptr [rip + .Lx181_0]
                        mov              qword ptr [rsp + 2200], rax
                                                                                        jmp   n49_call_builtin_icon_α
.Lx181_0:
                        .quad            .Lx181_0_s
.Lx181_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n49_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2160]
                        mov              qword ptr [rsp + 2096], rax
                        mov              rax, qword ptr [rsp + 2168]
                        mov              qword ptr [rsp + 2104], rax
                        mov              rax, qword ptr [rsp + 2176]
                        mov              qword ptr [rsp + 2112], rax
                        mov              rax, qword ptr [rsp + 2184]
                        mov              qword ptr [rsp + 2120], rax
                        mov              rax, qword ptr [rsp + 2192]
                        mov              qword ptr [rsp + 2128], rax
                        mov              rax, qword ptr [rsp + 2200]
                        mov              qword ptr [rsp + 2136], rax
                        .section         .rodata
.Lrkfn183:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn183]                         # fn
                        lea              rsi, [rsp + 2096]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2080], rax
                        mov              qword ptr [rsp + 2088], rdx
                        cmp              eax, 104
                                                                                        je    n51_lit_string_α
                                                                                        jmp   n50_call_builtin_icon_α
n49_call_builtin_icon_β:
                                                                                        jmp   n51_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n50_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2080]
                        mov              qword ptr [rsp + 2048], rax
                        mov              rax, qword ptr [rsp + 2088]
                        mov              qword ptr [rsp + 2056], rax
                        .section         .rodata
.Lrkfn185:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn185]                         # fn
                        lea              rsi, [rsp + 2048]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2032], rax
                        mov              qword ptr [rsp + 2040], rdx
                        cmp              eax, 104
                                                                                        je    n51_lit_string_α
                                                                                        jmp   n51_lit_string_α
n50_call_builtin_icon_β:
                                                                                        jmp   n51_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_string_α:
                        mov              qword ptr [rsp + 1984], 2                      # result
                        mov              dword ptr [rsp + 1988], 3
                        mov              rax, qword ptr [rip + .Lx186_0]
                        mov              qword ptr [rsp + 1992], rax
                                                                                        jmp   n52_lit_integer_α
.Lx186_0:
                        .quad            .Lx186_0_s
.Lx186_0_s:
                        .string          "mno"
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_integer_α:
                        mov              qword ptr [rsp + 2000], 3                      # result
                        mov              rax, qword ptr [rip + .Lx187_0]
                        mov              qword ptr [rsp + 2008], rax
                                                                                        jmp   n53_lit_string_α
.Lx187_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:
                        mov              qword ptr [rsp + 2016], 2                      # result
                        mov              dword ptr [rsp + 2020], 1
                        mov              rax, qword ptr [rip + .Lx188_0]
                        mov              qword ptr [rsp + 2024], rax
                                                                                        jmp   n54_call_builtin_icon_α
.Lx188_0:
                        .quad            .Lx188_0_s
.Lx188_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n54_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1984]
                        mov              qword ptr [rsp + 1920], rax
                        mov              rax, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 1928], rax
                        mov              rax, qword ptr [rsp + 2000]
                        mov              qword ptr [rsp + 1936], rax
                        mov              rax, qword ptr [rsp + 2008]
                        mov              qword ptr [rsp + 1944], rax
                        mov              rax, qword ptr [rsp + 2016]
                        mov              qword ptr [rsp + 1952], rax
                        mov              rax, qword ptr [rsp + 2024]
                        mov              qword ptr [rsp + 1960], rax
                        .section         .rodata
.Lrkfn190:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn190]                         # fn
                        lea              rsi, [rsp + 1920]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1904], rax
                        mov              qword ptr [rsp + 1912], rdx
                        cmp              eax, 104
                                                                                        je    n56_lit_integer_α
                                                                                        jmp   n55_call_builtin_icon_α
n54_call_builtin_icon_β:
                                                                                        jmp   n56_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n55_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1904]
                        mov              qword ptr [rsp + 1872], rax
                        mov              rax, qword ptr [rsp + 1912]
                        mov              qword ptr [rsp + 1880], rax
                        .section         .rodata
.Lrkfn192:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn192]                         # fn
                        lea              rsi, [rsp + 1872]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1856], rax
                        mov              qword ptr [rsp + 1864], rdx
                        cmp              eax, 104
                                                                                        je    n56_lit_integer_α
                                                                                        jmp   n56_lit_integer_α
n55_call_builtin_icon_β:
                                                                                        jmp   n56_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_integer_α:
                        mov              qword ptr [rsp + 1808], 3                      # result
                        mov              rax, qword ptr [rip + .Lx193_0]
                        mov              qword ptr [rsp + 1816], rax
                                                                                        jmp   n57_lit_integer_α
.Lx193_0:
                        .quad            237
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_integer_α:
                        mov              qword ptr [rsp + 1824], 3                      # result
                        mov              rax, qword ptr [rip + .Lx194_0]
                        mov              qword ptr [rsp + 1832], rax
                                                                                        jmp   n58_lit_string_α
.Lx194_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_string_α:
                        mov              qword ptr [rsp + 1840], 2                      # result
                        mov              dword ptr [rsp + 1844], 1
                        mov              rax, qword ptr [rip + .Lx195_0]
                        mov              qword ptr [rsp + 1848], rax
                                                                                        jmp   n59_call_builtin_icon_α
.Lx195_0:
                        .quad            .Lx195_0_s
.Lx195_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n59_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1808]
                        mov              qword ptr [rsp + 1744], rax
                        mov              rax, qword ptr [rsp + 1816]
                        mov              qword ptr [rsp + 1752], rax
                        mov              rax, qword ptr [rsp + 1824]
                        mov              qword ptr [rsp + 1760], rax
                        mov              rax, qword ptr [rsp + 1832]
                        mov              qword ptr [rsp + 1768], rax
                        mov              rax, qword ptr [rsp + 1840]
                        mov              qword ptr [rsp + 1776], rax
                        mov              rax, qword ptr [rsp + 1848]
                        mov              qword ptr [rsp + 1784], rax
                        .section         .rodata
.Lrkfn197:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn197]                         # fn
                        lea              rsi, [rsp + 1744]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1728], rax
                        mov              qword ptr [rsp + 1736], rdx
                        cmp              eax, 104
                                                                                        je    n61_lit_string_α
                                                                                        jmp   n60_call_builtin_icon_α
n59_call_builtin_icon_β:
                                                                                        jmp   n61_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n60_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1728]
                        mov              qword ptr [rsp + 1696], rax
                        mov              rax, qword ptr [rsp + 1736]
                        mov              qword ptr [rsp + 1704], rax
                        .section         .rodata
.Lrkfn199:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn199]                         # fn
                        lea              rsi, [rsp + 1696]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1680], rax
                        mov              qword ptr [rsp + 1688], rdx
                        cmp              eax, 104
                                                                                        je    n61_lit_string_α
                                                                                        jmp   n61_lit_string_α
n60_call_builtin_icon_β:
                                                                                        jmp   n61_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_string_α:
                        mov              qword ptr [rsp + 1632], 2                      # result
                        mov              dword ptr [rsp + 1636], 3
                        mov              rax, qword ptr [rip + .Lx200_0]
                        mov              qword ptr [rsp + 1640], rax
                                                                                        jmp   n62_lit_integer_α
.Lx200_0:
                        .quad            .Lx200_0_s
.Lx200_0_s:
                        .string          "stu"
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_integer_α:
                        mov              qword ptr [rsp + 1648], 3                      # result
                        mov              rax, qword ptr [rip + .Lx201_0]
                        mov              qword ptr [rsp + 1656], rax
                                                                                        jmp   n63_lit_string_α
.Lx201_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_string_α:
                        mov              qword ptr [rsp + 1664], 2                      # result
                        mov              dword ptr [rsp + 1668], 1
                        mov              rax, qword ptr [rip + .Lx202_0]
                        mov              qword ptr [rsp + 1672], rax
                                                                                        jmp   n64_call_builtin_icon_α
.Lx202_0:
                        .quad            .Lx202_0_s
.Lx202_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n64_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1632]
                        mov              qword ptr [rsp + 1568], rax
                        mov              rax, qword ptr [rsp + 1640]
                        mov              qword ptr [rsp + 1576], rax
                        mov              rax, qword ptr [rsp + 1648]
                        mov              qword ptr [rsp + 1584], rax
                        mov              rax, qword ptr [rsp + 1656]
                        mov              qword ptr [rsp + 1592], rax
                        mov              rax, qword ptr [rsp + 1664]
                        mov              qword ptr [rsp + 1600], rax
                        mov              rax, qword ptr [rsp + 1672]
                        mov              qword ptr [rsp + 1608], rax
                        .section         .rodata
.Lrkfn204:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn204]                         # fn
                        lea              rsi, [rsp + 1568]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1552], rax
                        mov              qword ptr [rsp + 1560], rdx
                        cmp              eax, 104
                                                                                        je    n66_lit_string_α
                                                                                        jmp   n65_call_builtin_icon_α
n64_call_builtin_icon_β:
                                                                                        jmp   n66_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n65_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1552]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 1560]
                        mov              qword ptr [rsp + 1528], rax
                        .section         .rodata
.Lrkfn206:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn206]                         # fn
                        lea              rsi, [rsp + 1520]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx
                        cmp              eax, 104
                                                                                        je    n66_lit_string_α
                                                                                        jmp   n66_lit_string_α
n65_call_builtin_icon_β:
                                                                                        jmp   n66_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:
                        mov              qword ptr [rsp + 1456], 2                      # result
                        mov              dword ptr [rsp + 1460], 3
                        mov              rax, qword ptr [rip + .Lx207_0]
                        mov              qword ptr [rsp + 1464], rax
                                                                                        jmp   n67_lit_integer_α
.Lx207_0:
                        .quad            .Lx207_0_s
.Lx207_0_s:
                        .string          "vwx"
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_integer_α:
                        mov              qword ptr [rsp + 1472], 3                      # result
                        mov              rax, qword ptr [rip + .Lx208_0]
                        mov              qword ptr [rsp + 1480], rax
                                                                                        jmp   n68_lit_string_α
.Lx208_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_string_α:
                        mov              qword ptr [rsp + 1488], 2                      # result
                        mov              dword ptr [rsp + 1492], 1
                        mov              rax, qword ptr [rip + .Lx209_0]
                        mov              qword ptr [rsp + 1496], rax
                                                                                        jmp   n69_call_builtin_icon_α
.Lx209_0:
                        .quad            .Lx209_0_s
.Lx209_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n69_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1456]
                        mov              qword ptr [rsp + 1392], rax
                        mov              rax, qword ptr [rsp + 1464]
                        mov              qword ptr [rsp + 1400], rax
                        mov              rax, qword ptr [rsp + 1472]
                        mov              qword ptr [rsp + 1408], rax
                        mov              rax, qword ptr [rsp + 1480]
                        mov              qword ptr [rsp + 1416], rax
                        mov              rax, qword ptr [rsp + 1488]
                        mov              qword ptr [rsp + 1424], rax
                        mov              rax, qword ptr [rsp + 1496]
                        mov              qword ptr [rsp + 1432], rax
                        .section         .rodata
.Lrkfn211:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn211]                         # fn
                        lea              rsi, [rsp + 1392]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx
                        cmp              eax, 104
                                                                                        je    n71_lit_string_α
                                                                                        jmp   n70_call_builtin_icon_α
n69_call_builtin_icon_β:
                                                                                        jmp   n71_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n70_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 1352], rax
                        .section         .rodata
.Lrkfn213:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn213]                         # fn
                        lea              rsi, [rsp + 1344]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx
                        cmp              eax, 104
                                                                                        je    n71_lit_string_α
                                                                                        jmp   n71_lit_string_α
n70_call_builtin_icon_β:
                                                                                        jmp   n71_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_string_α:
                        mov              qword ptr [rsp + 1264], 2                      # result
                        mov              dword ptr [rsp + 1268], 3
                        mov              rax, qword ptr [rip + .Lx214_0]
                        mov              qword ptr [rsp + 1272], rax
                                                                                        jmp   n72_lit_integer_α
.Lx214_0:
                        .quad            .Lx214_0_s
.Lx214_0_s:
                        .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_integer_α:
                        mov              qword ptr [rsp + 1280], 3                      # result
                        mov              rax, qword ptr [rip + .Lx215_0]
                        mov              qword ptr [rsp + 1288], rax
                                                                                        jmp   n73_keyword_icon_α
.Lx215_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n73_keyword_icon_α:
                        mov              qword ptr [rsp + 1296], 0
                        mov              qword ptr [rsp + 1304], 0
                                                                                        jmp   n74_call_builtin_icon_α
n73_keyword_icon_β:
                                                                                        jmp   n76_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n74_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 1208], rax
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 1224], rax
                        mov              rax, qword ptr [rsp + 1296]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 1240], rax
                        .section         .rodata
.Lrkfn218:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn218]                         # fn
                        lea              rsi, [rsp + 1200]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx
                        cmp              eax, 104
                                                                                        je    n76_lit_string_α
                                                                                        jmp   n75_call_builtin_icon_α
n74_call_builtin_icon_β:
                                                                                        jmp   n76_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n75_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 1160], rax
                        .section         .rodata
.Lrkfn220:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn220]                         # fn
                        lea              rsi, [rsp + 1152]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx
                        cmp              eax, 104
                                                                                        je    n76_lit_string_α
                                                                                        jmp   n76_lit_string_α
n75_call_builtin_icon_β:
                                                                                        jmp   n76_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_string_α:
                        mov              qword ptr [rsp + 1072], 2                      # result
                        mov              dword ptr [rsp + 1076], 3
                        mov              rax, qword ptr [rip + .Lx221_0]
                        mov              qword ptr [rsp + 1080], rax
                                                                                        jmp   n77_keyword_icon_α
.Lx221_0:
                        .quad            .Lx221_0_s
.Lx221_0_s:
                        .string          "def"
#-----------------------------------------------------------------------------------------------------------------------
n77_keyword_icon_α:
                        mov              qword ptr [rsp + 1088], 0
                        mov              qword ptr [rsp + 1096], 0
                                                                                        jmp   n78_lit_string_α
n77_keyword_icon_β:
                                                                                        jmp   n81_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_string_α:
                        mov              qword ptr [rsp + 1120], 2                      # result
                        mov              dword ptr [rsp + 1124], 2
                        mov              rax, qword ptr [rip + .Lx223_0]
                        mov              qword ptr [rsp + 1128], rax
                                                                                        jmp   n79_call_builtin_icon_α
.Lx223_0:
                        .quad            .Lx223_0_s
.Lx223_0_s:
                        .string          "<>"
#-----------------------------------------------------------------------------------------------------------------------
n79_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1072]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 1080]
                        mov              qword ptr [rsp + 1016], rax
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1032], rax
                        mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 1048], rax
                        .section         .rodata
.Lrkfn225:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn225]                         # fn
                        lea              rsi, [rsp + 1008]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx
                        cmp              eax, 104
                                                                                        je    n81_lit_string_α
                                                                                        jmp   n80_call_builtin_icon_α
n79_call_builtin_icon_β:
                                                                                        jmp   n81_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n80_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 968], rax
                        .section         .rodata
.Lrkfn227:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn227]                         # fn
                        lea              rsi, [rsp + 960]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx
                        cmp              eax, 104
                                                                                        je    n81_lit_string_α
                                                                                        jmp   n81_lit_string_α
n80_call_builtin_icon_β:
                                                                                        jmp   n81_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_string_α:
                        mov              qword ptr [rsp + 880], 2                       # result
                        mov              dword ptr [rsp + 884], 3
                        mov              rax, qword ptr [rip + .Lx228_0]
                        mov              qword ptr [rsp + 888], rax
                                                                                        jmp   n82_keyword_icon_α
.Lx228_0:
                        .quad            .Lx228_0_s
.Lx228_0_s:
                        .string          "ghi"
#-----------------------------------------------------------------------------------------------------------------------
n82_keyword_icon_α:
                        mov              qword ptr [rsp + 896], 0
                        mov              qword ptr [rsp + 904], 0
                                                                                        jmp   n83_lit_string_α
n82_keyword_icon_β:
                                                                                        jmp   n86_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_string_α:
                        mov              qword ptr [rsp + 928], 2                       # result
                        mov              dword ptr [rsp + 932], 2
                        mov              rax, qword ptr [rip + .Lx230_0]
                        mov              qword ptr [rsp + 936], rax
                                                                                        jmp   n84_call_builtin_icon_α
.Lx230_0:
                        .quad            .Lx230_0_s
.Lx230_0_s:
                        .string          "<>"
#-----------------------------------------------------------------------------------------------------------------------
n84_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 824], rax
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 840], rax
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 856], rax
                        .section         .rodata
.Lrkfn232:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn232]                         # fn
                        lea              rsi, [rsp + 816]                               # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        cmp              eax, 104
                                                                                        je    n86_lit_string_α
                                                                                        jmp   n85_call_builtin_icon_α
n84_call_builtin_icon_β:
                                                                                        jmp   n86_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n85_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 776], rax
                        .section         .rodata
.Lrkfn234:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn234]                         # fn
                        lea              rsi, [rsp + 768]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                        cmp              eax, 104
                                                                                        je    n86_lit_string_α
                                                                                        jmp   n86_lit_string_α
n85_call_builtin_icon_β:
                                                                                        jmp   n86_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_string_α:
                        mov              qword ptr [rsp + 704], 2                       # result
                        mov              dword ptr [rsp + 708], 3
                        mov              rax, qword ptr [rip + .Lx235_0]
                        mov              qword ptr [rsp + 712], rax
                                                                                        jmp   n87_lit_integer_α
.Lx235_0:
                        .quad            .Lx235_0_s
.Lx235_0_s:
                        .string          "jkl"
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_integer_α:
                        mov              qword ptr [rsp + 720], 3                       # result
                        mov              rax, qword ptr [rip + .Lx236_0]
                        mov              qword ptr [rsp + 728], rax
                                                                                        jmp   n88_lit_string_α
.Lx236_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_string_α:
                        mov              qword ptr [rsp + 736], 2                       # result
                        mov              dword ptr [rsp + 740], 2
                        mov              rax, qword ptr [rip + .Lx237_0]
                        mov              qword ptr [rsp + 744], rax
                                                                                        jmp   n89_call_builtin_icon_α
.Lx237_0:
                        .quad            .Lx237_0_s
.Lx237_0_s:
                        .string          "<>"
#-----------------------------------------------------------------------------------------------------------------------
n89_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 648], rax
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 664], rax
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 680], rax
                        .section         .rodata
.Lrkfn239:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn239]                         # fn
                        lea              rsi, [rsp + 640]                               # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        cmp              eax, 104
                                                                                        je    n91_lit_string_α
                                                                                        jmp   n90_call_builtin_icon_α
n89_call_builtin_icon_β:
                                                                                        jmp   n91_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n90_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 600], rax
                        .section         .rodata
.Lrkfn241:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn241]                         # fn
                        lea              rsi, [rsp + 592]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              eax, 104
                                                                                        je    n91_lit_string_α
                                                                                        jmp   n91_lit_string_α
n90_call_builtin_icon_β:
                                                                                        jmp   n91_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_string_α:
                        mov              qword ptr [rsp + 528], 2                       # result
                        mov              dword ptr [rsp + 532], 3
                        mov              rax, qword ptr [rip + .Lx242_0]
                        mov              qword ptr [rsp + 536], rax
                                                                                        jmp   n92_lit_integer_α
.Lx242_0:
                        .quad            .Lx242_0_s
.Lx242_0_s:
                        .string          "mno"
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_integer_α:
                        mov              qword ptr [rsp + 544], 3                       # result
                        mov              rax, qword ptr [rip + .Lx243_0]
                        mov              qword ptr [rsp + 552], rax
                                                                                        jmp   n93_lit_string_α
.Lx243_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_string_α:
                        mov              qword ptr [rsp + 560], 2                       # result
                        mov              dword ptr [rsp + 564], 2
                        mov              rax, qword ptr [rip + .Lx244_0]
                        mov              qword ptr [rsp + 568], rax
                                                                                        jmp   n94_call_builtin_icon_α
.Lx244_0:
                        .quad            .Lx244_0_s
.Lx244_0_s:
                        .string          "<>"
#-----------------------------------------------------------------------------------------------------------------------
n94_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 472], rax
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 488], rax
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 504], rax
                        .section         .rodata
.Lrkfn246:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn246]                         # fn
                        lea              rsi, [rsp + 464]                               # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              eax, 104
                                                                                        je    n96_lit_integer_α
                                                                                        jmp   n95_call_builtin_icon_α
n94_call_builtin_icon_β:
                                                                                        jmp   n96_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n95_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 424], rax
                        .section         .rodata
.Lrkfn248:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn248]                         # fn
                        lea              rsi, [rsp + 416]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              eax, 104
                                                                                        je    n96_lit_integer_α
                                                                                        jmp   n96_lit_integer_α
n95_call_builtin_icon_β:
                                                                                        jmp   n96_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_integer_α:
                        mov              qword ptr [rsp + 352], 3                       # result
                        mov              rax, qword ptr [rip + .Lx249_0]
                        mov              qword ptr [rsp + 360], rax
                                                                                        jmp   n97_lit_integer_α
.Lx249_0:
                        .quad            237
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_integer_α:
                        mov              qword ptr [rsp + 368], 3                       # result
                        mov              rax, qword ptr [rip + .Lx250_0]
                        mov              qword ptr [rsp + 376], rax
                                                                                        jmp   n98_lit_string_α
.Lx250_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_string_α:
                        mov              qword ptr [rsp + 384], 2                       # result
                        mov              dword ptr [rsp + 388], 2
                        mov              rax, qword ptr [rip + .Lx251_0]
                        mov              qword ptr [rsp + 392], rax
                                                                                        jmp   n99_call_builtin_icon_α
.Lx251_0:
                        .quad            .Lx251_0_s
.Lx251_0_s:
                        .string          "<>"
#-----------------------------------------------------------------------------------------------------------------------
n99_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 296], rax
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 312], rax
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 328], rax
                        .section         .rodata
.Lrkfn253:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn253]                         # fn
                        lea              rsi, [rsp + 288]                               # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              eax, 104
                                                                                        je    n101_lit_string_α
                                                                                        jmp   n100_call_builtin_icon_α
n99_call_builtin_icon_β:
                                                                                        jmp   n101_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n100_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 248], rax
                        .section         .rodata
.Lrkfn255:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn255]                         # fn
                        lea              rsi, [rsp + 240]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              eax, 104
                                                                                        je    n101_lit_string_α
                                                                                        jmp   n101_lit_string_α
n100_call_builtin_icon_β:
                                                                                        jmp   n101_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_string_α:
                        mov              qword ptr [rsp + 176], 2                       # result
                        mov              dword ptr [rsp + 180], 3
                        mov              rax, qword ptr [rip + .Lx256_0]
                        mov              qword ptr [rsp + 184], rax
                                                                                        jmp   n102_lit_integer_α
.Lx256_0:
                        .quad            .Lx256_0_s
.Lx256_0_s:
                        .string          "stu"
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_integer_α:
                        mov              qword ptr [rsp + 192], 3                       # result
                        mov              rax, qword ptr [rip + .Lx257_0]
                        mov              qword ptr [rsp + 200], rax
                                                                                        jmp   n103_lit_string_α
.Lx257_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_string_α:
                        mov              qword ptr [rsp + 208], 2                       # result
                        mov              dword ptr [rsp + 212], 2
                        mov              rax, qword ptr [rip + .Lx258_0]
                        mov              qword ptr [rsp + 216], rax
                                                                                        jmp   n104_call_builtin_icon_α
.Lx258_0:
                        .quad            .Lx258_0_s
.Lx258_0_s:
                        .string          "<>"
#-----------------------------------------------------------------------------------------------------------------------
n104_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 120], rax
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 136], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 152], rax
                        .section         .rodata
.Lrkfn260:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn260]                         # fn
                        lea              rsi, [rsp + 112]                               # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              eax, 104
                                                                                        je    n106_lit_string_α
                                                                                        jmp   n105_call_builtin_icon_α
n104_call_builtin_icon_β:
                                                                                        jmp   n106_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n105_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 72], rax
                        .section         .rodata
.Lrkfn262:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn262]                         # fn
                        lea              rsi, [rsp + 64]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              eax, 104
                                                                                        je    n106_lit_string_α
                                                                                        jmp   n106_lit_string_α
n105_call_builtin_icon_β:
                                                                                        jmp   n106_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_string_α:
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx263_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n107_lit_integer_α
.Lx263_0:
                        .quad            .Lx263_0_s
.Lx263_0_s:
                        .string          "vwx"
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_integer_α:
                        mov              qword ptr [rsp + 16], 3                        # result
                        mov              rax, qword ptr [rip + .Lx264_0]
                        mov              qword ptr [rsp + 24], rax
                                                                                        jmp   n108_lit_string_α
.Lx264_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_string_α:
                        mov              qword ptr [rsp + 32], 2                        # result
                        mov              dword ptr [rsp + 36], 2
                        mov              rax, qword ptr [rip + .Lx265_0]
                        mov              qword ptr [rsp + 40], rax
                                                                                        jmp   n109_call_builtin_icon_α
.Lx265_0:
                        .quad            .Lx265_0_s
.Lx265_0_s:
                        .string          "<>"
#-----------------------------------------------------------------------------------------------------------------------
n109_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 72], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 104], rax
                        .section         .rodata
.Lrkfn267:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn267]                         # fn
                        lea              rsi, [rsp + 64]                                # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx266_240
                        add              rsp, 3936
                                                                                        jmp   main_ω
.Lx266_240:
                                                                                        jmp   n110_call_builtin_icon_α
n109_call_builtin_icon_β:
                        add              rsp, 3936
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n110_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn269:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn269]                         # fn
                        lea              rsi, [rsp + 16]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx268_240
                        add              rsp, 3936
                                                                                        jmp   main_ω
.Lx268_240:
                        add              rsp, 3936
                                                                                        jmp   main_ω
n110_call_builtin_icon_β:
                        add              rsp, 3936
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
