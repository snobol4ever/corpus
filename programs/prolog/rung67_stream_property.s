                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_stream_property$2F2_α
proc_stream_property$2F2_α:
proc_stream_property$2F2_α_body:
                        lea              rax, [rip + n3_suspend_β]
                        mov              qword ptr [rbp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_var_ref_α:
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n1_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n2_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n2_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 72], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 88], rax
                        mov              qword ptr [rbp + 96], 0
.Lx8_60:
                        .section         .rodata
.Lbynamegenfn3:         .string          "$stream_property"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn3]                    # fn
                        lea              rsi, [rbp + 64]                                # args
                        mov              edx, 2                                         # nargs
                        lea              rcx, [rbp + 96]                                # resume
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx8_240
                        add              rsp, 32
                                                                                        jmp   proc_stream_property$2F2_ω
.Lx8_240:
                                                                                        jmp   n3_suspend_α
n2_call_builtin_gen_β:
                                                                                        jmp   .Lx8_60
#-----------------------------------------------------------------------------------------------------------------------
n3_suspend_α:
                        lea              rax, [rip + n3_suspend_β]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 32
                                                                                        jmp   proc_stream_property$2F2_γ
n3_suspend_β:
                                                                                        jmp   n2_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
proc_stream_property$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_stream_property$2F2_β:
                                                                                        jmp   qword ptr [rbp + 144]
#-----------------------------------------------------------------------------------------------------------------------
proc_stream_property$2F2_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_stream_property$2F2_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "stream_property/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_stream_property$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 160
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
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
n11_call_builtin_prolog_α:
                        sub              rsp, 3424
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
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx129_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx129_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx129_101
.Lx129_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx129_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx129_240
                        add              rsp, 3424
                                                                                        jmp   main_ω
.Lx129_240:
                                                                                        jmp   n12_lit_string_α
n11_call_builtin_prolog_β:
                        add              rsp, 3424
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:
                        mov              qword ptr [rbp + 3376], 2                      # result
                        mov              dword ptr [rbp + 3380], 17
                        mov              rax, qword ptr [rip + .Lx130_0]
                        mov              qword ptr [rbp + 3384], rax
                                                                                        jmp   n13_lit_string_α
.Lx130_0:
                        .quad            .Lx130_0_s
.Lx130_0_s:
                        .string          "/tmp/rung67_a.txt"
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:
                        mov              qword ptr [rbp + 3392], 2                      # result
                        mov              dword ptr [rbp + 3396], 5
                        mov              rax, qword ptr [rip + .Lx131_0]
                        mov              qword ptr [rbp + 3400], rax
                                                                                        jmp   n14_var_ref_α
.Lx131_0:
                        .quad            .Lx131_0_s
.Lx131_0_s:
                        .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n14_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3440]
                        mov              qword ptr [rbp + 3408], rax
                        mov              qword ptr [rbp + 3416], rdx
                                                                                        jmp   n15_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n15_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3376]
                        mov              qword ptr [rbp + 3328], rax
                        mov              rax, qword ptr [rbp + 3384]
                        mov              qword ptr [rbp + 3336], rax
                        mov              rax, qword ptr [rbp + 3392]
                        mov              qword ptr [rbp + 3344], rax
                        mov              rax, qword ptr [rbp + 3400]
                        mov              qword ptr [rbp + 3352], rax
                        mov              rax, qword ptr [rbp + 3408]
                        mov              qword ptr [rbp + 3360], rax
                        mov              rax, qword ptr [rbp + 3416]
                        mov              qword ptr [rbp + 3368], rax
                        .section         .rodata
.Lrkfn135:              .string          "$open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn135]                         # fn
                        lea              rsi, [rbp + 3328]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3312], rax
                        mov              qword ptr [rbp + 3320], rdx
                        cmp              eax, 104
                                                                                        je    n128_call_builtin_prolog_α
                                                                                        jmp   n16_var_ref_α
n15_call_builtin_prolog_β:
                                                                                        jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n16_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3440]
                        mov              qword ptr [rbp + 3200], rax
                        mov              qword ptr [rbp + 3208], rdx
                                                                                        jmp   n17_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:
                        mov              qword ptr [rbp + 3296], 2                      # result
                        mov              dword ptr [rbp + 3300], 4
                        mov              rax, qword ptr [rip + .Lx138_0]
                        mov              qword ptr [rbp + 3304], rax
                                                                                        jmp   n18_lit_string_α
.Lx138_0:
                        .quad            .Lx138_0_s
.Lx138_0_s:
                        .string          "mode"
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:
                        mov              qword ptr [rbp + 3216], 2                      # result
                        mov              dword ptr [rbp + 3220], 5
                        mov              rax, qword ptr [rip + .Lx139_0]
                        mov              qword ptr [rbp + 3224], rax
                                                                                        jmp   n19_call_builtin_prolog_α
.Lx139_0:
                        .quad            .Lx139_0_s
.Lx139_0_s:
                        .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n19_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 3248], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 3256], rax
                        mov              rax, qword ptr [rbp + 3216]
                        mov              qword ptr [rbp + 3264], rax
                        mov              rax, qword ptr [rbp + 3224]
                        mov              qword ptr [rbp + 3272], rax
                        lea              rdi, [rbp + 3248]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3232], rax
                        mov              qword ptr [rbp + 3240], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx140_240
                        add              rsp, 3424
                                                                                        jmp   n23_lit_string_α
.Lx140_240:
                                                                                        jmp   n20_call_proc_staged_α
n19_call_builtin_prolog_β:
                        add              rsp, 3424
                                                                                        jmp   n23_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n20_call_proc_staged_α:
                        mov              qword ptr [rbp + 3168], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx142_20
                        mov              rax, qword ptr [rbp + 3200]
                        mov              rdx, qword ptr [rbp + 3208]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx142_21
.Lx142_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 3200]                    # v
                        mov              rdx, qword ptr [rbp + 3208]                    # v
                        call             rt_arg_stage@PLT
.Lx142_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx142_22
                        mov              rax, qword ptr [rbp + 3232]
                        mov              rdx, qword ptr [rbp + 3240]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx142_23
.Lx142_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 3232]                    # v
                        mov              rdx, qword ptr [rbp + 3240]                    # v
                        call             rt_arg_stage@PLT
.Lx142_23:
                        mov              edi, 0                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx142_1
                        lea              rcx, [rip + .Lx142_3]
                        lea              rdx, [rip + .Lx142_4]
                                                                                        jmp   rax
.Lx142_3:
                        mov              qword ptr [rbp + 3176], rsp
                        mov              rax, qword ptr [rbp + 3168]
                        test             rax, rax
                                                                                        jne   .Lx142_5
                        mov              qword ptr [rbp + 3168], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx142_2
.Lx142_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx142_2
.Lx142_4:
                        mov              rax, qword ptr [rbp + 3168]
                        test             rax, rax
                                                                                        jne   .Lx142_6
                        mov              qword ptr [rbp + 3168], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx142_2
.Lx142_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx142_2
.Lx142_1:
                        call             rt_faildescr@PLT
.Lx142_2:
                        mov              qword ptr [rbp + 3120], rax
                        mov              qword ptr [rbp + 3128], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx142_240
                        add              rsp, 3424
                                                                                        jmp   n23_lit_string_α
.Lx142_240:
                                                                                        jmp   n21_lit_string_α
n20_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 3176]
                                                                                        jmp   qword ptr [rsp]
.Lx142_0:
                        .quad            .Lx142_0_s
.Lx142_0_s:
                        .string          "stream_property/2"
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_string_α:
                        mov              qword ptr [rbp + 3056], 2                      # result
                        mov              dword ptr [rbp + 3060], 13
                        mov              rax, qword ptr [rip + .Lx143_0]
                        mov              qword ptr [rbp + 3064], rax
                                                                                        jmp   n22_call_builtin_prolog_α
.Lx143_0:
                        .quad            .Lx143_0_s
.Lx143_0_s:
                        .string          "mode_write_ok"
#-----------------------------------------------------------------------------------------------------------------------
n22_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3056]
                        mov              qword ptr [rbp + 3040], rax
                        mov              rax, qword ptr [rbp + 3064]
                        mov              qword ptr [rbp + 3048], rax
                        .section         .rodata
.Lrkfn145:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn145]                         # fn
                        lea              rsi, [rbp + 3040]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3024], rax
                        mov              qword ptr [rbp + 3032], rdx
                        cmp              eax, 104
                                                                                        je    n128_call_builtin_prolog_α
                                                                                        jmp   n25_lit_string_α
n22_call_builtin_prolog_β:
                                                                                        jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:
                        mov              qword ptr [rbp + 3104], 2                      # result
                        mov              dword ptr [rbp + 3108], 14
                        mov              rax, qword ptr [rip + .Lx146_0]
                        mov              qword ptr [rbp + 3112], rax
                                                                                        jmp   n24_call_builtin_prolog_α
.Lx146_0:
                        .quad            .Lx146_0_s
.Lx146_0_s:
                        .string          "mode_write_bad"
#-----------------------------------------------------------------------------------------------------------------------
n24_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3104]
                        mov              qword ptr [rbp + 3088], rax
                        mov              rax, qword ptr [rbp + 3112]
                        mov              qword ptr [rbp + 3096], rax
                        .section         .rodata
.Lrkfn148:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn148]                         # fn
                        lea              rsi, [rbp + 3088]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3072], rax
                        mov              qword ptr [rbp + 3080], rdx
                        cmp              eax, 104
                                                                                        je    n128_call_builtin_prolog_α
                                                                                        jmp   n25_lit_string_α
n24_call_builtin_prolog_β:
                                                                                        jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:
                        mov              qword ptr [rbp + 3008], 2                      # result
                        mov              dword ptr [rbp + 3012], 0
                        mov              rax, qword ptr [rip + .Lx149_0]
                        mov              qword ptr [rbp + 3016], rax
                                                                                        jmp   n26_call_builtin_prolog_α
.Lx149_0:
                        .quad            .Lx149_0_s
.Lx149_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n26_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3008]
                        mov              qword ptr [rbp + 2992], rax
                        mov              rax, qword ptr [rbp + 3016]
                        mov              qword ptr [rbp + 3000], rax
                        .section         .rodata
.Lrkfn151:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn151]                         # fn
                        lea              rsi, [rbp + 2992]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2976], rax
                        mov              qword ptr [rbp + 2984], rdx
                        cmp              eax, 104
                                                                                        je    n128_call_builtin_prolog_α
                                                                                        jmp   n27_var_ref_α
n26_call_builtin_prolog_β:
                                                                                        jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n27_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3440]
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx
                                                                                        jmp   n28_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_string_α:
                        mov              qword ptr [rbp + 2960], 2                      # result
                        mov              dword ptr [rbp + 2964], 6
                        mov              rax, qword ptr [rip + .Lx154_0]
                        mov              qword ptr [rbp + 2968], rax
                                                                                        jmp   n29_call_proc_staged_α
.Lx154_0:
                        .quad            .Lx154_0_s
.Lx154_0_s:
                        .string          "output"
#-----------------------------------------------------------------------------------------------------------------------
n29_call_proc_staged_α:
                        mov              qword ptr [rbp + 2912], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx156_20
                        mov              rax, qword ptr [rbp + 2944]
                        mov              rdx, qword ptr [rbp + 2952]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx156_21
.Lx156_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 2944]                    # v
                        mov              rdx, qword ptr [rbp + 2952]                    # v
                        call             rt_arg_stage@PLT
.Lx156_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx156_22
                        mov              rax, qword ptr [rbp + 2960]
                        mov              rdx, qword ptr [rbp + 2968]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx156_23
.Lx156_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 2960]                    # v
                        mov              rdx, qword ptr [rbp + 2968]                    # v
                        call             rt_arg_stage@PLT
.Lx156_23:
                        mov              edi, 0                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx156_1
                        lea              rcx, [rip + .Lx156_3]
                        lea              rdx, [rip + .Lx156_4]
                                                                                        jmp   rax
.Lx156_3:
                        mov              qword ptr [rbp + 2920], rsp
                        mov              rax, qword ptr [rbp + 2912]
                        test             rax, rax
                                                                                        jne   .Lx156_5
                        mov              qword ptr [rbp + 2912], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx156_2
.Lx156_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx156_2
.Lx156_4:
                        mov              rax, qword ptr [rbp + 2912]
                        test             rax, rax
                                                                                        jne   .Lx156_6
                        mov              qword ptr [rbp + 2912], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx156_2
.Lx156_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx156_2
.Lx156_1:
                        call             rt_faildescr@PLT
.Lx156_2:
                        mov              qword ptr [rbp + 2864], rax
                        mov              qword ptr [rbp + 2872], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx156_240
                        add              rsp, 3424
                                                                                        jmp   n32_lit_string_α
.Lx156_240:
                                                                                        jmp   n30_lit_string_α
n29_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2920]
                                                                                        jmp   qword ptr [rsp]
.Lx156_0:
                        .quad            .Lx156_0_s
.Lx156_0_s:
                        .string          "stream_property/2"
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_string_α:
                        mov              qword ptr [rbp + 2800], 2                      # result
                        mov              dword ptr [rbp + 2804], 9
                        mov              rax, qword ptr [rip + .Lx157_0]
                        mov              qword ptr [rbp + 2808], rax
                                                                                        jmp   n31_call_builtin_prolog_α
.Lx157_0:
                        .quad            .Lx157_0_s
.Lx157_0_s:
                        .string          "is_output"
#-----------------------------------------------------------------------------------------------------------------------
n31_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2800]
                        mov              qword ptr [rbp + 2784], rax
                        mov              rax, qword ptr [rbp + 2808]
                        mov              qword ptr [rbp + 2792], rax
                        .section         .rodata
.Lrkfn159:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn159]                         # fn
                        lea              rsi, [rbp + 2784]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2768], rax
                        mov              qword ptr [rbp + 2776], rdx
                        cmp              eax, 104
                                                                                        je    n128_call_builtin_prolog_α
                                                                                        jmp   n34_lit_string_α
n31_call_builtin_prolog_β:
                                                                                        jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_string_α:
                        mov              qword ptr [rbp + 2848], 2                      # result
                        mov              dword ptr [rbp + 2852], 10
                        mov              rax, qword ptr [rip + .Lx160_0]
                        mov              qword ptr [rbp + 2856], rax
                                                                                        jmp   n33_call_builtin_prolog_α
.Lx160_0:
                        .quad            .Lx160_0_s
.Lx160_0_s:
                        .string          "not_output"
#-----------------------------------------------------------------------------------------------------------------------
n33_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2848]
                        mov              qword ptr [rbp + 2832], rax
                        mov              rax, qword ptr [rbp + 2856]
                        mov              qword ptr [rbp + 2840], rax
                        .section         .rodata
.Lrkfn162:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn162]                         # fn
                        lea              rsi, [rbp + 2832]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2816], rax
                        mov              qword ptr [rbp + 2824], rdx
                        cmp              eax, 104
                                                                                        je    n128_call_builtin_prolog_α
                                                                                        jmp   n34_lit_string_α
n33_call_builtin_prolog_β:
                                                                                        jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_string_α:
                        mov              qword ptr [rbp + 2752], 2                      # result
                        mov              dword ptr [rbp + 2756], 0
                        mov              rax, qword ptr [rip + .Lx163_0]
                        mov              qword ptr [rbp + 2760], rax
                                                                                        jmp   n35_call_builtin_prolog_α
.Lx163_0:
                        .quad            .Lx163_0_s
.Lx163_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n35_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2752]
                        mov              qword ptr [rbp + 2736], rax
                        mov              rax, qword ptr [rbp + 2760]
                        mov              qword ptr [rbp + 2744], rax
                        .section         .rodata
.Lrkfn165:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn165]                         # fn
                        lea              rsi, [rbp + 2736]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2720], rax
                        mov              qword ptr [rbp + 2728], rdx
                        cmp              eax, 104
                                                                                        je    n128_call_builtin_prolog_α
                                                                                        jmp   n36_var_ref_α
n35_call_builtin_prolog_β:
                                                                                        jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n36_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3440]
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                                                                                        jmp   n37_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:
                        mov              qword ptr [rbp + 2704], 2                      # result
                        mov              dword ptr [rbp + 2708], 5
                        mov              rax, qword ptr [rip + .Lx168_0]
                        mov              qword ptr [rbp + 2712], rax
                                                                                        jmp   n38_call_proc_staged_α
.Lx168_0:
                        .quad            .Lx168_0_s
.Lx168_0_s:
                        .string          "input"
#-----------------------------------------------------------------------------------------------------------------------
n38_call_proc_staged_α:
                        mov              qword ptr [rbp + 2656], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx170_20
                        mov              rax, qword ptr [rbp + 2688]
                        mov              rdx, qword ptr [rbp + 2696]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx170_21
.Lx170_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 2688]                    # v
                        mov              rdx, qword ptr [rbp + 2696]                    # v
                        call             rt_arg_stage@PLT
.Lx170_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx170_22
                        mov              rax, qword ptr [rbp + 2704]
                        mov              rdx, qword ptr [rbp + 2712]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx170_23
.Lx170_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 2704]                    # v
                        mov              rdx, qword ptr [rbp + 2712]                    # v
                        call             rt_arg_stage@PLT
.Lx170_23:
                        mov              edi, 0                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx170_1
                        lea              rcx, [rip + .Lx170_3]
                        lea              rdx, [rip + .Lx170_4]
                                                                                        jmp   rax
.Lx170_3:
                        mov              qword ptr [rbp + 2664], rsp
                        mov              rax, qword ptr [rbp + 2656]
                        test             rax, rax
                                                                                        jne   .Lx170_5
                        mov              qword ptr [rbp + 2656], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx170_2
.Lx170_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx170_2
.Lx170_4:
                        mov              rax, qword ptr [rbp + 2656]
                        test             rax, rax
                                                                                        jne   .Lx170_6
                        mov              qword ptr [rbp + 2656], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx170_2
.Lx170_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx170_2
.Lx170_1:
                        call             rt_faildescr@PLT
.Lx170_2:
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx170_240
                        add              rsp, 3424
                                                                                        jmp   n41_lit_string_α
.Lx170_240:
                                                                                        jmp   n39_lit_string_α
n38_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2664]
                                                                                        jmp   qword ptr [rsp]
.Lx170_0:
                        .quad            .Lx170_0_s
.Lx170_0_s:
                        .string          "stream_property/2"
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:
                        mov              qword ptr [rbp + 2544], 2                      # result
                        mov              dword ptr [rbp + 2548], 9
                        mov              rax, qword ptr [rip + .Lx171_0]
                        mov              qword ptr [rbp + 2552], rax
                                                                                        jmp   n40_call_builtin_prolog_α
.Lx171_0:
                        .quad            .Lx171_0_s
.Lx171_0_s:
                        .string          "bug_input"
#-----------------------------------------------------------------------------------------------------------------------
n40_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 2528], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 2536], rax
                        .section         .rodata
.Lrkfn173:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn173]                         # fn
                        lea              rsi, [rbp + 2528]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2512], rax
                        mov              qword ptr [rbp + 2520], rdx
                        cmp              eax, 104
                                                                                        je    n128_call_builtin_prolog_α
                                                                                        jmp   n43_lit_string_α
n40_call_builtin_prolog_β:
                                                                                        jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:
                        mov              qword ptr [rbp + 2592], 2                      # result
                        mov              dword ptr [rbp + 2596], 19
                        mov              rax, qword ptr [rip + .Lx174_0]
                        mov              qword ptr [rbp + 2600], rax
                                                                                        jmp   n42_call_builtin_prolog_α
.Lx174_0:
                        .quad            .Lx174_0_s
.Lx174_0_s:
                        .string          "correctly_not_input"
#-----------------------------------------------------------------------------------------------------------------------
n42_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 2576], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 2584], rax
                        .section         .rodata
.Lrkfn176:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn176]                         # fn
                        lea              rsi, [rbp + 2576]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                        cmp              eax, 104
                                                                                        je    n128_call_builtin_prolog_α
                                                                                        jmp   n43_lit_string_α
n42_call_builtin_prolog_β:
                                                                                        jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_string_α:
                        mov              qword ptr [rbp + 2496], 2                      # result
                        mov              dword ptr [rbp + 2500], 0
                        mov              rax, qword ptr [rip + .Lx177_0]
                        mov              qword ptr [rbp + 2504], rax
                                                                                        jmp   n44_call_builtin_prolog_α
.Lx177_0:
                        .quad            .Lx177_0_s
.Lx177_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n44_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 2480], rax
                        mov              rax, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 2488], rax
                        .section         .rodata
.Lrkfn179:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn179]                         # fn
                        lea              rsi, [rbp + 2480]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx
                        cmp              eax, 104
                                                                                        je    n128_call_builtin_prolog_α
                                                                                        jmp   n45_var_ref_α
n44_call_builtin_prolog_β:
                                                                                        jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n45_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3440]
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx
                                                                                        jmp   n46_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:
                        mov              qword ptr [rbp + 2448], 2                      # result
                        mov              dword ptr [rbp + 2452], 4
                        mov              rax, qword ptr [rip + .Lx182_0]
                        mov              qword ptr [rbp + 2456], rax
                                                                                        jmp   n47_lit_string_α
.Lx182_0:
                        .quad            .Lx182_0_s
.Lx182_0_s:
                        .string          "type"
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_string_α:
                        mov              qword ptr [rbp + 2368], 2                      # result
                        mov              dword ptr [rbp + 2372], 4
                        mov              rax, qword ptr [rip + .Lx183_0]
                        mov              qword ptr [rbp + 2376], rax
                                                                                        jmp   n48_call_builtin_prolog_α
.Lx183_0:
                        .quad            .Lx183_0_s
.Lx183_0_s:
                        .string          "text"
#-----------------------------------------------------------------------------------------------------------------------
n48_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2448]
                        mov              qword ptr [rbp + 2400], rax
                        mov              rax, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 2408], rax
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 2424], rax
                        lea              rdi, [rbp + 2400]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx184_240
                        add              rsp, 3424
                                                                                        jmp   n52_lit_string_α
.Lx184_240:
                                                                                        jmp   n49_call_proc_staged_α
n48_call_builtin_prolog_β:
                        add              rsp, 3424
                                                                                        jmp   n52_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n49_call_proc_staged_α:
                        mov              qword ptr [rbp + 2320], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx186_20
                        mov              rax, qword ptr [rbp + 2352]
                        mov              rdx, qword ptr [rbp + 2360]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx186_21
.Lx186_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 2352]                    # v
                        mov              rdx, qword ptr [rbp + 2360]                    # v
                        call             rt_arg_stage@PLT
.Lx186_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx186_22
                        mov              rax, qword ptr [rbp + 2384]
                        mov              rdx, qword ptr [rbp + 2392]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx186_23
.Lx186_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 2384]                    # v
                        mov              rdx, qword ptr [rbp + 2392]                    # v
                        call             rt_arg_stage@PLT
.Lx186_23:
                        mov              edi, 0                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx186_1
                        lea              rcx, [rip + .Lx186_3]
                        lea              rdx, [rip + .Lx186_4]
                                                                                        jmp   rax
.Lx186_3:
                        mov              qword ptr [rbp + 2328], rsp
                        mov              rax, qword ptr [rbp + 2320]
                        test             rax, rax
                                                                                        jne   .Lx186_5
                        mov              qword ptr [rbp + 2320], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx186_2
.Lx186_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx186_2
.Lx186_4:
                        mov              rax, qword ptr [rbp + 2320]
                        test             rax, rax
                                                                                        jne   .Lx186_6
                        mov              qword ptr [rbp + 2320], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx186_2
.Lx186_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx186_2
.Lx186_1:
                        call             rt_faildescr@PLT
.Lx186_2:
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx186_240
                        add              rsp, 3424
                                                                                        jmp   n52_lit_string_α
.Lx186_240:
                                                                                        jmp   n50_lit_string_α
n49_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2328]
                                                                                        jmp   qword ptr [rsp]
.Lx186_0:
                        .quad            .Lx186_0_s
.Lx186_0_s:
                        .string          "stream_property/2"
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_string_α:
                        mov              qword ptr [rbp + 2208], 2                      # result
                        mov              dword ptr [rbp + 2212], 12
                        mov              rax, qword ptr [rip + .Lx187_0]
                        mov              qword ptr [rbp + 2216], rax
                                                                                        jmp   n51_call_builtin_prolog_α
.Lx187_0:
                        .quad            .Lx187_0_s
.Lx187_0_s:
                        .string          "type_text_ok"
#-----------------------------------------------------------------------------------------------------------------------
n51_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2200], rax
                        .section         .rodata
.Lrkfn189:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn189]                         # fn
                        lea              rsi, [rbp + 2192]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                        cmp              eax, 104
                                                                                        je    n128_call_builtin_prolog_α
                                                                                        jmp   n54_lit_string_α
n51_call_builtin_prolog_β:
                                                                                        jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_string_α:
                        mov              qword ptr [rbp + 2256], 2                      # result
                        mov              dword ptr [rbp + 2260], 13
                        mov              rax, qword ptr [rip + .Lx190_0]
                        mov              qword ptr [rbp + 2264], rax
                                                                                        jmp   n53_call_builtin_prolog_α
.Lx190_0:
                        .quad            .Lx190_0_s
.Lx190_0_s:
                        .string          "type_text_bad"
#-----------------------------------------------------------------------------------------------------------------------
n53_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 2248], rax
                        .section         .rodata
.Lrkfn192:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn192]                         # fn
                        lea              rsi, [rbp + 2240]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx
                        cmp              eax, 104
                                                                                        je    n128_call_builtin_prolog_α
                                                                                        jmp   n54_lit_string_α
n53_call_builtin_prolog_β:
                                                                                        jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:
                        mov              qword ptr [rbp + 2160], 2                      # result
                        mov              dword ptr [rbp + 2164], 0
                        mov              rax, qword ptr [rip + .Lx193_0]
                        mov              qword ptr [rbp + 2168], rax
                                                                                        jmp   n55_call_builtin_prolog_α
.Lx193_0:
                        .quad            .Lx193_0_s
.Lx193_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n55_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 2152], rax
                        .section         .rodata
.Lrkfn195:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn195]                         # fn
                        lea              rsi, [rbp + 2144]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                        cmp              eax, 104
                                                                                        je    n128_call_builtin_prolog_α
                                                                                        jmp   n56_var_ref_α
n55_call_builtin_prolog_β:
                                                                                        jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n56_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3440]
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                                                                                        jmp   n57_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_string_α:
                        mov              qword ptr [rbp + 2112], 2                      # result
                        mov              dword ptr [rbp + 2116], 9
                        mov              rax, qword ptr [rip + .Lx198_0]
                        mov              qword ptr [rbp + 2120], rax
                                                                                        jmp   n58_var_ref_α
.Lx198_0:
                        .quad            .Lx198_0_s
.Lx198_0_s:
                        .string          "file_name"
#-----------------------------------------------------------------------------------------------------------------------
n58_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3456]
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                                                                                        jmp   n59_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n59_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 2072], rax
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 2088], rax
                        lea              rdi, [rbp + 2064]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx201_240
                        add              rsp, 3424
                                                                                        jmp   n65_lit_string_α
.Lx201_240:
                                                                                        jmp   n60_call_proc_staged_α
n59_call_builtin_prolog_β:
                        add              rsp, 3424
                                                                                        jmp   n65_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n60_call_proc_staged_α:
                        mov              qword ptr [rbp + 1984], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx203_20
                        mov              rax, qword ptr [rbp + 2016]
                        mov              rdx, qword ptr [rbp + 2024]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx203_21
.Lx203_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 2016]                    # v
                        mov              rdx, qword ptr [rbp + 2024]                    # v
                        call             rt_arg_stage@PLT
.Lx203_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx203_22
                        mov              rax, qword ptr [rbp + 2048]
                        mov              rdx, qword ptr [rbp + 2056]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx203_23
.Lx203_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 2048]                    # v
                        mov              rdx, qword ptr [rbp + 2056]                    # v
                        call             rt_arg_stage@PLT
.Lx203_23:
                        mov              edi, 0                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx203_1
                        lea              rcx, [rip + .Lx203_3]
                        lea              rdx, [rip + .Lx203_4]
                                                                                        jmp   rax
.Lx203_3:
                        mov              qword ptr [rbp + 1992], rsp
                        mov              rax, qword ptr [rbp + 1984]
                        test             rax, rax
                                                                                        jne   .Lx203_5
                        mov              qword ptr [rbp + 1984], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx203_2
.Lx203_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx203_2
.Lx203_4:
                        mov              rax, qword ptr [rbp + 1984]
                        test             rax, rax
                                                                                        jne   .Lx203_6
                        mov              qword ptr [rbp + 1984], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx203_2
.Lx203_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx203_2
.Lx203_1:
                        call             rt_faildescr@PLT
.Lx203_2:
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx203_240
                        add              rsp, 3424
                                                                                        jmp   n65_lit_string_α
.Lx203_240:
                                                                                        jmp   n61_var_ref_α
n60_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1992]
                                                                                        jmp   qword ptr [rsp]
.Lx203_0:
                        .quad            .Lx203_0_s
.Lx203_0_s:
                        .string          "stream_property/2"
#-----------------------------------------------------------------------------------------------------------------------
n61_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3456]
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx
                                                                                        jmp   n62_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n62_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1920]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1928]
                        mov              qword ptr [rbp + 1912], rax
                        .section         .rodata
.Lrkfn207:              .string          "$tt_atom"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn207]                         # fn
                        lea              rsi, [rbp + 1904]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                        cmp              eax, 104
                                                                                        je    n60_call_proc_staged_β
                                                                                        jmp   n63_lit_string_α
n62_call_builtin_prolog_β:
                                                                                        jmp   n60_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_string_α:
                        mov              qword ptr [rbp + 1824], 2                      # result
                        mov              dword ptr [rbp + 1828], 13
                        mov              rax, qword ptr [rip + .Lx208_0]
                        mov              qword ptr [rbp + 1832], rax
                                                                                        jmp   n64_call_builtin_prolog_α
.Lx208_0:
                        .quad            .Lx208_0_s
.Lx208_0_s:
                        .string          "has_file_name"
#-----------------------------------------------------------------------------------------------------------------------
n64_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1816], rax
                        .section         .rodata
.Lrkfn210:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn210]                         # fn
                        lea              rsi, [rbp + 1808]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                        cmp              eax, 104
                                                                                        je    n128_call_builtin_prolog_α
                                                                                        jmp   n67_lit_string_α
n64_call_builtin_prolog_β:
                                                                                        jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_string_α:
                        mov              qword ptr [rbp + 1872], 2                      # result
                        mov              dword ptr [rbp + 1876], 12
                        mov              rax, qword ptr [rip + .Lx211_0]
                        mov              qword ptr [rbp + 1880], rax
                                                                                        jmp   n66_call_builtin_prolog_α
.Lx211_0:
                        .quad            .Lx211_0_s
.Lx211_0_s:
                        .string          "no_file_name"
#-----------------------------------------------------------------------------------------------------------------------
n66_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 1864], rax
                        .section         .rodata
.Lrkfn213:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn213]                         # fn
                        lea              rsi, [rbp + 1856]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                        cmp              eax, 104
                                                                                        je    n128_call_builtin_prolog_α
                                                                                        jmp   n67_lit_string_α
n66_call_builtin_prolog_β:
                                                                                        jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_string_α:
                        mov              qword ptr [rbp + 1776], 2                      # result
                        mov              dword ptr [rbp + 1780], 0
                        mov              rax, qword ptr [rip + .Lx214_0]
                        mov              qword ptr [rbp + 1784], rax
                                                                                        jmp   n68_call_builtin_prolog_α
.Lx214_0:
                        .quad            .Lx214_0_s
.Lx214_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n68_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 1768], rax
                        .section         .rodata
.Lrkfn216:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn216]                         # fn
                        lea              rsi, [rbp + 1760]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                        cmp              eax, 104
                                                                                        je    n128_call_builtin_prolog_α
                                                                                        jmp   n69_var_ref_α
n68_call_builtin_prolog_β:
                                                                                        jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n69_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3440]
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                                                                                        jmp   n70_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_string_α:
                        mov              qword ptr [rbp + 1728], 2                      # result
                        mov              dword ptr [rbp + 1732], 4
                        mov              rax, qword ptr [rip + .Lx219_0]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n71_lit_string_α
.Lx219_0:
                        .quad            .Lx219_0_s
.Lx219_0_s:
                        .string          "mode"
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_string_α:
                        mov              qword ptr [rbp + 1648], 2                      # result
                        mov              dword ptr [rbp + 1652], 4
                        mov              rax, qword ptr [rip + .Lx220_0]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n72_call_builtin_prolog_α
.Lx220_0:
                        .quad            .Lx220_0_s
.Lx220_0_s:
                        .string          "read"
#-----------------------------------------------------------------------------------------------------------------------
n72_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1688], rax
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1704], rax
                        lea              rdi, [rbp + 1680]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx221_240
                        add              rsp, 3424
                                                                                        jmp   n76_lit_string_α
.Lx221_240:
                                                                                        jmp   n73_call_proc_staged_α
n72_call_builtin_prolog_β:
                        add              rsp, 3424
                                                                                        jmp   n76_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n73_call_proc_staged_α:
                        mov              qword ptr [rbp + 1600], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx223_20
                        mov              rax, qword ptr [rbp + 1632]
                        mov              rdx, qword ptr [rbp + 1640]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx223_21
.Lx223_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 1632]                    # v
                        mov              rdx, qword ptr [rbp + 1640]                    # v
                        call             rt_arg_stage@PLT
.Lx223_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx223_22
                        mov              rax, qword ptr [rbp + 1664]
                        mov              rdx, qword ptr [rbp + 1672]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx223_23
.Lx223_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 1664]                    # v
                        mov              rdx, qword ptr [rbp + 1672]                    # v
                        call             rt_arg_stage@PLT
.Lx223_23:
                        mov              edi, 0                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx223_1
                        lea              rcx, [rip + .Lx223_3]
                        lea              rdx, [rip + .Lx223_4]
                                                                                        jmp   rax
.Lx223_3:
                        mov              qword ptr [rbp + 1608], rsp
                        mov              rax, qword ptr [rbp + 1600]
                        test             rax, rax
                                                                                        jne   .Lx223_5
                        mov              qword ptr [rbp + 1600], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx223_2
.Lx223_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx223_2
.Lx223_4:
                        mov              rax, qword ptr [rbp + 1600]
                        test             rax, rax
                                                                                        jne   .Lx223_6
                        mov              qword ptr [rbp + 1600], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx223_2
.Lx223_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx223_2
.Lx223_1:
                        call             rt_faildescr@PLT
.Lx223_2:
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx223_240
                        add              rsp, 3424
                                                                                        jmp   n76_lit_string_α
.Lx223_240:
                                                                                        jmp   n74_lit_string_α
n73_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1608]
                                                                                        jmp   qword ptr [rsp]
.Lx223_0:
                        .quad            .Lx223_0_s
.Lx223_0_s:
                        .string          "stream_property/2"
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_string_α:
                        mov              qword ptr [rbp + 1488], 2                      # result
                        mov              dword ptr [rbp + 1492], 8
                        mov              rax, qword ptr [rip + .Lx224_0]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n75_call_builtin_prolog_α
.Lx224_0:
                        .quad            .Lx224_0_s
.Lx224_0_s:
                        .string          "bug_read"
#-----------------------------------------------------------------------------------------------------------------------
n75_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1480], rax
                        .section         .rodata
.Lrkfn226:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn226]                         # fn
                        lea              rsi, [rbp + 1472]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        cmp              eax, 104
                                                                                        je    n128_call_builtin_prolog_α
                                                                                        jmp   n78_lit_string_α
n75_call_builtin_prolog_β:
                                                                                        jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_string_α:
                        mov              qword ptr [rbp + 1536], 2                      # result
                        mov              dword ptr [rbp + 1540], 18
                        mov              rax, qword ptr [rip + .Lx227_0]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   n77_call_builtin_prolog_α
.Lx227_0:
                        .quad            .Lx227_0_s
.Lx227_0_s:
                        .string          "correctly_not_read"
#-----------------------------------------------------------------------------------------------------------------------
n77_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1528], rax
                        .section         .rodata
.Lrkfn229:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn229]                         # fn
                        lea              rsi, [rbp + 1520]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        cmp              eax, 104
                                                                                        je    n128_call_builtin_prolog_α
                                                                                        jmp   n78_lit_string_α
n77_call_builtin_prolog_β:
                                                                                        jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_string_α:
                        mov              qword ptr [rbp + 1440], 2                      # result
                        mov              dword ptr [rbp + 1444], 0
                        mov              rax, qword ptr [rip + .Lx230_0]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n79_call_builtin_prolog_α
.Lx230_0:
                        .quad            .Lx230_0_s
.Lx230_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n79_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1432], rax
                        .section         .rodata
.Lrkfn232:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn232]                         # fn
                        lea              rsi, [rbp + 1424]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                        cmp              eax, 104
                                                                                        je    n128_call_builtin_prolog_α
                                                                                        jmp   n80_var_α
n79_call_builtin_prolog_β:
                                                                                        jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n80_var_α:
                        mov              rax, qword ptr [rbp + 3440]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 3448]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n81_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_string_α:
                        mov              qword ptr [rbp + 1392], 2                      # result
                        mov              dword ptr [rbp + 1396], 5
                        mov              rax, qword ptr [rip + .Lx235_0]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n82_call_builtin_prolog_α
.Lx235_0:
                        .quad            .Lx235_0_s
.Lx235_0_s:
                        .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n82_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1352], rax
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1368], rax
                        .section         .rodata
.Lrkfn237:              .string          "$write2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn237]                         # fn
                        lea              rsi, [rbp + 1344]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                        cmp              eax, 104
                                                                                        je    n128_call_builtin_prolog_α
                                                                                        jmp   n83_var_ref_α
n82_call_builtin_prolog_β:
                                                                                        jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n83_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3440]
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                                                                                        jmp   n84_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n84_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1304], rax
                        .section         .rodata
.Lrkfn241:              .string          "$close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn241]                         # fn
                        lea              rsi, [rbp + 1296]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        cmp              eax, 104
                                                                                        je    n128_call_builtin_prolog_α
                                                                                        jmp   n85_lit_string_α
n84_call_builtin_prolog_β:
                                                                                        jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_string_α:
                        mov              qword ptr [rbp + 1232], 2                      # result
                        mov              dword ptr [rbp + 1236], 17
                        mov              rax, qword ptr [rip + .Lx242_0]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n86_lit_string_α
.Lx242_0:
                        .quad            .Lx242_0_s
.Lx242_0_s:
                        .string          "/tmp/rung67_a.txt"
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_string_α:
                        mov              qword ptr [rbp + 1248], 2                      # result
                        mov              dword ptr [rbp + 1252], 4
                        mov              rax, qword ptr [rip + .Lx243_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n87_var_ref_α
.Lx243_0:
                        .quad            .Lx243_0_s
.Lx243_0_s:
                        .string          "read"
#-----------------------------------------------------------------------------------------------------------------------
n87_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3424]
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                                                                                        jmp   n88_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n88_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1192], rax
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1208], rax
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1224], rax
                        .section         .rodata
.Lrkfn247:              .string          "$open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn247]                         # fn
                        lea              rsi, [rbp + 1184]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              eax, 104
                                                                                        je    n128_call_builtin_prolog_α
                                                                                        jmp   n89_var_ref_α
n88_call_builtin_prolog_β:
                                                                                        jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n89_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3424]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n90_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_string_α:
                        mov              qword ptr [rbp + 1152], 2                      # result
                        mov              dword ptr [rbp + 1156], 4
                        mov              rax, qword ptr [rip + .Lx250_0]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n91_lit_string_α
.Lx250_0:
                        .quad            .Lx250_0_s
.Lx250_0_s:
                        .string          "mode"
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_string_α:
                        mov              qword ptr [rbp + 1072], 2                      # result
                        mov              dword ptr [rbp + 1076], 4
                        mov              rax, qword ptr [rip + .Lx251_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n92_call_builtin_prolog_α
.Lx251_0:
                        .quad            .Lx251_0_s
.Lx251_0_s:
                        .string          "read"
#-----------------------------------------------------------------------------------------------------------------------
n92_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1112], rax
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1128], rax
                        lea              rdi, [rbp + 1104]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx252_240
                        add              rsp, 3424
                                                                                        jmp   n96_lit_string_α
.Lx252_240:
                                                                                        jmp   n93_call_proc_staged_α
n92_call_builtin_prolog_β:
                        add              rsp, 3424
                                                                                        jmp   n96_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n93_call_proc_staged_α:
                        mov              qword ptr [rbp + 1024], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx254_20
                        mov              rax, qword ptr [rbp + 1056]
                        mov              rdx, qword ptr [rbp + 1064]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx254_21
.Lx254_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 1056]                    # v
                        mov              rdx, qword ptr [rbp + 1064]                    # v
                        call             rt_arg_stage@PLT
.Lx254_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx254_22
                        mov              rax, qword ptr [rbp + 1088]
                        mov              rdx, qword ptr [rbp + 1096]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx254_23
.Lx254_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 1088]                    # v
                        mov              rdx, qword ptr [rbp + 1096]                    # v
                        call             rt_arg_stage@PLT
.Lx254_23:
                        mov              edi, 0                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx254_1
                        lea              rcx, [rip + .Lx254_3]
                        lea              rdx, [rip + .Lx254_4]
                                                                                        jmp   rax
.Lx254_3:
                        mov              qword ptr [rbp + 1032], rsp
                        mov              rax, qword ptr [rbp + 1024]
                        test             rax, rax
                                                                                        jne   .Lx254_5
                        mov              qword ptr [rbp + 1024], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx254_2
.Lx254_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx254_2
.Lx254_4:
                        mov              rax, qword ptr [rbp + 1024]
                        test             rax, rax
                                                                                        jne   .Lx254_6
                        mov              qword ptr [rbp + 1024], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx254_2
.Lx254_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx254_2
.Lx254_1:
                        call             rt_faildescr@PLT
.Lx254_2:
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx254_240
                        add              rsp, 3424
                                                                                        jmp   n96_lit_string_α
.Lx254_240:
                                                                                        jmp   n94_lit_string_α
n93_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1032]
                                                                                        jmp   qword ptr [rsp]
.Lx254_0:
                        .quad            .Lx254_0_s
.Lx254_0_s:
                        .string          "stream_property/2"
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_string_α:
                        mov              qword ptr [rbp + 912], 2                       # result
                        mov              dword ptr [rbp + 916], 12
                        mov              rax, qword ptr [rip + .Lx255_0]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n95_call_builtin_prolog_α
.Lx255_0:
                        .quad            .Lx255_0_s
.Lx255_0_s:
                        .string          "read_mode_ok"
#-----------------------------------------------------------------------------------------------------------------------
n95_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 904], rax
                        .section         .rodata
.Lrkfn257:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn257]                         # fn
                        lea              rsi, [rbp + 896]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 104
                                                                                        je    n128_call_builtin_prolog_α
                                                                                        jmp   n98_lit_string_α
n95_call_builtin_prolog_β:
                                                                                        jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_string_α:
                        mov              qword ptr [rbp + 960], 2                       # result
                        mov              dword ptr [rbp + 964], 13
                        mov              rax, qword ptr [rip + .Lx258_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n97_call_builtin_prolog_α
.Lx258_0:
                        .quad            .Lx258_0_s
.Lx258_0_s:
                        .string          "read_mode_bad"
#-----------------------------------------------------------------------------------------------------------------------
n97_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 952], rax
                        .section         .rodata
.Lrkfn260:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn260]                         # fn
                        lea              rsi, [rbp + 944]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              eax, 104
                                                                                        je    n128_call_builtin_prolog_α
                                                                                        jmp   n98_lit_string_α
n97_call_builtin_prolog_β:
                                                                                        jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_string_α:
                        mov              qword ptr [rbp + 864], 2                       # result
                        mov              dword ptr [rbp + 868], 0
                        mov              rax, qword ptr [rip + .Lx261_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n99_call_builtin_prolog_α
.Lx261_0:
                        .quad            .Lx261_0_s
.Lx261_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n99_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 856], rax
                        .section         .rodata
.Lrkfn263:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn263]                         # fn
                        lea              rsi, [rbp + 848]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 104
                                                                                        je    n128_call_builtin_prolog_α
                                                                                        jmp   n100_var_ref_α
n99_call_builtin_prolog_β:
                                                                                        jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n100_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3424]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n101_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_string_α:
                        mov              qword ptr [rbp + 816], 2                       # result
                        mov              dword ptr [rbp + 820], 5
                        mov              rax, qword ptr [rip + .Lx266_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n102_call_proc_staged_α
.Lx266_0:
                        .quad            .Lx266_0_s
.Lx266_0_s:
                        .string          "input"
#-----------------------------------------------------------------------------------------------------------------------
n102_call_proc_staged_α:
                        mov              qword ptr [rbp + 768], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx268_20
                        mov              rax, qword ptr [rbp + 800]
                        mov              rdx, qword ptr [rbp + 808]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx268_21
.Lx268_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 800]                     # v
                        mov              rdx, qword ptr [rbp + 808]                     # v
                        call             rt_arg_stage@PLT
.Lx268_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx268_22
                        mov              rax, qword ptr [rbp + 816]
                        mov              rdx, qword ptr [rbp + 824]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx268_23
.Lx268_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 816]                     # v
                        mov              rdx, qword ptr [rbp + 824]                     # v
                        call             rt_arg_stage@PLT
.Lx268_23:
                        mov              edi, 0                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx268_1
                        lea              rcx, [rip + .Lx268_3]
                        lea              rdx, [rip + .Lx268_4]
                                                                                        jmp   rax
.Lx268_3:
                        mov              qword ptr [rbp + 776], rsp
                        mov              rax, qword ptr [rbp + 768]
                        test             rax, rax
                                                                                        jne   .Lx268_5
                        mov              qword ptr [rbp + 768], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx268_2
.Lx268_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx268_2
.Lx268_4:
                        mov              rax, qword ptr [rbp + 768]
                        test             rax, rax
                                                                                        jne   .Lx268_6
                        mov              qword ptr [rbp + 768], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx268_2
.Lx268_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx268_2
.Lx268_1:
                        call             rt_faildescr@PLT
.Lx268_2:
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx268_240
                        add              rsp, 3424
                                                                                        jmp   n105_lit_string_α
.Lx268_240:
                                                                                        jmp   n103_lit_string_α
n102_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 776]
                                                                                        jmp   qword ptr [rsp]
.Lx268_0:
                        .quad            .Lx268_0_s
.Lx268_0_s:
                        .string          "stream_property/2"
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_string_α:
                        mov              qword ptr [rbp + 656], 2                       # result
                        mov              dword ptr [rbp + 660], 13
                        mov              rax, qword ptr [rip + .Lx269_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n104_call_builtin_prolog_α
.Lx269_0:
                        .quad            .Lx269_0_s
.Lx269_0_s:
                        .string          "read_is_input"
#-----------------------------------------------------------------------------------------------------------------------
n104_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 648], rax
                        .section         .rodata
.Lrkfn271:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn271]                         # fn
                        lea              rsi, [rbp + 640]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 104
                                                                                        je    n128_call_builtin_prolog_α
                                                                                        jmp   n107_lit_string_α
n104_call_builtin_prolog_β:
                                                                                        jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_string_α:
                        mov              qword ptr [rbp + 704], 2                       # result
                        mov              dword ptr [rbp + 708], 14
                        mov              rax, qword ptr [rip + .Lx272_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n106_call_builtin_prolog_α
.Lx272_0:
                        .quad            .Lx272_0_s
.Lx272_0_s:
                        .string          "read_not_input"
#-----------------------------------------------------------------------------------------------------------------------
n106_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 696], rax
                        .section         .rodata
.Lrkfn274:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn274]                         # fn
                        lea              rsi, [rbp + 688]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 104
                                                                                        je    n128_call_builtin_prolog_α
                                                                                        jmp   n107_lit_string_α
n106_call_builtin_prolog_β:
                                                                                        jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_string_α:
                        mov              qword ptr [rbp + 608], 2                       # result
                        mov              dword ptr [rbp + 612], 0
                        mov              rax, qword ptr [rip + .Lx275_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n108_call_builtin_prolog_α
.Lx275_0:
                        .quad            .Lx275_0_s
.Lx275_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n108_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 600], rax
                        .section         .rodata
.Lrkfn277:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn277]                         # fn
                        lea              rsi, [rbp + 592]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 104
                                                                                        je    n128_call_builtin_prolog_α
                                                                                        jmp   n109_var_ref_α
n108_call_builtin_prolog_β:
                                                                                        jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n109_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3424]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n110_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_string_α:
                        mov              qword ptr [rbp + 560], 2                       # result
                        mov              dword ptr [rbp + 564], 13
                        mov              rax, qword ptr [rip + .Lx280_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n111_lit_string_α
.Lx280_0:
                        .quad            .Lx280_0_s
.Lx280_0_s:
                        .string          "end_of_stream"
#-----------------------------------------------------------------------------------------------------------------------
n111_lit_string_α:
                        mov              qword ptr [rbp + 480], 2                       # result
                        mov              dword ptr [rbp + 484], 3
                        mov              rax, qword ptr [rip + .Lx281_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n112_call_builtin_prolog_α
.Lx281_0:
                        .quad            .Lx281_0_s
.Lx281_0_s:
                        .string          "not"
#-----------------------------------------------------------------------------------------------------------------------
n112_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 536], rax
                        lea              rdi, [rbp + 512]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx282_240
                        add              rsp, 3424
                                                                                        jmp   n116_lit_string_α
.Lx282_240:
                                                                                        jmp   n113_call_proc_staged_α
n112_call_builtin_prolog_β:
                        add              rsp, 3424
                                                                                        jmp   n116_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n113_call_proc_staged_α:
                        mov              qword ptr [rbp + 432], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx284_20
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx284_21
.Lx284_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 464]                     # v
                        mov              rdx, qword ptr [rbp + 472]                     # v
                        call             rt_arg_stage@PLT
.Lx284_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx284_22
                        mov              rax, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx284_23
.Lx284_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 496]                     # v
                        mov              rdx, qword ptr [rbp + 504]                     # v
                        call             rt_arg_stage@PLT
.Lx284_23:
                        mov              edi, 0                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx284_1
                        lea              rcx, [rip + .Lx284_3]
                        lea              rdx, [rip + .Lx284_4]
                                                                                        jmp   rax
.Lx284_3:
                        mov              qword ptr [rbp + 440], rsp
                        mov              rax, qword ptr [rbp + 432]
                        test             rax, rax
                                                                                        jne   .Lx284_5
                        mov              qword ptr [rbp + 432], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx284_2
.Lx284_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx284_2
.Lx284_4:
                        mov              rax, qword ptr [rbp + 432]
                        test             rax, rax
                                                                                        jne   .Lx284_6
                        mov              qword ptr [rbp + 432], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx284_2
.Lx284_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx284_2
.Lx284_1:
                        call             rt_faildescr@PLT
.Lx284_2:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx284_240
                        add              rsp, 3424
                                                                                        jmp   n116_lit_string_α
.Lx284_240:
                                                                                        jmp   n114_lit_string_α
n113_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 440]
                                                                                        jmp   qword ptr [rsp]
.Lx284_0:
                        .quad            .Lx284_0_s
.Lx284_0_s:
                        .string          "stream_property/2"
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_string_α:
                        mov              qword ptr [rbp + 320], 2                       # result
                        mov              dword ptr [rbp + 324], 16
                        mov              rax, qword ptr [rip + .Lx285_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n115_call_builtin_prolog_α
.Lx285_0:
                        .quad            .Lx285_0_s
.Lx285_0_s:
                        .string          "nonempty_not_eof"
#-----------------------------------------------------------------------------------------------------------------------
n115_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 312], rax
                        .section         .rodata
.Lrkfn287:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn287]                         # fn
                        lea              rsi, [rbp + 304]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 104
                                                                                        je    n128_call_builtin_prolog_α
                                                                                        jmp   n118_lit_string_α
n115_call_builtin_prolog_β:
                                                                                        jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_string_α:
                        mov              qword ptr [rbp + 368], 2                       # result
                        mov              dword ptr [rbp + 372], 7
                        mov              rax, qword ptr [rip + .Lx288_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n117_call_builtin_prolog_α
.Lx288_0:
                        .quad            .Lx288_0_s
.Lx288_0_s:
                        .string          "eof_bad"
#-----------------------------------------------------------------------------------------------------------------------
n117_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 360], rax
                        .section         .rodata
.Lrkfn290:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn290]                         # fn
                        lea              rsi, [rbp + 352]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 104
                                                                                        je    n128_call_builtin_prolog_α
                                                                                        jmp   n118_lit_string_α
n117_call_builtin_prolog_β:
                                                                                        jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_string_α:
                        mov              qword ptr [rbp + 272], 2                       # result
                        mov              dword ptr [rbp + 276], 0
                        mov              rax, qword ptr [rip + .Lx291_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n119_call_builtin_prolog_α
.Lx291_0:
                        .quad            .Lx291_0_s
.Lx291_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n119_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 264], rax
                        .section         .rodata
.Lrkfn293:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn293]                         # fn
                        lea              rsi, [rbp + 256]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 104
                                                                                        je    n128_call_builtin_prolog_α
                                                                                        jmp   n120_var_ref_α
n119_call_builtin_prolog_β:
                                                                                        jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n120_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3424]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n121_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n121_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 216], rax
                        .section         .rodata
.Lrkfn297:              .string          "$close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn297]                         # fn
                        lea              rsi, [rbp + 208]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 104
                                                                                        je    n128_call_builtin_prolog_α
                                                                                        jmp   n122_lit_string_α
n121_call_builtin_prolog_β:
                                                                                        jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n122_lit_string_α:
                        mov              qword ptr [rbp + 176], 2                       # result
                        mov              dword ptr [rbp + 180], 4
                        mov              rax, qword ptr [rip + .Lx298_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n123_call_builtin_prolog_α
.Lx298_0:
                        .quad            .Lx298_0_s
.Lx298_0_s:
                        .string          "done"
#-----------------------------------------------------------------------------------------------------------------------
n123_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn300:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn300]                         # fn
                        lea              rsi, [rbp + 160]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 104
                                                                                        je    n128_call_builtin_prolog_α
                                                                                        jmp   n124_lit_string_α
n123_call_builtin_prolog_β:
                                                                                        jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_string_α:
                        mov              qword ptr [rbp + 128], 2                       # result
                        mov              dword ptr [rbp + 132], 0
                        mov              rax, qword ptr [rip + .Lx301_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n125_call_builtin_prolog_α
.Lx301_0:
                        .quad            .Lx301_0_s
.Lx301_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n125_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn303:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn303]                         # fn
                        lea              rsi, [rbp + 112]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 104
                                                                                        je    n128_call_builtin_prolog_α
                                                                                        jmp   n126_move_label_α
n125_call_builtin_prolog_β:
                                                                                        jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n126_move_label_α:
                        lea              rax, [rip + n128_call_builtin_prolog_α]
                        mov              qword ptr [rbp + 16], rax
                        add              rsp, 3424
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n127_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n127_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n128_call_builtin_prolog_α:
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
n128_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n127_disjunction_α
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
