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
                        sub              rsp, 2128
                        mov              rdi, rsp
                        add              rdi, 1984
                        xor              eax, eax
                        mov              ecx, 48
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 3
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_charset_α:       mov              r11, 1
                        mov              qword ptr [rsp + 1968], 2            # result
                        mov              dword ptr [rsp + 1972], -1
                        mov              rax, qword ptr [rip + .Lx74_0]
                        mov              qword ptr [rsp + 1976], rax;         jmp   n1_assign_α
.Lx74_0:                .quad            .Lx74_0_s
.Lx74_0_s:              .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:            mov              r11, 2
                        mov              rax, qword ptr [rsp + 1968]
                        mov              rdx, qword ptr [rsp + 1976]
                        mov              qword ptr [rsp + 1984], rax
                        mov              qword ptr [rsp + 1992], rdx;         jmp   n2_var_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:               mov              r11, 3
                        mov              rax, qword ptr [rsp + 1984]
                        mov              qword ptr [rsp + 1952], rax
                        mov              rax, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 1960], rax;         jmp   n3_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_icon_α: mov              r11, 4
                        mov              rax, qword ptr [rsp + 1952]
                        mov              qword ptr [rsp + 1920], rax
                        mov              rax, qword ptr [rsp + 1960]
                        mov              qword ptr [rsp + 1928], rax
                        .section         .rodata
.Lrkfn79:               .string          "type"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn79]
                        lea              rsi, [rsp + 1920]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262313
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1904], rax
                        mov              qword ptr [rsp + 1912], rdx
                        cmp              al, 104;                             je    n5_lit_string_α
                                                                              jmp   n4_call_builtin_icon_α
n3_call_builtin_icon_β: mov              r11, 4;                              jmp   n5_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n4_call_builtin_icon_α: mov              r11, 5
                        mov              rax, qword ptr [rsp + 1904]
                        mov              qword ptr [rsp + 1872], rax
                        mov              rax, qword ptr [rsp + 1912]
                        mov              qword ptr [rsp + 1880], rax
                        .section         .rodata
.Lrkfn81:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn81]
                        lea              rsi, [rsp + 1872]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1856], rax
                        mov              qword ptr [rsp + 1864], rdx
                        cmp              al, 104;                             je    n5_lit_string_α
                                                                              jmp   n5_lit_string_α
n4_call_builtin_icon_β: mov              r11, 5;                              jmp   n5_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:        mov              r11, 6
                        mov              qword ptr [rsp + 1840], 2            # result
                        mov              dword ptr [rsp + 1844], 3
                        mov              rax, qword ptr [rip + .Lx82_0]
                        mov              qword ptr [rsp + 1848], rax;         jmp   n6_call_builtin_icon_α
.Lx82_0:                .quad            .Lx82_0_s
.Lx82_0_s:              .string          "xyz"
#-----------------------------------------------------------------------------------------------------------------------
n6_call_builtin_icon_α: mov              r11, 7
                        mov              rax, qword ptr [rsp + 1840]
                        mov              qword ptr [rsp + 1808], rax
                        mov              rax, qword ptr [rsp + 1848]
                        mov              qword ptr [rsp + 1816], rax
                        .section         .rodata
.Lrkfn84:               .string          "cset"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn84]
                        lea              rsi, [rsp + 1808]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262258
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1792], rax
                        mov              qword ptr [rsp + 1800], rdx
                        cmp              al, 104;                             je    n8_var_α
                                                                              jmp   n7_assign_α
n6_call_builtin_icon_β: mov              r11, 7;                              jmp   n8_var_α
#-----------------------------------------------------------------------------------------------------------------------
n7_assign_α:            mov              r11, 8
                        mov              rax, qword ptr [rsp + 1792]
                        mov              rdx, qword ptr [rsp + 1800]
                        mov              qword ptr [rsp + 2016], rax
                        mov              qword ptr [rsp + 2024], rdx;         jmp   n8_var_α
#-----------------------------------------------------------------------------------------------------------------------
n8_var_α:               mov              r11, 9
                        mov              rax, qword ptr [rsp + 2016]
                        mov              qword ptr [rsp + 1776], rax
                        mov              rax, qword ptr [rsp + 2024]
                        mov              qword ptr [rsp + 1784], rax;         jmp   n9_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n9_call_builtin_icon_α: mov              r11, 10
                        mov              rax, qword ptr [rsp + 1776]
                        mov              qword ptr [rsp + 1744], rax
                        mov              rax, qword ptr [rsp + 1784]
                        mov              qword ptr [rsp + 1752], rax
                        .section         .rodata
.Lrkfn89:               .string          "type"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn89]
                        lea              rsi, [rsp + 1744]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262313
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1728], rax
                        mov              qword ptr [rsp + 1736], rdx
                        cmp              al, 104;                             je    n11_var_α
                                                                              jmp   n10_call_builtin_icon_α
n9_call_builtin_icon_β: mov              r11, 10;                             jmp   n11_var_α
#-----------------------------------------------------------------------------------------------------------------------
n10_call_builtin_icon_α:
                        mov              r11, 11
                        mov              rax, qword ptr [rsp + 1728]
                        mov              qword ptr [rsp + 1696], rax
                        mov              rax, qword ptr [rsp + 1736]
                        mov              qword ptr [rsp + 1704], rax
                        .section         .rodata
.Lrkfn91:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn91]
                        lea              rsi, [rsp + 1696]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1680], rax
                        mov              qword ptr [rsp + 1688], rdx
                        cmp              al, 104;                             je    n11_var_α
                                                                              jmp   n11_var_α
n10_call_builtin_icon_β:
                        mov              r11, 11;                             jmp   n11_var_α
#-----------------------------------------------------------------------------------------------------------------------
n11_var_α:              mov              r11, 12
                        mov              rax, qword ptr [rsp + 1984]
                        mov              qword ptr [rsp + 1648], rax
                        mov              rax, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 1656], rax;         jmp   n12_var_α
#-----------------------------------------------------------------------------------------------------------------------
n12_var_α:              mov              r11, 13
                        mov              rax, qword ptr [rsp + 2016]
                        mov              qword ptr [rsp + 1664], rax
                        mov              rax, qword ptr [rsp + 2024]
                        mov              qword ptr [rsp + 1672], rax;         jmp   n13_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n13_binop_α:            mov              r11, 14
                        mov              rdi, qword ptr [rsp + 1984]
                        mov              rsi, qword ptr [rsp + 1992]
                        mov              rdx, qword ptr [rsp + 2016]
                        mov              rcx, qword ptr [rsp + 2024]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cunion@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n15_var_α
                        mov              qword ptr [rsp + 1632], rax
                        mov              qword ptr [rsp + 1640], rdx;         jmp   n14_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n14_assign_α:           mov              r11, 15
                        mov              rax, qword ptr [rsp + 1632]
                        mov              rdx, qword ptr [rsp + 1640]
                        mov              qword ptr [rsp + 2000], rax
                        mov              qword ptr [rsp + 2008], rdx;         jmp   n15_var_α
#-----------------------------------------------------------------------------------------------------------------------
n15_var_α:              mov              r11, 16
                        mov              rax, qword ptr [rsp + 2000]
                        mov              qword ptr [rsp + 1616], rax
                        mov              rax, qword ptr [rsp + 2008]
                        mov              qword ptr [rsp + 1624], rax;         jmp   n16_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n16_call_builtin_icon_α:
                        mov              r11, 17
                        mov              rax, qword ptr [rsp + 1616]
                        mov              qword ptr [rsp + 1584], rax
                        mov              rax, qword ptr [rsp + 1624]
                        mov              qword ptr [rsp + 1592], rax
                        .section         .rodata
.Lrkfn101:              .string          "type"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn101]
                        lea              rsi, [rsp + 1584]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262313
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1568], rax
                        mov              qword ptr [rsp + 1576], rdx
                        cmp              al, 104;                             je    n18_var_α
                                                                              jmp   n17_call_builtin_icon_α
n16_call_builtin_icon_β:
                        mov              r11, 17;                             jmp   n18_var_α
#-----------------------------------------------------------------------------------------------------------------------
n17_call_builtin_icon_α:
                        mov              r11, 18
                        mov              rax, qword ptr [rsp + 1568]
                        mov              qword ptr [rsp + 1536], rax
                        mov              rax, qword ptr [rsp + 1576]
                        mov              qword ptr [rsp + 1544], rax
                        .section         .rodata
.Lrkfn103:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn103]
                        lea              rsi, [rsp + 1536]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1520], rax
                        mov              qword ptr [rsp + 1528], rdx
                        cmp              al, 104;                             je    n18_var_α
                                                                              jmp   n18_var_α
n17_call_builtin_icon_β:
                        mov              r11, 18;                             jmp   n18_var_α
#-----------------------------------------------------------------------------------------------------------------------
n18_var_α:              mov              r11, 19
                        mov              rax, qword ptr [rsp + 2000]
                        mov              qword ptr [rsp + 1504], rax
                        mov              rax, qword ptr [rsp + 2008]
                        mov              qword ptr [rsp + 1512], rax;         jmp   n19_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n19_call_builtin_icon_α:
                        mov              r11, 20
                        mov              rax, qword ptr [rsp + 1504]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 1512]
                        mov              qword ptr [rsp + 1480], rax
                        .section         .rodata
.Lrkfn107:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn107]
                        lea              rsi, [rsp + 1472]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327804
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx
                        cmp              al, 104;                             je    n21_var_α
                                                                              jmp   n20_call_builtin_icon_α
n19_call_builtin_icon_β:
                        mov              r11, 20;                             jmp   n21_var_α
#-----------------------------------------------------------------------------------------------------------------------
n20_call_builtin_icon_α:
                        mov              r11, 21
                        mov              rax, qword ptr [rsp + 1456]
                        mov              qword ptr [rsp + 1424], rax
                        mov              rax, qword ptr [rsp + 1464]
                        mov              qword ptr [rsp + 1432], rax
                        .section         .rodata
.Lrkfn109:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn109]
                        lea              rsi, [rsp + 1424]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx
                        cmp              al, 104;                             je    n21_var_α
                                                                              jmp   n21_var_α
n20_call_builtin_icon_β:
                        mov              r11, 21;                             jmp   n21_var_α
#-----------------------------------------------------------------------------------------------------------------------
n21_var_α:              mov              r11, 22
                        mov              rax, qword ptr [rsp + 2000]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 2008]
                        mov              qword ptr [rsp + 1336], rax;         jmp   n22_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:       mov              r11, 23
                        mov              qword ptr [rsp + 1392], 2            # result
                        mov              dword ptr [rsp + 1396], 2
                        mov              rax, qword ptr [rip + .Lx112_0]
                        mov              qword ptr [rsp + 1400], rax;         jmp   n23_call_builtin_icon_α
.Lx112_0:               .quad            .Lx112_0_s
.Lx112_0_s:             .string          "bx"
#-----------------------------------------------------------------------------------------------------------------------
n23_call_builtin_icon_α:
                        mov              r11, 24
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 1360], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 1368], rax
                        .section         .rodata
.Lrkfn114:              .string          "cset"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn114]
                        lea              rsi, [rsp + 1360]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262258
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx
                        cmp              al, 104;                             je    n26_var_α
                                                                              jmp   n24_binop_α
n23_call_builtin_icon_β:
                        mov              r11, 24;                             jmp   n26_var_α
#-----------------------------------------------------------------------------------------------------------------------
n24_binop_α:            mov              r11, 25
                        mov              rdi, qword ptr [rsp + 2000]
                        mov              rsi, qword ptr [rsp + 2008]
                        mov              rdx, qword ptr [rsp + 1344]
                        mov              rcx, qword ptr [rsp + 1352]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cdiff@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n26_var_α
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx;         jmp   n25_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n25_assign_α:           mov              r11, 26
                        mov              rax, qword ptr [rsp + 1312]
                        mov              rdx, qword ptr [rsp + 1320]
                        mov              qword ptr [rsp + 2000], rax
                        mov              qword ptr [rsp + 2008], rdx;         jmp   n26_var_α
#-----------------------------------------------------------------------------------------------------------------------
n26_var_α:              mov              r11, 27
                        mov              rax, qword ptr [rsp + 2000]
                        mov              qword ptr [rsp + 1296], rax
                        mov              rax, qword ptr [rsp + 2008]
                        mov              qword ptr [rsp + 1304], rax;         jmp   n27_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n27_call_builtin_icon_α:
                        mov              r11, 28
                        mov              rax, qword ptr [rsp + 1296]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 1272], rax
                        .section         .rodata
.Lrkfn120:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn120]
                        lea              rsi, [rsp + 1264]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327804
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx
                        cmp              al, 104;                             je    n29_var_α
                                                                              jmp   n28_call_builtin_icon_α
n27_call_builtin_icon_β:
                        mov              r11, 28;                             jmp   n29_var_α
#-----------------------------------------------------------------------------------------------------------------------
n28_call_builtin_icon_α:
                        mov              r11, 29
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 1224], rax
                        .section         .rodata
.Lrkfn122:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn122]
                        lea              rsi, [rsp + 1216]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx
                        cmp              al, 104;                             je    n29_var_α
                                                                              jmp   n29_var_α
n28_call_builtin_icon_β:
                        mov              r11, 29;                             jmp   n29_var_α
#-----------------------------------------------------------------------------------------------------------------------
n29_var_α:              mov              r11, 30
                        mov              rax, qword ptr [rsp + 2000]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 2008]
                        mov              qword ptr [rsp + 1128], rax;         jmp   n30_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_string_α:       mov              r11, 31
                        mov              qword ptr [rsp + 1184], 2            # result
                        mov              dword ptr [rsp + 1188], 4
                        mov              rax, qword ptr [rip + .Lx125_0]
                        mov              qword ptr [rsp + 1192], rax;         jmp   n31_call_builtin_icon_α
.Lx125_0:               .quad            .Lx125_0_s
.Lx125_0_s:             .string          "acyz"
#-----------------------------------------------------------------------------------------------------------------------
n31_call_builtin_icon_α:
                        mov              r11, 32
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 1160], rax
                        .section         .rodata
.Lrkfn127:              .string          "cset"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn127]
                        lea              rsi, [rsp + 1152]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262258
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx
                        cmp              al, 104;                             je    n34_var_α
                                                                              jmp   n32_binop_α
n31_call_builtin_icon_β:
                        mov              r11, 32;                             jmp   n34_var_α
#-----------------------------------------------------------------------------------------------------------------------
n32_binop_α:            mov              r11, 33
                        mov              rdi, qword ptr [rsp + 2000]
                        mov              rsi, qword ptr [rsp + 2008]
                        mov              rdx, qword ptr [rsp + 1136]
                        mov              rcx, qword ptr [rsp + 1144]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cinter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n34_var_α
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx;         jmp   n33_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n33_assign_α:           mov              r11, 34
                        mov              rax, qword ptr [rsp + 1104]
                        mov              rdx, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 2000], rax
                        mov              qword ptr [rsp + 2008], rdx;         jmp   n34_var_α
#-----------------------------------------------------------------------------------------------------------------------
n34_var_α:              mov              r11, 35
                        mov              rax, qword ptr [rsp + 2000]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 2008]
                        mov              qword ptr [rsp + 1096], rax;         jmp   n35_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n35_call_builtin_icon_α:
                        mov              r11, 36
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1064], rax
                        .section         .rodata
.Lrkfn133:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn133]
                        lea              rsi, [rsp + 1056]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327804
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        cmp              al, 104;                             je    n37_lit_string_α
                                                                              jmp   n36_call_builtin_icon_α
n35_call_builtin_icon_β:
                        mov              r11, 36;                             jmp   n37_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n36_call_builtin_icon_α:
                        mov              r11, 37
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 1016], rax
                        .section         .rodata
.Lrkfn135:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn135]
                        lea              rsi, [rsp + 1008]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx
                        cmp              al, 104;                             je    n37_lit_string_α
                                                                              jmp   n37_lit_string_α
n36_call_builtin_icon_β:
                        mov              r11, 37;                             jmp   n37_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:       mov              r11, 38
                        mov              qword ptr [rsp + 976], 2             # result
                        mov              dword ptr [rsp + 980], 3
                        mov              rax, qword ptr [rip + .Lx136_0]
                        mov              qword ptr [rsp + 984], rax;          jmp   n38_call_builtin_icon_α
.Lx136_0:               .quad            .Lx136_0_s
.Lx136_0_s:             .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n38_call_builtin_icon_α:
                        mov              r11, 39
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 952], rax
                        .section         .rodata
.Lrkfn138:              .string          "cset"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn138]
                        lea              rsi, [rsp + 944]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262258
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                        cmp              al, 104;                             je    n40_var_α
                                                                              jmp   n39_assign_α
n38_call_builtin_icon_β:
                        mov              r11, 39;                             jmp   n40_var_α
#-----------------------------------------------------------------------------------------------------------------------
n39_assign_α:           mov              r11, 40
                        mov              rax, qword ptr [rsp + 928]
                        mov              rdx, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 1984], rax
                        mov              qword ptr [rsp + 1992], rdx;         jmp   n40_var_α
#-----------------------------------------------------------------------------------------------------------------------
n40_var_α:              mov              r11, 41
                        mov              rax, qword ptr [rsp + 1984]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 856], rax;          jmp   n41_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:       mov              r11, 42
                        mov              qword ptr [rsp + 912], 2             # result
                        mov              dword ptr [rsp + 916], 1
                        mov              rax, qword ptr [rip + .Lx142_0]
                        mov              qword ptr [rsp + 920], rax;          jmp   n42_call_builtin_icon_α
.Lx142_0:               .quad            .Lx142_0_s
.Lx142_0_s:             .string          "d"
#-----------------------------------------------------------------------------------------------------------------------
n42_call_builtin_icon_α:
                        mov              r11, 43
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 888], rax
                        .section         .rodata
.Lrkfn144:              .string          "cset"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn144]
                        lea              rsi, [rsp + 880]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262258
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx
                        cmp              al, 104;                             je    n45_var_α
                                                                              jmp   n43_binop_α
n42_call_builtin_icon_β:
                        mov              r11, 43;                             jmp   n45_var_α
#-----------------------------------------------------------------------------------------------------------------------
n43_binop_α:            mov              r11, 44
                        mov              rdi, qword ptr [rsp + 1984]
                        mov              rsi, qword ptr [rsp + 1992]
                        mov              rdx, qword ptr [rsp + 864]
                        mov              rcx, qword ptr [rsp + 872]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cunion@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n45_var_α
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx;          jmp   n44_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n44_assign_α:           mov              r11, 45
                        mov              rax, qword ptr [rsp + 832]
                        mov              rdx, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 1984], rax
                        mov              qword ptr [rsp + 1992], rdx;         jmp   n45_var_α
#-----------------------------------------------------------------------------------------------------------------------
n45_var_α:              mov              r11, 46
                        mov              rax, qword ptr [rsp + 1984]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 824], rax;          jmp   n46_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n46_call_builtin_icon_α:
                        mov              r11, 47
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 792], rax
                        .section         .rodata
.Lrkfn150:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn150]
                        lea              rsi, [rsp + 784]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327804
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                        cmp              al, 104;                             je    n48_var_α
                                                                              jmp   n47_call_builtin_icon_α
n46_call_builtin_icon_β:
                        mov              r11, 47;                             jmp   n48_var_α
#-----------------------------------------------------------------------------------------------------------------------
n47_call_builtin_icon_α:
                        mov              r11, 48
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 744], rax
                        .section         .rodata
.Lrkfn152:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn152]
                        lea              rsi, [rsp + 736]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx
                        cmp              al, 104;                             je    n48_var_α
                                                                              jmp   n48_var_α
n47_call_builtin_icon_β:
                        mov              r11, 48;                             jmp   n48_var_α
#-----------------------------------------------------------------------------------------------------------------------
n48_var_α:              mov              r11, 49
                        mov              rax, qword ptr [rsp + 1984]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 648], rax;          jmp   n49_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_string_α:       mov              r11, 50
                        mov              qword ptr [rsp + 704], 2             # result
                        mov              dword ptr [rsp + 708], 1
                        mov              rax, qword ptr [rip + .Lx155_0]
                        mov              qword ptr [rsp + 712], rax;          jmp   n50_call_builtin_icon_α
.Lx155_0:               .quad            .Lx155_0_s
.Lx155_0_s:             .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n50_call_builtin_icon_α:
                        mov              r11, 51
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 680], rax
                        .section         .rodata
.Lrkfn157:              .string          "cset"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn157]
                        lea              rsi, [rsp + 672]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262258
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                        cmp              al, 104;                             je    n53_var_α
                                                                              jmp   n51_binop_α
n50_call_builtin_icon_β:
                        mov              r11, 51;                             jmp   n53_var_α
#-----------------------------------------------------------------------------------------------------------------------
n51_binop_α:            mov              r11, 52
                        mov              rdi, qword ptr [rsp + 1984]
                        mov              rsi, qword ptr [rsp + 1992]
                        mov              rdx, qword ptr [rsp + 656]
                        mov              rcx, qword ptr [rsp + 664]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cdiff@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n53_var_α
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx;          jmp   n52_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n52_assign_α:           mov              r11, 53
                        mov              rax, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 1984], rax
                        mov              qword ptr [rsp + 1992], rdx;         jmp   n53_var_α
#-----------------------------------------------------------------------------------------------------------------------
n53_var_α:              mov              r11, 54
                        mov              rax, qword ptr [rsp + 1984]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 616], rax;          jmp   n54_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n54_call_builtin_icon_α:
                        mov              r11, 55
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 584], rax
                        .section         .rodata
.Lrkfn163:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn163]
                        lea              rsi, [rsp + 576]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327804
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        cmp              al, 104;                             je    n56_var_α
                                                                              jmp   n55_call_builtin_icon_α
n54_call_builtin_icon_β:
                        mov              r11, 55;                             jmp   n56_var_α
#-----------------------------------------------------------------------------------------------------------------------
n55_call_builtin_icon_α:
                        mov              r11, 56
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 536], rax
                        .section         .rodata
.Lrkfn165:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn165]
                        lea              rsi, [rsp + 528]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              al, 104;                             je    n56_var_α
                                                                              jmp   n56_var_α
n55_call_builtin_icon_β:
                        mov              r11, 56;                             jmp   n56_var_α
#-----------------------------------------------------------------------------------------------------------------------
n56_var_α:              mov              r11, 57
                        mov              rax, qword ptr [rsp + 1984]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 440], rax;          jmp   n57_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_string_α:       mov              r11, 58
                        mov              qword ptr [rsp + 496], 2             # result
                        mov              dword ptr [rsp + 500], 2
                        mov              rax, qword ptr [rip + .Lx168_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n58_call_builtin_icon_α
.Lx168_0:               .quad            .Lx168_0_s
.Lx168_0_s:             .string          "cd"
#-----------------------------------------------------------------------------------------------------------------------
n58_call_builtin_icon_α:
                        mov              r11, 59
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 472], rax
                        .section         .rodata
.Lrkfn170:              .string          "cset"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn170]
                        lea              rsi, [rsp + 464]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262258
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              al, 104;                             je    n61_var_α
                                                                              jmp   n59_binop_α
n58_call_builtin_icon_β:
                        mov              r11, 59;                             jmp   n61_var_α
#-----------------------------------------------------------------------------------------------------------------------
n59_binop_α:            mov              r11, 60
                        mov              rdi, qword ptr [rsp + 1984]
                        mov              rsi, qword ptr [rsp + 1992]
                        mov              rdx, qword ptr [rsp + 448]
                        mov              rcx, qword ptr [rsp + 456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cinter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n61_var_α
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx;          jmp   n60_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n60_assign_α:           mov              r11, 61
                        mov              rax, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 1984], rax
                        mov              qword ptr [rsp + 1992], rdx;         jmp   n61_var_α
#-----------------------------------------------------------------------------------------------------------------------
n61_var_α:              mov              r11, 62
                        mov              rax, qword ptr [rsp + 1984]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 408], rax;          jmp   n62_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n62_call_builtin_icon_α:
                        mov              r11, 63
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 376], rax
                        .section         .rodata
.Lrkfn176:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn176]
                        lea              rsi, [rsp + 368]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327804
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              al, 104;                             je    n64_lit_string_α
                                                                              jmp   n63_call_builtin_icon_α
n62_call_builtin_icon_β:
                        mov              r11, 63;                             jmp   n64_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n63_call_builtin_icon_α:
                        mov              r11, 64
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 328], rax
                        .section         .rodata
.Lrkfn178:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn178]
                        lea              rsi, [rsp + 320]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              al, 104;                             je    n64_lit_string_α
                                                                              jmp   n64_lit_string_α
n63_call_builtin_icon_β:
                        mov              r11, 64;                             jmp   n64_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_string_α:       mov              r11, 65
                        mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], 2
                        mov              rax, qword ptr [rip + .Lx179_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n65_call_builtin_icon_α
.Lx179_0:               .quad            .Lx179_0_s
.Lx179_0_s:             .string          "ba"
#-----------------------------------------------------------------------------------------------------------------------
n65_call_builtin_icon_α:
                        mov              r11, 66
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 264], rax
                        .section         .rodata
.Lrkfn181:              .string          "cset"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn181]
                        lea              rsi, [rsp + 256]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262258
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n67_var_α
                                                                              jmp   n66_assign_α
n65_call_builtin_icon_β:
                        mov              r11, 66;                             jmp   n67_var_α
#-----------------------------------------------------------------------------------------------------------------------
n66_assign_α:           mov              r11, 67
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 1984], rax
                        mov              qword ptr [rsp + 1992], rdx;         jmp   n67_var_α
#-----------------------------------------------------------------------------------------------------------------------
n67_var_α:              mov              r11, 68
                        mov              rax, qword ptr [rsp + 1984]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 216], rax;          jmp   n68_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n68_iterate_α:          mov              r11, 69
                        mov              qword ptr [rsp + 192], 0
.Lx186_0:               mov              rdi, qword ptr [rsp + 208]
                        mov              rsi, qword ptr [rsp + 216]
                        mov              rdx, qword ptr [rsp + 192]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              al, 104;                             je    n70_lit_string_α
                                                                              jmp   n69_call_builtin_icon_α
n68_iterate_β:          mov              r11, 69
                        inc              qword ptr [rsp + 192];               jmp   .Lx186_0
#-----------------------------------------------------------------------------------------------------------------------
n69_call_builtin_icon_α:
                        mov              r11, 70
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 152], rax
                        .section         .rodata
.Lrkfn188:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn188]
                        lea              rsi, [rsp + 144]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n68_iterate_β
                                                                              jmp   n68_iterate_β
n69_call_builtin_icon_β:
                        mov              r11, 70;                             jmp   n68_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_string_α:       mov              r11, 71
                        mov              qword ptr [rsp + 112], 2             # result
                        mov              dword ptr [rsp + 116], 5
                        mov              rax, qword ptr [rip + .Lx189_0]
                        mov              qword ptr [rsp + 120], rax;          jmp   n71_call_builtin_icon_α
.Lx189_0:               .quad            .Lx189_0_s
.Lx189_0_s:             .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n71_call_builtin_icon_α:
                        mov              r11, 72
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 88], rax
                        .section         .rodata
.Lrkfn191:              .string          "cset"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn191]
                        lea              rsi, [rsp + 80]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262258
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n72_unop_α
n71_call_builtin_icon_β:
                        mov              r11, 72;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n72_unop_α:             mov              r11, 73
                        mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx;           jmp   n73_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n73_call_builtin_icon_α:
                        mov              r11, 74
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn194:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn194]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   main_γ
n73_call_builtin_icon_β:
                        mov              r11, 74;                             jmp   main_ω
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
