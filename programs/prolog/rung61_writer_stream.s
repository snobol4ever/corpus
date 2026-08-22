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
                        sub              rsp, 2080
                        mov              qword ptr [rsp + 2056], rcx
                        mov              qword ptr [rsp + 2064], rdx
                        mov              qword ptr [rsp + 2072], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 2048
                        rep              stosb
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx67_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx67_101
.Lx67_102:              lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx67_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx67_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx67_101
.Lx67_100:              lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx67_101:              mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1_lit_string_α
n0_call_builtin_prolog_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        mov              qword ptr [rsp + 2016], 2            # result
                        mov              dword ptr [rsp + 2020], 11
                        mov              rax, qword ptr [rip + .Lx68_0]
                        mov              qword ptr [rsp + 2024], rax;         jmp   n2_call_builtin_prolog_α
.Lx68_0:                .quad            .Lx68_0_s
.Lx68_0_s:              .string          "hello world"
#-----------------------------------------------------------------------------------------------------------------------
n2_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2016]
                        mov              qword ptr [rsp + 2000], rax
                        mov              rax, qword ptr [rsp + 2024]
                        mov              qword ptr [rsp + 2008], rax
                        .section         .rodata
.Lrkfn70:               .string          "$writeq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn70]
                        lea              rsi, [rsp + 2000]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1984], rax
                        mov              qword ptr [rsp + 1992], rdx
                        cmp              al, 104;                             je    n66_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n3_lit_string_α
n2_call_builtin_prolog_β:
                                                                              jmp   n66_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:        mov              qword ptr [rsp + 1968], 2            # result
                        mov              dword ptr [rsp + 1972], 0
                        mov              rax, qword ptr [rip + .Lx71_0]
                        mov              qword ptr [rsp + 1976], rax;         jmp   n4_call_builtin_prolog_α
.Lx71_0:                .quad            .Lx71_0_s
.Lx71_0_s:              .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n4_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1968]
                        mov              qword ptr [rsp + 1952], rax
                        mov              rax, qword ptr [rsp + 1976]
                        mov              qword ptr [rsp + 1960], rax
                        .section         .rodata
.Lrkfn73:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn73]
                        lea              rsi, [rsp + 1952]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx
                        cmp              al, 104;                             je    n66_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n5_lit_string_α
n4_call_builtin_prolog_β:
                                                                              jmp   n66_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:        mov              qword ptr [rsp + 1568], 2            # result
                        mov              dword ptr [rsp + 1572], 18
                        mov              rax, qword ptr [rip + .Lx74_0]
                        mov              qword ptr [rsp + 1576], rax;         jmp   n6_lit_string_α
.Lx74_0:                .quad            .Lx74_0_s
.Lx74_0_s:              .string          "~w plus ~w is ~d~n"
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:        mov              qword ptr [rsp + 1920], 2            # result
                        mov              dword ptr [rsp + 1924], 1
                        mov              rax, qword ptr [rip + .Lx75_0]
                        mov              qword ptr [rsp + 1928], rax;         jmp   n7_lit_integer_α
.Lx75_0:                .quad            .Lx75_0_s
.Lx75_0_s:              .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:       mov              qword ptr [rsp + 1824], 3            # result
                        mov              rax, qword ptr [rip + .Lx76_0]
                        mov              qword ptr [rsp + 1832], rax;         jmp   n8_lit_string_α
.Lx76_0:                .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:        mov              qword ptr [rsp + 1808], 2            # result
                        mov              dword ptr [rsp + 1812], 1
                        mov              rax, qword ptr [rip + .Lx77_0]
                        mov              qword ptr [rsp + 1816], rax;         jmp   n9_lit_integer_α
.Lx77_0:                .quad            .Lx77_0_s
.Lx77_0_s:              .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:       mov              qword ptr [rsp + 1712], 3            # result
                        mov              rax, qword ptr [rip + .Lx78_0]
                        mov              qword ptr [rsp + 1720], rax;         jmp   n10_lit_string_α
.Lx78_0:                .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:       mov              qword ptr [rsp + 1696], 2            # result
                        mov              dword ptr [rsp + 1700], 1
                        mov              rax, qword ptr [rip + .Lx79_0]
                        mov              qword ptr [rsp + 1704], rax;         jmp   n11_lit_integer_α
.Lx79_0:                .quad            .Lx79_0_s
.Lx79_0_s:              .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:      mov              qword ptr [rsp + 1600], 3            # result
                        mov              rax, qword ptr [rip + .Lx80_0]
                        mov              qword ptr [rsp + 1608], rax;         jmp   n12_lit_string_α
.Lx80_0:                .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:       mov              qword ptr [rsp + 1584], 2            # result
                        mov              dword ptr [rsp + 1588], 2
                        mov              rax, qword ptr [rip + .Lx81_0]
                        mov              qword ptr [rsp + 1592], rax;         jmp   n13_call_builtin_prolog_α
.Lx81_0:                .quad            .Lx81_0_s
.Lx81_0_s:              .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n13_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1584]
                        mov              qword ptr [rsp + 1664], rax
                        mov              rax, qword ptr [rsp + 1592]
                        mov              qword ptr [rsp + 1672], rax
                        mov              rax, qword ptr [rsp + 1600]
                        mov              qword ptr [rsp + 1648], rax
                        mov              rax, qword ptr [rsp + 1608]
                        mov              qword ptr [rsp + 1656], rax
                        mov              rax, qword ptr [rsp + 1696]
                        mov              qword ptr [rsp + 1632], rax
                        mov              rax, qword ptr [rsp + 1704]
                        mov              qword ptr [rsp + 1640], rax
                        lea              rdi, [rsp + 1632]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1616], rax
                        mov              qword ptr [rsp + 1624], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n14_call_builtin_prolog_α
n13_call_builtin_prolog_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n14_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1616]
                        mov              qword ptr [rsp + 1776], rax
                        mov              rax, qword ptr [rsp + 1624]
                        mov              qword ptr [rsp + 1784], rax
                        mov              rax, qword ptr [rsp + 1712]
                        mov              qword ptr [rsp + 1760], rax
                        mov              rax, qword ptr [rsp + 1720]
                        mov              qword ptr [rsp + 1768], rax
                        mov              rax, qword ptr [rsp + 1808]
                        mov              qword ptr [rsp + 1744], rax
                        mov              rax, qword ptr [rsp + 1816]
                        mov              qword ptr [rsp + 1752], rax
                        lea              rdi, [rsp + 1744]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1728], rax
                        mov              qword ptr [rsp + 1736], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n15_call_builtin_prolog_α
n14_call_builtin_prolog_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n15_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1728]
                        mov              qword ptr [rsp + 1888], rax
                        mov              rax, qword ptr [rsp + 1736]
                        mov              qword ptr [rsp + 1896], rax
                        mov              rax, qword ptr [rsp + 1824]
                        mov              qword ptr [rsp + 1872], rax
                        mov              rax, qword ptr [rsp + 1832]
                        mov              qword ptr [rsp + 1880], rax
                        mov              rax, qword ptr [rsp + 1920]
                        mov              qword ptr [rsp + 1856], rax
                        mov              rax, qword ptr [rsp + 1928]
                        mov              qword ptr [rsp + 1864], rax
                        lea              rdi, [rsp + 1856]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1840], rax
                        mov              qword ptr [rsp + 1848], rdx
                        cmp              al, 104;                             je    n66_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n16_call_builtin_prolog_α
n15_call_builtin_prolog_β:
                                                                              jmp   n66_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n16_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1840]
                        mov              qword ptr [rsp + 1552], rax
                        mov              rax, qword ptr [rsp + 1848]
                        mov              qword ptr [rsp + 1560], rax
                        mov              rax, qword ptr [rsp + 1568]
                        mov              qword ptr [rsp + 1536], rax
                        mov              rax, qword ptr [rsp + 1576]
                        mov              qword ptr [rsp + 1544], rax
                        .section         .rodata
.Lrkfn86:               .string          "$format2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn86]
                        lea              rsi, [rsp + 1536]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1520], rax
                        mov              qword ptr [rsp + 1528], rdx
                        cmp              al, 104;                             je    n66_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n17_lit_string_α
n16_call_builtin_prolog_β:
                                                                              jmp   n66_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:       mov              qword ptr [rsp + 1296], 2            # result
                        mov              dword ptr [rsp + 1300], 1
                        mov              rax, qword ptr [rip + .Lx87_0]
                        mov              qword ptr [rsp + 1304], rax;         jmp   n18_lit_string_α
.Lx87_0:                .quad            .Lx87_0_s
.Lx87_0_s:              .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:       mov              qword ptr [rsp + 1200], 2            # result
                        mov              dword ptr [rsp + 1204], 1
                        mov              rax, qword ptr [rip + .Lx88_0]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n19_lit_string_α
.Lx88_0:                .quad            .Lx88_0_s
.Lx88_0_s:              .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:       mov              qword ptr [rsp + 1184], 2            # result
                        mov              dword ptr [rsp + 1188], 1
                        mov              rax, qword ptr [rip + .Lx89_0]
                        mov              qword ptr [rsp + 1192], rax;         jmp   n20_lit_string_α
.Lx89_0:                .quad            .Lx89_0_s
.Lx89_0_s:              .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:       mov              qword ptr [rsp + 1088], 2            # result
                        mov              dword ptr [rsp + 1092], 1
                        mov              rax, qword ptr [rip + .Lx90_0]
                        mov              qword ptr [rsp + 1096], rax;         jmp   n21_lit_string_α
.Lx90_0:                .quad            .Lx90_0_s
.Lx90_0_s:              .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_string_α:       mov              qword ptr [rsp + 1072], 2            # result
                        mov              dword ptr [rsp + 1076], 1
                        mov              rax, qword ptr [rip + .Lx91_0]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n22_lit_string_α
.Lx91_0:                .quad            .Lx91_0_s
.Lx91_0_s:              .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:       mov              qword ptr [rsp + 976], 2             # result
                        mov              dword ptr [rsp + 980], 1
                        mov              rax, qword ptr [rip + .Lx92_0]
                        mov              qword ptr [rsp + 984], rax;          jmp   n23_lit_string_α
.Lx92_0:                .quad            .Lx92_0_s
.Lx92_0_s:              .string          "c"
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:       mov              qword ptr [rsp + 960], 2             # result
                        mov              dword ptr [rsp + 964], 2
                        mov              rax, qword ptr [rip + .Lx93_0]
                        mov              qword ptr [rsp + 968], rax;          jmp   n24_call_builtin_prolog_α
.Lx93_0:                .quad            .Lx93_0_s
.Lx93_0_s:              .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n24_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n25_call_builtin_prolog_α
n24_call_builtin_prolog_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n25_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 1160], rax
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1144], rax
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 1128], rax
                        lea              rdi, [rsp + 1120]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n26_call_builtin_prolog_α
n25_call_builtin_prolog_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n26_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 1272], rax
                        mov              rax, qword ptr [rsp + 1200]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 1208]
                        mov              qword ptr [rsp + 1256], rax
                        mov              rax, qword ptr [rsp + 1296]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 1240], rax
                        lea              rdi, [rsp + 1232]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx
                        cmp              al, 104;                             je    n66_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n27_lit_string_α
n26_call_builtin_prolog_β:
                                                                              jmp   n66_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:       mov              qword ptr [rsp + 1504], 2            # result
                        mov              dword ptr [rsp + 1508], 1
                        mov              rax, qword ptr [rip + .Lx97_0]
                        mov              qword ptr [rsp + 1512], rax;         jmp   n28_lit_string_α
.Lx97_0:                .quad            .Lx97_0_s
.Lx97_0_s:              .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_string_α:       mov              qword ptr [rsp + 1408], 2            # result
                        mov              dword ptr [rsp + 1412], 6
                        mov              rax, qword ptr [rip + .Lx98_0]
                        mov              qword ptr [rsp + 1416], rax;         jmp   n29_lit_string_α
.Lx98_0:                .quad            .Lx98_0_s
.Lx98_0_s:              .string          "quoted"
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_string_α:       mov              qword ptr [rsp + 1328], 2            # result
                        mov              dword ptr [rsp + 1332], 4
                        mov              rax, qword ptr [rip + .Lx99_0]
                        mov              qword ptr [rsp + 1336], rax;         jmp   n30_call_builtin_prolog_α
.Lx99_0:                .quad            .Lx99_0_s
.Lx99_0_s:              .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n30_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 1376], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 1384], rax
                        mov              rax, qword ptr [rsp + 1408]
                        mov              qword ptr [rsp + 1360], rax
                        mov              rax, qword ptr [rsp + 1416]
                        mov              qword ptr [rsp + 1368], rax
                        lea              rdi, [rsp + 1360]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n31_lit_string_α
n30_call_builtin_prolog_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:       mov              qword ptr [rsp + 1312], 2            # result
                        mov              dword ptr [rsp + 1316], 2
                        mov              rax, qword ptr [rip + .Lx101_0]
                        mov              qword ptr [rsp + 1320], rax;         jmp   n32_call_builtin_prolog_α
.Lx101_0:               .quad            .Lx101_0_s
.Lx101_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n32_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1312]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 1320]
                        mov              qword ptr [rsp + 1480], rax
                        mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 1464], rax
                        mov              rax, qword ptr [rsp + 1504]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 1512]
                        mov              qword ptr [rsp + 1448], rax
                        lea              rdi, [rsp + 1440]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx
                        cmp              al, 104;                             je    n66_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n33_call_builtin_prolog_α
n32_call_builtin_prolog_β:
                                                                              jmp   n66_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n33_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1424]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 1432]
                        mov              qword ptr [rsp + 952], rax
                        mov              rax, qword ptr [rsp + 1216]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 936], rax
                        .section         .rodata
.Lrkfn104:              .string          "$write_term"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn104]
                        lea              rsi, [rsp + 928]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        cmp              al, 104;                             je    n66_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n34_lit_string_α
n33_call_builtin_prolog_β:
                                                                              jmp   n66_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_string_α:       mov              qword ptr [rsp + 896], 2             # result
                        mov              dword ptr [rsp + 900], 0
                        mov              rax, qword ptr [rip + .Lx105_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n35_call_builtin_prolog_α
.Lx105_0:               .quad            .Lx105_0_s
.Lx105_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n35_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 888], rax
                        .section         .rodata
.Lrkfn107:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn107]
                        lea              rsi, [rsp + 880]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx
                        cmp              al, 104;                             je    n66_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n36_lit_string_α
n35_call_builtin_prolog_β:
                                                                              jmp   n66_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_string_α:       mov              qword ptr [rsp + 848], 2             # result
                        mov              dword ptr [rsp + 852], 10
                        mov              rax, qword ptr [rip + .Lx108_0]
                        mov              qword ptr [rsp + 856], rax;          jmp   n37_call_builtin_prolog_α
.Lx108_0:               .quad            .Lx108_0_s
.Lx108_0_s:             .string          "user_error"
#-----------------------------------------------------------------------------------------------------------------------
n37_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 840], rax
                        .section         .rodata
.Lrkfn110:              .string          "$set_output"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn110]
                        lea              rsi, [rsp + 832]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                        cmp              al, 104;                             je    n66_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n38_lit_string_α
n37_call_builtin_prolog_β:
                                                                              jmp   n66_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_string_α:       mov              qword ptr [rsp + 800], 2             # result
                        mov              dword ptr [rsp + 804], 17
                        mov              rax, qword ptr [rip + .Lx111_0]
                        mov              qword ptr [rsp + 808], rax;          jmp   n39_call_builtin_prolog_α
.Lx111_0:               .quad            .Lx111_0_s
.Lx111_0_s:             .string          "redirected_to_err"
#-----------------------------------------------------------------------------------------------------------------------
n39_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 792], rax
                        .section         .rodata
.Lrkfn113:              .string          "$writeq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn113]
                        lea              rsi, [rsp + 784]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                        cmp              al, 104;                             je    n66_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n40_lit_string_α
n39_call_builtin_prolog_β:
                                                                              jmp   n66_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:       mov              qword ptr [rsp + 752], 2             # result
                        mov              dword ptr [rsp + 756], 0
                        mov              rax, qword ptr [rip + .Lx114_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n41_call_builtin_prolog_α
.Lx114_0:               .quad            .Lx114_0_s
.Lx114_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n41_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 744], rax
                        .section         .rodata
.Lrkfn116:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn116]
                        lea              rsi, [rsp + 736]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx
                        cmp              al, 104;                             je    n66_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n42_lit_string_α
n41_call_builtin_prolog_β:
                                                                              jmp   n66_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:       mov              qword ptr [rsp + 576], 2             # result
                        mov              dword ptr [rsp + 580], 4
                        mov              rax, qword ptr [rip + .Lx117_0]
                        mov              qword ptr [rsp + 584], rax;          jmp   n43_lit_string_α
.Lx117_0:               .quad            .Lx117_0_s
.Lx117_0_s:             .string          "~w~n"
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_string_α:       mov              qword ptr [rsp + 704], 2             # result
                        mov              dword ptr [rsp + 708], 1
                        mov              rax, qword ptr [rip + .Lx118_0]
                        mov              qword ptr [rsp + 712], rax;          jmp   n44_lit_string_α
.Lx118_0:               .quad            .Lx118_0_s
.Lx118_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_string_α:       mov              qword ptr [rsp + 608], 2             # result
                        mov              dword ptr [rsp + 612], 8
                        mov              rax, qword ptr [rip + .Lx119_0]
                        mov              qword ptr [rsp + 616], rax;          jmp   n45_lit_string_α
.Lx119_0:               .quad            .Lx119_0_s
.Lx119_0_s:             .string          "also_err"
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_string_α:       mov              qword ptr [rsp + 592], 2             # result
                        mov              dword ptr [rsp + 596], 2
                        mov              rax, qword ptr [rip + .Lx120_0]
                        mov              qword ptr [rsp + 600], rax;          jmp   n46_call_builtin_prolog_α
.Lx120_0:               .quad            .Lx120_0_s
.Lx120_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n46_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 680], rax
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 664], rax
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 648], rax
                        lea              rdi, [rsp + 640]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        cmp              al, 104;                             je    n66_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n47_call_builtin_prolog_α
n46_call_builtin_prolog_β:
                                                                              jmp   n66_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n47_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 568], rax
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 552], rax
                        .section         .rodata
.Lrkfn123:              .string          "$format2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn123]
                        lea              rsi, [rsp + 544]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        cmp              al, 104;                             je    n66_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n48_lit_string_α
n47_call_builtin_prolog_β:
                                                                              jmp   n66_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_string_α:       mov              qword ptr [rsp + 512], 2             # result
                        mov              dword ptr [rsp + 516], 11
                        mov              rax, qword ptr [rip + .Lx124_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n49_call_builtin_prolog_α
.Lx124_0:               .quad            .Lx124_0_s
.Lx124_0_s:             .string          "user_output"
#-----------------------------------------------------------------------------------------------------------------------
n49_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 504], rax
                        .section         .rodata
.Lrkfn126:              .string          "$set_output"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn126]
                        lea              rsi, [rsp + 496]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              al, 104;                             je    n66_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n50_lit_string_α
n49_call_builtin_prolog_β:
                                                                              jmp   n66_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_string_α:       mov              qword ptr [rsp + 464], 2             # result
                        mov              dword ptr [rsp + 468], 15
                        mov              rax, qword ptr [rip + .Lx127_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n51_call_builtin_prolog_α
.Lx127_0:               .quad            .Lx127_0_s
.Lx127_0_s:             .string          "restored_to_out"
#-----------------------------------------------------------------------------------------------------------------------
n51_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 456], rax
                        .section         .rodata
.Lrkfn129:              .string          "$writeq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn129]
                        lea              rsi, [rsp + 448]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              al, 104;                             je    n66_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n52_lit_string_α
n51_call_builtin_prolog_β:
                                                                              jmp   n66_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_string_α:       mov              qword ptr [rsp + 416], 2             # result
                        mov              dword ptr [rsp + 420], 0
                        mov              rax, qword ptr [rip + .Lx130_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n53_call_builtin_prolog_α
.Lx130_0:               .quad            .Lx130_0_s
.Lx130_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n53_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 408], rax
                        .section         .rodata
.Lrkfn132:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn132]
                        lea              rsi, [rsp + 400]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n66_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n54_lit_string_α
n53_call_builtin_prolog_β:
                                                                              jmp   n66_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:       mov              qword ptr [rsp + 240], 2             # result
                        mov              dword ptr [rsp + 244], 9
                        mov              rax, qword ptr [rip + .Lx133_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n55_lit_string_α
.Lx133_0:               .quad            .Lx133_0_s
.Lx133_0_s:             .string          "~a done~n"
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_string_α:       mov              qword ptr [rsp + 368], 2             # result
                        mov              dword ptr [rsp + 372], 1
                        mov              rax, qword ptr [rip + .Lx134_0]
                        mov              qword ptr [rsp + 376], rax;          jmp   n56_lit_string_α
.Lx134_0:               .quad            .Lx134_0_s
.Lx134_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_string_α:       mov              qword ptr [rsp + 272], 2             # result
                        mov              dword ptr [rsp + 276], 6
                        mov              rax, qword ptr [rip + .Lx135_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n57_lit_string_α
.Lx135_0:               .quad            .Lx135_0_s
.Lx135_0_s:             .string          "format"
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_string_α:       mov              qword ptr [rsp + 256], 2             # result
                        mov              dword ptr [rsp + 260], 2
                        mov              rax, qword ptr [rip + .Lx136_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n58_call_builtin_prolog_α
.Lx136_0:               .quad            .Lx136_0_s
.Lx136_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n58_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 344], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 312], rax
                        lea              rdi, [rsp + 304]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    n66_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n59_call_builtin_prolog_α
n58_call_builtin_prolog_β:
                                                                              jmp   n66_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n59_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 232], rax
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 216], rax
                        .section         .rodata
.Lrkfn139:              .string          "$format2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn139]
                        lea              rsi, [rsp + 208]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n66_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n60_lit_string_α
n59_call_builtin_prolog_β:
                                                                              jmp   n66_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:       mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], 11
                        mov              rax, qword ptr [rip + .Lx140_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n61_call_builtin_prolog_α
.Lx140_0:               .quad            .Lx140_0_s
.Lx140_0_s:             .string          "plain_write"
#-----------------------------------------------------------------------------------------------------------------------
n61_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn142:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn142]
                        lea              rsi, [rsp + 160]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n66_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n62_lit_string_α
n61_call_builtin_prolog_β:
                                                                              jmp   n66_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_string_α:       mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 0
                        mov              rax, qword ptr [rip + .Lx143_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n63_call_builtin_prolog_α
.Lx143_0:               .quad            .Lx143_0_s
.Lx143_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n63_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn145:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn145]
                        lea              rsi, [rsp + 112]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n66_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n64_move_label_α
n63_call_builtin_prolog_β:
                                                                              jmp   n66_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n64_move_label_α:       lea              rax, [rip + n66_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 16], rax;           jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n65_disjunction_α:      mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    main_ω
                                                                              jmp   rax
n65_disjunction_β:                                                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n66_call_builtin_prolog_α:
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
n66_call_builtin_prolog_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   n65_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 2056]
                        add              rsp, 2080;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 2064]
                        add              rsp, 2080;                           jmp   rcx
                        .section         .note.GNU-stack,"",@progbits
