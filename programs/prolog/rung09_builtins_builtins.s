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
                        sub              rsp, 2000
                        mov              qword ptr [rsp + 1976], rcx
                        mov              qword ptr [rsp + 1984], rdx
                        mov              qword ptr [rsp + 1992], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 1968
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_prolog_α:
                        mov              r11, 1
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx72_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx72_101
.Lx72_102:              lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx72_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx72_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx72_101
.Lx72_100:              lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx72_101:              mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1_lit_string_α
n0_call_builtin_prolog_β:
                        mov              r11, 1;                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        mov              r11, 2
                        mov              qword ptr [rsp + 1840], 2            # result
                        mov              dword ptr [rsp + 1844], 3
                        mov              rax, qword ptr [rip + .Lx73_0]
                        mov              qword ptr [rsp + 1848], rax;         jmp   n2_lit_string_α
.Lx73_0:                .quad            .Lx73_0_s
.Lx73_0_s:              .string          "foo"
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:        mov              r11, 3
                        mov              qword ptr [rsp + 1728], 2            # result
                        mov              dword ptr [rsp + 1732], 1
                        mov              rax, qword ptr [rip + .Lx74_0]
                        mov              qword ptr [rsp + 1736], rax;         jmp   n3_lit_string_α
.Lx74_0:                .quad            .Lx74_0_s
.Lx74_0_s:              .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:        mov              r11, 4
                        mov              qword ptr [rsp + 1744], 2            # result
                        mov              dword ptr [rsp + 1748], 1
                        mov              rax, qword ptr [rip + .Lx75_0]
                        mov              qword ptr [rsp + 1752], rax;         jmp   n4_call_builtin_prolog_α
.Lx75_0:                .quad            .Lx75_0_s
.Lx75_0_s:              .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n4_call_builtin_prolog_α:
                        mov              r11, 5
                        mov              rax, qword ptr [rsp + 1744]
                        mov              qword ptr [rsp + 1808], rax
                        mov              rax, qword ptr [rsp + 1752]
                        mov              qword ptr [rsp + 1816], rax
                        mov              rax, qword ptr [rsp + 1728]
                        mov              qword ptr [rsp + 1792], rax
                        mov              rax, qword ptr [rsp + 1736]
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
                        cmp              al, 104;                             je    n71_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n5_var_ref_α
n4_call_builtin_prolog_β:
                        mov              r11, 5;                              jmp   n71_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:           mov              r11, 6
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1936]
                        mov              qword ptr [rsp + 1856], rax
                        mov              qword ptr [rsp + 1864], rdx;         jmp   n6_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n6_var_ref_α:           mov              r11, 7
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1920]
                        mov              qword ptr [rsp + 1872], rax
                        mov              qword ptr [rsp + 1880], rdx;         jmp   n7_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n7_call_builtin_prolog_α:
                        mov              r11, 8
                        mov              rax, qword ptr [rsp + 1872]
                        mov              qword ptr [rsp + 1712], rax
                        mov              rax, qword ptr [rsp + 1880]
                        mov              qword ptr [rsp + 1720], rax
                        mov              rax, qword ptr [rsp + 1856]
                        mov              qword ptr [rsp + 1696], rax
                        mov              rax, qword ptr [rsp + 1864]
                        mov              qword ptr [rsp + 1704], rax
                        mov              rax, qword ptr [rsp + 1760]
                        mov              qword ptr [rsp + 1680], rax
                        mov              rax, qword ptr [rsp + 1768]
                        mov              qword ptr [rsp + 1688], rax
                        .section         .rodata
.Lrkfn82:               .string          "$functor"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn82]
                        lea              rsi, [rsp + 1680]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1664], rax
                        mov              qword ptr [rsp + 1672], rdx
                        cmp              al, 104;                             je    n71_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n8_var_α
n7_call_builtin_prolog_β:
                        mov              r11, 8;                              jmp   n71_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n8_var_α:               mov              r11, 9
                        mov              rax, qword ptr [rsp + 1936]
                        mov              qword ptr [rsp + 1648], rax
                        mov              rax, qword ptr [rsp + 1944]
                        mov              qword ptr [rsp + 1656], rax;         jmp   n9_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n9_call_builtin_prolog_α:
                        mov              r11, 10
                        mov              rax, qword ptr [rsp + 1648]
                        mov              qword ptr [rsp + 1632], rax
                        mov              rax, qword ptr [rsp + 1656]
                        mov              qword ptr [rsp + 1640], rax
                        .section         .rodata
.Lrkfn86:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn86]
                        lea              rsi, [rsp + 1632]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1616], rax
                        mov              qword ptr [rsp + 1624], rdx
                        cmp              al, 104;                             je    n71_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n10_lit_string_α
n9_call_builtin_prolog_β:
                        mov              r11, 10;                             jmp   n71_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:       mov              r11, 11
                        mov              qword ptr [rsp + 1600], 2            # result
                        mov              dword ptr [rsp + 1604], 1
                        mov              rax, qword ptr [rip + .Lx87_0]
                        mov              qword ptr [rsp + 1608], rax;         jmp   n11_call_builtin_prolog_α
.Lx87_0:                .quad            .Lx87_0_s
.Lx87_0_s:              .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_prolog_α:
                        mov              r11, 12
                        mov              rax, qword ptr [rsp + 1600]
                        mov              qword ptr [rsp + 1584], rax
                        mov              rax, qword ptr [rsp + 1608]
                        mov              qword ptr [rsp + 1592], rax
                        .section         .rodata
.Lrkfn89:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn89]
                        lea              rsi, [rsp + 1584]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1568], rax
                        mov              qword ptr [rsp + 1576], rdx
                        cmp              al, 104;                             je    n71_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n12_var_α
n11_call_builtin_prolog_β:
                        mov              r11, 12;                             jmp   n71_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n12_var_α:              mov              r11, 13
                        mov              rax, qword ptr [rsp + 1920]
                        mov              qword ptr [rsp + 1552], rax
                        mov              rax, qword ptr [rsp + 1928]
                        mov              qword ptr [rsp + 1560], rax;         jmp   n13_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n13_call_builtin_prolog_α:
                        mov              r11, 14
                        mov              rax, qword ptr [rsp + 1552]
                        mov              qword ptr [rsp + 1536], rax
                        mov              rax, qword ptr [rsp + 1560]
                        mov              qword ptr [rsp + 1544], rax
                        .section         .rodata
.Lrkfn93:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn93]
                        lea              rsi, [rsp + 1536]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1520], rax
                        mov              qword ptr [rsp + 1528], rdx
                        cmp              al, 104;                             je    n71_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n14_lit_string_α
n13_call_builtin_prolog_β:
                        mov              r11, 14;                             jmp   n71_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:       mov              r11, 15
                        mov              qword ptr [rsp + 1504], 2            # result
                        mov              dword ptr [rsp + 1508], 0
                        mov              rax, qword ptr [rip + .Lx94_0]
                        mov              qword ptr [rsp + 1512], rax;         jmp   n15_call_builtin_prolog_α
.Lx94_0:                .quad            .Lx94_0_s
.Lx94_0_s:              .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n15_call_builtin_prolog_α:
                        mov              r11, 16
                        mov              rax, qword ptr [rsp + 1504]
                        mov              qword ptr [rsp + 1488], rax
                        mov              rax, qword ptr [rsp + 1512]
                        mov              qword ptr [rsp + 1496], rax
                        .section         .rodata
.Lrkfn96:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn96]
                        lea              rsi, [rsp + 1488]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1472], rax
                        mov              qword ptr [rsp + 1480], rdx
                        cmp              al, 104;                             je    n71_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n16_lit_integer_α
n15_call_builtin_prolog_β:
                        mov              r11, 16;                             jmp   n71_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:      mov              r11, 17
                        mov              qword ptr [rsp + 1312], 3            # result
                        mov              rax, qword ptr [rip + .Lx97_0]
                        mov              qword ptr [rsp + 1320], rax;         jmp   n17_lit_string_α
.Lx97_0:                .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:       mov              r11, 18
                        mov              qword ptr [rsp + 1440], 2            # result
                        mov              dword ptr [rsp + 1444], 3
                        mov              rax, qword ptr [rip + .Lx98_0]
                        mov              qword ptr [rsp + 1448], rax;         jmp   n18_lit_string_α
.Lx98_0:                .quad            .Lx98_0_s
.Lx98_0_s:              .string          "foo"
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:       mov              r11, 19
                        mov              qword ptr [rsp + 1328], 2            # result
                        mov              dword ptr [rsp + 1332], 1
                        mov              rax, qword ptr [rip + .Lx99_0]
                        mov              qword ptr [rsp + 1336], rax;         jmp   n19_lit_string_α
.Lx99_0:                .quad            .Lx99_0_s
.Lx99_0_s:              .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:       mov              r11, 20
                        mov              qword ptr [rsp + 1344], 2            # result
                        mov              dword ptr [rsp + 1348], 1
                        mov              rax, qword ptr [rip + .Lx100_0]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n20_call_builtin_prolog_α
.Lx100_0:               .quad            .Lx100_0_s
.Lx100_0_s:             .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n20_call_builtin_prolog_α:
                        mov              r11, 21
                        mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 1408], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 1416], rax
                        mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 1392], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 1400], rax
                        mov              rax, qword ptr [rsp + 1440]
                        mov              qword ptr [rsp + 1376], rax
                        mov              rax, qword ptr [rsp + 1448]
                        mov              qword ptr [rsp + 1384], rax
                        lea              rdi, [rsp + 1376]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx
                        cmp              al, 104;                             je    n71_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n21_var_ref_α
n20_call_builtin_prolog_β:
                        mov              r11, 21;                             jmp   n71_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n21_var_ref_α:          mov              r11, 22
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1904]
                        mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx;         jmp   n22_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n22_call_builtin_prolog_α:
                        mov              r11, 23
                        mov              rax, qword ptr [rsp + 1456]
                        mov              qword ptr [rsp + 1296], rax
                        mov              rax, qword ptr [rsp + 1464]
                        mov              qword ptr [rsp + 1304], rax
                        mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 1280], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 1288], rax
                        mov              rax, qword ptr [rsp + 1312]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 1320]
                        mov              qword ptr [rsp + 1272], rax
                        .section         .rodata
.Lrkfn105:              .string          "$arg"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn105]
                        lea              rsi, [rsp + 1264]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx
                        cmp              al, 104;                             je    n71_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n23_var_α
n22_call_builtin_prolog_β:
                        mov              r11, 23;                             jmp   n71_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n23_var_α:              mov              r11, 24
                        mov              rax, qword ptr [rsp + 1904]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 1912]
                        mov              qword ptr [rsp + 1240], rax;         jmp   n24_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n24_call_builtin_prolog_α:
                        mov              r11, 25
                        mov              rax, qword ptr [rsp + 1232]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 1224], rax
                        .section         .rodata
.Lrkfn109:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn109]
                        lea              rsi, [rsp + 1216]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx
                        cmp              al, 104;                             je    n71_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n25_lit_string_α
n24_call_builtin_prolog_β:
                        mov              r11, 25;                             jmp   n71_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:       mov              r11, 26
                        mov              qword ptr [rsp + 1184], 2            # result
                        mov              dword ptr [rsp + 1188], 0
                        mov              rax, qword ptr [rip + .Lx110_0]
                        mov              qword ptr [rsp + 1192], rax;         jmp   n26_call_builtin_prolog_α
.Lx110_0:               .quad            .Lx110_0_s
.Lx110_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n26_call_builtin_prolog_α:
                        mov              r11, 27
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 1176], rax
                        .section         .rodata
.Lrkfn112:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn112]
                        lea              rsi, [rsp + 1168]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx
                        cmp              al, 104;                             je    n71_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n27_lit_string_α
n26_call_builtin_prolog_β:
                        mov              r11, 27;                             jmp   n71_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:       mov              r11, 28
                        mov              qword ptr [rsp + 1120], 2            # result
                        mov              dword ptr [rsp + 1124], 3
                        mov              rax, qword ptr [rip + .Lx113_0]
                        mov              qword ptr [rsp + 1128], rax;         jmp   n28_lit_string_α
.Lx113_0:               .quad            .Lx113_0_s
.Lx113_0_s:             .string          "foo"
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_string_α:       mov              r11, 29
                        mov              qword ptr [rsp + 1008], 2            # result
                        mov              dword ptr [rsp + 1012], 1
                        mov              rax, qword ptr [rip + .Lx114_0]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n29_lit_string_α
.Lx114_0:               .quad            .Lx114_0_s
.Lx114_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_string_α:       mov              r11, 30
                        mov              qword ptr [rsp + 1024], 2            # result
                        mov              dword ptr [rsp + 1028], 1
                        mov              rax, qword ptr [rip + .Lx115_0]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n30_call_builtin_prolog_α
.Lx115_0:               .quad            .Lx115_0_s
.Lx115_0_s:             .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n30_call_builtin_prolog_α:
                        mov              r11, 31
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 1096], rax
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 1080], rax
                        mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 1064], rax
                        lea              rdi, [rsp + 1056]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        cmp              al, 104;                             je    n71_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n31_var_ref_α
n30_call_builtin_prolog_β:
                        mov              r11, 31;                             jmp   n71_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n31_var_ref_α:          mov              r11, 32
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1888]
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx;         jmp   n32_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n32_call_builtin_prolog_α:
                        mov              r11, 33
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1000], rax
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 984], rax
                        .section         .rodata
.Lrkfn120:              .string          "$univ"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn120]
                        lea              rsi, [rsp + 976]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx
                        cmp              al, 104;                             je    n71_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n33_var_α
n32_call_builtin_prolog_β:
                        mov              r11, 33;                             jmp   n71_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n33_var_α:              mov              r11, 34
                        mov              rax, qword ptr [rsp + 1888]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 1896]
                        mov              qword ptr [rsp + 952], rax;          jmp   n34_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n34_call_builtin_prolog_α:
                        mov              r11, 35
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 936], rax
                        .section         .rodata
.Lrkfn124:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn124]
                        lea              rsi, [rsp + 928]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        cmp              al, 104;                             je    n71_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n35_lit_string_α
n34_call_builtin_prolog_β:
                        mov              r11, 35;                             jmp   n71_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:       mov              r11, 36
                        mov              qword ptr [rsp + 896], 2             # result
                        mov              dword ptr [rsp + 900], 0
                        mov              rax, qword ptr [rip + .Lx125_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n36_call_builtin_prolog_α
.Lx125_0:               .quad            .Lx125_0_s
.Lx125_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n36_call_builtin_prolog_α:
                        mov              r11, 37
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 888], rax
                        .section         .rodata
.Lrkfn127:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn127]
                        lea              rsi, [rsp + 880]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx
                        cmp              al, 104;                             je    n71_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n37_lit_string_α
n36_call_builtin_prolog_β:
                        mov              r11, 37;                             jmp   n71_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:       mov              r11, 38
                        mov              qword ptr [rsp + 848], 2             # result
                        mov              dword ptr [rsp + 852], 5
                        mov              rax, qword ptr [rip + .Lx128_0]
                        mov              qword ptr [rsp + 856], rax;          jmp   n38_call_builtin_prolog_α
.Lx128_0:               .quad            .Lx128_0_s
.Lx128_0_s:             .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n38_call_builtin_prolog_α:
                        mov              r11, 39
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 840], rax
                        .section         .rodata
.Lrkfn130:              .string          "$tt_atom"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn130]
                        lea              rsi, [rsp + 832]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                        cmp              al, 104;                             je    n41_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n39_lit_string_α
n38_call_builtin_prolog_β:
                        mov              r11, 39;                             jmp   n41_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:       mov              r11, 40
                        mov              qword ptr [rsp + 752], 2             # result
                        mov              dword ptr [rsp + 756], 3
                        mov              rax, qword ptr [rip + .Lx131_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n40_call_builtin_prolog_α
.Lx131_0:               .quad            .Lx131_0_s
.Lx131_0_s:             .string          "yes"
#-----------------------------------------------------------------------------------------------------------------------
n40_call_builtin_prolog_α:
                        mov              r11, 41
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 744], rax
                        .section         .rodata
.Lrkfn133:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn133]
                        lea              rsi, [rsp + 736]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx
                        cmp              al, 104;                             je    n71_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n43_lit_string_α
n40_call_builtin_prolog_β:
                        mov              r11, 41;                             jmp   n71_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:       mov              r11, 42
                        mov              qword ptr [rsp + 800], 2             # result
                        mov              dword ptr [rsp + 804], 2
                        mov              rax, qword ptr [rip + .Lx134_0]
                        mov              qword ptr [rsp + 808], rax;          jmp   n42_call_builtin_prolog_α
.Lx134_0:               .quad            .Lx134_0_s
.Lx134_0_s:             .string          "no"
#-----------------------------------------------------------------------------------------------------------------------
n42_call_builtin_prolog_α:
                        mov              r11, 43
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 792], rax
                        .section         .rodata
.Lrkfn136:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn136]
                        lea              rsi, [rsp + 784]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                        cmp              al, 104;                             je    n71_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n43_lit_string_α
n42_call_builtin_prolog_β:
                        mov              r11, 43;                             jmp   n71_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_string_α:       mov              r11, 44
                        mov              qword ptr [rsp + 704], 2             # result
                        mov              dword ptr [rsp + 708], 0
                        mov              rax, qword ptr [rip + .Lx137_0]
                        mov              qword ptr [rsp + 712], rax;          jmp   n44_call_builtin_prolog_α
.Lx137_0:               .quad            .Lx137_0_s
.Lx137_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n44_call_builtin_prolog_α:
                        mov              r11, 45
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 696], rax
                        .section         .rodata
.Lrkfn139:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn139]
                        lea              rsi, [rsp + 688]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                        cmp              al, 104;                             je    n71_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n45_lit_integer_α
n44_call_builtin_prolog_β:
                        mov              r11, 45;                             jmp   n71_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_integer_α:      mov              r11, 46
                        mov              qword ptr [rsp + 656], 3             # result
                        mov              rax, qword ptr [rip + .Lx140_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n46_call_builtin_prolog_α
.Lx140_0:               .quad            42
#-----------------------------------------------------------------------------------------------------------------------
n46_call_builtin_prolog_α:
                        mov              r11, 47
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 648], rax
                        .section         .rodata
.Lrkfn142:              .string          "$tt_integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn142]
                        lea              rsi, [rsp + 640]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        cmp              al, 104;                             je    n49_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n47_lit_string_α
n46_call_builtin_prolog_β:
                        mov              r11, 47;                             jmp   n49_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_string_α:       mov              r11, 48
                        mov              qword ptr [rsp + 560], 2             # result
                        mov              dword ptr [rsp + 564], 3
                        mov              rax, qword ptr [rip + .Lx143_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n48_call_builtin_prolog_α
.Lx143_0:               .quad            .Lx143_0_s
.Lx143_0_s:             .string          "yes"
#-----------------------------------------------------------------------------------------------------------------------
n48_call_builtin_prolog_α:
                        mov              r11, 49
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 552], rax
                        .section         .rodata
.Lrkfn145:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn145]
                        lea              rsi, [rsp + 544]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        cmp              al, 104;                             je    n71_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n51_lit_string_α
n48_call_builtin_prolog_β:
                        mov              r11, 49;                             jmp   n71_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_string_α:       mov              r11, 50
                        mov              qword ptr [rsp + 608], 2             # result
                        mov              dword ptr [rsp + 612], 2
                        mov              rax, qword ptr [rip + .Lx146_0]
                        mov              qword ptr [rsp + 616], rax;          jmp   n50_call_builtin_prolog_α
.Lx146_0:               .quad            .Lx146_0_s
.Lx146_0_s:             .string          "no"
#-----------------------------------------------------------------------------------------------------------------------
n50_call_builtin_prolog_α:
                        mov              r11, 51
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 600], rax
                        .section         .rodata
.Lrkfn148:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn148]
                        lea              rsi, [rsp + 592]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              al, 104;                             je    n71_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n51_lit_string_α
n50_call_builtin_prolog_β:
                        mov              r11, 51;                             jmp   n71_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_string_α:       mov              r11, 52
                        mov              qword ptr [rsp + 512], 2             # result
                        mov              dword ptr [rsp + 516], 0
                        mov              rax, qword ptr [rip + .Lx149_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n52_call_builtin_prolog_α
.Lx149_0:               .quad            .Lx149_0_s
.Lx149_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n52_call_builtin_prolog_α:
                        mov              r11, 53
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 504], rax
                        .section         .rodata
.Lrkfn151:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn151]
                        lea              rsi, [rsp + 496]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              al, 104;                             je    n71_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n53_lit_integer_α
n52_call_builtin_prolog_β:
                        mov              r11, 53;                             jmp   n71_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_integer_α:      mov              r11, 54
                        mov              qword ptr [rsp + 464], 3             # result
                        mov              rax, qword ptr [rip + .Lx152_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n54_call_builtin_prolog_α
.Lx152_0:               .quad            42
#-----------------------------------------------------------------------------------------------------------------------
n54_call_builtin_prolog_α:
                        mov              r11, 55
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 456], rax
                        .section         .rodata
.Lrkfn154:              .string          "$tt_atom"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn154]
                        lea              rsi, [rsp + 448]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              al, 104;                             je    n57_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n55_lit_string_α
n54_call_builtin_prolog_β:
                        mov              r11, 55;                             jmp   n57_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_string_α:       mov              r11, 56
                        mov              qword ptr [rsp + 368], 2             # result
                        mov              dword ptr [rsp + 372], 3
                        mov              rax, qword ptr [rip + .Lx155_0]
                        mov              qword ptr [rsp + 376], rax;          jmp   n56_call_builtin_prolog_α
.Lx155_0:               .quad            .Lx155_0_s
.Lx155_0_s:             .string          "yes"
#-----------------------------------------------------------------------------------------------------------------------
n56_call_builtin_prolog_α:
                        mov              r11, 57
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 360], rax
                        .section         .rodata
.Lrkfn157:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn157]
                        lea              rsi, [rsp + 352]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n71_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n59_lit_string_α
n56_call_builtin_prolog_β:
                        mov              r11, 57;                             jmp   n71_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_string_α:       mov              r11, 58
                        mov              qword ptr [rsp + 416], 2             # result
                        mov              dword ptr [rsp + 420], 2
                        mov              rax, qword ptr [rip + .Lx158_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n58_call_builtin_prolog_α
.Lx158_0:               .quad            .Lx158_0_s
.Lx158_0_s:             .string          "no"
#-----------------------------------------------------------------------------------------------------------------------
n58_call_builtin_prolog_α:
                        mov              r11, 59
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 408], rax
                        .section         .rodata
.Lrkfn160:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn160]
                        lea              rsi, [rsp + 400]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n71_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n59_lit_string_α
n58_call_builtin_prolog_β:
                        mov              r11, 59;                             jmp   n71_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:       mov              r11, 60
                        mov              qword ptr [rsp + 320], 2             # result
                        mov              dword ptr [rsp + 324], 0
                        mov              rax, qword ptr [rip + .Lx161_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n60_call_builtin_prolog_α
.Lx161_0:               .quad            .Lx161_0_s
.Lx161_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n60_call_builtin_prolog_α:
                        mov              r11, 61
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 312], rax
                        .section         .rodata
.Lrkfn163:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn163]
                        lea              rsi, [rsp + 304]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    n71_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n61_lit_string_α
n60_call_builtin_prolog_β:
                        mov              r11, 61;                             jmp   n71_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_string_α:       mov              r11, 62
                        mov              qword ptr [rsp + 272], 2             # result
                        mov              dword ptr [rsp + 276], 5
                        mov              rax, qword ptr [rip + .Lx164_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n62_call_builtin_prolog_α
.Lx164_0:               .quad            .Lx164_0_s
.Lx164_0_s:             .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n62_call_builtin_prolog_α:
                        mov              r11, 63
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 264], rax
                        .section         .rodata
.Lrkfn166:              .string          "$tt_integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn166]
                        lea              rsi, [rsp + 256]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n65_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n63_lit_string_α
n62_call_builtin_prolog_β:
                        mov              r11, 63;                             jmp   n65_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_string_α:       mov              r11, 64
                        mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], 3
                        mov              rax, qword ptr [rip + .Lx167_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n64_call_builtin_prolog_α
.Lx167_0:               .quad            .Lx167_0_s
.Lx167_0_s:             .string          "yes"
#-----------------------------------------------------------------------------------------------------------------------
n64_call_builtin_prolog_α:
                        mov              r11, 65
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn169:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn169]
                        lea              rsi, [rsp + 160]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n71_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n67_lit_string_α
n64_call_builtin_prolog_β:
                        mov              r11, 65;                             jmp   n71_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_string_α:       mov              r11, 66
                        mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], 2
                        mov              rax, qword ptr [rip + .Lx170_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n66_call_builtin_prolog_α
.Lx170_0:               .quad            .Lx170_0_s
.Lx170_0_s:             .string          "no"
#-----------------------------------------------------------------------------------------------------------------------
n66_call_builtin_prolog_α:
                        mov              r11, 67
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 216], rax
                        .section         .rodata
.Lrkfn172:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn172]
                        lea              rsi, [rsp + 208]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n71_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n67_lit_string_α
n66_call_builtin_prolog_β:
                        mov              r11, 67;                             jmp   n71_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_string_α:       mov              r11, 68
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 0
                        mov              rax, qword ptr [rip + .Lx173_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n68_call_builtin_prolog_α
.Lx173_0:               .quad            .Lx173_0_s
.Lx173_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n68_call_builtin_prolog_α:
                        mov              r11, 69
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn175:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn175]
                        lea              rsi, [rsp + 112]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n71_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n69_move_label_α
n68_call_builtin_prolog_β:
                        mov              r11, 69;                             jmp   n71_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n69_move_label_α:       mov              r11, 70
                        lea              rax, [rip + n71_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 16], rax;           jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n70_disjunction_α:      mov              r11, 71
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    main_ω
                                                                              jmp   rax
n70_disjunction_β:      mov              r11, 71;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n71_call_builtin_prolog_α:
                        mov              r11, 72
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
n71_call_builtin_prolog_β:
                        mov              r11, 72;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   n70_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1976]
                        add              rsp, 2000;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 1984]
                        add              rsp, 2000;                           jmp   rcx
                        .section         .note.GNU-stack,"",@progbits
