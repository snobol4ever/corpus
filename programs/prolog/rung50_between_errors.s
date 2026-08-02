                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_between$2F3_α
proc_between$2F3_α:
proc_between$2F3_α_body:
                        lea              rax, [rip + n4_suspend_β]
                        mov              qword ptr [rbp + 192], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_var_ref_α:
                        sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n1_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n2_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n3_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 120], rax
                        mov              qword ptr [rbp + 128], 0
.Lx11_60:
                        .section         .rodata
.Lbynamegenfn4:         .string          "$between"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn4]                    # fn
                        lea              rsi, [rbp + 80]                                # args
                        mov              edx, 3                                         # nargs
                        lea              rcx, [rbp + 128]                               # resume
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx11_240
                        add              rsp, 48
                                                                                        jmp   proc_between$2F3_ω
.Lx11_240:
                                                                                        jmp   n4_suspend_α
n3_call_builtin_gen_β:
                                                                                        jmp   .Lx11_60
#-----------------------------------------------------------------------------------------------------------------------
n4_suspend_α:
                        lea              rax, [rip + n4_suspend_β]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 48
                                                                                        jmp   proc_between$2F3_γ
n4_suspend_β:
                                                                                        jmp   n3_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
proc_between$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_between$2F3_β:
                                                                                        jmp   qword ptr [rbp + 192]
#-----------------------------------------------------------------------------------------------------------------------
proc_between$2F3_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_between$2F3_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "between/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_between$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 208
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
n14_call_builtin_prolog_α:
                        sub              rsp, 2336
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
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx88_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx88_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx88_101
.Lx88_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx88_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx88_240
                        add              rsp, 2336
                                                                                        jmp   main_ω
.Lx88_240:
                                                                                        jmp   n15_lit_string_α
n14_call_builtin_prolog_β:
                        add              rsp, 2336
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:
                        mov              qword ptr [rbp + 2000], 2                      # result
                        mov              dword ptr [rbp + 2004], 5
                        mov              rax, qword ptr [rip + .Lx89_0]
                        mov              qword ptr [rbp + 2008], rax
                                                                                        jmp   n16_var_ref_α
.Lx89_0:
                        .quad            .Lx89_0_s
.Lx89_0_s:
                        .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n16_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2544]
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                                                                                        jmp   n17_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n17_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2560]
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                                                                                        jmp   n18_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n18_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 1944], rax
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 1960], rax
                        mov              rax, qword ptr [rbp + 1904]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 1976], rax
                        lea              rdi, [rbp + 1936]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx
                        cmp              eax, 104
                                                                                        je    n87_call_builtin_prolog_α
                                                                                        jmp   n19_call_builtin_prolog_α
n18_call_builtin_prolog_β:
                                                                                        jmp   n87_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n19_call_builtin_prolog_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx95_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx95_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx95_101
.Lx95_100:
                        lea              rdi, [rbp + 2032]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx95_101:
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                        cmp              eax, 104
                                                                                        je    n87_call_builtin_prolog_α
                                                                                        jmp   n20_lit_string_α
n19_call_builtin_prolog_β:
                                                                                        jmp   n87_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:
                        mov              qword ptr [rbp + 2288], 2                      # result
                        mov              dword ptr [rbp + 2292], 1
                        mov              rax, qword ptr [rip + .Lx96_0]
                        mov              qword ptr [rbp + 2296], rax
                                                                                        jmp   n21_lit_integer_α
.Lx96_0:
                        .quad            .Lx96_0_s
.Lx96_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_integer_α:
                        mov              qword ptr [rbp + 2304], 3                      # result
                        mov              rax, qword ptr [rip + .Lx97_0]
                        mov              qword ptr [rbp + 2312], rax
                                                                                        jmp   n22_var_ref_α
.Lx97_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n22_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2576]
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                                                                                        jmp   n23_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n23_call_proc_staged_α:
                        mov              qword ptr [rbp + 2256], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx101_20
                        mov              rax, qword ptr [rbp + 2288]
                        mov              rdx, qword ptr [rbp + 2296]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx101_21
.Lx101_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 2288]                    # v
                        mov              rdx, qword ptr [rbp + 2296]                    # v
                        call             rt_arg_stage@PLT
.Lx101_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx101_22
                        mov              rax, qword ptr [rbp + 2304]
                        mov              rdx, qword ptr [rbp + 2312]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx101_23
.Lx101_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 2304]                    # v
                        mov              rdx, qword ptr [rbp + 2312]                    # v
                        call             rt_arg_stage@PLT
.Lx101_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx101_24
                        mov              rax, qword ptr [rbp + 2320]
                        mov              rdx, qword ptr [rbp + 2328]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx101_25
.Lx101_24:
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [rbp + 2320]                    # v
                        mov              rdx, qword ptr [rbp + 2328]                    # v
                        call             rt_arg_stage@PLT
.Lx101_25:
                        mov              edi, 0                                         # idx
                        mov              esi, 3                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx101_1
                        lea              rcx, [rip + .Lx101_3]
                        lea              rdx, [rip + .Lx101_4]
                                                                                        jmp   rax
.Lx101_3:
                        mov              qword ptr [rbp + 2264], rsp
                        mov              rax, qword ptr [rbp + 2256]
                        test             rax, rax
                                                                                        jne   .Lx101_5
                        mov              qword ptr [rbp + 2256], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx101_2
.Lx101_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx101_2
.Lx101_4:
                        mov              rax, qword ptr [rbp + 2256]
                        test             rax, rax
                                                                                        jne   .Lx101_6
                        mov              qword ptr [rbp + 2256], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx101_2
.Lx101_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx101_2
.Lx101_1:
                        call             rt_faildescr@PLT
.Lx101_2:
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx101_240
                        add              rsp, 2336
                                                                                        jmp   n24_call_builtin_prolog_α
.Lx101_240:
                                                                                        jmp   n29_lit_string_α
n23_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2264]
                                                                                        jmp   qword ptr [rsp]
.Lx101_0:
                        .quad            .Lx101_0_s
.Lx101_0_s:
                        .string          "between/3"
#-----------------------------------------------------------------------------------------------------------------------
n24_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 2072], rax
                        mov              rax, qword ptr [rbp + 1920]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 1928]
                        mov              qword ptr [rbp + 2088], rax
                        .section         .rodata
.Lrkfn103:              .string          "$catch_check"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn103]                         # fn
                        lea              rsi, [rbp + 2064]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                        cmp              eax, 104
                                                                                        je    n87_call_builtin_prolog_α
                                                                                        jmp   n25_var_α
n24_call_builtin_prolog_β:
                                                                                        jmp   n87_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n25_var_α:
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 2184], rax
                                                                                        jmp   n26_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n26_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 2168], rax
                        .section         .rodata
.Lrkfn107:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn107]                         # fn
                        lea              rsi, [rbp + 2160]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                        cmp              eax, 104
                                                                                        je    n24_call_builtin_prolog_α
                                                                                        jmp   n27_lit_string_α
n26_call_builtin_prolog_β:
                                                                                        jmp   n24_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:
                        mov              qword ptr [rbp + 2128], 2                      # result
                        mov              dword ptr [rbp + 2132], 0
                        mov              rax, qword ptr [rip + .Lx108_0]
                        mov              qword ptr [rbp + 2136], rax
                                                                                        jmp   n28_call_builtin_prolog_α
.Lx108_0:
                        .quad            .Lx108_0_s
.Lx108_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n28_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 2112], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2120], rax
                        .section         .rodata
.Lrkfn110:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn110]                         # fn
                        lea              rsi, [rbp + 2112]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                        cmp              eax, 104
                                                                                        je    n24_call_builtin_prolog_α
                                                                                        jmp   n29_lit_string_α
n28_call_builtin_prolog_β:
                                                                                        jmp   n24_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_string_α:
                        mov              qword ptr [rbp + 1552], 2                      # result
                        mov              dword ptr [rbp + 1556], 5
                        mov              rax, qword ptr [rip + .Lx111_0]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n30_var_ref_α
.Lx111_0:
                        .quad            .Lx111_0_s
.Lx111_0_s:
                        .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n30_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2496]
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                                                                                        jmp   n31_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n31_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2512]
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                                                                                        jmp   n32_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n32_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1496], rax
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1512], rax
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1528], rax
                        lea              rdi, [rbp + 1488]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                        cmp              eax, 104
                                                                                        je    n87_call_builtin_prolog_α
                                                                                        jmp   n33_call_builtin_prolog_α
n32_call_builtin_prolog_β:
                                                                                        jmp   n87_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n33_call_builtin_prolog_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx117_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx117_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx117_101
.Lx117_100:
                        lea              rdi, [rbp + 1584]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx117_101:
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                        cmp              eax, 104
                                                                                        je    n87_call_builtin_prolog_α
                                                                                        jmp   n34_lit_integer_α
n33_call_builtin_prolog_β:
                                                                                        jmp   n87_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_integer_α:
                        mov              qword ptr [rbp + 1840], 3                      # result
                        mov              rax, qword ptr [rip + .Lx118_0]
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   n35_lit_string_α
.Lx118_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:
                        mov              qword ptr [rbp + 1856], 2                      # result
                        mov              dword ptr [rbp + 1860], 1
                        mov              rax, qword ptr [rip + .Lx119_0]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n36_var_ref_α
.Lx119_0:
                        .quad            .Lx119_0_s
.Lx119_0_s:
                        .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n36_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2528]
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                                                                                        jmp   n37_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n37_call_proc_staged_α:
                        mov              qword ptr [rbp + 1808], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx123_20
                        mov              rax, qword ptr [rbp + 1840]
                        mov              rdx, qword ptr [rbp + 1848]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx123_21
.Lx123_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 1840]                    # v
                        mov              rdx, qword ptr [rbp + 1848]                    # v
                        call             rt_arg_stage@PLT
.Lx123_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx123_22
                        mov              rax, qword ptr [rbp + 1856]
                        mov              rdx, qword ptr [rbp + 1864]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx123_23
.Lx123_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 1856]                    # v
                        mov              rdx, qword ptr [rbp + 1864]                    # v
                        call             rt_arg_stage@PLT
.Lx123_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx123_24
                        mov              rax, qword ptr [rbp + 1872]
                        mov              rdx, qword ptr [rbp + 1880]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx123_25
.Lx123_24:
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [rbp + 1872]                    # v
                        mov              rdx, qword ptr [rbp + 1880]                    # v
                        call             rt_arg_stage@PLT
.Lx123_25:
                        mov              edi, 0                                         # idx
                        mov              esi, 3                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx123_1
                        lea              rcx, [rip + .Lx123_3]
                        lea              rdx, [rip + .Lx123_4]
                                                                                        jmp   rax
.Lx123_3:
                        mov              qword ptr [rbp + 1816], rsp
                        mov              rax, qword ptr [rbp + 1808]
                        test             rax, rax
                                                                                        jne   .Lx123_5
                        mov              qword ptr [rbp + 1808], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx123_2
.Lx123_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx123_2
.Lx123_4:
                        mov              rax, qword ptr [rbp + 1808]
                        test             rax, rax
                                                                                        jne   .Lx123_6
                        mov              qword ptr [rbp + 1808], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx123_2
.Lx123_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx123_2
.Lx123_1:
                        call             rt_faildescr@PLT
.Lx123_2:
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx123_240
                        add              rsp, 2336
                                                                                        jmp   n38_call_builtin_prolog_α
.Lx123_240:
                                                                                        jmp   n43_lit_string_α
n37_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1816]
                                                                                        jmp   qword ptr [rsp]
.Lx123_0:
                        .quad            .Lx123_0_s
.Lx123_0_s:
                        .string          "between/3"
#-----------------------------------------------------------------------------------------------------------------------
n38_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1624], rax
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1640], rax
                        .section         .rodata
.Lrkfn125:              .string          "$catch_check"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn125]                         # fn
                        lea              rsi, [rbp + 1616]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                        cmp              eax, 104
                                                                                        je    n87_call_builtin_prolog_α
                                                                                        jmp   n39_var_α
n38_call_builtin_prolog_β:
                                                                                        jmp   n87_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n39_var_α:
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n40_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n40_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1720], rax
                        .section         .rodata
.Lrkfn129:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn129]                         # fn
                        lea              rsi, [rbp + 1712]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                        cmp              eax, 104
                                                                                        je    n38_call_builtin_prolog_α
                                                                                        jmp   n41_lit_string_α
n40_call_builtin_prolog_β:
                                                                                        jmp   n38_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:
                        mov              qword ptr [rbp + 1680], 2                      # result
                        mov              dword ptr [rbp + 1684], 0
                        mov              rax, qword ptr [rip + .Lx130_0]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n42_call_builtin_prolog_α
.Lx130_0:
                        .quad            .Lx130_0_s
.Lx130_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n42_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1672], rax
                        .section         .rodata
.Lrkfn132:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn132]                         # fn
                        lea              rsi, [rbp + 1664]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                        cmp              eax, 104
                                                                                        je    n38_call_builtin_prolog_α
                                                                                        jmp   n43_lit_string_α
n42_call_builtin_prolog_β:
                                                                                        jmp   n38_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_string_α:
                        mov              qword ptr [rbp + 1104], 2                      # result
                        mov              dword ptr [rbp + 1108], 5
                        mov              rax, qword ptr [rip + .Lx133_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n44_var_ref_α
.Lx133_0:
                        .quad            .Lx133_0_s
.Lx133_0_s:
                        .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n44_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2432]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n45_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n45_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2448]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n46_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n46_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1048], rax
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 1064], rax
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 1080], rax
                        lea              rdi, [rbp + 1040]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              eax, 104
                                                                                        je    n87_call_builtin_prolog_α
                                                                                        jmp   n47_call_builtin_prolog_α
n46_call_builtin_prolog_β:
                                                                                        jmp   n87_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n47_call_builtin_prolog_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx139_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx139_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx139_101
.Lx139_100:
                        lea              rdi, [rbp + 1136]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx139_101:
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        cmp              eax, 104
                                                                                        je    n87_call_builtin_prolog_α
                                                                                        jmp   n48_var_ref_α
n47_call_builtin_prolog_β:
                                                                                        jmp   n87_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n48_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2464]
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                                                                                        jmp   n49_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_integer_α:
                        mov              qword ptr [rbp + 1408], 3                      # result
                        mov              rax, qword ptr [rip + .Lx142_0]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n50_var_ref_α
.Lx142_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n50_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2480]
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                                                                                        jmp   n51_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n51_call_proc_staged_α:
                        mov              qword ptr [rbp + 1360], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx146_20
                        mov              rax, qword ptr [rbp + 1392]
                        mov              rdx, qword ptr [rbp + 1400]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx146_21
.Lx146_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 1392]                    # v
                        mov              rdx, qword ptr [rbp + 1400]                    # v
                        call             rt_arg_stage@PLT
.Lx146_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx146_22
                        mov              rax, qword ptr [rbp + 1408]
                        mov              rdx, qword ptr [rbp + 1416]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx146_23
.Lx146_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 1408]                    # v
                        mov              rdx, qword ptr [rbp + 1416]                    # v
                        call             rt_arg_stage@PLT
.Lx146_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx146_24
                        mov              rax, qword ptr [rbp + 1424]
                        mov              rdx, qword ptr [rbp + 1432]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx146_25
.Lx146_24:
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [rbp + 1424]                    # v
                        mov              rdx, qword ptr [rbp + 1432]                    # v
                        call             rt_arg_stage@PLT
.Lx146_25:
                        mov              edi, 0                                         # idx
                        mov              esi, 3                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx146_1
                        lea              rcx, [rip + .Lx146_3]
                        lea              rdx, [rip + .Lx146_4]
                                                                                        jmp   rax
.Lx146_3:
                        mov              qword ptr [rbp + 1368], rsp
                        mov              rax, qword ptr [rbp + 1360]
                        test             rax, rax
                                                                                        jne   .Lx146_5
                        mov              qword ptr [rbp + 1360], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx146_2
.Lx146_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx146_2
.Lx146_4:
                        mov              rax, qword ptr [rbp + 1360]
                        test             rax, rax
                                                                                        jne   .Lx146_6
                        mov              qword ptr [rbp + 1360], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx146_2
.Lx146_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx146_2
.Lx146_1:
                        call             rt_faildescr@PLT
.Lx146_2:
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx146_240
                        add              rsp, 2336
                                                                                        jmp   n52_call_builtin_prolog_α
.Lx146_240:
                                                                                        jmp   n57_lit_string_α
n51_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1368]
                                                                                        jmp   qword ptr [rsp]
.Lx146_0:
                        .quad            .Lx146_0_s
.Lx146_0_s:
                        .string          "between/3"
#-----------------------------------------------------------------------------------------------------------------------
n52_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1176], rax
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1192], rax
                        .section         .rodata
.Lrkfn148:              .string          "$catch_check"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn148]                         # fn
                        lea              rsi, [rbp + 1168]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              eax, 104
                                                                                        je    n87_call_builtin_prolog_α
                                                                                        jmp   n53_var_α
n52_call_builtin_prolog_β:
                                                                                        jmp   n87_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n53_var_α:
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n54_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n54_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1272], rax
                        .section         .rodata
.Lrkfn152:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn152]                         # fn
                        lea              rsi, [rbp + 1264]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                        cmp              eax, 104
                                                                                        je    n52_call_builtin_prolog_α
                                                                                        jmp   n55_lit_string_α
n54_call_builtin_prolog_β:
                                                                                        jmp   n52_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_string_α:
                        mov              qword ptr [rbp + 1232], 2                      # result
                        mov              dword ptr [rbp + 1236], 0
                        mov              rax, qword ptr [rip + .Lx153_0]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n56_call_builtin_prolog_α
.Lx153_0:
                        .quad            .Lx153_0_s
.Lx153_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n56_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1224], rax
                        .section         .rodata
.Lrkfn155:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn155]                         # fn
                        lea              rsi, [rbp + 1216]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              eax, 104
                                                                                        je    n52_call_builtin_prolog_α
                                                                                        jmp   n57_lit_string_α
n56_call_builtin_prolog_β:
                                                                                        jmp   n52_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_string_α:
                        mov              qword ptr [rbp + 656], 2                       # result
                        mov              dword ptr [rbp + 660], 5
                        mov              rax, qword ptr [rip + .Lx156_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n58_var_ref_α
.Lx156_0:
                        .quad            .Lx156_0_s
.Lx156_0_s:
                        .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n58_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2368]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n59_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n59_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2384]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n60_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n60_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 632], rax
                        lea              rdi, [rbp + 592]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 104
                                                                                        je    n87_call_builtin_prolog_α
                                                                                        jmp   n61_call_builtin_prolog_α
n60_call_builtin_prolog_β:
                                                                                        jmp   n87_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n61_call_builtin_prolog_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx162_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx162_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx162_101
.Lx162_100:
                        lea              rdi, [rbp + 688]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx162_101:
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 104
                                                                                        je    n87_call_builtin_prolog_α
                                                                                        jmp   n62_lit_integer_α
n61_call_builtin_prolog_β:
                                                                                        jmp   n87_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_integer_α:
                        mov              qword ptr [rbp + 944], 3                       # result
                        mov              rax, qword ptr [rip + .Lx163_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n63_var_ref_α
.Lx163_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n63_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2400]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n64_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n64_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2416]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n65_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n65_call_proc_staged_α:
                        mov              qword ptr [rbp + 912], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx169_20
                        mov              rax, qword ptr [rbp + 944]
                        mov              rdx, qword ptr [rbp + 952]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx169_21
.Lx169_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 944]                     # v
                        mov              rdx, qword ptr [rbp + 952]                     # v
                        call             rt_arg_stage@PLT
.Lx169_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx169_22
                        mov              rax, qword ptr [rbp + 960]
                        mov              rdx, qword ptr [rbp + 968]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx169_23
.Lx169_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 960]                     # v
                        mov              rdx, qword ptr [rbp + 968]                     # v
                        call             rt_arg_stage@PLT
.Lx169_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx169_24
                        mov              rax, qword ptr [rbp + 976]
                        mov              rdx, qword ptr [rbp + 984]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx169_25
.Lx169_24:
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [rbp + 976]                     # v
                        mov              rdx, qword ptr [rbp + 984]                     # v
                        call             rt_arg_stage@PLT
.Lx169_25:
                        mov              edi, 0                                         # idx
                        mov              esi, 3                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx169_1
                        lea              rcx, [rip + .Lx169_3]
                        lea              rdx, [rip + .Lx169_4]
                                                                                        jmp   rax
.Lx169_3:
                        mov              qword ptr [rbp + 920], rsp
                        mov              rax, qword ptr [rbp + 912]
                        test             rax, rax
                                                                                        jne   .Lx169_5
                        mov              qword ptr [rbp + 912], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx169_2
.Lx169_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx169_2
.Lx169_4:
                        mov              rax, qword ptr [rbp + 912]
                        test             rax, rax
                                                                                        jne   .Lx169_6
                        mov              qword ptr [rbp + 912], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx169_2
.Lx169_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx169_2
.Lx169_1:
                        call             rt_faildescr@PLT
.Lx169_2:
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx169_240
                        add              rsp, 2336
                                                                                        jmp   n66_call_builtin_prolog_α
.Lx169_240:
                                                                                        jmp   n71_lit_string_α
n65_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 920]
                                                                                        jmp   qword ptr [rsp]
.Lx169_0:
                        .quad            .Lx169_0_s
.Lx169_0_s:
                        .string          "between/3"
#-----------------------------------------------------------------------------------------------------------------------
n66_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 744], rax
                        .section         .rodata
.Lrkfn171:              .string          "$catch_check"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn171]                         # fn
                        lea              rsi, [rbp + 720]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 104
                                                                                        je    n87_call_builtin_prolog_α
                                                                                        jmp   n67_var_α
n66_call_builtin_prolog_β:
                                                                                        jmp   n87_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n67_var_α:
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n68_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n68_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 824], rax
                        .section         .rodata
.Lrkfn175:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn175]                         # fn
                        lea              rsi, [rbp + 816]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 104
                                                                                        je    n66_call_builtin_prolog_α
                                                                                        jmp   n69_lit_string_α
n68_call_builtin_prolog_β:
                                                                                        jmp   n66_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_string_α:
                        mov              qword ptr [rbp + 784], 2                       # result
                        mov              dword ptr [rbp + 788], 0
                        mov              rax, qword ptr [rip + .Lx176_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n70_call_builtin_prolog_α
.Lx176_0:
                        .quad            .Lx176_0_s
.Lx176_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n70_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 776], rax
                        .section         .rodata
.Lrkfn178:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn178]                         # fn
                        lea              rsi, [rbp + 768]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 104
                                                                                        je    n66_call_builtin_prolog_α
                                                                                        jmp   n71_lit_string_α
n70_call_builtin_prolog_β:
                                                                                        jmp   n66_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_string_α:
                        mov              qword ptr [rbp + 208], 2                       # result
                        mov              dword ptr [rbp + 212], 5
                        mov              rax, qword ptr [rip + .Lx179_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n72_var_ref_α
.Lx179_0:
                        .quad            .Lx179_0_s
.Lx179_0_s:
                        .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n72_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2336]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n73_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n73_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2352]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n74_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n74_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 168], rax
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 184], rax
                        lea              rdi, [rbp + 144]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 104
                                                                                        je    n87_call_builtin_prolog_α
                                                                                        jmp   n75_call_builtin_prolog_α
n74_call_builtin_prolog_β:
                                                                                        jmp   n87_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n75_call_builtin_prolog_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx185_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx185_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx185_101
.Lx185_100:
                        lea              rdi, [rbp + 240]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx185_101:
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 104
                                                                                        je    n87_call_builtin_prolog_α
                                                                                        jmp   n76_lit_integer_α
n75_call_builtin_prolog_β:
                                                                                        jmp   n87_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_integer_α:
                        mov              qword ptr [rbp + 496], 3                       # result
                        mov              rax, qword ptr [rip + .Lx186_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n77_lit_integer_α
.Lx186_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_integer_α:
                        mov              qword ptr [rbp + 512], 3                       # result
                        mov              rax, qword ptr [rip + .Lx187_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n78_lit_string_α
.Lx187_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_string_α:
                        mov              qword ptr [rbp + 528], 2                       # result
                        mov              dword ptr [rbp + 532], 3
                        mov              rax, qword ptr [rip + .Lx188_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n79_call_proc_staged_α
.Lx188_0:
                        .quad            .Lx188_0_s
.Lx188_0_s:
                        .string          "foo"
#-----------------------------------------------------------------------------------------------------------------------
n79_call_proc_staged_α:
                        mov              qword ptr [rbp + 464], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx190_20
                        mov              rax, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx190_21
.Lx190_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 496]                     # v
                        mov              rdx, qword ptr [rbp + 504]                     # v
                        call             rt_arg_stage@PLT
.Lx190_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx190_22
                        mov              rax, qword ptr [rbp + 512]
                        mov              rdx, qword ptr [rbp + 520]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx190_23
.Lx190_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 512]                     # v
                        mov              rdx, qword ptr [rbp + 520]                     # v
                        call             rt_arg_stage@PLT
.Lx190_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx190_24
                        mov              rax, qword ptr [rbp + 528]
                        mov              rdx, qword ptr [rbp + 536]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx190_25
.Lx190_24:
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [rbp + 528]                     # v
                        mov              rdx, qword ptr [rbp + 536]                     # v
                        call             rt_arg_stage@PLT
.Lx190_25:
                        mov              edi, 0                                         # idx
                        mov              esi, 3                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx190_1
                        lea              rcx, [rip + .Lx190_3]
                        lea              rdx, [rip + .Lx190_4]
                                                                                        jmp   rax
.Lx190_3:
                        mov              qword ptr [rbp + 472], rsp
                        mov              rax, qword ptr [rbp + 464]
                        test             rax, rax
                                                                                        jne   .Lx190_5
                        mov              qword ptr [rbp + 464], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx190_2
.Lx190_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx190_2
.Lx190_4:
                        mov              rax, qword ptr [rbp + 464]
                        test             rax, rax
                                                                                        jne   .Lx190_6
                        mov              qword ptr [rbp + 464], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx190_2
.Lx190_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx190_2
.Lx190_1:
                        call             rt_faildescr@PLT
.Lx190_2:
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx190_240
                        add              rsp, 2336
                                                                                        jmp   n80_call_builtin_prolog_α
.Lx190_240:
                                                                                        jmp   n85_move_label_α
n79_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 472]
                                                                                        jmp   qword ptr [rsp]
.Lx190_0:
                        .quad            .Lx190_0_s
.Lx190_0_s:
                        .string          "between/3"
#-----------------------------------------------------------------------------------------------------------------------
n80_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 296], rax
                        .section         .rodata
.Lrkfn192:              .string          "$catch_check"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn192]                         # fn
                        lea              rsi, [rbp + 272]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 104
                                                                                        je    n87_call_builtin_prolog_α
                                                                                        jmp   n81_var_α
n80_call_builtin_prolog_β:
                                                                                        jmp   n87_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n81_var_α:
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n82_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n82_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 376], rax
                        .section         .rodata
.Lrkfn196:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn196]                         # fn
                        lea              rsi, [rbp + 368]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 104
                                                                                        je    n80_call_builtin_prolog_α
                                                                                        jmp   n83_lit_string_α
n82_call_builtin_prolog_β:
                                                                                        jmp   n80_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_string_α:
                        mov              qword ptr [rbp + 336], 2                       # result
                        mov              dword ptr [rbp + 340], 0
                        mov              rax, qword ptr [rip + .Lx197_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n84_call_builtin_prolog_α
.Lx197_0:
                        .quad            .Lx197_0_s
.Lx197_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n84_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 328], rax
                        .section         .rodata
.Lrkfn199:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn199]                         # fn
                        lea              rsi, [rbp + 320]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 104
                                                                                        je    n80_call_builtin_prolog_α
                                                                                        jmp   n85_move_label_α
n84_call_builtin_prolog_β:
                                                                                        jmp   n80_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n85_move_label_α:
                        lea              rax, [rip + n87_call_builtin_prolog_α]
                        mov              qword ptr [rbp + 16], rax
                        add              rsp, 2336
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n86_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n86_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n87_call_builtin_prolog_α:
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
n87_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n86_disjunction_α
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
