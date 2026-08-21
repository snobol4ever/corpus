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
                        cmp              eax, 0;                              jne   .Lx00001_0
                        mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1480], rax;         jmp   n30_lit_integer_α
.Lx00001_0:                                                                     jmp   n30_lit_integer_α
n0_disjunction_β:       mov              eax, dword ptr [rsp + 1488];         jmp   n30_lit_integer_α
n0_disjunction_af:      add              dword ptr [rsp + 1488], 1
                        mov              eax, dword ptr [rsp + 1488];         jmp   n30_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              rax, 4294967336
                        mov              rdx, 1879052416                      # q__INITFLAG__0
                        mov              qword ptr [rsp + 2032], rax
                        mov              qword ptr [rsp + 2040], rdx;         jmp   n2_nulltest_var_α
n1_var_ref_β:                                                                 jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n2_nulltest_var_α:      mov              eax, dword ptr [rsp + 2032]
                        cmp              eax, 104;                            je    n0_disjunction_af
                        mov              rdi, qword ptr [rsp + 2032]
                        mov              rsi, qword ptr [rsp + 2040]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n0_disjunction_af
                        cmp              eax, 0;                              jne   n0_disjunction_af
                        mov              rax, qword ptr [rsp + 2032]
                        mov              qword ptr [rsp + 2048], rax
                        mov              rax, qword ptr [rsp + 2040]
                        mov              qword ptr [rsp + 2056], rax;         jmp   n3_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:       mov              qword ptr [rsp + 2080], 3            # result
                        mov              rax, qword ptr [rip + .Lx00002_0]
                        mov              qword ptr [rsp + 2088], rax;         jmp   n4_assign_var_α
.Lx00002_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_var_α:        mov              rdi, qword ptr [rsp + 2048]
                        mov              rsi, qword ptr [rsp + 2056]
                        mov              rdx, qword ptr [rsp + 2080]
                        mov              rcx, qword ptr [rsp + 2088]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n0_disjunction_af
                        mov              qword ptr [rsp + 2064], rax
                        mov              qword ptr [rsp + 2072], rdx;         jmp   n5_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:       mov              qword ptr [rsp + 1968], 3            # result
                        mov              rax, qword ptr [rip + .Lx00003_0]
                        mov              qword ptr [rsp + 1976], rax;         jmp   n6_var_α
.Lx00003_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:               mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 1984], rax          # result
                        mov              qword ptr [rsp + 1992], rdx;         jmp   n7_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n7_coerce_numeric_α:    mov              eax, dword ptr [rsp + 1984]
                        cmp              eax, 5;                              je    .Lx00004_1
                        cmp              eax, 3;                              jne   .Lx00004_0
                        mov              eax, dword ptr [rsp + 1968]
                        cmp              eax, 3;                              jne   .Lx00004_0
.Lx00004_1:               mov              rax, qword ptr [rsp + 1984]
                        mov              qword ptr [rsp + 1952], rax
                        mov              rax, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 1960], rax;         jmp   n8_binop_α
.Lx00004_0:               lea              rdi, [rsp + 1984]
                        lea              rsi, [rsp + 1968]
                        lea              rdx, [rsp + 1952]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n8_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n8_binop_α:             mov              eax, 3
                        mov              ecx, dword ptr [rsp + 1952]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx00005_2
                        mov              rax, 2
                        mov              rdx, qword ptr [rsp + 1960]
                        imul             rax, rdx
                        mov              qword ptr [rsp + 1936], 3
                        mov              qword ptr [rsp + 1944], rax;         jmp   .Lx00005_7
.Lx00005_2:               and              edx, 1;                              jz    .Lx00005_0
                        mov              rsi, 2
                        mov              rdi, qword ptr [rsp + 1960]
                        cmp              eax, 5;                              je    .Lx00005_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx00005_4
.Lx00005_3:               movq             xmm0, rsi
.Lx00005_4:               cmp              ecx, 5;                              je    .Lx00005_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx00005_6
.Lx00005_5:               movq             xmm1, rdi
.Lx00005_6:               mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1936], 5
                        mov              qword ptr [rsp + 1944], rax
.Lx00005_7:                                                                     jmp   n9_lit_integer_α
.Lx00005_0:               mov              rdi, qword ptr [rsp + 1968]
                        mov              rsi, qword ptr [rsp + 1976]
                        mov              rdx, qword ptr [rsp + 1952]
                        mov              rcx, qword ptr [rsp + 1960]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_mul@PLT
                        cmp              eax, 104;                            je    n15_lit_integer_α
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n9_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:       mov              qword ptr [rsp + 2000], 3            # result
                        mov              rax, qword ptr [rip + .Lx00006_0]
                        mov              qword ptr [rsp + 2008], rax;         jmp   n10_coerce_numeric_α
.Lx00006_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n10_coerce_numeric_α:   mov              eax, dword ptr [rsp + 1936]
                        cmp              eax, 5;                              je    .Lx00007_1
                        cmp              eax, 3;                              jne   .Lx00007_0
                        mov              eax, dword ptr [rsp + 2000]
                        cmp              eax, 3;                              jne   .Lx00007_0
.Lx00007_1:               mov              rax, qword ptr [rsp + 1936]
                        mov              qword ptr [rsp + 1920], rax
                        mov              rax, qword ptr [rsp + 1944]
                        mov              qword ptr [rsp + 1928], rax;         jmp   n11_binop_α
.Lx00007_0:               lea              rdi, [rsp + 1936]
                        lea              rsi, [rsp + 2000]
                        lea              rdx, [rsp + 1920]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n11_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n11_binop_α:            mov              eax, dword ptr [rsp + 1920]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx00008_2
                        mov              rax, qword ptr [rsp + 1928]
                        mov              rdx, 1
                        sub              rax, rdx
                        mov              qword ptr [rsp + 1904], 3
                        mov              qword ptr [rsp + 1912], rax;         jmp   .Lx00008_7
.Lx00008_2:               and              edx, 1;                              jz    .Lx00008_0
                        mov              rsi, qword ptr [rsp + 1928]
                        mov              rdi, 1
                        cmp              eax, 5;                              je    .Lx00008_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx00008_4
.Lx00008_3:               movq             xmm0, rsi
.Lx00008_4:               cmp              ecx, 5;                              je    .Lx00008_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx00008_6
.Lx00008_5:               movq             xmm1, rdi
.Lx00008_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1904], 5
                        mov              qword ptr [rsp + 1912], rax
.Lx00008_7:                                                                     jmp   n12_lit_integer_α
.Lx00008_0:               mov              rdi, qword ptr [rsp + 1920]
                        mov              rsi, qword ptr [rsp + 1928]
                        mov              rdx, qword ptr [rsp + 2000]
                        mov              rcx, qword ptr [rsp + 2008]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              eax, 104;                            je    n15_lit_integer_α
                        mov              qword ptr [rsp + 1904], rax
                        mov              qword ptr [rsp + 1912], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n12_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:      mov              qword ptr [rsp + 2016], 3            # result
                        mov              rax, qword ptr [rip + .Lx00009_0]
                        mov              qword ptr [rsp + 2024], rax;         jmp   n13_call_builtin_icon_α
.Lx00009_0:               .quad            0
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
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1840], rax
                        mov              qword ptr [rsp + 1848], rdx
                        cmp              eax, 104;                            je    n15_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n14_assign_α
n13_call_builtin_icon_β:
                                                                              jmp   n15_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n14_assign_α:           mov              rax, qword ptr [rsp + 1840]
                        mov              rdx, qword ptr [rsp + 1848]
                        mov              qword ptr [r9 + 80], rax             # q__STATIC__up
                        mov              qword ptr [r9 + 88], rdx;            jmp   n15_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_integer_α:      mov              qword ptr [rsp + 1776], 3            # result
                        mov              rax, qword ptr [rip + .Lx00010_0]
                        mov              qword ptr [rsp + 1784], rax;         jmp   n16_var_α
.Lx00010_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n16_var_α:              mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 1792], rax          # result
                        mov              qword ptr [rsp + 1800], rdx;         jmp   n17_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n17_coerce_numeric_α:   mov              eax, dword ptr [rsp + 1792]
                        cmp              eax, 5;                              je    .Lx00011_1
                        cmp              eax, 3;                              jne   .Lx00011_0
                        mov              eax, dword ptr [rsp + 1776]
                        cmp              eax, 3;                              jne   .Lx00011_0
.Lx00011_1:               mov              rax, qword ptr [rsp + 1792]
                        mov              qword ptr [rsp + 1760], rax
                        mov              rax, qword ptr [rsp + 1800]
                        mov              qword ptr [rsp + 1768], rax;         jmp   n18_binop_α
.Lx00011_0:               lea              rdi, [rsp + 1792]
                        lea              rsi, [rsp + 1776]
                        lea              rdx, [rsp + 1760]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n18_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n18_binop_α:            mov              eax, 3
                        mov              ecx, dword ptr [rsp + 1760]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx00012_2
                        mov              rax, 2
                        mov              rdx, qword ptr [rsp + 1768]
                        imul             rax, rdx
                        mov              qword ptr [rsp + 1744], 3
                        mov              qword ptr [rsp + 1752], rax;         jmp   .Lx00012_7
.Lx00012_2:               and              edx, 1;                              jz    .Lx00012_0
                        mov              rsi, 2
                        mov              rdi, qword ptr [rsp + 1768]
                        cmp              eax, 5;                              je    .Lx00012_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx00012_4
.Lx00012_3:               movq             xmm0, rsi
.Lx00012_4:               cmp              ecx, 5;                              je    .Lx00012_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx00012_6
.Lx00012_5:               movq             xmm1, rdi
.Lx00012_6:               mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1744], 5
                        mov              qword ptr [rsp + 1752], rax
.Lx00012_7:                                                                     jmp   n19_lit_integer_α
.Lx00012_0:               mov              rdi, qword ptr [rsp + 1776]
                        mov              rsi, qword ptr [rsp + 1784]
                        mov              rdx, qword ptr [rsp + 1760]
                        mov              rcx, qword ptr [rsp + 1768]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_mul@PLT
                        cmp              eax, 104;                            je    n25_var_α
                        mov              qword ptr [rsp + 1744], rax
                        mov              qword ptr [rsp + 1752], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n19_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_integer_α:      mov              qword ptr [rsp + 1808], 3            # result
                        mov              rax, qword ptr [rip + .Lx00013_0]
                        mov              qword ptr [rsp + 1816], rax;         jmp   n20_coerce_numeric_α
.Lx00013_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n20_coerce_numeric_α:   mov              eax, dword ptr [rsp + 1744]
                        cmp              eax, 5;                              je    .Lx00014_1
                        cmp              eax, 3;                              jne   .Lx00014_0
                        mov              eax, dword ptr [rsp + 1808]
                        cmp              eax, 3;                              jne   .Lx00014_0
.Lx00014_1:               mov              rax, qword ptr [rsp + 1744]
                        mov              qword ptr [rsp + 1728], rax
                        mov              rax, qword ptr [rsp + 1752]
                        mov              qword ptr [rsp + 1736], rax;         jmp   n21_binop_α
.Lx00014_0:               lea              rdi, [rsp + 1744]
                        lea              rsi, [rsp + 1808]
                        lea              rdx, [rsp + 1728]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n21_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n21_binop_α:            mov              eax, dword ptr [rsp + 1728]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx00015_2
                        mov              rax, qword ptr [rsp + 1736]
                        mov              rdx, 1
                        sub              rax, rdx
                        mov              qword ptr [rsp + 1712], 3
                        mov              qword ptr [rsp + 1720], rax;         jmp   .Lx00015_7
.Lx00015_2:               and              edx, 1;                              jz    .Lx00015_0
                        mov              rsi, qword ptr [rsp + 1736]
                        mov              rdi, 1
                        cmp              eax, 5;                              je    .Lx00015_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx00015_4
.Lx00015_3:               movq             xmm0, rsi
.Lx00015_4:               cmp              ecx, 5;                              je    .Lx00015_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx00015_6
.Lx00015_5:               movq             xmm1, rdi
.Lx00015_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1712], 5
                        mov              qword ptr [rsp + 1720], rax
.Lx00015_7:                                                                     jmp   n22_lit_integer_α
.Lx00015_0:               mov              rdi, qword ptr [rsp + 1728]
                        mov              rsi, qword ptr [rsp + 1736]
                        mov              rdx, qword ptr [rsp + 1808]
                        mov              rcx, qword ptr [rsp + 1816]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              eax, 104;                            je    n25_var_α
                        mov              qword ptr [rsp + 1712], rax
                        mov              qword ptr [rsp + 1720], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n22_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_integer_α:      mov              qword ptr [rsp + 1824], 3            # result
                        mov              rax, qword ptr [rip + .Lx00016_0]
                        mov              qword ptr [rsp + 1832], rax;         jmp   n23_call_builtin_icon_α
.Lx00016_0:               .quad            0
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
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1648], rax
                        mov              qword ptr [rsp + 1656], rdx
                        cmp              eax, 104;                            je    n25_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n24_assign_α
n23_call_builtin_icon_β:
                                                                              jmp   n25_var_α
#-----------------------------------------------------------------------------------------------------------------------
n24_assign_α:           mov              rax, qword ptr [rsp + 1648]
                        mov              rdx, qword ptr [rsp + 1656]
                        mov              qword ptr [r9 + 96], rax             # q__STATIC__down
                        mov              qword ptr [r9 + 104], rdx;           jmp   n25_var_α
#-----------------------------------------------------------------------------------------------------------------------
n25_var_α:              mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 1600], rax          # result
                        mov              qword ptr [rsp + 1608], rdx;         jmp   n26_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_integer_α:      mov              qword ptr [rsp + 1616], 3            # result
                        mov              rax, qword ptr [rip + .Lx00017_0]
                        mov              qword ptr [rsp + 1624], rax;         jmp   n27_call_builtin_icon_α
.Lx00017_0:               .quad            0
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
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx
                        cmp              eax, 104;                            je    n30_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n28_assign_α
n27_call_builtin_icon_β:
                                                                              jmp   n30_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n28_assign_α:           mov              rax, qword ptr [rsp + 1536]
                        mov              rdx, qword ptr [rsp + 1544]
                        mov              qword ptr [r9 + 112], rax            # q__STATIC__rows
                        mov              qword ptr [r9 + 120], rdx
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
                        mov              rax, qword ptr [rip + .Lx00018_0]
                        mov              qword ptr [rsp + 600], rax;          jmp   n31_var_ref_α
.Lx00018_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n31_var_ref_α:          mov              rax, 4294967336
                        mov              rdx, 1879052400                      # q__STATIC__rows
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx;          jmp   n32_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_integer_α:      mov              qword ptr [rsp + 672], 3             # result
                        mov              rax, qword ptr [rip + .Lx00019_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n33_var_α
.Lx00019_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n33_var_α:              mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 688], rax           # result
                        mov              qword ptr [rsp + 696], rdx;          jmp   n34_to_α
#-----------------------------------------------------------------------------------------------------------------------
n34_to_α:               mov              rdi, qword ptr [rsp + 672]
                        mov              rsi, qword ptr [rsp + 680]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 672], 3
                        mov              qword ptr [rsp + 680], rax
                        mov              rdi, qword ptr [rsp + 688]
                        mov              rsi, qword ptr [rsp + 696]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 688], 3
                        mov              qword ptr [rsp + 696], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 656], rax
.Lx00020_0:               mov              rax, qword ptr [rsp + 656]
                        mov              rcx, qword ptr [rsp + 696]
                        cmp              rax, rcx;                            jg    q_ω
                        mov              qword ptr [rsp + 640], 3
                        mov              qword ptr [rsp + 648], rax;          jmp   n35_assign_α
n34_to_β:               inc              qword ptr [rsp + 656];               jmp   .Lx00020_0
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
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n34_to_β
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx;          jmp   n37_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n37_deref_α:            mov              rdi, qword ptr [rsp + 704]
                        mov              rsi, qword ptr [rsp + 712]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n34_to_β
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx;          jmp   n38_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n38_binop_test_α:       mov              eax, dword ptr [rsp + 592]
                        cmp              eax, 112;                            je    .Lx00021_0
                        mov              eax, dword ptr [rsp + 720]
                        cmp              eax, 112;                            je    .Lx00021_0
                        mov              eax, dword ptr [rsp + 592]
                        cmp              eax, 3;                              jne   .Lx00021_2
                        mov              eax, dword ptr [rsp + 720]
                        cmp              eax, 3;                              jne   .Lx00021_2
.Lx00021_1:               mov              rax, qword ptr [rsp + 600]
                        mov              rcx, qword ptr [rsp + 728]
                        cmp              rax, rcx;                            jne   n34_to_β
                        mov              rcx, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 576], rcx
                        mov              rcx, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 584], rcx;          jmp   n39_var_ref_α
.Lx00021_0:               mov              rdi, qword ptr [rsp + 592]
                        mov              rsi, qword ptr [rsp + 600]
                        mov              rdx, qword ptr [rsp + 720]
                        mov              rcx, qword ptr [rsp + 728]
                        mov              r8d, 9
                        lea              r9, [rsp + 576]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            je    .Lx00021_1
                        cmp              eax, 1;                              je    n34_to_β
                                                                              jmp   n39_var_ref_α
.Lx00021_2:               mov              rdi, qword ptr [rsp + 592]
                        mov              rsi, qword ptr [rsp + 600]
                        mov              rdx, qword ptr [rsp + 720]
                        mov              rcx, qword ptr [rsp + 728]
                        mov              r8d, 9
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n34_to_β
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 584], rax;          jmp   n39_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n39_var_ref_α:          mov              rax, 4294967336
                        mov              rdx, 1879052368                      # q__STATIC__up
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
                        cmp              eax, 5;                              je    .Lx00022_1
                        cmp              eax, 3;                              jne   .Lx00022_0
                        mov              eax, dword ptr [rsp + 2096]
                        cmp              eax, 3;                              jne   .Lx00022_0
.Lx00022_1:               mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 840], rax;          jmp   n43_coerce_numeric_α
.Lx00022_0:               lea              rdi, [rsp + 848]
                        lea              rsi, [rsp + 2096]
                        lea              rdx, [rsp + 832]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n43_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n43_coerce_numeric_α:   mov              eax, dword ptr [rsp + 2096]
                        cmp              eax, 5;                              je    .Lx00023_1
                        cmp              eax, 3;                              jne   .Lx00023_0
                        mov              eax, dword ptr [rsp + 848]
                        cmp              eax, 3;                              jne   .Lx00023_0
.Lx00023_1:               mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 824], rax;          jmp   n44_binop_α
.Lx00023_0:               lea              rdi, [rsp + 2096]
                        lea              rsi, [rsp + 848]
                        lea              rdx, [rsp + 816]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n44_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n44_binop_α:            mov              eax, dword ptr [rsp + 832]
                        mov              ecx, dword ptr [rsp + 816]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx00024_2
                        mov              rax, qword ptr [rsp + 840]
                        mov              rdx, qword ptr [rsp + 824]
                        add              rax, rdx
                        mov              qword ptr [rsp + 800], 3
                        mov              qword ptr [rsp + 808], rax;          jmp   .Lx00024_7
.Lx00024_2:               and              edx, 1;                              jz    .Lx00024_0
                        mov              rsi, qword ptr [rsp + 840]
                        mov              rdi, qword ptr [rsp + 824]
                        cmp              eax, 5;                              je    .Lx00024_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx00024_4
.Lx00024_3:               movq             xmm0, rsi
.Lx00024_4:               cmp              ecx, 5;                              je    .Lx00024_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx00024_6
.Lx00024_5:               movq             xmm1, rdi
.Lx00024_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 800], 5
                        mov              qword ptr [rsp + 808], rax
.Lx00024_7:                                                                     jmp   n45_var_α
.Lx00024_0:               mov              rdi, qword ptr [rsp + 832]
                        mov              rsi, qword ptr [rsp + 840]
                        mov              rdx, qword ptr [rsp + 816]
                        mov              rcx, qword ptr [rsp + 824]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n34_to_β
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n45_var_α
#-----------------------------------------------------------------------------------------------------------------------
n45_var_α:              mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 888], rax;          jmp   n46_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n46_coerce_numeric_α:   mov              eax, dword ptr [rsp + 800]
                        cmp              eax, 5;                              je    .Lx00025_1
                        cmp              eax, 3;                              jne   .Lx00025_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx00025_0
.Lx00025_1:               mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 792], rax;          jmp   n47_coerce_numeric_α
.Lx00025_0:               lea              rdi, [rsp + 800]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 784]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n47_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n47_coerce_numeric_α:   mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 5;                              je    .Lx00026_1
                        cmp              eax, 3;                              jne   .Lx00026_0
                        mov              eax, dword ptr [rsp + 800]
                        cmp              eax, 3;                              jne   .Lx00026_0
.Lx00026_1:               mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 776], rax;          jmp   n48_binop_α
.Lx00026_0:               lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 800]
                        lea              rdx, [rsp + 768]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n48_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n48_binop_α:            mov              eax, dword ptr [rsp + 784]
                        mov              ecx, dword ptr [rsp + 768]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx00027_2
                        mov              rax, qword ptr [rsp + 792]
                        mov              rdx, qword ptr [rsp + 776]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 752], 3
                        mov              qword ptr [rsp + 760], rax;          jmp   .Lx00027_7
.Lx00027_2:               and              edx, 1;                              jz    .Lx00027_0
                        mov              rsi, qword ptr [rsp + 792]
                        mov              rdi, qword ptr [rsp + 776]
                        cmp              eax, 5;                              je    .Lx00027_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx00027_4
.Lx00027_3:               movq             xmm0, rsi
.Lx00027_4:               cmp              ecx, 5;                              je    .Lx00027_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx00027_6
.Lx00027_5:               movq             xmm1, rdi
.Lx00027_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 752], 5
                        mov              qword ptr [rsp + 760], rax
.Lx00027_7:                                                                     jmp   n49_subscript_α
.Lx00027_0:               mov              rdi, qword ptr [rsp + 784]
                        mov              rsi, qword ptr [rsp + 792]
                        mov              rdx, qword ptr [rsp + 768]
                        mov              rcx, qword ptr [rsp + 776]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              eax, 104;                            je    n34_to_β
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n49_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n49_subscript_α:        mov              rdi, qword ptr [rsp + 736]
                        mov              rsi, qword ptr [rsp + 744]
                        mov              rdx, qword ptr [rsp + 752]
                        mov              rcx, qword ptr [rsp + 760]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n34_to_β
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx;          jmp   n50_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n50_deref_α:            mov              rdi, qword ptr [rsp + 896]
                        mov              rsi, qword ptr [rsp + 904]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n34_to_β
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx;          jmp   n51_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n51_binop_test_α:       mov              eax, dword ptr [rsp + 576]
                        cmp              eax, 112;                            je    .Lx00028_0
                        mov              eax, dword ptr [rsp + 912]
                        cmp              eax, 112;                            je    .Lx00028_0
                        mov              eax, dword ptr [rsp + 576]
                        cmp              eax, 3;                              jne   .Lx00028_2
                        mov              eax, dword ptr [rsp + 912]
                        cmp              eax, 3;                              jne   .Lx00028_2
.Lx00028_1:               mov              rax, qword ptr [rsp + 584]
                        mov              rcx, qword ptr [rsp + 920]
                        cmp              rax, rcx;                            jne   n34_to_β
                        mov              rcx, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 560], rcx
                        mov              rcx, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 568], rcx;          jmp   n52_var_ref_α
.Lx00028_0:               mov              rdi, qword ptr [rsp + 576]
                        mov              rsi, qword ptr [rsp + 584]
                        mov              rdx, qword ptr [rsp + 912]
                        mov              rcx, qword ptr [rsp + 920]
                        mov              r8d, 9
                        lea              r9, [rsp + 560]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            je    .Lx00028_1
                        cmp              eax, 1;                              je    n34_to_β
                                                                              jmp   n52_var_ref_α
.Lx00028_2:               mov              rdi, qword ptr [rsp + 576]
                        mov              rsi, qword ptr [rsp + 584]
                        mov              rdx, qword ptr [rsp + 912]
                        mov              rcx, qword ptr [rsp + 920]
                        mov              r8d, 9
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n34_to_β
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 568], rax;          jmp   n52_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n52_var_ref_α:          mov              rax, 4294967336
                        mov              rdx, 1879052384                      # q__STATIC__down
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
                        cmp              eax, 5;                              je    .Lx00029_1
                        cmp              eax, 3;                              jne   .Lx00029_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx00029_0
.Lx00029_1:               mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n56_coerce_numeric_α
.Lx00029_0:               lea              rdi, [rsp + 2096]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 1008]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n56_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n56_coerce_numeric_α:   mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 5;                              je    .Lx00030_1
                        cmp              eax, 3;                              jne   .Lx00030_0
                        mov              eax, dword ptr [rsp + 2096]
                        cmp              eax, 3;                              jne   .Lx00030_0
.Lx00030_1:               mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n57_binop_α
.Lx00030_0:               lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 2096]
                        lea              rdx, [rsp + 992]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n57_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n57_binop_α:            mov              eax, dword ptr [rsp + 1008]
                        mov              ecx, dword ptr [rsp + 992]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx00031_2
                        mov              rax, qword ptr [rsp + 1016]
                        mov              rdx, qword ptr [rsp + 1000]
                        add              rax, rdx
                        mov              qword ptr [rsp + 976], 3
                        mov              qword ptr [rsp + 984], rax;          jmp   .Lx00031_7
.Lx00031_2:               and              edx, 1;                              jz    .Lx00031_0
                        mov              rsi, qword ptr [rsp + 1016]
                        mov              rdi, qword ptr [rsp + 1000]
                        cmp              eax, 5;                              je    .Lx00031_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx00031_4
.Lx00031_3:               movq             xmm0, rsi
.Lx00031_4:               cmp              ecx, 5;                              je    .Lx00031_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx00031_6
.Lx00031_5:               movq             xmm1, rdi
.Lx00031_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 976], 5
                        mov              qword ptr [rsp + 984], rax
.Lx00031_7:                                                                     jmp   n58_lit_integer_α
.Lx00031_0:               mov              rdi, qword ptr [rsp + 1008]
                        mov              rsi, qword ptr [rsp + 1016]
                        mov              rdx, qword ptr [rsp + 992]
                        mov              rcx, qword ptr [rsp + 1000]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n34_to_β
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n58_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_integer_α:      mov              qword ptr [rsp + 1056], 3            # result
                        mov              rax, qword ptr [rip + .Lx00032_0]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n59_coerce_numeric_α
.Lx00032_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n59_coerce_numeric_α:   mov              eax, dword ptr [rsp + 976]
                        cmp              eax, 5;                              je    .Lx00033_1
                        cmp              eax, 3;                              jne   .Lx00033_0
                        mov              eax, dword ptr [rsp + 1056]
                        cmp              eax, 3;                              jne   .Lx00033_0
.Lx00033_1:               mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 968], rax;          jmp   n60_binop_α
.Lx00033_0:               lea              rdi, [rsp + 976]
                        lea              rsi, [rsp + 1056]
                        lea              rdx, [rsp + 960]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n60_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n60_binop_α:            mov              eax, dword ptr [rsp + 960]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx00034_2
                        mov              rax, qword ptr [rsp + 968]
                        mov              rdx, 1
                        sub              rax, rdx
                        mov              qword ptr [rsp + 944], 3
                        mov              qword ptr [rsp + 952], rax;          jmp   .Lx00034_7
.Lx00034_2:               and              edx, 1;                              jz    .Lx00034_0
                        mov              rsi, qword ptr [rsp + 968]
                        mov              rdi, 1
                        cmp              eax, 5;                              je    .Lx00034_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx00034_4
.Lx00034_3:               movq             xmm0, rsi
.Lx00034_4:               cmp              ecx, 5;                              je    .Lx00034_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx00034_6
.Lx00034_5:               movq             xmm1, rdi
.Lx00034_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 944], 5
                        mov              qword ptr [rsp + 952], rax
.Lx00034_7:                                                                     jmp   n61_subscript_α
.Lx00034_0:               mov              rdi, qword ptr [rsp + 960]
                        mov              rsi, qword ptr [rsp + 968]
                        mov              rdx, qword ptr [rsp + 1056]
                        mov              rcx, qword ptr [rsp + 1064]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              eax, 104;                            je    n34_to_β
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n61_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n61_subscript_α:        mov              rdi, qword ptr [rsp + 928]
                        mov              rsi, qword ptr [rsp + 936]
                        mov              rdx, qword ptr [rsp + 944]
                        mov              rcx, qword ptr [rsp + 952]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n34_to_β
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx;         jmp   n62_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n62_deref_α:            mov              rdi, qword ptr [rsp + 1072]
                        mov              rsi, qword ptr [rsp + 1080]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n34_to_β
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx;         jmp   n63_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n63_binop_test_α:       mov              eax, dword ptr [rsp + 560]
                        cmp              eax, 112;                            je    .Lx00035_0
                        mov              eax, dword ptr [rsp + 1088]
                        cmp              eax, 112;                            je    .Lx00035_0
                        mov              eax, dword ptr [rsp + 560]
                        cmp              eax, 3;                              jne   .Lx00035_2
                        mov              eax, dword ptr [rsp + 1088]
                        cmp              eax, 3;                              jne   .Lx00035_2
.Lx00035_1:               mov              rax, qword ptr [rsp + 568]
                        mov              rcx, qword ptr [rsp + 1096]
                        cmp              rax, rcx;                            jne   n34_to_β
                        mov              rcx, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 544], rcx
                        mov              rcx, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 552], rcx;          jmp   n64_var_ref_α
.Lx00035_0:               mov              rdi, qword ptr [rsp + 560]
                        mov              rsi, qword ptr [rsp + 568]
                        mov              rdx, qword ptr [rsp + 1088]
                        mov              rcx, qword ptr [rsp + 1096]
                        mov              r8d, 9
                        lea              r9, [rsp + 544]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            je    .Lx00035_1
                        cmp              eax, 1;                              je    n34_to_β
                                                                              jmp   n64_var_ref_α
.Lx00035_2:               mov              rdi, qword ptr [rsp + 560]
                        mov              rsi, qword ptr [rsp + 568]
                        mov              rdx, qword ptr [rsp + 1088]
                        mov              rcx, qword ptr [rsp + 1096]
                        mov              r8d, 9
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n34_to_β
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 552], rax;          jmp   n64_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n64_var_ref_α:          mov              rax, 4294967336
                        mov              rdx, 1879052400                      # q__STATIC__rows
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
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n34_to_β
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx;           jmp   n67_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n67_var_ref_α:          mov              rax, 4294967336
                        mov              rdx, 1879052368                      # q__STATIC__up
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
                        cmp              eax, 5;                              je    .Lx00036_1
                        cmp              eax, 3;                              jne   .Lx00036_0
                        mov              eax, dword ptr [rsp + 2096]
                        cmp              eax, 3;                              jne   .Lx00036_0
.Lx00036_1:               mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 232], rax;          jmp   n71_coerce_numeric_α
.Lx00036_0:               lea              rdi, [rsp + 240]
                        lea              rsi, [rsp + 2096]
                        lea              rdx, [rsp + 224]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n71_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n71_coerce_numeric_α:   mov              eax, dword ptr [rsp + 2096]
                        cmp              eax, 5;                              je    .Lx00037_1
                        cmp              eax, 3;                              jne   .Lx00037_0
                        mov              eax, dword ptr [rsp + 240]
                        cmp              eax, 3;                              jne   .Lx00037_0
.Lx00037_1:               mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 216], rax;          jmp   n72_binop_α
.Lx00037_0:               lea              rdi, [rsp + 2096]
                        lea              rsi, [rsp + 240]
                        lea              rdx, [rsp + 208]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n72_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n72_binop_α:            mov              eax, dword ptr [rsp + 224]
                        mov              ecx, dword ptr [rsp + 208]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx00038_2
                        mov              rax, qword ptr [rsp + 232]
                        mov              rdx, qword ptr [rsp + 216]
                        add              rax, rdx
                        mov              qword ptr [rsp + 192], 3
                        mov              qword ptr [rsp + 200], rax;          jmp   .Lx00038_7
.Lx00038_2:               and              edx, 1;                              jz    .Lx00038_0
                        mov              rsi, qword ptr [rsp + 232]
                        mov              rdi, qword ptr [rsp + 216]
                        cmp              eax, 5;                              je    .Lx00038_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx00038_4
.Lx00038_3:               movq             xmm0, rsi
.Lx00038_4:               cmp              ecx, 5;                              je    .Lx00038_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx00038_6
.Lx00038_5:               movq             xmm1, rdi
.Lx00038_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 192], 5
                        mov              qword ptr [rsp + 200], rax
.Lx00038_7:                                                                     jmp   n73_var_α
.Lx00038_0:               mov              rdi, qword ptr [rsp + 224]
                        mov              rsi, qword ptr [rsp + 232]
                        mov              rdx, qword ptr [rsp + 208]
                        mov              rcx, qword ptr [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n34_to_β
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n73_var_α
#-----------------------------------------------------------------------------------------------------------------------
n73_var_α:              mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 280], rax;          jmp   n74_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n74_coerce_numeric_α:   mov              eax, dword ptr [rsp + 192]
                        cmp              eax, 5;                              je    .Lx00039_1
                        cmp              eax, 3;                              jne   .Lx00039_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx00039_0
.Lx00039_1:               mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 184], rax;          jmp   n75_coerce_numeric_α
.Lx00039_0:               lea              rdi, [rsp + 192]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 176]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n75_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n75_coerce_numeric_α:   mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 5;                              je    .Lx00040_1
                        cmp              eax, 3;                              jne   .Lx00040_0
                        mov              eax, dword ptr [rsp + 192]
                        cmp              eax, 3;                              jne   .Lx00040_0
.Lx00040_1:               mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 168], rax;          jmp   n76_binop_α
.Lx00040_0:               lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 192]
                        lea              rdx, [rsp + 160]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n76_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n76_binop_α:            mov              eax, dword ptr [rsp + 176]
                        mov              ecx, dword ptr [rsp + 160]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx00041_2
                        mov              rax, qword ptr [rsp + 184]
                        mov              rdx, qword ptr [rsp + 168]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 144], 3
                        mov              qword ptr [rsp + 152], rax;          jmp   .Lx00041_7
.Lx00041_2:               and              edx, 1;                              jz    .Lx00041_0
                        mov              rsi, qword ptr [rsp + 184]
                        mov              rdi, qword ptr [rsp + 168]
                        cmp              eax, 5;                              je    .Lx00041_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx00041_4
.Lx00041_3:               movq             xmm0, rsi
.Lx00041_4:               cmp              ecx, 5;                              je    .Lx00041_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx00041_6
.Lx00041_5:               movq             xmm1, rdi
.Lx00041_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 144], 5
                        mov              qword ptr [rsp + 152], rax
.Lx00041_7:                                                                     jmp   n77_subscript_α
.Lx00041_0:               mov              rdi, qword ptr [rsp + 176]
                        mov              rsi, qword ptr [rsp + 184]
                        mov              rdx, qword ptr [rsp + 160]
                        mov              rcx, qword ptr [rsp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              eax, 104;                            je    n34_to_β
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n77_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n77_subscript_α:        mov              rdi, qword ptr [rsp + 128]
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 144]
                        mov              rcx, qword ptr [rsp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n34_to_β
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n78_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n78_var_ref_α:          mov              rax, 4294967336
                        mov              rdx, 1879052384                      # q__STATIC__down
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
                        cmp              eax, 5;                              je    .Lx00042_1
                        cmp              eax, 3;                              jne   .Lx00042_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx00042_0
.Lx00042_1:               mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 424], rax;          jmp   n82_coerce_numeric_α
.Lx00042_0:               lea              rdi, [rsp + 2096]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 416]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n82_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n82_coerce_numeric_α:   mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 5;                              je    .Lx00043_1
                        cmp              eax, 3;                              jne   .Lx00043_0
                        mov              eax, dword ptr [rsp + 2096]
                        cmp              eax, 3;                              jne   .Lx00043_0
.Lx00043_1:               mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 408], rax;          jmp   n83_binop_α
.Lx00043_0:               lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 2096]
                        lea              rdx, [rsp + 400]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n83_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n83_binop_α:            mov              eax, dword ptr [rsp + 416]
                        mov              ecx, dword ptr [rsp + 400]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx00044_2
                        mov              rax, qword ptr [rsp + 424]
                        mov              rdx, qword ptr [rsp + 408]
                        add              rax, rdx
                        mov              qword ptr [rsp + 384], 3
                        mov              qword ptr [rsp + 392], rax;          jmp   .Lx00044_7
.Lx00044_2:               and              edx, 1;                              jz    .Lx00044_0
                        mov              rsi, qword ptr [rsp + 424]
                        mov              rdi, qword ptr [rsp + 408]
                        cmp              eax, 5;                              je    .Lx00044_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx00044_4
.Lx00044_3:               movq             xmm0, rsi
.Lx00044_4:               cmp              ecx, 5;                              je    .Lx00044_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx00044_6
.Lx00044_5:               movq             xmm1, rdi
.Lx00044_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 384], 5
                        mov              qword ptr [rsp + 392], rax
.Lx00044_7:                                                                     jmp   n84_lit_integer_α
.Lx00044_0:               mov              rdi, qword ptr [rsp + 416]
                        mov              rsi, qword ptr [rsp + 424]
                        mov              rdx, qword ptr [rsp + 400]
                        mov              rcx, qword ptr [rsp + 408]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n34_to_β
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n84_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_integer_α:      mov              qword ptr [rsp + 464], 3             # result
                        mov              rax, qword ptr [rip + .Lx00045_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n85_coerce_numeric_α
.Lx00045_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n85_coerce_numeric_α:   mov              eax, dword ptr [rsp + 384]
                        cmp              eax, 5;                              je    .Lx00046_1
                        cmp              eax, 3;                              jne   .Lx00046_0
                        mov              eax, dword ptr [rsp + 464]
                        cmp              eax, 3;                              jne   .Lx00046_0
.Lx00046_1:               mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 376], rax;          jmp   n86_binop_α
.Lx00046_0:               lea              rdi, [rsp + 384]
                        lea              rsi, [rsp + 464]
                        lea              rdx, [rsp + 368]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n86_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n86_binop_α:            mov              eax, dword ptr [rsp + 368]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx00047_2
                        mov              rax, qword ptr [rsp + 376]
                        mov              rdx, 1
                        sub              rax, rdx
                        mov              qword ptr [rsp + 352], 3
                        mov              qword ptr [rsp + 360], rax;          jmp   .Lx00047_7
.Lx00047_2:               and              edx, 1;                              jz    .Lx00047_0
                        mov              rsi, qword ptr [rsp + 376]
                        mov              rdi, 1
                        cmp              eax, 5;                              je    .Lx00047_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx00047_4
.Lx00047_3:               movq             xmm0, rsi
.Lx00047_4:               cmp              ecx, 5;                              je    .Lx00047_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx00047_6
.Lx00047_5:               movq             xmm1, rdi
.Lx00047_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 352], 5
                        mov              qword ptr [rsp + 360], rax
.Lx00047_7:                                                                     jmp   n87_subscript_α
.Lx00047_0:               mov              rdi, qword ptr [rsp + 368]
                        mov              rsi, qword ptr [rsp + 376]
                        mov              rdx, qword ptr [rsp + 464]
                        mov              rcx, qword ptr [rsp + 472]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              eax, 104;                            je    n34_to_β
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n87_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n87_subscript_α:        mov              rdi, qword ptr [rsp + 336]
                        mov              rsi, qword ptr [rsp + 344]
                        mov              rdx, qword ptr [rsp + 352]
                        mov              rcx, qword ptr [rsp + 360]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n34_to_β
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx;          jmp   n88_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_integer_α:      mov              qword ptr [rsp + 528], 3             # result
                        mov              rax, qword ptr [rip + .Lx00048_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n89_rev_assign_var_α
.Lx00048_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n89_rev_assign_var_α:   mov              rdi, qword ptr [rsp + 480]
                        mov              rsi, qword ptr [rsp + 488]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        mov              rdi, qword ptr [rsp + 480]
                        mov              rsi, qword ptr [rsp + 488]
                        mov              rdx, qword ptr [rsp + 528]
                        mov              rcx, qword ptr [rsp + 536]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n34_to_β
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx;          jmp   n90_rev_assign_var_α
n89_rev_assign_var_β:   mov              rdi, qword ptr [rsp + 480]
                        mov              rsi, qword ptr [rsp + 488]
                        mov              rdx, qword ptr [rsp + 512]
                        mov              rcx, qword ptr [rsp + 520]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n34_to_β
#-----------------------------------------------------------------------------------------------------------------------
n90_rev_assign_var_α:   mov              rdi, qword ptr [rsp + 288]
                        mov              rsi, qword ptr [rsp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        mov              rdi, qword ptr [rsp + 288]
                        mov              rsi, qword ptr [rsp + 296]
                        mov              rdx, qword ptr [rsp + 496]
                        mov              rcx, qword ptr [rsp + 504]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n89_rev_assign_var_β
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n91_rev_assign_var_α
n90_rev_assign_var_β:   mov              rdi, qword ptr [rsp + 288]
                        mov              rsi, qword ptr [rsp + 296]
                        mov              rdx, qword ptr [rsp + 320]
                        mov              rcx, qword ptr [rsp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n89_rev_assign_var_β
#-----------------------------------------------------------------------------------------------------------------------
n91_rev_assign_var_α:   mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 304]
                        mov              rcx, qword ptr [rsp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n90_rev_assign_var_β
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx;          jmp   n92_conjunction_α
n91_rev_assign_var_β:   mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 112]
                        mov              rcx, qword ptr [rsp + 120]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n90_rev_assign_var_β
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
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n99_disjunction_α
                        mov              qword ptr [rsp + 1440], rax
                        mov              qword ptr [rsp + 1448], rdx;         jmp   n99_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n99_disjunction_α:      mov              qword ptr [rsp + 1168], 0
                        mov              qword ptr [rsp + 1176], 0
                        mov              dword ptr [rsp + 1184], 0;           jmp   n00049_var_α
n99_disjunction_as:     mov              eax, dword ptr [rsp + 1184]
                        cmp              eax, 0;                              jne   .Lx00050_0
                        mov              rax, qword ptr [rsp + 1200]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 1208]
                        mov              qword ptr [rsp + 1176], rax;         jmp   n00051_conjunction_α
.Lx00050_0:               cmp              eax, 1;                              jne   .Lx00050_1
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 1176], rax;         jmp   n00051_conjunction_α
.Lx00050_1:                                                                     jmp   n00051_conjunction_α
n99_disjunction_β:      mov              eax, dword ptr [rsp + 1184]
                        cmp              eax, 0;                              je    n00052_unmark_α
                                                                              jmp   n00052_unmark_α
n99_disjunction_af:     add              dword ptr [rsp + 1184], 1
                        mov              eax, dword ptr [rsp + 1184]
                        cmp              eax, 1;                              je    n00053_var_α
                                                                              jmp   n00052_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00051_conjunction_α:     mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n00052_unmark_α
n00051_conjunction_β:                                                           jmp   n00052_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00053_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1360], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1368], rax;         jmp   n00054_lit_integer_α
n00053_var_β:                                                                   jmp   n00052_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00054_lit_integer_α:     mov              qword ptr [rsp + 1376], 3            # result
                        mov              rax, qword ptr [rip + .Lx00055_0]
                        mov              qword ptr [rsp + 1384], rax;         jmp   n00056_coerce_numeric_α
.Lx00055_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00056_coerce_numeric_α:  mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 5;                              je    .Lx00057_1
                        cmp              eax, 3;                              jne   .Lx00057_0
                        mov              eax, dword ptr [rsp + 1376]
                        cmp              eax, 3;                              jne   .Lx00057_0
.Lx00057_1:               mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n00058_binop_α
.Lx00057_0:               lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 1376]
                        lea              rdx, [rsp + 1344]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00058_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00058_binop_α:           mov              eax, dword ptr [rsp + 1344]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx00059_2
                        mov              rax, qword ptr [rsp + 1352]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 1328], 3
                        mov              qword ptr [rsp + 1336], rax;         jmp   .Lx00059_7
.Lx00059_2:               and              edx, 1;                              jz    .Lx00059_0
                        mov              rsi, qword ptr [rsp + 1352]
                        mov              rdi, 1
                        cmp              eax, 5;                              je    .Lx00059_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx00059_4
.Lx00059_3:               movq             xmm0, rsi
.Lx00059_4:               cmp              ecx, 5;                              je    .Lx00059_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx00059_6
.Lx00059_5:               movq             xmm1, rdi
.Lx00059_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1328], 5
                        mov              qword ptr [rsp + 1336], rax
.Lx00059_7:                                                                     jmp   n00060_call_proc_staged_α
.Lx00059_0:               mov              rdi, qword ptr [rsp + 1344]
                        mov              rsi, qword ptr [rsp + 1352]
                        mov              rdx, qword ptr [rsp + 1376]
                        mov              rcx, qword ptr [rsp + 1384]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n00052_unmark_α
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00060_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00060_call_proc_staged_α:
                        lea              rsi, [rsp + 1328]
                        call             q_dcα;                               jmp   .Lx00061_2
.Lx00061_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00061_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1280]
                        mov              rdx, qword ptr [rsp + 1288]
.Lx00061_29:              mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx
                        cmp              eax, 104;                            je    n00052_unmark_α
                                                                              jmp   n99_disjunction_as
n00060_call_proc_staged_β:
                                                                              jmp   n00052_unmark_α
.Lx00061_0:               .quad            .Lx00061_0_s
.Lx00061_0_s:             .string          "q"
#-----------------------------------------------------------------------------------------------------------------------
n00049_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n00062_var_α
n00049_var_β:                                                                   jmp   n99_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00062_var_α:             mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 1264], rax          # result
                        mov              qword ptr [rsp + 1272], rdx;         jmp   n00063_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n00063_binop_test_α:      mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 112;                            je    .Lx00064_0
                        mov              eax, dword ptr [rsp + 1264]
                        cmp              eax, 112;                            je    .Lx00064_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx00064_2
                        mov              eax, dword ptr [rsp + 1264]
                        cmp              eax, 3;                              jne   .Lx00064_2
.Lx00064_1:               mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 1272]
                        cmp              rax, rcx;                            jne   n99_disjunction_af
                        mov              rcx, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 1232], rcx
                        mov              rcx, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 1240], rcx;         jmp   n00065_call_proc_staged_α
.Lx00064_0:               mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 1264]
                        mov              rcx, qword ptr [rsp + 1272]
                        mov              r8d, 9
                        lea              r9, [rsp + 1232]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            je    .Lx00064_1
                        cmp              eax, 1;                              je    n99_disjunction_af
                                                                              jmp   n00065_call_proc_staged_α
.Lx00064_2:               mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 1264]
                        mov              rcx, qword ptr [rsp + 1272]
                        mov              r8d, 9
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n99_disjunction_af
                        mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 1240], rax;         jmp   n00065_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00065_call_proc_staged_α:
                        call             show_dcα;                            jmp   .Lx00066_2
.Lx00066_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00066_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1200]
                        mov              rdx, qword ptr [rsp + 1208]
.Lx00066_29:              mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx
                        cmp              eax, 104;                            je    n00052_unmark_α
                                                                              jmp   n99_disjunction_as
n00065_call_proc_staged_β:
                                                                              jmp   n00052_unmark_α
.Lx00066_0:               .quad            .Lx00066_0_s
.Lx00066_0_s:             .string          "show"
#-----------------------------------------------------------------------------------------------------------------------
n00052_unmark_α:          mov              rsp, qword ptr [rsp + 1104];         jmp   n91_rev_assign_var_β
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
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx00067_2]
                        lea              rdx, [rip + .Lx00067_3];               jmp   FN__q
.Lx00067_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx00067_3:               pop              r11
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
n00068_disjunction_α:     mov              qword ptr [rsp + 816], 0
                        mov              qword ptr [rsp + 824], 0
                        mov              dword ptr [rsp + 832], 0;            jmp   n00069_var_ref_α
n00068_disjunction_as:    mov              eax, dword ptr [rsp + 832]
                        cmp              eax, 0;                              jne   .Lx00070_0
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 824], rax;          jmp   n00071_lit_string_α
.Lx00070_0:                                                                     jmp   n00071_lit_string_α
n00068_disjunction_β:     mov              eax, dword ptr [rsp + 832];          jmp   n00071_lit_string_α
n00068_disjunction_af:    add              dword ptr [rsp + 832], 1
                        mov              eax, dword ptr [rsp + 832];          jmp   n00071_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00069_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052480                      # show__INITFLAG__0
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx;         jmp   n00072_nulltest_var_α
n00069_var_ref_β:                                                               jmp   n00068_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00072_nulltest_var_α:    mov              eax, dword ptr [rsp + 1168]
                        cmp              eax, 104;                            je    n00068_disjunction_af
                        mov              rdi, qword ptr [rsp + 1168]
                        mov              rsi, qword ptr [rsp + 1176]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n00068_disjunction_af
                        cmp              eax, 0;                              jne   n00068_disjunction_af
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 1192], rax;         jmp   n00073_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00073_lit_integer_α:     mov              qword ptr [rsp + 1216], 3            # result
                        mov              rax, qword ptr [rip + .Lx00074_0]
                        mov              qword ptr [rsp + 1224], rax;         jmp   n00075_assign_var_α
.Lx00074_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00075_assign_var_α:      mov              rdi, qword ptr [rsp + 1184]
                        mov              rsi, qword ptr [rsp + 1192]
                        mov              rdx, qword ptr [rsp + 1216]
                        mov              rcx, qword ptr [rsp + 1224]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n00068_disjunction_af
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx;         jmp   n00076_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00076_lit_integer_α:     mov              qword ptr [rsp + 1152], 3            # result
                        mov              rax, qword ptr [rip + .Lx00077_0]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n00078_assign_α
.Lx00077_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00078_assign_α:          mov              rax, qword ptr [rsp + 1152]
                        mov              rdx, qword ptr [rsp + 1160]
                        mov              qword ptr [r9 + 144], rax            # show__STATIC__count
                        mov              qword ptr [r9 + 152], rdx;           jmp   n00079_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00079_lit_string_α:      mov              qword ptr [rsp + 1104], 2            # result
                        mov              dword ptr [rsp + 1108], 4
                        mov              rax, qword ptr [rip + .Lx00080_0]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n00081_var_α
.Lx00080_0:               .quad            .Lx00080_0_s
.Lx00080_0_s:             .string          "|   "
#-----------------------------------------------------------------------------------------------------------------------
n00081_var_α:             mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 1120], rax          # result
                        mov              qword ptr [rsp + 1128], rdx;         jmp   n00082_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00082_call_builtin_icon_α:
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
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        cmp              eax, 104;                            je    n00083_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00084_lit_string_α
n00082_call_builtin_icon_β:
                                                                              jmp   n00083_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00084_lit_string_α:      mov              qword ptr [rsp + 1136], 2            # result
                        mov              dword ptr [rsp + 1140], 1
                        mov              rax, qword ptr [rip + .Lx00085_0]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n00086_binop_α
.Lx00085_0:               .quad            .Lx00085_0_s
.Lx00085_0_s:             .string          "|"
#-----------------------------------------------------------------------------------------------------------------------
n00086_binop_α:           mov              rdi, qword ptr [rsp + 1040]
                        mov              rsi, qword ptr [rsp + 1048]
                        mov              rdx, qword ptr [rsp + 1136]
                        mov              rcx, qword ptr [rsp + 1144]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00087_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00087_assign_α:          mov              rax, qword ptr [rsp + 1024]
                        mov              rdx, qword ptr [rsp + 1032]
                        mov              qword ptr [r9 + 160], rax            # show__STATIC__line
                        mov              qword ptr [r9 + 168], rdx;           jmp   n00083_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00083_lit_string_α:      mov              qword ptr [rsp + 960], 2             # result
                        mov              dword ptr [rsp + 964], 4
                        mov              rax, qword ptr [rip + .Lx00088_0]
                        mov              qword ptr [rsp + 968], rax;          jmp   n00089_var_α
.Lx00088_0:               .quad            .Lx00088_0_s
.Lx00088_0_s:             .string          "----"
#-----------------------------------------------------------------------------------------------------------------------
n00089_var_α:             mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 976], rax           # result
                        mov              qword ptr [rsp + 984], rdx;          jmp   n00090_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00090_call_builtin_icon_α:
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
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                        cmp              eax, 104;                            je    n00071_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00091_lit_string_α
n00090_call_builtin_icon_β:
                                                                              jmp   n00071_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00091_lit_string_α:      mov              qword ptr [rsp + 992], 2             # result
                        mov              dword ptr [rsp + 996], 1
                        mov              rax, qword ptr [rip + .Lx00092_0]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n00093_binop_α
.Lx00092_0:               .quad            .Lx00092_0_s
.Lx00092_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00093_binop_α:           mov              rdi, qword ptr [rsp + 896]
                        mov              rsi, qword ptr [rsp + 904]
                        mov              rdx, qword ptr [rsp + 992]
                        mov              rcx, qword ptr [rsp + 1000]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00094_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00094_assign_α:          mov              rax, qword ptr [rsp + 880]
                        mov              rdx, qword ptr [rsp + 888]
                        mov              qword ptr [r9 + 176], rax            # show__STATIC__border
                        mov              qword ptr [r9 + 184], rdx
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx;          jmp   n00095_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00095_conjunction_α:     mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 856], rax;          jmp   n00068_disjunction_as
n00095_conjunction_β:                                                           jmp   n00071_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00071_lit_string_α:      mov              qword ptr [rsp + 720], 2             # result
                        mov              dword ptr [rsp + 724], 10
                        mov              rax, qword ptr [rip + .Lx00096_0]
                        mov              qword ptr [rsp + 728], rax;          jmp   n00097_var_α
.Lx00096_0:               .quad            .Lx00096_0_s
.Lx00096_0_s:             .string          "solution: "
#-----------------------------------------------------------------------------------------------------------------------
n00097_var_α:             mov              rax, qword ptr [r9 + 144]            # show__STATIC__count
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 784], rax           # result
                        mov              qword ptr [rsp + 792], rdx;          jmp   n00098_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00098_lit_integer_α:     mov              qword ptr [rsp + 800], 3             # result
                        mov              rax, qword ptr [rip + .Lx00099_0]
                        mov              qword ptr [rsp + 808], rax;          jmp   n00100_coerce_numeric_α
.Lx00099_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00100_coerce_numeric_α:  mov              eax, dword ptr [rsp + 784]
                        cmp              eax, 5;                              je    .Lx00101_1
                        cmp              eax, 3;                              jne   .Lx00101_0
                        mov              eax, dword ptr [rsp + 800]
                        cmp              eax, 3;                              jne   .Lx00101_0
.Lx00101_1:               mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 776], rax;          jmp   n00102_binop_α
.Lx00101_0:               lea              rdi, [rsp + 784]
                        lea              rsi, [rsp + 800]
                        lea              rdx, [rsp + 768]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00102_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00102_binop_α:           mov              eax, dword ptr [rsp + 768]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx00103_2
                        mov              rax, qword ptr [rsp + 776]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 752], 3
                        mov              qword ptr [rsp + 760], rax;          jmp   .Lx00103_7
.Lx00103_2:               and              edx, 1;                              jz    .Lx00103_0
                        mov              rsi, qword ptr [rsp + 776]
                        mov              rdi, 1
                        cmp              eax, 5;                              je    .Lx00103_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx00103_4
.Lx00103_3:               movq             xmm0, rsi
.Lx00103_4:               cmp              ecx, 5;                              je    .Lx00103_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx00103_6
.Lx00103_5:               movq             xmm1, rdi
.Lx00103_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 752], 5
                        mov              qword ptr [rsp + 760], rax
.Lx00103_7:                                                                     jmp   n00104_assign_α
.Lx00103_0:               mov              rdi, qword ptr [rsp + 768]
                        mov              rsi, qword ptr [rsp + 776]
                        mov              rdx, qword ptr [rsp + 800]
                        mov              rcx, qword ptr [rsp + 808]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n00105_lit_string_α
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00104_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00104_assign_α:          mov              rax, qword ptr [rsp + 752]
                        mov              rdx, qword ptr [rsp + 760]
                        mov              qword ptr [r9 + 144], rax            # show__STATIC__count
                        mov              qword ptr [r9 + 152], rdx
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx;          jmp   n00106_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00106_call_builtin_icon_α:
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
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                        cmp              eax, 104;                            je    n00105_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00105_lit_string_α
n00106_call_builtin_icon_β:
                                                                              jmp   n00105_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00105_lit_string_α:      mov              qword ptr [rsp + 624], 2             # result
                        mov              dword ptr [rsp + 628], 2
                        mov              rax, qword ptr [rip + .Lx00107_0]
                        mov              qword ptr [rsp + 632], rax;          jmp   n00108_var_α
.Lx00107_0:               .quad            .Lx00107_0_s
.Lx00107_0_s:             .string          "  "
#-----------------------------------------------------------------------------------------------------------------------
n00108_var_α:             mov              rax, qword ptr [r9 + 176]            # show__STATIC__border
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 640], rax           # result
                        mov              qword ptr [rsp + 648], rdx;          jmp   n00109_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00109_call_builtin_icon_α:
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
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        cmp              eax, 104;                            je    n00110_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00110_var_ref_α
n00109_call_builtin_icon_β:
                                                                              jmp   n00110_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00110_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052448                      # show__STATIC__line
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx;           jmp   n00111_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00111_lit_integer_α:     mov              qword ptr [rsp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Lx00112_0]
                        mov              qword ptr [rsp + 120], rax;          jmp   n00113_var_α
.Lx00112_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n00113_var_α:             mov              rax, qword ptr [r9 + 16]             # solution
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 192], rax           # result
                        mov              qword ptr [rsp + 200], rdx;          jmp   n00114_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n00114_iterate_α:         mov              qword ptr [rsp + 176], 0
.Lx00115_0:               mov              rdi, qword ptr [rsp + 192]
                        mov              rsi, qword ptr [rsp + 200]
                        mov              rdx, qword ptr [rsp + 176]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              rax, 104;                            je    n00116_call_builtin_icon_α
                                                                              jmp   n00117_lit_integer_α
n00114_iterate_β:         inc              qword ptr [rsp + 176];               jmp   .Lx00115_0
#-----------------------------------------------------------------------------------------------------------------------
n00117_lit_integer_α:     mov              qword ptr [rsp + 208], 3             # result
                        mov              rax, qword ptr [rip + .Lx00118_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n00119_coerce_numeric_α
.Lx00118_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00119_coerce_numeric_α:  mov              eax, dword ptr [rsp + 160]
                        cmp              eax, 5;                              je    .Lx00120_1
                        cmp              eax, 3;                              jne   .Lx00120_0
                        mov              eax, dword ptr [rsp + 208]
                        cmp              eax, 3;                              jne   .Lx00120_0
.Lx00120_1:               mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 152], rax;          jmp   n00121_binop_α
.Lx00120_0:               lea              rdi, [rsp + 160]
                        lea              rsi, [rsp + 208]
                        lea              rdx, [rsp + 144]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00121_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00121_binop_α:           mov              eax, dword ptr [rsp + 144]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx00122_2
                        mov              rax, qword ptr [rsp + 152]
                        mov              rdx, 1
                        sub              rax, rdx
                        mov              qword ptr [rsp + 128], 3
                        mov              qword ptr [rsp + 136], rax;          jmp   .Lx00122_7
.Lx00122_2:               and              edx, 1;                              jz    .Lx00122_0
                        mov              rsi, qword ptr [rsp + 152]
                        mov              rdi, 1
                        cmp              eax, 5;                              je    .Lx00122_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx00122_4
.Lx00122_3:               movq             xmm0, rsi
.Lx00122_4:               cmp              ecx, 5;                              je    .Lx00122_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx00122_6
.Lx00122_5:               movq             xmm1, rdi
.Lx00122_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 128], 5
                        mov              qword ptr [rsp + 136], rax
.Lx00122_7:                                                                     jmp   n00123_coerce_numeric_α
.Lx00122_0:               mov              rdi, qword ptr [rsp + 144]
                        mov              rsi, qword ptr [rsp + 152]
                        mov              rdx, qword ptr [rsp + 208]
                        mov              rcx, qword ptr [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              eax, 104;                            je    n00116_call_builtin_icon_α
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00123_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n00123_coerce_numeric_α:  mov              eax, dword ptr [rsp + 128]
                        cmp              eax, 5;                              je    .Lx00124_1
                        cmp              eax, 3;                              jne   .Lx00124_0
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 3;                              jne   .Lx00124_0
.Lx00124_1:               mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 104], rax;          jmp   n00125_binop_α
.Lx00124_0:               lea              rdi, [rsp + 128]
                        lea              rsi, [rsp + 112]
                        lea              rdx, [rsp + 96]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00125_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00125_binop_α:           mov              eax, 3
                        mov              ecx, dword ptr [rsp + 96]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx00126_2
                        mov              rax, 4
                        mov              rdx, qword ptr [rsp + 104]
                        imul             rax, rdx
                        mov              qword ptr [rsp + 80], 3
                        mov              qword ptr [rsp + 88], rax;           jmp   .Lx00126_7
.Lx00126_2:               and              edx, 1;                              jz    .Lx00126_0
                        mov              rsi, 4
                        mov              rdi, qword ptr [rsp + 104]
                        cmp              eax, 5;                              je    .Lx00126_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx00126_4
.Lx00126_3:               movq             xmm0, rsi
.Lx00126_4:               cmp              ecx, 5;                              je    .Lx00126_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx00126_6
.Lx00126_5:               movq             xmm1, rdi
.Lx00126_6:               mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 80], 5
                        mov              qword ptr [rsp + 88], rax
.Lx00126_7:                                                                     jmp   n00127_lit_integer_α
.Lx00126_0:               mov              rdi, qword ptr [rsp + 112]
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 96]
                        mov              rcx, qword ptr [rsp + 104]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_mul@PLT
                        cmp              eax, 104;                            je    n00116_call_builtin_icon_α
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00127_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00127_lit_integer_α:     mov              qword ptr [rsp + 224], 3             # result
                        mov              rax, qword ptr [rip + .Lx00128_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n00129_coerce_numeric_α
.Lx00128_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n00129_coerce_numeric_α:  mov              eax, dword ptr [rsp + 80]
                        cmp              eax, 5;                              je    .Lx00130_1
                        cmp              eax, 3;                              jne   .Lx00130_0
                        mov              eax, dword ptr [rsp + 224]
                        cmp              eax, 3;                              jne   .Lx00130_0
.Lx00130_1:               mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 72], rax;           jmp   n00131_binop_α
.Lx00130_0:               lea              rdi, [rsp + 80]
                        lea              rsi, [rsp + 224]
                        lea              rdx, [rsp + 64]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00131_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00131_binop_α:           mov              eax, dword ptr [rsp + 64]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx00132_2
                        mov              rax, qword ptr [rsp + 72]
                        mov              rdx, 3
                        add              rax, rdx
                        mov              qword ptr [rsp + 48], 3
                        mov              qword ptr [rsp + 56], rax;           jmp   .Lx00132_7
.Lx00132_2:               and              edx, 1;                              jz    .Lx00132_0
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdi, 3
                        cmp              eax, 5;                              je    .Lx00132_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx00132_4
.Lx00132_3:               movq             xmm0, rsi
.Lx00132_4:               cmp              ecx, 5;                              je    .Lx00132_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx00132_6
.Lx00132_5:               movq             xmm1, rdi
.Lx00132_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 48], 5
                        mov              qword ptr [rsp + 56], rax
.Lx00132_7:                                                                     jmp   n00133_subscript_α
.Lx00132_0:               mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 224]
                        mov              rcx, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n00116_call_builtin_icon_α
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00133_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00133_subscript_α:       mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 48]
                        mov              rcx, qword ptr [rsp + 56]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n00114_iterate_β
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n00134_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00134_lit_string_α:      mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], 1
                        mov              rax, qword ptr [rip + .Lx00135_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n00136_rev_assign_var_α
.Lx00135_0:               .quad            .Lx00135_0_s
.Lx00135_0_s:             .string          "Q"
#-----------------------------------------------------------------------------------------------------------------------
n00136_rev_assign_var_α:  mov              rdi, qword ptr [rsp + 240]
                        mov              rsi, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        mov              rdi, qword ptr [rsp + 240]
                        mov              rsi, qword ptr [rsp + 248]
                        mov              rdx, qword ptr [rsp + 288]
                        mov              rcx, qword ptr [rsp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n00114_iterate_β
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n00137_bound_α
n00136_rev_assign_var_β:  mov              rdi, qword ptr [rsp + 240]
                        mov              rsi, qword ptr [rsp + 248]
                        mov              rdx, qword ptr [rsp + 272]
                        mov              rcx, qword ptr [rsp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00114_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n00137_bound_α:           mov              qword ptr [rsp + 304], rsp;          jmp   n00138_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00138_lit_string_α:      mov              qword ptr [rsp + 528], 2             # result
                        mov              dword ptr [rsp + 532], 2
                        mov              rax, qword ptr [rip + .Lx00139_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n00140_var_α
.Lx00139_0:               .quad            .Lx00139_0_s
.Lx00139_0_s:             .string          "  "
#-----------------------------------------------------------------------------------------------------------------------
n00140_var_α:             mov              rax, qword ptr [r9 + 160]            # show__STATIC__line
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 544], rax           # result
                        mov              qword ptr [rsp + 552], rdx;          jmp   n00141_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00141_call_builtin_icon_α:
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
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              eax, 104;                            je    n00142_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00142_lit_string_α
n00141_call_builtin_icon_β:
                                                                              jmp   n00142_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00142_lit_string_α:      mov              qword ptr [rsp + 432], 2             # result
                        mov              dword ptr [rsp + 436], 2
                        mov              rax, qword ptr [rip + .Lx00143_0]
                        mov              qword ptr [rsp + 440], rax;          jmp   n00144_var_α
.Lx00143_0:               .quad            .Lx00143_0_s
.Lx00143_0_s:             .string          "  "
#-----------------------------------------------------------------------------------------------------------------------
n00144_var_α:             mov              rax, qword ptr [r9 + 176]            # show__STATIC__border
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 448], rax           # result
                        mov              qword ptr [rsp + 456], rdx;          jmp   n00145_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00145_call_builtin_icon_α:
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
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              eax, 104;                            je    n00146_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00147_conjunction_α
n00145_call_builtin_icon_β:
                                                                              jmp   n00146_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00147_conjunction_α:     mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 360], rax;          jmp   n00146_unmark_α
n00147_conjunction_β:                                                           jmp   n00146_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00146_unmark_α:          mov              rsp, qword ptr [rsp + 304];          jmp   n00136_rev_assign_var_β
#-----------------------------------------------------------------------------------------------------------------------
n00116_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn399:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn399]
                        lea              rsi, [rsp + 16]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            je    show_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   show_γ
n00116_call_builtin_icon_β:
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
                        lea              rcx, [rip + .Lx00148_2]
                        lea              rdx, [rip + .Lx00148_3];               jmp   FN__show
.Lx00148_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx00148_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__options:
                        sub              rsp, 2928
                        mov              qword ptr [rsp + 2904], rcx
                        mov              qword ptr [rsp + 2912], rdx
                        mov              rdi, rsp
                        add              rdi, 2608
                        xor              eax, eax
                        mov              ecx, 128
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 7
                        call             rt_icn_zframe_args_install@PLT
options_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00149_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 2496], rax
                        mov              qword ptr [rsp + 2504], rdx;         jmp   n00150_nulltest_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00150_nulltest_var_α:    mov              eax, dword ptr [rsp + 2496]
                        cmp              eax, 104;                            je    n00151_call_builtin_icon_α
                        mov              rdi, qword ptr [rsp + 2496]
                        mov              rsi, qword ptr [rsp + 2504]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n00151_call_builtin_icon_α
                        cmp              eax, 0;                              jne   n00151_call_builtin_icon_α
                        mov              rax, qword ptr [rsp + 2496]
                        mov              qword ptr [rsp + 2512], rax
                        mov              rax, qword ptr [rsp + 2504]
                        mov              qword ptr [rsp + 2520], rax;         jmp   n00152_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n00152_lit_charset_α:     mov              qword ptr [rsp + 2592], 2            # result
                        mov              dword ptr [rsp + 2596], -1
                        mov              rax, qword ptr [rip + .Lx00153_0]
                        mov              qword ptr [rsp + 2600], rax;         jmp   n00154_call_builtin_icon_α
.Lx00153_0:               .quad            .Lx00153_0_s
.Lx00153_0_s:             .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n00154_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2592]
                        mov              qword ptr [rsp + 2560], rax
                        mov              rax, qword ptr [rsp + 2600]
                        mov              qword ptr [rsp + 2568], rax
                        .section         .rodata
.Lrkfn512:              .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn512]
                        lea              rsi, [rsp + 2560]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2544], rax
                        mov              qword ptr [rsp + 2552], rdx
                        cmp              eax, 104;                            je    n00151_call_builtin_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00155_assign_var_α
n00154_call_builtin_icon_β:
                                                                              jmp   n00151_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00155_assign_var_α:      mov              rdi, qword ptr [rsp + 2512]
                        mov              rsi, qword ptr [rsp + 2520]
                        mov              rdx, qword ptr [rsp + 2544]
                        mov              rcx, qword ptr [rsp + 2552]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n00151_call_builtin_icon_α
                        mov              qword ptr [rsp + 2528], rax
                        mov              qword ptr [rsp + 2536], rdx;         jmp   n00151_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00151_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn515:              .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn515]
                        lea              rsi, [rsp + 2480]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2464], rax
                        mov              qword ptr [rsp + 2472], rdx
                        cmp              eax, 104;                            je    n00156_make_list_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00157_assign_α
n00151_call_builtin_icon_β:
                                                                              jmp   n00156_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00157_assign_α:          mov              rax, qword ptr [rsp + 2464]
                        mov              rdx, qword ptr [rsp + 2472]
                        mov              qword ptr [rsp + 2608], rax
                        mov              qword ptr [rsp + 2616], rdx;         jmp   n00156_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00156_make_list_α:       lea              rdi, [rsp + 2464]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2448], rax
                        mov              qword ptr [rsp + 2456], rdx;         jmp   n00158_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00158_assign_α:          mov              rax, qword ptr [rsp + 2448]
                        mov              rdx, qword ptr [rsp + 2456]
                        mov              qword ptr [rsp + 2624], rax
                        mov              qword ptr [rsp + 2632], rdx;         jmp   n00159_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00159_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 280], rax;          jmp   n00160_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00160_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 248], rax
                        .section         .rodata
.Lrkfn523:              .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn523]
                        lea              rsi, [rsp + 240]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              eax, 104;                            je    n00161_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00162_assign_α
n00160_call_builtin_icon_β:
                                                                              jmp   n00161_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00162_assign_α:          mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 2640], rax
                        mov              qword ptr [rsp + 2648], rdx;         jmp   n00163_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00163_var_α:             mov              rax, qword ptr [rsp + 2640]
                        mov              qword ptr [rsp + 2432], rax
                        mov              rax, qword ptr [rsp + 2648]
                        mov              qword ptr [rsp + 2440], rax;         jmp   n00164_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n00164_scan_enter_α:      mov              rdi, qword ptr [rsp + 2432]
                        mov              rsi, qword ptr [rsp + 2440]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n00165_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00165_disjunction_α:     mov              qword ptr [rsp + 368], 0
                        mov              qword ptr [rsp + 376], 0
                        mov              dword ptr [rsp + 384], 0;            jmp   n00166_lit_string_α
n00165_disjunction_as:    mov              eax, dword ptr [rsp + 384]
                        cmp              eax, 0;                              jne   .Lx00167_0
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 376], rax;          jmp   n00168_scan_α
.Lx00167_0:               cmp              eax, 1;                              jne   .Lx00167_1
                        mov              rax, qword ptr [rsp + 2336]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 2344]
                        mov              qword ptr [rsp + 376], rax;          jmp   n00168_scan_α
.Lx00167_1:                                                                     jmp   n00168_scan_α
n00165_disjunction_β:     mov              eax, dword ptr [rsp + 384]
                        cmp              eax, 0;                              je    n00169_disjunction_β
                                                                              jmp   n00170_scan_α
n00165_disjunction_af:    add              dword ptr [rsp + 384], 1
                        mov              eax, dword ptr [rsp + 384]
                        cmp              eax, 1;                              je    n00171_var_α
                                                                              jmp   n00170_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00168_scan_α:            mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 344], rax
                        lea              rdi, [rsp + 304]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 304]
                        mov              r14, qword ptr [rsp + 312]
                        mov              r15, qword ptr [rsp + 320];          jmp   n00159_var_α
n00168_scan_β:            mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_reenter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r14, rax;                            jmp   n00165_disjunction_β
                                                                              jmp   n00159_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00172_conjunction_α:                                                           jmp   n00165_disjunction_as
n00172_conjunction_β:                                                           jmp   n00170_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00171_var_α:             mov              rax, qword ptr [rsp + 2624]
                        mov              qword ptr [rsp + 2400], rax
                        mov              rax, qword ptr [rsp + 2632]
                        mov              qword ptr [rsp + 2408], rax;         jmp   n00173_var_α
n00171_var_β:                                                                   jmp   n00170_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00173_var_α:             mov              rax, qword ptr [rsp + 2640]
                        mov              qword ptr [rsp + 2416], rax
                        mov              rax, qword ptr [rsp + 2648]
                        mov              qword ptr [rsp + 2424], rax;         jmp   n00174_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00174_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2416]
                        mov              qword ptr [rsp + 2368], rax
                        mov              rax, qword ptr [rsp + 2424]
                        mov              qword ptr [rsp + 2376], rax
                        mov              rax, qword ptr [rsp + 2400]
                        mov              qword ptr [rsp + 2352], rax
                        mov              rax, qword ptr [rsp + 2408]
                        mov              qword ptr [rsp + 2360], rax
                        .section         .rodata
.Lrkfn539:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn539]
                        lea              rsi, [rsp + 2352]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2336], rax
                        mov              qword ptr [rsp + 2344], rdx
                        cmp              eax, 104;                            je    n00170_scan_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00165_disjunction_as
n00174_call_builtin_icon_β:
                                                                              jmp   n00170_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00166_lit_string_α:      mov              qword ptr [rsp + 2320], 2            # result
                        mov              dword ptr [rsp + 2324], 1
                        mov              rax, qword ptr [rip + .Lx00175_0]
                        mov              qword ptr [rsp + 2328], rax;         jmp   n00176_scan_match_α
n00166_lit_string_β:                                                            jmp   n00165_disjunction_af
.Lx00175_0:               .quad            .Lx00175_0_s
.Lx00175_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00176_scan_match_α:      mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    n00165_disjunction_af
                        mov              rdi, qword ptr [rip + .Lx00177_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        call             memcmp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        pop              r10
                        test             eax, eax;                            jne   n00165_disjunction_af
                        mov              qword ptr [rsp + 2288], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rsp + 2296], rax;         jmp   n00178_scan_tab_α
.Lx00177_0:               .quad            .Lx00177_0_s
.Lx00177_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00178_scan_tab_α:        mov              rax, qword ptr [rsp + 2296]
                        cmp              rax, 1;                              jge   .Lx00179_0
                        add              rax, r15
                        add              rax, 1
.Lx00179_0:               cmp              rax, 1;                              jl    n00165_disjunction_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00165_disjunction_af
                        mov              qword ptr [rsp + 2272], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 2256], rax
                        mov              qword ptr [rsp + 2264], rdx;         jmp   n00180_lit_integer_α
n00178_scan_tab_β:        mov              r14, qword ptr [rsp + 2272];         jmp   n00165_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00180_lit_integer_α:     mov              qword ptr [rsp + 2240], 3            # result
                        mov              rax, qword ptr [rip + .Lx00181_0]
                        mov              qword ptr [rsp + 2248], rax;         jmp   n00182_scan_pos_α
.Lx00181_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00182_scan_pos_α:        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lx00183_0
                        add              rax, r15
                        add              rax, 1
.Lx00183_0:               cmp              rax, 1;                              jl    n00184_var_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00184_var_α
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n00184_var_α
                        mov              qword ptr [rsp + 2224], 3
                        mov              qword ptr [rsp + 2232], rax;         jmp   n00178_scan_tab_β
#-----------------------------------------------------------------------------------------------------------------------
n00184_var_α:             mov              qword ptr [rsp + 2208], 0
                        mov              qword ptr [rsp + 2216], 0;           jmp   n00185_conjunction_α
n00184_var_β:                                                                   jmp   n00178_scan_tab_β
#-----------------------------------------------------------------------------------------------------------------------
n00185_conjunction_α:     mov              rax, qword ptr [rsp + 2208]
                        mov              qword ptr [rsp + 2192], rax
                        mov              rax, qword ptr [rsp + 2216]
                        mov              qword ptr [rsp + 2200], rax;         jmp   n00186_disjunction_α
n00185_conjunction_β:                                                           jmp   n00165_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00186_disjunction_α:     mov              qword ptr [rsp + 2032], 0
                        mov              qword ptr [rsp + 2040], 0
                        mov              dword ptr [rsp + 2048], 0;           jmp   n00187_lit_string_α
n00186_disjunction_as:    mov              eax, dword ptr [rsp + 2048]
                        cmp              eax, 0;                              jne   .Lx00188_0
                                                                              jmp   n00189_lit_integer_α
.Lx00188_0:                                                                     jmp   n00189_lit_integer_α
n00186_disjunction_β:     mov              eax, dword ptr [rsp + 2048];         jmp   n00189_lit_integer_α
n00186_disjunction_af:    add              dword ptr [rsp + 2048], 1
                        mov              eax, dword ptr [rsp + 2048];         jmp   n00189_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00189_lit_integer_α:     mov              qword ptr [rsp + 448], 3             # result
                        mov              rax, qword ptr [rip + .Lx00190_0]
                        mov              qword ptr [rsp + 456], rax;          jmp   n00191_scan_move_α
.Lx00190_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00191_scan_move_α:       mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jl    n00170_scan_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00170_scan_α
                        mov              qword ptr [rsp + 432], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx;          jmp   n00192_assign_α
n00191_scan_move_β:       mov              r14, qword ptr [rsp + 432];          jmp   n00170_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00192_assign_α:          mov              rax, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 2656], rax
                        mov              qword ptr [rsp + 2664], rdx;         jmp   n00169_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00169_disjunction_α:     mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 472], 0
                        mov              dword ptr [rsp + 480], 0;            jmp   n00193_var_α
n00169_disjunction_as:    mov              eax, dword ptr [rsp + 480]
                        cmp              eax, 0;                              jne   .Lx00194_0
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 472], rax;          jmp   n00189_lit_integer_α
.Lx00194_0:               cmp              eax, 1;                              jne   .Lx00194_1
                        mov              rax, qword ptr [rsp + 1936]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 1944]
                        mov              qword ptr [rsp + 472], rax;          jmp   n00189_lit_integer_α
.Lx00194_1:                                                                     jmp   n00189_lit_integer_α
n00169_disjunction_β:     mov              eax, dword ptr [rsp + 480]
                        cmp              eax, 0;                              je    n00195_disjunction_β
                                                                              jmp   n00189_lit_integer_α
n00169_disjunction_af:    add              dword ptr [rsp + 480], 1
                        mov              eax, dword ptr [rsp + 480]
                        cmp              eax, 1;                              je    n00196_lit_string_α
                                                                              jmp   n00189_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00196_lit_string_α:      mov              qword ptr [rsp + 2000], 2            # result
                        mov              dword ptr [rsp + 2004], 22
                        mov              rax, qword ptr [rip + .Lx00197_0]
                        mov              qword ptr [rsp + 2008], rax;         jmp   n00198_var_α
n00196_lit_string_β:                                                            jmp   n00189_lit_integer_α
.Lx00197_0:               .quad            .Lx00197_0_s
.Lx00197_0_s:             .string          "Unrecognized option: -"
#-----------------------------------------------------------------------------------------------------------------------
n00198_var_α:             mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 2016], rax
                        mov              rax, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 2024], rax;         jmp   n00199_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00199_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2016]
                        mov              qword ptr [rsp + 1968], rax
                        mov              rax, qword ptr [rsp + 2024]
                        mov              qword ptr [rsp + 1976], rax
                        mov              rax, qword ptr [rsp + 2000]
                        mov              qword ptr [rsp + 1952], rax
                        mov              rax, qword ptr [rsp + 2008]
                        mov              qword ptr [rsp + 1960], rax
                        .section         .rodata
.Lrkfn562:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn562]
                        lea              rsi, [rsp + 1952]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx
                        cmp              eax, 104;                            je    n00189_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00169_disjunction_as
n00199_call_builtin_icon_β:
                                                                              jmp   n00189_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00193_var_α:             mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 1888], rax
                        mov              rax, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 1896], rax;         jmp   n00200_var_α
n00193_var_β:                                                                   jmp   n00169_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00200_var_α:             mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1904], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1912], rax;         jmp   n00201_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00201_call_builtin_gen_α:
                        mov              rax, qword ptr [rsp + 1904]
                        mov              qword ptr [rsp + 1856], rax
                        mov              rax, qword ptr [rsp + 1912]
                        mov              qword ptr [rsp + 1864], rax
                        mov              rax, qword ptr [rsp + 1888]
                        mov              qword ptr [rsp + 1840], rax
                        mov              rax, qword ptr [rsp + 1896]
                        mov              qword ptr [rsp + 1848], rax
                        mov              qword ptr [rsp + 1872], 0
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx00202_60:              .section         .rodata
.Lbynamegenfn204:       .string          "find"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn204]
                        lea              rsi, [rsp + 1840]
                        mov              edx, 2
                        lea              rcx, [rsp + 1872]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rsp + 1824], rax
                        mov              qword ptr [rsp + 1832], rdx
                        cmp              eax, 104;                            je    n00169_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00203_lit_integer_α
n00201_call_builtin_gen_β:
                                                                              jmp   .Lx00202_60
#-----------------------------------------------------------------------------------------------------------------------
n00203_lit_integer_α:     mov              qword ptr [rsp + 1920], 3            # result
                        mov              rax, qword ptr [rip + .Lx00204_0]
                        mov              qword ptr [rsp + 1928], rax;         jmp   n00205_coerce_numeric_α
.Lx00204_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00205_coerce_numeric_α:  mov              eax, dword ptr [rsp + 1824]
                        cmp              eax, 5;                              je    .Lx00206_1
                        cmp              eax, 3;                              jne   .Lx00206_0
                        mov              eax, dword ptr [rsp + 1920]
                        cmp              eax, 3;                              jne   .Lx00206_0
.Lx00206_1:               mov              rax, qword ptr [rsp + 1824]
                        mov              qword ptr [rsp + 1808], rax
                        mov              rax, qword ptr [rsp + 1832]
                        mov              qword ptr [rsp + 1816], rax;         jmp   n00207_binop_α
.Lx00206_0:               lea              rdi, [rsp + 1824]
                        lea              rsi, [rsp + 1920]
                        lea              rdx, [rsp + 1808]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00207_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00207_binop_α:           mov              eax, dword ptr [rsp + 1808]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx00208_2
                        mov              rax, qword ptr [rsp + 1816]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 1792], 3
                        mov              qword ptr [rsp + 1800], rax;         jmp   .Lx00208_7
.Lx00208_2:               and              edx, 1;                              jz    .Lx00208_0
                        mov              rsi, qword ptr [rsp + 1816]
                        mov              rdi, 1
                        cmp              eax, 5;                              je    .Lx00208_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx00208_4
.Lx00208_3:               movq             xmm0, rsi
.Lx00208_4:               cmp              ecx, 5;                              je    .Lx00208_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx00208_6
.Lx00208_5:               movq             xmm1, rdi
.Lx00208_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1792], 5
                        mov              qword ptr [rsp + 1800], rax
.Lx00208_7:                                                                     jmp   n00209_assign_α
.Lx00208_0:               mov              rdi, qword ptr [rsp + 1808]
                        mov              rsi, qword ptr [rsp + 1816]
                        mov              rdx, qword ptr [rsp + 1920]
                        mov              rcx, qword ptr [rsp + 1928]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n00169_disjunction_af
                        mov              qword ptr [rsp + 1792], rax
                        mov              qword ptr [rsp + 1800], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00209_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00209_assign_α:          mov              rax, qword ptr [rsp + 1792]
                        mov              rdx, qword ptr [rsp + 1800]
                        mov              qword ptr [rsp + 2720], rax
                        mov              qword ptr [rsp + 2728], rdx;         jmp   n00210_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00210_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 2608]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx;          jmp   n00211_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00211_var_α:             mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 520], rax;          jmp   n00212_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00212_subscript_α:       mov              rdi, qword ptr [rsp + 496]
                        mov              rsi, qword ptr [rsp + 504]
                        mov              rdx, qword ptr [rsp + 512]
                        mov              rcx, qword ptr [rsp + 520]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n00189_lit_integer_α
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n00195_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00195_disjunction_α:     mov              qword ptr [rsp + 560], 0
                        mov              qword ptr [rsp + 568], 0
                        mov              dword ptr [rsp + 576], 0;            jmp   n00213_lit_charset_α
n00195_disjunction_as:    mov              eax, dword ptr [rsp + 576]
                        cmp              eax, 0;                              jne   .Lx00214_0
                        mov              rax, qword ptr [rsp + 2672]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 2680]
                        mov              qword ptr [rsp + 568], rax;          jmp   n00215_assign_var_α
.Lx00214_0:               cmp              eax, 1;                              jne   .Lx00214_1
                        mov              rax, qword ptr [rsp + 1776]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 1784]
                        mov              qword ptr [rsp + 568], rax;          jmp   n00215_assign_var_α
.Lx00214_1:                                                                     jmp   n00215_assign_var_α
n00195_disjunction_β:     mov              eax, dword ptr [rsp + 576]
                        cmp              eax, 0;                              je    n00189_lit_integer_α
                                                                              jmp   n00189_lit_integer_α
n00195_disjunction_af:    add              dword ptr [rsp + 576], 1
                        mov              eax, dword ptr [rsp + 576]
                        cmp              eax, 1;                              je    n00216_lit_integer_α
                                                                              jmp   n00189_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00215_assign_var_α:      mov              rdi, qword ptr [rsp + 528]
                        mov              rsi, qword ptr [rsp + 536]
                        mov              rdx, qword ptr [rsp + 560]
                        mov              rcx, qword ptr [rsp + 568]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n00189_lit_integer_α
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n00169_disjunction_as
n00215_assign_var_β:                                                            jmp   n00189_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00216_lit_integer_α:     mov              qword ptr [rsp + 1776], 3            # result
                        mov              rax, qword ptr [rip + .Lx00217_0]
                        mov              qword ptr [rsp + 1784], rax;         jmp   n00195_disjunction_as
n00216_lit_integer_β:                                                           jmp   n00189_lit_integer_α
.Lx00217_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00213_lit_charset_α:     mov              qword ptr [rsp + 1680], 2            # result
                        mov              dword ptr [rsp + 1684], -1
                        mov              rax, qword ptr [rip + .Lx00218_0]
                        mov              qword ptr [rsp + 1688], rax;         jmp   n00219_var_ref_α
n00213_lit_charset_β:                                                           jmp   n00195_disjunction_af
.Lx00218_0:               .quad            .Lx00218_0_s
.Lx00218_0_s:             .string          "+.:"
#-----------------------------------------------------------------------------------------------------------------------
n00219_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1712], rax
                        mov              qword ptr [rsp + 1720], rdx;         jmp   n00220_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00220_var_α:             mov              rax, qword ptr [rsp + 2720]
                        mov              qword ptr [rsp + 1728], rax
                        mov              rax, qword ptr [rsp + 2728]
                        mov              qword ptr [rsp + 1736], rax;         jmp   n00221_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00221_subscript_α:       mov              rdi, qword ptr [rsp + 1712]
                        mov              rsi, qword ptr [rsp + 1720]
                        mov              rdx, qword ptr [rsp + 1728]
                        mov              rcx, qword ptr [rsp + 1736]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n00195_disjunction_af
                        mov              qword ptr [rsp + 1744], rax
                        mov              qword ptr [rsp + 1752], rdx;         jmp   n00222_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00222_deref_α:           mov              rdi, qword ptr [rsp + 1744]
                        mov              rsi, qword ptr [rsp + 1752]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n00195_disjunction_af
                        mov              qword ptr [rsp + 1760], rax
                        mov              qword ptr [rsp + 1768], rdx;         jmp   n00223_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00223_assign_α:          mov              rax, qword ptr [rsp + 1760]
                        mov              rdx, qword ptr [rsp + 1768]
                        mov              qword ptr [rsp + 2688], rax
                        mov              qword ptr [rsp + 2696], rdx
                        mov              qword ptr [rsp + 1696], rax
                        mov              qword ptr [rsp + 1704], rdx;         jmp   n00224_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00224_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1696]
                        mov              qword ptr [rsp + 1648], rax
                        mov              rax, qword ptr [rsp + 1704]
                        mov              qword ptr [rsp + 1656], rax
                        mov              rax, qword ptr [rsp + 1680]
                        mov              qword ptr [rsp + 1632], rax
                        mov              rax, qword ptr [rsp + 1688]
                        mov              qword ptr [rsp + 1640], rax
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        .section         .rodata
.Lbynamefn221:          .string          "any"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn221]
                        lea              rsi, [rsp + 1632]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1616], rax
                        mov              qword ptr [rsp + 1624], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104;                            je    n00195_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00225_disjunction_α
n00224_call_builtin_icon_β:
                                                                              jmp   n00195_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00225_disjunction_α:     mov              qword ptr [rsp + 1344], 0
                        mov              qword ptr [rsp + 1352], 0
                        mov              dword ptr [rsp + 1360], 0;           jmp   n00226_lit_string_α
n00225_disjunction_as:    mov              eax, dword ptr [rsp + 1360]
                        cmp              eax, 0;                              jne   .Lx00227_0
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n00228_assign_α
.Lx00227_0:               cmp              eax, 1;                              jne   .Lx00227_1
                        mov              rax, qword ptr [rsp + 1456]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 1464]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n00228_assign_α
.Lx00227_1:               cmp              eax, 2;                              jne   .Lx00227_2
                        mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n00228_assign_α
.Lx00227_2:                                                                     jmp   n00228_assign_α
n00225_disjunction_β:     mov              eax, dword ptr [rsp + 1360]
                        cmp              eax, 0;                              je    n00225_disjunction_af
                        cmp              eax, 1;                              je    n00225_disjunction_af
                                                                              jmp   n00225_disjunction_af
n00225_disjunction_af:    add              dword ptr [rsp + 1360], 1
                        mov              eax, dword ptr [rsp + 1360]
                        cmp              eax, 1;                              je    n00229_var_α
                        cmp              eax, 2;                              je    n00230_lit_string_α
                                                                              jmp   n00231_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00228_assign_α:          mov              rax, qword ptr [rsp + 1344]
                        mov              rdx, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 2704], rax
                        mov              qword ptr [rsp + 2712], rdx;         jmp   n00231_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00231_var_α:             mov              rax, qword ptr [rsp + 2688]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 2696]
                        mov              qword ptr [rsp + 632], rax;          jmp   n00232_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00232_lit_string_α:      mov              qword ptr [rsp + 1248], 2            # result
                        mov              dword ptr [rsp + 1252], 1
                        mov              rax, qword ptr [rip + .Lx00233_0]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n00234_call_builtin_α
.Lx00233_0:               .quad            .Lx00233_0_s
.Lx00233_0_s:             .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n00234_call_builtin_α:    mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 1312], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 1320], rax
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 1296], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 1304], rax
                        .section         .rodata
.Lrkfn598:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn598]
                        lea              rsi, [rsp + 1296]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx
                        cmp              eax, 104;                            je    n00235_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00236_var_α
n00234_call_builtin_β:                                                          jmp   n00235_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00236_var_α:             mov              rax, qword ptr [rsp + 2704]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 2712]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n00237_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00237_assign_α:          mov              rax, qword ptr [rsp + 1264]
                        mov              rdx, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 2672], rax
                        mov              qword ptr [rsp + 2680], rdx;         jmp   n00238_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00235_lit_string_α:      mov              qword ptr [rsp + 944], 2             # result
                        mov              dword ptr [rsp + 948], 1
                        mov              rax, qword ptr [rip + .Lx00239_0]
                        mov              qword ptr [rsp + 952], rax;          jmp   n00240_call_builtin_α
.Lx00239_0:               .quad            .Lx00239_0_s
.Lx00239_0_s:             .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n00240_call_builtin_α:    mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 1224], rax
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 1208], rax
                        .section         .rodata
.Lrkfn604:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn604]
                        lea              rsi, [rsp + 1200]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx
                        cmp              eax, 104;                            je    n00241_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00242_disjunction_α
n00240_call_builtin_β:                                                          jmp   n00241_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00242_disjunction_α:     mov              qword ptr [rsp + 960], 0
                        mov              qword ptr [rsp + 968], 0
                        mov              dword ptr [rsp + 976], 0;            jmp   n00243_var_α
n00242_disjunction_as:    mov              eax, dword ptr [rsp + 976]
                        cmp              eax, 0;                              jne   .Lx00244_0
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 968], rax;          jmp   n00245_assign_α
.Lx00244_0:               cmp              eax, 1;                              jne   .Lx00244_1
                        mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 968], rax;          jmp   n00245_assign_α
.Lx00244_1:                                                                     jmp   n00245_assign_α
n00242_disjunction_β:     mov              eax, dword ptr [rsp + 976]
                        cmp              eax, 0;                              je    n00242_disjunction_af
                                                                              jmp   n00242_disjunction_af
n00242_disjunction_af:    add              dword ptr [rsp + 976], 1
                        mov              eax, dword ptr [rsp + 976]
                        cmp              eax, 1;                              je    n00246_lit_string_α
                                                                              jmp   n00189_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00245_assign_α:          mov              rax, qword ptr [rsp + 960]
                        mov              rdx, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 2672], rax
                        mov              qword ptr [rsp + 2680], rdx;         jmp   n00238_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00246_lit_string_α:      mov              qword ptr [rsp + 1136], 2            # result
                        mov              dword ptr [rsp + 1140], 1
                        mov              rax, qword ptr [rip + .Lx00247_0]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n00248_var_α
n00246_lit_string_β:                                                            jmp   n00242_disjunction_af
.Lx00247_0:               .quad            .Lx00247_0_s
.Lx00247_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00248_var_α:             mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n00249_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00249_lit_string_α:      mov              qword ptr [rsp + 1168], 2            # result
                        mov              dword ptr [rsp + 1172], 24
                        mov              rax, qword ptr [rip + .Lx00250_0]
                        mov              qword ptr [rsp + 1176], rax;         jmp   n00251_call_builtin_icon_α
.Lx00250_0:               .quad            .Lx00250_0_s
.Lx00250_0_s:             .string          " needs numeric parameter"
#-----------------------------------------------------------------------------------------------------------------------
n00251_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 1112], rax
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 1096], rax
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1080], rax
                        .section         .rodata
.Lrkfn613:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn613]
                        lea              rsi, [rsp + 1072]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        cmp              eax, 104;                            je    n00242_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00242_disjunction_as
n00251_call_builtin_icon_β:
                                                                              jmp   n00242_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00243_var_α:             mov              rax, qword ptr [rsp + 2704]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 2712]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n00252_call_builtin_icon_α
n00243_var_β:                                                                   jmp   n00242_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00252_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 1016], rax
                        .section         .rodata
.Lrkfn617:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn617]
                        lea              rsi, [rsp + 1008]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx
                        cmp              eax, 104;                            je    n00242_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00242_disjunction_as
n00252_call_builtin_icon_β:
                                                                              jmp   n00242_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00241_lit_string_α:      mov              qword ptr [rsp + 640], 2             # result
                        mov              dword ptr [rsp + 644], 1
                        mov              rax, qword ptr [rip + .Lx00253_0]
                        mov              qword ptr [rsp + 648], rax;          jmp   n00254_call_builtin_α
.Lx00253_0:               .quad            .Lx00253_0_s
.Lx00253_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n00254_call_builtin_α:    mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 920], rax
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 904], rax
                        .section         .rodata
.Lrkfn620:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn620]
                        lea              rsi, [rsp + 896]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                        cmp              eax, 104;                            je    n00189_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00255_disjunction_α
n00254_call_builtin_β:                                                          jmp   n00189_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00255_disjunction_α:     mov              qword ptr [rsp + 656], 0
                        mov              qword ptr [rsp + 664], 0
                        mov              dword ptr [rsp + 672], 0;            jmp   n00256_var_α
n00255_disjunction_as:    mov              eax, dword ptr [rsp + 672]
                        cmp              eax, 0;                              jne   .Lx00257_0
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 664], rax;          jmp   n00258_assign_α
.Lx00257_0:               cmp              eax, 1;                              jne   .Lx00257_1
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 664], rax;          jmp   n00258_assign_α
.Lx00257_1:                                                                     jmp   n00258_assign_α
n00255_disjunction_β:     mov              eax, dword ptr [rsp + 672]
                        cmp              eax, 0;                              je    n00255_disjunction_af
                                                                              jmp   n00255_disjunction_af
n00255_disjunction_af:    add              dword ptr [rsp + 672], 1
                        mov              eax, dword ptr [rsp + 672]
                        cmp              eax, 1;                              je    n00259_lit_string_α
                                                                              jmp   n00189_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00258_assign_α:          mov              rax, qword ptr [rsp + 656]
                        mov              rdx, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 2672], rax
                        mov              qword ptr [rsp + 2680], rdx;         jmp   n00238_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00238_var_α:             mov              rax, qword ptr [rsp + 2672]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 2680]
                        mov              qword ptr [rsp + 616], rax;          jmp   n00260_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00260_conjunction_α:     mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 600], rax;          jmp   n00195_disjunction_as
n00260_conjunction_β:                                                           jmp   n00189_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00259_lit_string_α:      mov              qword ptr [rsp + 832], 2             # result
                        mov              dword ptr [rsp + 836], 1
                        mov              rax, qword ptr [rip + .Lx00261_0]
                        mov              qword ptr [rsp + 840], rax;          jmp   n00262_var_α
n00259_lit_string_β:                                                            jmp   n00255_disjunction_af
.Lx00261_0:               .quad            .Lx00261_0_s
.Lx00261_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00262_var_α:             mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 856], rax;          jmp   n00263_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00263_lit_string_α:      mov              qword ptr [rsp + 864], 2             # result
                        mov              dword ptr [rsp + 868], 24
                        mov              rax, qword ptr [rip + .Lx00264_0]
                        mov              qword ptr [rsp + 872], rax;          jmp   n00265_call_builtin_icon_α
.Lx00264_0:               .quad            .Lx00264_0_s
.Lx00264_0_s:             .string          " needs numeric parameter"
#-----------------------------------------------------------------------------------------------------------------------
n00265_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 808], rax
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 792], rax
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 776], rax
                        .section         .rodata
.Lrkfn632:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn632]
                        lea              rsi, [rsp + 768]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                        cmp              eax, 104;                            je    n00255_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00255_disjunction_as
n00265_call_builtin_icon_β:
                                                                              jmp   n00255_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00256_var_α:             mov              rax, qword ptr [rsp + 2704]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 2712]
                        mov              qword ptr [rsp + 744], rax;          jmp   n00266_call_builtin_icon_α
n00256_var_β:                                                                   jmp   n00255_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00266_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 712], rax
                        .section         .rodata
.Lrkfn636:              .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn636]
                        lea              rsi, [rsp + 704]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              eax, 104;                            je    n00255_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00255_disjunction_as
n00266_call_builtin_icon_β:
                                                                              jmp   n00255_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00230_lit_string_α:      mov              qword ptr [rsp + 1584], 2            # result
                        mov              dword ptr [rsp + 1588], 24
                        mov              rax, qword ptr [rip + .Lx00267_0]
                        mov              qword ptr [rsp + 1592], rax;         jmp   n00268_var_α
n00230_lit_string_β:                                                            jmp   n00225_disjunction_af
.Lx00267_0:               .quad            .Lx00267_0_s
.Lx00267_0_s:             .string          "No parameter following -"
#-----------------------------------------------------------------------------------------------------------------------
n00268_var_α:             mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 1600], rax
                        mov              rax, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 1608], rax;         jmp   n00269_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00269_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1600]
                        mov              qword ptr [rsp + 1552], rax
                        mov              rax, qword ptr [rsp + 1608]
                        mov              qword ptr [rsp + 1560], rax
                        mov              rax, qword ptr [rsp + 1584]
                        mov              qword ptr [rsp + 1536], rax
                        mov              rax, qword ptr [rsp + 1592]
                        mov              qword ptr [rsp + 1544], rax
                        .section         .rodata
.Lrkfn641:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn641]
                        lea              rsi, [rsp + 1536]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1520], rax
                        mov              qword ptr [rsp + 1528], rdx
                        cmp              eax, 104;                            je    n00225_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00225_disjunction_as
n00269_call_builtin_icon_β:
                                                                              jmp   n00225_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00229_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1504], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1512], rax;         jmp   n00270_call_builtin_icon_α
n00229_var_β:                                                                   jmp   n00225_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00270_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1504]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 1512]
                        mov              qword ptr [rsp + 1480], rax
                        .section         .rodata
.Lrkfn645:              .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn645]
                        lea              rsi, [rsp + 1472]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx
                        cmp              eax, 104;                            je    n00225_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00225_disjunction_as
n00270_call_builtin_icon_β:
                                                                              jmp   n00225_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00226_lit_string_α:      mov              qword ptr [rsp + 1392], 2            # result
                        mov              dword ptr [rsp + 1396], 0
                        mov              rax, qword ptr [rip + .Lx00271_0]
                        mov              qword ptr [rsp + 1400], rax;         jmp   n00272_lit_integer_α
n00226_lit_string_β:                                                            jmp   n00225_disjunction_af
.Lx00271_0:               .quad            .Lx00271_0_s
.Lx00271_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n00272_lit_integer_α:     mov              qword ptr [rsp + 1440], 3            # result
                        mov              rax, qword ptr [rip + .Lx00273_0]
                        mov              qword ptr [rsp + 1448], rax;         jmp   n00274_scan_tab_α
.Lx00273_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00274_scan_tab_α:        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lx00275_0
                        add              rax, r15
                        add              rax, 1
.Lx00275_0:               cmp              rax, 1;                              jl    n00225_disjunction_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00225_disjunction_af
                        mov              qword ptr [rsp + 1424], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx;         jmp   n00276_binop_test_α
n00274_scan_tab_β:        mov              r14, qword ptr [rsp + 1424];         jmp   n00225_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00276_binop_test_α:      mov              rdi, qword ptr [rsp + 1392]
                        mov              rsi, qword ptr [rsp + 1400]
                        mov              rdx, qword ptr [rsp + 1408]
                        mov              rcx, qword ptr [rsp + 1416]
                        mov              r8d, 17
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n00225_disjunction_af
                        mov              rdi, qword ptr [rsp + 1408]
                        mov              rsi, qword ptr [rsp + 1416]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00225_disjunction_as
n00276_binop_test_β:                                                            jmp   n00225_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00170_scan_α:            lea              rdi, [rsp + 304]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 304]
                        mov              r14, qword ptr [rsp + 312]
                        mov              r15, qword ptr [rsp + 320];          jmp   n00159_var_α
n00170_scan_β:                                                                  jmp   n00159_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00187_lit_string_α:      mov              qword ptr [rsp + 2176], 2            # result
                        mov              dword ptr [rsp + 2180], 1
                        mov              rax, qword ptr [rip + .Lx00277_0]
                        mov              qword ptr [rsp + 2184], rax;         jmp   n00278_scan_match_α
n00187_lit_string_β:                                                            jmp   n00186_disjunction_af
.Lx00277_0:               .quad            .Lx00277_0_s
.Lx00277_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00278_scan_match_α:      mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    n00186_disjunction_af
                        mov              rdi, qword ptr [rip + .Lx00279_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        call             memcmp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        pop              r10
                        test             eax, eax;                            jne   n00186_disjunction_af
                        mov              qword ptr [rsp + 2144], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rsp + 2152], rax;         jmp   n00280_scan_tab_α
.Lx00279_0:               .quad            .Lx00279_0_s
.Lx00279_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00280_scan_tab_α:        mov              rax, qword ptr [rsp + 2152]
                        cmp              rax, 1;                              jge   .Lx00281_0
                        add              rax, r15
                        add              rax, 1
.Lx00281_0:               cmp              rax, 1;                              jl    n00186_disjunction_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00186_disjunction_af
                        mov              qword ptr [rsp + 2128], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 2112], rax
                        mov              qword ptr [rsp + 2120], rdx;         jmp   n00282_lit_integer_α
n00280_scan_tab_β:        mov              r14, qword ptr [rsp + 2128];         jmp   n00186_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00282_lit_integer_α:     mov              qword ptr [rsp + 2096], 3            # result
                        mov              rax, qword ptr [rip + .Lx00283_0]
                        mov              qword ptr [rsp + 2104], rax;         jmp   n00284_scan_pos_α
.Lx00283_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00284_scan_pos_α:        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lx00285_0
                        add              rax, r15
                        add              rax, 1
.Lx00285_0:               cmp              rax, 1;                              jl    n00280_scan_tab_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00280_scan_tab_β
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n00280_scan_tab_β
                        mov              qword ptr [rsp + 2080], 3
                        mov              qword ptr [rsp + 2088], rax;         jmp   n00286_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00286_conjunction_α:     mov              rax, qword ptr [rsp + 2080]
                        mov              qword ptr [rsp + 2064], rax
                        mov              rax, qword ptr [rsp + 2088]
                        mov              qword ptr [rsp + 2072], rax;         jmp   n00161_var_α
n00286_conjunction_β:                                                           jmp   n00186_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00161_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 136], rax;          jmp   n00287_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00287_var_α:             mov              rax, qword ptr [rsp + 2624]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 2632]
                        mov              qword ptr [rsp + 200], rax;          jmp   n00288_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00288_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn667:              .string          "pull"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn667]
                        lea              rsi, [rsp + 160]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              eax, 104;                            je    n00289_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00290_call_builtin_icon_α
n00288_call_builtin_icon_β:
                                                                              jmp   n00289_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00290_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 88], rax
                        .section         .rodata
.Lrkfn669:              .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn669]
                        lea              rsi, [rsp + 80]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              eax, 104;                            je    n00289_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00161_var_α
n00290_call_builtin_icon_β:
                                                                              jmp   n00289_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00289_var_α:             mov              rax, qword ptr [rsp + 2608]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 2616]
                        mov              qword ptr [rsp + 56], rax;           jmp   n00291_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00291_return_α:          mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   options_γ
#-----------------------------------------------------------------------------------------------------------------------
options_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
options_β:
                                                                              jmp   options_ω
#-----------------------------------------------------------------------------------------------------------------------
options_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 2904]
                        add              rsp, 2928;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
options_ω:
                        mov              rcx, qword ptr [rsp + 2912]
                        add              rsp, 2928;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
options_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             rdx
                        push             rsi
                        mov              r10, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [r10 + 0]
                        mov              rdx, qword ptr [r10 + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rsp + 8]
                        mov              edi, 1
                        mov              rsi, qword ptr [r10 + 0]
                        mov              rdx, qword ptr [r10 + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx00292_2]
                        lea              rdx, [rip + .Lx00292_3];               jmp   FN__options
.Lx00292_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx00292_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__Init__:
                        sub              rsp, 496
                        mov              qword ptr [rsp + 472], rcx
                        mov              qword ptr [rsp + 480], rdx
                        mov              rdi, rsp
                        add              rdi, 400
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
Init___α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00293_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 392], rax;          jmp   n00294_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00294_assign_α:          mov              rax, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
                        mov              qword ptr [r9 + 64], rax             # Name__
                        mov              qword ptr [r9 + 72], rdx;            jmp   n00295_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00295_call_proc_staged_α:
                        call             Signature___dcα;                     jmp   .Lx00296_2
.Lx00296_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00296_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
.Lx00296_29:              mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              eax, 104;                            je    n00297_call_proc_staged_α
                                                                              jmp   n00297_call_proc_staged_α
n00295_call_proc_staged_β:
                                                                              jmp   n00297_call_proc_staged_α
.Lx00296_0:               .quad            .Lx00296_0_s
.Lx00296_0_s:             .string          "Signature__"
#-----------------------------------------------------------------------------------------------------------------------
n00297_call_proc_staged_α:
                        call             Regions___dcα;                       jmp   .Lx00298_2
.Lx00298_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00298_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
.Lx00298_29:              mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              eax, 104;                            je    n00299_call_proc_staged_α
                                                                              jmp   n00299_call_proc_staged_α
n00297_call_proc_staged_β:
                                                                              jmp   n00299_call_proc_staged_α
.Lx00298_0:               .quad            .Lx00298_0_s
.Lx00298_0_s:             .string          "Regions__"
#-----------------------------------------------------------------------------------------------------------------------
n00299_call_proc_staged_α:
                        call             Time___dcα;                          jmp   .Lx00300_2
.Lx00300_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00300_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
.Lx00300_29:              mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              eax, 104;                            je    n00301_disjunction_α
                                                                              jmp   n00301_disjunction_α
n00299_call_proc_staged_β:
                                                                              jmp   n00301_disjunction_α
.Lx00300_0:               .quad            .Lx00300_0_s
.Lx00300_0_s:             .string          "Time__"
#-----------------------------------------------------------------------------------------------------------------------
n00301_disjunction_α:     mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              dword ptr [rsp + 128], 0;            jmp   n00302_lit_string_α
n00301_disjunction_as:    mov              eax, dword ptr [rsp + 128]
                        cmp              eax, 0;                              jne   .Lx00303_0
                                                                              jmp   n00304_var_α
.Lx00303_0:                                                                     jmp   n00304_var_α
n00301_disjunction_β:     mov              eax, dword ptr [rsp + 128];          jmp   n00304_var_α
n00301_disjunction_af:    add              dword ptr [rsp + 128], 1
                        mov              eax, dword ptr [rsp + 128];          jmp   n00304_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00304_var_α:             mov              rdi, qword ptr [rip + .Lx00305_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n00306_var_α
                        mov              qword ptr [rsp + 96], rax            # result
                        mov              qword ptr [rsp + 104], rdx;          jmp   n00307_assign_α
.Lx00305_0:               .quad            .Lx00305_0_s
.Lx00305_0_s:             .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n00307_assign_α:          mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
                        mov              qword ptr [r9 + 32], rax             # Save__
                        mov              qword ptr [r9 + 40], rdx;            jmp   n00306_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00306_var_α:             mov              rdi, qword ptr [rip + .Lx00308_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n00309_lit_integer_α
                        mov              qword ptr [rsp + 80], rax            # result
                        mov              qword ptr [rsp + 88], rdx;           jmp   n00310_assign_α
.Lx00308_0:               .quad            .Lx00308_0_s
.Lx00308_0_s:             .string          "writes"
#-----------------------------------------------------------------------------------------------------------------------
n00310_assign_α:          mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
                        mov              qword ptr [r9 + 48], rax             # Saves__
                        mov              qword ptr [r9 + 56], rdx;            jmp   n00309_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00309_lit_integer_α:     mov              qword ptr [rsp + 64], 3              # result
                        mov              rax, qword ptr [rip + .Lx00311_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n00312_assign_α
.Lx00311_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00312_assign_α:          mov              rsi, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        mov              rdi, qword ptr [rip + .Lx00313_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00314_assign_α
.Lx00313_0:               .quad            .Lx00313_0_s
.Lx00313_0_s:             .string          "writes"
#-----------------------------------------------------------------------------------------------------------------------
n00314_assign_α:          mov              rsi, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              rdi, qword ptr [rip + .Lx00315_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00316_return_α
.Lx00315_0:               .quad            .Lx00315_0_s
.Lx00315_0_s:             .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n00316_return_α:          mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   Init___γ
#-----------------------------------------------------------------------------------------------------------------------
n00317_conjunction_α:                                                           jmp   n00301_disjunction_as
n00317_conjunction_β:                                                           jmp   n00304_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00302_lit_string_α:      mov              qword ptr [rsp + 272], 2             # result
                        mov              dword ptr [rsp + 276], 6
                        mov              rax, qword ptr [rip + .Lx00318_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n00319_call_builtin_icon_α
n00302_lit_string_β:                                                            jmp   n00301_disjunction_af
.Lx00318_0:               .quad            .Lx00318_0_s
.Lx00318_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n00319_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 248], rax
                        .section         .rodata
.Lrkfn716:              .string          "getenv"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn716]
                        lea              rsi, [rsp + 240]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              eax, 104;                            je    n00301_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00320_lit_string_α
n00319_call_builtin_icon_β:
                                                                              jmp   n00301_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00320_lit_string_α:      mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 32
                        mov              rax, qword ptr [rip + .Lx00321_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n00322_call_builtin_icon_α
.Lx00321_0:               .quad            .Lx00321_0_s
.Lx00321_0_s:             .string          "*** Benchmarking with output ***"
#-----------------------------------------------------------------------------------------------------------------------
n00322_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 184], rax
                        .section         .rodata
.Lrkfn719:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn719]
                        lea              rsi, [rsp + 176]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              eax, 104;                            je    n00323_return_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00323_return_α
n00322_call_builtin_icon_β:
                                                                              jmp   n00323_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00323_return_α:          mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   Init___γ
#-----------------------------------------------------------------------------------------------------------------------
Init___res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
Init___β:
                                                                              jmp   Init___ω
#-----------------------------------------------------------------------------------------------------------------------
Init___γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 472]
                        add              rsp, 496;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
Init___ω:
                        mov              rcx, qword ptr [rsp + 480]
                        add              rsp, 496;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
Init___dcα:
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
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx00324_2]
                        lea              rdx, [rip + .Lx00324_3];               jmp   FN__Init__
.Lx00324_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx00324_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__Term__:
                        sub              rsp, 528
                        mov              qword ptr [rsp + 504], rcx
                        mov              qword ptr [rsp + 512], rdx
                        mov              rdi, rsp
                        add              rdi, 448
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
Term___α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00325_disjunction_α:     mov              qword ptr [rsp + 256], 0
                        mov              qword ptr [rsp + 264], 0
                        mov              dword ptr [rsp + 272], 0;            jmp   n00326_lit_string_α
n00325_disjunction_as:    mov              eax, dword ptr [rsp + 272]
                        cmp              eax, 0;                              jne   .Lx00327_0
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 264], rax;          jmp   n00328_var_α
.Lx00327_0:                                                                     jmp   n00328_var_α
n00325_disjunction_β:     mov              eax, dword ptr [rsp + 272];          jmp   n00328_var_α
n00325_disjunction_af:    add              dword ptr [rsp + 272], 1
                        mov              eax, dword ptr [rsp + 272];          jmp   n00328_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00326_lit_string_α:      mov              qword ptr [rsp + 432], 2             # result
                        mov              dword ptr [rsp + 436], 6
                        mov              rax, qword ptr [rip + .Lx00329_0]
                        mov              qword ptr [rsp + 440], rax;          jmp   n00330_call_builtin_icon_α
n00326_lit_string_β:                                                            jmp   n00331_var_α
.Lx00329_0:               .quad            .Lx00329_0_s
.Lx00329_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n00330_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 408], rax
                        .section         .rodata
.Lrkfn743:              .string          "getenv"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn743]
                        lea              rsi, [rsp + 400]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              eax, 104;                            je    n00331_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00325_disjunction_af
n00330_call_builtin_icon_β:
                                                                              jmp   n00331_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00331_var_α:             mov              qword ptr [rsp + 368], 0
                        mov              qword ptr [rsp + 376], 0;            jmp   n00332_var_α
n00331_var_β:                                                                   jmp   n00325_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00332_var_α:             mov              rax, qword ptr [r9 + 32]             # Save__
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 352], rax           # result
                        mov              qword ptr [rsp + 360], rdx;          jmp   n00333_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00333_assign_α:          mov              rsi, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
                        mov              rdi, qword ptr [rip + .Lx00334_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00335_var_α
.Lx00334_0:               .quad            .Lx00334_0_s
.Lx00334_0_s:             .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n00335_var_α:             mov              rax, qword ptr [r9 + 48]             # Saves__
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 320], rax           # result
                        mov              qword ptr [rsp + 328], rdx;          jmp   n00336_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00336_assign_α:          mov              rsi, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
                        mov              rdi, qword ptr [rip + .Lx00337_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00338_conjunction_α
.Lx00337_0:               .quad            .Lx00337_0_s
.Lx00337_0_s:             .string          "writes"
#-----------------------------------------------------------------------------------------------------------------------
n00338_conjunction_α:     mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 296], rax;          jmp   n00325_disjunction_as
n00338_conjunction_β:                                                           jmp   n00328_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00328_var_α:             mov              rax, qword ptr [r9 + 64]             # Name__
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 192], rax           # result
                        mov              qword ptr [rsp + 200], rdx;          jmp   n00339_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00339_lit_string_α:      mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 16
                        mov              rax, qword ptr [rip + .Lx00340_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n00341_call_proc_staged_α
.Lx00340_0:               .quad            .Lx00340_0_s
.Lx00340_0_s:             .string          " elapsed time = "
#-----------------------------------------------------------------------------------------------------------------------
n00341_call_proc_staged_α:
                        call             Time___dcα;                          jmp   .Lx00342_2
.Lx00342_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00342_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
.Lx00342_29:              mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              eax, 104;                            je    n00343_call_proc_staged_α
                                                                              jmp   n00344_call_builtin_icon_α
n00341_call_proc_staged_β:
                                                                              jmp   n00343_call_proc_staged_α
.Lx00342_0:               .quad            .Lx00342_0_s
.Lx00342_0_s:             .string          "Time__"
#-----------------------------------------------------------------------------------------------------------------------
n00344_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 168], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 152], rax
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 136], rax
                        .section         .rodata
.Lrkfn755:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn755]
                        lea              rsi, [rsp + 128]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              eax, 104;                            je    n00343_call_proc_staged_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00343_call_proc_staged_α
n00344_call_builtin_icon_β:
                                                                              jmp   n00343_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00343_call_proc_staged_α:
                        call             Regions___dcα;                       jmp   .Lx00345_2
.Lx00345_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00345_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
.Lx00345_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              eax, 104;                            je    n00346_call_proc_staged_α
                                                                              jmp   n00346_call_proc_staged_α
n00343_call_proc_staged_β:
                                                                              jmp   n00346_call_proc_staged_α
.Lx00345_0:               .quad            .Lx00345_0_s
.Lx00345_0_s:             .string          "Regions__"
#-----------------------------------------------------------------------------------------------------------------------
n00346_call_proc_staged_α:
                        call             Storage___dcα;                       jmp   .Lx00347_2
.Lx00347_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00347_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
.Lx00347_29:              mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              eax, 104;                            je    n00348_call_proc_staged_α
                                                                              jmp   n00348_call_proc_staged_α
n00346_call_proc_staged_β:
                                                                              jmp   n00348_call_proc_staged_α
.Lx00347_0:               .quad            .Lx00347_0_s
.Lx00347_0_s:             .string          "Storage__"
#-----------------------------------------------------------------------------------------------------------------------
n00348_call_proc_staged_α:
                        call             Collections___dcα;                   jmp   .Lx00349_2
.Lx00349_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00349_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
.Lx00349_29:              mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              eax, 104;                            je    n00350_return_α
                                                                              jmp   n00350_return_α
n00348_call_proc_staged_β:
                                                                              jmp   n00350_return_α
.Lx00349_0:               .quad            .Lx00349_0_s
.Lx00349_0_s:             .string          "Collections__"
#-----------------------------------------------------------------------------------------------------------------------
n00350_return_α:          mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   Term___γ
#-----------------------------------------------------------------------------------------------------------------------
Term___res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
Term___β:
                                                                              jmp   Term___ω
#-----------------------------------------------------------------------------------------------------------------------
Term___γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 504]
                        add              rsp, 528;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
Term___ω:
                        mov              rcx, qword ptr [rsp + 512]
                        add              rsp, 528;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
Term___dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx00351_2]
                        lea              rdx, [rip + .Lx00351_3];               jmp   FN__Term__
.Lx00351_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx00351_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__Collections__:
                        sub              rsp, 976
                        mov              qword ptr [rsp + 952], rcx
                        mov              qword ptr [rsp + 960], rdx
                        mov              rdi, rsp
                        add              rdi, 880
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
Collections___α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00352_disjunction_α:     mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 632], 0
                        mov              dword ptr [rsp + 640], 0;            jmp   n00353_var_ref_α
n00352_disjunction_as:    mov              eax, dword ptr [rsp + 640]
                        cmp              eax, 0;                              jne   .Lx00354_0
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 632], rax;          jmp   n00355_make_list_α
.Lx00354_0:                                                                     jmp   n00355_make_list_α
n00352_disjunction_β:     mov              eax, dword ptr [rsp + 640];          jmp   n00355_make_list_α
n00352_disjunction_af:    add              dword ptr [rsp + 640], 1
                        mov              eax, dword ptr [rsp + 640];          jmp   n00355_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00355_make_list_α:       lea              rdi, [rsp + 624]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx;          jmp   n00356_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00356_assign_α:          mov              rax, qword ptr [rsp + 608]
                        mov              rdx, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx;          jmp   n00357_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00357_var_α:             mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 568], rax;          jmp   n00358_keyword_icon_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00358_keyword_icon_gen_α:
                        mov              qword ptr [rsp + 592], 0
.Lx00359_1:               mov              rdi, qword ptr [rip + .Lx00359_0]
                        mov              rsi, qword ptr [rsp + 592]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n00360_lit_string_α
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        mov              rax, qword ptr [rsp + 592]
                        add              rax, 1
                        mov              qword ptr [rsp + 592], rax;          jmp   n00361_call_builtin_icon_α
n00358_keyword_icon_gen_β:
                                                                              jmp   .Lx00359_1
.Lx00359_0:               .quad            .Lx00359_0_s
.Lx00359_0_s:             .string          "&collections"
#-----------------------------------------------------------------------------------------------------------------------
n00361_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 536], rax
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 520], rax
                        .section         .rodata
.Lrkfn810:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn810]
                        lea              rsi, [rsp + 512]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              eax, 104;                            je    n00358_keyword_icon_gen_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00358_keyword_icon_gen_β
n00361_call_builtin_icon_β:
                                                                              jmp   n00358_keyword_icon_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00360_lit_string_α:      mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 11
                        mov              rax, qword ptr [rip + .Lx00362_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n00363_call_builtin_icon_α
.Lx00362_0:               .quad            .Lx00362_0_s
.Lx00362_0_s:             .string          "collections"
#-----------------------------------------------------------------------------------------------------------------------
n00363_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 456], rax
                        .section         .rodata
.Lrkfn813:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn813]
                        lea              rsi, [rsp + 448]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              eax, 104;                            je    n00364_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00364_lit_integer_α
n00363_call_builtin_icon_β:
                                                                              jmp   n00364_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00364_lit_integer_α:     mov              qword ptr [rsp + 64], 3              # result
                        mov              rax, qword ptr [rip + .Lx00365_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n00366_var_α
.Lx00365_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00366_var_α:             mov              rax, qword ptr [r9 + 208]            # Collections____STATIC__labels
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 96], rax            # result
                        mov              qword ptr [rsp + 104], rdx;          jmp   n00367_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n00367_unop_α:            mov              rdi, qword ptr [rsp + 96]
                        mov              rsi, qword ptr [rsp + 104]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx;           jmp   n00368_to_α
#-----------------------------------------------------------------------------------------------------------------------
n00368_to_α:              mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 64], 3
                        mov              qword ptr [rsp + 72], rax
                        mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 80], 3
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 48], rax
.Lx00369_0:               mov              rax, qword ptr [rsp + 48]
                        mov              rcx, qword ptr [rsp + 88]
                        cmp              rax, rcx;                            jg    n00370_return_α
                        mov              qword ptr [rsp + 32], 3
                        mov              qword ptr [rsp + 40], rax;           jmp   n00371_assign_α
n00368_to_β:              inc              qword ptr [rsp + 48];                jmp   .Lx00369_0
#-----------------------------------------------------------------------------------------------------------------------
n00371_assign_α:          mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n00372_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00372_bound_α:           mov              qword ptr [rsp + 112], rsp;          jmp   n00373_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00373_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052496                      # Collections____STATIC__labels
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n00374_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00374_var_α:             mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 248], rax;          jmp   n00375_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00375_subscript_α:       mov              rdi, qword ptr [rsp + 224]
                        mov              rsi, qword ptr [rsp + 232]
                        mov              rdx, qword ptr [rsp + 240]
                        mov              rcx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n00376_unmark_α
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n00377_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00377_deref_α:           mov              rdi, qword ptr [rsp + 256]
                        mov              rsi, qword ptr [rsp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n00376_unmark_α
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n00378_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00378_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 896]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n00379_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00379_var_α:             mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 376], rax;          jmp   n00380_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00380_subscript_α:       mov              rdi, qword ptr [rsp + 352]
                        mov              rsi, qword ptr [rsp + 360]
                        mov              rdx, qword ptr [rsp + 368]
                        mov              rcx, qword ptr [rsp + 376]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n00376_unmark_α
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n00381_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00381_deref_α:           mov              rdi, qword ptr [rsp + 384]
                        mov              rsi, qword ptr [rsp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n00376_unmark_α
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n00382_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00382_lit_integer_α:     mov              qword ptr [rsp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Lx00383_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n00384_call_builtin_icon_α
.Lx00383_0:               .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n00384_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 312], rax
                        .section         .rodata
.Lrkfn836:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn836]
                        lea              rsi, [rsp + 304]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              eax, 104;                            je    n00376_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00385_call_builtin_icon_α
n00384_call_builtin_icon_β:
                                                                              jmp   n00376_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00385_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 184], rax
                        .section         .rodata
.Lrkfn838:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn838]
                        lea              rsi, [rsp + 176]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              eax, 104;                            je    n00376_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00376_unmark_α
n00385_call_builtin_icon_β:
                                                                              jmp   n00376_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00376_unmark_α:          mov              rsp, qword ptr [rsp + 112];          jmp   n00368_to_β
#-----------------------------------------------------------------------------------------------------------------------
n00370_return_α:          mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   Collections___γ
#-----------------------------------------------------------------------------------------------------------------------
n00353_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052512                      # Collections____INITFLAG__0
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx;          jmp   n00386_nulltest_var_α
n00353_var_ref_β:                                                               jmp   n00352_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00386_nulltest_var_α:    mov              eax, dword ptr [rsp + 816]
                        cmp              eax, 104;                            je    n00352_disjunction_af
                        mov              rdi, qword ptr [rsp + 816]
                        mov              rsi, qword ptr [rsp + 824]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n00352_disjunction_af
                        cmp              eax, 0;                              jne   n00352_disjunction_af
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 840], rax;          jmp   n00387_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00387_lit_integer_α:     mov              qword ptr [rsp + 864], 3             # result
                        mov              rax, qword ptr [rip + .Lx00388_0]
                        mov              qword ptr [rsp + 872], rax;          jmp   n00389_assign_var_α
.Lx00388_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00389_assign_var_α:      mov              rdi, qword ptr [rsp + 832]
                        mov              rsi, qword ptr [rsp + 840]
                        mov              rdx, qword ptr [rsp + 864]
                        mov              rcx, qword ptr [rsp + 872]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n00352_disjunction_af
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx;          jmp   n00390_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00390_lit_string_α:      mov              qword ptr [rsp + 752], 2             # result
                        mov              dword ptr [rsp + 756], 5
                        mov              rax, qword ptr [rip + .Lx00391_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n00392_lit_string_α
.Lx00391_0:               .quad            .Lx00391_0_s
.Lx00391_0_s:             .string          "total"
#-----------------------------------------------------------------------------------------------------------------------
n00392_lit_string_α:      mov              qword ptr [rsp + 768], 2             # result
                        mov              dword ptr [rsp + 772], 6
                        mov              rax, qword ptr [rip + .Lx00393_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n00394_lit_string_α
.Lx00393_0:               .quad            .Lx00393_0_s
.Lx00393_0_s:             .string          "static"
#-----------------------------------------------------------------------------------------------------------------------
n00394_lit_string_α:      mov              qword ptr [rsp + 784], 2             # result
                        mov              dword ptr [rsp + 788], 6
                        mov              rax, qword ptr [rip + .Lx00395_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n00396_lit_string_α
.Lx00395_0:               .quad            .Lx00395_0_s
.Lx00395_0_s:             .string          "string"
#-----------------------------------------------------------------------------------------------------------------------
n00396_lit_string_α:      mov              qword ptr [rsp + 800], 2             # result
                        mov              dword ptr [rsp + 804], 5
                        mov              rax, qword ptr [rip + .Lx00397_0]
                        mov              qword ptr [rsp + 808], rax;          jmp   n00398_make_list_α
.Lx00397_0:               .quad            .Lx00397_0_s
.Lx00397_0_s:             .string          "block"
#-----------------------------------------------------------------------------------------------------------------------
n00398_make_list_α:       mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 696], rax
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 712], rax
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 728], rax
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 744], rax
                        lea              rdi, [rsp + 688]
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n00399_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00399_assign_α:          mov              rax, qword ptr [rsp + 672]
                        mov              rdx, qword ptr [rsp + 680]
                        mov              qword ptr [r9 + 208], rax            # Collections____STATIC__labels
                        mov              qword ptr [r9 + 216], rdx
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n00352_disjunction_as
n00399_assign_β:                                                                jmp   n00355_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
Collections___res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
Collections___β:
                                                                              jmp   Collections___ω
#-----------------------------------------------------------------------------------------------------------------------
Collections___γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 952]
                        add              rsp, 976;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
Collections___ω:
                        mov              rcx, qword ptr [rsp + 960]
                        add              rsp, 976;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
Collections___dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx00400_2]
                        lea              rdx, [rip + .Lx00400_3];               jmp   FN__Collections__
.Lx00400_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx00400_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__Regions__:
                        sub              rsp, 944
                        mov              qword ptr [rsp + 920], rcx
                        mov              qword ptr [rsp + 928], rdx
                        mov              rdi, rsp
                        add              rdi, 848
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
Regions___α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00401_disjunction_α:     mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 632], 0
                        mov              dword ptr [rsp + 640], 0;            jmp   n00402_var_ref_α
n00401_disjunction_as:    mov              eax, dword ptr [rsp + 640]
                        cmp              eax, 0;                              jne   .Lx00403_0
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 632], rax;          jmp   n00404_make_list_α
.Lx00403_0:                                                                     jmp   n00404_make_list_α
n00401_disjunction_β:     mov              eax, dword ptr [rsp + 640];          jmp   n00404_make_list_α
n00401_disjunction_af:    add              dword ptr [rsp + 640], 1
                        mov              eax, dword ptr [rsp + 640];          jmp   n00404_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00404_make_list_α:       lea              rdi, [rsp + 624]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx;          jmp   n00405_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00405_assign_α:          mov              rax, qword ptr [rsp + 608]
                        mov              rdx, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx;          jmp   n00406_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00406_var_α:             mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 568], rax;          jmp   n00407_keyword_icon_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00407_keyword_icon_gen_α:
                        mov              qword ptr [rsp + 592], 0
.Lx00408_1:               mov              rdi, qword ptr [rip + .Lx00408_0]
                        mov              rsi, qword ptr [rsp + 592]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n00409_lit_string_α
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        mov              rax, qword ptr [rsp + 592]
                        add              rax, 1
                        mov              qword ptr [rsp + 592], rax;          jmp   n00410_call_builtin_icon_α
n00407_keyword_icon_gen_β:
                                                                              jmp   .Lx00408_1
.Lx00408_0:               .quad            .Lx00408_0_s
.Lx00408_0_s:             .string          "&regions"
#-----------------------------------------------------------------------------------------------------------------------
n00410_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 536], rax
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 520], rax
                        .section         .rodata
.Lrkfn900:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn900]
                        lea              rsi, [rsp + 512]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              eax, 104;                            je    n00407_keyword_icon_gen_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00407_keyword_icon_gen_β
n00410_call_builtin_icon_β:
                                                                              jmp   n00407_keyword_icon_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00409_lit_string_α:      mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 7
                        mov              rax, qword ptr [rip + .Lx00411_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n00412_call_builtin_icon_α
.Lx00411_0:               .quad            .Lx00411_0_s
.Lx00411_0_s:             .string          "regions"
#-----------------------------------------------------------------------------------------------------------------------
n00412_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 456], rax
                        .section         .rodata
.Lrkfn903:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn903]
                        lea              rsi, [rsp + 448]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              eax, 104;                            je    n00413_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00413_lit_integer_α
n00412_call_builtin_icon_β:
                                                                              jmp   n00413_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00413_lit_integer_α:     mov              qword ptr [rsp + 64], 3              # result
                        mov              rax, qword ptr [rip + .Lx00414_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n00415_var_α
.Lx00414_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00415_var_α:             mov              rax, qword ptr [r9 + 240]            # Regions____STATIC__labels
                        mov              rdx, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 96], rax            # result
                        mov              qword ptr [rsp + 104], rdx;          jmp   n00416_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n00416_unop_α:            mov              rdi, qword ptr [rsp + 96]
                        mov              rsi, qword ptr [rsp + 104]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx;           jmp   n00417_to_α
#-----------------------------------------------------------------------------------------------------------------------
n00417_to_α:              mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 64], 3
                        mov              qword ptr [rsp + 72], rax
                        mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 80], 3
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 48], rax
.Lx00418_0:               mov              rax, qword ptr [rsp + 48]
                        mov              rcx, qword ptr [rsp + 88]
                        cmp              rax, rcx;                            jg    n00419_return_α
                        mov              qword ptr [rsp + 32], 3
                        mov              qword ptr [rsp + 40], rax;           jmp   n00420_assign_α
n00417_to_β:              inc              qword ptr [rsp + 48];                jmp   .Lx00418_0
#-----------------------------------------------------------------------------------------------------------------------
n00420_assign_α:          mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx;          jmp   n00421_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00421_bound_α:           mov              qword ptr [rsp + 112], rsp;          jmp   n00422_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00422_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052528                      # Regions____STATIC__labels
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n00423_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00423_var_α:             mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 248], rax;          jmp   n00424_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00424_subscript_α:       mov              rdi, qword ptr [rsp + 224]
                        mov              rsi, qword ptr [rsp + 232]
                        mov              rdx, qword ptr [rsp + 240]
                        mov              rcx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n00425_unmark_α
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n00426_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00426_deref_α:           mov              rdi, qword ptr [rsp + 256]
                        mov              rsi, qword ptr [rsp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n00425_unmark_α
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n00427_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00427_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 864]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n00428_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00428_var_α:             mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 376], rax;          jmp   n00429_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00429_subscript_α:       mov              rdi, qword ptr [rsp + 352]
                        mov              rsi, qword ptr [rsp + 360]
                        mov              rdx, qword ptr [rsp + 368]
                        mov              rcx, qword ptr [rsp + 376]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n00425_unmark_α
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n00430_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00430_deref_α:           mov              rdi, qword ptr [rsp + 384]
                        mov              rsi, qword ptr [rsp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n00425_unmark_α
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n00431_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00431_lit_integer_α:     mov              qword ptr [rsp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Lx00432_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n00433_call_builtin_icon_α
.Lx00432_0:               .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n00433_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 312], rax
                        .section         .rodata
.Lrkfn926:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn926]
                        lea              rsi, [rsp + 304]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              eax, 104;                            je    n00425_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00434_call_builtin_icon_α
n00433_call_builtin_icon_β:
                                                                              jmp   n00425_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00434_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 184], rax
                        .section         .rodata
.Lrkfn928:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn928]
                        lea              rsi, [rsp + 176]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              eax, 104;                            je    n00425_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00425_unmark_α
n00434_call_builtin_icon_β:
                                                                              jmp   n00425_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00425_unmark_α:          mov              rsp, qword ptr [rsp + 112];          jmp   n00417_to_β
#-----------------------------------------------------------------------------------------------------------------------
n00419_return_α:          mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   Regions___γ
#-----------------------------------------------------------------------------------------------------------------------
n00402_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052544                      # Regions____INITFLAG__0
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n00435_nulltest_var_α
n00402_var_ref_β:                                                               jmp   n00401_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00435_nulltest_var_α:    mov              eax, dword ptr [rsp + 784]
                        cmp              eax, 104;                            je    n00401_disjunction_af
                        mov              rdi, qword ptr [rsp + 784]
                        mov              rsi, qword ptr [rsp + 792]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n00401_disjunction_af
                        cmp              eax, 0;                              jne   n00401_disjunction_af
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 808], rax;          jmp   n00436_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00436_lit_integer_α:     mov              qword ptr [rsp + 832], 3             # result
                        mov              rax, qword ptr [rip + .Lx00437_0]
                        mov              qword ptr [rsp + 840], rax;          jmp   n00438_assign_var_α
.Lx00437_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00438_assign_var_α:      mov              rdi, qword ptr [rsp + 800]
                        mov              rsi, qword ptr [rsp + 808]
                        mov              rdx, qword ptr [rsp + 832]
                        mov              rcx, qword ptr [rsp + 840]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n00401_disjunction_af
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx;          jmp   n00439_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00439_lit_string_α:      mov              qword ptr [rsp + 736], 2             # result
                        mov              dword ptr [rsp + 740], 6
                        mov              rax, qword ptr [rip + .Lx00440_0]
                        mov              qword ptr [rsp + 744], rax;          jmp   n00441_lit_string_α
.Lx00440_0:               .quad            .Lx00440_0_s
.Lx00440_0_s:             .string          "static"
#-----------------------------------------------------------------------------------------------------------------------
n00441_lit_string_α:      mov              qword ptr [rsp + 752], 2             # result
                        mov              dword ptr [rsp + 756], 6
                        mov              rax, qword ptr [rip + .Lx00442_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n00443_lit_string_α
.Lx00442_0:               .quad            .Lx00442_0_s
.Lx00442_0_s:             .string          "string"
#-----------------------------------------------------------------------------------------------------------------------
n00443_lit_string_α:      mov              qword ptr [rsp + 768], 2             # result
                        mov              dword ptr [rsp + 772], 5
                        mov              rax, qword ptr [rip + .Lx00444_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n00445_make_list_α
.Lx00444_0:               .quad            .Lx00444_0_s
.Lx00444_0_s:             .string          "block"
#-----------------------------------------------------------------------------------------------------------------------
n00445_make_list_α:       mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 696], rax
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 712], rax
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 728], rax
                        lea              rdi, [rsp + 688]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n00446_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00446_assign_α:          mov              rax, qword ptr [rsp + 672]
                        mov              rdx, qword ptr [rsp + 680]
                        mov              qword ptr [r9 + 240], rax            # Regions____STATIC__labels
                        mov              qword ptr [r9 + 248], rdx
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n00401_disjunction_as
n00446_assign_β:                                                                jmp   n00404_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
Regions___res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
Regions___β:
                                                                              jmp   Regions___ω
#-----------------------------------------------------------------------------------------------------------------------
Regions___γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 920]
                        add              rsp, 944;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
Regions___ω:
                        mov              rcx, qword ptr [rsp + 928]
                        add              rsp, 944;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
Regions___dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx00447_2]
                        lea              rdx, [rip + .Lx00447_3];               jmp   FN__Regions__
.Lx00447_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx00447_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__Signature__:
                        sub              rsp, 304
                        mov              qword ptr [rsp + 280], rcx
                        mov              qword ptr [rsp + 288], rdx
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
Signature___α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00448_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx00449_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n00450_keyword_icon_α
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n00451_call_builtin_icon_α
n00448_keyword_icon_β:                                                          jmp   n00450_keyword_icon_α
.Lx00449_0:               .quad            .Lx00449_0_s
.Lx00449_0_s:             .string          "&version"
#-----------------------------------------------------------------------------------------------------------------------
n00451_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 200], rax
                        .section         .rodata
.Lrkfn953:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn953]
                        lea              rsi, [rsp + 192]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              eax, 104;                            je    n00450_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00450_keyword_icon_α
n00451_call_builtin_icon_β:
                                                                              jmp   n00450_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00450_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx00452_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n00453_keyword_icon_gen_α
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx;          jmp   n00454_call_builtin_icon_α
n00450_keyword_icon_β:                                                          jmp   n00453_keyword_icon_gen_α
.Lx00452_0:               .quad            .Lx00452_0_s
.Lx00452_0_s:             .string          "&host"
#-----------------------------------------------------------------------------------------------------------------------
n00454_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn956:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn956]
                        lea              rsi, [rsp + 112]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              eax, 104;                            je    n00453_keyword_icon_gen_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00453_keyword_icon_gen_α
n00454_call_builtin_icon_β:
                                                                              jmp   n00453_keyword_icon_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00453_keyword_icon_gen_α:
                        mov              qword ptr [rsp + 80], 0
.Lx00455_1:               mov              rdi, qword ptr [rip + .Lx00455_0]
                        mov              rsi, qword ptr [rsp + 80]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n00456_return_α
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        mov              rax, qword ptr [rsp + 80]
                        add              rax, 1
                        mov              qword ptr [rsp + 80], rax;           jmp   n00457_call_builtin_icon_α
n00453_keyword_icon_gen_β:
                                                                              jmp   .Lx00455_1
.Lx00455_0:               .quad            .Lx00455_0_s
.Lx00455_0_s:             .string          "&features"
#-----------------------------------------------------------------------------------------------------------------------
n00457_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lrkfn959:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn959]
                        lea              rsi, [rsp + 32]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              eax, 104;                            je    n00453_keyword_icon_gen_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00453_keyword_icon_gen_β
n00457_call_builtin_icon_β:
                                                                              jmp   n00453_keyword_icon_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00456_return_α:          mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   Signature___γ
#-----------------------------------------------------------------------------------------------------------------------
Signature___res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
Signature___β:
                                                                              jmp   Signature___ω
#-----------------------------------------------------------------------------------------------------------------------
Signature___γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 280]
                        add              rsp, 304;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
Signature___ω:
                        mov              rcx, qword ptr [rsp + 288]
                        add              rsp, 304;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
Signature___dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx00458_2]
                        lea              rdx, [rip + .Lx00458_3];               jmp   FN__Signature__
.Lx00458_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx00458_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__Storage__:
                        sub              rsp, 944
                        mov              qword ptr [rsp + 920], rcx
                        mov              qword ptr [rsp + 928], rdx
                        mov              rdi, rsp
                        add              rdi, 848
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
Storage___α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00459_disjunction_α:     mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 632], 0
                        mov              dword ptr [rsp + 640], 0;            jmp   n00460_var_ref_α
n00459_disjunction_as:    mov              eax, dword ptr [rsp + 640]
                        cmp              eax, 0;                              jne   .Lx00461_0
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 632], rax;          jmp   n00462_make_list_α
.Lx00461_0:                                                                     jmp   n00462_make_list_α
n00459_disjunction_β:     mov              eax, dword ptr [rsp + 640];          jmp   n00462_make_list_α
n00459_disjunction_af:    add              dword ptr [rsp + 640], 1
                        mov              eax, dword ptr [rsp + 640];          jmp   n00462_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00462_make_list_α:       lea              rdi, [rsp + 624]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx;          jmp   n00463_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00463_assign_α:          mov              rax, qword ptr [rsp + 608]
                        mov              rdx, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx;          jmp   n00464_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00464_var_α:             mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 568], rax;          jmp   n00465_keyword_icon_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00465_keyword_icon_gen_α:
                        mov              qword ptr [rsp + 592], 0
.Lx00466_1:              mov              rdi, qword ptr [rip + .Lx00466_0]
                        mov              rsi, qword ptr [rsp + 592]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n00467_lit_string_α
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        mov              rax, qword ptr [rsp + 592]
                        add              rax, 1
                        mov              qword ptr [rsp + 592], rax;          jmp   n00468_call_builtin_icon_α
n00465_keyword_icon_gen_β:
                                                                              jmp   .Lx00466_1
.Lx00466_0:              .quad            .Lx00466_0_s
.Lx00466_0_s:            .string          "&storage"
#-----------------------------------------------------------------------------------------------------------------------
n00468_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 536], rax
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 520], rax
                        .section         .rodata
.Lrkfn1007:             .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1007]
                        lea              rsi, [rsp + 512]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              eax, 104;                            je    n00465_keyword_icon_gen_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00465_keyword_icon_gen_β
n00468_call_builtin_icon_β:
                                                                              jmp   n00465_keyword_icon_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00467_lit_string_α:      mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 7
                        mov              rax, qword ptr [rip + .Lx00469_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n00470_call_builtin_icon_α
.Lx00469_0:              .quad            .Lx00469_0_s
.Lx00469_0_s:            .string          "storage"
#-----------------------------------------------------------------------------------------------------------------------
n00470_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 456], rax
                        .section         .rodata
.Lrkfn1010:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1010]
                        lea              rsi, [rsp + 448]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              eax, 104;                            je    n00471_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00471_lit_integer_α
n00470_call_builtin_icon_β:
                                                                              jmp   n00471_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00471_lit_integer_α:     mov              qword ptr [rsp + 64], 3              # result
                        mov              rax, qword ptr [rip + .Lx00472_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n00473_var_α
.Lx00472_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00473_var_α:             mov              rax, qword ptr [r9 + 272]            # Storage____STATIC__labels
                        mov              rdx, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 96], rax            # result
                        mov              qword ptr [rsp + 104], rdx;          jmp   n00474_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n00474_unop_α:            mov              rdi, qword ptr [rsp + 96]
                        mov              rsi, qword ptr [rsp + 104]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx;           jmp   n00475_to_α
#-----------------------------------------------------------------------------------------------------------------------
n00475_to_α:              mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 64], 3
                        mov              qword ptr [rsp + 72], rax
                        mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 80], 3
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 48], rax
.Lx00476_0:              mov              rax, qword ptr [rsp + 48]
                        mov              rcx, qword ptr [rsp + 88]
                        cmp              rax, rcx;                            jg    n00477_return_α
                        mov              qword ptr [rsp + 32], 3
                        mov              qword ptr [rsp + 40], rax;           jmp   n00478_assign_α
n00475_to_β:              inc              qword ptr [rsp + 48];                jmp   .Lx00476_0
#-----------------------------------------------------------------------------------------------------------------------
n00478_assign_α:          mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx;          jmp   n00479_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00479_bound_α:           mov              qword ptr [rsp + 112], rsp;          jmp   n00480_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00480_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052560                      # Storage____STATIC__labels
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n00481_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00481_var_α:             mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 248], rax;          jmp   n00482_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00482_subscript_α:       mov              rdi, qword ptr [rsp + 224]
                        mov              rsi, qword ptr [rsp + 232]
                        mov              rdx, qword ptr [rsp + 240]
                        mov              rcx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n00483_unmark_α
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n00484_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00484_deref_α:           mov              rdi, qword ptr [rsp + 256]
                        mov              rsi, qword ptr [rsp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n00483_unmark_α
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n00485_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00485_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 864]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n00486_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00486_var_α:             mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 376], rax;          jmp   n00487_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00487_subscript_α:       mov              rdi, qword ptr [rsp + 352]
                        mov              rsi, qword ptr [rsp + 360]
                        mov              rdx, qword ptr [rsp + 368]
                        mov              rcx, qword ptr [rsp + 376]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n00483_unmark_α
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n00488_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00488_deref_α:           mov              rdi, qword ptr [rsp + 384]
                        mov              rsi, qword ptr [rsp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n00483_unmark_α
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n00489_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00489_lit_integer_α:     mov              qword ptr [rsp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Lx00490_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n00491_call_builtin_icon_α
.Lx00490_0:              .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n00491_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 312], rax
                        .section         .rodata
.Lrkfn1033:             .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1033]
                        lea              rsi, [rsp + 304]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              eax, 104;                            je    n00483_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00492_call_builtin_icon_α
n00491_call_builtin_icon_β:
                                                                              jmp   n00483_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00492_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 184], rax
                        .section         .rodata
.Lrkfn1035:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1035]
                        lea              rsi, [rsp + 176]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              eax, 104;                            je    n00483_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00483_unmark_α
n00492_call_builtin_icon_β:
                                                                              jmp   n00483_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00483_unmark_α:          mov              rsp, qword ptr [rsp + 112];          jmp   n00475_to_β
#-----------------------------------------------------------------------------------------------------------------------
n00477_return_α:          mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   Storage___γ
#-----------------------------------------------------------------------------------------------------------------------
n00460_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052576                      # Storage____INITFLAG__0
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n00493_nulltest_var_α
n00460_var_ref_β:                                                               jmp   n00459_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00493_nulltest_var_α:    mov              eax, dword ptr [rsp + 784]
                        cmp              eax, 104;                            je    n00459_disjunction_af
                        mov              rdi, qword ptr [rsp + 784]
                        mov              rsi, qword ptr [rsp + 792]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n00459_disjunction_af
                        cmp              eax, 0;                              jne   n00459_disjunction_af
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 808], rax;          jmp   n00494_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00494_lit_integer_α:     mov              qword ptr [rsp + 832], 3             # result
                        mov              rax, qword ptr [rip + .Lx00495_0]
                        mov              qword ptr [rsp + 840], rax;          jmp   n00496_assign_var_α
.Lx00495_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00496_assign_var_α:      mov              rdi, qword ptr [rsp + 800]
                        mov              rsi, qword ptr [rsp + 808]
                        mov              rdx, qword ptr [rsp + 832]
                        mov              rcx, qword ptr [rsp + 840]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n00459_disjunction_af
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx;          jmp   n00497_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00497_lit_string_α:      mov              qword ptr [rsp + 736], 2             # result
                        mov              dword ptr [rsp + 740], 6
                        mov              rax, qword ptr [rip + .Lx00498_0]
                        mov              qword ptr [rsp + 744], rax;          jmp   n00499_lit_string_α
.Lx00498_0:              .quad            .Lx00498_0_s
.Lx00498_0_s:            .string          "static"
#-----------------------------------------------------------------------------------------------------------------------
n00499_lit_string_α:      mov              qword ptr [rsp + 752], 2             # result
                        mov              dword ptr [rsp + 756], 6
                        mov              rax, qword ptr [rip + .Lx00500_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n00501_lit_string_α
.Lx00500_0:              .quad            .Lx00500_0_s
.Lx00500_0_s:            .string          "string"
#-----------------------------------------------------------------------------------------------------------------------
n00501_lit_string_α:      mov              qword ptr [rsp + 768], 2             # result
                        mov              dword ptr [rsp + 772], 5
                        mov              rax, qword ptr [rip + .Lx00502_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n00503_make_list_α
.Lx00502_0:              .quad            .Lx00502_0_s
.Lx00502_0_s:            .string          "block"
#-----------------------------------------------------------------------------------------------------------------------
n00503_make_list_α:       mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 696], rax
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 712], rax
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 728], rax
                        lea              rdi, [rsp + 688]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n00504_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00504_assign_α:          mov              rax, qword ptr [rsp + 672]
                        mov              rdx, qword ptr [rsp + 680]
                        mov              qword ptr [r9 + 272], rax            # Storage____STATIC__labels
                        mov              qword ptr [r9 + 280], rdx
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n00459_disjunction_as
n00504_assign_β:                                                                jmp   n00462_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
Storage___res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
Storage___β:
                                                                              jmp   Storage___ω
#-----------------------------------------------------------------------------------------------------------------------
Storage___γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 920]
                        add              rsp, 944;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
Storage___ω:
                        mov              rcx, qword ptr [rsp + 928]
                        add              rsp, 944;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
Storage___dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx00505_2]
                        lea              rdx, [rip + .Lx00505_3];              jmp   FN__Storage__
.Lx00505_2:              pop              r11
                        pop              r11;                                 jmp   r11
.Lx00505_3:              pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__Time__:
                        sub              rsp, 304
                        mov              qword ptr [rsp + 280], rcx
                        mov              qword ptr [rsp + 288], rdx
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
Time___α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00506_disjunction_α:    mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              dword ptr [rsp + 128], 0;            jmp   n00507_var_ref_α
n00506_disjunction_as:   mov              eax, dword ptr [rsp + 128]
                        cmp              eax, 0;                              jne   .Lx00508_0
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 120], rax;          jmp   n00509_keyword_icon_α
.Lx00508_0:                                                                    jmp   n00509_keyword_icon_α
n00506_disjunction_β:    mov              eax, dword ptr [rsp + 128];          jmp   n00509_keyword_icon_α
n00506_disjunction_af:   add              dword ptr [rsp + 128], 1
                        mov              eax, dword ptr [rsp + 128];          jmp   n00509_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00509_keyword_icon_α:   mov              rdi, qword ptr [rip + .Lx00510_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    Time___ω
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx;           jmp   n00511_var_α
n00509_keyword_icon_β:                                                         jmp   Time___ω
.Lx00510_0:              .quad            .Lx00510_0_s
.Lx00510_0_s:            .string          "&time"
#-----------------------------------------------------------------------------------------------------------------------
n00511_var_α:            mov              rax, qword ptr [r9 + 304]            # Time____STATIC__lasttime
                        mov              rdx, qword ptr [r9 + 312]
                        mov              qword ptr [rsp + 96], rax            # result
                        mov              qword ptr [rsp + 104], rdx;          jmp   n00512_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n00512_coerce_numeric_α: mov              eax, dword ptr [rsp + 64]
                        cmp              eax, 5;                              je    .Lx00513_1
                        cmp              eax, 3;                              jne   .Lx00513_0
                        mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 3;                              jne   .Lx00513_0
.Lx00513_1:              mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 56], rax;           jmp   n00514_coerce_numeric_α
.Lx00513_0:              lea              rdi, [rsp + 64]
                        lea              rsi, [rsp + 96]
                        lea              rdx, [rsp + 48]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00514_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n00514_coerce_numeric_α: mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 5;                              je    .Lx00515_1
                        cmp              eax, 3;                              jne   .Lx00515_0
                        mov              eax, dword ptr [rsp + 64]
                        cmp              eax, 3;                              jne   .Lx00515_0
.Lx00515_1:              mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 40], rax;           jmp   n00516_binop_α
.Lx00515_0:              lea              rdi, [rsp + 96]
                        lea              rsi, [rsp + 64]
                        lea              rdx, [rsp + 32]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00516_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00516_binop_α:          mov              eax, dword ptr [rsp + 48]
                        mov              ecx, dword ptr [rsp + 32]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx00517_2
                        mov              rax, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 40]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 16], 3
                        mov              qword ptr [rsp + 24], rax;           jmp   .Lx00517_7
.Lx00517_2:              and              edx, 1;                              jz    .Lx00517_0
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdi, qword ptr [rsp + 40]
                        cmp              eax, 5;                              je    .Lx00517_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx00517_4
.Lx00517_3:              movq             xmm0, rsi
.Lx00517_4:              cmp              ecx, 5;                              je    .Lx00517_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx00517_6
.Lx00517_5:              movq             xmm1, rdi
.Lx00517_6:              subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 16], 5
                        mov              qword ptr [rsp + 24], rax
.Lx00517_7:                                                                    jmp   n00518_return_α
.Lx00517_0:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rcx, qword ptr [rsp + 40]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              eax, 104;                            je    Time___ω
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00518_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00518_return_α:         mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   Time___γ
#-----------------------------------------------------------------------------------------------------------------------
n00507_var_ref_α:        mov              rax, 4294967336
                        mov              rdx, 1879052608                      # Time____INITFLAG__0
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n00519_nulltest_var_α
n00507_var_ref_β:                                                              jmp   n00506_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00519_nulltest_var_α:   mov              eax, dword ptr [rsp + 192]
                        cmp              eax, 104;                            je    n00506_disjunction_af
                        mov              rdi, qword ptr [rsp + 192]
                        mov              rsi, qword ptr [rsp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n00506_disjunction_af
                        cmp              eax, 0;                              jne   n00506_disjunction_af
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 216], rax;          jmp   n00520_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00520_lit_integer_α:    mov              qword ptr [rsp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Lx00521_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n00522_assign_var_α
.Lx00521_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00522_assign_var_α:     mov              rdi, qword ptr [rsp + 208]
                        mov              rsi, qword ptr [rsp + 216]
                        mov              rdx, qword ptr [rsp + 240]
                        mov              rcx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n00506_disjunction_af
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n00523_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00523_keyword_icon_α:   mov              rdi, qword ptr [rip + .Lx00524_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n00509_keyword_icon_α
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx;          jmp   n00525_assign_α
n00523_keyword_icon_β:                                                         jmp   n00509_keyword_icon_α
.Lx00524_0:              .quad            .Lx00524_0_s
.Lx00524_0_s:            .string          "&time"
#-----------------------------------------------------------------------------------------------------------------------
n00525_assign_α:         mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              qword ptr [r9 + 304], rax            # Time____STATIC__lasttime
                        mov              qword ptr [r9 + 312], rdx
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx;          jmp   n00506_disjunction_as
n00525_assign_β:                                                               jmp   n00509_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
Time___res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
Time___β:
                                                                              jmp   Time___ω
#-----------------------------------------------------------------------------------------------------------------------
Time___γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 280]
                        add              rsp, 304;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
Time___ω:
                        mov              rcx, qword ptr [rsp + 288]
                        add              rsp, 304;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
Time___dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx00526_2]
                        lea              rdx, [rip + .Lx00526_3];              jmp   FN__Time__
.Lx00526_2:              pop              r11
                        pop              r11;                                 jmp   r11
.Lx00526_3:              pop              r11
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
                        mov              edi, 21
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 21
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
.Lgvan2:                .string          "Save__"
.Lgvan3:                .string          "Saves__"
.Lgvan4:                .string          "Name__"
.Lgvan5:                .string          "q__STATIC__up"
.Lgvan6:                .string          "q__STATIC__down"
.Lgvan7:                .string          "q__STATIC__rows"
.Lgvan8:                .string          "q__INITFLAG__0"
.Lgvan9:                .string          "show__STATIC__count"
.Lgvan10:               .string          "show__STATIC__line"
.Lgvan11:               .string          "show__STATIC__border"
.Lgvan12:               .string          "show__INITFLAG__0"
.Lgvan13:               .string          "Collections____STATIC__labels"
.Lgvan14:               .string          "Collections____INITFLAG__0"
.Lgvan15:               .string          "Regions____STATIC__labels"
.Lgvan16:               .string          "Regions____INITFLAG__0"
.Lgvan17:               .string          "Storage____STATIC__labels"
.Lgvan18:               .string          "Storage____INITFLAG__0"
.Lgvan19:               .string          "Time____STATIC__lasttime"
.Lgvan20:               .string          "Time____INITFLAG__0"
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
                        .quad            .Lgvan10
                        .quad            .Lgvan11
                        .quad            .Lgvan12
                        .quad            .Lgvan13
                        .quad            .Lgvan14
                        .quad            .Lgvan15
                        .quad            .Lgvan16
                        .quad            .Lgvan17
                        .quad            .Lgvan18
                        .quad            .Lgvan19
                        .quad            .Lgvan20
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 816
                        mov              qword ptr [rsp + 792], rcx
                        mov              qword ptr [rsp + 800], rdx
                        mov              rdi, rsp
                        add              rdi, 704
                        xor              eax, eax
                        mov              ecx, 16
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 2
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00527_call_proc_staged_α:
                        mov              edi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det0@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx00528_1
                        lea              rcx, [rip + .Lx00528_3]
                        lea              rdx, [rip + .Lx00528_4];              jmp   rax
.Lx00528_3:              mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx00528_2
.Lx00528_4:              mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx00528_2
.Lx00528_1:              call             rt_faildescr@PLT
.Lx00528_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00528_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 672]
                        mov              rdx, qword ptr [rsp + 680]
.Lx00528_29:             mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                        cmp              eax, 104;                            je    n00529_var_α
                                                                              jmp   n00529_var_α
n00527_call_proc_staged_β:
                                                                              jmp   n00529_var_α
.Lx00528_0:              .quad            .Lx00528_0_s
.Lx00528_0_s:            .string          "Init__"
#-----------------------------------------------------------------------------------------------------------------------
n00529_var_α:            mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 648], rax;          jmp   n00530_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00530_lit_string_α:     mov              qword ptr [rsp + 656], 2             # result
                        mov              dword ptr [rsp + 660], 2
                        mov              rax, qword ptr [rip + .Lx00531_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n00532_call_proc_staged_α
.Lx00531_0:              .quad            .Lx00531_0_s
.Lx00531_0_s:            .string          "n+"
#-----------------------------------------------------------------------------------------------------------------------
n00532_call_proc_staged_α:
                        lea              rsi, [rsp + 640]
                        lea              rdx, [rsp + 656]
                        call             options_dcα;                         jmp   .Lx00533_2
.Lx00533_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00533_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 576]
                        mov              rdx, qword ptr [rsp + 584]
.Lx00533_29:             mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              eax, 104;                            je    n00534_disjunction_α
                                                                              jmp   n00535_assign_α
n00532_call_proc_staged_β:
                                                                              jmp   n00534_disjunction_α
.Lx00533_0:              .quad            .Lx00533_0_s
.Lx00533_0_s:            .string          "options"
#-----------------------------------------------------------------------------------------------------------------------
n00535_assign_α:         mov              rax, qword ptr [rsp + 576]
                        mov              rdx, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx;          jmp   n00534_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00534_disjunction_α:    mov              qword ptr [rsp + 448], 0
                        mov              qword ptr [rsp + 456], 0
                        mov              dword ptr [rsp + 464], 0;            jmp   n00536_var_ref_α
n00534_disjunction_as:   mov              eax, dword ptr [rsp + 464]
                        cmp              eax, 0;                              jne   .Lx00537_0
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 456], rax;          jmp   n00538_assign_α
.Lx00537_0:              cmp              eax, 1;                              jne   .Lx00537_1
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 456], rax;          jmp   n00538_assign_α
.Lx00537_1:                                                                    jmp   n00538_assign_α
n00534_disjunction_β:    mov              eax, dword ptr [rsp + 464]
                        cmp              eax, 0;                              je    n00534_disjunction_af
                                                                              jmp   n00534_disjunction_af
n00534_disjunction_af:   add              dword ptr [rsp + 464], 1
                        mov              eax, dword ptr [rsp + 464]
                        cmp              eax, 1;                              je    n00539_lit_integer_α
                                                                              jmp   n00540_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00538_assign_α:         mov              rax, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        mov              qword ptr [r9 + 0], rax              # n
                        mov              qword ptr [r9 + 8], rdx;             jmp   n00540_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00540_disjunction_α:    mov              qword ptr [rsp + 304], 0
                        mov              qword ptr [rsp + 312], 0
                        mov              dword ptr [rsp + 320], 0;            jmp   n00541_var_α
n00540_disjunction_as:   mov              eax, dword ptr [rsp + 320]
                        cmp              eax, 0;                              jne   .Lx00542_0
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 312], rax;          jmp   n00543_var_α
.Lx00542_0:                                                                    jmp   n00543_var_α
n00540_disjunction_β:    mov              eax, dword ptr [rsp + 320];          jmp   n00543_var_α
n00540_disjunction_af:   add              dword ptr [rsp + 320], 1
                        mov              eax, dword ptr [rsp + 320];          jmp   n00543_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00541_var_α:            mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 416], rax           # result
                        mov              qword ptr [rsp + 424], rdx;          jmp   n00544_lit_integer_α
n00541_var_β:                                                                  jmp   n00540_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00544_lit_integer_α:    mov              qword ptr [rsp + 432], 3             # result
                        mov              rax, qword ptr [rip + .Lx00545_0]
                        mov              qword ptr [rsp + 440], rax;          jmp   n00546_binop_test_α
.Lx00545_0:              .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00546_binop_test_α:     mov              eax, dword ptr [rsp + 416]
                        cmp              eax, 112;                            je    .Lx00547_0
                        mov              eax, dword ptr [rsp + 432]
                        cmp              eax, 112;                            je    .Lx00547_0
                        mov              eax, dword ptr [rsp + 416]
                        cmp              eax, 3;                              jne   .Lx00547_2
                        mov              eax, dword ptr [rsp + 432]
                        cmp              eax, 3;                              jne   .Lx00547_2
.Lx00547_1:              mov              rax, qword ptr [rsp + 424]
                        mov              rcx, qword ptr [rsp + 440]
                        cmp              rax, rcx;                            jg    n00540_disjunction_af
                        mov              rcx, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 400], rcx
                        mov              rcx, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 408], rcx;          jmp   n00548_lit_string_α
.Lx00547_0:              mov              rdi, qword ptr [rsp + 416]
                        mov              rsi, qword ptr [rsp + 424]
                        mov              rdx, qword ptr [rsp + 432]
                        mov              rcx, qword ptr [rsp + 440]
                        mov              r8d, 6
                        lea              r9, [rsp + 400]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            je    .Lx00547_1
                        cmp              eax, 1;                              je    n00540_disjunction_af
                                                                              jmp   n00548_lit_string_α
.Lx00547_2:              mov              rdi, qword ptr [rsp + 416]
                        mov              rsi, qword ptr [rsp + 424]
                        mov              rdx, qword ptr [rsp + 432]
                        mov              rcx, qword ptr [rsp + 440]
                        mov              r8d, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n00540_disjunction_af
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 408], rax;          jmp   n00548_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00548_lit_string_α:     mov              qword ptr [rsp + 384], 2             # result
                        mov              dword ptr [rsp + 388], 37
                        mov              rax, qword ptr [rip + .Lx00549_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n00550_call_builtin_icon_α
.Lx00549_0:              .quad            .Lx00549_0_s
.Lx00549_0_s:            .string          "-n needs a positive numeric parameter"
#-----------------------------------------------------------------------------------------------------------------------
n00550_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 360], rax
                        .section         .rodata
.Lrkfn1128:             .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1128]
                        lea              rsi, [rsp + 352]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              eax, 104;                            je    n00543_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00540_disjunction_as
n00550_call_builtin_icon_β:
                                                                              jmp   n00543_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00543_var_α:            mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 288], rax           # result
                        mov              qword ptr [rsp + 296], rdx;          jmp   n00551_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00551_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 264], rax
                        .section         .rodata
.Lrkfn1131:             .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1131]
                        lea              rsi, [rsp + 256]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              eax, 104;                            je    n00552_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00553_assign_α
n00551_call_builtin_icon_β:
                                                                              jmp   n00552_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00553_assign_α:         mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [r9 + 16], rax             # solution
                        mov              qword ptr [r9 + 24], rdx;            jmp   n00552_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00552_var_α:            mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 192], rax           # result
                        mov              qword ptr [rsp + 200], rdx;          jmp   n00554_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00554_lit_string_α:     mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 8
                        mov              rax, qword ptr [rip + .Lx00555_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n00556_call_builtin_icon_α
.Lx00555_0:              .quad            .Lx00555_0_s
.Lx00555_0_s:            .string          "-Queens:"
#-----------------------------------------------------------------------------------------------------------------------
n00556_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 168], rax
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 152], rax
                        .section         .rodata
.Lrkfn1136:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1136]
                        lea              rsi, [rsp + 144]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              eax, 104;                            je    n00557_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00557_lit_integer_α
n00556_call_builtin_icon_β:
                                                                              jmp   n00557_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00557_lit_integer_α:    mov              qword ptr [rsp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Lx00558_0]
                        mov              qword ptr [rsp + 120], rax;          jmp   n00559_call_proc_staged_α
.Lx00558_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00559_call_proc_staged_α:
                        lea              rsi, [rsp + 112]
                        call             q_dcα;                               jmp   .Lx00560_2
.Lx00560_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00560_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
.Lx00560_29:             mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              eax, 104;                            je    n00561_call_proc_staged_α
                                                                              jmp   n00561_call_proc_staged_α
n00559_call_proc_staged_β:
                                                                              jmp   n00561_call_proc_staged_α
.Lx00560_0:              .quad            .Lx00560_0_s
.Lx00560_0_s:            .string          "q"
#-----------------------------------------------------------------------------------------------------------------------
n00561_call_proc_staged_α:
                        call             Term___dcα;                          jmp   .Lx00562_2
.Lx00562_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00562_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
.Lx00562_29:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 104;                            je    main_ω
                                                                              jmp   main_γ
n00561_call_proc_staged_β:
                                                                              jmp   main_ω
.Lx00562_0:              .quad            .Lx00562_0_s
.Lx00562_0_s:            .string          "Term__"
#-----------------------------------------------------------------------------------------------------------------------
n00539_lit_integer_α:    mov              qword ptr [rsp + 560], 3             # result
                        mov              rax, qword ptr [rip + .Lx00563_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n00534_disjunction_as
n00539_lit_integer_β:                                                          jmp   n00534_disjunction_af
.Lx00563_0:              .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n00536_var_ref_α:        mov              rax, 4294967336
                        lea              rdx, [rsp + 704]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx;          jmp   n00564_lit_string_α
n00536_var_ref_β:                                                              jmp   n00534_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00564_lit_string_α:     mov              qword ptr [rsp + 512], 2             # result
                        mov              dword ptr [rsp + 516], 1
                        mov              rax, qword ptr [rip + .Lx00565_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n00566_subscript_α
.Lx00565_0:              .quad            .Lx00565_0_s
.Lx00565_0_s:            .string          "n"
#-----------------------------------------------------------------------------------------------------------------------
n00566_subscript_α:      mov              rdi, qword ptr [rsp + 496]
                        mov              rsi, qword ptr [rsp + 504]
                        mov              rdx, qword ptr [rsp + 512]
                        mov              rcx, qword ptr [rsp + 520]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n00534_disjunction_af
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n00567_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00567_deref_α:          mov              rdi, qword ptr [rsp + 528]
                        mov              rsi, qword ptr [rsp + 536]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n00534_disjunction_af
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n00568_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n00568_unop_test_α:      mov              eax, dword ptr [rsp + 544]
                        cmp              eax, 104;                            je    n00534_disjunction_af
                        cmp              eax, 0;                              je    n00534_disjunction_af
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 488], rax;          jmp   n00534_disjunction_as
n00568_unop_test_β:                                                            jmp   n00534_disjunction_af
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
                        .section         .rodata
.Lstartup_pname2:       .string          "options"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__options
                        .quad            options_dcα
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            2736
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "Init__"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__Init__
                        .quad            Init___dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            432
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "Term__"
                        .align           8
.Lstartup_prec4:
                        .quad            .Lstartup_pname4
                        .quad            FN__Term__
                        .quad            Term___dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            480
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec4]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "Collections__"
                        .align           8
.Lstartup_prec5:
                        .quad            .Lstartup_pname5
                        .quad            FN__Collections__
                        .quad            Collections___dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            912
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec5]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "Regions__"
                        .align           8
.Lstartup_prec6:
                        .quad            .Lstartup_pname6
                        .quad            FN__Regions__
                        .quad            Regions___dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            880
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec6]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "Signature__"
                        .align           8
.Lstartup_prec7:
                        .quad            .Lstartup_pname7
                        .quad            FN__Signature__
                        .quad            Signature___dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            256
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec7]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "Storage__"
                        .align           8
.Lstartup_prec8:
                        .quad            .Lstartup_pname8
                        .quad            FN__Storage__
                        .quad            Storage___dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            880
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec8]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "Time__"
                        .align           8
.Lstartup_prec9:
                        .quad            .Lstartup_pname9
                        .quad            FN__Time__
                        .quad            Time___dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            256
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec9]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
