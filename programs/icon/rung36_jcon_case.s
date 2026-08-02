                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_foo_α
proc_foo_α:
proc_foo_α_body:
                                                                                        jmp   proc_foo_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_foo_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_foo_β:
                                                                                        jmp   proc_foo_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_foo_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_foo_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_foo_dcα:
                        pop              r11
                        sub              rsp, 64
                        mov              qword ptr [rsp + 40], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 16], r11
                        lea              rax, [rip + .Lx0_2]
                        mov              qword ptr [rsp + 24], rax
                        lea              rax, [rip + .Lx0_3]
                        mov              qword ptr [rsp + 32], rax
                        mov              rdi, rbp                                       # fb
                        mov              esi, 16                                        # suffix_off
                        mov              edx, 16                                        # region_bytes
                        mov              ecx, 0                                         # np
                        mov              r8d, 0                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_foo_α_body
.Lx0_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -48
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx0_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -48
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lclassspec0:           .string          "rec(a)"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec0]
                        call             record_register@PLT
                        .section         .rodata
.Lstartup_pname0:       .string          "foo"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_foo_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_foo_dcα]
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
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:
                        sub              rsp, 36592
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
                        mov              qword ptr [rsp + 6304], 0
                        mov              qword ptr [rsp + 6312], 0
                        mov              qword ptr [rsp + 6320], 0
                        mov              qword ptr [rsp + 6328], 0
                        mov              qword ptr [rsp + 6336], 0
                        mov              qword ptr [rsp + 6344], 0
                        mov              qword ptr [rsp + 6352], 0
                        mov              qword ptr [rsp + 6360], 0
                        mov              qword ptr [rsp + 6368], 0
                        mov              qword ptr [rsp + 6376], 0
                        mov              qword ptr [rsp + 6384], 0
                        mov              qword ptr [rsp + 6392], 0
                        mov              qword ptr [rsp + 6400], 0
                        mov              qword ptr [rsp + 6408], 0
                        mov              qword ptr [rsp + 6416], 0
                        mov              qword ptr [rsp + 6424], 0
                        mov              qword ptr [rsp + 6432], 0
                        mov              qword ptr [rsp + 6440], 0
                        mov              qword ptr [rsp + 6448], 0
                        mov              qword ptr [rsp + 6456], 0
                        mov              qword ptr [rsp + 6464], 0
                        mov              qword ptr [rsp + 6472], 0
                        mov              qword ptr [rsp + 6480], 0
                        mov              qword ptr [rsp + 6488], 0
                        mov              qword ptr [rsp + 6496], 0
                        mov              qword ptr [rsp + 6504], 0
                        mov              qword ptr [rsp + 6512], 0
                        mov              qword ptr [rsp + 6520], 0
                        mov              qword ptr [rsp + 6528], 0
                        mov              qword ptr [rsp + 6536], 0
                        mov              qword ptr [rsp + 6544], 0
                        mov              qword ptr [rsp + 6552], 0
                        mov              qword ptr [rsp + 6560], 0
                        mov              qword ptr [rsp + 6568], 0
                        mov              qword ptr [rsp + 6576], 0
                        mov              qword ptr [rsp + 6584], 0
                        mov              qword ptr [rsp + 6592], 0
                        mov              qword ptr [rsp + 6600], 0
                        mov              qword ptr [rsp + 6608], 0
                        mov              qword ptr [rsp + 6616], 0
                        mov              qword ptr [rsp + 6624], 0
                        mov              qword ptr [rsp + 6632], 0
                        mov              qword ptr [rsp + 6640], 0
                        mov              qword ptr [rsp + 6648], 0
                        mov              qword ptr [rsp + 6656], 0
                        mov              qword ptr [rsp + 6664], 0
                        mov              qword ptr [rsp + 6672], 0
                        mov              qword ptr [rsp + 6680], 0
                        mov              qword ptr [rsp + 6688], 0
                        mov              qword ptr [rsp + 6696], 0
                        mov              qword ptr [rsp + 6704], 0
                        mov              qword ptr [rsp + 6712], 0
                        mov              qword ptr [rsp + 6720], 0
                        mov              qword ptr [rsp + 6728], 0
                        mov              qword ptr [rsp + 6736], 0
                        mov              qword ptr [rsp + 6744], 0
                        mov              qword ptr [rsp + 6752], 0
                        mov              qword ptr [rsp + 6760], 0
                        mov              qword ptr [rsp + 6768], 0
                        mov              qword ptr [rsp + 6776], 0
                        mov              qword ptr [rsp + 6784], 0
                        mov              qword ptr [rsp + 6792], 0
                        mov              qword ptr [rsp + 6800], 0
                        mov              qword ptr [rsp + 6808], 0
                        mov              qword ptr [rsp + 6816], 0
                        mov              qword ptr [rsp + 6824], 0
                        mov              qword ptr [rsp + 6832], 0
                        mov              qword ptr [rsp + 6840], 0
                        mov              qword ptr [rsp + 6848], 0
                        mov              qword ptr [rsp + 6856], 0
                        mov              qword ptr [rsp + 6864], 0
                        mov              qword ptr [rsp + 6872], 0
                        mov              qword ptr [rsp + 6880], 0
                        mov              qword ptr [rsp + 6888], 0
                        mov              qword ptr [rsp + 6896], 0
                        mov              qword ptr [rsp + 6904], 0
                        mov              qword ptr [rsp + 6912], 0
                        mov              qword ptr [rsp + 6920], 0
                        mov              qword ptr [rsp + 6928], 0
                        mov              qword ptr [rsp + 6936], 0
                        mov              qword ptr [rsp + 6944], 0
                        mov              qword ptr [rsp + 6952], 0
                        mov              qword ptr [rsp + 6960], 0
                        mov              qword ptr [rsp + 6968], 0
                        mov              qword ptr [rsp + 6976], 0
                        mov              qword ptr [rsp + 6984], 0
                        mov              qword ptr [rsp + 6992], 0
                        mov              qword ptr [rsp + 7000], 0
                        mov              qword ptr [rsp + 7008], 0
                        mov              qword ptr [rsp + 7016], 0
                        mov              qword ptr [rsp + 7024], 0
                        mov              qword ptr [rsp + 7032], 0
                        mov              qword ptr [rsp + 7040], 0
                        mov              qword ptr [rsp + 7048], 0
                        mov              qword ptr [rsp + 7056], 0
                        mov              qword ptr [rsp + 7064], 0
                        mov              qword ptr [rsp + 7072], 0
                        mov              qword ptr [rsp + 7080], 0
                        mov              qword ptr [rsp + 7088], 0
                        mov              qword ptr [rsp + 7096], 0
                        mov              qword ptr [rsp + 7104], 0
                        mov              qword ptr [rsp + 7112], 0
                        mov              qword ptr [rsp + 7120], 0
                        mov              qword ptr [rsp + 7128], 0
                        mov              qword ptr [rsp + 7136], 0
                        mov              qword ptr [rsp + 7144], 0
                        mov              qword ptr [rsp + 7152], 0
                        mov              qword ptr [rsp + 7160], 0
                        mov              qword ptr [rsp + 7168], 0
                        mov              qword ptr [rsp + 7176], 0
                        mov              qword ptr [rsp + 7184], 0
                        mov              qword ptr [rsp + 7192], 0
                        mov              qword ptr [rsp + 7200], 0
                        mov              qword ptr [rsp + 7208], 0
                        mov              qword ptr [rsp + 7216], 0
                        mov              qword ptr [rsp + 7224], 0
                        mov              qword ptr [rsp + 7232], 0
                        mov              qword ptr [rsp + 7240], 0
                        mov              qword ptr [rsp + 7248], 0
                        mov              qword ptr [rsp + 7256], 0
                        mov              qword ptr [rsp + 7264], 0
                        mov              qword ptr [rsp + 7272], 0
                        mov              qword ptr [rsp + 7280], 0
                        mov              qword ptr [rsp + 7288], 0
                        mov              qword ptr [rsp + 7296], 0
                        mov              qword ptr [rsp + 7304], 0
                        mov              qword ptr [rsp + 7312], 0
                        mov              qword ptr [rsp + 7320], 0
                        mov              qword ptr [rsp + 7328], 0
                        mov              qword ptr [rsp + 7336], 0
                        mov              qword ptr [rsp + 7344], 0
                        mov              qword ptr [rsp + 7352], 0
                        mov              qword ptr [rsp + 7360], 0
                        mov              qword ptr [rsp + 7368], 0
                        mov              qword ptr [rsp + 7376], 0
                        mov              qword ptr [rsp + 7384], 0
                        mov              qword ptr [rsp + 7392], 0
                        mov              qword ptr [rsp + 7400], 0
                        mov              qword ptr [rsp + 7408], 0
                        mov              qword ptr [rsp + 7416], 0
                        mov              qword ptr [rsp + 7424], 0
                        mov              qword ptr [rsp + 7432], 0
                        mov              qword ptr [rsp + 7440], 0
                        mov              qword ptr [rsp + 7448], 0
                        mov              qword ptr [rsp + 7456], 0
                        mov              qword ptr [rsp + 7464], 0
                        mov              qword ptr [rsp + 7472], 0
                        mov              qword ptr [rsp + 7480], 0
                        mov              qword ptr [rsp + 7488], 0
                        mov              qword ptr [rsp + 7496], 0
                        mov              qword ptr [rsp + 7504], 0
                        mov              qword ptr [rsp + 7512], 0
                        mov              qword ptr [rsp + 7520], 0
                        mov              qword ptr [rsp + 7528], 0
                        mov              qword ptr [rsp + 7536], 0
                        mov              qword ptr [rsp + 7544], 0
                        mov              qword ptr [rsp + 7552], 0
                        mov              qword ptr [rsp + 7560], 0
                        mov              qword ptr [rsp + 7568], 0
                        mov              qword ptr [rsp + 7576], 0
                        mov              qword ptr [rsp + 7584], 0
                        mov              qword ptr [rsp + 7592], 0
                        mov              qword ptr [rsp + 7600], 0
                        mov              qword ptr [rsp + 7608], 0
                        mov              qword ptr [rsp + 7616], 0
                        mov              qword ptr [rsp + 7624], 0
                        mov              qword ptr [rsp + 7632], 0
                        mov              qword ptr [rsp + 7640], 0
                        mov              qword ptr [rsp + 7648], 0
                        mov              qword ptr [rsp + 7656], 0
                        mov              qword ptr [rsp + 7664], 0
                        mov              qword ptr [rsp + 7672], 0
                        mov              qword ptr [rsp + 7680], 0
                        mov              qword ptr [rsp + 7688], 0
                        mov              qword ptr [rsp + 7696], 0
                        mov              qword ptr [rsp + 7704], 0
                        mov              qword ptr [rsp + 7712], 0
                        mov              qword ptr [rsp + 7720], 0
                        mov              qword ptr [rsp + 7728], 0
                        mov              qword ptr [rsp + 7736], 0
                        mov              qword ptr [rsp + 7744], 0
                        mov              qword ptr [rsp + 7752], 0
                        mov              qword ptr [rsp + 7760], 0
                        mov              qword ptr [rsp + 7768], 0
                        mov              qword ptr [rsp + 7776], 0
                        mov              qword ptr [rsp + 7784], 0
                        mov              qword ptr [rsp + 7792], 0
                        mov              qword ptr [rsp + 7800], 0
                        mov              qword ptr [rsp + 7808], 0
                        mov              qword ptr [rsp + 7816], 0
                        mov              qword ptr [rsp + 7824], 0
                        mov              qword ptr [rsp + 7832], 0
                        mov              qword ptr [rsp + 7840], 0
                        mov              qword ptr [rsp + 7848], 0
                        mov              qword ptr [rsp + 7856], 0
                        mov              qword ptr [rsp + 7864], 0
                        mov              qword ptr [rsp + 7872], 0
                        mov              qword ptr [rsp + 7880], 0
                        mov              qword ptr [rsp + 7888], 0
                        mov              qword ptr [rsp + 7896], 0
                        mov              qword ptr [rsp + 7904], 0
                        mov              qword ptr [rsp + 7912], 0
                        mov              qword ptr [rsp + 7920], 0
                        mov              qword ptr [rsp + 7928], 0
                        mov              qword ptr [rsp + 7936], 0
                        mov              qword ptr [rsp + 7944], 0
                        mov              qword ptr [rsp + 7952], 0
                        mov              qword ptr [rsp + 7960], 0
                        mov              qword ptr [rsp + 7968], 0
                        mov              qword ptr [rsp + 7976], 0
                        mov              qword ptr [rsp + 7984], 0
                        mov              qword ptr [rsp + 7992], 0
                        mov              qword ptr [rsp + 8000], 0
                        mov              qword ptr [rsp + 8008], 0
                        mov              qword ptr [rsp + 8016], 0
                        mov              qword ptr [rsp + 8024], 0
                        mov              qword ptr [rsp + 8032], 0
                        mov              qword ptr [rsp + 8040], 0
                        mov              qword ptr [rsp + 8048], 0
                        mov              qword ptr [rsp + 8056], 0
                        mov              qword ptr [rsp + 8064], 0
                        mov              qword ptr [rsp + 8072], 0
                        mov              qword ptr [rsp + 8080], 0
                        mov              qword ptr [rsp + 8088], 0
                        mov              qword ptr [rsp + 8096], 0
                        mov              qword ptr [rsp + 8104], 0
                        mov              qword ptr [rsp + 8112], 0
                        mov              qword ptr [rsp + 8120], 0
                        mov              qword ptr [rsp + 8128], 0
                        mov              qword ptr [rsp + 8136], 0
                        mov              qword ptr [rsp + 8144], 0
                        mov              qword ptr [rsp + 8152], 0
                        mov              qword ptr [rsp + 8160], 0
                        mov              qword ptr [rsp + 8168], 0
                        mov              qword ptr [rsp + 8176], 0
                        mov              qword ptr [rsp + 8184], 0
                        mov              qword ptr [rsp + 8192], 0
                        mov              qword ptr [rsp + 8200], 0
                        mov              qword ptr [rsp + 8208], 0
                        mov              qword ptr [rsp + 8216], 0
                        mov              qword ptr [rsp + 8224], 0
                        mov              qword ptr [rsp + 8232], 0
                        mov              qword ptr [rsp + 8240], 0
                        mov              qword ptr [rsp + 8248], 0
                        mov              qword ptr [rsp + 8256], 0
                        mov              qword ptr [rsp + 8264], 0
                        mov              qword ptr [rsp + 8272], 0
                        mov              qword ptr [rsp + 8280], 0
                        mov              qword ptr [rsp + 8288], 0
                        mov              qword ptr [rsp + 8296], 0
                        mov              qword ptr [rsp + 8304], 0
                        mov              qword ptr [rsp + 8312], 0
                        mov              qword ptr [rsp + 8320], 0
                        mov              qword ptr [rsp + 8328], 0
                        mov              qword ptr [rsp + 8336], 0
                        mov              qword ptr [rsp + 8344], 0
                        mov              qword ptr [rsp + 8352], 0
                        mov              qword ptr [rsp + 8360], 0
                        mov              qword ptr [rsp + 8368], 0
                        mov              qword ptr [rsp + 8376], 0
                        mov              qword ptr [rsp + 8384], 0
                        mov              qword ptr [rsp + 8392], 0
                        mov              qword ptr [rsp + 8400], 0
                        mov              qword ptr [rsp + 8408], 0
                        mov              qword ptr [rsp + 8416], 0
                        mov              qword ptr [rsp + 8424], 0
                        mov              qword ptr [rsp + 8432], 0
                        mov              qword ptr [rsp + 8440], 0
                        mov              qword ptr [rsp + 8448], 0
                        mov              qword ptr [rsp + 8456], 0
                        mov              qword ptr [rsp + 8464], 0
                        mov              qword ptr [rsp + 8472], 0
                        mov              qword ptr [rsp + 8480], 0
                        mov              qword ptr [rsp + 8488], 0
                        mov              qword ptr [rsp + 8496], 0
                        mov              qword ptr [rsp + 8504], 0
                        mov              qword ptr [rsp + 8512], 0
                        mov              qword ptr [rsp + 8520], 0
                        mov              qword ptr [rsp + 8528], 0
                        mov              qword ptr [rsp + 8536], 0
                        mov              qword ptr [rsp + 8544], 0
                        mov              qword ptr [rsp + 8552], 0
                        mov              qword ptr [rsp + 8560], 0
                        mov              qword ptr [rsp + 8568], 0
                        mov              qword ptr [rsp + 8576], 0
                        mov              qword ptr [rsp + 8584], 0
                        mov              qword ptr [rsp + 8592], 0
                        mov              qword ptr [rsp + 8600], 0
                        mov              qword ptr [rsp + 8608], 0
                        mov              qword ptr [rsp + 8616], 0
                        mov              qword ptr [rsp + 8624], 0
                        mov              qword ptr [rsp + 8632], 0
                        mov              qword ptr [rsp + 8640], 0
                        mov              qword ptr [rsp + 8648], 0
                        mov              qword ptr [rsp + 8656], 0
                        mov              qword ptr [rsp + 8664], 0
                        mov              qword ptr [rsp + 8672], 0
                        mov              qword ptr [rsp + 8680], 0
                        mov              qword ptr [rsp + 8688], 0
                        mov              qword ptr [rsp + 8696], 0
                        mov              qword ptr [rsp + 8704], 0
                        mov              qword ptr [rsp + 8712], 0
                        mov              qword ptr [rsp + 8720], 0
                        mov              qword ptr [rsp + 8728], 0
                        mov              qword ptr [rsp + 8736], 0
                        mov              qword ptr [rsp + 8744], 0
                        mov              qword ptr [rsp + 8752], 0
                        mov              qword ptr [rsp + 8760], 0
                        mov              qword ptr [rsp + 8768], 0
                        mov              qword ptr [rsp + 8776], 0
                        mov              qword ptr [rsp + 8784], 0
                        mov              qword ptr [rsp + 8792], 0
                        mov              qword ptr [rsp + 8800], 0
                        mov              qword ptr [rsp + 8808], 0
                        mov              qword ptr [rsp + 8816], 0
                        mov              qword ptr [rsp + 8824], 0
                        mov              qword ptr [rsp + 8832], 0
                        mov              qword ptr [rsp + 8840], 0
                        mov              qword ptr [rsp + 8848], 0
                        mov              qword ptr [rsp + 8856], 0
                        mov              qword ptr [rsp + 8864], 0
                        mov              qword ptr [rsp + 8872], 0
                        mov              qword ptr [rsp + 8880], 0
                        mov              qword ptr [rsp + 8888], 0
                        mov              qword ptr [rsp + 8896], 0
                        mov              qword ptr [rsp + 8904], 0
                        mov              qword ptr [rsp + 8912], 0
                        mov              qword ptr [rsp + 8920], 0
                        mov              qword ptr [rsp + 8928], 0
                        mov              qword ptr [rsp + 8936], 0
                        mov              qword ptr [rsp + 8944], 0
                        mov              qword ptr [rsp + 8952], 0
                        mov              qword ptr [rsp + 8960], 0
                        mov              qword ptr [rsp + 8968], 0
                        mov              qword ptr [rsp + 8976], 0
                        mov              qword ptr [rsp + 8984], 0
                        mov              qword ptr [rsp + 8992], 0
                        mov              qword ptr [rsp + 9000], 0
                        mov              qword ptr [rsp + 9008], 0
                        mov              qword ptr [rsp + 9016], 0
                        mov              qword ptr [rsp + 9024], 0
                        mov              qword ptr [rsp + 9032], 0
                        mov              qword ptr [rsp + 9040], 0
                        mov              qword ptr [rsp + 9048], 0
                        mov              qword ptr [rsp + 9056], 0
                        mov              qword ptr [rsp + 9064], 0
                        mov              qword ptr [rsp + 9072], 0
                        mov              qword ptr [rsp + 9080], 0
                        mov              qword ptr [rsp + 9088], 0
                        mov              qword ptr [rsp + 9096], 0
                        mov              qword ptr [rsp + 9104], 0
                        mov              qword ptr [rsp + 9112], 0
                        mov              qword ptr [rsp + 9120], 0
                        mov              qword ptr [rsp + 9128], 0
                        mov              qword ptr [rsp + 9136], 0
                        mov              qword ptr [rsp + 9144], 0
                        mov              qword ptr [rsp + 9152], 0
                        mov              qword ptr [rsp + 9160], 0
                        mov              qword ptr [rsp + 9168], 0
                        mov              qword ptr [rsp + 9176], 0
                        mov              qword ptr [rsp + 9184], 0
                        mov              qword ptr [rsp + 9192], 0
                        mov              qword ptr [rsp + 9200], 0
                        mov              qword ptr [rsp + 9208], 0
                        mov              qword ptr [rsp + 9216], 0
                        mov              qword ptr [rsp + 9224], 0
                        mov              qword ptr [rsp + 9232], 0
                        mov              qword ptr [rsp + 9240], 0
                        mov              qword ptr [rsp + 9248], 0
                        mov              qword ptr [rsp + 9256], 0
                        mov              qword ptr [rsp + 9264], 0
                        mov              qword ptr [rsp + 9272], 0
                        mov              qword ptr [rsp + 9280], 0
                        mov              qword ptr [rsp + 9288], 0
                        mov              qword ptr [rsp + 9296], 0
                        mov              qword ptr [rsp + 9304], 0
                        mov              qword ptr [rsp + 9312], 0
                        mov              qword ptr [rsp + 9320], 0
                        mov              qword ptr [rsp + 9328], 0
                        mov              qword ptr [rsp + 9336], 0
                        mov              qword ptr [rsp + 9344], 0
                        mov              qword ptr [rsp + 9352], 0
                        mov              qword ptr [rsp + 9360], 0
                        mov              qword ptr [rsp + 9368], 0
                        mov              qword ptr [rsp + 9376], 0
                        mov              qword ptr [rsp + 9384], 0
                        mov              qword ptr [rsp + 9392], 0
                        mov              qword ptr [rsp + 9400], 0
                        mov              qword ptr [rsp + 9408], 0
                        mov              qword ptr [rsp + 9416], 0
                        mov              qword ptr [rsp + 9424], 0
                        mov              qword ptr [rsp + 9432], 0
                        mov              qword ptr [rsp + 9440], 0
                        mov              qword ptr [rsp + 9448], 0
                        mov              qword ptr [rsp + 9456], 0
                        mov              qword ptr [rsp + 9464], 0
                        mov              qword ptr [rsp + 9472], 0
                        mov              qword ptr [rsp + 9480], 0
                        mov              qword ptr [rsp + 9488], 0
                        mov              qword ptr [rsp + 9496], 0
                        mov              qword ptr [rsp + 9504], 0
                        mov              qword ptr [rsp + 9512], 0
                        mov              qword ptr [rsp + 9520], 0
                        mov              qword ptr [rsp + 9528], 0
                        mov              qword ptr [rsp + 9536], 0
                        mov              qword ptr [rsp + 9544], 0
                        mov              qword ptr [rsp + 9552], 0
                        mov              qword ptr [rsp + 9560], 0
                        mov              qword ptr [rsp + 9568], 0
                        mov              qword ptr [rsp + 9576], 0
                        mov              qword ptr [rsp + 9584], 0
                        mov              qword ptr [rsp + 9592], 0
                        mov              qword ptr [rsp + 9600], 0
                        mov              qword ptr [rsp + 9608], 0
                        mov              qword ptr [rsp + 9616], 0
                        mov              qword ptr [rsp + 9624], 0
                        mov              qword ptr [rsp + 9632], 0
                        mov              qword ptr [rsp + 9640], 0
                        mov              qword ptr [rsp + 9648], 0
                        mov              qword ptr [rsp + 9656], 0
                        mov              qword ptr [rsp + 9664], 0
                        mov              qword ptr [rsp + 9672], 0
                        mov              qword ptr [rsp + 9680], 0
                        mov              qword ptr [rsp + 9688], 0
                        mov              qword ptr [rsp + 9696], 0
                        mov              qword ptr [rsp + 9704], 0
                        mov              qword ptr [rsp + 9712], 0
                        mov              qword ptr [rsp + 9720], 0
                        mov              qword ptr [rsp + 9728], 0
                        mov              qword ptr [rsp + 9736], 0
                        mov              qword ptr [rsp + 9744], 0
                        mov              qword ptr [rsp + 9752], 0
                        mov              qword ptr [rsp + 9760], 0
                        mov              qword ptr [rsp + 9768], 0
                        mov              qword ptr [rsp + 9776], 0
                        mov              qword ptr [rsp + 9784], 0
                        mov              qword ptr [rsp + 9792], 0
                        mov              qword ptr [rsp + 9800], 0
                        mov              qword ptr [rsp + 9808], 0
                        mov              qword ptr [rsp + 9816], 0
                        mov              qword ptr [rsp + 9824], 0
                        mov              qword ptr [rsp + 9832], 0
                        mov              qword ptr [rsp + 9840], 0
                        mov              qword ptr [rsp + 9848], 0
                        mov              qword ptr [rsp + 9856], 0
                        mov              qword ptr [rsp + 9864], 0
                        mov              qword ptr [rsp + 9872], 0
                        mov              qword ptr [rsp + 9880], 0
                        mov              qword ptr [rsp + 9888], 0
                        mov              qword ptr [rsp + 9896], 0
                        mov              qword ptr [rsp + 9904], 0
                        mov              qword ptr [rsp + 9912], 0
                        mov              qword ptr [rsp + 9920], 0
                        mov              qword ptr [rsp + 9928], 0
                        mov              qword ptr [rsp + 9936], 0
                        mov              qword ptr [rsp + 9944], 0
                        mov              qword ptr [rsp + 9952], 0
                        mov              qword ptr [rsp + 9960], 0
                        mov              qword ptr [rsp + 9968], 0
                        mov              qword ptr [rsp + 9976], 0
                        mov              qword ptr [rsp + 9984], 0
                        mov              qword ptr [rsp + 9992], 0
                        mov              qword ptr [rsp + 10000], 0
                        mov              qword ptr [rsp + 10008], 0
                        mov              qword ptr [rsp + 10016], 0
                        mov              qword ptr [rsp + 10024], 0
                        mov              qword ptr [rsp + 10032], 0
                        mov              qword ptr [rsp + 10040], 0
                        mov              qword ptr [rsp + 10048], 0
                        mov              qword ptr [rsp + 10056], 0
                        mov              qword ptr [rsp + 10064], 0
                        mov              qword ptr [rsp + 10072], 0
                        mov              qword ptr [rsp + 10080], 0
                        mov              qword ptr [rsp + 10088], 0
                        mov              qword ptr [rsp + 10096], 0
                        mov              qword ptr [rsp + 10104], 0
                        mov              qword ptr [rsp + 10112], 0
                        mov              qword ptr [rsp + 10120], 0
                        mov              qword ptr [rsp + 10128], 0
                        mov              qword ptr [rsp + 10136], 0
                        mov              qword ptr [rsp + 10144], 0
                        mov              qword ptr [rsp + 10152], 0
                        mov              qword ptr [rsp + 10160], 0
                        mov              qword ptr [rsp + 10168], 0
                        mov              qword ptr [rsp + 10176], 0
                        mov              qword ptr [rsp + 10184], 0
                        mov              qword ptr [rsp + 10192], 0
                        mov              qword ptr [rsp + 10200], 0
                        mov              qword ptr [rsp + 10208], 0
                        mov              qword ptr [rsp + 10216], 0
                        mov              qword ptr [rsp + 10224], 0
                        mov              qword ptr [rsp + 10232], 0
                        mov              qword ptr [rsp + 10240], 0
                        mov              qword ptr [rsp + 10248], 0
                        mov              qword ptr [rsp + 10256], 0
                        mov              qword ptr [rsp + 10264], 0
                        mov              qword ptr [rsp + 10272], 0
                        mov              qword ptr [rsp + 10280], 0
                        mov              qword ptr [rsp + 10288], 0
                        mov              qword ptr [rsp + 10296], 0
                        mov              qword ptr [rsp + 10304], 0
                        mov              qword ptr [rsp + 10312], 0
                        mov              qword ptr [rsp + 10320], 0
                        mov              qword ptr [rsp + 10328], 0
                        mov              qword ptr [rsp + 10336], 0
                        mov              qword ptr [rsp + 10344], 0
                        mov              qword ptr [rsp + 10352], 0
                        mov              qword ptr [rsp + 10360], 0
                        mov              qword ptr [rsp + 10368], 0
                        mov              qword ptr [rsp + 10376], 0
                        mov              qword ptr [rsp + 10384], 0
                        mov              qword ptr [rsp + 10392], 0
                        mov              qword ptr [rsp + 10400], 0
                        mov              qword ptr [rsp + 10408], 0
                        mov              qword ptr [rsp + 10416], 0
                        mov              qword ptr [rsp + 10424], 0
                        mov              qword ptr [rsp + 10432], 0
                        mov              qword ptr [rsp + 10440], 0
                        mov              qword ptr [rsp + 10448], 0
                        mov              qword ptr [rsp + 10456], 0
                        mov              qword ptr [rsp + 10464], 0
                        mov              qword ptr [rsp + 10472], 0
                        mov              qword ptr [rsp + 10480], 0
                        mov              qword ptr [rsp + 10488], 0
                        mov              qword ptr [rsp + 10496], 0
                        mov              qword ptr [rsp + 10504], 0
                        mov              qword ptr [rsp + 10512], 0
                        mov              qword ptr [rsp + 10520], 0
                        mov              qword ptr [rsp + 10528], 0
                        mov              qword ptr [rsp + 10536], 0
                        mov              qword ptr [rsp + 10544], 0
                        mov              qword ptr [rsp + 10552], 0
                        mov              qword ptr [rsp + 10560], 0
                        mov              qword ptr [rsp + 10568], 0
                        mov              qword ptr [rsp + 10576], 0
                        mov              qword ptr [rsp + 10584], 0
                        mov              qword ptr [rsp + 10592], 0
                        mov              qword ptr [rsp + 10600], 0
                        mov              qword ptr [rsp + 10608], 0
                        mov              qword ptr [rsp + 10616], 0
                        mov              qword ptr [rsp + 10624], 0
                        mov              qword ptr [rsp + 10632], 0
                        mov              qword ptr [rsp + 10640], 0
                        mov              qword ptr [rsp + 10648], 0
                        mov              qword ptr [rsp + 10656], 0
                        mov              qword ptr [rsp + 10664], 0
                        mov              qword ptr [rsp + 10672], 0
                        mov              qword ptr [rsp + 10680], 0
                        mov              qword ptr [rsp + 10688], 0
                        mov              qword ptr [rsp + 10696], 0
                        mov              qword ptr [rsp + 10704], 0
                        mov              qword ptr [rsp + 10712], 0
                        mov              qword ptr [rsp + 10720], 0
                        mov              qword ptr [rsp + 10728], 0
                        mov              qword ptr [rsp + 10736], 0
                        mov              qword ptr [rsp + 10744], 0
                        mov              qword ptr [rsp + 10752], 0
                        mov              qword ptr [rsp + 10760], 0
                        mov              qword ptr [rsp + 10768], 0
                        mov              qword ptr [rsp + 10776], 0
                        mov              qword ptr [rsp + 10784], 0
                        mov              qword ptr [rsp + 10792], 0
                        mov              qword ptr [rsp + 10800], 0
                        mov              qword ptr [rsp + 10808], 0
                        mov              qword ptr [rsp + 10816], 0
                        mov              qword ptr [rsp + 10824], 0
                        mov              qword ptr [rsp + 10832], 0
                        mov              qword ptr [rsp + 10840], 0
                        mov              qword ptr [rsp + 10848], 0
                        mov              qword ptr [rsp + 10856], 0
                        mov              qword ptr [rsp + 10864], 0
                        mov              qword ptr [rsp + 10872], 0
                        mov              qword ptr [rsp + 10880], 0
                        mov              qword ptr [rsp + 10888], 0
                        mov              qword ptr [rsp + 10896], 0
                        mov              qword ptr [rsp + 10904], 0
                        mov              qword ptr [rsp + 10912], 0
                        mov              qword ptr [rsp + 10920], 0
                        mov              qword ptr [rsp + 10928], 0
                        mov              qword ptr [rsp + 10936], 0
                        mov              qword ptr [rsp + 10944], 0
                        mov              qword ptr [rsp + 10952], 0
                        mov              qword ptr [rsp + 10960], 0
                        mov              qword ptr [rsp + 10968], 0
                        mov              qword ptr [rsp + 10976], 0
                        mov              qword ptr [rsp + 10984], 0
                        mov              qword ptr [rsp + 10992], 0
                        mov              qword ptr [rsp + 11000], 0
                        mov              qword ptr [rsp + 11008], 0
                        mov              qword ptr [rsp + 11016], 0
                        mov              qword ptr [rsp + 11024], 0
                        mov              qword ptr [rsp + 11032], 0
                        mov              qword ptr [rsp + 11040], 0
                        mov              qword ptr [rsp + 11048], 0
                        mov              qword ptr [rsp + 11056], 0
                        mov              qword ptr [rsp + 11064], 0
                        mov              qword ptr [rsp + 11072], 0
                        mov              qword ptr [rsp + 11080], 0
                        mov              qword ptr [rsp + 11088], 0
                        mov              qword ptr [rsp + 11096], 0
                        mov              qword ptr [rsp + 11104], 0
                        mov              qword ptr [rsp + 11112], 0
                        mov              qword ptr [rsp + 11120], 0
                        mov              qword ptr [rsp + 11128], 0
                        mov              qword ptr [rsp + 11136], 0
                        mov              qword ptr [rsp + 11144], 0
                        mov              qword ptr [rsp + 11152], 0
                        mov              qword ptr [rsp + 11160], 0
                        mov              qword ptr [rsp + 11168], 0
                        mov              qword ptr [rsp + 11176], 0
                        mov              qword ptr [rsp + 11184], 0
                        mov              qword ptr [rsp + 11192], 0
                        mov              qword ptr [rsp + 11200], 0
                        mov              qword ptr [rsp + 11208], 0
                        mov              qword ptr [rsp + 11216], 0
                        mov              qword ptr [rsp + 11224], 0
                        mov              qword ptr [rsp + 11232], 0
                        mov              qword ptr [rsp + 11240], 0
                        mov              qword ptr [rsp + 11248], 0
                        mov              qword ptr [rsp + 11256], 0
                        mov              qword ptr [rsp + 11264], 0
                        mov              qword ptr [rsp + 11272], 0
                        mov              qword ptr [rsp + 11280], 0
                        mov              qword ptr [rsp + 11288], 0
                        mov              qword ptr [rsp + 11296], 0
                        mov              qword ptr [rsp + 11304], 0
                        mov              qword ptr [rsp + 11312], 0
                        mov              qword ptr [rsp + 11320], 0
                        mov              qword ptr [rsp + 11328], 0
                        mov              qword ptr [rsp + 11336], 0
                        mov              qword ptr [rsp + 11344], 0
                        mov              qword ptr [rsp + 11352], 0
                        mov              qword ptr [rsp + 11360], 0
                        mov              qword ptr [rsp + 11368], 0
                        mov              qword ptr [rsp + 11376], 0
                        mov              qword ptr [rsp + 11384], 0
                        mov              qword ptr [rsp + 11392], 0
                        mov              qword ptr [rsp + 11400], 0
                        mov              qword ptr [rsp + 11408], 0
                        mov              qword ptr [rsp + 11416], 0
                        mov              qword ptr [rsp + 11424], 0
                        mov              qword ptr [rsp + 11432], 0
                        mov              qword ptr [rsp + 11440], 0
                        mov              qword ptr [rsp + 11448], 0
                        mov              qword ptr [rsp + 11456], 0
                        mov              qword ptr [rsp + 11464], 0
                        mov              qword ptr [rsp + 11472], 0
                        mov              qword ptr [rsp + 11480], 0
                        mov              qword ptr [rsp + 11488], 0
                        mov              qword ptr [rsp + 11496], 0
                        mov              qword ptr [rsp + 11504], 0
                        mov              qword ptr [rsp + 11512], 0
                        mov              qword ptr [rsp + 11520], 0
                        mov              qword ptr [rsp + 11528], 0
                        mov              qword ptr [rsp + 11536], 0
                        mov              qword ptr [rsp + 11544], 0
                        mov              qword ptr [rsp + 11552], 0
                        mov              qword ptr [rsp + 11560], 0
                        mov              qword ptr [rsp + 11568], 0
                        mov              qword ptr [rsp + 11576], 0
                        mov              qword ptr [rsp + 11584], 0
                        mov              qword ptr [rsp + 11592], 0
                        mov              qword ptr [rsp + 11600], 0
                        mov              qword ptr [rsp + 11608], 0
                        mov              qword ptr [rsp + 11616], 0
                        mov              qword ptr [rsp + 11624], 0
                        mov              qword ptr [rsp + 11632], 0
                        mov              qword ptr [rsp + 11640], 0
                        mov              qword ptr [rsp + 11648], 0
                        mov              qword ptr [rsp + 11656], 0
                        mov              qword ptr [rsp + 11664], 0
                        mov              qword ptr [rsp + 11672], 0
                        mov              qword ptr [rsp + 11680], 0
                        mov              qword ptr [rsp + 11688], 0
                        mov              qword ptr [rsp + 11696], 0
                        mov              qword ptr [rsp + 11704], 0
                        mov              qword ptr [rsp + 11712], 0
                        mov              qword ptr [rsp + 11720], 0
                        mov              qword ptr [rsp + 11728], 0
                        mov              qword ptr [rsp + 11736], 0
                        mov              qword ptr [rsp + 11744], 0
                        mov              qword ptr [rsp + 11752], 0
                        mov              qword ptr [rsp + 11760], 0
                        mov              qword ptr [rsp + 11768], 0
                        mov              qword ptr [rsp + 11776], 0
                        mov              qword ptr [rsp + 11784], 0
                        mov              qword ptr [rsp + 11792], 0
                        mov              qword ptr [rsp + 11800], 0
                        mov              qword ptr [rsp + 11808], 0
                        mov              qword ptr [rsp + 11816], 0
                        mov              qword ptr [rsp + 11824], 0
                        mov              qword ptr [rsp + 11832], 0
                        mov              qword ptr [rsp + 11840], 0
                        mov              qword ptr [rsp + 11848], 0
                        mov              qword ptr [rsp + 11856], 0
                        mov              qword ptr [rsp + 11864], 0
                        mov              qword ptr [rsp + 11872], 0
                        mov              qword ptr [rsp + 11880], 0
                        mov              qword ptr [rsp + 11888], 0
                        mov              qword ptr [rsp + 11896], 0
                        mov              qword ptr [rsp + 11904], 0
                        mov              qword ptr [rsp + 11912], 0
                        mov              qword ptr [rsp + 11920], 0
                        mov              qword ptr [rsp + 11928], 0
                        mov              qword ptr [rsp + 11936], 0
                        mov              qword ptr [rsp + 11944], 0
                        mov              qword ptr [rsp + 11952], 0
                        mov              qword ptr [rsp + 11960], 0
                        mov              qword ptr [rsp + 11968], 0
                        mov              qword ptr [rsp + 11976], 0
                        mov              qword ptr [rsp + 11984], 0
                        mov              qword ptr [rsp + 11992], 0
                        mov              qword ptr [rsp + 12000], 0
                        mov              qword ptr [rsp + 12008], 0
                        mov              qword ptr [rsp + 12016], 0
                        mov              qword ptr [rsp + 12024], 0
                        mov              qword ptr [rsp + 12032], 0
                        mov              qword ptr [rsp + 12040], 0
                        mov              qword ptr [rsp + 12048], 0
                        mov              qword ptr [rsp + 12056], 0
                        mov              qword ptr [rsp + 12064], 0
                        mov              qword ptr [rsp + 12072], 0
                        mov              qword ptr [rsp + 12080], 0
                        mov              qword ptr [rsp + 12088], 0
                        mov              qword ptr [rsp + 12096], 0
                        mov              qword ptr [rsp + 12104], 0
                        mov              qword ptr [rsp + 12112], 0
                        mov              qword ptr [rsp + 12120], 0
                        mov              qword ptr [rsp + 12128], 0
                        mov              qword ptr [rsp + 12136], 0
                        mov              qword ptr [rsp + 12144], 0
                        mov              qword ptr [rsp + 12152], 0
                        mov              qword ptr [rsp + 12160], 0
                        mov              qword ptr [rsp + 12168], 0
                        mov              qword ptr [rsp + 12176], 0
                        mov              qword ptr [rsp + 12184], 0
                        mov              qword ptr [rsp + 12192], 0
                        mov              qword ptr [rsp + 12200], 0
                        mov              qword ptr [rsp + 12208], 0
                        mov              qword ptr [rsp + 12216], 0
                        mov              qword ptr [rsp + 12224], 0
                        mov              qword ptr [rsp + 12232], 0
                        mov              qword ptr [rsp + 12240], 0
                        mov              qword ptr [rsp + 12248], 0
                        mov              qword ptr [rsp + 12256], 0
                        mov              qword ptr [rsp + 12264], 0
                        mov              qword ptr [rsp + 12272], 0
                        mov              qword ptr [rsp + 12280], 0
                        mov              qword ptr [rsp + 12288], 0
                        mov              qword ptr [rsp + 12296], 0
                        mov              qword ptr [rsp + 12304], 0
                        mov              qword ptr [rsp + 12312], 0
                        mov              qword ptr [rsp + 12320], 0
                        mov              qword ptr [rsp + 12328], 0
                        mov              qword ptr [rsp + 12336], 0
                        mov              qword ptr [rsp + 12344], 0
                        mov              qword ptr [rsp + 12352], 0
                        mov              qword ptr [rsp + 12360], 0
                        mov              qword ptr [rsp + 12368], 0
                        mov              qword ptr [rsp + 12376], 0
                        mov              qword ptr [rsp + 12384], 0
                        mov              qword ptr [rsp + 12392], 0
                        mov              qword ptr [rsp + 12400], 0
                        mov              qword ptr [rsp + 12408], 0
                        mov              qword ptr [rsp + 12416], 0
                        mov              qword ptr [rsp + 12424], 0
                        mov              qword ptr [rsp + 12432], 0
                        mov              qword ptr [rsp + 12440], 0
                        mov              qword ptr [rsp + 12448], 0
                        mov              qword ptr [rsp + 12456], 0
                        mov              qword ptr [rsp + 12464], 0
                        mov              qword ptr [rsp + 12472], 0
                        mov              qword ptr [rsp + 12480], 0
                        mov              qword ptr [rsp + 12488], 0
                        mov              qword ptr [rsp + 12496], 0
                        mov              qword ptr [rsp + 12504], 0
                        mov              qword ptr [rsp + 12512], 0
                        mov              qword ptr [rsp + 12520], 0
                        mov              qword ptr [rsp + 12528], 0
                        mov              qword ptr [rsp + 12536], 0
                        mov              qword ptr [rsp + 12544], 0
                        mov              qword ptr [rsp + 12552], 0
                        mov              qword ptr [rsp + 12560], 0
                        mov              qword ptr [rsp + 12568], 0
                        mov              qword ptr [rsp + 12576], 0
                        mov              qword ptr [rsp + 12584], 0
                        mov              qword ptr [rsp + 12592], 0
                        mov              qword ptr [rsp + 12600], 0
                        mov              qword ptr [rsp + 12608], 0
                        mov              qword ptr [rsp + 12616], 0
                        mov              qword ptr [rsp + 12624], 0
                        mov              qword ptr [rsp + 12632], 0
                        mov              qword ptr [rsp + 12640], 0
                        mov              qword ptr [rsp + 12648], 0
                        mov              qword ptr [rsp + 12656], 0
                        mov              qword ptr [rsp + 12664], 0
                        mov              qword ptr [rsp + 12672], 0
                        mov              qword ptr [rsp + 12680], 0
                        mov              qword ptr [rsp + 12688], 0
                        mov              qword ptr [rsp + 12696], 0
                        mov              qword ptr [rsp + 12704], 0
                        mov              qword ptr [rsp + 12712], 0
                        mov              qword ptr [rsp + 12720], 0
                        mov              qword ptr [rsp + 12728], 0
                        mov              qword ptr [rsp + 12736], 0
                        mov              qword ptr [rsp + 12744], 0
                        mov              qword ptr [rsp + 12752], 0
                        mov              qword ptr [rsp + 12760], 0
                        mov              qword ptr [rsp + 12768], 0
                        mov              qword ptr [rsp + 12776], 0
                        mov              qword ptr [rsp + 12784], 0
                        mov              qword ptr [rsp + 12792], 0
                        mov              qword ptr [rsp + 12800], 0
                        mov              qword ptr [rsp + 12808], 0
                        mov              qword ptr [rsp + 12816], 0
                        mov              qword ptr [rsp + 12824], 0
                        mov              qword ptr [rsp + 12832], 0
                        mov              qword ptr [rsp + 12840], 0
                        mov              qword ptr [rsp + 12848], 0
                        mov              qword ptr [rsp + 12856], 0
                        mov              qword ptr [rsp + 12864], 0
                        mov              qword ptr [rsp + 12872], 0
                        mov              qword ptr [rsp + 12880], 0
                        mov              qword ptr [rsp + 12888], 0
                        mov              qword ptr [rsp + 12896], 0
                        mov              qword ptr [rsp + 12904], 0
                        mov              qword ptr [rsp + 12912], 0
                        mov              qword ptr [rsp + 12920], 0
                        mov              qword ptr [rsp + 12928], 0
                        mov              qword ptr [rsp + 12936], 0
                        mov              qword ptr [rsp + 12944], 0
                        mov              qword ptr [rsp + 12952], 0
                        mov              qword ptr [rsp + 12960], 0
                        mov              qword ptr [rsp + 12968], 0
                        mov              qword ptr [rsp + 12976], 0
                        mov              qword ptr [rsp + 12984], 0
                        mov              qword ptr [rsp + 12992], 0
                        mov              qword ptr [rsp + 13000], 0
                        mov              qword ptr [rsp + 13008], 0
                        mov              qword ptr [rsp + 13016], 0
                        mov              qword ptr [rsp + 13024], 0
                        mov              qword ptr [rsp + 13032], 0
                        mov              qword ptr [rsp + 13040], 0
                        mov              qword ptr [rsp + 13048], 0
                        mov              qword ptr [rsp + 13056], 0
                        mov              qword ptr [rsp + 13064], 0
                        mov              qword ptr [rsp + 13072], 0
                        mov              qword ptr [rsp + 13080], 0
                        mov              qword ptr [rsp + 13088], 0
                        mov              qword ptr [rsp + 13096], 0
                        mov              qword ptr [rsp + 13104], 0
                        mov              qword ptr [rsp + 13112], 0
                        mov              qword ptr [rsp + 13120], 0
                        mov              qword ptr [rsp + 13128], 0
                        mov              qword ptr [rsp + 13136], 0
                        mov              qword ptr [rsp + 13144], 0
                        mov              qword ptr [rsp + 13152], 0
                        mov              qword ptr [rsp + 13160], 0
                        mov              qword ptr [rsp + 13168], 0
                        mov              qword ptr [rsp + 13176], 0
                        mov              qword ptr [rsp + 13184], 0
                        mov              qword ptr [rsp + 13192], 0
                        mov              qword ptr [rsp + 13200], 0
                        mov              qword ptr [rsp + 13208], 0
                        mov              qword ptr [rsp + 13216], 0
                        mov              qword ptr [rsp + 13224], 0
                        mov              qword ptr [rsp + 13232], 0
                        mov              qword ptr [rsp + 13240], 0
                        mov              qword ptr [rsp + 13248], 0
                        mov              qword ptr [rsp + 13256], 0
                        mov              qword ptr [rsp + 13264], 0
                        mov              qword ptr [rsp + 13272], 0
                        mov              qword ptr [rsp + 13280], 0
                        mov              qword ptr [rsp + 13288], 0
                        mov              qword ptr [rsp + 13296], 0
                        mov              qword ptr [rsp + 13304], 0
                        mov              qword ptr [rsp + 13312], 0
                        mov              qword ptr [rsp + 13320], 0
                        mov              qword ptr [rsp + 13328], 0
                        mov              qword ptr [rsp + 13336], 0
                        mov              qword ptr [rsp + 13344], 0
                        mov              qword ptr [rsp + 13352], 0
                        mov              qword ptr [rsp + 13360], 0
                        mov              qword ptr [rsp + 13368], 0
                        mov              qword ptr [rsp + 13376], 0
                        mov              qword ptr [rsp + 13384], 0
                        mov              qword ptr [rsp + 13392], 0
                        mov              qword ptr [rsp + 13400], 0
                        mov              qword ptr [rsp + 13408], 0
                        mov              qword ptr [rsp + 13416], 0
                        mov              qword ptr [rsp + 13424], 0
                        mov              qword ptr [rsp + 13432], 0
                        mov              qword ptr [rsp + 13440], 0
                        mov              qword ptr [rsp + 13448], 0
                        mov              qword ptr [rsp + 13456], 0
                        mov              qword ptr [rsp + 13464], 0
                        mov              qword ptr [rsp + 13472], 0
                        mov              qword ptr [rsp + 13480], 0
                        mov              qword ptr [rsp + 13488], 0
                        mov              qword ptr [rsp + 13496], 0
                        mov              qword ptr [rsp + 13504], 0
                        mov              qword ptr [rsp + 13512], 0
                        mov              qword ptr [rsp + 13520], 0
                        mov              qword ptr [rsp + 13528], 0
                        mov              qword ptr [rsp + 13536], 0
                        mov              qword ptr [rsp + 13544], 0
                        mov              qword ptr [rsp + 13552], 0
                        mov              qword ptr [rsp + 13560], 0
                        mov              qword ptr [rsp + 13568], 0
                        mov              qword ptr [rsp + 13576], 0
                        mov              qword ptr [rsp + 13584], 0
                        mov              qword ptr [rsp + 13592], 0
                        mov              qword ptr [rsp + 13600], 0
                        mov              qword ptr [rsp + 13608], 0
                        mov              qword ptr [rsp + 13616], 0
                        mov              qword ptr [rsp + 13624], 0
                        mov              qword ptr [rsp + 13632], 0
                        mov              qword ptr [rsp + 13640], 0
                        mov              qword ptr [rsp + 13648], 0
                        mov              qword ptr [rsp + 13656], 0
                        mov              qword ptr [rsp + 13664], 0
                        mov              qword ptr [rsp + 13672], 0
                        mov              qword ptr [rsp + 13680], 0
                        mov              qword ptr [rsp + 13688], 0
                        mov              qword ptr [rsp + 13696], 0
                        mov              qword ptr [rsp + 13704], 0
                        mov              qword ptr [rsp + 13712], 0
                        mov              qword ptr [rsp + 13720], 0
                        mov              qword ptr [rsp + 13728], 0
                        mov              qword ptr [rsp + 13736], 0
                        mov              qword ptr [rsp + 13744], 0
                        mov              qword ptr [rsp + 13752], 0
                        mov              qword ptr [rsp + 13760], 0
                        mov              qword ptr [rsp + 13768], 0
                        mov              qword ptr [rsp + 13776], 0
                        mov              qword ptr [rsp + 13784], 0
                        mov              qword ptr [rsp + 13792], 0
                        mov              qword ptr [rsp + 13800], 0
                        mov              qword ptr [rsp + 13808], 0
                        mov              qword ptr [rsp + 13816], 0
                        mov              qword ptr [rsp + 13824], 0
                        mov              qword ptr [rsp + 13832], 0
                        mov              qword ptr [rsp + 13840], 0
                        mov              qword ptr [rsp + 13848], 0
                        mov              qword ptr [rsp + 13856], 0
                        mov              qword ptr [rsp + 13864], 0
                        mov              qword ptr [rsp + 13872], 0
                        mov              qword ptr [rsp + 13880], 0
                        mov              qword ptr [rsp + 13888], 0
                        mov              qword ptr [rsp + 13896], 0
                        mov              qword ptr [rsp + 13904], 0
                        mov              qword ptr [rsp + 13912], 0
                        mov              qword ptr [rsp + 13920], 0
                        mov              qword ptr [rsp + 13928], 0
                        mov              qword ptr [rsp + 13936], 0
                        mov              qword ptr [rsp + 13944], 0
                        mov              qword ptr [rsp + 13952], 0
                        mov              qword ptr [rsp + 13960], 0
                        mov              qword ptr [rsp + 13968], 0
                        mov              qword ptr [rsp + 13976], 0
                        mov              qword ptr [rsp + 13984], 0
                        mov              qword ptr [rsp + 13992], 0
                        mov              qword ptr [rsp + 14000], 0
                        mov              qword ptr [rsp + 14008], 0
                        mov              qword ptr [rsp + 14016], 0
                        mov              qword ptr [rsp + 14024], 0
                        mov              qword ptr [rsp + 14032], 0
                        mov              qword ptr [rsp + 14040], 0
                        mov              qword ptr [rsp + 14048], 0
                        mov              qword ptr [rsp + 14056], 0
                        mov              qword ptr [rsp + 14064], 0
                        mov              qword ptr [rsp + 14072], 0
                        mov              qword ptr [rsp + 14080], 0
                        mov              qword ptr [rsp + 14088], 0
                        mov              qword ptr [rsp + 14096], 0
                        mov              qword ptr [rsp + 14104], 0
                        mov              qword ptr [rsp + 14112], 0
                        mov              qword ptr [rsp + 14120], 0
                        mov              qword ptr [rsp + 14128], 0
                        mov              qword ptr [rsp + 14136], 0
                        mov              qword ptr [rsp + 14144], 0
                        mov              qword ptr [rsp + 14152], 0
                        mov              qword ptr [rsp + 14160], 0
                        mov              qword ptr [rsp + 14168], 0
                        mov              qword ptr [rsp + 14176], 0
                        mov              qword ptr [rsp + 14184], 0
                        mov              qword ptr [rsp + 14192], 0
                        mov              qword ptr [rsp + 14200], 0
                        mov              qword ptr [rsp + 14208], 0
                        mov              qword ptr [rsp + 14216], 0
                        mov              qword ptr [rsp + 14224], 0
                        mov              qword ptr [rsp + 14232], 0
                        mov              qword ptr [rsp + 14240], 0
                        mov              qword ptr [rsp + 14248], 0
                        mov              qword ptr [rsp + 14256], 0
                        mov              qword ptr [rsp + 14264], 0
                        mov              qword ptr [rsp + 14272], 0
                        mov              qword ptr [rsp + 14280], 0
                        mov              qword ptr [rsp + 14288], 0
                        mov              qword ptr [rsp + 14296], 0
                        mov              qword ptr [rsp + 14304], 0
                        mov              qword ptr [rsp + 14312], 0
                        mov              qword ptr [rsp + 14320], 0
                        mov              qword ptr [rsp + 14328], 0
                        mov              qword ptr [rsp + 14336], 0
                        mov              qword ptr [rsp + 14344], 0
                        mov              qword ptr [rsp + 14352], 0
                        mov              qword ptr [rsp + 14360], 0
                        mov              qword ptr [rsp + 14368], 0
                        mov              qword ptr [rsp + 14376], 0
                        mov              qword ptr [rsp + 14384], 0
                        mov              qword ptr [rsp + 14392], 0
                        mov              qword ptr [rsp + 14400], 0
                        mov              qword ptr [rsp + 14408], 0
                        mov              qword ptr [rsp + 14416], 0
                        mov              qword ptr [rsp + 14424], 0
                        mov              qword ptr [rsp + 14432], 0
                        mov              qword ptr [rsp + 14440], 0
                        mov              qword ptr [rsp + 14448], 0
                        mov              qword ptr [rsp + 14456], 0
                        mov              qword ptr [rsp + 14464], 0
                        mov              qword ptr [rsp + 14472], 0
                        mov              qword ptr [rsp + 14480], 0
                        mov              qword ptr [rsp + 14488], 0
                        mov              qword ptr [rsp + 14496], 0
                        mov              qword ptr [rsp + 14504], 0
                        mov              qword ptr [rsp + 14512], 0
                        mov              qword ptr [rsp + 14520], 0
                        mov              qword ptr [rsp + 14528], 0
                        mov              qword ptr [rsp + 14536], 0
                        mov              qword ptr [rsp + 14544], 0
                        mov              qword ptr [rsp + 14552], 0
                        mov              qword ptr [rsp + 14560], 0
                        mov              qword ptr [rsp + 14568], 0
                        mov              qword ptr [rsp + 14576], 0
                        mov              qword ptr [rsp + 14584], 0
                        mov              qword ptr [rsp + 14592], 0
                        mov              qword ptr [rsp + 14600], 0
                        mov              qword ptr [rsp + 14608], 0
                        mov              qword ptr [rsp + 14616], 0
                        mov              qword ptr [rsp + 14624], 0
                        mov              qword ptr [rsp + 14632], 0
                        mov              qword ptr [rsp + 14640], 0
                        mov              qword ptr [rsp + 14648], 0
                        mov              qword ptr [rsp + 14656], 0
                        mov              qword ptr [rsp + 14664], 0
                        mov              qword ptr [rsp + 14672], 0
                        mov              qword ptr [rsp + 14680], 0
                        mov              qword ptr [rsp + 14688], 0
                        mov              qword ptr [rsp + 14696], 0
                        mov              qword ptr [rsp + 14704], 0
                        mov              qword ptr [rsp + 14712], 0
                        mov              qword ptr [rsp + 14720], 0
                        mov              qword ptr [rsp + 14728], 0
                        mov              qword ptr [rsp + 14736], 0
                        mov              qword ptr [rsp + 14744], 0
                        mov              qword ptr [rsp + 14752], 0
                        mov              qword ptr [rsp + 14760], 0
                        mov              qword ptr [rsp + 14768], 0
                        mov              qword ptr [rsp + 14776], 0
                        mov              qword ptr [rsp + 14784], 0
                        mov              qword ptr [rsp + 14792], 0
                        mov              qword ptr [rsp + 14800], 0
                        mov              qword ptr [rsp + 14808], 0
                        mov              qword ptr [rsp + 14816], 0
                        mov              qword ptr [rsp + 14824], 0
                        mov              qword ptr [rsp + 14832], 0
                        mov              qword ptr [rsp + 14840], 0
                        mov              qword ptr [rsp + 14848], 0
                        mov              qword ptr [rsp + 14856], 0
                        mov              qword ptr [rsp + 14864], 0
                        mov              qword ptr [rsp + 14872], 0
                        mov              qword ptr [rsp + 14880], 0
                        mov              qword ptr [rsp + 14888], 0
                        mov              qword ptr [rsp + 14896], 0
                        mov              qword ptr [rsp + 14904], 0
                        mov              qword ptr [rsp + 14912], 0
                        mov              qword ptr [rsp + 14920], 0
                        mov              qword ptr [rsp + 14928], 0
                        mov              qword ptr [rsp + 14936], 0
                        mov              qword ptr [rsp + 14944], 0
                        mov              qword ptr [rsp + 14952], 0
                        mov              qword ptr [rsp + 14960], 0
                        mov              qword ptr [rsp + 14968], 0
                        mov              qword ptr [rsp + 14976], 0
                        mov              qword ptr [rsp + 14984], 0
                        mov              qword ptr [rsp + 14992], 0
                        mov              qword ptr [rsp + 15000], 0
                        mov              qword ptr [rsp + 15008], 0
                        mov              qword ptr [rsp + 15016], 0
                        mov              qword ptr [rsp + 15024], 0
                        mov              qword ptr [rsp + 15032], 0
                        mov              qword ptr [rsp + 15040], 0
                        mov              qword ptr [rsp + 15048], 0
                        mov              qword ptr [rsp + 15056], 0
                        mov              qword ptr [rsp + 15064], 0
                        mov              qword ptr [rsp + 15072], 0
                        mov              qword ptr [rsp + 15080], 0
                        mov              qword ptr [rsp + 15088], 0
                        mov              qword ptr [rsp + 15096], 0
                        mov              qword ptr [rsp + 15104], 0
                        mov              qword ptr [rsp + 15112], 0
                        mov              qword ptr [rsp + 15120], 0
                        mov              qword ptr [rsp + 15128], 0
                        mov              qword ptr [rsp + 15136], 0
                        mov              qword ptr [rsp + 15144], 0
                        mov              qword ptr [rsp + 15152], 0
                        mov              qword ptr [rsp + 15160], 0
                        mov              qword ptr [rsp + 15168], 0
                        mov              qword ptr [rsp + 15176], 0
                        mov              qword ptr [rsp + 15184], 0
                        mov              qword ptr [rsp + 15192], 0
                        mov              qword ptr [rsp + 15200], 0
                        mov              qword ptr [rsp + 15208], 0
                        mov              qword ptr [rsp + 15216], 0
                        mov              qword ptr [rsp + 15224], 0
                        mov              qword ptr [rsp + 15232], 0
                        mov              qword ptr [rsp + 15240], 0
                        mov              qword ptr [rsp + 15248], 0
                        mov              qword ptr [rsp + 15256], 0
                        mov              qword ptr [rsp + 15264], 0
                        mov              qword ptr [rsp + 15272], 0
                        mov              qword ptr [rsp + 15280], 0
                        mov              qword ptr [rsp + 15288], 0
                        mov              qword ptr [rsp + 15296], 0
                        mov              qword ptr [rsp + 15304], 0
                        mov              qword ptr [rsp + 15312], 0
                        mov              qword ptr [rsp + 15320], 0
                        mov              qword ptr [rsp + 15328], 0
                        mov              qword ptr [rsp + 15336], 0
                        mov              qword ptr [rsp + 15344], 0
                        mov              qword ptr [rsp + 15352], 0
                        mov              qword ptr [rsp + 15360], 0
                        mov              qword ptr [rsp + 15368], 0
                        mov              qword ptr [rsp + 15376], 0
                        mov              qword ptr [rsp + 15384], 0
                        mov              qword ptr [rsp + 15392], 0
                        mov              qword ptr [rsp + 15400], 0
                        mov              qword ptr [rsp + 15408], 0
                        mov              qword ptr [rsp + 15416], 0
                        mov              qword ptr [rsp + 15424], 0
                        mov              qword ptr [rsp + 15432], 0
                        mov              qword ptr [rsp + 15440], 0
                        mov              qword ptr [rsp + 15448], 0
                        mov              qword ptr [rsp + 15456], 0
                        mov              qword ptr [rsp + 15464], 0
                        mov              qword ptr [rsp + 15472], 0
                        mov              qword ptr [rsp + 15480], 0
                        mov              qword ptr [rsp + 15488], 0
                        mov              qword ptr [rsp + 15496], 0
                        mov              qword ptr [rsp + 15504], 0
                        mov              qword ptr [rsp + 15512], 0
                        mov              qword ptr [rsp + 15520], 0
                        mov              qword ptr [rsp + 15528], 0
                        mov              qword ptr [rsp + 15536], 0
                        mov              qword ptr [rsp + 15544], 0
                        mov              qword ptr [rsp + 15552], 0
                        mov              qword ptr [rsp + 15560], 0
                        mov              qword ptr [rsp + 15568], 0
                        mov              qword ptr [rsp + 15576], 0
                        mov              qword ptr [rsp + 15584], 0
                        mov              qword ptr [rsp + 15592], 0
                        mov              qword ptr [rsp + 15600], 0
                        mov              qword ptr [rsp + 15608], 0
                        mov              qword ptr [rsp + 15616], 0
                        mov              qword ptr [rsp + 15624], 0
                        mov              qword ptr [rsp + 15632], 0
                        mov              qword ptr [rsp + 15640], 0
                        mov              qword ptr [rsp + 15648], 0
                        mov              qword ptr [rsp + 15656], 0
                        mov              qword ptr [rsp + 15664], 0
                        mov              qword ptr [rsp + 15672], 0
                        mov              qword ptr [rsp + 15680], 0
                        mov              qword ptr [rsp + 15688], 0
                        mov              qword ptr [rsp + 15696], 0
                        mov              qword ptr [rsp + 15704], 0
                        mov              qword ptr [rsp + 15712], 0
                        mov              qword ptr [rsp + 15720], 0
                        mov              qword ptr [rsp + 15728], 0
                        mov              qword ptr [rsp + 15736], 0
                        mov              qword ptr [rsp + 15744], 0
                        mov              qword ptr [rsp + 15752], 0
                        mov              qword ptr [rsp + 15760], 0
                        mov              qword ptr [rsp + 15768], 0
                        mov              qword ptr [rsp + 15776], 0
                        mov              qword ptr [rsp + 15784], 0
                        mov              qword ptr [rsp + 15792], 0
                        mov              qword ptr [rsp + 15800], 0
                        mov              qword ptr [rsp + 15808], 0
                        mov              qword ptr [rsp + 15816], 0
                        mov              qword ptr [rsp + 15824], 0
                        mov              qword ptr [rsp + 15832], 0
                        mov              qword ptr [rsp + 15840], 0
                        mov              qword ptr [rsp + 15848], 0
                        mov              qword ptr [rsp + 15856], 0
                        mov              qword ptr [rsp + 15864], 0
                        mov              qword ptr [rsp + 15872], 0
                        mov              qword ptr [rsp + 15880], 0
                        mov              qword ptr [rsp + 15888], 0
                        mov              qword ptr [rsp + 15896], 0
                        mov              qword ptr [rsp + 15904], 0
                        mov              qword ptr [rsp + 15912], 0
                        mov              qword ptr [rsp + 15920], 0
                        mov              qword ptr [rsp + 15928], 0
                        mov              qword ptr [rsp + 15936], 0
                        mov              qword ptr [rsp + 15944], 0
                        mov              qword ptr [rsp + 15952], 0
                        mov              qword ptr [rsp + 15960], 0
                        mov              qword ptr [rsp + 15968], 0
                        mov              qword ptr [rsp + 15976], 0
                        mov              qword ptr [rsp + 15984], 0
                        mov              qword ptr [rsp + 15992], 0
                        mov              qword ptr [rsp + 16000], 0
                        mov              qword ptr [rsp + 16008], 0
                        mov              qword ptr [rsp + 16016], 0
                        mov              qword ptr [rsp + 16024], 0
                        mov              qword ptr [rsp + 16032], 0
                        mov              qword ptr [rsp + 16040], 0
                        mov              qword ptr [rsp + 16048], 0
                        mov              qword ptr [rsp + 16056], 0
                        mov              qword ptr [rsp + 16064], 0
                        mov              qword ptr [rsp + 16072], 0
                        mov              qword ptr [rsp + 16080], 0
                        mov              qword ptr [rsp + 16088], 0
                        mov              qword ptr [rsp + 16096], 0
                        mov              qword ptr [rsp + 16104], 0
                        mov              qword ptr [rsp + 16112], 0
                        mov              qword ptr [rsp + 16120], 0
                        mov              qword ptr [rsp + 16128], 0
                        mov              qword ptr [rsp + 16136], 0
                        mov              qword ptr [rsp + 16144], 0
                        mov              qword ptr [rsp + 16152], 0
                        mov              qword ptr [rsp + 16160], 0
                        mov              qword ptr [rsp + 16168], 0
                        mov              qword ptr [rsp + 16176], 0
                        mov              qword ptr [rsp + 16184], 0
                        mov              qword ptr [rsp + 16192], 0
                        mov              qword ptr [rsp + 16200], 0
                        mov              qword ptr [rsp + 16208], 0
                        mov              qword ptr [rsp + 16216], 0
                        mov              qword ptr [rsp + 16224], 0
                        mov              qword ptr [rsp + 16232], 0
                        mov              qword ptr [rsp + 16240], 0
                        mov              qword ptr [rsp + 16248], 0
                        mov              qword ptr [rsp + 16256], 0
                        mov              qword ptr [rsp + 16264], 0
                        mov              qword ptr [rsp + 16272], 0
                        mov              qword ptr [rsp + 16280], 0
                        mov              qword ptr [rsp + 16288], 0
                        mov              qword ptr [rsp + 16296], 0
                        mov              qword ptr [rsp + 16304], 0
                        mov              qword ptr [rsp + 16312], 0
                        mov              qword ptr [rsp + 16320], 0
                        mov              qword ptr [rsp + 16328], 0
                        mov              qword ptr [rsp + 16336], 0
                        mov              qword ptr [rsp + 16344], 0
                        mov              qword ptr [rsp + 16352], 0
                        mov              qword ptr [rsp + 16360], 0
                        mov              qword ptr [rsp + 16368], 0
                        mov              qword ptr [rsp + 16376], 0
                        mov              qword ptr [rsp + 16384], 0
                        mov              qword ptr [rsp + 16392], 0
                        mov              qword ptr [rsp + 16400], 0
                        mov              qword ptr [rsp + 16408], 0
                        mov              qword ptr [rsp + 16416], 0
                        mov              qword ptr [rsp + 16424], 0
                        mov              qword ptr [rsp + 16432], 0
                        mov              qword ptr [rsp + 16440], 0
                        mov              qword ptr [rsp + 16448], 0
                        mov              qword ptr [rsp + 16456], 0
                        mov              qword ptr [rsp + 16464], 0
                        mov              qword ptr [rsp + 16472], 0
                        mov              qword ptr [rsp + 16480], 0
                        mov              qword ptr [rsp + 16488], 0
                        mov              qword ptr [rsp + 16496], 0
                        mov              qword ptr [rsp + 16504], 0
                        mov              qword ptr [rsp + 16512], 0
                        mov              qword ptr [rsp + 16520], 0
                        mov              qword ptr [rsp + 16528], 0
                        mov              qword ptr [rsp + 16536], 0
                        mov              qword ptr [rsp + 16544], 0
                        mov              qword ptr [rsp + 16552], 0
                        mov              qword ptr [rsp + 16560], 0
                        mov              qword ptr [rsp + 16568], 0
                        mov              qword ptr [rsp + 16576], 0
                        mov              qword ptr [rsp + 16584], 0
                        mov              qword ptr [rsp + 16592], 0
                        mov              qword ptr [rsp + 16600], 0
                        mov              qword ptr [rsp + 16608], 0
                        mov              qword ptr [rsp + 16616], 0
                        mov              qword ptr [rsp + 16624], 0
                        mov              qword ptr [rsp + 16632], 0
                        mov              qword ptr [rsp + 16640], 0
                        mov              qword ptr [rsp + 16648], 0
                        mov              qword ptr [rsp + 16656], 0
                        mov              qword ptr [rsp + 16664], 0
                        mov              qword ptr [rsp + 16672], 0
                        mov              qword ptr [rsp + 16680], 0
                        mov              qword ptr [rsp + 16688], 0
                        mov              qword ptr [rsp + 16696], 0
                        mov              qword ptr [rsp + 16704], 0
                        mov              qword ptr [rsp + 16712], 0
                        mov              qword ptr [rsp + 16720], 0
                        mov              qword ptr [rsp + 16728], 0
                        mov              qword ptr [rsp + 16736], 0
                        mov              qword ptr [rsp + 16744], 0
                        mov              qword ptr [rsp + 16752], 0
                        mov              qword ptr [rsp + 16760], 0
                        mov              qword ptr [rsp + 16768], 0
                        mov              qword ptr [rsp + 16776], 0
                        mov              qword ptr [rsp + 16784], 0
                        mov              qword ptr [rsp + 16792], 0
                        mov              qword ptr [rsp + 16800], 0
                        mov              qword ptr [rsp + 16808], 0
                        mov              qword ptr [rsp + 16816], 0
                        mov              qword ptr [rsp + 16824], 0
                        mov              qword ptr [rsp + 16832], 0
                        mov              qword ptr [rsp + 16840], 0
                        mov              qword ptr [rsp + 16848], 0
                        mov              qword ptr [rsp + 16856], 0
                        mov              qword ptr [rsp + 16864], 0
                        mov              qword ptr [rsp + 16872], 0
                        mov              qword ptr [rsp + 16880], 0
                        mov              qword ptr [rsp + 16888], 0
                        mov              qword ptr [rsp + 16896], 0
                        mov              qword ptr [rsp + 16904], 0
                        mov              qword ptr [rsp + 16912], 0
                        mov              qword ptr [rsp + 16920], 0
                        mov              qword ptr [rsp + 16928], 0
                        mov              qword ptr [rsp + 16936], 0
                        mov              qword ptr [rsp + 16944], 0
                        mov              qword ptr [rsp + 16952], 0
                        mov              qword ptr [rsp + 16960], 0
                        mov              qword ptr [rsp + 16968], 0
                        mov              qword ptr [rsp + 16976], 0
                        mov              qword ptr [rsp + 16984], 0
                        mov              qword ptr [rsp + 16992], 0
                        mov              qword ptr [rsp + 17000], 0
                        mov              qword ptr [rsp + 17008], 0
                        mov              qword ptr [rsp + 17016], 0
                        mov              qword ptr [rsp + 17024], 0
                        mov              qword ptr [rsp + 17032], 0
                        mov              qword ptr [rsp + 17040], 0
                        mov              qword ptr [rsp + 17048], 0
                        mov              qword ptr [rsp + 17056], 0
                        mov              qword ptr [rsp + 17064], 0
                        mov              qword ptr [rsp + 17072], 0
                        mov              qword ptr [rsp + 17080], 0
                        mov              qword ptr [rsp + 17088], 0
                        mov              qword ptr [rsp + 17096], 0
                        mov              qword ptr [rsp + 17104], 0
                        mov              qword ptr [rsp + 17112], 0
                        mov              qword ptr [rsp + 17120], 0
                        mov              qword ptr [rsp + 17128], 0
                        mov              qword ptr [rsp + 17136], 0
                        mov              qword ptr [rsp + 17144], 0
                        mov              qword ptr [rsp + 17152], 0
                        mov              qword ptr [rsp + 17160], 0
                        mov              qword ptr [rsp + 17168], 0
                        mov              qword ptr [rsp + 17176], 0
                        mov              qword ptr [rsp + 17184], 0
                        mov              qword ptr [rsp + 17192], 0
                        mov              qword ptr [rsp + 17200], 0
                        mov              qword ptr [rsp + 17208], 0
                        mov              qword ptr [rsp + 17216], 0
                        mov              qword ptr [rsp + 17224], 0
                        mov              qword ptr [rsp + 17232], 0
                        mov              qword ptr [rsp + 17240], 0
                        mov              qword ptr [rsp + 17248], 0
                        mov              qword ptr [rsp + 17256], 0
                        mov              qword ptr [rsp + 17264], 0
                        mov              qword ptr [rsp + 17272], 0
                        mov              qword ptr [rsp + 17280], 0
                        mov              qword ptr [rsp + 17288], 0
                        mov              qword ptr [rsp + 17296], 0
                        mov              qword ptr [rsp + 17304], 0
                        mov              qword ptr [rsp + 17312], 0
                        mov              qword ptr [rsp + 17320], 0
                        mov              qword ptr [rsp + 17328], 0
                        mov              qword ptr [rsp + 17336], 0
                        mov              qword ptr [rsp + 17344], 0
                        mov              qword ptr [rsp + 17352], 0
                        mov              qword ptr [rsp + 17360], 0
                        mov              qword ptr [rsp + 17368], 0
                        mov              qword ptr [rsp + 17376], 0
                        mov              qword ptr [rsp + 17384], 0
                        mov              qword ptr [rsp + 17392], 0
                        mov              qword ptr [rsp + 17400], 0
                        mov              qword ptr [rsp + 17408], 0
                        mov              qword ptr [rsp + 17416], 0
                        mov              qword ptr [rsp + 17424], 0
                        mov              qword ptr [rsp + 17432], 0
                        mov              qword ptr [rsp + 17440], 0
                        mov              qword ptr [rsp + 17448], 0
                        mov              qword ptr [rsp + 17456], 0
                        mov              qword ptr [rsp + 17464], 0
                        mov              qword ptr [rsp + 17472], 0
                        mov              qword ptr [rsp + 17480], 0
                        mov              qword ptr [rsp + 17488], 0
                        mov              qword ptr [rsp + 17496], 0
                        mov              qword ptr [rsp + 17504], 0
                        mov              qword ptr [rsp + 17512], 0
                        mov              qword ptr [rsp + 17520], 0
                        mov              qword ptr [rsp + 17528], 0
                        mov              qword ptr [rsp + 17536], 0
                        mov              qword ptr [rsp + 17544], 0
                        mov              qword ptr [rsp + 17552], 0
                        mov              qword ptr [rsp + 17560], 0
                        mov              qword ptr [rsp + 17568], 0
                        mov              qword ptr [rsp + 17576], 0
                        mov              qword ptr [rsp + 17584], 0
                        mov              qword ptr [rsp + 17592], 0
                        mov              qword ptr [rsp + 17600], 0
                        mov              qword ptr [rsp + 17608], 0
                        mov              qword ptr [rsp + 17616], 0
                        mov              qword ptr [rsp + 17624], 0
                        mov              qword ptr [rsp + 17632], 0
                        mov              qword ptr [rsp + 17640], 0
                        mov              qword ptr [rsp + 17648], 0
                        mov              qword ptr [rsp + 17656], 0
                        mov              qword ptr [rsp + 17664], 0
                        mov              qword ptr [rsp + 17672], 0
                        mov              qword ptr [rsp + 17680], 0
                        mov              qword ptr [rsp + 17688], 0
                        mov              qword ptr [rsp + 17696], 0
                        mov              qword ptr [rsp + 17704], 0
                        mov              qword ptr [rsp + 17712], 0
                        mov              qword ptr [rsp + 17720], 0
                        mov              qword ptr [rsp + 17728], 0
                        mov              qword ptr [rsp + 17736], 0
                        mov              qword ptr [rsp + 17744], 0
                        mov              qword ptr [rsp + 17752], 0
                        mov              qword ptr [rsp + 17760], 0
                        mov              qword ptr [rsp + 17768], 0
                        mov              qword ptr [rsp + 17776], 0
                        mov              qword ptr [rsp + 17784], 0
                        mov              qword ptr [rsp + 17792], 0
                        mov              qword ptr [rsp + 17800], 0
                        mov              qword ptr [rsp + 17808], 0
                        mov              qword ptr [rsp + 17816], 0
                        mov              qword ptr [rsp + 17824], 0
                        mov              qword ptr [rsp + 17832], 0
                        mov              qword ptr [rsp + 17840], 0
                        mov              qword ptr [rsp + 17848], 0
                        mov              qword ptr [rsp + 17856], 0
                        mov              qword ptr [rsp + 17864], 0
                        mov              qword ptr [rsp + 17872], 0
                        mov              qword ptr [rsp + 17880], 0
                        mov              qword ptr [rsp + 17888], 0
                        mov              qword ptr [rsp + 17896], 0
                        mov              qword ptr [rsp + 17904], 0
                        mov              qword ptr [rsp + 17912], 0
                        mov              qword ptr [rsp + 17920], 0
                        mov              qword ptr [rsp + 17928], 0
                        mov              qword ptr [rsp + 17936], 0
                        mov              qword ptr [rsp + 17944], 0
                        mov              qword ptr [rsp + 17952], 0
                        mov              qword ptr [rsp + 17960], 0
                        mov              qword ptr [rsp + 17968], 0
                        mov              qword ptr [rsp + 17976], 0
                        mov              qword ptr [rsp + 17984], 0
                        mov              qword ptr [rsp + 17992], 0
                        mov              qword ptr [rsp + 18000], 0
                        mov              qword ptr [rsp + 18008], 0
                        mov              qword ptr [rsp + 18016], 0
                        mov              qword ptr [rsp + 18024], 0
                        mov              qword ptr [rsp + 18032], 0
                        mov              qword ptr [rsp + 18040], 0
                        mov              qword ptr [rsp + 18048], 0
                        mov              qword ptr [rsp + 18056], 0
                        mov              qword ptr [rsp + 18064], 0
                        mov              qword ptr [rsp + 18072], 0
                        mov              qword ptr [rsp + 18080], 0
                        mov              qword ptr [rsp + 18088], 0
                        mov              qword ptr [rsp + 18096], 0
                        mov              qword ptr [rsp + 18104], 0
                        mov              qword ptr [rsp + 18112], 0
                        mov              qword ptr [rsp + 18120], 0
                        mov              qword ptr [rsp + 18128], 0
                        mov              qword ptr [rsp + 18136], 0
                        mov              qword ptr [rsp + 18144], 0
                        mov              qword ptr [rsp + 18152], 0
                        mov              qword ptr [rsp + 18160], 0
                        mov              qword ptr [rsp + 18168], 0
                        mov              qword ptr [rsp + 18176], 0
                        mov              qword ptr [rsp + 18184], 0
                        mov              qword ptr [rsp + 18192], 0
                        mov              qword ptr [rsp + 18200], 0
                        mov              qword ptr [rsp + 18208], 0
                        mov              qword ptr [rsp + 18216], 0
                        mov              qword ptr [rsp + 18224], 0
                        mov              qword ptr [rsp + 18232], 0
                        mov              qword ptr [rsp + 18240], 0
                        mov              qword ptr [rsp + 18248], 0
                        mov              qword ptr [rsp + 18256], 0
                        mov              qword ptr [rsp + 18264], 0
                        mov              qword ptr [rsp + 18272], 0
                        mov              qword ptr [rsp + 18280], 0
                        mov              qword ptr [rsp + 18288], 0
                        mov              qword ptr [rsp + 18296], 0
                        mov              qword ptr [rsp + 18304], 0
                        mov              qword ptr [rsp + 18312], 0
                        mov              qword ptr [rsp + 18320], 0
                        mov              qword ptr [rsp + 18328], 0
                        mov              qword ptr [rsp + 18336], 0
                        mov              qword ptr [rsp + 18344], 0
                        mov              qword ptr [rsp + 18352], 0
                        mov              qword ptr [rsp + 18360], 0
                        mov              qword ptr [rsp + 18368], 0
                        mov              qword ptr [rsp + 18376], 0
                        mov              qword ptr [rsp + 18384], 0
                        mov              qword ptr [rsp + 18392], 0
                        mov              qword ptr [rsp + 18400], 0
                        mov              qword ptr [rsp + 18408], 0
                        mov              qword ptr [rsp + 18416], 0
                        mov              qword ptr [rsp + 18424], 0
                        mov              qword ptr [rsp + 18432], 0
                        mov              qword ptr [rsp + 18440], 0
                        mov              qword ptr [rsp + 18448], 0
                        mov              qword ptr [rsp + 18456], 0
                        mov              qword ptr [rsp + 18464], 0
                        mov              qword ptr [rsp + 18472], 0
                        mov              qword ptr [rsp + 18480], 0
                        mov              qword ptr [rsp + 18488], 0
                        mov              qword ptr [rsp + 18496], 0
                        mov              qword ptr [rsp + 18504], 0
                        mov              qword ptr [rsp + 18512], 0
                        mov              qword ptr [rsp + 18520], 0
                        mov              qword ptr [rsp + 18528], 0
                        mov              qword ptr [rsp + 18536], 0
                        mov              qword ptr [rsp + 18544], 0
                        mov              qword ptr [rsp + 18552], 0
                        mov              qword ptr [rsp + 18560], 0
                        mov              qword ptr [rsp + 18568], 0
                        mov              qword ptr [rsp + 18576], 0
                        mov              qword ptr [rsp + 18584], 0
                        mov              qword ptr [rsp + 18592], 0
                        mov              qword ptr [rsp + 18600], 0
                        mov              qword ptr [rsp + 18608], 0
                        mov              qword ptr [rsp + 18616], 0
                        mov              qword ptr [rsp + 18624], 0
                        mov              qword ptr [rsp + 18632], 0
                        mov              qword ptr [rsp + 18640], 0
                        mov              qword ptr [rsp + 18648], 0
                        mov              qword ptr [rsp + 18656], 0
                        mov              qword ptr [rsp + 18664], 0
                        mov              qword ptr [rsp + 18672], 0
                        mov              qword ptr [rsp + 18680], 0
                        mov              qword ptr [rsp + 18688], 0
                        mov              qword ptr [rsp + 18696], 0
                        mov              qword ptr [rsp + 18704], 0
                        mov              qword ptr [rsp + 18712], 0
                        mov              qword ptr [rsp + 18720], 0
                        mov              qword ptr [rsp + 18728], 0
                        mov              qword ptr [rsp + 18736], 0
                        mov              qword ptr [rsp + 18744], 0
                        mov              qword ptr [rsp + 18752], 0
                        mov              qword ptr [rsp + 18760], 0
                        mov              qword ptr [rsp + 18768], 0
                        mov              qword ptr [rsp + 18776], 0
                        mov              qword ptr [rsp + 18784], 0
                        mov              qword ptr [rsp + 18792], 0
                        mov              qword ptr [rsp + 18800], 0
                        mov              qword ptr [rsp + 18808], 0
                        mov              qword ptr [rsp + 18816], 0
                        mov              qword ptr [rsp + 18824], 0
                        mov              qword ptr [rsp + 18832], 0
                        mov              qword ptr [rsp + 18840], 0
                        mov              qword ptr [rsp + 18848], 0
                        mov              qword ptr [rsp + 18856], 0
                        mov              qword ptr [rsp + 18864], 0
                        mov              qword ptr [rsp + 18872], 0
                        mov              qword ptr [rsp + 18880], 0
                        mov              qword ptr [rsp + 18888], 0
                        mov              qword ptr [rsp + 18896], 0
                        mov              qword ptr [rsp + 18904], 0
                        mov              qword ptr [rsp + 18912], 0
                        mov              qword ptr [rsp + 18920], 0
                        mov              qword ptr [rsp + 18928], 0
                        mov              qword ptr [rsp + 18936], 0
                        mov              qword ptr [rsp + 18944], 0
                        mov              qword ptr [rsp + 18952], 0
                        mov              qword ptr [rsp + 18960], 0
                        mov              qword ptr [rsp + 18968], 0
                        mov              qword ptr [rsp + 18976], 0
                        mov              qword ptr [rsp + 18984], 0
                        mov              qword ptr [rsp + 18992], 0
                        mov              qword ptr [rsp + 19000], 0
                        mov              qword ptr [rsp + 19008], 0
                        mov              qword ptr [rsp + 19016], 0
                        mov              qword ptr [rsp + 19024], 0
                        mov              qword ptr [rsp + 19032], 0
                        mov              qword ptr [rsp + 19040], 0
                        mov              qword ptr [rsp + 19048], 0
                        mov              qword ptr [rsp + 19056], 0
                        mov              qword ptr [rsp + 19064], 0
                        mov              qword ptr [rsp + 19072], 0
                        mov              qword ptr [rsp + 19080], 0
                        mov              qword ptr [rsp + 19088], 0
                        mov              qword ptr [rsp + 19096], 0
                        mov              qword ptr [rsp + 19104], 0
                        mov              qword ptr [rsp + 19112], 0
                        mov              qword ptr [rsp + 19120], 0
                        mov              qword ptr [rsp + 19128], 0
                        mov              qword ptr [rsp + 19136], 0
                        mov              qword ptr [rsp + 19144], 0
                        mov              qword ptr [rsp + 19152], 0
                        mov              qword ptr [rsp + 19160], 0
                        mov              qword ptr [rsp + 19168], 0
                        mov              qword ptr [rsp + 19176], 0
                        mov              qword ptr [rsp + 19184], 0
                        mov              qword ptr [rsp + 19192], 0
                        mov              qword ptr [rsp + 19200], 0
                        mov              qword ptr [rsp + 19208], 0
                        mov              qword ptr [rsp + 19216], 0
                        mov              qword ptr [rsp + 19224], 0
                        mov              qword ptr [rsp + 19232], 0
                        mov              qword ptr [rsp + 19240], 0
                        mov              qword ptr [rsp + 19248], 0
                        mov              qword ptr [rsp + 19256], 0
                        mov              qword ptr [rsp + 19264], 0
                        mov              qword ptr [rsp + 19272], 0
                        mov              qword ptr [rsp + 19280], 0
                        mov              qword ptr [rsp + 19288], 0
                        mov              qword ptr [rsp + 19296], 0
                        mov              qword ptr [rsp + 19304], 0
                        mov              qword ptr [rsp + 19312], 0
                        mov              qword ptr [rsp + 19320], 0
                        mov              qword ptr [rsp + 19328], 0
                        mov              qword ptr [rsp + 19336], 0
                        mov              qword ptr [rsp + 19344], 0
                        mov              qword ptr [rsp + 19352], 0
                        mov              qword ptr [rsp + 19360], 0
                        mov              qword ptr [rsp + 19368], 0
                        mov              qword ptr [rsp + 19376], 0
                        mov              qword ptr [rsp + 19384], 0
                        mov              qword ptr [rsp + 19392], 0
                        mov              qword ptr [rsp + 19400], 0
                        mov              qword ptr [rsp + 19408], 0
                        mov              qword ptr [rsp + 19416], 0
                        mov              qword ptr [rsp + 19424], 0
                        mov              qword ptr [rsp + 19432], 0
                        mov              qword ptr [rsp + 19440], 0
                        mov              qword ptr [rsp + 19448], 0
                        mov              qword ptr [rsp + 19456], 0
                        mov              qword ptr [rsp + 19464], 0
                        mov              qword ptr [rsp + 19472], 0
                        mov              qword ptr [rsp + 19480], 0
                        mov              qword ptr [rsp + 19488], 0
                        mov              qword ptr [rsp + 19496], 0
                        mov              qword ptr [rsp + 19504], 0
                        mov              qword ptr [rsp + 19512], 0
                        mov              qword ptr [rsp + 19520], 0
                        mov              qword ptr [rsp + 19528], 0
                        mov              qword ptr [rsp + 19536], 0
                        mov              qword ptr [rsp + 19544], 0
                        mov              qword ptr [rsp + 19552], 0
                        mov              qword ptr [rsp + 19560], 0
                        mov              qword ptr [rsp + 19568], 0
                        mov              qword ptr [rsp + 19576], 0
                        mov              qword ptr [rsp + 19584], 0
                        mov              qword ptr [rsp + 19592], 0
                        mov              qword ptr [rsp + 19600], 0
                        mov              qword ptr [rsp + 19608], 0
                        mov              qword ptr [rsp + 19616], 0
                        mov              qword ptr [rsp + 19624], 0
                        mov              qword ptr [rsp + 19632], 0
                        mov              qword ptr [rsp + 19640], 0
                        mov              qword ptr [rsp + 19648], 0
                        mov              qword ptr [rsp + 19656], 0
                        mov              qword ptr [rsp + 19664], 0
                        mov              qword ptr [rsp + 19672], 0
                        mov              qword ptr [rsp + 19680], 0
                        mov              qword ptr [rsp + 19688], 0
                        mov              qword ptr [rsp + 19696], 0
                        mov              qword ptr [rsp + 19704], 0
                        mov              qword ptr [rsp + 19712], 0
                        mov              qword ptr [rsp + 19720], 0
                        mov              qword ptr [rsp + 19728], 0
                        mov              qword ptr [rsp + 19736], 0
                        mov              qword ptr [rsp + 19744], 0
                        mov              qword ptr [rsp + 19752], 0
                        mov              qword ptr [rsp + 19760], 0
                        mov              qword ptr [rsp + 19768], 0
                        mov              qword ptr [rsp + 19776], 0
                        mov              qword ptr [rsp + 19784], 0
                        mov              qword ptr [rsp + 19792], 0
                        mov              qword ptr [rsp + 19800], 0
                        mov              qword ptr [rsp + 19808], 0
                        mov              qword ptr [rsp + 19816], 0
                        mov              qword ptr [rsp + 19824], 0
                        mov              qword ptr [rsp + 19832], 0
                        mov              qword ptr [rsp + 19840], 0
                        mov              qword ptr [rsp + 19848], 0
                        mov              qword ptr [rsp + 19856], 0
                        mov              qword ptr [rsp + 19864], 0
                        mov              qword ptr [rsp + 19872], 0
                        mov              qword ptr [rsp + 19880], 0
                        mov              qword ptr [rsp + 19888], 0
                        mov              qword ptr [rsp + 19896], 0
                        mov              qword ptr [rsp + 19904], 0
                        mov              qword ptr [rsp + 19912], 0
                        mov              qword ptr [rsp + 19920], 0
                        mov              qword ptr [rsp + 19928], 0
                        mov              qword ptr [rsp + 19936], 0
                        mov              qword ptr [rsp + 19944], 0
                        mov              qword ptr [rsp + 19952], 0
                        mov              qword ptr [rsp + 19960], 0
                        mov              qword ptr [rsp + 19968], 0
                        mov              qword ptr [rsp + 19976], 0
                        mov              qword ptr [rsp + 19984], 0
                        mov              qword ptr [rsp + 19992], 0
                        mov              qword ptr [rsp + 20000], 0
                        mov              qword ptr [rsp + 20008], 0
                        mov              qword ptr [rsp + 20016], 0
                        mov              qword ptr [rsp + 20024], 0
                        mov              qword ptr [rsp + 20032], 0
                        mov              qword ptr [rsp + 20040], 0
                        mov              qword ptr [rsp + 20048], 0
                        mov              qword ptr [rsp + 20056], 0
                        mov              qword ptr [rsp + 20064], 0
                        mov              qword ptr [rsp + 20072], 0
                        mov              qword ptr [rsp + 20080], 0
                        mov              qword ptr [rsp + 20088], 0
                        mov              qword ptr [rsp + 20096], 0
                        mov              qword ptr [rsp + 20104], 0
                        mov              qword ptr [rsp + 20112], 0
                        mov              qword ptr [rsp + 20120], 0
                        mov              qword ptr [rsp + 20128], 0
                        mov              qword ptr [rsp + 20136], 0
                        mov              qword ptr [rsp + 20144], 0
                        mov              qword ptr [rsp + 20152], 0
                        mov              qword ptr [rsp + 20160], 0
                        mov              qword ptr [rsp + 20168], 0
                        mov              qword ptr [rsp + 20176], 0
                        mov              qword ptr [rsp + 20184], 0
                        mov              qword ptr [rsp + 20192], 0
                        mov              qword ptr [rsp + 20200], 0
                        mov              qword ptr [rsp + 20208], 0
                        mov              qword ptr [rsp + 20216], 0
                        mov              qword ptr [rsp + 20224], 0
                        mov              qword ptr [rsp + 20232], 0
                        mov              qword ptr [rsp + 20240], 0
                        mov              qword ptr [rsp + 20248], 0
                        mov              qword ptr [rsp + 20256], 0
                        mov              qword ptr [rsp + 20264], 0
                        mov              qword ptr [rsp + 20272], 0
                        mov              qword ptr [rsp + 20280], 0
                        mov              qword ptr [rsp + 20288], 0
                        mov              qword ptr [rsp + 20296], 0
                        mov              qword ptr [rsp + 20304], 0
                        mov              qword ptr [rsp + 20312], 0
                        mov              qword ptr [rsp + 20320], 0
                        mov              qword ptr [rsp + 20328], 0
                        mov              qword ptr [rsp + 20336], 0
                        mov              qword ptr [rsp + 20344], 0
                        mov              qword ptr [rsp + 20352], 0
                        mov              qword ptr [rsp + 20360], 0
                        mov              qword ptr [rsp + 20368], 0
                        mov              qword ptr [rsp + 20376], 0
                        mov              qword ptr [rsp + 20384], 0
                        mov              qword ptr [rsp + 20392], 0
                        mov              qword ptr [rsp + 20400], 0
                        mov              qword ptr [rsp + 20408], 0
                        mov              qword ptr [rsp + 20416], 0
                        mov              qword ptr [rsp + 20424], 0
                        mov              qword ptr [rsp + 20432], 0
                        mov              qword ptr [rsp + 20440], 0
                        mov              qword ptr [rsp + 20448], 0
                        mov              qword ptr [rsp + 20456], 0
                        mov              qword ptr [rsp + 20464], 0
                        mov              qword ptr [rsp + 20472], 0
                        mov              qword ptr [rsp + 20480], 0
                        mov              qword ptr [rsp + 20488], 0
                        mov              qword ptr [rsp + 20496], 0
                        mov              qword ptr [rsp + 20504], 0
                        mov              qword ptr [rsp + 20512], 0
                        mov              qword ptr [rsp + 20520], 0
                        mov              qword ptr [rsp + 20528], 0
                        mov              qword ptr [rsp + 20536], 0
                        mov              qword ptr [rsp + 20544], 0
                        mov              qword ptr [rsp + 20552], 0
                        mov              qword ptr [rsp + 20560], 0
                        mov              qword ptr [rsp + 20568], 0
                        mov              qword ptr [rsp + 20576], 0
                        mov              qword ptr [rsp + 20584], 0
                        mov              qword ptr [rsp + 20592], 0
                        mov              qword ptr [rsp + 20600], 0
                        mov              qword ptr [rsp + 20608], 0
                        mov              qword ptr [rsp + 20616], 0
                        mov              qword ptr [rsp + 20624], 0
                        mov              qword ptr [rsp + 20632], 0
                        mov              qword ptr [rsp + 20640], 0
                        mov              qword ptr [rsp + 20648], 0
                        mov              qword ptr [rsp + 20656], 0
                        mov              qword ptr [rsp + 20664], 0
                        mov              qword ptr [rsp + 20672], 0
                        mov              qword ptr [rsp + 20680], 0
                        mov              qword ptr [rsp + 20688], 0
                        mov              qword ptr [rsp + 20696], 0
                        mov              qword ptr [rsp + 20704], 0
                        mov              qword ptr [rsp + 20712], 0
                        mov              qword ptr [rsp + 20720], 0
                        mov              qword ptr [rsp + 20728], 0
                        mov              qword ptr [rsp + 20736], 0
                        mov              qword ptr [rsp + 20744], 0
                        mov              qword ptr [rsp + 20752], 0
                        mov              qword ptr [rsp + 20760], 0
                        mov              qword ptr [rsp + 20768], 0
                        mov              qword ptr [rsp + 20776], 0
                        mov              qword ptr [rsp + 20784], 0
                        mov              qword ptr [rsp + 20792], 0
                        mov              qword ptr [rsp + 20800], 0
                        mov              qword ptr [rsp + 20808], 0
                        mov              qword ptr [rsp + 20816], 0
                        mov              qword ptr [rsp + 20824], 0
                        mov              qword ptr [rsp + 20832], 0
                        mov              qword ptr [rsp + 20840], 0
                        mov              qword ptr [rsp + 20848], 0
                        mov              qword ptr [rsp + 20856], 0
                        mov              qword ptr [rsp + 20864], 0
                        mov              qword ptr [rsp + 20872], 0
                        mov              qword ptr [rsp + 20880], 0
                        mov              qword ptr [rsp + 20888], 0
                        mov              qword ptr [rsp + 20896], 0
                        mov              qword ptr [rsp + 20904], 0
                        mov              qword ptr [rsp + 20912], 0
                        mov              qword ptr [rsp + 20920], 0
                        mov              qword ptr [rsp + 20928], 0
                        mov              qword ptr [rsp + 20936], 0
                        mov              qword ptr [rsp + 20944], 0
                        mov              qword ptr [rsp + 20952], 0
                        mov              qword ptr [rsp + 20960], 0
                        mov              qword ptr [rsp + 20968], 0
                        mov              qword ptr [rsp + 20976], 0
                        mov              qword ptr [rsp + 20984], 0
                        mov              qword ptr [rsp + 20992], 0
                        mov              qword ptr [rsp + 21000], 0
                        mov              qword ptr [rsp + 21008], 0
                        mov              qword ptr [rsp + 21016], 0
                        mov              qword ptr [rsp + 21024], 0
                        mov              qword ptr [rsp + 21032], 0
                        mov              qword ptr [rsp + 21040], 0
                        mov              qword ptr [rsp + 21048], 0
                        mov              qword ptr [rsp + 21056], 0
                        mov              qword ptr [rsp + 21064], 0
                        mov              qword ptr [rsp + 21072], 0
                        mov              qword ptr [rsp + 21080], 0
                        mov              qword ptr [rsp + 21088], 0
                        mov              qword ptr [rsp + 21096], 0
                        mov              qword ptr [rsp + 21104], 0
                        mov              qword ptr [rsp + 21112], 0
                        mov              qword ptr [rsp + 21120], 0
                        mov              qword ptr [rsp + 21128], 0
                        mov              qword ptr [rsp + 21136], 0
                        mov              qword ptr [rsp + 21144], 0
                        mov              qword ptr [rsp + 21152], 0
                        mov              qword ptr [rsp + 21160], 0
                        mov              qword ptr [rsp + 21168], 0
                        mov              qword ptr [rsp + 21176], 0
                        mov              qword ptr [rsp + 21184], 0
                        mov              qword ptr [rsp + 21192], 0
                        mov              qword ptr [rsp + 21200], 0
                        mov              qword ptr [rsp + 21208], 0
                        mov              qword ptr [rsp + 21216], 0
                        mov              qword ptr [rsp + 21224], 0
                        mov              qword ptr [rsp + 21232], 0
                        mov              qword ptr [rsp + 21240], 0
                        mov              qword ptr [rsp + 21248], 0
                        mov              qword ptr [rsp + 21256], 0
                        mov              qword ptr [rsp + 21264], 0
                        mov              qword ptr [rsp + 21272], 0
                        mov              qword ptr [rsp + 21280], 0
                        mov              qword ptr [rsp + 21288], 0
                        mov              qword ptr [rsp + 21296], 0
                        mov              qword ptr [rsp + 21304], 0
                        mov              qword ptr [rsp + 21312], 0
                        mov              qword ptr [rsp + 21320], 0
                        mov              qword ptr [rsp + 21328], 0
                        mov              qword ptr [rsp + 21336], 0
                        mov              qword ptr [rsp + 21344], 0
                        mov              qword ptr [rsp + 21352], 0
                        mov              qword ptr [rsp + 21360], 0
                        mov              qword ptr [rsp + 21368], 0
                        mov              qword ptr [rsp + 21376], 0
                        mov              qword ptr [rsp + 21384], 0
                        mov              qword ptr [rsp + 21392], 0
                        mov              qword ptr [rsp + 21400], 0
                        mov              qword ptr [rsp + 21408], 0
                        mov              qword ptr [rsp + 21416], 0
                        mov              qword ptr [rsp + 21424], 0
                        mov              qword ptr [rsp + 21432], 0
                        mov              qword ptr [rsp + 21440], 0
                        mov              qword ptr [rsp + 21448], 0
                        mov              qword ptr [rsp + 21456], 0
                        mov              qword ptr [rsp + 21464], 0
                        mov              qword ptr [rsp + 21472], 0
                        mov              qword ptr [rsp + 21480], 0
                        mov              qword ptr [rsp + 21488], 0
                        mov              qword ptr [rsp + 21496], 0
                        mov              qword ptr [rsp + 21504], 0
                        mov              qword ptr [rsp + 21512], 0
                        mov              qword ptr [rsp + 21520], 0
                        mov              qword ptr [rsp + 21528], 0
                        mov              qword ptr [rsp + 21536], 0
                        mov              qword ptr [rsp + 21544], 0
                        mov              qword ptr [rsp + 21552], 0
                        mov              qword ptr [rsp + 21560], 0
                        mov              qword ptr [rsp + 21568], 0
                        mov              qword ptr [rsp + 21576], 0
                        mov              qword ptr [rsp + 21584], 0
                        mov              qword ptr [rsp + 21592], 0
                        mov              qword ptr [rsp + 21600], 0
                        mov              qword ptr [rsp + 21608], 0
                        mov              qword ptr [rsp + 21616], 0
                        mov              qword ptr [rsp + 21624], 0
                        mov              qword ptr [rsp + 21632], 0
                        mov              qword ptr [rsp + 21640], 0
                        mov              qword ptr [rsp + 21648], 0
                        mov              qword ptr [rsp + 21656], 0
                        mov              qword ptr [rsp + 21664], 0
                        mov              qword ptr [rsp + 21672], 0
                        mov              qword ptr [rsp + 21680], 0
                        mov              qword ptr [rsp + 21688], 0
                        mov              qword ptr [rsp + 21696], 0
                        mov              qword ptr [rsp + 21704], 0
                        mov              qword ptr [rsp + 21712], 0
                        mov              qword ptr [rsp + 21720], 0
                        mov              qword ptr [rsp + 21728], 0
                        mov              qword ptr [rsp + 21736], 0
                        mov              qword ptr [rsp + 21744], 0
                        mov              qword ptr [rsp + 21752], 0
                        mov              qword ptr [rsp + 21760], 0
                        mov              qword ptr [rsp + 21768], 0
                        mov              qword ptr [rsp + 21776], 0
                        mov              qword ptr [rsp + 21784], 0
                        mov              qword ptr [rsp + 21792], 0
                        mov              qword ptr [rsp + 21800], 0
                        mov              qword ptr [rsp + 21808], 0
                        mov              qword ptr [rsp + 21816], 0
                        mov              qword ptr [rsp + 21824], 0
                        mov              qword ptr [rsp + 21832], 0
                        mov              qword ptr [rsp + 21840], 0
                        mov              qword ptr [rsp + 21848], 0
                        mov              qword ptr [rsp + 21856], 0
                        mov              qword ptr [rsp + 21864], 0
                        mov              qword ptr [rsp + 21872], 0
                        mov              qword ptr [rsp + 21880], 0
                        mov              qword ptr [rsp + 21888], 0
                        mov              qword ptr [rsp + 21896], 0
                        mov              qword ptr [rsp + 21904], 0
                        mov              qword ptr [rsp + 21912], 0
                        mov              qword ptr [rsp + 21920], 0
                        mov              qword ptr [rsp + 21928], 0
                        mov              qword ptr [rsp + 21936], 0
                        mov              qword ptr [rsp + 21944], 0
                        mov              qword ptr [rsp + 21952], 0
                        mov              qword ptr [rsp + 21960], 0
                        mov              qword ptr [rsp + 21968], 0
                        mov              qword ptr [rsp + 21976], 0
                        mov              qword ptr [rsp + 21984], 0
                        mov              qword ptr [rsp + 21992], 0
                        mov              qword ptr [rsp + 22000], 0
                        mov              qword ptr [rsp + 22008], 0
                        mov              qword ptr [rsp + 22016], 0
                        mov              qword ptr [rsp + 22024], 0
                        mov              qword ptr [rsp + 22032], 0
                        mov              qword ptr [rsp + 22040], 0
                        mov              qword ptr [rsp + 22048], 0
                        mov              qword ptr [rsp + 22056], 0
                        mov              qword ptr [rsp + 22064], 0
                        mov              qword ptr [rsp + 22072], 0
                        mov              qword ptr [rsp + 22080], 0
                        mov              qword ptr [rsp + 22088], 0
                        mov              qword ptr [rsp + 22096], 0
                        mov              qword ptr [rsp + 22104], 0
                        mov              qword ptr [rsp + 22112], 0
                        mov              qword ptr [rsp + 22120], 0
                        mov              qword ptr [rsp + 22128], 0
                        mov              qword ptr [rsp + 22136], 0
                        mov              qword ptr [rsp + 22144], 0
                        mov              qword ptr [rsp + 22152], 0
                        mov              qword ptr [rsp + 22160], 0
                        mov              qword ptr [rsp + 22168], 0
                        mov              qword ptr [rsp + 22176], 0
                        mov              qword ptr [rsp + 22184], 0
                        mov              qword ptr [rsp + 22192], 0
                        mov              qword ptr [rsp + 22200], 0
                        mov              qword ptr [rsp + 22208], 0
                        mov              qword ptr [rsp + 22216], 0
                        mov              qword ptr [rsp + 22224], 0
                        mov              qword ptr [rsp + 22232], 0
                        mov              qword ptr [rsp + 22240], 0
                        mov              qword ptr [rsp + 22248], 0
                        mov              qword ptr [rsp + 22256], 0
                        mov              qword ptr [rsp + 22264], 0
                        mov              qword ptr [rsp + 22272], 0
                        mov              qword ptr [rsp + 22280], 0
                        mov              qword ptr [rsp + 22288], 0
                        mov              qword ptr [rsp + 22296], 0
                        mov              qword ptr [rsp + 22304], 0
                        mov              qword ptr [rsp + 22312], 0
                        mov              qword ptr [rsp + 22320], 0
                        mov              qword ptr [rsp + 22328], 0
                        mov              qword ptr [rsp + 22336], 0
                        mov              qword ptr [rsp + 22344], 0
                        mov              qword ptr [rsp + 22352], 0
                        mov              qword ptr [rsp + 22360], 0
                        mov              qword ptr [rsp + 22368], 0
                        mov              qword ptr [rsp + 22376], 0
                        mov              qword ptr [rsp + 22384], 0
                        mov              qword ptr [rsp + 22392], 0
                        mov              qword ptr [rsp + 22400], 0
                        mov              qword ptr [rsp + 22408], 0
                        mov              qword ptr [rsp + 22416], 0
                        mov              qword ptr [rsp + 22424], 0
                        mov              qword ptr [rsp + 22432], 0
                        mov              qword ptr [rsp + 22440], 0
                        mov              qword ptr [rsp + 22448], 0
                        mov              qword ptr [rsp + 22456], 0
                        mov              qword ptr [rsp + 22464], 0
                        mov              qword ptr [rsp + 22472], 0
                        mov              qword ptr [rsp + 22480], 0
                        mov              qword ptr [rsp + 22488], 0
                        mov              qword ptr [rsp + 22496], 0
                        mov              qword ptr [rsp + 22504], 0
                        mov              qword ptr [rsp + 22512], 0
                        mov              qword ptr [rsp + 22520], 0
                        mov              qword ptr [rsp + 22528], 0
                        mov              qword ptr [rsp + 22536], 0
                        mov              qword ptr [rsp + 22544], 0
                        mov              qword ptr [rsp + 22552], 0
                        mov              qword ptr [rsp + 22560], 0
                        mov              qword ptr [rsp + 22568], 0
                        mov              qword ptr [rsp + 22576], 0
                        mov              qword ptr [rsp + 22584], 0
                        mov              qword ptr [rsp + 22592], 0
                        mov              qword ptr [rsp + 22600], 0
                        mov              qword ptr [rsp + 22608], 0
                        mov              qword ptr [rsp + 22616], 0
                        mov              qword ptr [rsp + 22624], 0
                        mov              qword ptr [rsp + 22632], 0
                        mov              qword ptr [rsp + 22640], 0
                        mov              qword ptr [rsp + 22648], 0
                        mov              qword ptr [rsp + 22656], 0
                        mov              qword ptr [rsp + 22664], 0
                        mov              qword ptr [rsp + 22672], 0
                        mov              qword ptr [rsp + 22680], 0
                        mov              qword ptr [rsp + 22688], 0
                        mov              qword ptr [rsp + 22696], 0
                        mov              qword ptr [rsp + 22704], 0
                        mov              qword ptr [rsp + 22712], 0
                        mov              qword ptr [rsp + 22720], 0
                        mov              qword ptr [rsp + 22728], 0
                        mov              qword ptr [rsp + 22736], 0
                        mov              qword ptr [rsp + 22744], 0
                        mov              qword ptr [rsp + 22752], 0
                        mov              qword ptr [rsp + 22760], 0
                        mov              qword ptr [rsp + 22768], 0
                        mov              qword ptr [rsp + 22776], 0
                        mov              qword ptr [rsp + 22784], 0
                        mov              qword ptr [rsp + 22792], 0
                        mov              qword ptr [rsp + 22800], 0
                        mov              qword ptr [rsp + 22808], 0
                        mov              qword ptr [rsp + 22816], 0
                        mov              qword ptr [rsp + 22824], 0
                        mov              qword ptr [rsp + 22832], 0
                        mov              qword ptr [rsp + 22840], 0
                        mov              qword ptr [rsp + 22848], 0
                        mov              qword ptr [rsp + 22856], 0
                        mov              qword ptr [rsp + 22864], 0
                        mov              qword ptr [rsp + 22872], 0
                        mov              qword ptr [rsp + 22880], 0
                        mov              qword ptr [rsp + 22888], 0
                        mov              qword ptr [rsp + 22896], 0
                        mov              qword ptr [rsp + 22904], 0
                        mov              qword ptr [rsp + 22912], 0
                        mov              qword ptr [rsp + 22920], 0
                        mov              qword ptr [rsp + 22928], 0
                        mov              qword ptr [rsp + 22936], 0
                        mov              qword ptr [rsp + 22944], 0
                        mov              qword ptr [rsp + 22952], 0
                        mov              qword ptr [rsp + 22960], 0
                        mov              qword ptr [rsp + 22968], 0
                        mov              qword ptr [rsp + 22976], 0
                        mov              qword ptr [rsp + 22984], 0
                        mov              qword ptr [rsp + 22992], 0
                        mov              qword ptr [rsp + 23000], 0
                        mov              qword ptr [rsp + 23008], 0
                        mov              qword ptr [rsp + 23016], 0
                        mov              qword ptr [rsp + 23024], 0
                        mov              qword ptr [rsp + 23032], 0
                        mov              qword ptr [rsp + 23040], 0
                        mov              qword ptr [rsp + 23048], 0
                        mov              qword ptr [rsp + 23056], 0
                        mov              qword ptr [rsp + 23064], 0
                        mov              qword ptr [rsp + 23072], 0
                        mov              qword ptr [rsp + 23080], 0
                        mov              qword ptr [rsp + 23088], 0
                        mov              qword ptr [rsp + 23096], 0
                        mov              qword ptr [rsp + 23104], 0
                        mov              qword ptr [rsp + 23112], 0
                        mov              qword ptr [rsp + 23120], 0
                        mov              qword ptr [rsp + 23128], 0
                        mov              qword ptr [rsp + 23136], 0
                        mov              qword ptr [rsp + 23144], 0
                        mov              qword ptr [rsp + 23152], 0
                        mov              qword ptr [rsp + 23160], 0
                        mov              qword ptr [rsp + 23168], 0
                        mov              qword ptr [rsp + 23176], 0
                        mov              qword ptr [rsp + 23184], 0
                        mov              qword ptr [rsp + 23192], 0
                        mov              qword ptr [rsp + 23200], 0
                        mov              qword ptr [rsp + 23208], 0
                        mov              qword ptr [rsp + 23216], 0
                        mov              qword ptr [rsp + 23224], 0
                        mov              qword ptr [rsp + 23232], 0
                        mov              qword ptr [rsp + 23240], 0
                        mov              qword ptr [rsp + 23248], 0
                        mov              qword ptr [rsp + 23256], 0
                        mov              qword ptr [rsp + 23264], 0
                        mov              qword ptr [rsp + 23272], 0
                        mov              qword ptr [rsp + 23280], 0
                        mov              qword ptr [rsp + 23288], 0
                        mov              qword ptr [rsp + 23296], 0
                        mov              qword ptr [rsp + 23304], 0
                        mov              qword ptr [rsp + 23312], 0
                        mov              qword ptr [rsp + 23320], 0
                        mov              qword ptr [rsp + 23328], 0
                        mov              qword ptr [rsp + 23336], 0
                        mov              qword ptr [rsp + 23344], 0
                        mov              qword ptr [rsp + 23352], 0
                        mov              qword ptr [rsp + 23360], 0
                        mov              qword ptr [rsp + 23368], 0
                        mov              qword ptr [rsp + 23376], 0
                        mov              qword ptr [rsp + 23384], 0
                        mov              qword ptr [rsp + 23392], 0
                        mov              qword ptr [rsp + 23400], 0
                        mov              qword ptr [rsp + 23408], 0
                        mov              qword ptr [rsp + 23416], 0
                        mov              qword ptr [rsp + 23424], 0
                        mov              qword ptr [rsp + 23432], 0
                        mov              qword ptr [rsp + 23440], 0
                        mov              qword ptr [rsp + 23448], 0
                        mov              qword ptr [rsp + 23456], 0
                        mov              qword ptr [rsp + 23464], 0
                        mov              qword ptr [rsp + 23472], 0
                        mov              qword ptr [rsp + 23480], 0
                        mov              qword ptr [rsp + 23488], 0
                        mov              qword ptr [rsp + 23496], 0
                        mov              qword ptr [rsp + 23504], 0
                        mov              qword ptr [rsp + 23512], 0
                        mov              qword ptr [rsp + 23520], 0
                        mov              qword ptr [rsp + 23528], 0
                        mov              qword ptr [rsp + 23536], 0
                        mov              qword ptr [rsp + 23544], 0
                        mov              qword ptr [rsp + 23552], 0
                        mov              qword ptr [rsp + 23560], 0
                        mov              qword ptr [rsp + 23568], 0
                        mov              qword ptr [rsp + 23576], 0
                        mov              qword ptr [rsp + 23584], 0
                        mov              qword ptr [rsp + 23592], 0
                        mov              qword ptr [rsp + 23600], 0
                        mov              qword ptr [rsp + 23608], 0
                        mov              qword ptr [rsp + 23616], 0
                        mov              qword ptr [rsp + 23624], 0
                        mov              qword ptr [rsp + 23632], 0
                        mov              qword ptr [rsp + 23640], 0
                        mov              qword ptr [rsp + 23648], 0
                        mov              qword ptr [rsp + 23656], 0
                        mov              qword ptr [rsp + 23664], 0
                        mov              qword ptr [rsp + 23672], 0
                        mov              qword ptr [rsp + 23680], 0
                        mov              qword ptr [rsp + 23688], 0
                        mov              qword ptr [rsp + 23696], 0
                        mov              qword ptr [rsp + 23704], 0
                        mov              qword ptr [rsp + 23712], 0
                        mov              qword ptr [rsp + 23720], 0
                        mov              qword ptr [rsp + 23728], 0
                        mov              qword ptr [rsp + 23736], 0
                        mov              qword ptr [rsp + 23744], 0
                        mov              qword ptr [rsp + 23752], 0
                        mov              qword ptr [rsp + 23760], 0
                        mov              qword ptr [rsp + 23768], 0
                        mov              qword ptr [rsp + 23776], 0
                        mov              qword ptr [rsp + 23784], 0
                        mov              qword ptr [rsp + 23792], 0
                        mov              qword ptr [rsp + 23800], 0
                        mov              qword ptr [rsp + 23808], 0
                        mov              qword ptr [rsp + 23816], 0
                        mov              qword ptr [rsp + 23824], 0
                        mov              qword ptr [rsp + 23832], 0
                        mov              qword ptr [rsp + 23840], 0
                        mov              qword ptr [rsp + 23848], 0
                        mov              qword ptr [rsp + 23856], 0
                        mov              qword ptr [rsp + 23864], 0
                        mov              qword ptr [rsp + 23872], 0
                        mov              qword ptr [rsp + 23880], 0
                        mov              qword ptr [rsp + 23888], 0
                        mov              qword ptr [rsp + 23896], 0
                        mov              qword ptr [rsp + 23904], 0
                        mov              qword ptr [rsp + 23912], 0
                        mov              qword ptr [rsp + 23920], 0
                        mov              qword ptr [rsp + 23928], 0
                        mov              qword ptr [rsp + 23936], 0
                        mov              qword ptr [rsp + 23944], 0
                        mov              qword ptr [rsp + 23952], 0
                        mov              qword ptr [rsp + 23960], 0
                        mov              qword ptr [rsp + 23968], 0
                        mov              qword ptr [rsp + 23976], 0
                        mov              qword ptr [rsp + 23984], 0
                        mov              qword ptr [rsp + 23992], 0
                        mov              qword ptr [rsp + 24000], 0
                        mov              qword ptr [rsp + 24008], 0
                        mov              qword ptr [rsp + 24016], 0
                        mov              qword ptr [rsp + 24024], 0
                        mov              qword ptr [rsp + 24032], 0
                        mov              qword ptr [rsp + 24040], 0
                        mov              qword ptr [rsp + 24048], 0
                        mov              qword ptr [rsp + 24056], 0
                        mov              qword ptr [rsp + 24064], 0
                        mov              qword ptr [rsp + 24072], 0
                        mov              qword ptr [rsp + 24080], 0
                        mov              qword ptr [rsp + 24088], 0
                        mov              qword ptr [rsp + 24096], 0
                        mov              qword ptr [rsp + 24104], 0
                        mov              qword ptr [rsp + 24112], 0
                        mov              qword ptr [rsp + 24120], 0
                        mov              qword ptr [rsp + 24128], 0
                        mov              qword ptr [rsp + 24136], 0
                        mov              qword ptr [rsp + 24144], 0
                        mov              qword ptr [rsp + 24152], 0
                        mov              qword ptr [rsp + 24160], 0
                        mov              qword ptr [rsp + 24168], 0
                        mov              qword ptr [rsp + 24176], 0
                        mov              qword ptr [rsp + 24184], 0
                        mov              qword ptr [rsp + 24192], 0
                        mov              qword ptr [rsp + 24200], 0
                        mov              qword ptr [rsp + 24208], 0
                        mov              qword ptr [rsp + 24216], 0
                        mov              qword ptr [rsp + 24224], 0
                        mov              qword ptr [rsp + 24232], 0
                        mov              qword ptr [rsp + 24240], 0
                        mov              qword ptr [rsp + 24248], 0
                        mov              qword ptr [rsp + 24256], 0
                        mov              qword ptr [rsp + 24264], 0
                        mov              qword ptr [rsp + 24272], 0
                        mov              qword ptr [rsp + 24280], 0
                        mov              qword ptr [rsp + 24288], 0
                        mov              qword ptr [rsp + 24296], 0
                        mov              qword ptr [rsp + 24304], 0
                        mov              qword ptr [rsp + 24312], 0
                        mov              qword ptr [rsp + 24320], 0
                        mov              qword ptr [rsp + 24328], 0
                        mov              qword ptr [rsp + 24336], 0
                        mov              qword ptr [rsp + 24344], 0
                        mov              qword ptr [rsp + 24352], 0
                        mov              qword ptr [rsp + 24360], 0
                        mov              qword ptr [rsp + 24368], 0
                        mov              qword ptr [rsp + 24376], 0
                        mov              qword ptr [rsp + 24384], 0
                        mov              qword ptr [rsp + 24392], 0
                        mov              qword ptr [rsp + 24400], 0
                        mov              qword ptr [rsp + 24408], 0
                        mov              qword ptr [rsp + 24416], 0
                        mov              qword ptr [rsp + 24424], 0
                        mov              qword ptr [rsp + 24432], 0
                        mov              qword ptr [rsp + 24440], 0
                        mov              qword ptr [rsp + 24448], 0
                        mov              qword ptr [rsp + 24456], 0
                        mov              qword ptr [rsp + 24464], 0
                        mov              qword ptr [rsp + 24472], 0
                        mov              qword ptr [rsp + 24480], 0
                        mov              qword ptr [rsp + 24488], 0
                        mov              qword ptr [rsp + 24496], 0
                        mov              qword ptr [rsp + 24504], 0
                        mov              qword ptr [rsp + 24512], 0
                        mov              qword ptr [rsp + 24520], 0
                        mov              qword ptr [rsp + 24528], 0
                        mov              qword ptr [rsp + 24536], 0
                        mov              qword ptr [rsp + 24544], 0
                        mov              qword ptr [rsp + 24552], 0
                        mov              qword ptr [rsp + 24560], 0
                        mov              qword ptr [rsp + 24568], 0
                        mov              qword ptr [rsp + 24576], 0
                        mov              qword ptr [rsp + 24584], 0
                        mov              qword ptr [rsp + 24592], 0
                        mov              qword ptr [rsp + 24600], 0
                        mov              qword ptr [rsp + 24608], 0
                        mov              qword ptr [rsp + 24616], 0
                        mov              qword ptr [rsp + 24624], 0
                        mov              qword ptr [rsp + 24632], 0
                        mov              qword ptr [rsp + 24640], 0
                        mov              qword ptr [rsp + 24648], 0
                        mov              qword ptr [rsp + 24656], 0
                        mov              qword ptr [rsp + 24664], 0
                        mov              qword ptr [rsp + 24672], 0
                        mov              qword ptr [rsp + 24680], 0
                        mov              qword ptr [rsp + 24688], 0
                        mov              qword ptr [rsp + 24696], 0
                        mov              qword ptr [rsp + 24704], 0
                        mov              qword ptr [rsp + 24712], 0
                        mov              qword ptr [rsp + 24720], 0
                        mov              qword ptr [rsp + 24728], 0
                        mov              qword ptr [rsp + 24736], 0
                        mov              qword ptr [rsp + 24744], 0
                        mov              qword ptr [rsp + 24752], 0
                        mov              qword ptr [rsp + 24760], 0
                        mov              qword ptr [rsp + 24768], 0
                        mov              qword ptr [rsp + 24776], 0
                        mov              qword ptr [rsp + 24784], 0
                        mov              qword ptr [rsp + 24792], 0
                        mov              qword ptr [rsp + 24800], 0
                        mov              qword ptr [rsp + 24808], 0
                        mov              qword ptr [rsp + 24816], 0
                        mov              qword ptr [rsp + 24824], 0
                        mov              qword ptr [rsp + 24832], 0
                        mov              qword ptr [rsp + 24840], 0
                        mov              qword ptr [rsp + 24848], 0
                        mov              qword ptr [rsp + 24856], 0
                        mov              qword ptr [rsp + 24864], 0
                        mov              qword ptr [rsp + 24872], 0
                        mov              qword ptr [rsp + 24880], 0
                        mov              qword ptr [rsp + 24888], 0
                        mov              qword ptr [rsp + 24896], 0
                        mov              qword ptr [rsp + 24904], 0
                        mov              qword ptr [rsp + 24912], 0
                        mov              qword ptr [rsp + 24920], 0
                        mov              qword ptr [rsp + 24928], 0
                        mov              qword ptr [rsp + 24936], 0
                        mov              qword ptr [rsp + 24944], 0
                        mov              qword ptr [rsp + 24952], 0
                        mov              qword ptr [rsp + 24960], 0
                        mov              qword ptr [rsp + 24968], 0
                        mov              qword ptr [rsp + 24976], 0
                        mov              qword ptr [rsp + 24984], 0
                        mov              qword ptr [rsp + 24992], 0
                        mov              qword ptr [rsp + 25000], 0
                        mov              qword ptr [rsp + 25008], 0
                        mov              qword ptr [rsp + 25016], 0
                        mov              qword ptr [rsp + 25024], 0
                        mov              qword ptr [rsp + 25032], 0
                        mov              qword ptr [rsp + 25040], 0
                        mov              qword ptr [rsp + 25048], 0
                        mov              qword ptr [rsp + 25056], 0
                        mov              qword ptr [rsp + 25064], 0
                        mov              qword ptr [rsp + 25072], 0
                        mov              qword ptr [rsp + 25080], 0
                        mov              qword ptr [rsp + 25088], 0
                        mov              qword ptr [rsp + 25096], 0
                        mov              qword ptr [rsp + 25104], 0
                        mov              qword ptr [rsp + 25112], 0
                        mov              qword ptr [rsp + 25120], 0
                        mov              qword ptr [rsp + 25128], 0
                        mov              qword ptr [rsp + 25136], 0
                        mov              qword ptr [rsp + 25144], 0
                        mov              qword ptr [rsp + 25152], 0
                        mov              qword ptr [rsp + 25160], 0
                        mov              qword ptr [rsp + 25168], 0
                        mov              qword ptr [rsp + 25176], 0
                        mov              qword ptr [rsp + 25184], 0
                        mov              qword ptr [rsp + 25192], 0
                        mov              qword ptr [rsp + 25200], 0
                        mov              qword ptr [rsp + 25208], 0
                        mov              qword ptr [rsp + 25216], 0
                        mov              qword ptr [rsp + 25224], 0
                        mov              qword ptr [rsp + 25232], 0
                        mov              qword ptr [rsp + 25240], 0
                        mov              qword ptr [rsp + 25248], 0
                        mov              qword ptr [rsp + 25256], 0
                        mov              qword ptr [rsp + 25264], 0
                        mov              qword ptr [rsp + 25272], 0
                        mov              qword ptr [rsp + 25280], 0
                        mov              qword ptr [rsp + 25288], 0
                        mov              qword ptr [rsp + 25296], 0
                        mov              qword ptr [rsp + 25304], 0
                        mov              qword ptr [rsp + 25312], 0
                        mov              qword ptr [rsp + 25320], 0
                        mov              qword ptr [rsp + 25328], 0
                        mov              qword ptr [rsp + 25336], 0
                        mov              qword ptr [rsp + 25344], 0
                        mov              qword ptr [rsp + 25352], 0
                        mov              qword ptr [rsp + 25360], 0
                        mov              qword ptr [rsp + 25368], 0
                        mov              qword ptr [rsp + 25376], 0
                        mov              qword ptr [rsp + 25384], 0
                        mov              qword ptr [rsp + 25392], 0
                        mov              qword ptr [rsp + 25400], 0
                        mov              qword ptr [rsp + 25408], 0
                        mov              qword ptr [rsp + 25416], 0
                        mov              qword ptr [rsp + 25424], 0
                        mov              qword ptr [rsp + 25432], 0
                        mov              qword ptr [rsp + 25440], 0
                        mov              qword ptr [rsp + 25448], 0
                        mov              qword ptr [rsp + 25456], 0
                        mov              qword ptr [rsp + 25464], 0
                        mov              qword ptr [rsp + 25472], 0
                        mov              qword ptr [rsp + 25480], 0
                        mov              qword ptr [rsp + 25488], 0
                        mov              qword ptr [rsp + 25496], 0
                        mov              qword ptr [rsp + 25504], 0
                        mov              qword ptr [rsp + 25512], 0
                        mov              qword ptr [rsp + 25520], 0
                        mov              qword ptr [rsp + 25528], 0
                        mov              qword ptr [rsp + 25536], 0
                        mov              qword ptr [rsp + 25544], 0
                        mov              qword ptr [rsp + 25552], 0
                        mov              qword ptr [rsp + 25560], 0
                        mov              qword ptr [rsp + 25568], 0
                        mov              qword ptr [rsp + 25576], 0
                        mov              qword ptr [rsp + 25584], 0
                        mov              qword ptr [rsp + 25592], 0
                        mov              qword ptr [rsp + 25600], 0
                        mov              qword ptr [rsp + 25608], 0
                        mov              qword ptr [rsp + 25616], 0
                        mov              qword ptr [rsp + 25624], 0
                        mov              qword ptr [rsp + 25632], 0
                        mov              qword ptr [rsp + 25640], 0
                        mov              qword ptr [rsp + 25648], 0
                        mov              qword ptr [rsp + 25656], 0
                        mov              qword ptr [rsp + 25664], 0
                        mov              qword ptr [rsp + 25672], 0
                        mov              qword ptr [rsp + 25680], 0
                        mov              qword ptr [rsp + 25688], 0
                        mov              qword ptr [rsp + 25696], 0
                        mov              qword ptr [rsp + 25704], 0
                        mov              qword ptr [rsp + 25712], 0
                        mov              qword ptr [rsp + 25720], 0
                        mov              qword ptr [rsp + 25728], 0
                        mov              qword ptr [rsp + 25736], 0
                        mov              qword ptr [rsp + 25744], 0
                        mov              qword ptr [rsp + 25752], 0
                        mov              qword ptr [rsp + 25760], 0
                        mov              qword ptr [rsp + 25768], 0
                        mov              qword ptr [rsp + 25776], 0
                        mov              qword ptr [rsp + 25784], 0
                        mov              qword ptr [rsp + 25792], 0
                        mov              qword ptr [rsp + 25800], 0
                        mov              qword ptr [rsp + 25808], 0
                        mov              qword ptr [rsp + 25816], 0
                        mov              qword ptr [rsp + 25824], 0
                        mov              qword ptr [rsp + 25832], 0
                        mov              qword ptr [rsp + 25840], 0
                        mov              qword ptr [rsp + 25848], 0
                        mov              qword ptr [rsp + 25856], 0
                        mov              qword ptr [rsp + 25864], 0
                        mov              qword ptr [rsp + 25872], 0
                        mov              qword ptr [rsp + 25880], 0
                        mov              qword ptr [rsp + 25888], 0
                        mov              qword ptr [rsp + 25896], 0
                        mov              qword ptr [rsp + 25904], 0
                        mov              qword ptr [rsp + 25912], 0
                        mov              qword ptr [rsp + 25920], 0
                        mov              qword ptr [rsp + 25928], 0
                        mov              qword ptr [rsp + 25936], 0
                        mov              qword ptr [rsp + 25944], 0
                        mov              qword ptr [rsp + 25952], 0
                        mov              qword ptr [rsp + 25960], 0
                        mov              qword ptr [rsp + 25968], 0
                        mov              qword ptr [rsp + 25976], 0
                        mov              qword ptr [rsp + 25984], 0
                        mov              qword ptr [rsp + 25992], 0
                        mov              qword ptr [rsp + 26000], 0
                        mov              qword ptr [rsp + 26008], 0
                        mov              qword ptr [rsp + 26016], 0
                        mov              qword ptr [rsp + 26024], 0
                        mov              qword ptr [rsp + 26032], 0
                        mov              qword ptr [rsp + 26040], 0
                        mov              qword ptr [rsp + 26048], 0
                        mov              qword ptr [rsp + 26056], 0
                        mov              qword ptr [rsp + 26064], 0
                        mov              qword ptr [rsp + 26072], 0
                        mov              qword ptr [rsp + 26080], 0
                        mov              qword ptr [rsp + 26088], 0
                        mov              qword ptr [rsp + 26096], 0
                        mov              qword ptr [rsp + 26104], 0
                        mov              qword ptr [rsp + 26112], 0
                        mov              qword ptr [rsp + 26120], 0
                        mov              qword ptr [rsp + 26128], 0
                        mov              qword ptr [rsp + 26136], 0
                        mov              qword ptr [rsp + 26144], 0
                        mov              qword ptr [rsp + 26152], 0
                        mov              qword ptr [rsp + 26160], 0
                        mov              qword ptr [rsp + 26168], 0
                        mov              qword ptr [rsp + 26176], 0
                        mov              qword ptr [rsp + 26184], 0
                        mov              qword ptr [rsp + 26192], 0
                        mov              qword ptr [rsp + 26200], 0
                        mov              qword ptr [rsp + 26208], 0
                        mov              qword ptr [rsp + 26216], 0
                        mov              qword ptr [rsp + 26224], 0
                        mov              qword ptr [rsp + 26232], 0
                        mov              qword ptr [rsp + 26240], 0
                        mov              qword ptr [rsp + 26248], 0
                        mov              qword ptr [rsp + 26256], 0
                        mov              qword ptr [rsp + 26264], 0
                        mov              qword ptr [rsp + 26272], 0
                        mov              qword ptr [rsp + 26280], 0
                        mov              qword ptr [rsp + 26288], 0
                        mov              qword ptr [rsp + 26296], 0
                        mov              qword ptr [rsp + 26304], 0
                        mov              qword ptr [rsp + 26312], 0
                        mov              qword ptr [rsp + 26320], 0
                        mov              qword ptr [rsp + 26328], 0
                        mov              qword ptr [rsp + 26336], 0
                        mov              qword ptr [rsp + 26344], 0
                        mov              qword ptr [rsp + 26352], 0
                        mov              qword ptr [rsp + 26360], 0
                        mov              qword ptr [rsp + 26368], 0
                        mov              qword ptr [rsp + 26376], 0
                        mov              qword ptr [rsp + 26384], 0
                        mov              qword ptr [rsp + 26392], 0
                        mov              qword ptr [rsp + 26400], 0
                        mov              qword ptr [rsp + 26408], 0
                        mov              qword ptr [rsp + 26416], 0
                        mov              qword ptr [rsp + 26424], 0
                        mov              qword ptr [rsp + 26432], 0
                        mov              qword ptr [rsp + 26440], 0
                        mov              qword ptr [rsp + 26448], 0
                        mov              qword ptr [rsp + 26456], 0
                        mov              qword ptr [rsp + 26464], 0
                        mov              qword ptr [rsp + 26472], 0
                        mov              qword ptr [rsp + 26480], 0
                        mov              qword ptr [rsp + 26488], 0
                        mov              qword ptr [rsp + 26496], 0
                        mov              qword ptr [rsp + 26504], 0
                        mov              qword ptr [rsp + 26512], 0
                        mov              qword ptr [rsp + 26520], 0
                        mov              qword ptr [rsp + 26528], 0
                        mov              qword ptr [rsp + 26536], 0
                        mov              qword ptr [rsp + 26544], 0
                        mov              qword ptr [rsp + 26552], 0
                        mov              qword ptr [rsp + 26560], 0
                        mov              qword ptr [rsp + 26568], 0
                        mov              qword ptr [rsp + 26576], 0
                        mov              qword ptr [rsp + 26584], 0
                        mov              qword ptr [rsp + 26592], 0
                        mov              qword ptr [rsp + 26600], 0
                        mov              qword ptr [rsp + 26608], 0
                        mov              qword ptr [rsp + 26616], 0
                        mov              qword ptr [rsp + 26624], 0
                        mov              qword ptr [rsp + 26632], 0
                        mov              qword ptr [rsp + 26640], 0
                        mov              qword ptr [rsp + 26648], 0
                        mov              qword ptr [rsp + 26656], 0
                        mov              qword ptr [rsp + 26664], 0
                        mov              qword ptr [rsp + 26672], 0
                        mov              qword ptr [rsp + 26680], 0
                        mov              qword ptr [rsp + 26688], 0
                        mov              qword ptr [rsp + 26696], 0
                        mov              qword ptr [rsp + 26704], 0
                        mov              qword ptr [rsp + 26712], 0
                        mov              qword ptr [rsp + 26720], 0
                        mov              qword ptr [rsp + 26728], 0
                        mov              qword ptr [rsp + 26736], 0
                        mov              qword ptr [rsp + 26744], 0
                        mov              qword ptr [rsp + 26752], 0
                        mov              qword ptr [rsp + 26760], 0
                        mov              qword ptr [rsp + 26768], 0
                        mov              qword ptr [rsp + 26776], 0
                        mov              qword ptr [rsp + 26784], 0
                        mov              qword ptr [rsp + 26792], 0
                        mov              qword ptr [rsp + 26800], 0
                        mov              qword ptr [rsp + 26808], 0
                        mov              qword ptr [rsp + 26816], 0
                        mov              qword ptr [rsp + 26824], 0
                        mov              qword ptr [rsp + 26832], 0
                        mov              qword ptr [rsp + 26840], 0
                        mov              qword ptr [rsp + 26848], 0
                        mov              qword ptr [rsp + 26856], 0
                        mov              qword ptr [rsp + 26864], 0
                        mov              qword ptr [rsp + 26872], 0
                        mov              qword ptr [rsp + 26880], 0
                        mov              qword ptr [rsp + 26888], 0
                        mov              qword ptr [rsp + 26896], 0
                        mov              qword ptr [rsp + 26904], 0
                        mov              qword ptr [rsp + 26912], 0
                        mov              qword ptr [rsp + 26920], 0
                        mov              qword ptr [rsp + 26928], 0
                        mov              qword ptr [rsp + 26936], 0
                        mov              qword ptr [rsp + 26944], 0
                        mov              qword ptr [rsp + 26952], 0
                        mov              qword ptr [rsp + 26960], 0
                        mov              qword ptr [rsp + 26968], 0
                        mov              qword ptr [rsp + 26976], 0
                        mov              qword ptr [rsp + 26984], 0
                        mov              qword ptr [rsp + 26992], 0
                        mov              qword ptr [rsp + 27000], 0
                        mov              qword ptr [rsp + 27008], 0
                        mov              qword ptr [rsp + 27016], 0
                        mov              qword ptr [rsp + 27024], 0
                        mov              qword ptr [rsp + 27032], 0
                        mov              qword ptr [rsp + 27040], 0
                        mov              qword ptr [rsp + 27048], 0
                        mov              qword ptr [rsp + 27056], 0
                        mov              qword ptr [rsp + 27064], 0
                        mov              qword ptr [rsp + 27072], 0
                        mov              qword ptr [rsp + 27080], 0
                        mov              qword ptr [rsp + 27088], 0
                        mov              qword ptr [rsp + 27096], 0
                        mov              qword ptr [rsp + 27104], 0
                        mov              qword ptr [rsp + 27112], 0
                        mov              qword ptr [rsp + 27120], 0
                        mov              qword ptr [rsp + 27128], 0
                        mov              qword ptr [rsp + 27136], 0
                        mov              qword ptr [rsp + 27144], 0
                        mov              qword ptr [rsp + 27152], 0
                        mov              qword ptr [rsp + 27160], 0
                        mov              qword ptr [rsp + 27168], 0
                        mov              qword ptr [rsp + 27176], 0
                        mov              qword ptr [rsp + 27184], 0
                        mov              qword ptr [rsp + 27192], 0
                        mov              qword ptr [rsp + 27200], 0
                        mov              qword ptr [rsp + 27208], 0
                        mov              qword ptr [rsp + 27216], 0
                        mov              qword ptr [rsp + 27224], 0
                        mov              qword ptr [rsp + 27232], 0
                        mov              qword ptr [rsp + 27240], 0
                        mov              qword ptr [rsp + 27248], 0
                        mov              qword ptr [rsp + 27256], 0
                        mov              qword ptr [rsp + 27264], 0
                        mov              qword ptr [rsp + 27272], 0
                        mov              qword ptr [rsp + 27280], 0
                        mov              qword ptr [rsp + 27288], 0
                        mov              qword ptr [rsp + 27296], 0
                        mov              qword ptr [rsp + 27304], 0
                        mov              qword ptr [rsp + 27312], 0
                        mov              qword ptr [rsp + 27320], 0
                        mov              qword ptr [rsp + 27328], 0
                        mov              qword ptr [rsp + 27336], 0
                        mov              qword ptr [rsp + 27344], 0
                        mov              qword ptr [rsp + 27352], 0
                        mov              qword ptr [rsp + 27360], 0
                        mov              qword ptr [rsp + 27368], 0
                        mov              qword ptr [rsp + 27376], 0
                        mov              qword ptr [rsp + 27384], 0
                        mov              qword ptr [rsp + 27392], 0
                        mov              qword ptr [rsp + 27400], 0
                        mov              qword ptr [rsp + 27408], 0
                        mov              qword ptr [rsp + 27416], 0
                        mov              qword ptr [rsp + 27424], 0
                        mov              qword ptr [rsp + 27432], 0
                        mov              qword ptr [rsp + 27440], 0
                        mov              qword ptr [rsp + 27448], 0
                        mov              qword ptr [rsp + 27456], 0
                        mov              qword ptr [rsp + 27464], 0
                        mov              qword ptr [rsp + 27472], 0
                        mov              qword ptr [rsp + 27480], 0
                        mov              qword ptr [rsp + 27488], 0
                        mov              qword ptr [rsp + 27496], 0
                        mov              qword ptr [rsp + 27504], 0
                        mov              qword ptr [rsp + 27512], 0
                        mov              qword ptr [rsp + 27520], 0
                        mov              qword ptr [rsp + 27528], 0
                        mov              qword ptr [rsp + 27536], 0
                        mov              qword ptr [rsp + 27544], 0
                        mov              qword ptr [rsp + 27552], 0
                        mov              qword ptr [rsp + 27560], 0
                        mov              qword ptr [rsp + 27568], 0
                        mov              qword ptr [rsp + 27576], 0
                        mov              qword ptr [rsp + 27584], 0
                        mov              qword ptr [rsp + 27592], 0
                        mov              qword ptr [rsp + 27600], 0
                        mov              qword ptr [rsp + 27608], 0
                        mov              qword ptr [rsp + 27616], 0
                        mov              qword ptr [rsp + 27624], 0
                        mov              qword ptr [rsp + 27632], 0
                        mov              qword ptr [rsp + 27640], 0
                        mov              qword ptr [rsp + 27648], 0
                        mov              qword ptr [rsp + 27656], 0
                        mov              qword ptr [rsp + 27664], 0
                        mov              qword ptr [rsp + 27672], 0
                        mov              qword ptr [rsp + 27680], 0
                        mov              qword ptr [rsp + 27688], 0
                        mov              qword ptr [rsp + 27696], 0
                        mov              qword ptr [rsp + 27704], 0
                        mov              qword ptr [rsp + 27712], 0
                        mov              qword ptr [rsp + 27720], 0
                        mov              qword ptr [rsp + 27728], 0
                        mov              qword ptr [rsp + 27736], 0
                        mov              qword ptr [rsp + 27744], 0
                        mov              qword ptr [rsp + 27752], 0
                        mov              qword ptr [rsp + 27760], 0
                        mov              qword ptr [rsp + 27768], 0
                        mov              qword ptr [rsp + 27776], 0
                        mov              qword ptr [rsp + 27784], 0
                        mov              qword ptr [rsp + 27792], 0
                        mov              qword ptr [rsp + 27800], 0
                        mov              qword ptr [rsp + 27808], 0
                        mov              qword ptr [rsp + 27816], 0
                        mov              qword ptr [rsp + 27824], 0
                        mov              qword ptr [rsp + 27832], 0
                        mov              qword ptr [rsp + 27840], 0
                        mov              qword ptr [rsp + 27848], 0
                        mov              qword ptr [rsp + 27856], 0
                        mov              qword ptr [rsp + 27864], 0
                        mov              qword ptr [rsp + 27872], 0
                        mov              qword ptr [rsp + 27880], 0
                        mov              qword ptr [rsp + 27888], 0
                        mov              qword ptr [rsp + 27896], 0
                        mov              qword ptr [rsp + 27904], 0
                        mov              qword ptr [rsp + 27912], 0
                        mov              qword ptr [rsp + 27920], 0
                        mov              qword ptr [rsp + 27928], 0
                        mov              qword ptr [rsp + 27936], 0
                        mov              qword ptr [rsp + 27944], 0
                        mov              qword ptr [rsp + 27952], 0
                        mov              qword ptr [rsp + 27960], 0
                        mov              qword ptr [rsp + 27968], 0
                        mov              qword ptr [rsp + 27976], 0
                        mov              qword ptr [rsp + 27984], 0
                        mov              qword ptr [rsp + 27992], 0
                        mov              qword ptr [rsp + 28000], 0
                        mov              qword ptr [rsp + 28008], 0
                        mov              qword ptr [rsp + 28016], 0
                        mov              qword ptr [rsp + 28024], 0
                        mov              qword ptr [rsp + 28032], 0
                        mov              qword ptr [rsp + 28040], 0
                        mov              qword ptr [rsp + 28048], 0
                        mov              qword ptr [rsp + 28056], 0
                        mov              qword ptr [rsp + 28064], 0
                        mov              qword ptr [rsp + 28072], 0
                        mov              qword ptr [rsp + 28080], 0
                        mov              qword ptr [rsp + 28088], 0
                        mov              qword ptr [rsp + 28096], 0
                        mov              qword ptr [rsp + 28104], 0
                        mov              qword ptr [rsp + 28112], 0
                        mov              qword ptr [rsp + 28120], 0
                        mov              qword ptr [rsp + 28128], 0
                        mov              qword ptr [rsp + 28136], 0
                        mov              qword ptr [rsp + 28144], 0
                        mov              qword ptr [rsp + 28152], 0
                        mov              qword ptr [rsp + 28160], 0
                        mov              qword ptr [rsp + 28168], 0
                        mov              qword ptr [rsp + 28176], 0
                        mov              qword ptr [rsp + 28184], 0
                        mov              qword ptr [rsp + 28192], 0
                        mov              qword ptr [rsp + 28200], 0
                        mov              qword ptr [rsp + 28208], 0
                        mov              qword ptr [rsp + 28216], 0
                        mov              qword ptr [rsp + 28224], 0
                        mov              qword ptr [rsp + 28232], 0
                        mov              qword ptr [rsp + 28240], 0
                        mov              qword ptr [rsp + 28248], 0
                        mov              qword ptr [rsp + 28256], 0
                        mov              qword ptr [rsp + 28264], 0
                        mov              qword ptr [rsp + 28272], 0
                        mov              qword ptr [rsp + 28280], 0
                        mov              qword ptr [rsp + 28288], 0
                        mov              qword ptr [rsp + 28296], 0
                        mov              qword ptr [rsp + 28304], 0
                        mov              qword ptr [rsp + 28312], 0
                        mov              qword ptr [rsp + 28320], 0
                        mov              qword ptr [rsp + 28328], 0
                        mov              qword ptr [rsp + 28336], 0
                        mov              qword ptr [rsp + 28344], 0
                        mov              qword ptr [rsp + 28352], 0
                        mov              qword ptr [rsp + 28360], 0
                        mov              qword ptr [rsp + 28368], 0
                        mov              qword ptr [rsp + 28376], 0
                        mov              qword ptr [rsp + 28384], 0
                        mov              qword ptr [rsp + 28392], 0
                        mov              qword ptr [rsp + 28400], 0
                        mov              qword ptr [rsp + 28408], 0
                        mov              qword ptr [rsp + 28416], 0
                        mov              qword ptr [rsp + 28424], 0
                        mov              qword ptr [rsp + 28432], 0
                        mov              qword ptr [rsp + 28440], 0
                        mov              qword ptr [rsp + 28448], 0
                        mov              qword ptr [rsp + 28456], 0
                        mov              qword ptr [rsp + 28464], 0
                        mov              qword ptr [rsp + 28472], 0
                        mov              qword ptr [rsp + 28480], 0
                        mov              qword ptr [rsp + 28488], 0
                        mov              qword ptr [rsp + 28496], 0
                        mov              qword ptr [rsp + 28504], 0
                        mov              qword ptr [rsp + 28512], 0
                        mov              qword ptr [rsp + 28520], 0
                        mov              qword ptr [rsp + 28528], 0
                        mov              qword ptr [rsp + 28536], 0
                        mov              qword ptr [rsp + 28544], 0
                        mov              qword ptr [rsp + 28552], 0
                        mov              qword ptr [rsp + 28560], 0
                        mov              qword ptr [rsp + 28568], 0
                        mov              qword ptr [rsp + 28576], 0
                        mov              qword ptr [rsp + 28584], 0
                        mov              qword ptr [rsp + 28592], 0
                        mov              qword ptr [rsp + 28600], 0
                        mov              qword ptr [rsp + 28608], 0
                        mov              qword ptr [rsp + 28616], 0
                        mov              qword ptr [rsp + 28624], 0
                        mov              qword ptr [rsp + 28632], 0
                        mov              qword ptr [rsp + 28640], 0
                        mov              qword ptr [rsp + 28648], 0
                        mov              qword ptr [rsp + 28656], 0
                        mov              qword ptr [rsp + 28664], 0
                        mov              qword ptr [rsp + 28672], 0
                        mov              qword ptr [rsp + 28680], 0
                        mov              qword ptr [rsp + 28688], 0
                        mov              qword ptr [rsp + 28696], 0
                        mov              qword ptr [rsp + 28704], 0
                        mov              qword ptr [rsp + 28712], 0
                        mov              qword ptr [rsp + 28720], 0
                        mov              qword ptr [rsp + 28728], 0
                        mov              qword ptr [rsp + 28736], 0
                        mov              qword ptr [rsp + 28744], 0
                        mov              qword ptr [rsp + 28752], 0
                        mov              qword ptr [rsp + 28760], 0
                        mov              qword ptr [rsp + 28768], 0
                        mov              qword ptr [rsp + 28776], 0
                        mov              qword ptr [rsp + 28784], 0
                        mov              qword ptr [rsp + 28792], 0
                        mov              qword ptr [rsp + 28800], 0
                        mov              qword ptr [rsp + 28808], 0
                        mov              qword ptr [rsp + 28816], 0
                        mov              qword ptr [rsp + 28824], 0
                        mov              qword ptr [rsp + 28832], 0
                        mov              qword ptr [rsp + 28840], 0
                        mov              qword ptr [rsp + 28848], 0
                        mov              qword ptr [rsp + 28856], 0
                        mov              qword ptr [rsp + 28864], 0
                        mov              qword ptr [rsp + 28872], 0
                        mov              qword ptr [rsp + 28880], 0
                        mov              qword ptr [rsp + 28888], 0
                        mov              qword ptr [rsp + 28896], 0
                        mov              qword ptr [rsp + 28904], 0
                        mov              qword ptr [rsp + 28912], 0
                        mov              qword ptr [rsp + 28920], 0
                        mov              qword ptr [rsp + 28928], 0
                        mov              qword ptr [rsp + 28936], 0
                        mov              qword ptr [rsp + 28944], 0
                        mov              qword ptr [rsp + 28952], 0
                        mov              qword ptr [rsp + 28960], 0
                        mov              qword ptr [rsp + 28968], 0
                        mov              qword ptr [rsp + 28976], 0
                        mov              qword ptr [rsp + 28984], 0
                        mov              qword ptr [rsp + 28992], 0
                        mov              qword ptr [rsp + 29000], 0
                        mov              qword ptr [rsp + 29008], 0
                        mov              qword ptr [rsp + 29016], 0
                        mov              qword ptr [rsp + 29024], 0
                        mov              qword ptr [rsp + 29032], 0
                        mov              qword ptr [rsp + 29040], 0
                        mov              qword ptr [rsp + 29048], 0
                        mov              qword ptr [rsp + 29056], 0
                        mov              qword ptr [rsp + 29064], 0
                        mov              qword ptr [rsp + 29072], 0
                        mov              qword ptr [rsp + 29080], 0
                        mov              qword ptr [rsp + 29088], 0
                        mov              qword ptr [rsp + 29096], 0
                        mov              qword ptr [rsp + 29104], 0
                        mov              qword ptr [rsp + 29112], 0
                        mov              qword ptr [rsp + 29120], 0
                        mov              qword ptr [rsp + 29128], 0
                        mov              qword ptr [rsp + 29136], 0
                        mov              qword ptr [rsp + 29144], 0
                        mov              qword ptr [rsp + 29152], 0
                        mov              qword ptr [rsp + 29160], 0
                        mov              qword ptr [rsp + 29168], 0
                        mov              qword ptr [rsp + 29176], 0
                        mov              qword ptr [rsp + 29184], 0
                        mov              qword ptr [rsp + 29192], 0
                        mov              qword ptr [rsp + 29200], 0
                        mov              qword ptr [rsp + 29208], 0
                        mov              qword ptr [rsp + 29216], 0
                        mov              qword ptr [rsp + 29224], 0
                        mov              qword ptr [rsp + 29232], 0
                        mov              qword ptr [rsp + 29240], 0
                        mov              qword ptr [rsp + 29248], 0
                        mov              qword ptr [rsp + 29256], 0
                        mov              qword ptr [rsp + 29264], 0
                        mov              qword ptr [rsp + 29272], 0
                        mov              qword ptr [rsp + 29280], 0
                        mov              qword ptr [rsp + 29288], 0
                        mov              qword ptr [rsp + 29296], 0
                        mov              qword ptr [rsp + 29304], 0
                        mov              qword ptr [rsp + 29312], 0
                        mov              qword ptr [rsp + 29320], 0
                        mov              qword ptr [rsp + 29328], 0
                        mov              qword ptr [rsp + 29336], 0
                        mov              qword ptr [rsp + 29344], 0
                        mov              qword ptr [rsp + 29352], 0
                        mov              qword ptr [rsp + 29360], 0
                        mov              qword ptr [rsp + 29368], 0
                        mov              qword ptr [rsp + 29376], 0
                        mov              qword ptr [rsp + 29384], 0
                        mov              qword ptr [rsp + 29392], 0
                        mov              qword ptr [rsp + 29400], 0
                        mov              qword ptr [rsp + 29408], 0
                        mov              qword ptr [rsp + 29416], 0
                        mov              qword ptr [rsp + 29424], 0
                        mov              qword ptr [rsp + 29432], 0
                        mov              qword ptr [rsp + 29440], 0
                        mov              qword ptr [rsp + 29448], 0
                        mov              qword ptr [rsp + 29456], 0
                        mov              qword ptr [rsp + 29464], 0
                        mov              qword ptr [rsp + 29472], 0
                        mov              qword ptr [rsp + 29480], 0
                        mov              qword ptr [rsp + 29488], 0
                        mov              qword ptr [rsp + 29496], 0
                        mov              qword ptr [rsp + 29504], 0
                        mov              qword ptr [rsp + 29512], 0
                        mov              qword ptr [rsp + 29520], 0
                        mov              qword ptr [rsp + 29528], 0
                        mov              qword ptr [rsp + 29536], 0
                        mov              qword ptr [rsp + 29544], 0
                        mov              qword ptr [rsp + 29552], 0
                        mov              qword ptr [rsp + 29560], 0
                        mov              qword ptr [rsp + 29568], 0
                        mov              qword ptr [rsp + 29576], 0
                        mov              qword ptr [rsp + 29584], 0
                        mov              qword ptr [rsp + 29592], 0
                        mov              qword ptr [rsp + 29600], 0
                        mov              qword ptr [rsp + 29608], 0
                        mov              qword ptr [rsp + 29616], 0
                        mov              qword ptr [rsp + 29624], 0
                        mov              qword ptr [rsp + 29632], 0
                        mov              qword ptr [rsp + 29640], 0
                        mov              qword ptr [rsp + 29648], 0
                        mov              qword ptr [rsp + 29656], 0
                        mov              qword ptr [rsp + 29664], 0
                        mov              qword ptr [rsp + 29672], 0
                        mov              qword ptr [rsp + 29680], 0
                        mov              qword ptr [rsp + 29688], 0
                        mov              qword ptr [rsp + 29696], 0
                        mov              qword ptr [rsp + 29704], 0
                        mov              qword ptr [rsp + 29712], 0
                        mov              qword ptr [rsp + 29720], 0
                        mov              qword ptr [rsp + 29728], 0
                        mov              qword ptr [rsp + 29736], 0
                        mov              qword ptr [rsp + 29744], 0
                        mov              qword ptr [rsp + 29752], 0
                        mov              qword ptr [rsp + 29760], 0
                        mov              qword ptr [rsp + 29768], 0
                        mov              qword ptr [rsp + 29776], 0
                        mov              qword ptr [rsp + 29784], 0
                        mov              qword ptr [rsp + 29792], 0
                        mov              qword ptr [rsp + 29800], 0
                        mov              qword ptr [rsp + 29808], 0
                        mov              qword ptr [rsp + 29816], 0
                        mov              qword ptr [rsp + 29824], 0
                        mov              qword ptr [rsp + 29832], 0
                        mov              qword ptr [rsp + 29840], 0
                        mov              qword ptr [rsp + 29848], 0
                        mov              qword ptr [rsp + 29856], 0
                        mov              qword ptr [rsp + 29864], 0
                        mov              qword ptr [rsp + 29872], 0
                        mov              qword ptr [rsp + 29880], 0
                        mov              qword ptr [rsp + 29888], 0
                        mov              qword ptr [rsp + 29896], 0
                        mov              qword ptr [rsp + 29904], 0
                        mov              qword ptr [rsp + 29912], 0
                        mov              qword ptr [rsp + 29920], 0
                        mov              qword ptr [rsp + 29928], 0
                        mov              qword ptr [rsp + 29936], 0
                        mov              qword ptr [rsp + 29944], 0
                        mov              qword ptr [rsp + 29952], 0
                        mov              qword ptr [rsp + 29960], 0
                        mov              qword ptr [rsp + 29968], 0
                        mov              qword ptr [rsp + 29976], 0
                        mov              qword ptr [rsp + 29984], 0
                        mov              qword ptr [rsp + 29992], 0
                        mov              qword ptr [rsp + 30000], 0
                        mov              qword ptr [rsp + 30008], 0
                        mov              qword ptr [rsp + 30016], 0
                        mov              qword ptr [rsp + 30024], 0
                        mov              qword ptr [rsp + 30032], 0
                        mov              qword ptr [rsp + 30040], 0
                        mov              qword ptr [rsp + 30048], 0
                        mov              qword ptr [rsp + 30056], 0
                        mov              qword ptr [rsp + 30064], 0
                        mov              qword ptr [rsp + 30072], 0
                        mov              qword ptr [rsp + 30080], 0
                        mov              qword ptr [rsp + 30088], 0
                        mov              qword ptr [rsp + 30096], 0
                        mov              qword ptr [rsp + 30104], 0
                        mov              qword ptr [rsp + 30112], 0
                        mov              qword ptr [rsp + 30120], 0
                        mov              qword ptr [rsp + 30128], 0
                        mov              qword ptr [rsp + 30136], 0
                        mov              qword ptr [rsp + 30144], 0
                        mov              qword ptr [rsp + 30152], 0
                        mov              qword ptr [rsp + 30160], 0
                        mov              qword ptr [rsp + 30168], 0
                        mov              qword ptr [rsp + 30176], 0
                        mov              qword ptr [rsp + 30184], 0
                        mov              qword ptr [rsp + 30192], 0
                        mov              qword ptr [rsp + 30200], 0
                        mov              qword ptr [rsp + 30208], 0
                        mov              qword ptr [rsp + 30216], 0
                        mov              qword ptr [rsp + 30224], 0
                        mov              qword ptr [rsp + 30232], 0
                        mov              qword ptr [rsp + 30240], 0
                        mov              qword ptr [rsp + 30248], 0
                        mov              qword ptr [rsp + 30256], 0
                        mov              qword ptr [rsp + 30264], 0
                        mov              qword ptr [rsp + 30272], 0
                        mov              qword ptr [rsp + 30280], 0
                        mov              qword ptr [rsp + 30288], 0
                        mov              qword ptr [rsp + 30296], 0
                        mov              qword ptr [rsp + 30304], 0
                        mov              qword ptr [rsp + 30312], 0
                        mov              qword ptr [rsp + 30320], 0
                        mov              qword ptr [rsp + 30328], 0
                        mov              qword ptr [rsp + 30336], 0
                        mov              qword ptr [rsp + 30344], 0
                        mov              qword ptr [rsp + 30352], 0
                        mov              qword ptr [rsp + 30360], 0
                        mov              qword ptr [rsp + 30368], 0
                        mov              qword ptr [rsp + 30376], 0
                        mov              qword ptr [rsp + 30384], 0
                        mov              qword ptr [rsp + 30392], 0
                        mov              qword ptr [rsp + 30400], 0
                        mov              qword ptr [rsp + 30408], 0
                        mov              qword ptr [rsp + 30416], 0
                        mov              qword ptr [rsp + 30424], 0
                        mov              qword ptr [rsp + 30432], 0
                        mov              qword ptr [rsp + 30440], 0
                        mov              qword ptr [rsp + 30448], 0
                        mov              qword ptr [rsp + 30456], 0
                        mov              qword ptr [rsp + 30464], 0
                        mov              qword ptr [rsp + 30472], 0
                        mov              qword ptr [rsp + 30480], 0
                        mov              qword ptr [rsp + 30488], 0
                        mov              qword ptr [rsp + 30496], 0
                        mov              qword ptr [rsp + 30504], 0
                        mov              qword ptr [rsp + 30512], 0
                        mov              qword ptr [rsp + 30520], 0
                        mov              qword ptr [rsp + 30528], 0
                        mov              qword ptr [rsp + 30536], 0
                        mov              qword ptr [rsp + 30544], 0
                        mov              qword ptr [rsp + 30552], 0
                        mov              qword ptr [rsp + 30560], 0
                        mov              qword ptr [rsp + 30568], 0
                        mov              qword ptr [rsp + 30576], 0
                        mov              qword ptr [rsp + 30584], 0
                        mov              qword ptr [rsp + 30592], 0
                        mov              qword ptr [rsp + 30600], 0
                        mov              qword ptr [rsp + 30608], 0
                        mov              qword ptr [rsp + 30616], 0
                        mov              qword ptr [rsp + 30624], 0
                        mov              qword ptr [rsp + 30632], 0
                        mov              qword ptr [rsp + 30640], 0
                        mov              qword ptr [rsp + 30648], 0
                        mov              qword ptr [rsp + 30656], 0
                        mov              qword ptr [rsp + 30664], 0
                        mov              qword ptr [rsp + 30672], 0
                        mov              qword ptr [rsp + 30680], 0
                        mov              qword ptr [rsp + 30688], 0
                        mov              qword ptr [rsp + 30696], 0
                        mov              qword ptr [rsp + 30704], 0
                        mov              qword ptr [rsp + 30712], 0
                        mov              qword ptr [rsp + 30720], 0
                        mov              qword ptr [rsp + 30728], 0
                        mov              qword ptr [rsp + 30736], 0
                        mov              qword ptr [rsp + 30744], 0
                        mov              qword ptr [rsp + 30752], 0
                        mov              qword ptr [rsp + 30760], 0
                        mov              qword ptr [rsp + 30768], 0
                        mov              qword ptr [rsp + 30776], 0
                        mov              qword ptr [rsp + 30784], 0
                        mov              qword ptr [rsp + 30792], 0
                        mov              qword ptr [rsp + 30800], 0
                        mov              qword ptr [rsp + 30808], 0
                        mov              qword ptr [rsp + 30816], 0
                        mov              qword ptr [rsp + 30824], 0
                        mov              qword ptr [rsp + 30832], 0
                        mov              qword ptr [rsp + 30840], 0
                        mov              qword ptr [rsp + 30848], 0
                        mov              qword ptr [rsp + 30856], 0
                        mov              qword ptr [rsp + 30864], 0
                        mov              qword ptr [rsp + 30872], 0
                        mov              qword ptr [rsp + 30880], 0
                        mov              qword ptr [rsp + 30888], 0
                        mov              qword ptr [rsp + 30896], 0
                        mov              qword ptr [rsp + 30904], 0
                        mov              qword ptr [rsp + 30912], 0
                        mov              qword ptr [rsp + 30920], 0
                        mov              qword ptr [rsp + 30928], 0
                        mov              qword ptr [rsp + 30936], 0
                        mov              qword ptr [rsp + 30944], 0
                        mov              qword ptr [rsp + 30952], 0
                        mov              qword ptr [rsp + 30960], 0
                        mov              qword ptr [rsp + 30968], 0
                        mov              qword ptr [rsp + 30976], 0
                        mov              qword ptr [rsp + 30984], 0
                        mov              qword ptr [rsp + 30992], 0
                        mov              qword ptr [rsp + 31000], 0
                        mov              qword ptr [rsp + 31008], 0
                        mov              qword ptr [rsp + 31016], 0
                        mov              qword ptr [rsp + 31024], 0
                        mov              qword ptr [rsp + 31032], 0
                        mov              qword ptr [rsp + 31040], 0
                        mov              qword ptr [rsp + 31048], 0
                        mov              qword ptr [rsp + 31056], 0
                        mov              qword ptr [rsp + 31064], 0
                        mov              qword ptr [rsp + 31072], 0
                        mov              qword ptr [rsp + 31080], 0
                        mov              qword ptr [rsp + 31088], 0
                        mov              qword ptr [rsp + 31096], 0
                        mov              qword ptr [rsp + 31104], 0
                        mov              qword ptr [rsp + 31112], 0
                        mov              qword ptr [rsp + 31120], 0
                        mov              qword ptr [rsp + 31128], 0
                        mov              qword ptr [rsp + 31136], 0
                        mov              qword ptr [rsp + 31144], 0
                        mov              qword ptr [rsp + 31152], 0
                        mov              qword ptr [rsp + 31160], 0
                        mov              qword ptr [rsp + 31168], 0
                        mov              qword ptr [rsp + 31176], 0
                        mov              qword ptr [rsp + 31184], 0
                        mov              qword ptr [rsp + 31192], 0
                        mov              qword ptr [rsp + 31200], 0
                        mov              qword ptr [rsp + 31208], 0
                        mov              qword ptr [rsp + 31216], 0
                        mov              qword ptr [rsp + 31224], 0
                        mov              qword ptr [rsp + 31232], 0
                        mov              qword ptr [rsp + 31240], 0
                        mov              qword ptr [rsp + 31248], 0
                        mov              qword ptr [rsp + 31256], 0
                        mov              qword ptr [rsp + 31264], 0
                        mov              qword ptr [rsp + 31272], 0
                        mov              qword ptr [rsp + 31280], 0
                        mov              qword ptr [rsp + 31288], 0
                        mov              qword ptr [rsp + 31296], 0
                        mov              qword ptr [rsp + 31304], 0
                        mov              qword ptr [rsp + 31312], 0
                        mov              qword ptr [rsp + 31320], 0
                        mov              qword ptr [rsp + 31328], 0
                        mov              qword ptr [rsp + 31336], 0
                        mov              qword ptr [rsp + 31344], 0
                        mov              qword ptr [rsp + 31352], 0
                        mov              qword ptr [rsp + 31360], 0
                        mov              qword ptr [rsp + 31368], 0
                        mov              qword ptr [rsp + 31376], 0
                        mov              qword ptr [rsp + 31384], 0
                        mov              qword ptr [rsp + 31392], 0
                        mov              qword ptr [rsp + 31400], 0
                        mov              qword ptr [rsp + 31408], 0
                        mov              qword ptr [rsp + 31416], 0
                        mov              qword ptr [rsp + 31424], 0
                        mov              qword ptr [rsp + 31432], 0
                        mov              qword ptr [rsp + 31440], 0
                        mov              qword ptr [rsp + 31448], 0
                        mov              qword ptr [rsp + 31456], 0
                        mov              qword ptr [rsp + 31464], 0
                        mov              qword ptr [rsp + 31472], 0
                        mov              qword ptr [rsp + 31480], 0
                        mov              qword ptr [rsp + 31488], 0
                        mov              qword ptr [rsp + 31496], 0
                        mov              qword ptr [rsp + 31504], 0
                        mov              qword ptr [rsp + 31512], 0
                        mov              qword ptr [rsp + 31520], 0
                        mov              qword ptr [rsp + 31528], 0
                        mov              qword ptr [rsp + 31536], 0
                        mov              qword ptr [rsp + 31544], 0
                        mov              qword ptr [rsp + 31552], 0
                        mov              qword ptr [rsp + 31560], 0
                        mov              qword ptr [rsp + 31568], 0
                        mov              qword ptr [rsp + 31576], 0
                        mov              qword ptr [rsp + 31584], 0
                        mov              qword ptr [rsp + 31592], 0
                        mov              qword ptr [rsp + 31600], 0
                        mov              qword ptr [rsp + 31608], 0
                        mov              qword ptr [rsp + 31616], 0
                        mov              qword ptr [rsp + 31624], 0
                        mov              qword ptr [rsp + 31632], 0
                        mov              qword ptr [rsp + 31640], 0
                        mov              qword ptr [rsp + 31648], 0
                        mov              qword ptr [rsp + 31656], 0
                        mov              qword ptr [rsp + 31664], 0
                        mov              qword ptr [rsp + 31672], 0
                        mov              qword ptr [rsp + 31680], 0
                        mov              qword ptr [rsp + 31688], 0
                        mov              qword ptr [rsp + 31696], 0
                        mov              qword ptr [rsp + 31704], 0
                        mov              qword ptr [rsp + 31712], 0
                        mov              qword ptr [rsp + 31720], 0
                        mov              qword ptr [rsp + 31728], 0
                        mov              qword ptr [rsp + 31736], 0
                        mov              qword ptr [rsp + 31744], 0
                        mov              qword ptr [rsp + 31752], 0
                        mov              qword ptr [rsp + 31760], 0
                        mov              qword ptr [rsp + 31768], 0
                        mov              qword ptr [rsp + 31776], 0
                        mov              qword ptr [rsp + 31784], 0
                        mov              qword ptr [rsp + 31792], 0
                        mov              qword ptr [rsp + 31800], 0
                        mov              qword ptr [rsp + 31808], 0
                        mov              qword ptr [rsp + 31816], 0
                        mov              qword ptr [rsp + 31824], 0
                        mov              qword ptr [rsp + 31832], 0
                        mov              qword ptr [rsp + 31840], 0
                        mov              qword ptr [rsp + 31848], 0
                        mov              qword ptr [rsp + 31856], 0
                        mov              qword ptr [rsp + 31864], 0
                        mov              qword ptr [rsp + 31872], 0
                        mov              qword ptr [rsp + 31880], 0
                        mov              qword ptr [rsp + 31888], 0
                        mov              qword ptr [rsp + 31896], 0
                        mov              qword ptr [rsp + 31904], 0
                        mov              qword ptr [rsp + 31912], 0
                        mov              qword ptr [rsp + 31920], 0
                        mov              qword ptr [rsp + 31928], 0
                        mov              qword ptr [rsp + 31936], 0
                        mov              qword ptr [rsp + 31944], 0
                        mov              qword ptr [rsp + 31952], 0
                        mov              qword ptr [rsp + 31960], 0
                        mov              qword ptr [rsp + 31968], 0
                        mov              qword ptr [rsp + 31976], 0
                        mov              qword ptr [rsp + 31984], 0
                        mov              qword ptr [rsp + 31992], 0
                        mov              qword ptr [rsp + 32000], 0
                        mov              qword ptr [rsp + 32008], 0
                        mov              qword ptr [rsp + 32016], 0
                        mov              qword ptr [rsp + 32024], 0
                        mov              qword ptr [rsp + 32032], 0
                        mov              qword ptr [rsp + 32040], 0
                        mov              qword ptr [rsp + 32048], 0
                        mov              qword ptr [rsp + 32056], 0
                        mov              qword ptr [rsp + 32064], 0
                        mov              qword ptr [rsp + 32072], 0
                        mov              qword ptr [rsp + 32080], 0
                        mov              qword ptr [rsp + 32088], 0
                        mov              qword ptr [rsp + 32096], 0
                        mov              qword ptr [rsp + 32104], 0
                        mov              qword ptr [rsp + 32112], 0
                        mov              qword ptr [rsp + 32120], 0
                        mov              qword ptr [rsp + 32128], 0
                        mov              qword ptr [rsp + 32136], 0
                        mov              qword ptr [rsp + 32144], 0
                        mov              qword ptr [rsp + 32152], 0
                        mov              qword ptr [rsp + 32160], 0
                        mov              qword ptr [rsp + 32168], 0
                        mov              qword ptr [rsp + 32176], 0
                        mov              qword ptr [rsp + 32184], 0
                        mov              qword ptr [rsp + 32192], 0
                        mov              qword ptr [rsp + 32200], 0
                        mov              qword ptr [rsp + 32208], 0
                        mov              qword ptr [rsp + 32216], 0
                        mov              qword ptr [rsp + 32224], 0
                        mov              qword ptr [rsp + 32232], 0
                        mov              qword ptr [rsp + 32240], 0
                        mov              qword ptr [rsp + 32248], 0
                        mov              qword ptr [rsp + 32256], 0
                        mov              qword ptr [rsp + 32264], 0
                        mov              qword ptr [rsp + 32272], 0
                        mov              qword ptr [rsp + 32280], 0
                        mov              qword ptr [rsp + 32288], 0
                        mov              qword ptr [rsp + 32296], 0
                        mov              qword ptr [rsp + 32304], 0
                        mov              qword ptr [rsp + 32312], 0
                        mov              qword ptr [rsp + 32320], 0
                        mov              qword ptr [rsp + 32328], 0
                        mov              qword ptr [rsp + 32336], 0
                        mov              qword ptr [rsp + 32344], 0
                        mov              qword ptr [rsp + 32352], 0
                        mov              qword ptr [rsp + 32360], 0
                        mov              qword ptr [rsp + 32368], 0
                        mov              qword ptr [rsp + 32376], 0
                        mov              qword ptr [rsp + 32384], 0
                        mov              qword ptr [rsp + 32392], 0
                        mov              qword ptr [rsp + 32400], 0
                        mov              qword ptr [rsp + 32408], 0
                        mov              qword ptr [rsp + 32416], 0
                        mov              qword ptr [rsp + 32424], 0
                        mov              qword ptr [rsp + 32432], 0
                        mov              qword ptr [rsp + 32440], 0
                        mov              qword ptr [rsp + 32448], 0
                        mov              qword ptr [rsp + 32456], 0
                        mov              qword ptr [rsp + 32464], 0
                        mov              qword ptr [rsp + 32472], 0
                        mov              qword ptr [rsp + 32480], 0
                        mov              qword ptr [rsp + 32488], 0
                        mov              qword ptr [rsp + 32496], 0
                        mov              qword ptr [rsp + 32504], 0
                        mov              qword ptr [rsp + 32512], 0
                        mov              qword ptr [rsp + 32520], 0
                        mov              qword ptr [rsp + 32528], 0
                        mov              qword ptr [rsp + 32536], 0
                        mov              qword ptr [rsp + 32544], 0
                        mov              qword ptr [rsp + 32552], 0
                        mov              qword ptr [rsp + 32560], 0
                        mov              qword ptr [rsp + 32568], 0
                        mov              qword ptr [rsp + 32576], 0
                        mov              qword ptr [rsp + 32584], 0
                        mov              qword ptr [rsp + 32592], 0
                        mov              qword ptr [rsp + 32600], 0
                        mov              qword ptr [rsp + 32608], 0
                        mov              qword ptr [rsp + 32616], 0
                        mov              qword ptr [rsp + 32624], 0
                        mov              qword ptr [rsp + 32632], 0
                        mov              qword ptr [rsp + 32640], 0
                        mov              qword ptr [rsp + 32648], 0
                        mov              qword ptr [rsp + 32656], 0
                        mov              qword ptr [rsp + 32664], 0
                        mov              qword ptr [rsp + 32672], 0
                        mov              qword ptr [rsp + 32680], 0
                        mov              qword ptr [rsp + 32688], 0
                        mov              qword ptr [rsp + 32696], 0
                        mov              qword ptr [rsp + 32704], 0
                        mov              qword ptr [rsp + 32712], 0
                        mov              qword ptr [rsp + 32720], 0
                        mov              qword ptr [rsp + 32728], 0
                        mov              qword ptr [rsp + 32736], 0
                        mov              qword ptr [rsp + 32744], 0
                        mov              qword ptr [rsp + 32752], 0
                        mov              qword ptr [rsp + 32760], 0
                        mov              qword ptr [rsp + 32768], 0
                        mov              qword ptr [rsp + 32776], 0
                        mov              qword ptr [rsp + 32784], 0
                        mov              qword ptr [rsp + 32792], 0
                        mov              qword ptr [rsp + 32800], 0
                        mov              qword ptr [rsp + 32808], 0
                        mov              qword ptr [rsp + 32816], 0
                        mov              qword ptr [rsp + 32824], 0
                        mov              qword ptr [rsp + 32832], 0
                        mov              qword ptr [rsp + 32840], 0
                        mov              qword ptr [rsp + 32848], 0
                        mov              qword ptr [rsp + 32856], 0
                        mov              qword ptr [rsp + 32864], 0
                        mov              qword ptr [rsp + 32872], 0
                        mov              qword ptr [rsp + 32880], 0
                        mov              qword ptr [rsp + 32888], 0
                        mov              qword ptr [rsp + 32896], 0
                        mov              qword ptr [rsp + 32904], 0
                        mov              qword ptr [rsp + 32912], 0
                        mov              qword ptr [rsp + 32920], 0
                        mov              qword ptr [rsp + 32928], 0
                        mov              qword ptr [rsp + 32936], 0
                        mov              qword ptr [rsp + 32944], 0
                        mov              qword ptr [rsp + 32952], 0
                        mov              qword ptr [rsp + 32960], 0
                        mov              qword ptr [rsp + 32968], 0
                        mov              qword ptr [rsp + 32976], 0
                        mov              qword ptr [rsp + 32984], 0
                        mov              qword ptr [rsp + 32992], 0
                        mov              qword ptr [rsp + 33000], 0
                        mov              qword ptr [rsp + 33008], 0
                        mov              qword ptr [rsp + 33016], 0
                        mov              qword ptr [rsp + 33024], 0
                        mov              qword ptr [rsp + 33032], 0
                        mov              qword ptr [rsp + 33040], 0
                        mov              qword ptr [rsp + 33048], 0
                        mov              qword ptr [rsp + 33056], 0
                        mov              qword ptr [rsp + 33064], 0
                        mov              qword ptr [rsp + 33072], 0
                        mov              qword ptr [rsp + 33080], 0
                        mov              qword ptr [rsp + 33088], 0
                        mov              qword ptr [rsp + 33096], 0
                        mov              qword ptr [rsp + 33104], 0
                        mov              qword ptr [rsp + 33112], 0
                        mov              qword ptr [rsp + 33120], 0
                        mov              qword ptr [rsp + 33128], 0
                        mov              qword ptr [rsp + 33136], 0
                        mov              qword ptr [rsp + 33144], 0
                        mov              qword ptr [rsp + 33152], 0
                        mov              qword ptr [rsp + 33160], 0
                        mov              qword ptr [rsp + 33168], 0
                        mov              qword ptr [rsp + 33176], 0
                        mov              qword ptr [rsp + 33184], 0
                        mov              qword ptr [rsp + 33192], 0
                        mov              qword ptr [rsp + 33200], 0
                        mov              qword ptr [rsp + 33208], 0
                        mov              qword ptr [rsp + 33216], 0
                        mov              qword ptr [rsp + 33224], 0
                        mov              qword ptr [rsp + 33232], 0
                        mov              qword ptr [rsp + 33240], 0
                        mov              qword ptr [rsp + 33248], 0
                        mov              qword ptr [rsp + 33256], 0
                        mov              qword ptr [rsp + 33264], 0
                        mov              qword ptr [rsp + 33272], 0
                        mov              qword ptr [rsp + 33280], 0
                        mov              qword ptr [rsp + 33288], 0
                        mov              qword ptr [rsp + 33296], 0
                        mov              qword ptr [rsp + 33304], 0
                        mov              qword ptr [rsp + 33312], 0
                        mov              qword ptr [rsp + 33320], 0
                        mov              qword ptr [rsp + 33328], 0
                        mov              qword ptr [rsp + 33336], 0
                        mov              qword ptr [rsp + 33344], 0
                        mov              qword ptr [rsp + 33352], 0
                        mov              qword ptr [rsp + 33360], 0
                        mov              qword ptr [rsp + 33368], 0
                        mov              qword ptr [rsp + 33376], 0
                        mov              qword ptr [rsp + 33384], 0
                        mov              qword ptr [rsp + 33392], 0
                        mov              qword ptr [rsp + 33400], 0
                        mov              qword ptr [rsp + 33408], 0
                        mov              qword ptr [rsp + 33416], 0
                        mov              qword ptr [rsp + 33424], 0
                        mov              qword ptr [rsp + 33432], 0
                        mov              qword ptr [rsp + 33440], 0
                        mov              qword ptr [rsp + 33448], 0
                        mov              qword ptr [rsp + 33456], 0
                        mov              qword ptr [rsp + 33464], 0
                        mov              qword ptr [rsp + 33472], 0
                        mov              qword ptr [rsp + 33480], 0
                        mov              qword ptr [rsp + 33488], 0
                        mov              qword ptr [rsp + 33496], 0
                        mov              qword ptr [rsp + 33504], 0
                        mov              qword ptr [rsp + 33512], 0
                        mov              qword ptr [rsp + 33520], 0
                        mov              qword ptr [rsp + 33528], 0
                        mov              qword ptr [rsp + 33536], 0
                        mov              qword ptr [rsp + 33544], 0
                        mov              qword ptr [rsp + 33552], 0
                        mov              qword ptr [rsp + 33560], 0
                        mov              qword ptr [rsp + 33568], 0
                        mov              qword ptr [rsp + 33576], 0
                        mov              qword ptr [rsp + 33584], 0
                        mov              qword ptr [rsp + 33592], 0
                        mov              qword ptr [rsp + 33600], 0
                        mov              qword ptr [rsp + 33608], 0
                        mov              qword ptr [rsp + 33616], 0
                        mov              qword ptr [rsp + 33624], 0
                        mov              qword ptr [rsp + 33632], 0
                        mov              qword ptr [rsp + 33640], 0
                        mov              qword ptr [rsp + 33648], 0
                        mov              qword ptr [rsp + 33656], 0
                        mov              qword ptr [rsp + 33664], 0
                        mov              qword ptr [rsp + 33672], 0
                        mov              qword ptr [rsp + 33680], 0
                        mov              qword ptr [rsp + 33688], 0
                        mov              qword ptr [rsp + 33696], 0
                        mov              qword ptr [rsp + 33704], 0
                        mov              qword ptr [rsp + 33712], 0
                        mov              qword ptr [rsp + 33720], 0
                        mov              qword ptr [rsp + 33728], 0
                        mov              qword ptr [rsp + 33736], 0
                        mov              qword ptr [rsp + 33744], 0
                        mov              qword ptr [rsp + 33752], 0
                        mov              qword ptr [rsp + 33760], 0
                        mov              qword ptr [rsp + 33768], 0
                        mov              qword ptr [rsp + 33776], 0
                        mov              qword ptr [rsp + 33784], 0
                        mov              qword ptr [rsp + 33792], 0
                        mov              qword ptr [rsp + 33800], 0
                        mov              qword ptr [rsp + 33808], 0
                        mov              qword ptr [rsp + 33816], 0
                        mov              qword ptr [rsp + 33824], 0
                        mov              qword ptr [rsp + 33832], 0
                        mov              qword ptr [rsp + 33840], 0
                        mov              qword ptr [rsp + 33848], 0
                        mov              qword ptr [rsp + 33856], 0
                        mov              qword ptr [rsp + 33864], 0
                        mov              qword ptr [rsp + 33872], 0
                        mov              qword ptr [rsp + 33880], 0
                        mov              qword ptr [rsp + 33888], 0
                        mov              qword ptr [rsp + 33896], 0
                        mov              qword ptr [rsp + 33904], 0
                        mov              qword ptr [rsp + 33912], 0
                        mov              qword ptr [rsp + 33920], 0
                        mov              qword ptr [rsp + 33928], 0
                        mov              qword ptr [rsp + 33936], 0
                        mov              qword ptr [rsp + 33944], 0
                        mov              qword ptr [rsp + 33952], 0
                        mov              qword ptr [rsp + 33960], 0
                        mov              qword ptr [rsp + 33968], 0
                        mov              qword ptr [rsp + 33976], 0
                        mov              qword ptr [rsp + 33984], 0
                        mov              qword ptr [rsp + 33992], 0
                        mov              qword ptr [rsp + 34000], 0
                        mov              qword ptr [rsp + 34008], 0
                        mov              qword ptr [rsp + 34016], 0
                        mov              qword ptr [rsp + 34024], 0
                        mov              qword ptr [rsp + 34032], 0
                        mov              qword ptr [rsp + 34040], 0
                        mov              qword ptr [rsp + 34048], 0
                        mov              qword ptr [rsp + 34056], 0
                        mov              qword ptr [rsp + 34064], 0
                        mov              qword ptr [rsp + 34072], 0
                        mov              qword ptr [rsp + 34080], 0
                        mov              qword ptr [rsp + 34088], 0
                        mov              qword ptr [rsp + 34096], 0
                        mov              qword ptr [rsp + 34104], 0
                        mov              qword ptr [rsp + 34112], 0
                        mov              qword ptr [rsp + 34120], 0
                        mov              qword ptr [rsp + 34128], 0
                        mov              qword ptr [rsp + 34136], 0
                        mov              qword ptr [rsp + 34144], 0
                        mov              qword ptr [rsp + 34152], 0
                        mov              qword ptr [rsp + 34160], 0
                        mov              qword ptr [rsp + 34168], 0
                        mov              qword ptr [rsp + 34176], 0
                        mov              qword ptr [rsp + 34184], 0
                        mov              qword ptr [rsp + 34192], 0
                        mov              qword ptr [rsp + 34200], 0
                        mov              qword ptr [rsp + 34208], 0
                        mov              qword ptr [rsp + 34216], 0
                        mov              qword ptr [rsp + 34224], 0
                        mov              qword ptr [rsp + 34232], 0
                        mov              qword ptr [rsp + 34240], 0
                        mov              qword ptr [rsp + 34248], 0
                        mov              qword ptr [rsp + 34256], 0
                        mov              qword ptr [rsp + 34264], 0
                        mov              qword ptr [rsp + 34272], 0
                        mov              qword ptr [rsp + 34280], 0
                        mov              qword ptr [rsp + 34288], 0
                        mov              qword ptr [rsp + 34296], 0
                        mov              qword ptr [rsp + 34304], 0
                        mov              qword ptr [rsp + 34312], 0
                        mov              qword ptr [rsp + 34320], 0
                        mov              qword ptr [rsp + 34328], 0
                        mov              qword ptr [rsp + 34336], 0
                        mov              qword ptr [rsp + 34344], 0
                        mov              qword ptr [rsp + 34352], 0
                        mov              qword ptr [rsp + 34360], 0
                        mov              qword ptr [rsp + 34368], 0
                        mov              qword ptr [rsp + 34376], 0
                        mov              qword ptr [rsp + 34384], 0
                        mov              qword ptr [rsp + 34392], 0
                        mov              qword ptr [rsp + 34400], 0
                        mov              qword ptr [rsp + 34408], 0
                        mov              qword ptr [rsp + 34416], 0
                        mov              qword ptr [rsp + 34424], 0
                        mov              qword ptr [rsp + 34432], 0
                        mov              qword ptr [rsp + 34440], 0
                        mov              qword ptr [rsp + 34448], 0
                        mov              qword ptr [rsp + 34456], 0
                        mov              qword ptr [rsp + 34464], 0
                        mov              qword ptr [rsp + 34472], 0
                        mov              qword ptr [rsp + 34480], 0
                        mov              qword ptr [rsp + 34488], 0
                        mov              qword ptr [rsp + 34496], 0
                        mov              qword ptr [rsp + 34504], 0
                        mov              qword ptr [rsp + 34512], 0
                        mov              qword ptr [rsp + 34520], 0
                        mov              qword ptr [rsp + 34528], 0
                        mov              qword ptr [rsp + 34536], 0
                        mov              qword ptr [rsp + 34544], 0
                        mov              qword ptr [rsp + 34552], 0
                        mov              qword ptr [rsp + 34560], 0
                        mov              qword ptr [rsp + 34568], 0
                        mov              qword ptr [rsp + 34576], 0
                        mov              qword ptr [rsp + 34584], 0
                        mov              qword ptr [rsp + 34592], 0
                        mov              qword ptr [rsp + 34600], 0
                        mov              qword ptr [rsp + 34608], 0
                        mov              qword ptr [rsp + 34616], 0
                        mov              qword ptr [rsp + 34624], 0
                        mov              qword ptr [rsp + 34632], 0
                        mov              qword ptr [rsp + 34640], 0
                        mov              qword ptr [rsp + 34648], 0
                        mov              qword ptr [rsp + 34656], 0
                        mov              qword ptr [rsp + 34664], 0
                        mov              qword ptr [rsp + 34672], 0
                        mov              qword ptr [rsp + 34680], 0
                        mov              qword ptr [rsp + 34688], 0
                        mov              qword ptr [rsp + 34696], 0
                        mov              qword ptr [rsp + 34704], 0
                        mov              qword ptr [rsp + 34712], 0
                        mov              qword ptr [rsp + 34720], 0
                        mov              qword ptr [rsp + 34728], 0
                        mov              qword ptr [rsp + 34736], 0
                        mov              qword ptr [rsp + 34744], 0
                        mov              qword ptr [rsp + 34752], 0
                        mov              qword ptr [rsp + 34760], 0
                        mov              qword ptr [rsp + 34768], 0
                        mov              qword ptr [rsp + 34776], 0
                        mov              qword ptr [rsp + 34784], 0
                        mov              qword ptr [rsp + 34792], 0
                        mov              qword ptr [rsp + 34800], 0
                        mov              qword ptr [rsp + 34808], 0
                        mov              qword ptr [rsp + 34816], 0
                        mov              qword ptr [rsp + 34824], 0
                        mov              qword ptr [rsp + 34832], 0
                        mov              qword ptr [rsp + 34840], 0
                        mov              qword ptr [rsp + 34848], 0
                        mov              qword ptr [rsp + 34856], 0
                        mov              qword ptr [rsp + 34864], 0
                        mov              qword ptr [rsp + 34872], 0
                        mov              qword ptr [rsp + 34880], 0
                        mov              qword ptr [rsp + 34888], 0
                        mov              qword ptr [rsp + 34896], 0
                        mov              qword ptr [rsp + 34904], 0
                        mov              qword ptr [rsp + 34912], 0
                        mov              qword ptr [rsp + 34920], 0
                        mov              qword ptr [rsp + 34928], 0
                        mov              qword ptr [rsp + 34936], 0
                        mov              qword ptr [rsp + 34944], 0
                        mov              qword ptr [rsp + 34952], 0
                        mov              qword ptr [rsp + 34960], 0
                        mov              qword ptr [rsp + 34968], 0
                        mov              qword ptr [rsp + 34976], 0
                        mov              qword ptr [rsp + 34984], 0
                        mov              qword ptr [rsp + 34992], 0
                        mov              qword ptr [rsp + 35000], 0
                        mov              qword ptr [rsp + 35008], 0
                        mov              qword ptr [rsp + 35016], 0
                        mov              qword ptr [rsp + 35024], 0
                        mov              qword ptr [rsp + 35032], 0
                        mov              qword ptr [rsp + 35040], 0
                        mov              qword ptr [rsp + 35048], 0
                        mov              qword ptr [rsp + 35056], 0
                        mov              qword ptr [rsp + 35064], 0
                        mov              qword ptr [rsp + 35072], 0
                        mov              qword ptr [rsp + 35080], 0
                        mov              qword ptr [rsp + 35088], 0
                        mov              qword ptr [rsp + 35096], 0
                        mov              qword ptr [rsp + 35104], 0
                        mov              qword ptr [rsp + 35112], 0
                        mov              qword ptr [rsp + 35120], 0
                        mov              qword ptr [rsp + 35128], 0
                        mov              qword ptr [rsp + 35136], 0
                        mov              qword ptr [rsp + 35144], 0
                        mov              qword ptr [rsp + 35152], 0
                        mov              qword ptr [rsp + 35160], 0
                        mov              qword ptr [rsp + 35168], 0
                        mov              qword ptr [rsp + 35176], 0
                        mov              qword ptr [rsp + 35184], 0
                        mov              qword ptr [rsp + 35192], 0
                        mov              qword ptr [rsp + 35200], 0
                        mov              qword ptr [rsp + 35208], 0
                        mov              qword ptr [rsp + 35216], 0
                        mov              qword ptr [rsp + 35224], 0
                        mov              qword ptr [rsp + 35232], 0
                        mov              qword ptr [rsp + 35240], 0
                        mov              qword ptr [rsp + 35248], 0
                        mov              qword ptr [rsp + 35256], 0
                        mov              qword ptr [rsp + 35264], 0
                        mov              qword ptr [rsp + 35272], 0
                        mov              qword ptr [rsp + 35280], 0
                        mov              qword ptr [rsp + 35288], 0
                        mov              qword ptr [rsp + 35296], 0
                        mov              qword ptr [rsp + 35304], 0
                        mov              qword ptr [rsp + 35312], 0
                        mov              qword ptr [rsp + 35320], 0
                        mov              qword ptr [rsp + 35328], 0
                        mov              qword ptr [rsp + 35336], 0
                        mov              qword ptr [rsp + 35344], 0
                        mov              qword ptr [rsp + 35352], 0
                        mov              qword ptr [rsp + 35360], 0
                        mov              qword ptr [rsp + 35368], 0
                        mov              qword ptr [rsp + 35376], 0
                        mov              qword ptr [rsp + 35384], 0
                        mov              qword ptr [rsp + 35392], 0
                        mov              qword ptr [rsp + 35400], 0
                        mov              qword ptr [rsp + 35408], 0
                        mov              qword ptr [rsp + 35416], 0
                        mov              qword ptr [rsp + 35424], 0
                        mov              qword ptr [rsp + 35432], 0
                        mov              qword ptr [rsp + 35440], 0
                        mov              qword ptr [rsp + 35448], 0
                        mov              qword ptr [rsp + 35456], 0
                        mov              qword ptr [rsp + 35464], 0
                        mov              qword ptr [rsp + 35472], 0
                        mov              qword ptr [rsp + 35480], 0
                        mov              qword ptr [rsp + 35488], 0
                        mov              qword ptr [rsp + 35496], 0
                        mov              qword ptr [rsp + 35504], 0
                        mov              qword ptr [rsp + 35512], 0
                        mov              qword ptr [rsp + 35520], 0
                        mov              qword ptr [rsp + 35528], 0
                        mov              qword ptr [rsp + 35536], 0
                        mov              qword ptr [rsp + 35544], 0
                        mov              qword ptr [rsp + 35552], 0
                        mov              qword ptr [rsp + 35560], 0
                        mov              qword ptr [rsp + 35568], 0
                        mov              qword ptr [rsp + 35576], 0
                        mov              qword ptr [rsp + 35584], 0
                        mov              qword ptr [rsp + 35592], 0
                        mov              qword ptr [rsp + 35600], 0
                        mov              qword ptr [rsp + 35608], 0
                        mov              qword ptr [rsp + 35616], 0
                        mov              qword ptr [rsp + 35624], 0
                        mov              qword ptr [rsp + 35632], 0
                        mov              qword ptr [rsp + 35640], 0
                        mov              qword ptr [rsp + 35648], 0
                        mov              qword ptr [rsp + 35656], 0
                        mov              qword ptr [rsp + 35664], 0
                        mov              qword ptr [rsp + 35672], 0
                        mov              qword ptr [rsp + 35680], 0
                        mov              qword ptr [rsp + 35688], 0
                        mov              qword ptr [rsp + 35696], 0
                        mov              qword ptr [rsp + 35704], 0
                        mov              qword ptr [rsp + 35712], 0
                        mov              qword ptr [rsp + 35720], 0
                        mov              qword ptr [rsp + 35728], 0
                        mov              qword ptr [rsp + 35736], 0
                        mov              qword ptr [rsp + 35744], 0
                        mov              qword ptr [rsp + 35752], 0
                        mov              qword ptr [rsp + 35760], 0
                        mov              qword ptr [rsp + 35768], 0
                        mov              qword ptr [rsp + 35776], 0
                        mov              qword ptr [rsp + 35784], 0
                        mov              qword ptr [rsp + 35792], 0
                        mov              qword ptr [rsp + 35800], 0
                        mov              qword ptr [rsp + 35808], 0
                        mov              qword ptr [rsp + 35816], 0
                        mov              qword ptr [rsp + 35824], 0
                        mov              qword ptr [rsp + 35832], 0
                        mov              qword ptr [rsp + 35840], 0
                        mov              qword ptr [rsp + 35848], 0
                        mov              qword ptr [rsp + 35856], 0
                        mov              qword ptr [rsp + 35864], 0
                        mov              qword ptr [rsp + 35872], 0
                        mov              qword ptr [rsp + 35880], 0
                        mov              qword ptr [rsp + 35888], 0
                        mov              qword ptr [rsp + 35896], 0
                        mov              qword ptr [rsp + 35904], 0
                        mov              qword ptr [rsp + 35912], 0
                        mov              qword ptr [rsp + 35920], 0
                        mov              qword ptr [rsp + 35928], 0
                        mov              qword ptr [rsp + 35936], 0
                        mov              qword ptr [rsp + 35944], 0
                        mov              qword ptr [rsp + 35952], 0
                        mov              qword ptr [rsp + 35960], 0
                        mov              qword ptr [rsp + 35968], 0
                        mov              qword ptr [rsp + 35976], 0
                        mov              qword ptr [rsp + 35984], 0
                        mov              qword ptr [rsp + 35992], 0
                        mov              qword ptr [rsp + 36000], 0
                        mov              qword ptr [rsp + 36008], 0
                        mov              qword ptr [rsp + 36016], 0
                        mov              qword ptr [rsp + 36024], 0
                        mov              qword ptr [rsp + 36032], 0
                        mov              qword ptr [rsp + 36040], 0
                        mov              qword ptr [rsp + 36048], 0
                        mov              qword ptr [rsp + 36056], 0
                        mov              qword ptr [rsp + 36064], 0
                        mov              qword ptr [rsp + 36072], 0
                        mov              qword ptr [rsp + 36080], 0
                        mov              qword ptr [rsp + 36088], 0
                        mov              qword ptr [rsp + 36096], 0
                        mov              qword ptr [rsp + 36104], 0
                        mov              qword ptr [rsp + 36112], 0
                        mov              qword ptr [rsp + 36120], 0
                        mov              qword ptr [rsp + 36128], 0
                        mov              qword ptr [rsp + 36136], 0
                        mov              qword ptr [rsp + 36144], 0
                        mov              qword ptr [rsp + 36152], 0
                        mov              qword ptr [rsp + 36160], 0
                        mov              qword ptr [rsp + 36168], 0
                        mov              qword ptr [rsp + 36176], 0
                        mov              qword ptr [rsp + 36184], 0
                        mov              qword ptr [rsp + 36192], 0
                        mov              qword ptr [rsp + 36200], 0
                        mov              qword ptr [rsp + 36208], 0
                        mov              qword ptr [rsp + 36216], 0
                        mov              qword ptr [rsp + 36224], 0
                        mov              qword ptr [rsp + 36232], 0
                        mov              qword ptr [rsp + 36240], 0
                        mov              qword ptr [rsp + 36248], 0
                        mov              qword ptr [rsp + 36256], 0
                        mov              qword ptr [rsp + 36264], 0
                        mov              qword ptr [rsp + 36272], 0
                        mov              qword ptr [rsp + 36280], 0
                        mov              qword ptr [rsp + 36288], 0
                        mov              qword ptr [rsp + 36296], 0
                        mov              qword ptr [rsp + 36304], 0
                        mov              qword ptr [rsp + 36312], 0
                        mov              qword ptr [rsp + 36320], 0
                        mov              qword ptr [rsp + 36328], 0
                        mov              qword ptr [rsp + 36336], 0
                        mov              qword ptr [rsp + 36344], 0
                        mov              qword ptr [rsp + 36352], 0
                        mov              qword ptr [rsp + 36360], 0
                        mov              qword ptr [rsp + 36368], 0
                        mov              qword ptr [rsp + 36376], 0
                        mov              qword ptr [rsp + 36384], 0
                        mov              qword ptr [rsp + 36392], 0
                        mov              qword ptr [rsp + 36400], 0
                        mov              qword ptr [rsp + 36408], 0
                        mov              qword ptr [rsp + 36416], 0
                        mov              qword ptr [rsp + 36424], 0
                        mov              qword ptr [rsp + 36432], 0
                        mov              qword ptr [rsp + 36440], 0
                        mov              qword ptr [rsp + 36448], 0
                        mov              qword ptr [rsp + 36456], 0
                        mov              qword ptr [rsp + 36464], 0
                        mov              qword ptr [rsp + 36472], 0
                        mov              qword ptr [rsp + 36480], 0
                        mov              qword ptr [rsp + 36488], 0
                        mov              qword ptr [rsp + 36496], 0
                        mov              qword ptr [rsp + 36504], 0
                        mov              qword ptr [rsp + 36512], 0
                        mov              qword ptr [rsp + 36520], 0
                        mov              qword ptr [rsp + 36528], 0
                        mov              qword ptr [rsp + 36536], 0
                        mov              qword ptr [rsp + 36544], 0
                        mov              qword ptr [rsp + 36552], 0
                        mov              qword ptr [rsp + 36560], 0
                        mov              qword ptr [rsp + 36568], 0
                        mov              qword ptr [rsp + 36576], 0
                        mov              qword ptr [rsp + 36584], 0
                        mov              qword ptr [rbp + 2624], 3                      # result
                        mov              rax, qword ptr [rip + .Lx101_0]
                        mov              qword ptr [rbp + 2632], rax
                                                                                        jmp   n2_call_α
.Lx101_0:
                        .quad            45
#-----------------------------------------------------------------------------------------------------------------------
n2_call_α:
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2592], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2600], rax
                        .section         .rodata
.Lrkfn103:              .string          "rec"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn103]                         # fn
                        lea              rsi, [rbp + 2592]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx
                        cmp              eax, 104
                                                                                        je    n4_create_α
                                                                                        jmp   n3_assign_α
n2_call_β:
                                                                                        jmp   n4_create_α
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:
                        mov              rax, qword ptr [rbp + 2576]
                        mov              rdx, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 2720], rax
                        mov              qword ptr [rbp + 2728], rdx
                                                                                        jmp   n4_create_α
#-----------------------------------------------------------------------------------------------------------------------
n4_create_α:
                        mov              qword ptr [rbp + 2448], r12
                        mov              qword ptr [rbp + 2456], r13
                        mov              qword ptr [rbp + 2464], r14
                        mov              qword ptr [rbp + 2472], r15
                        mov              qword ptr [rbp + 2480], rbx
                        mov              qword ptr [rbp + 2488], rbp
                        lea              rdi, [rip + n96_disjunction_α]                 # body_entry_addr
                        lea              rsi, [rbp + 2448]                              # regs
                        mov              edx, 2768                                      # frame_bytes
                        call             scrip_coexpr_create@PLT
                        mov              qword ptr [rbp + 2432], rax
                                                                                        jmp   n5_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n5_assign_α:
                        mov              rax, qword ptr [rbp + 2432]
                        mov              rdx, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 2704], rax
                        mov              qword ptr [rbp + 2712], rdx
                                                                                        jmp   n6_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n6_keyword_icon_α:
                        mov              qword ptr [rbp + 2032], 0
                        mov              qword ptr [rbp + 2040], 0
                                                                                        jmp   n7_lit_integer_α
n6_keyword_icon_β:
                                                                                        jmp   n31_var_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:
                        mov              qword ptr [rbp + 2064], 3                      # result
                        mov              rax, qword ptr [rip + .Lx109_0]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n8_lit_integer_α
.Lx109_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_integer_α:
                        mov              qword ptr [rbp + 2080], 3                      # result
                        mov              rax, qword ptr [rip + .Lx110_0]
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   n9_lit_integer_α
.Lx110_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:
                        mov              qword ptr [rbp + 2096], 3                      # result
                        mov              rax, qword ptr [rip + .Lx111_0]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n10_lit_real_α
.Lx111_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_real_α:
                        mov              qword ptr [rbp + 2112], 5                      # result
                        mov              rax, qword ptr [rip + .Lx112_0]
                        mov              qword ptr [rbp + 2120], rax
                                                                                        jmp   n11_lit_real_α
.Lx112_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_real_α:
                        mov              qword ptr [rbp + 2128], 5                      # result
                        mov              rax, qword ptr [rip + .Lx113_0]
                        mov              qword ptr [rbp + 2136], rax
                                                                                        jmp   n12_lit_real_α
.Lx113_0:
                        .quad            4607182418800017408
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_real_α:
                        mov              qword ptr [rbp + 2144], 5                      # result
                        mov              rax, qword ptr [rip + .Lx114_0]
                        mov              qword ptr [rbp + 2152], rax
                                                                                        jmp   n13_lit_string_α
.Lx114_0:
                        .quad            4611686018427387904
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:
                        mov              qword ptr [rbp + 2160], 2                      # result
                        mov              dword ptr [rbp + 2164], 0
                        mov              rax, qword ptr [rip + .Lx115_0]
                        mov              qword ptr [rbp + 2168], rax
                                                                                        jmp   n14_lit_string_α
.Lx115_0:
                        .quad            .Lx115_0_s
.Lx115_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:
                        mov              qword ptr [rbp + 2176], 2                      # result
                        mov              dword ptr [rbp + 2180], 1
                        mov              rax, qword ptr [rip + .Lx116_0]
                        mov              qword ptr [rbp + 2184], rax
                                                                                        jmp   n15_lit_string_α
.Lx116_0:
                        .quad            .Lx116_0_s
.Lx116_0_s:
                        .string          "0"
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:
                        mov              qword ptr [rbp + 2192], 2                      # result
                        mov              dword ptr [rbp + 2196], 1
                        mov              rax, qword ptr [rip + .Lx117_0]
                        mov              qword ptr [rbp + 2200], rax
                                                                                        jmp   n16_lit_string_α
.Lx117_0:
                        .quad            .Lx117_0_s
.Lx117_0_s:
                        .string          "1"
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:
                        mov              qword ptr [rbp + 2208], 2                      # result
                        mov              dword ptr [rbp + 2212], 1
                        mov              rax, qword ptr [rip + .Lx118_0]
                        mov              qword ptr [rbp + 2216], rax
                                                                                        jmp   n17_lit_charset_α
.Lx118_0:
                        .quad            .Lx118_0_s
.Lx118_0_s:
                        .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_charset_α:
                        mov              qword ptr [rbp + 2224], 2                      # result
                        mov              dword ptr [rbp + 2228], -1
                        mov              rax, qword ptr [rip + .Lx119_0]
                        mov              qword ptr [rbp + 2232], rax
                                                                                        jmp   n18_lit_charset_α
.Lx119_0:
                        .quad            .Lx119_0_s
.Lx119_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_charset_α:
                        mov              qword ptr [rbp + 2240], 2                      # result
                        mov              dword ptr [rbp + 2244], -1
                        mov              rax, qword ptr [rip + .Lx120_0]
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n19_lit_charset_α
.Lx120_0:
                        .quad            .Lx120_0_s
.Lx120_0_s:
                        .string          "0"
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_charset_α:
                        mov              qword ptr [rbp + 2256], 2                      # result
                        mov              dword ptr [rbp + 2260], -1
                        mov              rax, qword ptr [rip + .Lx121_0]
                        mov              qword ptr [rbp + 2264], rax
                                                                                        jmp   n20_lit_charset_α
.Lx121_0:
                        .quad            .Lx121_0_s
.Lx121_0_s:
                        .string          "1"
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_charset_α:
                        mov              qword ptr [rbp + 2272], 2                      # result
                        mov              dword ptr [rbp + 2276], -1
                        mov              rax, qword ptr [rip + .Lx122_0]
                        mov              qword ptr [rbp + 2280], rax
                                                                                        jmp   n21_proc_value_α
.Lx122_0:
                        .quad            .Lx122_0_s
.Lx122_0_s:
                        .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n21_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx124_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                                                                                        jmp   n22_proc_value_α
.Lx124_0:
                        .quad            .Lx124_0_s
.Lx124_0_s:
                        .string          "rec"
#-----------------------------------------------------------------------------------------------------------------------
n22_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx126_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                                                                                        jmp   n23_proc_value_α
.Lx126_0:
                        .quad            .Lx126_0_s
.Lx126_0_s:
                        .string          "main"
#-----------------------------------------------------------------------------------------------------------------------
n23_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx128_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                                                                                        jmp   n24_proc_value_α
.Lx128_0:
                        .quad            .Lx128_0_s
.Lx128_0_s:
                        .string          "foo"
#-----------------------------------------------------------------------------------------------------------------------
n24_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx130_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                                                                                        jmp   n25_call_α
.Lx130_0:
                        .quad            .Lx130_0_s
.Lx130_0_s:
                        .string          "rec"
#-----------------------------------------------------------------------------------------------------------------------
n25_call_α:
                        .section         .rodata
.Lrkfn132:              .string          "rec"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn132]                         # fn
                        lea              rsi, [rbp + 2368]                              # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx
                        cmp              eax, 104
                                                                                        je    n31_var_α
                                                                                        jmp   n26_var_α
n25_call_β:
                                                                                        jmp   n31_var_α
#-----------------------------------------------------------------------------------------------------------------------
n26_var_α:
                        mov              rax, qword ptr [rbp + 2720]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 2728]
                        mov              qword ptr [rbp + 2392], rax
                                                                                        jmp   n27_var_α
#-----------------------------------------------------------------------------------------------------------------------
n27_var_α:
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 2400], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 2408], rax
                                                                                        jmp   n28_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n28_make_list_α:
                        lea              rdi, [rbp + 2432]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx
                                                                                        jmp   n29_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n29_make_list_α:
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 1672], rax
                        mov              rax, qword ptr [rbp + 2064]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 1688], rax
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 1704], rax
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 1720], rax
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 1736], rax
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 1752], rax
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 1768], rax
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 1784], rax
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 1800], rax
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 1816], rax
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 1832], rax
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 1848], rax
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 1864], rax
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 1880], rax
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 1896], rax
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 1912], rax
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 1928], rax
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 1944], rax
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 1960], rax
                        mov              rax, qword ptr [rbp + 2352]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 1976], rax
                        mov              rax, qword ptr [rbp + 2384]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 2392]
                        mov              qword ptr [rbp + 1992], rax
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 2008], rax
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2024], rax
                        lea              rdi, [rbp + 1664]
                        mov              esi, 23
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                                                                                        jmp   n30_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n30_assign_α:
                        mov              rax, qword ptr [rbp + 1648]
                        mov              rdx, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 2656], rax
                        mov              qword ptr [rbp + 2664], rdx
                                                                                        jmp   n31_var_α
#-----------------------------------------------------------------------------------------------------------------------
n31_var_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 1624], rax
                                                                                        jmp   n32_var_α
#-----------------------------------------------------------------------------------------------------------------------
n32_var_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   n33_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n33_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1576], rax
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1592], rax
                        .section         .rodata
.Lrkfn147:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn147]                         # fn
                        lea              rsi, [rbp + 1568]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                        cmp              eax, 104
                                                                                        je    n34_var_α
                                                                                        jmp   n34_var_α
n33_call_builtin_icon_β:
                                                                                        jmp   n34_var_α
#-----------------------------------------------------------------------------------------------------------------------
n34_var_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n35_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n35_iterate_α:
                        mov              qword ptr [rbp + 64], 0
.Lx151_0:
                        mov              rdi, qword ptr [rbp + 80]                      # obj
                        mov              rsi, qword ptr [rbp + 88]                      # obj
                        mov              rdx, qword ptr [rbp + 64]                      # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              rax, 99
                                                                                        jne   .Lx151_240
                        add              rsp, 36592
                                                                                        jmp   main_ω
.Lx151_240:
                                                                                        jmp   n36_assign_α
n35_iterate_β:
                        inc              qword ptr [rbp + 64]
                                                                                        jmp   .Lx151_0
#-----------------------------------------------------------------------------------------------------------------------
n36_assign_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 2640], rax
                        mov              qword ptr [rbp + 2648], rdx
                                                                                        jmp   n37_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n37_bound_α:
                        mov              qword ptr [rbp + 96], rsp
                                                                                        jmp   n38_var_α
#-----------------------------------------------------------------------------------------------------------------------
n38_var_α:
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n39_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_integer_α:
                        mov              qword ptr [rbp + 1456], 3                      # result
                        mov              rax, qword ptr [rip + .Lx157_0]
                        mov              qword ptr [rbp + 1464], rax
                                                                                        jmp   n40_call_builtin_α
.Lx157_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n40_call_builtin_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 1512], rax
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1528], rax
                        .section         .rodata
.Lrkfn159:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn159]                         # fn
                        lea              rsi, [rbp + 1504]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx158_240
                        add              rsp, 36592
                                                                                        jmp   n43_lit_charset_α
.Lx158_240:
                                                                                        jmp   n41_lit_string_α
n40_call_builtin_β:
                        add              rsp, 36592
                                                                                        jmp   n43_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:
                        mov              qword ptr [rbp + 1472], 2                      # result
                        mov              dword ptr [rbp + 1476], 1
                        mov              rax, qword ptr [rip + .Lx160_0]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   n42_assign_α
.Lx160_0:
                        .quad            .Lx160_0_s
.Lx160_0_s:
                        .string          "1"
#-----------------------------------------------------------------------------------------------------------------------
n42_assign_α:
                        mov              rax, qword ptr [rbp + 1472]
                        mov              rdx, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                                                                                        jmp   n85_var_α
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_charset_α:
                        mov              qword ptr [rbp + 1360], 2                      # result
                        mov              dword ptr [rbp + 1364], -1
                        mov              rax, qword ptr [rip + .Lx162_0]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n44_call_builtin_α
.Lx162_0:
                        .quad            .Lx162_0_s
.Lx162_0_s:
                        .string          "1"
#-----------------------------------------------------------------------------------------------------------------------
n44_call_builtin_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 1416], rax
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1432], rax
                        .section         .rodata
.Lrkfn164:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn164]                         # fn
                        lea              rsi, [rbp + 1408]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                        cmp              eax, 104
                                                                                        je    n47_lit_real_α
                                                                                        jmp   n45_lit_string_α
n44_call_builtin_β:
                                                                                        jmp   n47_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_string_α:
                        mov              qword ptr [rbp + 1376], 2                      # result
                        mov              dword ptr [rbp + 1380], 3
                        mov              rax, qword ptr [rip + .Lx165_0]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n46_assign_α
.Lx165_0:
                        .quad            .Lx165_0_s
.Lx165_0_s:
                        .string          "'1'"
#-----------------------------------------------------------------------------------------------------------------------
n46_assign_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              rdx, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                                                                                        jmp   n85_var_α
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_real_α:
                        mov              qword ptr [rbp + 1264], 5                      # result
                        mov              rax, qword ptr [rip + .Lx167_0]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n48_call_builtin_α
.Lx167_0:
                        .quad            4607182418800017408
#-----------------------------------------------------------------------------------------------------------------------
n48_call_builtin_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 1320], rax
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1336], rax
                        .section         .rodata
.Lrkfn169:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn169]                         # fn
                        lea              rsi, [rbp + 1312]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        cmp              eax, 104
                                                                                        je    n51_lit_string_α
                                                                                        jmp   n49_lit_string_α
n48_call_builtin_β:
                                                                                        jmp   n51_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_string_α:
                        mov              qword ptr [rbp + 1280], 2                      # result
                        mov              dword ptr [rbp + 1284], 3
                        mov              rax, qword ptr [rip + .Lx170_0]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n50_assign_α
.Lx170_0:
                        .quad            .Lx170_0_s
.Lx170_0_s:
                        .string          "1.0"
#-----------------------------------------------------------------------------------------------------------------------
n50_assign_α:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              rdx, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                                                                                        jmp   n85_var_α
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_string_α:
                        mov              qword ptr [rbp + 1168], 2                      # result
                        mov              dword ptr [rbp + 1172], 1
                        mov              rax, qword ptr [rip + .Lx172_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n52_call_builtin_α
.Lx172_0:
                        .quad            .Lx172_0_s
.Lx172_0_s:
                        .string          "1"
#-----------------------------------------------------------------------------------------------------------------------
n52_call_builtin_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 1224], rax
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1240], rax
                        .section         .rodata
.Lrkfn174:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn174]                         # fn
                        lea              rsi, [rbp + 1216]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              eax, 104
                                                                                        je    n55_keyword_icon_α
                                                                                        jmp   n53_lit_string_α
n52_call_builtin_β:
                                                                                        jmp   n55_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:
                        mov              qword ptr [rbp + 1184], 2                      # result
                        mov              dword ptr [rbp + 1188], 3
                        mov              rax, qword ptr [rip + .Lx175_0]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n54_assign_α
.Lx175_0:
                        .quad            .Lx175_0_s
.Lx175_0_s:
                        .string          "\"1\""
#-----------------------------------------------------------------------------------------------------------------------
n54_assign_α:
                        mov              rax, qword ptr [rbp + 1184]
                        mov              rdx, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                                                                                        jmp   n85_var_α
#-----------------------------------------------------------------------------------------------------------------------
n55_keyword_icon_α:
                        mov              qword ptr [rbp + 1056], 0
                        mov              qword ptr [rbp + 1064], 0
                                                                                        jmp   n56_call_builtin_α
n55_keyword_icon_β:
                                                                                        jmp   n87_var_α
#-----------------------------------------------------------------------------------------------------------------------
n56_call_builtin_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 1128], rax
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1144], rax
                        .section         .rodata
.Lrkfn179:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn179]                         # fn
                        lea              rsi, [rbp + 1120]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              eax, 104
                                                                                        je    n59_proc_value_α
                                                                                        jmp   n57_lit_string_α
n56_call_builtin_β:
                                                                                        jmp   n59_proc_value_α
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_string_α:
                        mov              qword ptr [rbp + 1088], 2                      # result
                        mov              dword ptr [rbp + 1092], 4
                        mov              rax, qword ptr [rip + .Lx180_0]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n58_assign_α
.Lx180_0:
                        .quad            .Lx180_0_s
.Lx180_0_s:
                        .string          "null"
#-----------------------------------------------------------------------------------------------------------------------
n58_assign_α:
                        mov              rax, qword ptr [rbp + 1088]
                        mov              rdx, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                                                                                        jmp   n85_var_α
#-----------------------------------------------------------------------------------------------------------------------
n59_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx183_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n60_call_builtin_α
.Lx183_0:
                        .quad            .Lx183_0_s
.Lx183_0_s:
                        .string          "main"
#-----------------------------------------------------------------------------------------------------------------------
n60_call_builtin_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 1016], rax
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 1032], rax
                        .section         .rodata
.Lrkfn185:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn185]                         # fn
                        lea              rsi, [rbp + 1008]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 104
                                                                                        je    n63_proc_value_α
                                                                                        jmp   n61_lit_string_α
n60_call_builtin_β:
                                                                                        jmp   n63_proc_value_α
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_string_α:
                        mov              qword ptr [rbp + 976], 2                       # result
                        mov              dword ptr [rbp + 980], 4
                        mov              rax, qword ptr [rip + .Lx186_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n62_assign_α
.Lx186_0:
                        .quad            .Lx186_0_s
.Lx186_0_s:
                        .string          "main"
#-----------------------------------------------------------------------------------------------------------------------
n62_assign_α:
                        mov              rax, qword ptr [rbp + 976]
                        mov              rdx, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                                                                                        jmp   n85_var_α
#-----------------------------------------------------------------------------------------------------------------------
n63_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx189_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n64_call_builtin_α
.Lx189_0:
                        .quad            .Lx189_0_s
.Lx189_0_s:
                        .string          "rec"
#-----------------------------------------------------------------------------------------------------------------------
n64_call_builtin_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 936], rax
                        .section         .rodata
.Lrkfn191:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn191]                         # fn
                        lea              rsi, [rbp + 912]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 104
                                                                                        je    n67_call_α
                                                                                        jmp   n65_lit_string_α
n64_call_builtin_β:
                                                                                        jmp   n67_call_α
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_string_α:
                        mov              qword ptr [rbp + 880], 2                       # result
                        mov              dword ptr [rbp + 884], 3
                        mov              rax, qword ptr [rip + .Lx192_0]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n66_assign_α
.Lx192_0:
                        .quad            .Lx192_0_s
.Lx192_0_s:
                        .string          "rec"
#-----------------------------------------------------------------------------------------------------------------------
n66_assign_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              rdx, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                                                                                        jmp   n85_var_α
#-----------------------------------------------------------------------------------------------------------------------
n67_call_α:
                        .section         .rodata
.Lrkfn195:              .string          "rec"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn195]                         # fn
                        lea              rsi, [rbp + 768]                               # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 104
                                                                                        je    n87_var_α
                                                                                        jmp   n68_call_builtin_α
n67_call_β:
                                                                                        jmp   n87_var_α
#-----------------------------------------------------------------------------------------------------------------------
n68_call_builtin_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 824], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 840], rax
                        .section         .rodata
.Lrkfn197:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn197]                         # fn
                        lea              rsi, [rbp + 816]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 104
                                                                                        je    n71_var_α
                                                                                        jmp   n69_lit_string_α
n68_call_builtin_β:
                                                                                        jmp   n71_var_α
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_string_α:
                        mov              qword ptr [rbp + 784], 2                       # result
                        mov              dword ptr [rbp + 788], 5
                        mov              rax, qword ptr [rip + .Lx198_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n70_assign_α
.Lx198_0:
                        .quad            .Lx198_0_s
.Lx198_0_s:
                        .string          "rec()"
#-----------------------------------------------------------------------------------------------------------------------
n70_assign_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                                                                                        jmp   n85_var_α
#-----------------------------------------------------------------------------------------------------------------------
n71_var_α:
                        mov              rax, qword ptr [rbp + 2720]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 2728]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n72_call_builtin_α
#-----------------------------------------------------------------------------------------------------------------------
n72_call_builtin_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 728], rax
                        .section         .rodata
.Lrkfn203:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn203]                         # fn
                        lea              rsi, [rbp + 704]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 104
                                                                                        je    n75_var_α
                                                                                        jmp   n73_lit_string_α
n72_call_builtin_β:
                                                                                        jmp   n75_var_α
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_string_α:
                        mov              qword ptr [rbp + 672], 2                       # result
                        mov              dword ptr [rbp + 676], 1
                        mov              rax, qword ptr [rip + .Lx204_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n74_assign_α
.Lx204_0:
                        .quad            .Lx204_0_s
.Lx204_0_s:
                        .string          "r"
#-----------------------------------------------------------------------------------------------------------------------
n74_assign_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                                                                                        jmp   n85_var_α
#-----------------------------------------------------------------------------------------------------------------------
n75_var_α:
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n76_call_builtin_α
#-----------------------------------------------------------------------------------------------------------------------
n76_call_builtin_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 632], rax
                        .section         .rodata
.Lrkfn209:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn209]                         # fn
                        lea              rsi, [rbp + 608]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 104
                                                                                        je    n79_var_α
                                                                                        jmp   n77_lit_string_α
n76_call_builtin_β:
                                                                                        jmp   n79_var_α
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_string_α:
                        mov              qword ptr [rbp + 576], 2                       # result
                        mov              dword ptr [rbp + 580], 1
                        mov              rax, qword ptr [rip + .Lx210_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n78_assign_α
.Lx210_0:
                        .quad            .Lx210_0_s
.Lx210_0_s:
                        .string          "c"
#-----------------------------------------------------------------------------------------------------------------------
n78_assign_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                                                                                        jmp   n85_var_α
#-----------------------------------------------------------------------------------------------------------------------
n79_var_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n80_call_builtin_α
#-----------------------------------------------------------------------------------------------------------------------
n80_call_builtin_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 536], rax
                        .section         .rodata
.Lrkfn215:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn215]                         # fn
                        lea              rsi, [rbp + 512]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 104
                                                                                        je    n83_lit_string_α
                                                                                        jmp   n81_lit_string_α
n80_call_builtin_β:
                                                                                        jmp   n83_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_string_α:
                        mov              qword ptr [rbp + 480], 2                       # result
                        mov              dword ptr [rbp + 484], 1
                        mov              rax, qword ptr [rip + .Lx216_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n82_assign_α
.Lx216_0:
                        .quad            .Lx216_0_s
.Lx216_0_s:
                        .string          "L"
#-----------------------------------------------------------------------------------------------------------------------
n82_assign_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                                                                                        jmp   n85_var_α
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_string_α:
                        mov              qword ptr [rbp + 448], 2                       # result
                        mov              dword ptr [rbp + 452], 7
                        mov              rax, qword ptr [rip + .Lx218_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n84_assign_α
.Lx218_0:
                        .quad            .Lx218_0_s
.Lx218_0_s:
                        .string          "default"
#-----------------------------------------------------------------------------------------------------------------------
n84_assign_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                                                                                        jmp   n85_var_α
#-----------------------------------------------------------------------------------------------------------------------
n85_var_α:
                        mov              rax, qword ptr [rbp + 2688]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 2696]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n86_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n86_assign_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                                                                                        jmp   n87_var_α
#-----------------------------------------------------------------------------------------------------------------------
n87_var_α:
                        mov              rax, qword ptr [rbp + 2672]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n88_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_integer_α:
                        mov              qword ptr [rbp + 320], 3                       # result
                        mov              rax, qword ptr [rip + .Lx225_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n89_call_builtin_icon_α
.Lx225_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n89_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 280], rax
                        .section         .rodata
.Lrkfn227:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn227]                         # fn
                        lea              rsi, [rbp + 256]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 104
                                                                                        je    n95_unmark_α
                                                                                        jmp   n90_lit_string_α
n89_call_builtin_icon_β:
                                                                                        jmp   n95_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_string_α:
                        mov              qword ptr [rbp + 336], 2                       # result
                        mov              dword ptr [rbp + 340], 3
                        mov              rax, qword ptr [rip + .Lx228_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n91_var_α
.Lx228_0:
                        .quad            .Lx228_0_s
.Lx228_0_s:
                        .string          " : "
#-----------------------------------------------------------------------------------------------------------------------
n91_var_α:
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n92_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n92_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                        .section         .rodata
.Lrkfn232:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn232]                         # fn
                        lea              rsi, [rbp + 368]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 104
                                                                                        je    n95_unmark_α
                                                                                        jmp   n93_call_builtin_icon_α
n92_call_builtin_icon_β:
                                                                                        jmp   n95_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n93_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 216], rax
                        .section         .rodata
.Lrkfn234:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn234]                         # fn
                        lea              rsi, [rbp + 176]                               # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 104
                                                                                        je    n95_unmark_α
                                                                                        jmp   n94_conjunction_α
n93_call_builtin_icon_β:
                                                                                        jmp   n95_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n94_conjunction_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n95_unmark_α
n94_conjunction_β:
                                                                                        jmp   n95_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n95_unmark_α:
                        mov              rsp, qword ptr [rbp + 96]
                                                                                        jmp   n35_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n96_disjunction_α:
                        mov              qword ptr [rbp + 2512], 0
                        mov              qword ptr [rbp + 2520], 0
                        mov              dword ptr [rbp + 2528], 0
                                                                                        jmp   n99_lit_integer_α
n96_disjunction_as:
                        mov              eax, dword ptr [rbp + 2528]
                        cmp              eax, 0
                                                                                        jne   .Lx239_0
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 2520], rax
                                                                                        jmp   n97_coret_α
.Lx239_0:
                        cmp              eax, 1
                                                                                        jne   .Lx239_1
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 2520], rax
                                                                                        jmp   n97_coret_α
.Lx239_1:
                                                                                        jmp   n97_coret_α
n96_disjunction_β:
                        mov              eax, dword ptr [rbp + 2528]
                        cmp              eax, 0
                                                                                        je    n96_disjunction_af
                                                                                        jmp   n96_disjunction_af
n96_disjunction_af:
                        add              dword ptr [rbp + 2528], 1
                        mov              eax, dword ptr [rbp + 2528]
                        cmp              eax, 1
                                                                                        je    n98_lit_integer_α
                                                                                        jmp   n100_cofail_α
#-----------------------------------------------------------------------------------------------------------------------
n97_coret_α:
                        mov              rdi, qword ptr [rbp + 2512]                    # d0
                        mov              rsi, qword ptr [rbp + 2520]                    # d1
                        xor              edx, edx                                       # resume_addr
                        call             scrip_coret@PLT
                                                                                        jmp   n96_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_integer_α:
                        mov              qword ptr [rbp + 2560], 3                      # result
                        mov              rax, qword ptr [rip + .Lx242_0]
                        mov              qword ptr [rbp + 2568], rax
                                                                                        jmp   n96_disjunction_as
n98_lit_integer_β:
                                                                                        jmp   n96_disjunction_af
.Lx242_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_integer_α:
                        mov              qword ptr [rbp + 2544], 3                      # result
                        mov              rax, qword ptr [rip + .Lx243_0]
                        mov              qword ptr [rbp + 2552], rax
                                                                                        jmp   n96_disjunction_as
n99_lit_integer_β:
                                                                                        jmp   n96_disjunction_af
.Lx243_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n100_cofail_α:
                        call             scrip_cofail@PLT
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
