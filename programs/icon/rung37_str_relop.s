                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 2272
                        mov              qword ptr [rsp + 2248], rcx
                        mov              qword ptr [rsp + 2256], rdx
                        mov              rdi, rsp
                        add              rdi, 2160
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 2
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:        mov              qword ptr [rsp + 2144], 2            # result
                        mov              dword ptr [rsp + 2148], 1
                        mov              rax, qword ptr [rip + .Lx100_0]
                        mov              qword ptr [rsp + 2152], rax;         jmp   n1_assign_α
.Lx100_0:               .quad            .Lx100_0_s
.Lx100_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:            mov              rax, qword ptr [rsp + 2144]
                        mov              rdx, qword ptr [rsp + 2152]
                        mov              qword ptr [rsp + 2176], rax
                        mov              qword ptr [rsp + 2184], rdx;         jmp   n2_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:        mov              qword ptr [rsp + 2128], 2            # result
                        mov              dword ptr [rsp + 2132], 1
                        mov              rax, qword ptr [rip + .Lx102_0]
                        mov              qword ptr [rsp + 2136], rax;         jmp   n3_assign_α
.Lx102_0:               .quad            .Lx102_0_s
.Lx102_0_s:             .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:            mov              rax, qword ptr [rsp + 2128]
                        mov              rdx, qword ptr [rsp + 2136]
                        mov              qword ptr [rsp + 2160], rax
                        mov              qword ptr [rsp + 2168], rdx;         jmp   n4_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n4_disjunction_α:       mov              qword ptr [rsp + 1984], 0
                        mov              qword ptr [rsp + 1992], 0
                        mov              dword ptr [rsp + 2000], 0;           jmp   n5_var_α
n4_disjunction_as:      mov              eax, dword ptr [rsp + 2000]
                        cmp              eax, 0;                              jne   .Lx105_0
                        mov              rax, qword ptr [rsp + 2016]
                        mov              qword ptr [rsp + 1984], rax
                        mov              rax, qword ptr [rsp + 2024]
                        mov              qword ptr [rsp + 1992], rax;         jmp   n10_disjunction_α
.Lx105_0:                                                                     jmp   n10_disjunction_α
n4_disjunction_β:       mov              eax, dword ptr [rsp + 2000];         jmp   n10_disjunction_α
n4_disjunction_af:      add              dword ptr [rsp + 2000], 1
                        mov              eax, dword ptr [rsp + 2000];         jmp   n10_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:               mov              rax, qword ptr [rsp + 2176]
                        mov              qword ptr [rsp + 2096], rax
                        mov              rax, qword ptr [rsp + 2184]
                        mov              qword ptr [rsp + 2104], rax;         jmp   n6_var_α
n5_var_β:                                                                     jmp   n4_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:               mov              rax, qword ptr [rsp + 2160]
                        mov              qword ptr [rsp + 2112], rax
                        mov              rax, qword ptr [rsp + 2168]
                        mov              qword ptr [rsp + 2120], rax;         jmp   n7_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n7_binop_test_α:        mov              rdi, qword ptr [rsp + 2176]
                        mov              rsi, qword ptr [rsp + 2184]
                        mov              rdx, qword ptr [rsp + 2160]
                        mov              rcx, qword ptr [rsp + 2168]
                        mov              r8d, 12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n4_disjunction_af
                        mov              rdi, qword ptr [rsp + 2160]
                        mov              rsi, qword ptr [rsp + 2168]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 2080], rax
                        mov              qword ptr [rsp + 2088], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n8_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:        mov              qword ptr [rsp + 2064], 2            # result
                        mov              dword ptr [rsp + 2068], 4
                        mov              rax, qword ptr [rip + .Lx111_0]
                        mov              qword ptr [rsp + 2072], rax;         jmp   n9_call_builtin_icon_α
.Lx111_0:               .quad            .Lx111_0_s
.Lx111_0_s:             .string          "a<<b"
#-----------------------------------------------------------------------------------------------------------------------
n9_call_builtin_icon_α: mov              rax, qword ptr [rsp + 2064]
                        mov              qword ptr [rsp + 2032], rax
                        mov              rax, qword ptr [rsp + 2072]
                        mov              qword ptr [rsp + 2040], rax
                        .section         .rodata
.Lrkfn113:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn113]
                        lea              rsi, [rsp + 2032]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2016], rax
                        mov              qword ptr [rsp + 2024], rdx
                        cmp              eax, 104;                            je    n10_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n4_disjunction_as
n9_call_builtin_icon_β:                                                       jmp   n10_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n10_disjunction_α:      mov              qword ptr [rsp + 1840], 0
                        mov              qword ptr [rsp + 1848], 0
                        mov              dword ptr [rsp + 1856], 0;           jmp   n11_var_α
n10_disjunction_as:     mov              eax, dword ptr [rsp + 1856]
                        cmp              eax, 0;                              jne   .Lx115_0
                        mov              rax, qword ptr [rsp + 1872]
                        mov              qword ptr [rsp + 1840], rax
                        mov              rax, qword ptr [rsp + 1880]
                        mov              qword ptr [rsp + 1848], rax;         jmp   n16_disjunction_α
.Lx115_0:                                                                     jmp   n16_disjunction_α
n10_disjunction_β:      mov              eax, dword ptr [rsp + 1856];         jmp   n16_disjunction_α
n10_disjunction_af:     add              dword ptr [rsp + 1856], 1
                        mov              eax, dword ptr [rsp + 1856];         jmp   n16_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n11_var_α:              mov              rax, qword ptr [rsp + 2160]
                        mov              qword ptr [rsp + 1952], rax
                        mov              rax, qword ptr [rsp + 2168]
                        mov              qword ptr [rsp + 1960], rax;         jmp   n12_var_α
n11_var_β:                                                                    jmp   n10_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n12_var_α:              mov              rax, qword ptr [rsp + 2176]
                        mov              qword ptr [rsp + 1968], rax
                        mov              rax, qword ptr [rsp + 2184]
                        mov              qword ptr [rsp + 1976], rax;         jmp   n13_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n13_binop_test_α:       mov              rdi, qword ptr [rsp + 2160]
                        mov              rsi, qword ptr [rsp + 2168]
                        mov              rdx, qword ptr [rsp + 2176]
                        mov              rcx, qword ptr [rsp + 2184]
                        mov              r8d, 14
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n10_disjunction_af
                        mov              rdi, qword ptr [rsp + 2176]
                        mov              rsi, qword ptr [rsp + 2184]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n14_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:       mov              qword ptr [rsp + 1920], 2            # result
                        mov              dword ptr [rsp + 1924], 4
                        mov              rax, qword ptr [rip + .Lx121_0]
                        mov              qword ptr [rsp + 1928], rax;         jmp   n15_call_builtin_icon_α
.Lx121_0:               .quad            .Lx121_0_s
.Lx121_0_s:             .string          "b>>a"
#-----------------------------------------------------------------------------------------------------------------------
n15_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1920]
                        mov              qword ptr [rsp + 1888], rax
                        mov              rax, qword ptr [rsp + 1928]
                        mov              qword ptr [rsp + 1896], rax
                        .section         .rodata
.Lrkfn123:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn123]
                        lea              rsi, [rsp + 1888]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1872], rax
                        mov              qword ptr [rsp + 1880], rdx
                        cmp              eax, 104;                            je    n16_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n10_disjunction_as
n15_call_builtin_icon_β:
                                                                              jmp   n16_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n16_disjunction_α:      mov              qword ptr [rsp + 1696], 0
                        mov              qword ptr [rsp + 1704], 0
                        mov              dword ptr [rsp + 1712], 0;           jmp   n17_var_α
n16_disjunction_as:     mov              eax, dword ptr [rsp + 1712]
                        cmp              eax, 0;                              jne   .Lx125_0
                        mov              rax, qword ptr [rsp + 1728]
                        mov              qword ptr [rsp + 1696], rax
                        mov              rax, qword ptr [rsp + 1736]
                        mov              qword ptr [rsp + 1704], rax;         jmp   n22_disjunction_α
.Lx125_0:                                                                     jmp   n22_disjunction_α
n16_disjunction_β:      mov              eax, dword ptr [rsp + 1712];         jmp   n22_disjunction_α
n16_disjunction_af:     add              dword ptr [rsp + 1712], 1
                        mov              eax, dword ptr [rsp + 1712];         jmp   n22_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n17_var_α:              mov              rax, qword ptr [rsp + 2176]
                        mov              qword ptr [rsp + 1808], rax
                        mov              rax, qword ptr [rsp + 2184]
                        mov              qword ptr [rsp + 1816], rax;         jmp   n18_var_α
n17_var_β:                                                                    jmp   n16_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n18_var_α:              mov              rax, qword ptr [rsp + 2176]
                        mov              qword ptr [rsp + 1824], rax
                        mov              rax, qword ptr [rsp + 2184]
                        mov              qword ptr [rsp + 1832], rax;         jmp   n19_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n19_binop_test_α:       mov              rdi, qword ptr [rsp + 2176]
                        mov              rsi, qword ptr [rsp + 2184]
                        mov              rdx, qword ptr [rsp + 2176]
                        mov              rcx, qword ptr [rsp + 2184]
                        mov              r8d, 13
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n16_disjunction_af
                        mov              rdi, qword ptr [rsp + 2176]
                        mov              rsi, qword ptr [rsp + 2184]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 1792], rax
                        mov              qword ptr [rsp + 1800], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n20_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:       mov              qword ptr [rsp + 1776], 2            # result
                        mov              dword ptr [rsp + 1780], 5
                        mov              rax, qword ptr [rip + .Lx131_0]
                        mov              qword ptr [rsp + 1784], rax;         jmp   n21_call_builtin_icon_α
.Lx131_0:               .quad            .Lx131_0_s
.Lx131_0_s:             .string          "a<<=a"
#-----------------------------------------------------------------------------------------------------------------------
n21_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1776]
                        mov              qword ptr [rsp + 1744], rax
                        mov              rax, qword ptr [rsp + 1784]
                        mov              qword ptr [rsp + 1752], rax
                        .section         .rodata
.Lrkfn133:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn133]
                        lea              rsi, [rsp + 1744]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1728], rax
                        mov              qword ptr [rsp + 1736], rdx
                        cmp              eax, 104;                            je    n22_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n16_disjunction_as
n21_call_builtin_icon_β:
                                                                              jmp   n22_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n22_disjunction_α:      mov              qword ptr [rsp + 1552], 0
                        mov              qword ptr [rsp + 1560], 0
                        mov              dword ptr [rsp + 1568], 0;           jmp   n23_var_α
n22_disjunction_as:     mov              eax, dword ptr [rsp + 1568]
                        cmp              eax, 0;                              jne   .Lx135_0
                        mov              rax, qword ptr [rsp + 1584]
                        mov              qword ptr [rsp + 1552], rax
                        mov              rax, qword ptr [rsp + 1592]
                        mov              qword ptr [rsp + 1560], rax;         jmp   n28_disjunction_α
.Lx135_0:                                                                     jmp   n28_disjunction_α
n22_disjunction_β:      mov              eax, dword ptr [rsp + 1568];         jmp   n28_disjunction_α
n22_disjunction_af:     add              dword ptr [rsp + 1568], 1
                        mov              eax, dword ptr [rsp + 1568];         jmp   n28_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n23_var_α:              mov              rax, qword ptr [rsp + 2160]
                        mov              qword ptr [rsp + 1664], rax
                        mov              rax, qword ptr [rsp + 2168]
                        mov              qword ptr [rsp + 1672], rax;         jmp   n24_var_α
n23_var_β:                                                                    jmp   n22_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n24_var_α:              mov              rax, qword ptr [rsp + 2160]
                        mov              qword ptr [rsp + 1680], rax
                        mov              rax, qword ptr [rsp + 2168]
                        mov              qword ptr [rsp + 1688], rax;         jmp   n25_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n25_binop_test_α:       mov              rdi, qword ptr [rsp + 2160]
                        mov              rsi, qword ptr [rsp + 2168]
                        mov              rdx, qword ptr [rsp + 2160]
                        mov              rcx, qword ptr [rsp + 2168]
                        mov              r8d, 15
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n22_disjunction_af
                        mov              rdi, qword ptr [rsp + 2160]
                        mov              rsi, qword ptr [rsp + 2168]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 1648], rax
                        mov              qword ptr [rsp + 1656], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n26_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:       mov              qword ptr [rsp + 1632], 2            # result
                        mov              dword ptr [rsp + 1636], 5
                        mov              rax, qword ptr [rip + .Lx141_0]
                        mov              qword ptr [rsp + 1640], rax;         jmp   n27_call_builtin_icon_α
.Lx141_0:               .quad            .Lx141_0_s
.Lx141_0_s:             .string          "b>>=b"
#-----------------------------------------------------------------------------------------------------------------------
n27_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1632]
                        mov              qword ptr [rsp + 1600], rax
                        mov              rax, qword ptr [rsp + 1640]
                        mov              qword ptr [rsp + 1608], rax
                        .section         .rodata
.Lrkfn143:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn143]
                        lea              rsi, [rsp + 1600]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1584], rax
                        mov              qword ptr [rsp + 1592], rdx
                        cmp              eax, 104;                            je    n28_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n22_disjunction_as
n27_call_builtin_icon_β:
                                                                              jmp   n28_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n28_disjunction_α:      mov              qword ptr [rsp + 1408], 0
                        mov              qword ptr [rsp + 1416], 0
                        mov              dword ptr [rsp + 1424], 0;           jmp   n29_var_α
n28_disjunction_as:     mov              eax, dword ptr [rsp + 1424]
                        cmp              eax, 0;                              jne   .Lx145_0
                        mov              rax, qword ptr [rsp + 1440]
                        mov              qword ptr [rsp + 1408], rax
                        mov              rax, qword ptr [rsp + 1448]
                        mov              qword ptr [rsp + 1416], rax;         jmp   n34_disjunction_α
.Lx145_0:                                                                     jmp   n34_disjunction_α
n28_disjunction_β:      mov              eax, dword ptr [rsp + 1424];         jmp   n34_disjunction_α
n28_disjunction_af:     add              dword ptr [rsp + 1424], 1
                        mov              eax, dword ptr [rsp + 1424];         jmp   n34_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n29_var_α:              mov              rax, qword ptr [rsp + 2176]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 2184]
                        mov              qword ptr [rsp + 1528], rax;         jmp   n30_var_α
n29_var_β:                                                                    jmp   n28_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n30_var_α:              mov              rax, qword ptr [rsp + 2176]
                        mov              qword ptr [rsp + 1536], rax
                        mov              rax, qword ptr [rsp + 2184]
                        mov              qword ptr [rsp + 1544], rax;         jmp   n31_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n31_binop_test_α:       mov              rdi, qword ptr [rsp + 2176]
                        mov              rsi, qword ptr [rsp + 2184]
                        mov              rdx, qword ptr [rsp + 2176]
                        mov              rcx, qword ptr [rsp + 2184]
                        mov              r8d, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n28_disjunction_af
                        mov              rdi, qword ptr [rsp + 2176]
                        mov              rsi, qword ptr [rsp + 2184]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n32_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_string_α:       mov              qword ptr [rsp + 1488], 2            # result
                        mov              dword ptr [rsp + 1492], 4
                        mov              rax, qword ptr [rip + .Lx151_0]
                        mov              qword ptr [rsp + 1496], rax;         jmp   n33_call_builtin_icon_α
.Lx151_0:               .quad            .Lx151_0_s
.Lx151_0_s:             .string          "a==a"
#-----------------------------------------------------------------------------------------------------------------------
n33_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1488]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 1496]
                        mov              qword ptr [rsp + 1464], rax
                        .section         .rodata
.Lrkfn153:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn153]
                        lea              rsi, [rsp + 1456]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1440], rax
                        mov              qword ptr [rsp + 1448], rdx
                        cmp              eax, 104;                            je    n34_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n28_disjunction_as
n33_call_builtin_icon_β:
                                                                              jmp   n34_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n34_disjunction_α:      mov              qword ptr [rsp + 1264], 0
                        mov              qword ptr [rsp + 1272], 0
                        mov              dword ptr [rsp + 1280], 0;           jmp   n35_var_α
n34_disjunction_as:     mov              eax, dword ptr [rsp + 1280]
                        cmp              eax, 0;                              jne   .Lx155_0
                        mov              rax, qword ptr [rsp + 1296]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n40_lit_string_α
.Lx155_0:                                                                     jmp   n40_lit_string_α
n34_disjunction_β:      mov              eax, dword ptr [rsp + 1280];         jmp   n40_lit_string_α
n34_disjunction_af:     add              dword ptr [rsp + 1280], 1
                        mov              eax, dword ptr [rsp + 1280];         jmp   n40_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n35_var_α:              mov              rax, qword ptr [rsp + 2176]
                        mov              qword ptr [rsp + 1376], rax
                        mov              rax, qword ptr [rsp + 2184]
                        mov              qword ptr [rsp + 1384], rax;         jmp   n36_var_α
n35_var_β:                                                                    jmp   n34_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n36_var_α:              mov              rax, qword ptr [rsp + 2160]
                        mov              qword ptr [rsp + 1392], rax
                        mov              rax, qword ptr [rsp + 2168]
                        mov              qword ptr [rsp + 1400], rax;         jmp   n37_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n37_binop_test_α:       mov              rdi, qword ptr [rsp + 2176]
                        mov              rsi, qword ptr [rsp + 2184]
                        mov              rdx, qword ptr [rsp + 2160]
                        mov              rcx, qword ptr [rsp + 2168]
                        mov              r8d, 17
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n34_disjunction_af
                        mov              rdi, qword ptr [rsp + 2160]
                        mov              rsi, qword ptr [rsp + 2168]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n38_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_string_α:       mov              qword ptr [rsp + 1344], 2            # result
                        mov              dword ptr [rsp + 1348], 5
                        mov              rax, qword ptr [rip + .Lx161_0]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n39_call_builtin_icon_α
.Lx161_0:               .quad            .Lx161_0_s
.Lx161_0_s:             .string          "a~==b"
#-----------------------------------------------------------------------------------------------------------------------
n39_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 1312], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 1320], rax
                        .section         .rodata
.Lrkfn163:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn163]
                        lea              rsi, [rsp + 1312]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx
                        cmp              eax, 104;                            je    n40_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n34_disjunction_as
n39_call_builtin_icon_β:
                                                                              jmp   n40_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:       mov              qword ptr [rsp + 1248], 2            # result
                        mov              dword ptr [rsp + 1252], 1
                        mov              rax, qword ptr [rip + .Lx164_0]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n41_assign_α
.Lx164_0:               .quad            .Lx164_0_s
.Lx164_0_s:             .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n41_assign_α:           mov              rax, qword ptr [rsp + 1248]
                        mov              rdx, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 2176], rax
                        mov              qword ptr [rsp + 2184], rdx;         jmp   n42_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:       mov              qword ptr [rsp + 1232], 2            # result
                        mov              dword ptr [rsp + 1236], 1
                        mov              rax, qword ptr [rip + .Lx166_0]
                        mov              qword ptr [rsp + 1240], rax;         jmp   n43_assign_α
.Lx166_0:               .quad            .Lx166_0_s
.Lx166_0_s:             .string          "3"
#-----------------------------------------------------------------------------------------------------------------------
n43_assign_α:           mov              rax, qword ptr [rsp + 1232]
                        mov              rdx, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 2160], rax
                        mov              qword ptr [rsp + 2168], rdx;         jmp   n44_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n44_disjunction_α:      mov              qword ptr [rsp + 1088], 0
                        mov              qword ptr [rsp + 1096], 0
                        mov              dword ptr [rsp + 1104], 0;           jmp   n45_var_α
n44_disjunction_as:     mov              eax, dword ptr [rsp + 1104]
                        cmp              eax, 0;                              jne   .Lx169_0
                        mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 1096], rax;         jmp   n50_disjunction_α
.Lx169_0:                                                                     jmp   n50_disjunction_α
n44_disjunction_β:      mov              eax, dword ptr [rsp + 1104];         jmp   n50_disjunction_α
n44_disjunction_af:     add              dword ptr [rsp + 1104], 1
                        mov              eax, dword ptr [rsp + 1104];         jmp   n50_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n45_var_α:              mov              rax, qword ptr [rsp + 2176]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 2184]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n46_var_α
n45_var_β:                                                                    jmp   n44_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n46_var_α:              mov              rax, qword ptr [rsp + 2160]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 2168]
                        mov              qword ptr [rsp + 1224], rax;         jmp   n47_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n47_binop_test_α:       mov              rdi, qword ptr [rsp + 2176]
                        mov              rsi, qword ptr [rsp + 2184]
                        mov              rdx, qword ptr [rsp + 2160]
                        mov              rcx, qword ptr [rsp + 2168]
                        mov              r8d, 12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n44_disjunction_af
                        mov              rdi, qword ptr [rsp + 2160]
                        mov              rsi, qword ptr [rsp + 2168]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n48_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_string_α:       mov              qword ptr [rsp + 1168], 2            # result
                        mov              dword ptr [rsp + 1172], 4
                        mov              rax, qword ptr [rip + .Lx175_0]
                        mov              qword ptr [rsp + 1176], rax;         jmp   n49_call_builtin_icon_α
.Lx175_0:               .quad            .Lx175_0_s
.Lx175_0_s:             .string          "2<<3"
#-----------------------------------------------------------------------------------------------------------------------
n49_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 1144], rax
                        .section         .rodata
.Lrkfn177:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn177]
                        lea              rsi, [rsp + 1136]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx
                        cmp              eax, 104;                            je    n50_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n44_disjunction_as
n49_call_builtin_icon_β:
                                                                              jmp   n50_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n50_disjunction_α:      mov              qword ptr [rsp + 944], 0
                        mov              qword ptr [rsp + 952], 0
                        mov              dword ptr [rsp + 960], 0;            jmp   n51_var_α
n50_disjunction_as:     mov              eax, dword ptr [rsp + 960]
                        cmp              eax, 0;                              jne   .Lx179_0
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 952], rax;          jmp   n56_disjunction_α
.Lx179_0:                                                                     jmp   n56_disjunction_α
n50_disjunction_β:      mov              eax, dword ptr [rsp + 960];          jmp   n56_disjunction_α
n50_disjunction_af:     add              dword ptr [rsp + 960], 1
                        mov              eax, dword ptr [rsp + 960];          jmp   n56_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n51_var_α:              mov              rax, qword ptr [rsp + 2160]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 2168]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n52_var_α
n51_var_β:                                                                    jmp   n50_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n52_var_α:              mov              rax, qword ptr [rsp + 2176]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 2184]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n53_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n53_binop_test_α:       mov              rdi, qword ptr [rsp + 2160]
                        mov              rsi, qword ptr [rsp + 2168]
                        mov              rdx, qword ptr [rsp + 2176]
                        mov              rcx, qword ptr [rsp + 2184]
                        mov              r8d, 14
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n50_disjunction_af
                        mov              rdi, qword ptr [rsp + 2176]
                        mov              rsi, qword ptr [rsp + 2184]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n54_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:       mov              qword ptr [rsp + 1024], 2            # result
                        mov              dword ptr [rsp + 1028], 4
                        mov              rax, qword ptr [rip + .Lx185_0]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n55_call_builtin_icon_α
.Lx185_0:               .quad            .Lx185_0_s
.Lx185_0_s:             .string          "3>>2"
#-----------------------------------------------------------------------------------------------------------------------
n55_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 1000], rax
                        .section         .rodata
.Lrkfn187:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn187]
                        lea              rsi, [rsp + 992]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        cmp              eax, 104;                            je    n56_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n50_disjunction_as
n55_call_builtin_icon_β:
                                                                              jmp   n56_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n56_disjunction_α:      mov              qword ptr [rsp + 800], 0
                        mov              qword ptr [rsp + 808], 0
                        mov              dword ptr [rsp + 816], 0;            jmp   n57_var_α
n56_disjunction_as:     mov              eax, dword ptr [rsp + 816]
                        cmp              eax, 0;                              jne   .Lx189_0
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 808], rax;          jmp   n62_lit_string_α
.Lx189_0:                                                                     jmp   n62_lit_string_α
n56_disjunction_β:      mov              eax, dword ptr [rsp + 816];          jmp   n62_lit_string_α
n56_disjunction_af:     add              dword ptr [rsp + 816], 1
                        mov              eax, dword ptr [rsp + 816];          jmp   n62_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n57_var_α:              mov              rax, qword ptr [rsp + 2176]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 2184]
                        mov              qword ptr [rsp + 920], rax;          jmp   n58_lit_string_α
n57_var_β:                                                                    jmp   n56_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_string_α:       mov              qword ptr [rsp + 928], 2             # result
                        mov              dword ptr [rsp + 932], 1
                        mov              rax, qword ptr [rip + .Lx192_0]
                        mov              qword ptr [rsp + 936], rax;          jmp   n59_binop_test_α
.Lx192_0:               .quad            .Lx192_0_s
.Lx192_0_s:             .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n59_binop_test_α:       mov              rdi, qword ptr [rsp + 2176]
                        mov              rsi, qword ptr [rsp + 2184]
                        mov              rdx, qword ptr [rsp + 928]
                        mov              rcx, qword ptr [rsp + 936]
                        mov              r8d, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n56_disjunction_af
                        mov              rdi, qword ptr [rsp + 928]
                        mov              rsi, qword ptr [rsp + 936]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n60_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:       mov              qword ptr [rsp + 880], 2             # result
                        mov              dword ptr [rsp + 884], 4
                        mov              rax, qword ptr [rip + .Lx194_0]
                        mov              qword ptr [rsp + 888], rax;          jmp   n61_call_builtin_icon_α
.Lx194_0:               .quad            .Lx194_0_s
.Lx194_0_s:             .string          "2==2"
#-----------------------------------------------------------------------------------------------------------------------
n61_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 856], rax
                        .section         .rodata
.Lrkfn196:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn196]
                        lea              rsi, [rsp + 848]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        cmp              eax, 104;                            je    n62_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n56_disjunction_as
n61_call_builtin_icon_β:
                                                                              jmp   n62_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_string_α:       mov              qword ptr [rsp + 784], 2             # result
                        mov              dword ptr [rsp + 788], 2
                        mov              rax, qword ptr [rip + .Lx197_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n63_assign_α
.Lx197_0:               .quad            .Lx197_0_s
.Lx197_0_s:             .string          "ac"
#-----------------------------------------------------------------------------------------------------------------------
n63_assign_α:           mov              rax, qword ptr [rsp + 784]
                        mov              rdx, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 2176], rax
                        mov              qword ptr [rsp + 2184], rdx;         jmp   n64_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_charset_α:      mov              qword ptr [rsp + 768], 2             # result
                        mov              dword ptr [rsp + 772], -1
                        mov              rax, qword ptr [rip + .Lx199_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n65_assign_α
.Lx199_0:               .quad            .Lx199_0_s
.Lx199_0_s:             .string          "ac"
#-----------------------------------------------------------------------------------------------------------------------
n65_assign_α:           mov              rax, qword ptr [rsp + 768]
                        mov              rdx, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 2160], rax
                        mov              qword ptr [rsp + 2168], rdx;         jmp   n66_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n66_disjunction_α:      mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 632], 0
                        mov              dword ptr [rsp + 640], 0;            jmp   n67_var_α
n66_disjunction_as:     mov              eax, dword ptr [rsp + 640]
                        cmp              eax, 0;                              jne   .Lx202_0
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 632], rax;          jmp   n72_disjunction_α
.Lx202_0:                                                                     jmp   n72_disjunction_α
n66_disjunction_β:      mov              eax, dword ptr [rsp + 640];          jmp   n72_disjunction_α
n66_disjunction_af:     add              dword ptr [rsp + 640], 1
                        mov              eax, dword ptr [rsp + 640];          jmp   n72_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n67_var_α:              mov              rax, qword ptr [rsp + 2176]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 2184]
                        mov              qword ptr [rsp + 744], rax;          jmp   n68_var_α
n67_var_β:                                                                    jmp   n66_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n68_var_α:              mov              rax, qword ptr [rsp + 2160]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 2168]
                        mov              qword ptr [rsp + 760], rax;          jmp   n69_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n69_binop_test_α:       mov              rdi, qword ptr [rsp + 2176]
                        mov              rsi, qword ptr [rsp + 2184]
                        mov              rdx, qword ptr [rsp + 2160]
                        mov              rcx, qword ptr [rsp + 2168]
                        mov              r8d, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n66_disjunction_af
                        mov              rdi, qword ptr [rsp + 2160]
                        mov              rsi, qword ptr [rsp + 2168]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n70_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_string_α:       mov              qword ptr [rsp + 704], 2             # result
                        mov              dword ptr [rsp + 708], 8
                        mov              rax, qword ptr [rip + .Lx208_0]
                        mov              qword ptr [rsp + 712], rax;          jmp   n71_call_builtin_icon_α
.Lx208_0:               .quad            .Lx208_0_s
.Lx208_0_s:             .string          "ac=='ca'"
#-----------------------------------------------------------------------------------------------------------------------
n71_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 680], rax
                        .section         .rodata
.Lrkfn210:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn210]
                        lea              rsi, [rsp + 672]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                        cmp              eax, 104;                            je    n72_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n66_disjunction_as
n71_call_builtin_icon_β:
                                                                              jmp   n72_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n72_disjunction_α:      mov              qword ptr [rsp + 480], 0
                        mov              qword ptr [rsp + 488], 0
                        mov              dword ptr [rsp + 496], 0;            jmp   n73_var_α
n72_disjunction_as:     mov              eax, dword ptr [rsp + 496]
                        cmp              eax, 0;                              jne   .Lx212_0
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 488], rax;          jmp   n78_lit_string_α
.Lx212_0:                                                                     jmp   n78_lit_string_α
n72_disjunction_β:      mov              eax, dword ptr [rsp + 496];          jmp   n78_lit_string_α
n72_disjunction_af:     add              dword ptr [rsp + 496], 1
                        mov              eax, dword ptr [rsp + 496];          jmp   n78_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n73_var_α:              mov              rax, qword ptr [rsp + 2176]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 2184]
                        mov              qword ptr [rsp + 600], rax;          jmp   n74_var_α
n73_var_β:                                                                    jmp   n72_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n74_var_α:              mov              rax, qword ptr [rsp + 2160]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 2168]
                        mov              qword ptr [rsp + 616], rax;          jmp   n75_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n75_binop_test_α:       mov              rdi, qword ptr [rsp + 2176]
                        mov              rsi, qword ptr [rsp + 2184]
                        mov              rdx, qword ptr [rsp + 2160]
                        mov              rcx, qword ptr [rsp + 2168]
                        mov              r8d, 13
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n72_disjunction_af
                        mov              rdi, qword ptr [rsp + 2160]
                        mov              rsi, qword ptr [rsp + 2168]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n76_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_string_α:       mov              qword ptr [rsp + 560], 2             # result
                        mov              dword ptr [rsp + 564], 9
                        mov              rax, qword ptr [rip + .Lx218_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n77_call_builtin_icon_α
.Lx218_0:               .quad            .Lx218_0_s
.Lx218_0_s:             .string          "ac<<='ca'"
#-----------------------------------------------------------------------------------------------------------------------
n77_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 536], rax
                        .section         .rodata
.Lrkfn220:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn220]
                        lea              rsi, [rsp + 528]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              eax, 104;                            je    n78_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n72_disjunction_as
n77_call_builtin_icon_β:
                                                                              jmp   n78_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_string_α:       mov              qword ptr [rsp + 464], 2             # result
                        mov              dword ptr [rsp + 468], 0
                        mov              rax, qword ptr [rip + .Lx221_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n79_assign_α
.Lx221_0:               .quad            .Lx221_0_s
.Lx221_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n79_assign_α:           mov              rax, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 2176], rax
                        mov              qword ptr [rsp + 2184], rdx;         jmp   n80_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_string_α:       mov              qword ptr [rsp + 448], 2             # result
                        mov              dword ptr [rsp + 452], 1
                        mov              rax, qword ptr [rip + .Lx223_0]
                        mov              qword ptr [rsp + 456], rax;          jmp   n81_assign_α
.Lx223_0:               .quad            .Lx223_0_s
.Lx223_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n81_assign_α:           mov              rax, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 2160], rax
                        mov              qword ptr [rsp + 2168], rdx;         jmp   n82_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n82_disjunction_α:      mov              qword ptr [rsp + 288], 0
                        mov              qword ptr [rsp + 296], 0
                        mov              dword ptr [rsp + 304], 0;            jmp   n83_var_α
n82_disjunction_as:     mov              eax, dword ptr [rsp + 304]
                        cmp              eax, 0;                              jne   .Lx226_0
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 296], rax;          jmp   n88_disjunction_α
.Lx226_0:                                                                     jmp   n88_disjunction_α
n82_disjunction_β:      mov              eax, dword ptr [rsp + 304];          jmp   n88_disjunction_α
n82_disjunction_af:     add              dword ptr [rsp + 304], 1
                        mov              eax, dword ptr [rsp + 304];          jmp   n88_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n83_var_α:              mov              rax, qword ptr [rsp + 2176]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 2184]
                        mov              qword ptr [rsp + 408], rax;          jmp   n84_var_α
n83_var_β:                                                                    jmp   n82_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n84_var_α:              mov              rax, qword ptr [rsp + 2176]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 2184]
                        mov              qword ptr [rsp + 424], rax;          jmp   n85_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n85_binop_test_α:       mov              rdi, qword ptr [rsp + 2176]
                        mov              rsi, qword ptr [rsp + 2184]
                        mov              rdx, qword ptr [rsp + 2176]
                        mov              rcx, qword ptr [rsp + 2184]
                        mov              r8d, 13
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n82_disjunction_af
                        mov              rdi, qword ptr [rsp + 2176]
                        mov              rsi, qword ptr [rsp + 2184]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n86_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_string_α:       mov              qword ptr [rsp + 368], 2             # result
                        mov              dword ptr [rsp + 372], 13
                        mov              rax, qword ptr [rip + .Lx232_0]
                        mov              qword ptr [rsp + 376], rax;          jmp   n87_call_builtin_icon_α
.Lx232_0:               .quad            .Lx232_0_s
.Lx232_0_s:             .string          "empty<<=empty"
#-----------------------------------------------------------------------------------------------------------------------
n87_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 344], rax
                        .section         .rodata
.Lrkfn234:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn234]
                        lea              rsi, [rsp + 336]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              eax, 104;                            je    n88_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n82_disjunction_as
n87_call_builtin_icon_β:
                                                                              jmp   n88_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n88_disjunction_α:      mov              qword ptr [rsp + 144], 0
                        mov              qword ptr [rsp + 152], 0
                        mov              dword ptr [rsp + 160], 0;            jmp   n89_var_α
n88_disjunction_as:     mov              eax, dword ptr [rsp + 160]
                        cmp              eax, 0;                              jne   .Lx236_0
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 152], rax;          jmp   n94_disjunction_α
.Lx236_0:                                                                     jmp   n94_disjunction_α
n88_disjunction_β:      mov              eax, dword ptr [rsp + 160];          jmp   n94_disjunction_α
n88_disjunction_af:     add              dword ptr [rsp + 160], 1
                        mov              eax, dword ptr [rsp + 160];          jmp   n94_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n89_var_α:              mov              rax, qword ptr [rsp + 2176]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 2184]
                        mov              qword ptr [rsp + 264], rax;          jmp   n90_var_α
n89_var_β:                                                                    jmp   n88_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n90_var_α:              mov              rax, qword ptr [rsp + 2160]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 2168]
                        mov              qword ptr [rsp + 280], rax;          jmp   n91_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n91_binop_test_α:       mov              rdi, qword ptr [rsp + 2176]
                        mov              rsi, qword ptr [rsp + 2184]
                        mov              rdx, qword ptr [rsp + 2160]
                        mov              rcx, qword ptr [rsp + 2168]
                        mov              r8d, 12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n88_disjunction_af
                        mov              rdi, qword ptr [rsp + 2160]
                        mov              rsi, qword ptr [rsp + 2168]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n92_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_string_α:       mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], 8
                        mov              rax, qword ptr [rip + .Lx242_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n93_call_builtin_icon_α
.Lx242_0:               .quad            .Lx242_0_s
.Lx242_0_s:             .string          "empty<<a"
#-----------------------------------------------------------------------------------------------------------------------
n93_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 200], rax
                        .section         .rodata
.Lrkfn244:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn244]
                        lea              rsi, [rsp + 192]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              eax, 104;                            je    n94_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n88_disjunction_as
n93_call_builtin_icon_β:
                                                                              jmp   n94_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n94_disjunction_α:      mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 16], 0;             jmp   n95_var_α
n94_disjunction_as:     mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 0;                              jne   .Lx246_0
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   main_γ
.Lx246_0:                                                                     jmp   main_γ
n94_disjunction_β:      mov              eax, dword ptr [rsp + 16];           jmp   main_ω
n94_disjunction_af:     add              dword ptr [rsp + 16], 1
                        mov              eax, dword ptr [rsp + 16];           jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n95_var_α:              mov              rax, qword ptr [rsp + 2160]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 2168]
                        mov              qword ptr [rsp + 120], rax;          jmp   n96_var_α
n95_var_β:                                                                    jmp   n94_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n96_var_α:              mov              rax, qword ptr [rsp + 2176]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 2184]
                        mov              qword ptr [rsp + 136], rax;          jmp   n97_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n97_binop_test_α:       mov              rdi, qword ptr [rsp + 2160]
                        mov              rsi, qword ptr [rsp + 2168]
                        mov              rdx, qword ptr [rsp + 2176]
                        mov              rcx, qword ptr [rsp + 2184]
                        mov              r8d, 14
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n94_disjunction_af
                        mov              rdi, qword ptr [rsp + 2176]
                        mov              rsi, qword ptr [rsp + 2184]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n98_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_string_α:       mov              qword ptr [rsp + 80], 2              # result
                        mov              dword ptr [rsp + 84], 8
                        mov              rax, qword ptr [rip + .Lx252_0]
                        mov              qword ptr [rsp + 88], rax;           jmp   n99_call_builtin_icon_α
.Lx252_0:               .quad            .Lx252_0_s
.Lx252_0_s:             .string          "a>>empty"
#-----------------------------------------------------------------------------------------------------------------------
n99_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 56], rax
                        .section         .rodata
.Lrkfn254:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn254]
                        lea              rsi, [rsp + 48]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 104;                            je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n94_disjunction_as
n99_call_builtin_icon_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        and              rsp, -16
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        and              rsp, -16
                        mov              edi, 1
                        call             exit@PLT
                        .section         .note.GNU-stack,"",@progbits
