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
                        sub              rsp, 2592
                        mov              qword ptr [rsp + 2568], rcx
                        mov              qword ptr [rsp + 2576], rdx
                        mov              qword ptr [rsp + 2584], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 2560
                        rep              stosb
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_prolog_α:
                        mov              r11, 1
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx79_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx79_101
.Lx79_102:              lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx79_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx79_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx79_101
.Lx79_100:              lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx79_101:              mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1_lit_string_α
n0_call_builtin_prolog_β:
                        mov              r11, 1;                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        mov              r11, 2
                        mov              qword ptr [rsp + 2400], 2            # result
                        mov              dword ptr [rsp + 2404], 4
                        mov              rax, qword ptr [rip + .Lx80_0]
                        mov              qword ptr [rsp + 2408], rax;         jmp   n2_lit_string_α
.Lx80_0:                .quad            .Lx80_0_s
.Lx80_0_s:              .string          "~q~n"
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:        mov              r11, 3
                        mov              qword ptr [rsp + 2528], 2            # result
                        mov              dword ptr [rsp + 2532], 1
                        mov              rax, qword ptr [rip + .Lx81_0]
                        mov              qword ptr [rsp + 2536], rax;         jmp   n3_lit_string_α
.Lx81_0:                .quad            .Lx81_0_s
.Lx81_0_s:              .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:        mov              r11, 4
                        mov              qword ptr [rsp + 2432], 2            # result
                        mov              dword ptr [rsp + 2436], 11
                        mov              rax, qword ptr [rip + .Lx82_0]
                        mov              qword ptr [rsp + 2440], rax;         jmp   n4_lit_string_α
.Lx82_0:                .quad            .Lx82_0_s
.Lx82_0_s:              .string          "hello world"
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:        mov              r11, 5
                        mov              qword ptr [rsp + 2416], 2            # result
                        mov              dword ptr [rsp + 2420], 2
                        mov              rax, qword ptr [rip + .Lx83_0]
                        mov              qword ptr [rsp + 2424], rax;         jmp   n5_call_builtin_prolog_α
.Lx83_0:                .quad            .Lx83_0_s
.Lx83_0_s:              .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n5_call_builtin_prolog_α:
                        mov              r11, 6
                        mov              rax, qword ptr [rsp + 2416]
                        mov              qword ptr [rsp + 2496], rax
                        mov              rax, qword ptr [rsp + 2424]
                        mov              qword ptr [rsp + 2504], rax
                        mov              rax, qword ptr [rsp + 2432]
                        mov              qword ptr [rsp + 2480], rax
                        mov              rax, qword ptr [rsp + 2440]
                        mov              qword ptr [rsp + 2488], rax
                        mov              rax, qword ptr [rsp + 2528]
                        mov              qword ptr [rsp + 2464], rax
                        mov              rax, qword ptr [rsp + 2536]
                        mov              qword ptr [rsp + 2472], rax
                        lea              rdi, [rsp + 2464]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2448], rax
                        mov              qword ptr [rsp + 2456], rdx
                        cmp              al, 104;                             je    n78_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n6_call_builtin_prolog_α
n5_call_builtin_prolog_β:
                        mov              r11, 6;                              jmp   n78_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n6_call_builtin_prolog_α:
                        mov              r11, 7
                        mov              rax, qword ptr [rsp + 2448]
                        mov              qword ptr [rsp + 2384], rax
                        mov              rax, qword ptr [rsp + 2456]
                        mov              qword ptr [rsp + 2392], rax
                        mov              rax, qword ptr [rsp + 2400]
                        mov              qword ptr [rsp + 2368], rax
                        mov              rax, qword ptr [rsp + 2408]
                        mov              qword ptr [rsp + 2376], rax
                        .section         .rodata
.Lrkfn86:               .string          "$format2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn86]
                        lea              rsi, [rsp + 2368]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2352], rax
                        mov              qword ptr [rsp + 2360], rdx
                        cmp              al, 104;                             je    n78_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n7_lit_string_α
n6_call_builtin_prolog_β:
                        mov              r11, 7;                              jmp   n78_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:        mov              r11, 8
                        mov              qword ptr [rsp + 2096], 2            # result
                        mov              dword ptr [rsp + 2100], 7
                        mov              rax, qword ptr [rip + .Lx87_0]
                        mov              qword ptr [rsp + 2104], rax;         jmp   n8_lit_string_α
.Lx87_0:                .quad            .Lx87_0_s
.Lx87_0_s:              .string          "~w|~q~n"
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:        mov              r11, 9
                        mov              qword ptr [rsp + 2336], 2            # result
                        mov              dword ptr [rsp + 2340], 1
                        mov              rax, qword ptr [rip + .Lx88_0]
                        mov              qword ptr [rsp + 2344], rax;         jmp   n9_lit_string_α
.Lx88_0:                .quad            .Lx88_0_s
.Lx88_0_s:              .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:        mov              r11, 10
                        mov              qword ptr [rsp + 2240], 2            # result
                        mov              dword ptr [rsp + 2244], 4
                        mov              rax, qword ptr [rip + .Lx89_0]
                        mov              qword ptr [rsp + 2248], rax;         jmp   n10_lit_string_α
.Lx89_0:                .quad            .Lx89_0_s
.Lx89_0_s:              .string          "it's"
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:       mov              r11, 11
                        mov              qword ptr [rsp + 2224], 2            # result
                        mov              dword ptr [rsp + 2228], 1
                        mov              rax, qword ptr [rip + .Lx90_0]
                        mov              qword ptr [rsp + 2232], rax;         jmp   n11_lit_string_α
.Lx90_0:                .quad            .Lx90_0_s
.Lx90_0_s:              .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:       mov              r11, 12
                        mov              qword ptr [rsp + 2128], 2            # result
                        mov              dword ptr [rsp + 2132], 4
                        mov              rax, qword ptr [rip + .Lx91_0]
                        mov              qword ptr [rsp + 2136], rax;         jmp   n12_lit_string_α
.Lx91_0:                .quad            .Lx91_0_s
.Lx91_0_s:              .string          "it's"
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:       mov              r11, 13
                        mov              qword ptr [rsp + 2112], 2            # result
                        mov              dword ptr [rsp + 2116], 2
                        mov              rax, qword ptr [rip + .Lx92_0]
                        mov              qword ptr [rsp + 2120], rax;         jmp   n13_call_builtin_prolog_α
.Lx92_0:                .quad            .Lx92_0_s
.Lx92_0_s:              .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n13_call_builtin_prolog_α:
                        mov              r11, 14
                        mov              rax, qword ptr [rsp + 2112]
                        mov              qword ptr [rsp + 2192], rax
                        mov              rax, qword ptr [rsp + 2120]
                        mov              qword ptr [rsp + 2200], rax
                        mov              rax, qword ptr [rsp + 2128]
                        mov              qword ptr [rsp + 2176], rax
                        mov              rax, qword ptr [rsp + 2136]
                        mov              qword ptr [rsp + 2184], rax
                        mov              rax, qword ptr [rsp + 2224]
                        mov              qword ptr [rsp + 2160], rax
                        mov              rax, qword ptr [rsp + 2232]
                        mov              qword ptr [rsp + 2168], rax
                        lea              rdi, [rsp + 2160]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2144], rax
                        mov              qword ptr [rsp + 2152], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n14_call_builtin_prolog_α
n13_call_builtin_prolog_β:
                        mov              r11, 14;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n14_call_builtin_prolog_α:
                        mov              r11, 15
                        mov              rax, qword ptr [rsp + 2144]
                        mov              qword ptr [rsp + 2304], rax
                        mov              rax, qword ptr [rsp + 2152]
                        mov              qword ptr [rsp + 2312], rax
                        mov              rax, qword ptr [rsp + 2240]
                        mov              qword ptr [rsp + 2288], rax
                        mov              rax, qword ptr [rsp + 2248]
                        mov              qword ptr [rsp + 2296], rax
                        mov              rax, qword ptr [rsp + 2336]
                        mov              qword ptr [rsp + 2272], rax
                        mov              rax, qword ptr [rsp + 2344]
                        mov              qword ptr [rsp + 2280], rax
                        lea              rdi, [rsp + 2272]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2256], rax
                        mov              qword ptr [rsp + 2264], rdx
                        cmp              al, 104;                             je    n78_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n15_call_builtin_prolog_α
n14_call_builtin_prolog_β:
                        mov              r11, 15;                             jmp   n78_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n15_call_builtin_prolog_α:
                        mov              r11, 16
                        mov              rax, qword ptr [rsp + 2256]
                        mov              qword ptr [rsp + 2080], rax
                        mov              rax, qword ptr [rsp + 2264]
                        mov              qword ptr [rsp + 2088], rax
                        mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 2064], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 2072], rax
                        .section         .rodata
.Lrkfn96:               .string          "$format2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn96]
                        lea              rsi, [rsp + 2064]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2048], rax
                        mov              qword ptr [rsp + 2056], rdx
                        cmp              al, 104;                             je    n78_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n16_lit_string_α
n15_call_builtin_prolog_β:
                        mov              r11, 16;                             jmp   n78_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:       mov              r11, 17
                        mov              qword ptr [rsp + 1904], 2            # result
                        mov              dword ptr [rsp + 1908], 4
                        mov              rax, qword ptr [rip + .Lx97_0]
                        mov              qword ptr [rsp + 1912], rax;         jmp   n17_lit_string_α
.Lx97_0:                .quad            .Lx97_0_s
.Lx97_0_s:              .string          "~e~n"
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:       mov              r11, 18
                        mov              qword ptr [rsp + 2032], 2            # result
                        mov              dword ptr [rsp + 2036], 1
                        mov              rax, qword ptr [rip + .Lx98_0]
                        mov              qword ptr [rsp + 2040], rax;         jmp   n18_lit_real_α
.Lx98_0:                .quad            .Lx98_0_s
.Lx98_0_s:              .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_real_α:         mov              r11, 19
                        mov              qword ptr [rsp + 1936], 5            # result
                        mov              rax, qword ptr [rip + .Lx99_0]
                        mov              qword ptr [rsp + 1944], rax;         jmp   n19_lit_string_α
.Lx99_0:                .quad            4614256650576692846
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:       mov              r11, 20
                        mov              qword ptr [rsp + 1920], 2            # result
                        mov              dword ptr [rsp + 1924], 2
                        mov              rax, qword ptr [rip + .Lx100_0]
                        mov              qword ptr [rsp + 1928], rax;         jmp   n20_call_builtin_prolog_α
.Lx100_0:               .quad            .Lx100_0_s
.Lx100_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n20_call_builtin_prolog_α:
                        mov              r11, 21
                        mov              rax, qword ptr [rsp + 1920]
                        mov              qword ptr [rsp + 2000], rax
                        mov              rax, qword ptr [rsp + 1928]
                        mov              qword ptr [rsp + 2008], rax
                        mov              rax, qword ptr [rsp + 1936]
                        mov              qword ptr [rsp + 1984], rax
                        mov              rax, qword ptr [rsp + 1944]
                        mov              qword ptr [rsp + 1992], rax
                        mov              rax, qword ptr [rsp + 2032]
                        mov              qword ptr [rsp + 1968], rax
                        mov              rax, qword ptr [rsp + 2040]
                        mov              qword ptr [rsp + 1976], rax
                        lea              rdi, [rsp + 1968]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1952], rax
                        mov              qword ptr [rsp + 1960], rdx
                        cmp              al, 104;                             je    n78_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n21_call_builtin_prolog_α
n20_call_builtin_prolog_β:
                        mov              r11, 21;                             jmp   n78_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n21_call_builtin_prolog_α:
                        mov              r11, 22
                        mov              rax, qword ptr [rsp + 1952]
                        mov              qword ptr [rsp + 1888], rax
                        mov              rax, qword ptr [rsp + 1960]
                        mov              qword ptr [rsp + 1896], rax
                        mov              rax, qword ptr [rsp + 1904]
                        mov              qword ptr [rsp + 1872], rax
                        mov              rax, qword ptr [rsp + 1912]
                        mov              qword ptr [rsp + 1880], rax
                        .section         .rodata
.Lrkfn103:              .string          "$format2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn103]
                        lea              rsi, [rsp + 1872]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1856], rax
                        mov              qword ptr [rsp + 1864], rdx
                        cmp              al, 104;                             je    n78_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n22_lit_string_α
n21_call_builtin_prolog_β:
                        mov              r11, 22;                             jmp   n78_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:       mov              r11, 23
                        mov              qword ptr [rsp + 1712], 2            # result
                        mov              dword ptr [rsp + 1716], 5
                        mov              rax, qword ptr [rip + .Lx104_0]
                        mov              qword ptr [rsp + 1720], rax;         jmp   n23_lit_string_α
.Lx104_0:               .quad            .Lx104_0_s
.Lx104_0_s:             .string          "~2f~n"
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:       mov              r11, 24
                        mov              qword ptr [rsp + 1840], 2            # result
                        mov              dword ptr [rsp + 1844], 1
                        mov              rax, qword ptr [rip + .Lx105_0]
                        mov              qword ptr [rsp + 1848], rax;         jmp   n24_lit_real_α
.Lx105_0:               .quad            .Lx105_0_s
.Lx105_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_real_α:         mov              r11, 25
                        mov              qword ptr [rsp + 1744], 5            # result
                        mov              rax, qword ptr [rip + .Lx106_0]
                        mov              qword ptr [rsp + 1752], rax;         jmp   n25_lit_string_α
.Lx106_0:               .quad            4614256650576692846
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:       mov              r11, 26
                        mov              qword ptr [rsp + 1728], 2            # result
                        mov              dword ptr [rsp + 1732], 2
                        mov              rax, qword ptr [rip + .Lx107_0]
                        mov              qword ptr [rsp + 1736], rax;         jmp   n26_call_builtin_prolog_α
.Lx107_0:               .quad            .Lx107_0_s
.Lx107_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n26_call_builtin_prolog_α:
                        mov              r11, 27
                        mov              rax, qword ptr [rsp + 1728]
                        mov              qword ptr [rsp + 1808], rax
                        mov              rax, qword ptr [rsp + 1736]
                        mov              qword ptr [rsp + 1816], rax
                        mov              rax, qword ptr [rsp + 1744]
                        mov              qword ptr [rsp + 1792], rax
                        mov              rax, qword ptr [rsp + 1752]
                        mov              qword ptr [rsp + 1800], rax
                        mov              rax, qword ptr [rsp + 1840]
                        mov              qword ptr [rsp + 1776], rax
                        mov              rax, qword ptr [rsp + 1848]
                        mov              qword ptr [rsp + 1784], rax
                        lea              rdi, [rsp + 1776]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1760], rax
                        mov              qword ptr [rsp + 1768], rdx
                        cmp              al, 104;                             je    n78_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n27_call_builtin_prolog_α
n26_call_builtin_prolog_β:
                        mov              r11, 27;                             jmp   n78_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n27_call_builtin_prolog_α:
                        mov              r11, 28
                        mov              rax, qword ptr [rsp + 1760]
                        mov              qword ptr [rsp + 1696], rax
                        mov              rax, qword ptr [rsp + 1768]
                        mov              qword ptr [rsp + 1704], rax
                        mov              rax, qword ptr [rsp + 1712]
                        mov              qword ptr [rsp + 1680], rax
                        mov              rax, qword ptr [rsp + 1720]
                        mov              qword ptr [rsp + 1688], rax
                        .section         .rodata
.Lrkfn110:              .string          "$format2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn110]
                        lea              rsi, [rsp + 1680]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1664], rax
                        mov              qword ptr [rsp + 1672], rdx
                        cmp              al, 104;                             je    n78_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n28_lit_string_α
n27_call_builtin_prolog_β:
                        mov              r11, 28;                             jmp   n78_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_string_α:       mov              r11, 29
                        mov              qword ptr [rsp + 1520], 2            # result
                        mov              dword ptr [rsp + 1524], 4
                        mov              rax, qword ptr [rip + .Lx111_0]
                        mov              qword ptr [rsp + 1528], rax;         jmp   n29_lit_string_α
.Lx111_0:               .quad            .Lx111_0_s
.Lx111_0_s:             .string          "~g~n"
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_string_α:       mov              r11, 30
                        mov              qword ptr [rsp + 1648], 2            # result
                        mov              dword ptr [rsp + 1652], 1
                        mov              rax, qword ptr [rip + .Lx112_0]
                        mov              qword ptr [rsp + 1656], rax;         jmp   n30_lit_real_α
.Lx112_0:               .quad            .Lx112_0_s
.Lx112_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_real_α:         mov              r11, 31
                        mov              qword ptr [rsp + 1552], 5            # result
                        mov              rax, qword ptr [rip + .Lx113_0]
                        mov              qword ptr [rsp + 1560], rax;         jmp   n31_lit_string_α
.Lx113_0:               .quad            4614256650576692846
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:       mov              r11, 32
                        mov              qword ptr [rsp + 1536], 2            # result
                        mov              dword ptr [rsp + 1540], 2
                        mov              rax, qword ptr [rip + .Lx114_0]
                        mov              qword ptr [rsp + 1544], rax;         jmp   n32_call_builtin_prolog_α
.Lx114_0:               .quad            .Lx114_0_s
.Lx114_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n32_call_builtin_prolog_α:
                        mov              r11, 33
                        mov              rax, qword ptr [rsp + 1536]
                        mov              qword ptr [rsp + 1616], rax
                        mov              rax, qword ptr [rsp + 1544]
                        mov              qword ptr [rsp + 1624], rax
                        mov              rax, qword ptr [rsp + 1552]
                        mov              qword ptr [rsp + 1600], rax
                        mov              rax, qword ptr [rsp + 1560]
                        mov              qword ptr [rsp + 1608], rax
                        mov              rax, qword ptr [rsp + 1648]
                        mov              qword ptr [rsp + 1584], rax
                        mov              rax, qword ptr [rsp + 1656]
                        mov              qword ptr [rsp + 1592], rax
                        lea              rdi, [rsp + 1584]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1568], rax
                        mov              qword ptr [rsp + 1576], rdx
                        cmp              al, 104;                             je    n78_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n33_call_builtin_prolog_α
n32_call_builtin_prolog_β:
                        mov              r11, 33;                             jmp   n78_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n33_call_builtin_prolog_α:
                        mov              r11, 34
                        mov              rax, qword ptr [rsp + 1568]
                        mov              qword ptr [rsp + 1504], rax
                        mov              rax, qword ptr [rsp + 1576]
                        mov              qword ptr [rsp + 1512], rax
                        mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 1488], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1496], rax
                        .section         .rodata
.Lrkfn117:              .string          "$format2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn117]
                        lea              rsi, [rsp + 1488]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1472], rax
                        mov              qword ptr [rsp + 1480], rdx
                        cmp              al, 104;                             je    n78_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n34_lit_string_α
n33_call_builtin_prolog_β:
                        mov              r11, 34;                             jmp   n78_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_string_α:       mov              r11, 35
                        mov              qword ptr [rsp + 1328], 2            # result
                        mov              dword ptr [rsp + 1332], 6
                        mov              rax, qword ptr [rip + .Lx118_0]
                        mov              qword ptr [rsp + 1336], rax;         jmp   n35_lit_string_α
.Lx118_0:               .quad            .Lx118_0_s
.Lx118_0_s:             .string          "~16r~n"
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:       mov              r11, 36
                        mov              qword ptr [rsp + 1456], 2            # result
                        mov              dword ptr [rsp + 1460], 1
                        mov              rax, qword ptr [rip + .Lx119_0]
                        mov              qword ptr [rsp + 1464], rax;         jmp   n36_lit_integer_α
.Lx119_0:               .quad            .Lx119_0_s
.Lx119_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_integer_α:      mov              r11, 37
                        mov              qword ptr [rsp + 1360], 3            # result
                        mov              rax, qword ptr [rip + .Lx120_0]
                        mov              qword ptr [rsp + 1368], rax;         jmp   n37_lit_string_α
.Lx120_0:               .quad            255
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:       mov              r11, 38
                        mov              qword ptr [rsp + 1344], 2            # result
                        mov              dword ptr [rsp + 1348], 2
                        mov              rax, qword ptr [rip + .Lx121_0]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n38_call_builtin_prolog_α
.Lx121_0:               .quad            .Lx121_0_s
.Lx121_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n38_call_builtin_prolog_α:
                        mov              r11, 39
                        mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 1424], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 1432], rax
                        mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 1408], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 1416], rax
                        mov              rax, qword ptr [rsp + 1456]
                        mov              qword ptr [rsp + 1392], rax
                        mov              rax, qword ptr [rsp + 1464]
                        mov              qword ptr [rsp + 1400], rax
                        lea              rdi, [rsp + 1392]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx
                        cmp              al, 104;                             je    n78_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n39_call_builtin_prolog_α
n38_call_builtin_prolog_β:
                        mov              r11, 39;                             jmp   n78_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n39_call_builtin_prolog_α:
                        mov              r11, 40
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 1312], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 1320], rax
                        mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 1296], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 1304], rax
                        .section         .rodata
.Lrkfn124:              .string          "$format2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn124]
                        lea              rsi, [rsp + 1296]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx
                        cmp              al, 104;                             je    n78_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n40_lit_string_α
n39_call_builtin_prolog_β:
                        mov              r11, 40;                             jmp   n78_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:       mov              r11, 41
                        mov              qword ptr [rsp + 1136], 2            # result
                        mov              dword ptr [rsp + 1140], 5
                        mov              rax, qword ptr [rip + .Lx125_0]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n41_lit_string_α
.Lx125_0:               .quad            .Lx125_0_s
.Lx125_0_s:             .string          "~2r~n"
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:       mov              r11, 42
                        mov              qword ptr [rsp + 1264], 2            # result
                        mov              dword ptr [rsp + 1268], 1
                        mov              rax, qword ptr [rip + .Lx126_0]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n42_lit_integer_α
.Lx126_0:               .quad            .Lx126_0_s
.Lx126_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_integer_α:      mov              r11, 43
                        mov              qword ptr [rsp + 1168], 3            # result
                        mov              rax, qword ptr [rip + .Lx127_0]
                        mov              qword ptr [rsp + 1176], rax;         jmp   n43_lit_string_α
.Lx127_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_string_α:       mov              r11, 44
                        mov              qword ptr [rsp + 1152], 2            # result
                        mov              dword ptr [rsp + 1156], 2
                        mov              rax, qword ptr [rip + .Lx128_0]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n44_call_builtin_prolog_α
.Lx128_0:               .quad            .Lx128_0_s
.Lx128_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n44_call_builtin_prolog_α:
                        mov              r11, 45
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 1240], rax
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 1224], rax
                        mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 1208], rax
                        lea              rdi, [rsp + 1200]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx
                        cmp              al, 104;                             je    n78_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n45_call_builtin_prolog_α
n44_call_builtin_prolog_β:
                        mov              r11, 45;                             jmp   n78_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n45_call_builtin_prolog_α:
                        mov              r11, 46
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 1128], rax
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1112], rax
                        .section         .rodata
.Lrkfn131:              .string          "$format2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn131]
                        lea              rsi, [rsp + 1104]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx
                        cmp              al, 104;                             je    n78_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n46_lit_string_α
n45_call_builtin_prolog_β:
                        mov              r11, 46;                             jmp   n78_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:       mov              r11, 47
                        mov              qword ptr [rsp + 944], 2             # result
                        mov              dword ptr [rsp + 948], 4
                        mov              rax, qword ptr [rip + .Lx132_0]
                        mov              qword ptr [rsp + 952], rax;          jmp   n47_lit_string_α
.Lx132_0:               .quad            .Lx132_0_s
.Lx132_0_s:             .string          "~c~n"
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_string_α:       mov              r11, 48
                        mov              qword ptr [rsp + 1072], 2            # result
                        mov              dword ptr [rsp + 1076], 1
                        mov              rax, qword ptr [rip + .Lx133_0]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n48_lit_integer_α
.Lx133_0:               .quad            .Lx133_0_s
.Lx133_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_integer_α:      mov              r11, 49
                        mov              qword ptr [rsp + 976], 3             # result
                        mov              rax, qword ptr [rip + .Lx134_0]
                        mov              qword ptr [rsp + 984], rax;          jmp   n49_lit_string_α
.Lx134_0:               .quad            65
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_string_α:       mov              r11, 50
                        mov              qword ptr [rsp + 960], 2             # result
                        mov              dword ptr [rsp + 964], 2
                        mov              rax, qword ptr [rip + .Lx135_0]
                        mov              qword ptr [rsp + 968], rax;          jmp   n50_call_builtin_prolog_α
.Lx135_0:               .quad            .Lx135_0_s
.Lx135_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n50_call_builtin_prolog_α:
                        mov              r11, 51
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 1048], rax
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 1032], rax
                        mov              rax, qword ptr [rsp + 1072]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 1080]
                        mov              qword ptr [rsp + 1016], rax
                        lea              rdi, [rsp + 1008]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx
                        cmp              al, 104;                             je    n78_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n51_call_builtin_prolog_α
n50_call_builtin_prolog_β:
                        mov              r11, 51;                             jmp   n78_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n51_call_builtin_prolog_α:
                        mov              r11, 52
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 936], rax
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 920], rax
                        .section         .rodata
.Lrkfn138:              .string          "$format2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn138]
                        lea              rsi, [rsp + 912]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                        cmp              al, 104;                             je    n78_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n52_lit_string_α
n51_call_builtin_prolog_β:
                        mov              r11, 52;                             jmp   n78_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_string_α:       mov              r11, 53
                        mov              qword ptr [rsp + 752], 2             # result
                        mov              dword ptr [rsp + 756], 5
                        mov              rax, qword ptr [rip + .Lx139_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n53_lit_string_α
.Lx139_0:               .quad            .Lx139_0_s
.Lx139_0_s:             .string          "~3c~n"
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:       mov              r11, 54
                        mov              qword ptr [rsp + 880], 2             # result
                        mov              dword ptr [rsp + 884], 1
                        mov              rax, qword ptr [rip + .Lx140_0]
                        mov              qword ptr [rsp + 888], rax;          jmp   n54_lit_integer_α
.Lx140_0:               .quad            .Lx140_0_s
.Lx140_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_integer_α:      mov              r11, 55
                        mov              qword ptr [rsp + 784], 3             # result
                        mov              rax, qword ptr [rip + .Lx141_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n55_lit_string_α
.Lx141_0:               .quad            42
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_string_α:       mov              r11, 56
                        mov              qword ptr [rsp + 768], 2             # result
                        mov              dword ptr [rsp + 772], 2
                        mov              rax, qword ptr [rip + .Lx142_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n56_call_builtin_prolog_α
.Lx142_0:               .quad            .Lx142_0_s
.Lx142_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n56_call_builtin_prolog_α:
                        mov              r11, 57
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 856], rax
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 840], rax
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 824], rax
                        lea              rdi, [rsp + 816]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        cmp              al, 104;                             je    n78_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n57_call_builtin_prolog_α
n56_call_builtin_prolog_β:
                        mov              r11, 57;                             jmp   n78_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n57_call_builtin_prolog_α:
                        mov              r11, 58
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 744], rax
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 728], rax
                        .section         .rodata
.Lrkfn145:              .string          "$format2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn145]
                        lea              rsi, [rsp + 720]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        cmp              al, 104;                             je    n78_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n58_lit_string_α
n57_call_builtin_prolog_β:
                        mov              r11, 58;                             jmp   n78_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_string_α:       mov              r11, 59
                        mov              qword ptr [rsp + 336], 2             # result
                        mov              dword ptr [rsp + 340], 4
                        mov              rax, qword ptr [rip + .Lx146_0]
                        mov              qword ptr [rsp + 344], rax;          jmp   n59_lit_string_α
.Lx146_0:               .quad            .Lx146_0_s
.Lx146_0_s:             .string          "~s~n"
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:       mov              r11, 60
                        mov              qword ptr [rsp + 688], 2             # result
                        mov              dword ptr [rsp + 692], 1
                        mov              rax, qword ptr [rip + .Lx147_0]
                        mov              qword ptr [rsp + 696], rax;          jmp   n60_lit_string_α
.Lx147_0:               .quad            .Lx147_0_s
.Lx147_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:       mov              r11, 61
                        mov              qword ptr [rsp + 592], 2             # result
                        mov              dword ptr [rsp + 596], 1
                        mov              rax, qword ptr [rip + .Lx148_0]
                        mov              qword ptr [rsp + 600], rax;          jmp   n61_lit_integer_α
.Lx148_0:               .quad            .Lx148_0_s
.Lx148_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_integer_α:      mov              r11, 62
                        mov              qword ptr [rsp + 496], 3             # result
                        mov              rax, qword ptr [rip + .Lx149_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n62_lit_string_α
.Lx149_0:               .quad            104
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_string_α:       mov              r11, 63
                        mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 1
                        mov              rax, qword ptr [rip + .Lx150_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n63_lit_integer_α
.Lx150_0:               .quad            .Lx150_0_s
.Lx150_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_integer_α:      mov              r11, 64
                        mov              qword ptr [rsp + 384], 3             # result
                        mov              rax, qword ptr [rip + .Lx151_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n64_lit_string_α
.Lx151_0:               .quad            105
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_string_α:       mov              r11, 65
                        mov              qword ptr [rsp + 368], 2             # result
                        mov              dword ptr [rsp + 372], 2
                        mov              rax, qword ptr [rip + .Lx152_0]
                        mov              qword ptr [rsp + 376], rax;          jmp   n65_call_builtin_prolog_α
.Lx152_0:               .quad            .Lx152_0_s
.Lx152_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n65_call_builtin_prolog_α:
                        mov              r11, 66
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 456], rax
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 440], rax
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 424], rax
                        lea              rdi, [rsp + 416]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n66_call_builtin_prolog_α
n65_call_builtin_prolog_β:
                        mov              r11, 66;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n66_call_builtin_prolog_α:
                        mov              r11, 67
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 568], rax
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 552], rax
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 536], rax
                        lea              rdi, [rsp + 528]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n67_lit_string_α
n66_call_builtin_prolog_β:
                        mov              r11, 67;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_string_α:       mov              r11, 68
                        mov              qword ptr [rsp + 352], 2             # result
                        mov              dword ptr [rsp + 356], 2
                        mov              rax, qword ptr [rip + .Lx155_0]
                        mov              qword ptr [rsp + 360], rax;          jmp   n68_call_builtin_prolog_α
.Lx155_0:               .quad            .Lx155_0_s
.Lx155_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n68_call_builtin_prolog_α:
                        mov              r11, 69
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 664], rax
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 648], rax
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 632], rax
                        lea              rdi, [rsp + 624]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              al, 104;                             je    n78_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n69_call_builtin_prolog_α
n68_call_builtin_prolog_β:
                        mov              r11, 69;                             jmp   n78_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n69_call_builtin_prolog_α:
                        mov              r11, 70
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 312], rax
                        .section         .rodata
.Lrkfn158:              .string          "$format2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn158]
                        lea              rsi, [rsp + 304]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    n78_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n70_lit_string_α
n69_call_builtin_prolog_β:
                        mov              r11, 70;                             jmp   n78_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_string_α:       mov              r11, 71
                        mov              qword ptr [rsp + 144], 2             # result
                        mov              dword ptr [rsp + 148], 4
                        mov              rax, qword ptr [rip + .Lx159_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n71_lit_string_α
.Lx159_0:               .quad            .Lx159_0_s
.Lx159_0_s:             .string          "~d~n"
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_string_α:       mov              r11, 72
                        mov              qword ptr [rsp + 272], 2             # result
                        mov              dword ptr [rsp + 276], 1
                        mov              rax, qword ptr [rip + .Lx160_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n72_lit_integer_α
.Lx160_0:               .quad            .Lx160_0_s
.Lx160_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_integer_α:      mov              r11, 73
                        mov              qword ptr [rsp + 176], 3             # result
                        mov              rax, qword ptr [rip + .Lx161_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n73_lit_string_α
.Lx161_0:               .quad            42
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_string_α:       mov              r11, 74
                        mov              qword ptr [rsp + 160], 2             # result
                        mov              dword ptr [rsp + 164], 2
                        mov              rax, qword ptr [rip + .Lx162_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n74_call_builtin_prolog_α
.Lx162_0:               .quad            .Lx162_0_s
.Lx162_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n74_call_builtin_prolog_α:
                        mov              r11, 75
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 248], rax
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 232], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 216], rax
                        lea              rdi, [rsp + 208]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n78_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n75_call_builtin_prolog_α
n74_call_builtin_prolog_β:
                        mov              r11, 75;                             jmp   n78_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n75_call_builtin_prolog_α:
                        mov              r11, 76
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 136], rax
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn165:              .string          "$format2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn165]
                        lea              rsi, [rsp + 112]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n78_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n76_move_label_α
n75_call_builtin_prolog_β:
                        mov              r11, 76;                             jmp   n78_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n76_move_label_α:       mov              r11, 77
                        lea              rax, [rip + n78_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 16], rax;           jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n77_disjunction_α:      mov              r11, 78
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    main_ω
                                                                              jmp   rax
n77_disjunction_β:      mov              r11, 78;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n78_call_builtin_prolog_α:
                        mov              r11, 79
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
n78_call_builtin_prolog_β:
                        mov              r11, 79;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   n77_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 2568]
                        add              rsp, 2592;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 2576]
                        add              rsp, 2592;                           jmp   rcx
                        .section         .note.GNU-stack,"",@progbits
