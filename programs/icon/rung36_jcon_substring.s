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
                        sub              rsp, 6000
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
                        mov              qword ptr [rbp + 6304], 2                      # result
                        mov              dword ptr [rbp + 6308], 5
                        mov              rax, qword ptr [rip + .Lx45_0]
                        mov              qword ptr [rbp + 6312], rax
                                                                                        jmp   n1_assign_α
.Lx45_0:
                        .quad            .Lx45_0_s
.Lx45_0_s:
                        .string          "abcde"
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:
                        mov              rax, qword ptr [rbp + 6304]
                        mov              rdx, qword ptr [rbp + 6312]
                        mov              qword ptr [rbp + 6320], rax
                        mov              qword ptr [rbp + 6328], rdx
                                                                                        jmp   n2_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        mov              qword ptr [rbp + 6288], 2                      # result
                        mov              dword ptr [rbp + 6292], 5
                        mov              rax, qword ptr [rip + .Lx47_0]
                        mov              qword ptr [rbp + 6296], rax
                                                                                        jmp   n3_assign_α
.Lx47_0:
                        .quad            .Lx47_0_s
.Lx47_0_s:
                        .string          "ABCDE"
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:
                        mov              rax, qword ptr [rbp + 6288]
                        mov              rdx, qword ptr [rbp + 6296]
                        mov              qword ptr [rbp + 6384], rax
                        mov              qword ptr [rbp + 6392], rdx
                                                                                        jmp   n4_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:
                        mov              qword ptr [rbp + 6224], 2                      # result
                        mov              dword ptr [rbp + 6228], 3
                        mov              rax, qword ptr [rip + .Lx49_0]
                        mov              qword ptr [rbp + 6232], rax
                                                                                        jmp   n5_var_α
.Lx49_0:
                        .quad            .Lx49_0_s
.Lx49_0_s:
                        .string          "A. "
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:
                        mov              rax, qword ptr [rbp + 6320]
                        mov              qword ptr [rbp + 6272], rax
                        mov              rax, qword ptr [rbp + 6328]
                        mov              qword ptr [rbp + 6280], rax
                                                                                        jmp   n6_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n6_iterate_α:
                        mov              qword ptr [rbp + 6256], 0
.Lx53_0:
                        mov              rdi, qword ptr [rbp + 6272]                    # obj
                        mov              rsi, qword ptr [rbp + 6280]                    # obj
                        mov              rdx, qword ptr [rbp + 6256]                    # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 6240], rax
                        mov              qword ptr [rbp + 6248], rdx
                        cmp              rax, 99
                                                                                        je    n8_lit_string_α
                                                                                        jmp   n7_call_builtin_icon_α
n6_iterate_β:
                        inc              qword ptr [rbp + 6256]
                                                                                        jmp   .Lx53_0
#-----------------------------------------------------------------------------------------------------------------------
n7_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 6224]
                        mov              qword ptr [rbp + 6176], rax
                        mov              rax, qword ptr [rbp + 6232]
                        mov              qword ptr [rbp + 6184], rax
                        mov              rax, qword ptr [rbp + 6240]
                        mov              qword ptr [rbp + 6192], rax
                        mov              rax, qword ptr [rbp + 6248]
                        mov              qword ptr [rbp + 6200], rax
                        .section         .rodata
.Lrkfn55:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn55]                          # fn
                        lea              rsi, [rbp + 6176]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6160], rax
                        mov              qword ptr [rbp + 6168], rdx
                        cmp              eax, 104
                                                                                        je    n6_iterate_β
                                                                                        jmp   n8_lit_string_α
n7_call_builtin_icon_β:
                                                                                        jmp   n6_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:
                        mov              qword ptr [rbp + 6096], 2                      # result
                        mov              dword ptr [rbp + 6100], 3
                        mov              rax, qword ptr [rip + .Lx56_0]
                        mov              qword ptr [rbp + 6104], rax
                                                                                        jmp   n9_var_α
.Lx56_0:
                        .quad            .Lx56_0_s
.Lx56_0_s:
                        .string          "B. "
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:
                        mov              rax, qword ptr [rbp + 6320]
                        mov              qword ptr [rbp + 6144], rax
                        mov              rax, qword ptr [rbp + 6328]
                        mov              qword ptr [rbp + 6152], rax
                                                                                        jmp   n10_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n10_iterate_α:
                        mov              qword ptr [rbp + 6128], 0
.Lx60_0:
                        mov              rdi, qword ptr [rbp + 6144]                    # obj
                        mov              rsi, qword ptr [rbp + 6152]                    # obj
                        mov              rdx, qword ptr [rbp + 6128]                    # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 6112], rax
                        mov              qword ptr [rbp + 6120], rdx
                        cmp              rax, 99
                                                                                        jne   .Lx60_240
                        add              rsp, 6000
                                                                                        jmp   n12_lit_integer_α
.Lx60_240:
                                                                                        jmp   n11_call_builtin_icon_α
n10_iterate_β:
                        inc              qword ptr [rbp + 6128]
                                                                                        jmp   .Lx60_0
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 6096]
                        mov              qword ptr [rbp + 6048], rax
                        mov              rax, qword ptr [rbp + 6104]
                        mov              qword ptr [rbp + 6056], rax
                        mov              rax, qword ptr [rbp + 6112]
                        mov              qword ptr [rbp + 6064], rax
                        mov              rax, qword ptr [rbp + 6120]
                        mov              qword ptr [rbp + 6072], rax
                        .section         .rodata
.Lrkfn62:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn62]                          # fn
                        lea              rsi, [rbp + 6048]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6032], rax
                        mov              qword ptr [rbp + 6040], rdx
                        cmp              eax, 104
                                                                                        je    n10_iterate_β
                                                                                        jmp   n10_iterate_β
n11_call_builtin_icon_β:
                                                                                        jmp   n10_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:
                        mov              qword ptr [rbp + 5696], 3                      # result
                        mov              rax, qword ptr [rip + .Lx63_0]
                        mov              qword ptr [rbp + 5704], rax
                                                                                        jmp   n13_lit_integer_α
.Lx63_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_integer_α:
                        mov              qword ptr [rbp + 5712], 3                      # result
                        mov              rax, qword ptr [rip + .Lx64_0]
                        mov              qword ptr [rbp + 5720], rax
                                                                                        jmp   n14_to_α
.Lx64_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n14_to_α:
                        mov              rdi, qword ptr [rbp + 5696]                    # v
                        mov              rsi, qword ptr [rbp + 5704]                    # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 5696], 3
                        mov              qword ptr [rbp + 5704], rax
                        mov              rdi, qword ptr [rbp + 5712]                    # v
                        mov              rsi, qword ptr [rbp + 5720]                    # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 5712], 3
                        mov              qword ptr [rbp + 5720], rax
                        mov              rax, qword ptr [rbp + 5704]
                        mov              qword ptr [rbp + 5680], rax
.Lx66_0:
                        mov              rax, qword ptr [rbp + 5680]
                        mov              rcx, qword ptr [rbp + 5720]
                        cmp              rax, rcx
                                                                                        jg    n28_lit_integer_α
                        mov              qword ptr [rbp + 5664], 3
                        mov              qword ptr [rbp + 5672], rax
                                                                                        jmp   n15_assign_α
n14_to_β:
                        inc              qword ptr [rbp + 5680]
                                                                                        jmp   .Lx66_0
#-----------------------------------------------------------------------------------------------------------------------
n15_assign_α:
                        mov              rax, qword ptr [rbp + 5664]
                        mov              rdx, qword ptr [rbp + 5672]
                        mov              qword ptr [rbp + 6336], rax
                        mov              qword ptr [rbp + 6344], rdx
                                                                                        jmp   n16_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n16_bound_α:
                        mov              qword ptr [rbp + 5728], rsp
                                                                                        jmp   n17_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:
                        mov              qword ptr [rbp + 5872], 2                      # result
                        mov              dword ptr [rbp + 5876], 2
                        mov              rax, qword ptr [rip + .Lx70_0]
                        mov              qword ptr [rbp + 5880], rax
                                                                                        jmp   n18_var_α
.Lx70_0:
                        .quad            .Lx70_0_s
.Lx70_0_s:
                        .string          "C "
#-----------------------------------------------------------------------------------------------------------------------
n18_var_α:
                        mov              rax, qword ptr [rbp + 6336]
                        mov              qword ptr [rbp + 5888], rax
                        mov              rax, qword ptr [rbp + 6344]
                        mov              qword ptr [rbp + 5896], rax
                                                                                        jmp   n19_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:
                        mov              qword ptr [rbp + 5904], 2                      # result
                        mov              dword ptr [rbp + 5908], 2
                        mov              rax, qword ptr [rip + .Lx73_0]
                        mov              qword ptr [rbp + 5912], rax
                                                                                        jmp   n20_disjunction_α
.Lx73_0:
                        .quad            .Lx73_0_s
.Lx73_0_s:
                        .string          ". "
#-----------------------------------------------------------------------------------------------------------------------
n20_disjunction_α:
                        mov              qword ptr [rbp + 5920], 0
                        mov              qword ptr [rbp + 5928], 0
                        mov              dword ptr [rbp + 5936], 0
                                                                                        jmp   n23_var_ref_α
n20_disjunction_as:
                        mov              eax, dword ptr [rbp + 5936]
                        cmp              eax, 0
                                                                                        jne   .Lx75_0
                        mov              rax, qword ptr [rbp + 6000]
                        mov              qword ptr [rbp + 5920], rax
                        mov              rax, qword ptr [rbp + 6008]
                        mov              qword ptr [rbp + 5928], rax
                                                                                        jmp   n21_call_builtin_icon_α
.Lx75_0:
                        cmp              eax, 1
                                                                                        jne   .Lx75_1
                        mov              rax, qword ptr [rbp + 6016]
                        mov              qword ptr [rbp + 5920], rax
                        mov              rax, qword ptr [rbp + 6024]
                        mov              qword ptr [rbp + 5928], rax
                                                                                        jmp   n21_call_builtin_icon_α
.Lx75_1:
                                                                                        jmp   n21_call_builtin_icon_α
n20_disjunction_β:
                        mov              eax, dword ptr [rbp + 5936]
                        cmp              eax, 0
                                                                                        je    n20_disjunction_af
                                                                                        jmp   n20_disjunction_af
n20_disjunction_af:
                        add              dword ptr [rbp + 5936], 1
                        mov              eax, dword ptr [rbp + 5936]
                        cmp              eax, 1
                                                                                        je    n22_lit_string_α
                                                                                        jmp   n27_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n21_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5872]
                        mov              qword ptr [rbp + 5792], rax
                        mov              rax, qword ptr [rbp + 5880]
                        mov              qword ptr [rbp + 5800], rax
                        mov              rax, qword ptr [rbp + 5888]
                        mov              qword ptr [rbp + 5808], rax
                        mov              rax, qword ptr [rbp + 5896]
                        mov              qword ptr [rbp + 5816], rax
                        mov              rax, qword ptr [rbp + 5904]
                        mov              qword ptr [rbp + 5824], rax
                        mov              rax, qword ptr [rbp + 5912]
                        mov              qword ptr [rbp + 5832], rax
                        mov              rax, qword ptr [rbp + 5920]
                        mov              qword ptr [rbp + 5840], rax
                        mov              rax, qword ptr [rbp + 5928]
                        mov              qword ptr [rbp + 5848], rax
                        .section         .rodata
.Lrkfn77:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn77]                          # fn
                        lea              rsi, [rbp + 5792]                              # args
                        mov              edx, 4                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5776], rax
                        mov              qword ptr [rbp + 5784], rdx
                        cmp              eax, 104
                                                                                        je    n20_disjunction_β
                                                                                        jmp   n27_unmark_α
n21_call_builtin_icon_β:
                                                                                        jmp   n20_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:
                        mov              qword ptr [rbp + 6016], 2                      # result
                        mov              dword ptr [rbp + 6020], 2
                        mov              rax, qword ptr [rip + .Lx78_0]
                        mov              qword ptr [rbp + 6024], rax
                                                                                        jmp   n20_disjunction_as
n22_lit_string_β:
                                                                                        jmp   n20_disjunction_af
.Lx78_0:
                        .quad            .Lx78_0_s
.Lx78_0_s:
                        .string          "--"
#-----------------------------------------------------------------------------------------------------------------------
n23_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6320]
                        mov              qword ptr [rbp + 5952], rax
                        mov              qword ptr [rbp + 5960], rdx
                                                                                        jmp   n24_var_α
n23_var_ref_β:
                                                                                        jmp   n20_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n24_var_α:
                        mov              rax, qword ptr [rbp + 6336]
                        mov              qword ptr [rbp + 5968], rax
                        mov              rax, qword ptr [rbp + 6344]
                        mov              qword ptr [rbp + 5976], rax
                                                                                        jmp   n25_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n25_subscript_α:
                        mov              rdi, qword ptr [rbp + 5952]                    # base
                        mov              rsi, qword ptr [rbp + 5960]                    # base
                        mov              rdx, qword ptr [rbp + 5968]                    # idx
                        mov              rcx, qword ptr [rbp + 5976]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n20_disjunction_af
                        mov              qword ptr [rbp + 5984], rax
                        mov              qword ptr [rbp + 5992], rdx
                                                                                        jmp   n26_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n26_deref_α:
                        mov              rdi, qword ptr [rbp + 5984]                    # d
                        mov              rsi, qword ptr [rbp + 5992]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n20_disjunction_af
                        mov              qword ptr [rbp + 6000], rax
                        mov              qword ptr [rbp + 6008], rdx
                                                                                        jmp   n20_disjunction_as
n26_deref_β:
                                                                                        jmp   n20_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n27_unmark_α:
                        mov              rsp, qword ptr [rbp + 5728]
                                                                                        jmp   n14_to_β
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_integer_α:
                        mov              qword ptr [rbp + 5312], 3                      # result
                        mov              rax, qword ptr [rip + .Lx87_0]
                        mov              qword ptr [rbp + 5320], rax
                                                                                        jmp   n29_lit_integer_α
.Lx87_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_integer_α:
                        mov              qword ptr [rbp + 5328], 3                      # result
                        mov              rax, qword ptr [rip + .Lx88_0]
                        mov              qword ptr [rbp + 5336], rax
                                                                                        jmp   n30_lit_integer_α
.Lx88_0:
                        .quad            18446744073709551610
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:
                        mov              qword ptr [rbp + 5344], 3                      # result
                        mov              rax, qword ptr [rip + .Lx89_0]
                        mov              qword ptr [rbp + 5352], rax
                                                                                        jmp   n31_to_by_α
.Lx89_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n31_to_by_α:
                        mov              rdi, qword ptr [rbp + 5312]                    # v
                        mov              rsi, qword ptr [rbp + 5320]                    # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 5312], 3
                        mov              qword ptr [rbp + 5320], rax
                        mov              rdi, qword ptr [rbp + 5328]                    # v
                        mov              rsi, qword ptr [rbp + 5336]                    # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 5328], 3
                        mov              qword ptr [rbp + 5336], rax
                        mov              rdi, qword ptr [rbp + 5344]                    # v
                        mov              rsi, qword ptr [rbp + 5352]                    # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 5344], 3
                        mov              qword ptr [rbp + 5352], rax
                        mov              rax, qword ptr [rbp + 5320]
                        mov              qword ptr [rbp + 5296], rax
.Lx91_0:
                        mov              rax, qword ptr [rbp + 5296]
                        mov              rcx, qword ptr [rbp + 5336]
                        mov              rdx, qword ptr [rbp + 5352]
                        cmp              rdx, 0
                                                                                        jl    .Lx91_1
                        cmp              rax, rcx
                                                                                        jg    main_ω
                                                                                        jmp   .Lx91_2
.Lx91_1:
                        cmp              rax, rcx
                                                                                        jl    main_ω
.Lx91_2:
                        mov              qword ptr [rbp + 5280], 3
                        mov              qword ptr [rbp + 5288], rax
                                                                                        jmp   n32_assign_α
n31_to_by_β:
                        mov              rdx, qword ptr [rbp + 5352]
                        mov              rax, qword ptr [rbp + 5296]
                        add              rax, rdx
                        mov              qword ptr [rbp + 5296], rax
                                                                                        jmp   .Lx91_0
#-----------------------------------------------------------------------------------------------------------------------
n32_assign_α:
                        mov              rax, qword ptr [rbp + 5280]
                        mov              rdx, qword ptr [rbp + 5288]
                        mov              qword ptr [rbp + 6336], rax
                        mov              qword ptr [rbp + 6344], rdx
                                                                                        jmp   n33_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n33_bound_α:
                        mov              qword ptr [rbp + 5360], rsp
                                                                                        jmp   n34_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_string_α:
                        mov              qword ptr [rbp + 5504], 2                      # result
                        mov              dword ptr [rbp + 5508], 2
                        mov              rax, qword ptr [rip + .Lx95_0]
                        mov              qword ptr [rbp + 5512], rax
                                                                                        jmp   n35_var_α
.Lx95_0:
                        .quad            .Lx95_0_s
.Lx95_0_s:
                        .string          "D "
#-----------------------------------------------------------------------------------------------------------------------
n35_var_α:
                        mov              rax, qword ptr [rbp + 6336]
                        mov              qword ptr [rbp + 5520], rax
                        mov              rax, qword ptr [rbp + 6344]
                        mov              qword ptr [rbp + 5528], rax
                                                                                        jmp   n36_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_string_α:
                        mov              qword ptr [rbp + 5536], 2                      # result
                        mov              dword ptr [rbp + 5540], 2
                        mov              rax, qword ptr [rip + .Lx98_0]
                        mov              qword ptr [rbp + 5544], rax
                                                                                        jmp   n37_disjunction_α
.Lx98_0:
                        .quad            .Lx98_0_s
.Lx98_0_s:
                        .string          ". "
#-----------------------------------------------------------------------------------------------------------------------
n37_disjunction_α:
                        mov              qword ptr [rbp + 5552], 0
                        mov              qword ptr [rbp + 5560], 0
                        mov              dword ptr [rbp + 5568], 0
                                                                                        jmp   n40_var_ref_α
n37_disjunction_as:
                        mov              eax, dword ptr [rbp + 5568]
                        cmp              eax, 0
                                                                                        jne   .Lx100_0
                        mov              rax, qword ptr [rbp + 5632]
                        mov              qword ptr [rbp + 5552], rax
                        mov              rax, qword ptr [rbp + 5640]
                        mov              qword ptr [rbp + 5560], rax
                                                                                        jmp   n38_call_builtin_icon_α
.Lx100_0:
                        cmp              eax, 1
                                                                                        jne   .Lx100_1
                        mov              rax, qword ptr [rbp + 5648]
                        mov              qword ptr [rbp + 5552], rax
                        mov              rax, qword ptr [rbp + 5656]
                        mov              qword ptr [rbp + 5560], rax
                                                                                        jmp   n38_call_builtin_icon_α
.Lx100_1:
                                                                                        jmp   n38_call_builtin_icon_α
n37_disjunction_β:
                        mov              eax, dword ptr [rbp + 5568]
                        cmp              eax, 0
                                                                                        je    n37_disjunction_af
                                                                                        jmp   n37_disjunction_af
n37_disjunction_af:
                        add              dword ptr [rbp + 5568], 1
                        mov              eax, dword ptr [rbp + 5568]
                        cmp              eax, 1
                                                                                        je    n39_lit_string_α
                                                                                        jmp   n44_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n38_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5504]
                        mov              qword ptr [rbp + 5424], rax
                        mov              rax, qword ptr [rbp + 5512]
                        mov              qword ptr [rbp + 5432], rax
                        mov              rax, qword ptr [rbp + 5520]
                        mov              qword ptr [rbp + 5440], rax
                        mov              rax, qword ptr [rbp + 5528]
                        mov              qword ptr [rbp + 5448], rax
                        mov              rax, qword ptr [rbp + 5536]
                        mov              qword ptr [rbp + 5456], rax
                        mov              rax, qword ptr [rbp + 5544]
                        mov              qword ptr [rbp + 5464], rax
                        mov              rax, qword ptr [rbp + 5552]
                        mov              qword ptr [rbp + 5472], rax
                        mov              rax, qword ptr [rbp + 5560]
                        mov              qword ptr [rbp + 5480], rax
                        .section         .rodata
.Lrkfn102:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn102]                         # fn
                        lea              rsi, [rbp + 5424]                              # args
                        mov              edx, 4                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5408], rax
                        mov              qword ptr [rbp + 5416], rdx
                        cmp              eax, 104
                                                                                        je    n37_disjunction_β
                                                                                        jmp   n44_unmark_α
n38_call_builtin_icon_β:
                                                                                        jmp   n37_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:
                        mov              qword ptr [rbp + 5648], 2                      # result
                        mov              dword ptr [rbp + 5652], 2
                        mov              rax, qword ptr [rip + .Lx103_0]
                        mov              qword ptr [rbp + 5656], rax
                                                                                        jmp   n37_disjunction_as
n39_lit_string_β:
                                                                                        jmp   n37_disjunction_af
.Lx103_0:
                        .quad            .Lx103_0_s
.Lx103_0_s:
                        .string          "--"
#-----------------------------------------------------------------------------------------------------------------------
n40_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6320]
                        mov              qword ptr [rbp + 5584], rax
                        mov              qword ptr [rbp + 5592], rdx
                                                                                        jmp   n41_var_α
n40_var_ref_β:
                                                                                        jmp   n37_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n41_var_α:
                        mov              rax, qword ptr [rbp + 6336]
                        mov              qword ptr [rbp + 5600], rax
                        mov              rax, qword ptr [rbp + 6344]
                        mov              qword ptr [rbp + 5608], rax
                                                                                        jmp   n42_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n42_subscript_α:
                        mov              rdi, qword ptr [rbp + 5584]                    # base
                        mov              rsi, qword ptr [rbp + 5592]                    # base
                        mov              rdx, qword ptr [rbp + 5600]                    # idx
                        mov              rcx, qword ptr [rbp + 5608]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n37_disjunction_af
                        mov              qword ptr [rbp + 5616], rax
                        mov              qword ptr [rbp + 5624], rdx
                                                                                        jmp   n43_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n43_deref_α:
                        mov              rdi, qword ptr [rbp + 5616]                    # d
                        mov              rsi, qword ptr [rbp + 5624]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n37_disjunction_af
                        mov              qword ptr [rbp + 5632], rax
                        mov              qword ptr [rbp + 5640], rdx
                                                                                        jmp   n37_disjunction_as
n43_deref_β:
                                                                                        jmp   n37_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n44_unmark_α:
                        mov              rsp, qword ptr [rbp + 5360]
                                                                                        jmp   n31_to_by_β
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
