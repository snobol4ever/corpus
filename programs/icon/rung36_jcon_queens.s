                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__q:
                        sub              rsp, 2192
                        mov              qword ptr [rsp + 2168], rcx
                        mov              qword ptr [rsp + 2176], rdx
                        mov              rdi, rsp
                        add              rdi, 2096
                        xor              eax, eax
                        mov              ecx, 16
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
q_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:       mov              qword ptr [rsp + 1472], 0
                        mov              qword ptr [rsp + 1480], 0
                        mov              dword ptr [rsp + 1488], 0;           jmp   n1_var_ref_α
n0_disjunction_as:      mov              eax, dword ptr [rsp + 1488]
                        cmp              eax, 0;                              jne   .Lx112_0
                        mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1480], rax;         jmp   n30_lit_integer_α
.Lx112_0:                                                                     jmp   n30_lit_integer_α
n0_disjunction_β:       mov              eax, dword ptr [rsp + 1488];         jmp   n30_lit_integer_α
n0_disjunction_af:      add              dword ptr [rsp + 1488], 1
                        mov              eax, dword ptr [rsp + 1488];         jmp   n30_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              rax, 4294967336
                        mov              rdx, 1879052368                      # q__INITFLAG__0
                        mov              qword ptr [rsp + 2032], rax
                        mov              qword ptr [rsp + 2040], rdx;         jmp   n2_nulltest_var_α
n1_var_ref_β:                                                                 jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n2_nulltest_var_α:      mov              eax, dword ptr [rsp + 2032]
                        cmp              eax, 104;                            je    n0_disjunction_af
                        mov              rdi, qword ptr [rsp + 2032]
                        mov              rsi, qword ptr [rsp + 2040]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n0_disjunction_af
                        cmp              eax, 0;                              jne   n0_disjunction_af
                        mov              rax, qword ptr [rsp + 2032]
                        mov              qword ptr [rsp + 2048], rax
                        mov              rax, qword ptr [rsp + 2040]
                        mov              qword ptr [rsp + 2056], rax;         jmp   n3_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:       mov              qword ptr [rsp + 2080], 3            # result
                        mov              rax, qword ptr [rip + .Lx116_0]
                        mov              qword ptr [rsp + 2088], rax;         jmp   n4_assign_var_α
.Lx116_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_var_α:        mov              rdi, qword ptr [rsp + 2048]
                        mov              rsi, qword ptr [rsp + 2056]
                        mov              rdx, qword ptr [rsp + 2080]
                        mov              rcx, qword ptr [rsp + 2088]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n0_disjunction_af
                        mov              qword ptr [rsp + 2064], rax
                        mov              qword ptr [rsp + 2072], rdx;         jmp   n5_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:       mov              qword ptr [rsp + 1968], 3            # result
                        mov              rax, qword ptr [rip + .Lx118_0]
                        mov              qword ptr [rsp + 1976], rax;         jmp   n6_var_α
.Lx118_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:               mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 1984], rax          # result
                        mov              qword ptr [rsp + 1992], rdx;         jmp   n7_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n7_coerce_numeric_α:    mov              eax, dword ptr [rsp + 1984]
                        cmp              eax, 5;                              je    .Lx121_1
                        cmp              eax, 3;                              jne   .Lx121_0
                        mov              eax, dword ptr [rsp + 1968]
                        cmp              eax, 3;                              jne   .Lx121_0
.Lx121_1:               mov              rax, qword ptr [rsp + 1984]
                        mov              qword ptr [rsp + 1952], rax
                        mov              rax, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 1960], rax;         jmp   n8_binop_α
.Lx121_0:               lea              rdi, [rsp + 1984]
                        lea              rsi, [rsp + 1968]
                        lea              rdx, [rsp + 1952]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n8_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n8_binop_α:             mov              eax, 3
                        mov              ecx, dword ptr [rsp + 1952]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx122_2
                        mov              rax, 2
                        mov              rdx, qword ptr [rsp + 1960]
                        imul             rax, rdx
                        mov              qword ptr [rsp + 1936], 3
                        mov              qword ptr [rsp + 1944], rax;         jmp   .Lx122_7
.Lx122_2:               and              edx, 1;                              jz    .Lx122_0
                        mov              rsi, 2
                        mov              rdi, qword ptr [rsp + 1960]
                        cmp              eax, 5;                              je    .Lx122_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx122_4
.Lx122_3:               movq             xmm0, rsi
.Lx122_4:               cmp              ecx, 5;                              je    .Lx122_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx122_6
.Lx122_5:               movq             xmm1, rdi
.Lx122_6:               mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1936], 5
                        mov              qword ptr [rsp + 1944], rax
.Lx122_7:                                                                     jmp   n9_lit_integer_α
.Lx122_0:               mov              rdi, qword ptr [rsp + 1968]
                        mov              rsi, qword ptr [rsp + 1976]
                        mov              rdx, qword ptr [rsp + 1952]
                        mov              rcx, qword ptr [rsp + 1960]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        cmp              eax, 104;                            je    n15_lit_integer_α
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n9_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:       mov              qword ptr [rsp + 2000], 3            # result
                        mov              rax, qword ptr [rip + .Lx123_0]
                        mov              qword ptr [rsp + 2008], rax;         jmp   n10_coerce_numeric_α
.Lx123_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n10_coerce_numeric_α:   mov              eax, dword ptr [rsp + 1936]
                        cmp              eax, 5;                              je    .Lx125_1
                        cmp              eax, 3;                              jne   .Lx125_0
                        mov              eax, dword ptr [rsp + 2000]
                        cmp              eax, 3;                              jne   .Lx125_0
.Lx125_1:               mov              rax, qword ptr [rsp + 1936]
                        mov              qword ptr [rsp + 1920], rax
                        mov              rax, qword ptr [rsp + 1944]
                        mov              qword ptr [rsp + 1928], rax;         jmp   n11_binop_α
.Lx125_0:               lea              rdi, [rsp + 1936]
                        lea              rsi, [rsp + 2000]
                        lea              rdx, [rsp + 1920]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n11_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n11_binop_α:            mov              eax, dword ptr [rsp + 1920]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx126_2
                        mov              rax, qword ptr [rsp + 1928]
                        mov              rdx, 1
                        sub              rax, rdx
                        mov              qword ptr [rsp + 1904], 3
                        mov              qword ptr [rsp + 1912], rax;         jmp   .Lx126_7
.Lx126_2:               and              edx, 1;                              jz    .Lx126_0
                        mov              rsi, qword ptr [rsp + 1928]
                        mov              rdi, 1
                        cmp              eax, 5;                              je    .Lx126_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx126_4
.Lx126_3:               movq             xmm0, rsi
.Lx126_4:               cmp              ecx, 5;                              je    .Lx126_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx126_6
.Lx126_5:               movq             xmm1, rdi
.Lx126_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1904], 5
                        mov              qword ptr [rsp + 1912], rax
.Lx126_7:                                                                     jmp   n12_lit_integer_α
.Lx126_0:               mov              rdi, qword ptr [rsp + 1920]
                        mov              rsi, qword ptr [rsp + 1928]
                        mov              rdx, qword ptr [rsp + 2000]
                        mov              rcx, qword ptr [rsp + 2008]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            je    n15_lit_integer_α
                        mov              qword ptr [rsp + 1904], rax
                        mov              qword ptr [rsp + 1912], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n12_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:      mov              qword ptr [rsp + 2016], 3            # result
                        mov              rax, qword ptr [rip + .Lx127_0]
                        mov              qword ptr [rsp + 2024], rax;         jmp   n13_call_builtin_icon_α
.Lx127_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n13_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2016]
                        mov              qword ptr [rsp + 1872], rax
                        mov              rax, qword ptr [rsp + 2024]
                        mov              qword ptr [rsp + 1880], rax
                        mov              rax, qword ptr [rsp + 1904]
                        mov              qword ptr [rsp + 1856], rax
                        mov              rax, qword ptr [rsp + 1912]
                        mov              qword ptr [rsp + 1864], rax
                        .section         .rodata
.Lrkfn129:              .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn129]
                        lea              rsi, [rsp + 1856]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1840], rax
                        mov              qword ptr [rsp + 1848], rdx
                        cmp              eax, 104;                            je    n15_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n14_assign_α
n13_call_builtin_icon_β:
                                                                              jmp   n15_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n14_assign_α:           mov              rax, qword ptr [rsp + 1840]
                        mov              rdx, qword ptr [rsp + 1848]
                        mov              qword ptr [r9 + 32], rax             # q__STATIC__up
                        mov              qword ptr [r9 + 40], rdx;            jmp   n15_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_integer_α:      mov              qword ptr [rsp + 1776], 3            # result
                        mov              rax, qword ptr [rip + .Lx131_0]
                        mov              qword ptr [rsp + 1784], rax;         jmp   n16_var_α
.Lx131_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n16_var_α:              mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 1792], rax          # result
                        mov              qword ptr [rsp + 1800], rdx;         jmp   n17_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n17_coerce_numeric_α:   mov              eax, dword ptr [rsp + 1792]
                        cmp              eax, 5;                              je    .Lx134_1
                        cmp              eax, 3;                              jne   .Lx134_0
                        mov              eax, dword ptr [rsp + 1776]
                        cmp              eax, 3;                              jne   .Lx134_0
.Lx134_1:               mov              rax, qword ptr [rsp + 1792]
                        mov              qword ptr [rsp + 1760], rax
                        mov              rax, qword ptr [rsp + 1800]
                        mov              qword ptr [rsp + 1768], rax;         jmp   n18_binop_α
.Lx134_0:               lea              rdi, [rsp + 1792]
                        lea              rsi, [rsp + 1776]
                        lea              rdx, [rsp + 1760]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n18_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n18_binop_α:            mov              eax, 3
                        mov              ecx, dword ptr [rsp + 1760]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx135_2
                        mov              rax, 2
                        mov              rdx, qword ptr [rsp + 1768]
                        imul             rax, rdx
                        mov              qword ptr [rsp + 1744], 3
                        mov              qword ptr [rsp + 1752], rax;         jmp   .Lx135_7
.Lx135_2:               and              edx, 1;                              jz    .Lx135_0
                        mov              rsi, 2
                        mov              rdi, qword ptr [rsp + 1768]
                        cmp              eax, 5;                              je    .Lx135_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx135_4
.Lx135_3:               movq             xmm0, rsi
.Lx135_4:               cmp              ecx, 5;                              je    .Lx135_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx135_6
.Lx135_5:               movq             xmm1, rdi
.Lx135_6:               mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1744], 5
                        mov              qword ptr [rsp + 1752], rax
.Lx135_7:                                                                     jmp   n19_lit_integer_α
.Lx135_0:               mov              rdi, qword ptr [rsp + 1776]
                        mov              rsi, qword ptr [rsp + 1784]
                        mov              rdx, qword ptr [rsp + 1760]
                        mov              rcx, qword ptr [rsp + 1768]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        cmp              eax, 104;                            je    n25_var_α
                        mov              qword ptr [rsp + 1744], rax
                        mov              qword ptr [rsp + 1752], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n19_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_integer_α:      mov              qword ptr [rsp + 1808], 3            # result
                        mov              rax, qword ptr [rip + .Lx136_0]
                        mov              qword ptr [rsp + 1816], rax;         jmp   n20_coerce_numeric_α
.Lx136_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n20_coerce_numeric_α:   mov              eax, dword ptr [rsp + 1744]
                        cmp              eax, 5;                              je    .Lx138_1
                        cmp              eax, 3;                              jne   .Lx138_0
                        mov              eax, dword ptr [rsp + 1808]
                        cmp              eax, 3;                              jne   .Lx138_0
.Lx138_1:               mov              rax, qword ptr [rsp + 1744]
                        mov              qword ptr [rsp + 1728], rax
                        mov              rax, qword ptr [rsp + 1752]
                        mov              qword ptr [rsp + 1736], rax;         jmp   n21_binop_α
.Lx138_0:               lea              rdi, [rsp + 1744]
                        lea              rsi, [rsp + 1808]
                        lea              rdx, [rsp + 1728]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n21_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n21_binop_α:            mov              eax, dword ptr [rsp + 1728]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx139_2
                        mov              rax, qword ptr [rsp + 1736]
                        mov              rdx, 1
                        sub              rax, rdx
                        mov              qword ptr [rsp + 1712], 3
                        mov              qword ptr [rsp + 1720], rax;         jmp   .Lx139_7
.Lx139_2:               and              edx, 1;                              jz    .Lx139_0
                        mov              rsi, qword ptr [rsp + 1736]
                        mov              rdi, 1
                        cmp              eax, 5;                              je    .Lx139_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx139_4
.Lx139_3:               movq             xmm0, rsi
.Lx139_4:               cmp              ecx, 5;                              je    .Lx139_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx139_6
.Lx139_5:               movq             xmm1, rdi
.Lx139_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1712], 5
                        mov              qword ptr [rsp + 1720], rax
.Lx139_7:                                                                     jmp   n22_lit_integer_α
.Lx139_0:               mov              rdi, qword ptr [rsp + 1728]
                        mov              rsi, qword ptr [rsp + 1736]
                        mov              rdx, qword ptr [rsp + 1808]
                        mov              rcx, qword ptr [rsp + 1816]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            je    n25_var_α
                        mov              qword ptr [rsp + 1712], rax
                        mov              qword ptr [rsp + 1720], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n22_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_integer_α:      mov              qword ptr [rsp + 1824], 3            # result
                        mov              rax, qword ptr [rip + .Lx140_0]
                        mov              qword ptr [rsp + 1832], rax;         jmp   n23_call_builtin_icon_α
.Lx140_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n23_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1824]
                        mov              qword ptr [rsp + 1680], rax
                        mov              rax, qword ptr [rsp + 1832]
                        mov              qword ptr [rsp + 1688], rax
                        mov              rax, qword ptr [rsp + 1712]
                        mov              qword ptr [rsp + 1664], rax
                        mov              rax, qword ptr [rsp + 1720]
                        mov              qword ptr [rsp + 1672], rax
                        .section         .rodata
.Lrkfn142:              .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn142]
                        lea              rsi, [rsp + 1664]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1648], rax
                        mov              qword ptr [rsp + 1656], rdx
                        cmp              eax, 104;                            je    n25_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n24_assign_α
n23_call_builtin_icon_β:
                                                                              jmp   n25_var_α
#-----------------------------------------------------------------------------------------------------------------------
n24_assign_α:           mov              rax, qword ptr [rsp + 1648]
                        mov              rdx, qword ptr [rsp + 1656]
                        mov              qword ptr [r9 + 48], rax             # q__STATIC__down
                        mov              qword ptr [r9 + 56], rdx;            jmp   n25_var_α
#-----------------------------------------------------------------------------------------------------------------------
n25_var_α:              mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 1600], rax          # result
                        mov              qword ptr [rsp + 1608], rdx;         jmp   n26_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_integer_α:      mov              qword ptr [rsp + 1616], 3            # result
                        mov              rax, qword ptr [rip + .Lx145_0]
                        mov              qword ptr [rsp + 1624], rax;         jmp   n27_call_builtin_icon_α
.Lx145_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n27_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1616]
                        mov              qword ptr [rsp + 1568], rax
                        mov              rax, qword ptr [rsp + 1624]
                        mov              qword ptr [rsp + 1576], rax
                        mov              rax, qword ptr [rsp + 1600]
                        mov              qword ptr [rsp + 1552], rax
                        mov              rax, qword ptr [rsp + 1608]
                        mov              qword ptr [rsp + 1560], rax
                        .section         .rodata
.Lrkfn147:              .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn147]
                        lea              rsi, [rsp + 1552]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx
                        cmp              eax, 104;                            je    n30_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n28_assign_α
n27_call_builtin_icon_β:
                                                                              jmp   n30_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n28_assign_α:           mov              rax, qword ptr [rsp + 1536]
                        mov              rdx, qword ptr [rsp + 1544]
                        mov              qword ptr [r9 + 64], rax             # q__STATIC__rows
                        mov              qword ptr [r9 + 72], rdx
                        mov              qword ptr [rsp + 1520], rax
                        mov              qword ptr [rsp + 1528], rdx;         jmp   n29_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n29_conjunction_α:      mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 1504], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1512], rax;         jmp   n0_disjunction_as
n29_conjunction_β:                                                            jmp   n30_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:      mov              qword ptr [rsp + 592], 3             # result
                        mov              rax, qword ptr [rip + .Lx150_0]
                        mov              qword ptr [rsp + 600], rax;          jmp   n31_var_ref_α
.Lx150_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n31_var_ref_α:          mov              rax, 4294967336
                        mov              rdx, 1879052352                      # q__STATIC__rows
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx;          jmp   n32_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_integer_α:      mov              qword ptr [rsp + 672], 3             # result
                        mov              rax, qword ptr [rip + .Lx153_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n33_var_α
.Lx153_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n33_var_α:              mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 688], rax           # result
                        mov              qword ptr [rsp + 696], rdx;          jmp   n34_to_α
#-----------------------------------------------------------------------------------------------------------------------
n34_to_α:               mov              rdi, qword ptr [rsp + 672]
                        mov              rsi, qword ptr [rsp + 680]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 672], 3
                        mov              qword ptr [rsp + 680], rax
                        mov              rdi, qword ptr [rsp + 688]
                        mov              rsi, qword ptr [rsp + 696]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 688], 3
                        mov              qword ptr [rsp + 696], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 656], rax
.Lx156_0:               mov              rax, qword ptr [rsp + 656]
                        mov              rcx, qword ptr [rsp + 696]
                        cmp              rax, rcx;                            jg    q_ω
                        mov              qword ptr [rsp + 640], 3
                        mov              qword ptr [rsp + 648], rax;          jmp   n35_assign_α
n34_to_β:               inc              qword ptr [rsp + 656];               jmp   .Lx156_0
#-----------------------------------------------------------------------------------------------------------------------
n35_assign_α:           mov              rax, qword ptr [rsp + 640]
                        mov              rdx, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 2096], rax
                        mov              qword ptr [rsp + 2104], rdx
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx;          jmp   n36_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n36_subscript_α:        mov              rdi, qword ptr [rsp + 608]
                        mov              rsi, qword ptr [rsp + 616]
                        mov              rdx, qword ptr [rsp + 624]
                        mov              rcx, qword ptr [rsp + 632]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n34_to_β
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx;          jmp   n37_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n37_deref_α:            mov              rdi, qword ptr [rsp + 704]
                        mov              rsi, qword ptr [rsp + 712]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n34_to_β
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx;          jmp   n38_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n38_binop_test_α:       mov              eax, dword ptr [rsp + 592]
                        cmp              eax, 112;                            je    .Lx160_0
                        mov              eax, dword ptr [rsp + 720]
                        cmp              eax, 112;                            je    .Lx160_0
                        mov              eax, dword ptr [rsp + 592]
                        cmp              eax, 3;                              jne   .Lx160_2
                        mov              eax, dword ptr [rsp + 720]
                        cmp              eax, 3;                              jne   .Lx160_2
.Lx160_1:               mov              rax, qword ptr [rsp + 600]
                        mov              rcx, qword ptr [rsp + 728]
                        cmp              rax, rcx;                            jne   n34_to_β
                        mov              rcx, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 576], rcx
                        mov              rcx, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 584], rcx;          jmp   n39_var_ref_α
.Lx160_0:               mov              rdi, qword ptr [rsp + 592]
                        mov              rsi, qword ptr [rsp + 600]
                        mov              rdx, qword ptr [rsp + 720]
                        mov              rcx, qword ptr [rsp + 728]
                        mov              r8d, 9
                        lea              r9, [rsp + 576]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx160_1
                        cmp              eax, 1;                              je    n34_to_β
                                                                              jmp   n39_var_ref_α
.Lx160_2:               mov              rdi, qword ptr [rsp + 592]
                        mov              rsi, qword ptr [rsp + 600]
                        mov              rdx, qword ptr [rsp + 720]
                        mov              rcx, qword ptr [rsp + 728]
                        mov              r8d, 9
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n34_to_β
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 584], rax;          jmp   n39_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n39_var_ref_α:          mov              rax, 4294967336
                        mov              rdx, 1879052320                      # q__STATIC__up
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx;          jmp   n40_var_α
#-----------------------------------------------------------------------------------------------------------------------
n40_var_α:              mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 848], rax           # result
                        mov              qword ptr [rsp + 856], rdx;          jmp   n41_var_α
#-----------------------------------------------------------------------------------------------------------------------
n41_var_α:              mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 872], rax;          jmp   n42_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n42_coerce_numeric_α:   mov              eax, dword ptr [rsp + 848]
                        cmp              eax, 5;                              je    .Lx167_1
                        cmp              eax, 3;                              jne   .Lx167_0
                        mov              eax, dword ptr [rsp + 2096]
                        cmp              eax, 3;                              jne   .Lx167_0
.Lx167_1:               mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 840], rax;          jmp   n43_coerce_numeric_α
.Lx167_0:               lea              rdi, [rsp + 848]
                        lea              rsi, [rsp + 2096]
                        lea              rdx, [rsp + 832]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n43_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n43_coerce_numeric_α:   mov              eax, dword ptr [rsp + 2096]
                        cmp              eax, 5;                              je    .Lx169_1
                        cmp              eax, 3;                              jne   .Lx169_0
                        mov              eax, dword ptr [rsp + 848]
                        cmp              eax, 3;                              jne   .Lx169_0
.Lx169_1:               mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 824], rax;          jmp   n44_binop_α
.Lx169_0:               lea              rdi, [rsp + 2096]
                        lea              rsi, [rsp + 848]
                        lea              rdx, [rsp + 816]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n44_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n44_binop_α:            mov              eax, dword ptr [rsp + 832]
                        mov              ecx, dword ptr [rsp + 816]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx170_2
                        mov              rax, qword ptr [rsp + 840]
                        mov              rdx, qword ptr [rsp + 824]
                        add              rax, rdx
                        mov              qword ptr [rsp + 800], 3
                        mov              qword ptr [rsp + 808], rax;          jmp   .Lx170_7
.Lx170_2:               and              edx, 1;                              jz    .Lx170_0
                        mov              rsi, qword ptr [rsp + 840]
                        mov              rdi, qword ptr [rsp + 824]
                        cmp              eax, 5;                              je    .Lx170_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx170_4
.Lx170_3:               movq             xmm0, rsi
.Lx170_4:               cmp              ecx, 5;                              je    .Lx170_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx170_6
.Lx170_5:               movq             xmm1, rdi
.Lx170_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 800], 5
                        mov              qword ptr [rsp + 808], rax
.Lx170_7:                                                                     jmp   n45_var_α
.Lx170_0:               mov              rdi, qword ptr [rsp + 832]
                        mov              rsi, qword ptr [rsp + 840]
                        mov              rdx, qword ptr [rsp + 816]
                        mov              rcx, qword ptr [rsp + 824]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n34_to_β
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n45_var_α
#-----------------------------------------------------------------------------------------------------------------------
n45_var_α:              mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 888], rax;          jmp   n46_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n46_coerce_numeric_α:   mov              eax, dword ptr [rsp + 800]
                        cmp              eax, 5;                              je    .Lx174_1
                        cmp              eax, 3;                              jne   .Lx174_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx174_0
.Lx174_1:               mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 792], rax;          jmp   n47_coerce_numeric_α
.Lx174_0:               lea              rdi, [rsp + 800]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 784]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n47_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n47_coerce_numeric_α:   mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 5;                              je    .Lx176_1
                        cmp              eax, 3;                              jne   .Lx176_0
                        mov              eax, dword ptr [rsp + 800]
                        cmp              eax, 3;                              jne   .Lx176_0
.Lx176_1:               mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 776], rax;          jmp   n48_binop_α
.Lx176_0:               lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 800]
                        lea              rdx, [rsp + 768]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n48_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n48_binop_α:            mov              eax, dword ptr [rsp + 784]
                        mov              ecx, dword ptr [rsp + 768]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx177_2
                        mov              rax, qword ptr [rsp + 792]
                        mov              rdx, qword ptr [rsp + 776]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 752], 3
                        mov              qword ptr [rsp + 760], rax;          jmp   .Lx177_7
.Lx177_2:               and              edx, 1;                              jz    .Lx177_0
                        mov              rsi, qword ptr [rsp + 792]
                        mov              rdi, qword ptr [rsp + 776]
                        cmp              eax, 5;                              je    .Lx177_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx177_4
.Lx177_3:               movq             xmm0, rsi
.Lx177_4:               cmp              ecx, 5;                              je    .Lx177_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx177_6
.Lx177_5:               movq             xmm1, rdi
.Lx177_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 752], 5
                        mov              qword ptr [rsp + 760], rax
.Lx177_7:                                                                     jmp   n49_subscript_α
.Lx177_0:               mov              rdi, qword ptr [rsp + 784]
                        mov              rsi, qword ptr [rsp + 792]
                        mov              rdx, qword ptr [rsp + 768]
                        mov              rcx, qword ptr [rsp + 776]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            je    n34_to_β
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n49_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n49_subscript_α:        mov              rdi, qword ptr [rsp + 736]
                        mov              rsi, qword ptr [rsp + 744]
                        mov              rdx, qword ptr [rsp + 752]
                        mov              rcx, qword ptr [rsp + 760]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n34_to_β
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx;          jmp   n50_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n50_deref_α:            mov              rdi, qword ptr [rsp + 896]
                        mov              rsi, qword ptr [rsp + 904]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n34_to_β
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx;          jmp   n51_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n51_binop_test_α:       mov              eax, dword ptr [rsp + 576]
                        cmp              eax, 112;                            je    .Lx180_0
                        mov              eax, dword ptr [rsp + 912]
                        cmp              eax, 112;                            je    .Lx180_0
                        mov              eax, dword ptr [rsp + 576]
                        cmp              eax, 3;                              jne   .Lx180_2
                        mov              eax, dword ptr [rsp + 912]
                        cmp              eax, 3;                              jne   .Lx180_2
.Lx180_1:               mov              rax, qword ptr [rsp + 584]
                        mov              rcx, qword ptr [rsp + 920]
                        cmp              rax, rcx;                            jne   n34_to_β
                        mov              rcx, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 560], rcx
                        mov              rcx, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 568], rcx;          jmp   n52_var_ref_α
.Lx180_0:               mov              rdi, qword ptr [rsp + 576]
                        mov              rsi, qword ptr [rsp + 584]
                        mov              rdx, qword ptr [rsp + 912]
                        mov              rcx, qword ptr [rsp + 920]
                        mov              r8d, 9
                        lea              r9, [rsp + 560]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx180_1
                        cmp              eax, 1;                              je    n34_to_β
                                                                              jmp   n52_var_ref_α
.Lx180_2:               mov              rdi, qword ptr [rsp + 576]
                        mov              rsi, qword ptr [rsp + 584]
                        mov              rdx, qword ptr [rsp + 912]
                        mov              rcx, qword ptr [rsp + 920]
                        mov              r8d, 9
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n34_to_β
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 568], rax;          jmp   n52_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n52_var_ref_α:          mov              rax, 4294967336
                        mov              rdx, 1879052336                      # q__STATIC__down
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx;          jmp   n53_var_α
#-----------------------------------------------------------------------------------------------------------------------
n53_var_α:              mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n54_var_α
#-----------------------------------------------------------------------------------------------------------------------
n54_var_α:              mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n55_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n55_coerce_numeric_α:   mov              eax, dword ptr [rsp + 2096]
                        cmp              eax, 5;                              je    .Lx188_1
                        cmp              eax, 3;                              jne   .Lx188_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx188_0
.Lx188_1:               mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n56_coerce_numeric_α
.Lx188_0:               lea              rdi, [rsp + 2096]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 1008]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n56_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n56_coerce_numeric_α:   mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 5;                              je    .Lx190_1
                        cmp              eax, 3;                              jne   .Lx190_0
                        mov              eax, dword ptr [rsp + 2096]
                        cmp              eax, 3;                              jne   .Lx190_0
.Lx190_1:               mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n57_binop_α
.Lx190_0:               lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 2096]
                        lea              rdx, [rsp + 992]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n57_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n57_binop_α:            mov              eax, dword ptr [rsp + 1008]
                        mov              ecx, dword ptr [rsp + 992]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx191_2
                        mov              rax, qword ptr [rsp + 1016]
                        mov              rdx, qword ptr [rsp + 1000]
                        add              rax, rdx
                        mov              qword ptr [rsp + 976], 3
                        mov              qword ptr [rsp + 984], rax;          jmp   .Lx191_7
.Lx191_2:               and              edx, 1;                              jz    .Lx191_0
                        mov              rsi, qword ptr [rsp + 1016]
                        mov              rdi, qword ptr [rsp + 1000]
                        cmp              eax, 5;                              je    .Lx191_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx191_4
.Lx191_3:               movq             xmm0, rsi
.Lx191_4:               cmp              ecx, 5;                              je    .Lx191_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx191_6
.Lx191_5:               movq             xmm1, rdi
.Lx191_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 976], 5
                        mov              qword ptr [rsp + 984], rax
.Lx191_7:                                                                     jmp   n58_lit_integer_α
.Lx191_0:               mov              rdi, qword ptr [rsp + 1008]
                        mov              rsi, qword ptr [rsp + 1016]
                        mov              rdx, qword ptr [rsp + 992]
                        mov              rcx, qword ptr [rsp + 1000]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n34_to_β
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n58_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_integer_α:      mov              qword ptr [rsp + 1056], 3            # result
                        mov              rax, qword ptr [rip + .Lx192_0]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n59_coerce_numeric_α
.Lx192_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n59_coerce_numeric_α:   mov              eax, dword ptr [rsp + 976]
                        cmp              eax, 5;                              je    .Lx194_1
                        cmp              eax, 3;                              jne   .Lx194_0
                        mov              eax, dword ptr [rsp + 1056]
                        cmp              eax, 3;                              jne   .Lx194_0
.Lx194_1:               mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 968], rax;          jmp   n60_binop_α
.Lx194_0:               lea              rdi, [rsp + 976]
                        lea              rsi, [rsp + 1056]
                        lea              rdx, [rsp + 960]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n60_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n60_binop_α:            mov              eax, dword ptr [rsp + 960]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx195_2
                        mov              rax, qword ptr [rsp + 968]
                        mov              rdx, 1
                        sub              rax, rdx
                        mov              qword ptr [rsp + 944], 3
                        mov              qword ptr [rsp + 952], rax;          jmp   .Lx195_7
.Lx195_2:               and              edx, 1;                              jz    .Lx195_0
                        mov              rsi, qword ptr [rsp + 968]
                        mov              rdi, 1
                        cmp              eax, 5;                              je    .Lx195_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx195_4
.Lx195_3:               movq             xmm0, rsi
.Lx195_4:               cmp              ecx, 5;                              je    .Lx195_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx195_6
.Lx195_5:               movq             xmm1, rdi
.Lx195_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 944], 5
                        mov              qword ptr [rsp + 952], rax
.Lx195_7:                                                                     jmp   n61_subscript_α
.Lx195_0:               mov              rdi, qword ptr [rsp + 960]
                        mov              rsi, qword ptr [rsp + 968]
                        mov              rdx, qword ptr [rsp + 1056]
                        mov              rcx, qword ptr [rsp + 1064]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            je    n34_to_β
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n61_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n61_subscript_α:        mov              rdi, qword ptr [rsp + 928]
                        mov              rsi, qword ptr [rsp + 936]
                        mov              rdx, qword ptr [rsp + 944]
                        mov              rcx, qword ptr [rsp + 952]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n34_to_β
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx;         jmp   n62_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n62_deref_α:            mov              rdi, qword ptr [rsp + 1072]
                        mov              rsi, qword ptr [rsp + 1080]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n34_to_β
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx;         jmp   n63_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n63_binop_test_α:       mov              eax, dword ptr [rsp + 560]
                        cmp              eax, 112;                            je    .Lx198_0
                        mov              eax, dword ptr [rsp + 1088]
                        cmp              eax, 112;                            je    .Lx198_0
                        mov              eax, dword ptr [rsp + 560]
                        cmp              eax, 3;                              jne   .Lx198_2
                        mov              eax, dword ptr [rsp + 1088]
                        cmp              eax, 3;                              jne   .Lx198_2
.Lx198_1:               mov              rax, qword ptr [rsp + 568]
                        mov              rcx, qword ptr [rsp + 1096]
                        cmp              rax, rcx;                            jne   n34_to_β
                        mov              rcx, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 544], rcx
                        mov              rcx, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 552], rcx;          jmp   n64_var_ref_α
.Lx198_0:               mov              rdi, qword ptr [rsp + 560]
                        mov              rsi, qword ptr [rsp + 568]
                        mov              rdx, qword ptr [rsp + 1088]
                        mov              rcx, qword ptr [rsp + 1096]
                        mov              r8d, 9
                        lea              r9, [rsp + 544]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx198_1
                        cmp              eax, 1;                              je    n34_to_β
                                                                              jmp   n64_var_ref_α
.Lx198_2:               mov              rdi, qword ptr [rsp + 560]
                        mov              rsi, qword ptr [rsp + 568]
                        mov              rdx, qword ptr [rsp + 1088]
                        mov              rcx, qword ptr [rsp + 1096]
                        mov              r8d, 9
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n34_to_β
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 552], rax;          jmp   n64_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n64_var_ref_α:          mov              rax, 4294967336
                        mov              rdx, 1879052352                      # q__STATIC__rows
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx;           jmp   n65_var_α
#-----------------------------------------------------------------------------------------------------------------------
n65_var_α:              mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 72], rax;           jmp   n66_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n66_subscript_α:        mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 64]
                        mov              rcx, qword ptr [rsp + 72]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n34_to_β
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx;           jmp   n67_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n67_var_ref_α:          mov              rax, 4294967336
                        mov              rdx, 1879052320                      # q__STATIC__up
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx;          jmp   n68_var_α
#-----------------------------------------------------------------------------------------------------------------------
n68_var_α:              mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 240], rax           # result
                        mov              qword ptr [rsp + 248], rdx;          jmp   n69_var_α
#-----------------------------------------------------------------------------------------------------------------------
n69_var_α:              mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 264], rax;          jmp   n70_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n70_coerce_numeric_α:   mov              eax, dword ptr [rsp + 240]
                        cmp              eax, 5;                              je    .Lx210_1
                        cmp              eax, 3;                              jne   .Lx210_0
                        mov              eax, dword ptr [rsp + 2096]
                        cmp              eax, 3;                              jne   .Lx210_0
.Lx210_1:               mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 232], rax;          jmp   n71_coerce_numeric_α
.Lx210_0:               lea              rdi, [rsp + 240]
                        lea              rsi, [rsp + 2096]
                        lea              rdx, [rsp + 224]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n71_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n71_coerce_numeric_α:   mov              eax, dword ptr [rsp + 2096]
                        cmp              eax, 5;                              je    .Lx212_1
                        cmp              eax, 3;                              jne   .Lx212_0
                        mov              eax, dword ptr [rsp + 240]
                        cmp              eax, 3;                              jne   .Lx212_0
.Lx212_1:               mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 216], rax;          jmp   n72_binop_α
.Lx212_0:               lea              rdi, [rsp + 2096]
                        lea              rsi, [rsp + 240]
                        lea              rdx, [rsp + 208]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n72_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n72_binop_α:            mov              eax, dword ptr [rsp + 224]
                        mov              ecx, dword ptr [rsp + 208]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx213_2
                        mov              rax, qword ptr [rsp + 232]
                        mov              rdx, qword ptr [rsp + 216]
                        add              rax, rdx
                        mov              qword ptr [rsp + 192], 3
                        mov              qword ptr [rsp + 200], rax;          jmp   .Lx213_7
.Lx213_2:               and              edx, 1;                              jz    .Lx213_0
                        mov              rsi, qword ptr [rsp + 232]
                        mov              rdi, qword ptr [rsp + 216]
                        cmp              eax, 5;                              je    .Lx213_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx213_4
.Lx213_3:               movq             xmm0, rsi
.Lx213_4:               cmp              ecx, 5;                              je    .Lx213_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx213_6
.Lx213_5:               movq             xmm1, rdi
.Lx213_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 192], 5
                        mov              qword ptr [rsp + 200], rax
.Lx213_7:                                                                     jmp   n73_var_α
.Lx213_0:               mov              rdi, qword ptr [rsp + 224]
                        mov              rsi, qword ptr [rsp + 232]
                        mov              rdx, qword ptr [rsp + 208]
                        mov              rcx, qword ptr [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n34_to_β
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n73_var_α
#-----------------------------------------------------------------------------------------------------------------------
n73_var_α:              mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 280], rax;          jmp   n74_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n74_coerce_numeric_α:   mov              eax, dword ptr [rsp + 192]
                        cmp              eax, 5;                              je    .Lx217_1
                        cmp              eax, 3;                              jne   .Lx217_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx217_0
.Lx217_1:               mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 184], rax;          jmp   n75_coerce_numeric_α
.Lx217_0:               lea              rdi, [rsp + 192]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 176]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n75_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n75_coerce_numeric_α:   mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 5;                              je    .Lx219_1
                        cmp              eax, 3;                              jne   .Lx219_0
                        mov              eax, dword ptr [rsp + 192]
                        cmp              eax, 3;                              jne   .Lx219_0
.Lx219_1:               mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 168], rax;          jmp   n76_binop_α
.Lx219_0:               lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 192]
                        lea              rdx, [rsp + 160]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n76_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n76_binop_α:            mov              eax, dword ptr [rsp + 176]
                        mov              ecx, dword ptr [rsp + 160]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx220_2
                        mov              rax, qword ptr [rsp + 184]
                        mov              rdx, qword ptr [rsp + 168]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 144], 3
                        mov              qword ptr [rsp + 152], rax;          jmp   .Lx220_7
.Lx220_2:               and              edx, 1;                              jz    .Lx220_0
                        mov              rsi, qword ptr [rsp + 184]
                        mov              rdi, qword ptr [rsp + 168]
                        cmp              eax, 5;                              je    .Lx220_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx220_4
.Lx220_3:               movq             xmm0, rsi
.Lx220_4:               cmp              ecx, 5;                              je    .Lx220_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx220_6
.Lx220_5:               movq             xmm1, rdi
.Lx220_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 144], 5
                        mov              qword ptr [rsp + 152], rax
.Lx220_7:                                                                     jmp   n77_subscript_α
.Lx220_0:               mov              rdi, qword ptr [rsp + 176]
                        mov              rsi, qword ptr [rsp + 184]
                        mov              rdx, qword ptr [rsp + 160]
                        mov              rcx, qword ptr [rsp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            je    n34_to_β
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n77_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n77_subscript_α:        mov              rdi, qword ptr [rsp + 128]
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 144]
                        mov              rcx, qword ptr [rsp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n34_to_β
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n78_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n78_var_ref_α:          mov              rax, 4294967336
                        mov              rdx, 1879052336                      # q__STATIC__down
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx;          jmp   n79_var_α
#-----------------------------------------------------------------------------------------------------------------------
n79_var_α:              mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 440], rax;          jmp   n80_var_α
#-----------------------------------------------------------------------------------------------------------------------
n80_var_α:              mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 456], rax;          jmp   n81_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n81_coerce_numeric_α:   mov              eax, dword ptr [rsp + 2096]
                        cmp              eax, 5;                              je    .Lx229_1
                        cmp              eax, 3;                              jne   .Lx229_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx229_0
.Lx229_1:               mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 424], rax;          jmp   n82_coerce_numeric_α
.Lx229_0:               lea              rdi, [rsp + 2096]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 416]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n82_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n82_coerce_numeric_α:   mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 5;                              je    .Lx231_1
                        cmp              eax, 3;                              jne   .Lx231_0
                        mov              eax, dword ptr [rsp + 2096]
                        cmp              eax, 3;                              jne   .Lx231_0
.Lx231_1:               mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 408], rax;          jmp   n83_binop_α
.Lx231_0:               lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 2096]
                        lea              rdx, [rsp + 400]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n83_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n83_binop_α:            mov              eax, dword ptr [rsp + 416]
                        mov              ecx, dword ptr [rsp + 400]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx232_2
                        mov              rax, qword ptr [rsp + 424]
                        mov              rdx, qword ptr [rsp + 408]
                        add              rax, rdx
                        mov              qword ptr [rsp + 384], 3
                        mov              qword ptr [rsp + 392], rax;          jmp   .Lx232_7
.Lx232_2:               and              edx, 1;                              jz    .Lx232_0
                        mov              rsi, qword ptr [rsp + 424]
                        mov              rdi, qword ptr [rsp + 408]
                        cmp              eax, 5;                              je    .Lx232_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx232_4
.Lx232_3:               movq             xmm0, rsi
.Lx232_4:               cmp              ecx, 5;                              je    .Lx232_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx232_6
.Lx232_5:               movq             xmm1, rdi
.Lx232_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 384], 5
                        mov              qword ptr [rsp + 392], rax
.Lx232_7:                                                                     jmp   n84_lit_integer_α
.Lx232_0:               mov              rdi, qword ptr [rsp + 416]
                        mov              rsi, qword ptr [rsp + 424]
                        mov              rdx, qword ptr [rsp + 400]
                        mov              rcx, qword ptr [rsp + 408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n34_to_β
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n84_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_integer_α:      mov              qword ptr [rsp + 464], 3             # result
                        mov              rax, qword ptr [rip + .Lx233_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n85_coerce_numeric_α
.Lx233_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n85_coerce_numeric_α:   mov              eax, dword ptr [rsp + 384]
                        cmp              eax, 5;                              je    .Lx235_1
                        cmp              eax, 3;                              jne   .Lx235_0
                        mov              eax, dword ptr [rsp + 464]
                        cmp              eax, 3;                              jne   .Lx235_0
.Lx235_1:               mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 376], rax;          jmp   n86_binop_α
.Lx235_0:               lea              rdi, [rsp + 384]
                        lea              rsi, [rsp + 464]
                        lea              rdx, [rsp + 368]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n86_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n86_binop_α:            mov              eax, dword ptr [rsp + 368]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx236_2
                        mov              rax, qword ptr [rsp + 376]
                        mov              rdx, 1
                        sub              rax, rdx
                        mov              qword ptr [rsp + 352], 3
                        mov              qword ptr [rsp + 360], rax;          jmp   .Lx236_7
.Lx236_2:               and              edx, 1;                              jz    .Lx236_0
                        mov              rsi, qword ptr [rsp + 376]
                        mov              rdi, 1
                        cmp              eax, 5;                              je    .Lx236_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx236_4
.Lx236_3:               movq             xmm0, rsi
.Lx236_4:               cmp              ecx, 5;                              je    .Lx236_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx236_6
.Lx236_5:               movq             xmm1, rdi
.Lx236_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 352], 5
                        mov              qword ptr [rsp + 360], rax
.Lx236_7:                                                                     jmp   n87_subscript_α
.Lx236_0:               mov              rdi, qword ptr [rsp + 368]
                        mov              rsi, qword ptr [rsp + 376]
                        mov              rdx, qword ptr [rsp + 464]
                        mov              rcx, qword ptr [rsp + 472]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            je    n34_to_β
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n87_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n87_subscript_α:        mov              rdi, qword ptr [rsp + 336]
                        mov              rsi, qword ptr [rsp + 344]
                        mov              rdx, qword ptr [rsp + 352]
                        mov              rcx, qword ptr [rsp + 360]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n34_to_β
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx;          jmp   n88_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_integer_α:      mov              qword ptr [rsp + 528], 3             # result
                        mov              rax, qword ptr [rip + .Lx238_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n89_rev_assign_var_α
.Lx238_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n89_rev_assign_var_α:   mov              rdi, qword ptr [rsp + 480]
                        mov              rsi, qword ptr [rsp + 488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        mov              rdi, qword ptr [rsp + 480]
                        mov              rsi, qword ptr [rsp + 488]
                        mov              rdx, qword ptr [rsp + 528]
                        mov              rcx, qword ptr [rsp + 536]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n34_to_β
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx;          jmp   n90_rev_assign_var_α
n89_rev_assign_var_β:   mov              rdi, qword ptr [rsp + 480]
                        mov              rsi, qword ptr [rsp + 488]
                        mov              rdx, qword ptr [rsp + 512]
                        mov              rcx, qword ptr [rsp + 520]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n34_to_β
#-----------------------------------------------------------------------------------------------------------------------
n90_rev_assign_var_α:   mov              rdi, qword ptr [rsp + 288]
                        mov              rsi, qword ptr [rsp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        mov              rdi, qword ptr [rsp + 288]
                        mov              rsi, qword ptr [rsp + 296]
                        mov              rdx, qword ptr [rsp + 496]
                        mov              rcx, qword ptr [rsp + 504]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n89_rev_assign_var_β
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n91_rev_assign_var_α
n90_rev_assign_var_β:   mov              rdi, qword ptr [rsp + 288]
                        mov              rsi, qword ptr [rsp + 296]
                        mov              rdx, qword ptr [rsp + 320]
                        mov              rcx, qword ptr [rsp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n89_rev_assign_var_β
#-----------------------------------------------------------------------------------------------------------------------
n91_rev_assign_var_α:   mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 304]
                        mov              rcx, qword ptr [rsp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n90_rev_assign_var_β
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx;          jmp   n92_conjunction_α
n91_rev_assign_var_β:   mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 112]
                        mov              rcx, qword ptr [rsp + 120]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n90_rev_assign_var_β
#-----------------------------------------------------------------------------------------------------------------------
n92_conjunction_α:      mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 40], rax;           jmp   n93_bound_α
n92_conjunction_β:                                                            jmp   q_ω
#-----------------------------------------------------------------------------------------------------------------------
n93_bound_α:            mov              qword ptr [rsp + 1104], rsp;         jmp   n94_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n94_var_ref_α:          mov              rax, 4294967336
                        mov              rdx, 1879052304                      # solution
                        mov              qword ptr [rsp + 1392], rax
                        mov              qword ptr [rsp + 1400], rdx;         jmp   n95_var_α
#-----------------------------------------------------------------------------------------------------------------------
n95_var_α:              mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1408], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1416], rax;         jmp   n96_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n96_subscript_α:        mov              rdi, qword ptr [rsp + 1392]
                        mov              rsi, qword ptr [rsp + 1400]
                        mov              rdx, qword ptr [rsp + 1408]
                        mov              rcx, qword ptr [rsp + 1416]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n99_disjunction_α
                        mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx;         jmp   n97_var_α
#-----------------------------------------------------------------------------------------------------------------------
n97_var_α:              mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 1464], rax;         jmp   n98_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n98_assign_var_α:       mov              rdi, qword ptr [rsp + 1424]
                        mov              rsi, qword ptr [rsp + 1432]
                        mov              rdx, qword ptr [rsp + 1456]
                        mov              rcx, qword ptr [rsp + 1464]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n99_disjunction_α
                        mov              qword ptr [rsp + 1440], rax
                        mov              qword ptr [rsp + 1448], rdx;         jmp   n99_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n99_disjunction_α:      mov              qword ptr [rsp + 1168], 0
                        mov              qword ptr [rsp + 1176], 0
                        mov              dword ptr [rsp + 1184], 0;           jmp   n106_var_α
n99_disjunction_as:     mov              eax, dword ptr [rsp + 1184]
                        cmp              eax, 0;                              jne   .Lx254_0
                        mov              rax, qword ptr [rsp + 1200]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 1208]
                        mov              qword ptr [rsp + 1176], rax;         jmp   n100_conjunction_α
.Lx254_0:               cmp              eax, 1;                              jne   .Lx254_1
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 1176], rax;         jmp   n100_conjunction_α
.Lx254_1:                                                                     jmp   n100_conjunction_α
n99_disjunction_β:      mov              eax, dword ptr [rsp + 1184]
                        cmp              eax, 0;                              je    n110_unmark_α
                                                                              jmp   n110_unmark_α
n99_disjunction_af:     add              dword ptr [rsp + 1184], 1
                        mov              eax, dword ptr [rsp + 1184]
                        cmp              eax, 1;                              je    n101_var_α
                                                                              jmp   n110_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n100_conjunction_α:     mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n110_unmark_α
n100_conjunction_β:                                                           jmp   n110_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n101_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1360], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1368], rax;         jmp   n102_lit_integer_α
n101_var_β:                                                                   jmp   n110_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_integer_α:     mov              qword ptr [rsp + 1376], 3            # result
                        mov              rax, qword ptr [rip + .Lx258_0]
                        mov              qword ptr [rsp + 1384], rax;         jmp   n103_coerce_numeric_α
.Lx258_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n103_coerce_numeric_α:  mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 5;                              je    .Lx260_1
                        cmp              eax, 3;                              jne   .Lx260_0
                        mov              eax, dword ptr [rsp + 1376]
                        cmp              eax, 3;                              jne   .Lx260_0
.Lx260_1:               mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n104_binop_α
.Lx260_0:               lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 1376]
                        lea              rdx, [rsp + 1344]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n104_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n104_binop_α:           mov              eax, dword ptr [rsp + 1344]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx261_2
                        mov              rax, qword ptr [rsp + 1352]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 1328], 3
                        mov              qword ptr [rsp + 1336], rax;         jmp   .Lx261_7
.Lx261_2:               and              edx, 1;                              jz    .Lx261_0
                        mov              rsi, qword ptr [rsp + 1352]
                        mov              rdi, 1
                        cmp              eax, 5;                              je    .Lx261_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx261_4
.Lx261_3:               movq             xmm0, rsi
.Lx261_4:               cmp              ecx, 5;                              je    .Lx261_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx261_6
.Lx261_5:               movq             xmm1, rdi
.Lx261_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1328], 5
                        mov              qword ptr [rsp + 1336], rax
.Lx261_7:                                                                     jmp   n105_call_proc_staged_α
.Lx261_0:               mov              rdi, qword ptr [rsp + 1344]
                        mov              rsi, qword ptr [rsp + 1352]
                        mov              rdx, qword ptr [rsp + 1376]
                        mov              rcx, qword ptr [rsp + 1384]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n110_unmark_α
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n105_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n105_call_proc_staged_α:
                        lea              rsi, [rsp + 1328]
                        call             q_dcα;                               jmp   .Lx263_2
.Lx263_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx263_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1280]
                        mov              rdx, qword ptr [rsp + 1288]
.Lx263_29:              mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx
                        cmp              eax, 104;                            je    n110_unmark_α
                                                                              jmp   n99_disjunction_as
n105_call_proc_staged_β:
                                                                              jmp   n110_unmark_α
.Lx263_0:               .quad            .Lx263_0_s
.Lx263_0_s:             .string          "q"
#-----------------------------------------------------------------------------------------------------------------------
n106_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n107_var_α
n106_var_β:                                                                   jmp   n99_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n107_var_α:             mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 1264], rax          # result
                        mov              qword ptr [rsp + 1272], rdx;         jmp   n108_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n108_binop_test_α:      mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 112;                            je    .Lx267_0
                        mov              eax, dword ptr [rsp + 1264]
                        cmp              eax, 112;                            je    .Lx267_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx267_2
                        mov              eax, dword ptr [rsp + 1264]
                        cmp              eax, 3;                              jne   .Lx267_2
.Lx267_1:               mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 1272]
                        cmp              rax, rcx;                            jne   n99_disjunction_af
                        mov              rcx, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 1232], rcx
                        mov              rcx, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 1240], rcx;         jmp   n109_call_proc_staged_α
.Lx267_0:               mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 1264]
                        mov              rcx, qword ptr [rsp + 1272]
                        mov              r8d, 9
                        lea              r9, [rsp + 1232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx267_1
                        cmp              eax, 1;                              je    n99_disjunction_af
                                                                              jmp   n109_call_proc_staged_α
.Lx267_2:               mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 1264]
                        mov              rcx, qword ptr [rsp + 1272]
                        mov              r8d, 9
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n99_disjunction_af
                        mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 1240], rax;         jmp   n109_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n109_call_proc_staged_α:
                        call             show_dcα;                            jmp   .Lx269_2
.Lx269_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx269_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1200]
                        mov              rdx, qword ptr [rsp + 1208]
.Lx269_29:              mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx
                        cmp              eax, 104;                            je    n110_unmark_α
                                                                              jmp   n99_disjunction_as
n109_call_proc_staged_β:
                                                                              jmp   n110_unmark_α
.Lx269_0:               .quad            .Lx269_0_s
.Lx269_0_s:             .string          "show"
#-----------------------------------------------------------------------------------------------------------------------
n110_unmark_α:          mov              rsp, qword ptr [rsp + 1104];         jmp   n91_rev_assign_var_β
#-----------------------------------------------------------------------------------------------------------------------
q_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
q_β:
                                                                              jmp   q_ω
#-----------------------------------------------------------------------------------------------------------------------
q_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 2168]
                        add              rsp, 2192;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
q_ω:
                        mov              rcx, qword ptr [rsp + 2176]
                        add              rsp, 2192;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
q_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             r11
                        push             rsi
                        mov              r10, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [r10 + 0]
                        mov              rdx, qword ptr [r10 + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx272_2]
                        lea              rdx, [rip + .Lx272_3];               jmp   FN__q
.Lx272_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx272_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__show:
                        sub              rsp, 1280
                        mov              qword ptr [rsp + 1256], rcx
                        mov              qword ptr [rsp + 1264], rdx
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
show_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n273_disjunction_α:     mov              qword ptr [rsp + 816], 0
                        mov              qword ptr [rsp + 824], 0
                        mov              dword ptr [rsp + 832], 0;            jmp   n274_var_ref_α
n273_disjunction_as:    mov              eax, dword ptr [rsp + 832]
                        cmp              eax, 0;                              jne   .Lx329_0
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 824], rax;          jmp   n293_lit_string_α
.Lx329_0:                                                                     jmp   n293_lit_string_α
n273_disjunction_β:     mov              eax, dword ptr [rsp + 832];          jmp   n293_lit_string_α
n273_disjunction_af:    add              dword ptr [rsp + 832], 1
                        mov              eax, dword ptr [rsp + 832];          jmp   n293_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n274_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052432                      # show__INITFLAG__0
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx;         jmp   n275_nulltest_var_α
n274_var_ref_β:                                                               jmp   n273_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n275_nulltest_var_α:    mov              eax, dword ptr [rsp + 1168]
                        cmp              eax, 104;                            je    n273_disjunction_af
                        mov              rdi, qword ptr [rsp + 1168]
                        mov              rsi, qword ptr [rsp + 1176]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n273_disjunction_af
                        cmp              eax, 0;                              jne   n273_disjunction_af
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 1192], rax;         jmp   n276_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n276_lit_integer_α:     mov              qword ptr [rsp + 1216], 3            # result
                        mov              rax, qword ptr [rip + .Lx333_0]
                        mov              qword ptr [rsp + 1224], rax;         jmp   n277_assign_var_α
.Lx333_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n277_assign_var_α:      mov              rdi, qword ptr [rsp + 1184]
                        mov              rsi, qword ptr [rsp + 1192]
                        mov              rdx, qword ptr [rsp + 1216]
                        mov              rcx, qword ptr [rsp + 1224]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n273_disjunction_af
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx;         jmp   n278_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n278_lit_integer_α:     mov              qword ptr [rsp + 1152], 3            # result
                        mov              rax, qword ptr [rip + .Lx335_0]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n279_assign_α
.Lx335_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n279_assign_α:          mov              rax, qword ptr [rsp + 1152]
                        mov              rdx, qword ptr [rsp + 1160]
                        mov              qword ptr [r9 + 96], rax             # show__STATIC__count
                        mov              qword ptr [r9 + 104], rdx;           jmp   n280_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n280_lit_string_α:      mov              qword ptr [rsp + 1104], 2            # result
                        mov              dword ptr [rsp + 1108], 4
                        mov              rax, qword ptr [rip + .Lx337_0]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n281_var_α
.Lx337_0:               .quad            .Lx337_0_s
.Lx337_0_s:             .string          "|   "
#-----------------------------------------------------------------------------------------------------------------------
n281_var_α:             mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 1120], rax          # result
                        mov              qword ptr [rsp + 1128], rdx;         jmp   n282_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n282_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 1080], rax
                        mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 1064], rax
                        .section         .rodata
.Lrkfn340:              .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn340]
                        lea              rsi, [rsp + 1056]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        cmp              eax, 104;                            je    n286_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n283_lit_string_α
n282_call_builtin_icon_β:
                                                                              jmp   n286_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n283_lit_string_α:      mov              qword ptr [rsp + 1136], 2            # result
                        mov              dword ptr [rsp + 1140], 1
                        mov              rax, qword ptr [rip + .Lx341_0]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n284_binop_α
.Lx341_0:               .quad            .Lx341_0_s
.Lx341_0_s:             .string          "|"
#-----------------------------------------------------------------------------------------------------------------------
n284_binop_α:           mov              rdi, qword ptr [rsp + 1040]
                        mov              rsi, qword ptr [rsp + 1048]
                        mov              rdx, qword ptr [rsp + 1136]
                        mov              rcx, qword ptr [rsp + 1144]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n285_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n285_assign_α:          mov              rax, qword ptr [rsp + 1024]
                        mov              rdx, qword ptr [rsp + 1032]
                        mov              qword ptr [r9 + 112], rax            # show__STATIC__line
                        mov              qword ptr [r9 + 120], rdx;           jmp   n286_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n286_lit_string_α:      mov              qword ptr [rsp + 960], 2             # result
                        mov              dword ptr [rsp + 964], 4
                        mov              rax, qword ptr [rip + .Lx344_0]
                        mov              qword ptr [rsp + 968], rax;          jmp   n287_var_α
.Lx344_0:               .quad            .Lx344_0_s
.Lx344_0_s:             .string          "----"
#-----------------------------------------------------------------------------------------------------------------------
n287_var_α:             mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 976], rax           # result
                        mov              qword ptr [rsp + 984], rdx;          jmp   n288_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n288_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 936], rax
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 920], rax
                        .section         .rodata
.Lrkfn347:              .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn347]
                        lea              rsi, [rsp + 912]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                        cmp              eax, 104;                            je    n293_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n289_lit_string_α
n288_call_builtin_icon_β:
                                                                              jmp   n293_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n289_lit_string_α:      mov              qword ptr [rsp + 992], 2             # result
                        mov              dword ptr [rsp + 996], 1
                        mov              rax, qword ptr [rip + .Lx348_0]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n290_binop_α
.Lx348_0:               .quad            .Lx348_0_s
.Lx348_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n290_binop_α:           mov              rdi, qword ptr [rsp + 896]
                        mov              rsi, qword ptr [rsp + 904]
                        mov              rdx, qword ptr [rsp + 992]
                        mov              rcx, qword ptr [rsp + 1000]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n291_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n291_assign_α:          mov              rax, qword ptr [rsp + 880]
                        mov              rdx, qword ptr [rsp + 888]
                        mov              qword ptr [r9 + 128], rax            # show__STATIC__border
                        mov              qword ptr [r9 + 136], rdx
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx;          jmp   n292_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n292_conjunction_α:     mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 856], rax;          jmp   n273_disjunction_as
n292_conjunction_β:                                                           jmp   n293_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n293_lit_string_α:      mov              qword ptr [rsp + 720], 2             # result
                        mov              dword ptr [rsp + 724], 10
                        mov              rax, qword ptr [rip + .Lx352_0]
                        mov              qword ptr [rsp + 728], rax;          jmp   n294_var_α
.Lx352_0:               .quad            .Lx352_0_s
.Lx352_0_s:             .string          "solution: "
#-----------------------------------------------------------------------------------------------------------------------
n294_var_α:             mov              rax, qword ptr [r9 + 96]             # show__STATIC__count
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 784], rax           # result
                        mov              qword ptr [rsp + 792], rdx;          jmp   n295_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n295_lit_integer_α:     mov              qword ptr [rsp + 800], 3             # result
                        mov              rax, qword ptr [rip + .Lx354_0]
                        mov              qword ptr [rsp + 808], rax;          jmp   n296_coerce_numeric_α
.Lx354_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n296_coerce_numeric_α:  mov              eax, dword ptr [rsp + 784]
                        cmp              eax, 5;                              je    .Lx356_1
                        cmp              eax, 3;                              jne   .Lx356_0
                        mov              eax, dword ptr [rsp + 800]
                        cmp              eax, 3;                              jne   .Lx356_0
.Lx356_1:               mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 776], rax;          jmp   n297_binop_α
.Lx356_0:               lea              rdi, [rsp + 784]
                        lea              rsi, [rsp + 800]
                        lea              rdx, [rsp + 768]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n297_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n297_binop_α:           mov              eax, dword ptr [rsp + 768]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx357_2
                        mov              rax, qword ptr [rsp + 776]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 752], 3
                        mov              qword ptr [rsp + 760], rax;          jmp   .Lx357_7
.Lx357_2:               and              edx, 1;                              jz    .Lx357_0
                        mov              rsi, qword ptr [rsp + 776]
                        mov              rdi, 1
                        cmp              eax, 5;                              je    .Lx357_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx357_4
.Lx357_3:               movq             xmm0, rsi
.Lx357_4:               cmp              ecx, 5;                              je    .Lx357_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx357_6
.Lx357_5:               movq             xmm1, rdi
.Lx357_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 752], 5
                        mov              qword ptr [rsp + 760], rax
.Lx357_7:                                                                     jmp   n298_assign_α
.Lx357_0:               mov              rdi, qword ptr [rsp + 768]
                        mov              rsi, qword ptr [rsp + 776]
                        mov              rdx, qword ptr [rsp + 800]
                        mov              rcx, qword ptr [rsp + 808]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n300_lit_string_α
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n298_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n298_assign_α:          mov              rax, qword ptr [rsp + 752]
                        mov              rdx, qword ptr [rsp + 760]
                        mov              qword ptr [r9 + 96], rax             # show__STATIC__count
                        mov              qword ptr [r9 + 104], rdx
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx;          jmp   n299_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n299_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 696], rax
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 680], rax
                        .section         .rodata
.Lrkfn360:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn360]
                        lea              rsi, [rsp + 672]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                        cmp              eax, 104;                            je    n300_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n300_lit_string_α
n299_call_builtin_icon_β:
                                                                              jmp   n300_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n300_lit_string_α:      mov              qword ptr [rsp + 624], 2             # result
                        mov              dword ptr [rsp + 628], 2
                        mov              rax, qword ptr [rip + .Lx361_0]
                        mov              qword ptr [rsp + 632], rax;          jmp   n301_var_α
.Lx361_0:               .quad            .Lx361_0_s
.Lx361_0_s:             .string          "  "
#-----------------------------------------------------------------------------------------------------------------------
n301_var_α:             mov              rax, qword ptr [r9 + 128]            # show__STATIC__border
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 640], rax           # result
                        mov              qword ptr [rsp + 648], rdx;          jmp   n302_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n302_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 600], rax
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 584], rax
                        .section         .rodata
.Lrkfn364:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn364]
                        lea              rsi, [rsp + 576]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        cmp              eax, 104;                            je    n303_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n303_var_ref_α
n302_call_builtin_icon_β:
                                                                              jmp   n303_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n303_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052400                      # show__STATIC__line
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx;           jmp   n304_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n304_lit_integer_α:     mov              qword ptr [rsp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Lx367_0]
                        mov              qword ptr [rsp + 120], rax;          jmp   n305_var_α
.Lx367_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n305_var_α:             mov              rax, qword ptr [r9 + 16]             # solution
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 192], rax           # result
                        mov              qword ptr [rsp + 200], rdx;          jmp   n306_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n306_iterate_α:         mov              qword ptr [rsp + 176], 0
.Lx370_0:               mov              rdi, qword ptr [rsp + 192]
                        mov              rsi, qword ptr [rsp + 200]
                        mov              rdx, qword ptr [rsp + 176]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              rax, 104;                            je    n327_call_builtin_icon_α
                                                                              jmp   n307_lit_integer_α
n306_iterate_β:         inc              qword ptr [rsp + 176];               jmp   .Lx370_0
#-----------------------------------------------------------------------------------------------------------------------
n307_lit_integer_α:     mov              qword ptr [rsp + 208], 3             # result
                        mov              rax, qword ptr [rip + .Lx371_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n308_coerce_numeric_α
.Lx371_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n308_coerce_numeric_α:  mov              eax, dword ptr [rsp + 160]
                        cmp              eax, 5;                              je    .Lx373_1
                        cmp              eax, 3;                              jne   .Lx373_0
                        mov              eax, dword ptr [rsp + 208]
                        cmp              eax, 3;                              jne   .Lx373_0
.Lx373_1:               mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 152], rax;          jmp   n309_binop_α
.Lx373_0:               lea              rdi, [rsp + 160]
                        lea              rsi, [rsp + 208]
                        lea              rdx, [rsp + 144]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n309_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n309_binop_α:           mov              eax, dword ptr [rsp + 144]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx374_2
                        mov              rax, qword ptr [rsp + 152]
                        mov              rdx, 1
                        sub              rax, rdx
                        mov              qword ptr [rsp + 128], 3
                        mov              qword ptr [rsp + 136], rax;          jmp   .Lx374_7
.Lx374_2:               and              edx, 1;                              jz    .Lx374_0
                        mov              rsi, qword ptr [rsp + 152]
                        mov              rdi, 1
                        cmp              eax, 5;                              je    .Lx374_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx374_4
.Lx374_3:               movq             xmm0, rsi
.Lx374_4:               cmp              ecx, 5;                              je    .Lx374_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx374_6
.Lx374_5:               movq             xmm1, rdi
.Lx374_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 128], 5
                        mov              qword ptr [rsp + 136], rax
.Lx374_7:                                                                     jmp   n310_coerce_numeric_α
.Lx374_0:               mov              rdi, qword ptr [rsp + 144]
                        mov              rsi, qword ptr [rsp + 152]
                        mov              rdx, qword ptr [rsp + 208]
                        mov              rcx, qword ptr [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            je    n327_call_builtin_icon_α
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n310_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n310_coerce_numeric_α:  mov              eax, dword ptr [rsp + 128]
                        cmp              eax, 5;                              je    .Lx376_1
                        cmp              eax, 3;                              jne   .Lx376_0
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 3;                              jne   .Lx376_0
.Lx376_1:               mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 104], rax;          jmp   n311_binop_α
.Lx376_0:               lea              rdi, [rsp + 128]
                        lea              rsi, [rsp + 112]
                        lea              rdx, [rsp + 96]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n311_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n311_binop_α:           mov              eax, 3
                        mov              ecx, dword ptr [rsp + 96]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx377_2
                        mov              rax, 4
                        mov              rdx, qword ptr [rsp + 104]
                        imul             rax, rdx
                        mov              qword ptr [rsp + 80], 3
                        mov              qword ptr [rsp + 88], rax;           jmp   .Lx377_7
.Lx377_2:               and              edx, 1;                              jz    .Lx377_0
                        mov              rsi, 4
                        mov              rdi, qword ptr [rsp + 104]
                        cmp              eax, 5;                              je    .Lx377_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx377_4
.Lx377_3:               movq             xmm0, rsi
.Lx377_4:               cmp              ecx, 5;                              je    .Lx377_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx377_6
.Lx377_5:               movq             xmm1, rdi
.Lx377_6:               mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 80], 5
                        mov              qword ptr [rsp + 88], rax
.Lx377_7:                                                                     jmp   n312_lit_integer_α
.Lx377_0:               mov              rdi, qword ptr [rsp + 112]
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 96]
                        mov              rcx, qword ptr [rsp + 104]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        cmp              eax, 104;                            je    n327_call_builtin_icon_α
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n312_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n312_lit_integer_α:     mov              qword ptr [rsp + 224], 3             # result
                        mov              rax, qword ptr [rip + .Lx378_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n313_coerce_numeric_α
.Lx378_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n313_coerce_numeric_α:  mov              eax, dword ptr [rsp + 80]
                        cmp              eax, 5;                              je    .Lx380_1
                        cmp              eax, 3;                              jne   .Lx380_0
                        mov              eax, dword ptr [rsp + 224]
                        cmp              eax, 3;                              jne   .Lx380_0
.Lx380_1:               mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 72], rax;           jmp   n314_binop_α
.Lx380_0:               lea              rdi, [rsp + 80]
                        lea              rsi, [rsp + 224]
                        lea              rdx, [rsp + 64]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n314_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n314_binop_α:           mov              eax, dword ptr [rsp + 64]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx381_2
                        mov              rax, qword ptr [rsp + 72]
                        mov              rdx, 3
                        add              rax, rdx
                        mov              qword ptr [rsp + 48], 3
                        mov              qword ptr [rsp + 56], rax;           jmp   .Lx381_7
.Lx381_2:               and              edx, 1;                              jz    .Lx381_0
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdi, 3
                        cmp              eax, 5;                              je    .Lx381_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx381_4
.Lx381_3:               movq             xmm0, rsi
.Lx381_4:               cmp              ecx, 5;                              je    .Lx381_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx381_6
.Lx381_5:               movq             xmm1, rdi
.Lx381_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 48], 5
                        mov              qword ptr [rsp + 56], rax
.Lx381_7:                                                                     jmp   n315_subscript_α
.Lx381_0:               mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 224]
                        mov              rcx, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n327_call_builtin_icon_α
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n315_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n315_subscript_α:       mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 48]
                        mov              rcx, qword ptr [rsp + 56]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n306_iterate_β
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n316_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n316_lit_string_α:      mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], 1
                        mov              rax, qword ptr [rip + .Lx383_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n317_rev_assign_var_α
.Lx383_0:               .quad            .Lx383_0_s
.Lx383_0_s:             .string          "Q"
#-----------------------------------------------------------------------------------------------------------------------
n317_rev_assign_var_α:  mov              rdi, qword ptr [rsp + 240]
                        mov              rsi, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        mov              rdi, qword ptr [rsp + 240]
                        mov              rsi, qword ptr [rsp + 248]
                        mov              rdx, qword ptr [rsp + 288]
                        mov              rcx, qword ptr [rsp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n306_iterate_β
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n318_bound_α
n317_rev_assign_var_β:  mov              rdi, qword ptr [rsp + 240]
                        mov              rsi, qword ptr [rsp + 248]
                        mov              rdx, qword ptr [rsp + 272]
                        mov              rcx, qword ptr [rsp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n306_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n318_bound_α:           mov              qword ptr [rsp + 304], rsp;          jmp   n319_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n319_lit_string_α:      mov              qword ptr [rsp + 528], 2             # result
                        mov              dword ptr [rsp + 532], 2
                        mov              rax, qword ptr [rip + .Lx387_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n320_var_α
.Lx387_0:               .quad            .Lx387_0_s
.Lx387_0_s:             .string          "  "
#-----------------------------------------------------------------------------------------------------------------------
n320_var_α:             mov              rax, qword ptr [r9 + 112]            # show__STATIC__line
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 544], rax           # result
                        mov              qword ptr [rsp + 552], rdx;          jmp   n321_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n321_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 504], rax
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 488], rax
                        .section         .rodata
.Lrkfn390:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn390]
                        lea              rsi, [rsp + 480]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              eax, 104;                            je    n322_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n322_lit_string_α
n321_call_builtin_icon_β:
                                                                              jmp   n322_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n322_lit_string_α:      mov              qword ptr [rsp + 432], 2             # result
                        mov              dword ptr [rsp + 436], 2
                        mov              rax, qword ptr [rip + .Lx391_0]
                        mov              qword ptr [rsp + 440], rax;          jmp   n323_var_α
.Lx391_0:               .quad            .Lx391_0_s
.Lx391_0_s:             .string          "  "
#-----------------------------------------------------------------------------------------------------------------------
n323_var_α:             mov              rax, qword ptr [r9 + 128]            # show__STATIC__border
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 448], rax           # result
                        mov              qword ptr [rsp + 456], rdx;          jmp   n324_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n324_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 408], rax
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 392], rax
                        .section         .rodata
.Lrkfn394:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn394]
                        lea              rsi, [rsp + 384]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              eax, 104;                            je    n326_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n325_conjunction_α
n324_call_builtin_icon_β:
                                                                              jmp   n326_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n325_conjunction_α:     mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 360], rax;          jmp   n326_unmark_α
n325_conjunction_β:                                                           jmp   n326_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n326_unmark_α:          mov              rsp, qword ptr [rsp + 304];          jmp   n317_rev_assign_var_β
#-----------------------------------------------------------------------------------------------------------------------
n327_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn399:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn399]
                        lea              rsi, [rsp + 16]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            je    show_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   show_γ
n327_call_builtin_icon_β:
                                                                              jmp   show_ω
#-----------------------------------------------------------------------------------------------------------------------
show_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
show_β:
                                                                              jmp   show_ω
#-----------------------------------------------------------------------------------------------------------------------
show_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1256]
                        add              rsp, 1280;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
show_ω:
                        mov              rcx, qword ptr [rsp + 1264]
                        add              rsp, 1280;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
show_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx400_2]
                        lea              rdx, [rip + .Lx400_3];               jmp   FN__show
.Lx400_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx400_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              edi, 10
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 10
                        call             gva_register@PLT
                        mov              rdi, qword ptr [rsp]
                        add              rdi, 8
                        mov              esi, dword ptr [rsp + 8]
                        sub              esi, 1
                        call             rt_main_args_stage@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
                        .section         .rodata
.Lgvan0:                .string          "n"
.Lgvan1:                .string          "solution"
.Lgvan2:                .string          "q__STATIC__up"
.Lgvan3:                .string          "q__STATIC__down"
.Lgvan4:                .string          "q__STATIC__rows"
.Lgvan5:                .string          "q__INITFLAG__0"
.Lgvan6:                .string          "show__STATIC__count"
.Lgvan7:                .string          "show__STATIC__line"
.Lgvan8:                .string          "show__STATIC__border"
.Lgvan9:                .string          "show__INITFLAG__0"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .quad            .Lgvan5
                        .quad            .Lgvan6
                        .quad            .Lgvan7
                        .quad            .Lgvan8
                        .quad            .Lgvan9
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 672
                        mov              qword ptr [rsp + 648], rcx
                        mov              qword ptr [rsp + 656], rdx
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 2
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n401_disjunction_α:     mov              qword ptr [rsp + 416], 0
                        mov              qword ptr [rsp + 424], 0
                        mov              dword ptr [rsp + 432], 0;            jmp   n418_var_ref_α
n401_disjunction_as:    mov              eax, dword ptr [rsp + 432]
                        cmp              eax, 0;                              jne   .Lx424_0
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 424], rax;          jmp   n402_assign_α
.Lx424_0:               cmp              eax, 1;                              jne   .Lx424_1
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 424], rax;          jmp   n402_assign_α
.Lx424_1:                                                                     jmp   n402_assign_α
n401_disjunction_β:     mov              eax, dword ptr [rsp + 432]
                        cmp              eax, 0;                              je    n401_disjunction_af
                                                                              jmp   n401_disjunction_af
n401_disjunction_af:    add              dword ptr [rsp + 432], 1
                        mov              eax, dword ptr [rsp + 432]
                        cmp              eax, 1;                              je    n417_lit_integer_α
                                                                              jmp   n403_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n402_assign_α:          mov              rax, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        mov              qword ptr [r9 + 0], rax              # n
                        mov              qword ptr [r9 + 8], rdx;             jmp   n403_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n403_disjunction_α:     mov              qword ptr [rsp + 272], 0
                        mov              qword ptr [rsp + 280], 0
                        mov              dword ptr [rsp + 288], 0;            jmp   n404_var_α
n403_disjunction_as:    mov              eax, dword ptr [rsp + 288]
                        cmp              eax, 0;                              jne   .Lx427_0
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 280], rax;          jmp   n409_var_α
.Lx427_0:                                                                     jmp   n409_var_α
n403_disjunction_β:     mov              eax, dword ptr [rsp + 288];          jmp   n409_var_α
n403_disjunction_af:    add              dword ptr [rsp + 288], 1
                        mov              eax, dword ptr [rsp + 288];          jmp   n409_var_α
#-----------------------------------------------------------------------------------------------------------------------
n404_var_α:             mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 384], rax           # result
                        mov              qword ptr [rsp + 392], rdx;          jmp   n405_lit_integer_α
n404_var_β:                                                                   jmp   n403_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n405_lit_integer_α:     mov              qword ptr [rsp + 400], 3             # result
                        mov              rax, qword ptr [rip + .Lx429_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n406_binop_test_α
.Lx429_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n406_binop_test_α:      mov              eax, dword ptr [rsp + 384]
                        cmp              eax, 112;                            je    .Lx430_0
                        mov              eax, dword ptr [rsp + 400]
                        cmp              eax, 112;                            je    .Lx430_0
                        mov              eax, dword ptr [rsp + 384]
                        cmp              eax, 3;                              jne   .Lx430_2
                        mov              eax, dword ptr [rsp + 400]
                        cmp              eax, 3;                              jne   .Lx430_2
.Lx430_1:               mov              rax, qword ptr [rsp + 392]
                        mov              rcx, qword ptr [rsp + 408]
                        cmp              rax, rcx;                            jg    n403_disjunction_af
                        mov              rcx, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 368], rcx
                        mov              rcx, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 376], rcx;          jmp   n407_lit_string_α
.Lx430_0:               mov              rdi, qword ptr [rsp + 384]
                        mov              rsi, qword ptr [rsp + 392]
                        mov              rdx, qword ptr [rsp + 400]
                        mov              rcx, qword ptr [rsp + 408]
                        mov              r8d, 6
                        lea              r9, [rsp + 368]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx430_1
                        cmp              eax, 1;                              je    n403_disjunction_af
                                                                              jmp   n407_lit_string_α
.Lx430_2:               mov              rdi, qword ptr [rsp + 384]
                        mov              rsi, qword ptr [rsp + 392]
                        mov              rdx, qword ptr [rsp + 400]
                        mov              rcx, qword ptr [rsp + 408]
                        mov              r8d, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n403_disjunction_af
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 376], rax;          jmp   n407_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n407_lit_string_α:      mov              qword ptr [rsp + 352], 2             # result
                        mov              dword ptr [rsp + 356], 37
                        mov              rax, qword ptr [rip + .Lx431_0]
                        mov              qword ptr [rsp + 360], rax;          jmp   n408_call_builtin_icon_α
.Lx431_0:               .quad            .Lx431_0_s
.Lx431_0_s:             .string          "-n needs a positive numeric parameter"
#-----------------------------------------------------------------------------------------------------------------------
n408_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 328], rax
                        .section         .rodata
.Lrkfn433:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn433]
                        lea              rsi, [rsp + 320]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              eax, 104;                            je    n409_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n403_disjunction_as
n408_call_builtin_icon_β:
                                                                              jmp   n409_var_α
#-----------------------------------------------------------------------------------------------------------------------
n409_var_α:             mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 256], rax           # result
                        mov              qword ptr [rsp + 264], rdx;          jmp   n410_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n410_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 232], rax
                        .section         .rodata
.Lrkfn436:              .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn436]
                        lea              rsi, [rsp + 224]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              eax, 104;                            je    n412_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n411_assign_α
n410_call_builtin_icon_β:
                                                                              jmp   n412_var_α
#-----------------------------------------------------------------------------------------------------------------------
n411_assign_α:          mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              qword ptr [r9 + 16], rax             # solution
                        mov              qword ptr [r9 + 24], rdx;            jmp   n412_var_α
#-----------------------------------------------------------------------------------------------------------------------
n412_var_α:             mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 160], rax           # result
                        mov              qword ptr [rsp + 168], rdx;          jmp   n413_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n413_lit_string_α:      mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], 8
                        mov              rax, qword ptr [rip + .Lx439_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n414_call_builtin_icon_α
.Lx439_0:               .quad            .Lx439_0_s
.Lx439_0_s:             .string          "-Queens:"
#-----------------------------------------------------------------------------------------------------------------------
n414_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 136], rax
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn441:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn441]
                        lea              rsi, [rsp + 112]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              eax, 104;                            je    n415_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n415_lit_integer_α
n414_call_builtin_icon_β:
                                                                              jmp   n415_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n415_lit_integer_α:     mov              qword ptr [rsp + 80], 3              # result
                        mov              rax, qword ptr [rip + .Lx442_0]
                        mov              qword ptr [rsp + 88], rax;           jmp   n416_call_proc_staged_α
.Lx442_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n416_call_proc_staged_α:
                        lea              rsi, [rsp + 80]
                        call             q_dcα;                               jmp   .Lx444_2
.Lx444_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx444_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
.Lx444_29:              mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 104;                            je    main_ω
                                                                              jmp   main_ω
n416_call_proc_staged_β:
                                                                              jmp   main_ω
.Lx444_0:               .quad            .Lx444_0_s
.Lx444_0_s:             .string          "q"
#-----------------------------------------------------------------------------------------------------------------------
n417_lit_integer_α:     mov              qword ptr [rsp + 560], 3             # result
                        mov              rax, qword ptr [rip + .Lx445_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n401_disjunction_as
n417_lit_integer_β:                                                           jmp   n401_disjunction_af
.Lx445_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n418_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx;          jmp   n419_lit_integer_α
n418_var_ref_β:                                                               jmp   n401_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n419_lit_integer_α:     mov              qword ptr [rsp + 512], 3             # result
                        mov              rax, qword ptr [rip + .Lx448_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n420_subscript_α
.Lx448_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n420_subscript_α:       mov              rdi, qword ptr [rsp + 496]
                        mov              rsi, qword ptr [rsp + 504]
                        mov              rdx, qword ptr [rsp + 512]
                        mov              rcx, qword ptr [rsp + 520]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n401_disjunction_af
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n421_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n421_deref_α:           mov              rdi, qword ptr [rsp + 528]
                        mov              rsi, qword ptr [rsp + 536]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n401_disjunction_af
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n422_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n422_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 472], rax
                        .section         .rodata
.Lrkfn452:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn452]
                        lea              rsi, [rsp + 464]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              eax, 104;                            je    n401_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n401_disjunction_as
n422_call_builtin_icon_β:
                                                                              jmp   n401_disjunction_af
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
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "q"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__q
                        .quad            q_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            2112
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "show"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__show
                        .quad            show_dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            1232
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
