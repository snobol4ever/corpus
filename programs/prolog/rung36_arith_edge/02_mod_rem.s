                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rt_gcheap_warmup@PLT
                        call             rt_plw_floor_bypass_on@PLT
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                        xor              r14d, r14d
                        lea              rcx, [rip + .Lmain_zf_γ]
                        lea              rdx, [rip + .Lmain_zf_ω]
                                                                              jmp   main_α
.Lmain_zf_γ:            xor              edi, edi
                        call             exit@PLT
.Lmain_zf_ω:            mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 2320
                        mov              qword ptr [rsp + 2296], rcx
                        mov              qword ptr [rsp + 2304], rdx
                        mov              qword ptr [rsp + 2312], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 2288
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx76_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx76_101
.Lx76_102:              lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx76_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx76_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx76_101
.Lx76_100:              lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx76_101:              mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1_var_ref_α
n0_call_builtin_prolog_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              rax, 4294967336
                        lea              rdx, [rsp + 2256]
                        mov              qword ptr [rsp + 2032], rax
                        mov              qword ptr [rsp + 2040], rdx;         jmp   n2_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:       mov              qword ptr [rsp + 2112], 3            # result
                        mov              rax, qword ptr [rip + .Lx79_0]
                        mov              qword ptr [rsp + 2120], rax;         jmp   n3_lit_integer_α
.Lx79_0:                .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:       mov              qword ptr [rsp + 2128], 3            # result
                        mov              rax, qword ptr [rip + .Lx80_0]
                        mov              qword ptr [rsp + 2136], rax;         jmp   n4_call_builtin_prolog_α
.Lx80_0:                .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n4_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2128]
                        mov              qword ptr [rsp + 2080], rax
                        mov              rax, qword ptr [rsp + 2136]
                        mov              qword ptr [rsp + 2088], rax
                        mov              rax, qword ptr [rsp + 2112]
                        mov              qword ptr [rsp + 2064], rax
                        mov              rax, qword ptr [rsp + 2120]
                        mov              qword ptr [rsp + 2072], rax
                        lea              rdi, [rsp + 2064]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_ax_mod@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2048], rax
                        mov              qword ptr [rsp + 2056], rdx
                        cmp              al, 104;                             je    n75_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n5_call_builtin_prolog_α
n4_call_builtin_prolog_β:
                                                                              jmp   n75_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n5_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2048]
                        mov              qword ptr [rsp + 2016], rax
                        mov              rax, qword ptr [rsp + 2056]
                        mov              qword ptr [rsp + 2024], rax
                        mov              rax, qword ptr [rsp + 2032]
                        mov              qword ptr [rsp + 2000], rax
                        mov              rax, qword ptr [rsp + 2040]
                        mov              qword ptr [rsp + 2008], rax
                        lea              rdi, [rsp + 2000]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1984], rax
                        mov              qword ptr [rsp + 1992], rdx
                        cmp              al, 104;                             je    n75_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n6_var_α
n5_call_builtin_prolog_β:
                                                                              jmp   n75_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:               mov              rax, qword ptr [rsp + 2256]
                        mov              qword ptr [rsp + 1968], rax
                        mov              rax, qword ptr [rsp + 2264]
                        mov              qword ptr [rsp + 1976], rax;         jmp   n7_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n7_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1968]
                        mov              qword ptr [rsp + 1952], rax
                        mov              rax, qword ptr [rsp + 1976]
                        mov              qword ptr [rsp + 1960], rax
                        .section         .rodata
.Lrkfn86:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn86]
                        lea              rsi, [rsp + 1952]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx
                        cmp              al, 104;                             je    n75_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n8_lit_string_α
n7_call_builtin_prolog_β:
                                                                              jmp   n75_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:        mov              qword ptr [rsp + 1920], 2            # result
                        mov              dword ptr [rsp + 1924], 0
                        mov              rax, qword ptr [rip + .Lx87_0]
                        mov              qword ptr [rsp + 1928], rax;         jmp   n9_call_builtin_prolog_α
.Lx87_0:                .quad            .Lx87_0_s
.Lx87_0_s:              .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n9_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1920]
                        mov              qword ptr [rsp + 1904], rax
                        mov              rax, qword ptr [rsp + 1928]
                        mov              qword ptr [rsp + 1912], rax
                        .section         .rodata
.Lrkfn89:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn89]
                        lea              rsi, [rsp + 1904]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1888], rax
                        mov              qword ptr [rsp + 1896], rdx
                        cmp              al, 104;                             je    n75_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n10_var_ref_α
n9_call_builtin_prolog_β:
                                                                              jmp   n75_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n10_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2240]
                        mov              qword ptr [rsp + 1776], rax
                        mov              qword ptr [rsp + 1784], rdx;         jmp   n11_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:      mov              qword ptr [rsp + 1856], 3            # result
                        mov              rax, qword ptr [rip + .Lx92_0]
                        mov              qword ptr [rsp + 1864], rax;         jmp   n12_lit_integer_α
.Lx92_0:                .quad            18446744073709551609
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:      mov              qword ptr [rsp + 1872], 3            # result
                        mov              rax, qword ptr [rip + .Lx93_0]
                        mov              qword ptr [rsp + 1880], rax;         jmp   n13_call_builtin_prolog_α
.Lx93_0:                .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n13_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1872]
                        mov              qword ptr [rsp + 1824], rax
                        mov              rax, qword ptr [rsp + 1880]
                        mov              qword ptr [rsp + 1832], rax
                        mov              rax, qword ptr [rsp + 1856]
                        mov              qword ptr [rsp + 1808], rax
                        mov              rax, qword ptr [rsp + 1864]
                        mov              qword ptr [rsp + 1816], rax
                        lea              rdi, [rsp + 1808]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_ax_mod@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1792], rax
                        mov              qword ptr [rsp + 1800], rdx
                        cmp              al, 104;                             je    n75_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n14_call_builtin_prolog_α
n13_call_builtin_prolog_β:
                                                                              jmp   n75_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n14_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1792]
                        mov              qword ptr [rsp + 1760], rax
                        mov              rax, qword ptr [rsp + 1800]
                        mov              qword ptr [rsp + 1768], rax
                        mov              rax, qword ptr [rsp + 1776]
                        mov              qword ptr [rsp + 1744], rax
                        mov              rax, qword ptr [rsp + 1784]
                        mov              qword ptr [rsp + 1752], rax
                        lea              rdi, [rsp + 1744]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1728], rax
                        mov              qword ptr [rsp + 1736], rdx
                        cmp              al, 104;                             je    n75_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n15_var_α
n14_call_builtin_prolog_β:
                                                                              jmp   n75_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n15_var_α:              mov              rax, qword ptr [rsp + 2240]
                        mov              qword ptr [rsp + 1712], rax
                        mov              rax, qword ptr [rsp + 2248]
                        mov              qword ptr [rsp + 1720], rax;         jmp   n16_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n16_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1712]
                        mov              qword ptr [rsp + 1696], rax
                        mov              rax, qword ptr [rsp + 1720]
                        mov              qword ptr [rsp + 1704], rax
                        .section         .rodata
.Lrkfn99:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn99]
                        lea              rsi, [rsp + 1696]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1680], rax
                        mov              qword ptr [rsp + 1688], rdx
                        cmp              al, 104;                             je    n75_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n17_lit_string_α
n16_call_builtin_prolog_β:
                                                                              jmp   n75_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:       mov              qword ptr [rsp + 1664], 2            # result
                        mov              dword ptr [rsp + 1668], 0
                        mov              rax, qword ptr [rip + .Lx100_0]
                        mov              qword ptr [rsp + 1672], rax;         jmp   n18_call_builtin_prolog_α
.Lx100_0:               .quad            .Lx100_0_s
.Lx100_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n18_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1664]
                        mov              qword ptr [rsp + 1648], rax
                        mov              rax, qword ptr [rsp + 1672]
                        mov              qword ptr [rsp + 1656], rax
                        .section         .rodata
.Lrkfn102:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn102]
                        lea              rsi, [rsp + 1648]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1632], rax
                        mov              qword ptr [rsp + 1640], rdx
                        cmp              al, 104;                             je    n75_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n19_var_ref_α
n18_call_builtin_prolog_β:
                                                                              jmp   n75_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n19_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2224]
                        mov              qword ptr [rsp + 1520], rax
                        mov              qword ptr [rsp + 1528], rdx;         jmp   n20_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_integer_α:      mov              qword ptr [rsp + 1600], 3            # result
                        mov              rax, qword ptr [rip + .Lx105_0]
                        mov              qword ptr [rsp + 1608], rax;         jmp   n21_lit_integer_α
.Lx105_0:               .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_integer_α:      mov              qword ptr [rsp + 1616], 3            # result
                        mov              rax, qword ptr [rip + .Lx106_0]
                        mov              qword ptr [rsp + 1624], rax;         jmp   n22_call_builtin_prolog_α
.Lx106_0:               .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n22_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1616]
                        mov              qword ptr [rsp + 1568], rax
                        mov              rax, qword ptr [rsp + 1624]
                        mov              qword ptr [rsp + 1576], rax
                        mov              rax, qword ptr [rsp + 1600]
                        mov              qword ptr [rsp + 1552], rax
                        mov              rax, qword ptr [rsp + 1608]
                        mov              qword ptr [rsp + 1560], rax
                        lea              rdi, [rsp + 1552]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_ax_mod@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx
                        cmp              al, 104;                             je    n75_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n23_call_builtin_prolog_α
n22_call_builtin_prolog_β:
                                                                              jmp   n75_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n23_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1536]
                        mov              qword ptr [rsp + 1504], rax
                        mov              rax, qword ptr [rsp + 1544]
                        mov              qword ptr [rsp + 1512], rax
                        mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 1488], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1496], rax
                        lea              rdi, [rsp + 1488]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1472], rax
                        mov              qword ptr [rsp + 1480], rdx
                        cmp              al, 104;                             je    n75_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n24_var_α
n23_call_builtin_prolog_β:
                                                                              jmp   n75_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n24_var_α:              mov              rax, qword ptr [rsp + 2224]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 2232]
                        mov              qword ptr [rsp + 1464], rax;         jmp   n25_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n25_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1456]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 1464]
                        mov              qword ptr [rsp + 1448], rax
                        .section         .rodata
.Lrkfn112:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn112]
                        lea              rsi, [rsp + 1440]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx
                        cmp              al, 104;                             je    n75_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n26_lit_string_α
n25_call_builtin_prolog_β:
                                                                              jmp   n75_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:       mov              qword ptr [rsp + 1408], 2            # result
                        mov              dword ptr [rsp + 1412], 0
                        mov              rax, qword ptr [rip + .Lx113_0]
                        mov              qword ptr [rsp + 1416], rax;         jmp   n27_call_builtin_prolog_α
.Lx113_0:               .quad            .Lx113_0_s
.Lx113_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n27_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1408]
                        mov              qword ptr [rsp + 1392], rax
                        mov              rax, qword ptr [rsp + 1416]
                        mov              qword ptr [rsp + 1400], rax
                        .section         .rodata
.Lrkfn115:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn115]
                        lea              rsi, [rsp + 1392]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx
                        cmp              al, 104;                             je    n75_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n28_var_ref_α
n27_call_builtin_prolog_β:
                                                                              jmp   n75_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n28_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2208]
                        mov              qword ptr [rsp + 1264], rax
                        mov              qword ptr [rsp + 1272], rdx;         jmp   n29_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_integer_α:      mov              qword ptr [rsp + 1344], 3            # result
                        mov              rax, qword ptr [rip + .Lx118_0]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n30_lit_integer_α
.Lx118_0:               .quad            18446744073709551609
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:      mov              qword ptr [rsp + 1360], 3            # result
                        mov              rax, qword ptr [rip + .Lx119_0]
                        mov              qword ptr [rsp + 1368], rax;         jmp   n31_call_builtin_prolog_α
.Lx119_0:               .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n31_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 1312], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 1320], rax
                        mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 1296], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 1304], rax
                        lea              rdi, [rsp + 1296]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_ax_mod@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx
                        cmp              al, 104;                             je    n75_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n32_call_builtin_prolog_α
n31_call_builtin_prolog_β:
                                                                              jmp   n75_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n32_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 1256], rax
                        mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 1240], rax
                        lea              rdi, [rsp + 1232]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx
                        cmp              al, 104;                             je    n75_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n33_var_α
n32_call_builtin_prolog_β:
                                                                              jmp   n75_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n33_var_α:              mov              rax, qword ptr [rsp + 2208]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 2216]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n34_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n34_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1200]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1208]
                        mov              qword ptr [rsp + 1192], rax
                        .section         .rodata
.Lrkfn125:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn125]
                        lea              rsi, [rsp + 1184]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx
                        cmp              al, 104;                             je    n75_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n35_lit_string_α
n34_call_builtin_prolog_β:
                                                                              jmp   n75_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:       mov              qword ptr [rsp + 1152], 2            # result
                        mov              dword ptr [rsp + 1156], 0
                        mov              rax, qword ptr [rip + .Lx126_0]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n36_call_builtin_prolog_α
.Lx126_0:               .quad            .Lx126_0_s
.Lx126_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n36_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 1144], rax
                        .section         .rodata
.Lrkfn128:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn128]
                        lea              rsi, [rsp + 1136]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx
                        cmp              al, 104;                             je    n75_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n37_var_ref_α
n36_call_builtin_prolog_β:
                                                                              jmp   n75_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n37_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2192]
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx;         jmp   n38_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_integer_α:      mov              qword ptr [rsp + 1088], 3            # result
                        mov              rax, qword ptr [rip + .Lx131_0]
                        mov              qword ptr [rsp + 1096], rax;         jmp   n39_lit_integer_α
.Lx131_0:               .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_integer_α:      mov              qword ptr [rsp + 1104], 3            # result
                        mov              rax, qword ptr [rip + .Lx132_0]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n40_call_builtin_prolog_α
.Lx132_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n40_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 1064], rax
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1048], rax
                        .section         .rodata
.Lrkfn134:              .string          "$ax_rem"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn134]
                        lea              rsi, [rsp + 1040]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx
                        cmp              al, 104;                             je    n75_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n41_call_builtin_prolog_α
n40_call_builtin_prolog_β:
                                                                              jmp   n75_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n41_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 1000], rax
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 984], rax
                        lea              rdi, [rsp + 976]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx
                        cmp              al, 104;                             je    n75_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n42_var_α
n41_call_builtin_prolog_β:
                                                                              jmp   n75_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n42_var_α:              mov              rax, qword ptr [rsp + 2192]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 2200]
                        mov              qword ptr [rsp + 952], rax;          jmp   n43_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n43_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 936], rax
                        .section         .rodata
.Lrkfn139:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn139]
                        lea              rsi, [rsp + 928]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        cmp              al, 104;                             je    n75_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n44_lit_string_α
n43_call_builtin_prolog_β:
                                                                              jmp   n75_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_string_α:       mov              qword ptr [rsp + 896], 2             # result
                        mov              dword ptr [rsp + 900], 0
                        mov              rax, qword ptr [rip + .Lx140_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n45_call_builtin_prolog_α
.Lx140_0:               .quad            .Lx140_0_s
.Lx140_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n45_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 888], rax
                        .section         .rodata
.Lrkfn142:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn142]
                        lea              rsi, [rsp + 880]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx
                        cmp              al, 104;                             je    n75_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n46_var_ref_α
n45_call_builtin_prolog_β:
                                                                              jmp   n75_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n46_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2176]
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx;          jmp   n47_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_integer_α:      mov              qword ptr [rsp + 832], 3             # result
                        mov              rax, qword ptr [rip + .Lx145_0]
                        mov              qword ptr [rsp + 840], rax;          jmp   n48_lit_integer_α
.Lx145_0:               .quad            18446744073709551609
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_integer_α:      mov              qword ptr [rsp + 848], 3             # result
                        mov              rax, qword ptr [rip + .Lx146_0]
                        mov              qword ptr [rsp + 856], rax;          jmp   n49_call_builtin_prolog_α
.Lx146_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n49_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 808], rax
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 792], rax
                        .section         .rodata
.Lrkfn148:              .string          "$ax_rem"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn148]
                        lea              rsi, [rsp + 784]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                        cmp              al, 104;                             je    n75_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n50_call_builtin_prolog_α
n49_call_builtin_prolog_β:
                                                                              jmp   n75_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n50_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 744], rax
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 728], rax
                        lea              rdi, [rsp + 720]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        cmp              al, 104;                             je    n75_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n51_var_α
n50_call_builtin_prolog_β:
                                                                              jmp   n75_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n51_var_α:              mov              rax, qword ptr [rsp + 2176]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 2184]
                        mov              qword ptr [rsp + 696], rax;          jmp   n52_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n52_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 680], rax
                        .section         .rodata
.Lrkfn153:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn153]
                        lea              rsi, [rsp + 672]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                        cmp              al, 104;                             je    n75_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n53_lit_string_α
n52_call_builtin_prolog_β:
                                                                              jmp   n75_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:       mov              qword ptr [rsp + 640], 2             # result
                        mov              dword ptr [rsp + 644], 0
                        mov              rax, qword ptr [rip + .Lx154_0]
                        mov              qword ptr [rsp + 648], rax;          jmp   n54_call_builtin_prolog_α
.Lx154_0:               .quad            .Lx154_0_s
.Lx154_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n54_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 632], rax
                        .section         .rodata
.Lrkfn156:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn156]
                        lea              rsi, [rsp + 624]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              al, 104;                             je    n75_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n55_var_ref_α
n54_call_builtin_prolog_β:
                                                                              jmp   n75_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n55_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2160]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx;          jmp   n56_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_integer_α:      mov              qword ptr [rsp + 576], 3             # result
                        mov              rax, qword ptr [rip + .Lx159_0]
                        mov              qword ptr [rsp + 584], rax;          jmp   n57_lit_integer_α
.Lx159_0:               .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_integer_α:      mov              qword ptr [rsp + 592], 3             # result
                        mov              rax, qword ptr [rip + .Lx160_0]
                        mov              qword ptr [rsp + 600], rax;          jmp   n58_call_builtin_prolog_α
.Lx160_0:               .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n58_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 552], rax
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 536], rax
                        .section         .rodata
.Lrkfn162:              .string          "$ax_rem"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn162]
                        lea              rsi, [rsp + 528]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              al, 104;                             je    n75_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n59_call_builtin_prolog_α
n58_call_builtin_prolog_β:
                                                                              jmp   n75_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n59_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 488], rax
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 472], rax
                        lea              rdi, [rsp + 464]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              al, 104;                             je    n75_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n60_var_α
n59_call_builtin_prolog_β:
                                                                              jmp   n75_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n60_var_α:              mov              rax, qword ptr [rsp + 2160]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 2168]
                        mov              qword ptr [rsp + 440], rax;          jmp   n61_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n61_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 424], rax
                        .section         .rodata
.Lrkfn167:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn167]
                        lea              rsi, [rsp + 416]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              al, 104;                             je    n75_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n62_lit_string_α
n61_call_builtin_prolog_β:
                                                                              jmp   n75_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_string_α:       mov              qword ptr [rsp + 384], 2             # result
                        mov              dword ptr [rsp + 388], 0
                        mov              rax, qword ptr [rip + .Lx168_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n63_call_builtin_prolog_α
.Lx168_0:               .quad            .Lx168_0_s
.Lx168_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n63_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 376], rax
                        .section         .rodata
.Lrkfn170:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn170]
                        lea              rsi, [rsp + 368]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              al, 104;                             je    n75_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n64_var_ref_α
n63_call_builtin_prolog_β:
                                                                              jmp   n75_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n64_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2144]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n65_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_integer_α:      mov              qword ptr [rsp + 320], 3             # result
                        mov              rax, qword ptr [rip + .Lx173_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n66_lit_integer_α
.Lx173_0:               .quad            18446744073709551609
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_integer_α:      mov              qword ptr [rsp + 336], 3             # result
                        mov              rax, qword ptr [rip + .Lx174_0]
                        mov              qword ptr [rsp + 344], rax;          jmp   n67_call_builtin_prolog_α
.Lx174_0:               .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n67_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 296], rax
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 280], rax
                        .section         .rodata
.Lrkfn176:              .string          "$ax_rem"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn176]
                        lea              rsi, [rsp + 272]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              al, 104;                             je    n75_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n68_call_builtin_prolog_α
n67_call_builtin_prolog_β:
                                                                              jmp   n75_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n68_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 232], rax
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 216], rax
                        lea              rdi, [rsp + 208]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n75_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n69_var_α
n68_call_builtin_prolog_β:
                                                                              jmp   n75_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n69_var_α:              mov              rax, qword ptr [rsp + 2144]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 2152]
                        mov              qword ptr [rsp + 184], rax;          jmp   n70_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n70_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn181:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn181]
                        lea              rsi, [rsp + 160]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n75_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n71_lit_string_α
n70_call_builtin_prolog_β:
                                                                              jmp   n75_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_string_α:       mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 0
                        mov              rax, qword ptr [rip + .Lx182_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n72_call_builtin_prolog_α
.Lx182_0:               .quad            .Lx182_0_s
.Lx182_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n72_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn184:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn184]
                        lea              rsi, [rsp + 112]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n75_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n73_move_label_α
n72_call_builtin_prolog_β:
                                                                              jmp   n75_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n73_move_label_α:       lea              rax, [rip + n75_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 16], rax;           jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n74_disjunction_α:      mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    main_ω
                                                                              jmp   rax
n74_disjunction_β:                                                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n75_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 88], rax
                        lea              rdi, [rsp + 80]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   main_ω
n75_call_builtin_prolog_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   n74_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 2296]
                        add              rsp, 2320;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 2304]
                        add              rsp, 2320;                           jmp   rcx
                        .section         .note.GNU-stack,"",@progbits
