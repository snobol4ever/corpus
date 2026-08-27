                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__q:
                        sub              rsp, 2192
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
n0_disjunction_α:       mov              r11, 1
                        mov              qword ptr [rsp + 1472], 0
                        mov              qword ptr [rsp + 1480], 0
                        mov              dword ptr [rsp + 1488], 0;           jmp   n1_var_ref_α
n0_disjunction_as:      mov              r11, 1
                        mov              eax, dword ptr [rsp + 1488]
                        cmp              eax, 0;                              jne   .Lq_α_112_0
                        mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1480], rax;         jmp   n30_lit_integer_α
.Lq_α_112_0:                                                                  jmp   n30_lit_integer_α
n0_disjunction_β:       mov              r11, 1
                        mov              eax, dword ptr [rsp + 1488];         jmp   n30_lit_integer_α
n0_disjunction_af:      mov              r11, 1
                        add              dword ptr [rsp + 1488], 1
                        mov              eax, dword ptr [rsp + 1488];         jmp   n30_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              r11, 2
                        mov              rax, 4294967336
                        mov              rdx, 1879052416                      # q__INITFLAG__0
                        mov              qword ptr [rsp + 2032], rax
                        mov              qword ptr [rsp + 2040], rdx;         jmp   n2_nulltest_var_α
n1_var_ref_β:           mov              r11, 2;                              jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n2_nulltest_var_α:      mov              r11, 3
                        mov              eax, dword ptr [rsp + 2032]
                        cmp              al, 104;                             je    n0_disjunction_af
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
                        cmp              al, 104;                             je    n0_disjunction_af
                        cmp              eax, 0;                              jne   n0_disjunction_af
                        mov              rax, qword ptr [rsp + 2032]
                        mov              qword ptr [rsp + 2048], rax
                        mov              rax, qword ptr [rsp + 2040]
                        mov              qword ptr [rsp + 2056], rax;         jmp   n3_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:       mov              r11, 4
                        mov              qword ptr [rsp + 2080], 3            # result
                        mov              rax, qword ptr [rip + .Lq_α_116_0]
                        mov              qword ptr [rsp + 2088], rax;         jmp   n4_assign_var_α
.Lq_α_116_0:            .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_var_α:        mov              r11, 5
                        mov              rdi, qword ptr [rsp + 2048]
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
                        cmp              al, 104;                             je    n0_disjunction_af
                        mov              qword ptr [rsp + 2064], rax
                        mov              qword ptr [rsp + 2072], rdx;         jmp   n5_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:       mov              r11, 6
                        mov              qword ptr [rsp + 1968], 3            # result
                        mov              rax, qword ptr [rip + .Lq_α_118_0]
                        mov              qword ptr [rsp + 1976], rax;         jmp   n6_var_α
.Lq_α_118_0:            .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:               mov              r11, 7
                        mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 1984], rax          # result
                        mov              qword ptr [rsp + 1992], rdx;         jmp   n7_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n7_coerce_numeric_α:    mov              r11, 8
                        mov              eax, dword ptr [rsp + 1984]
                        cmp              al, 5;                               je    .Lq_α_121_1
                        cmp              al, 3;                               jne   .Lq_α_121_0
                        mov              eax, dword ptr [rsp + 1968]
                        cmp              al, 3;                               jne   .Lq_α_121_0
.Lq_α_121_1:            mov              rax, qword ptr [rsp + 1984]
                        mov              qword ptr [rsp + 1952], rax
                        mov              rax, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 1960], rax;         jmp   n8_binop_α
.Lq_α_121_0:            lea              rdi, [rsp + 1984]
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
n8_binop_α:             mov              r11, 9
                        mov              eax, 3
                        mov              ecx, dword ptr [rsp + 1952]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lq_α_122_2
                        mov              rax, 2
                        mov              rdx, qword ptr [rsp + 1960]
                        imul             rax, rdx
                        mov              qword ptr [rsp + 1936], 3
                        mov              qword ptr [rsp + 1944], rax;         jmp   .Lq_α_122_7
.Lq_α_122_2:            and              edx, 1;                              jz    .Lq_α_122_0
                        mov              rsi, 2
                        mov              rdi, qword ptr [rsp + 1960]
                        cmp              al, 5;                               je    .Lq_α_122_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lq_α_122_4
.Lq_α_122_3:            movq             xmm0, rsi
.Lq_α_122_4:            cmp              cl, 5;                               je    .Lq_α_122_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lq_α_122_6
.Lq_α_122_5:            movq             xmm1, rdi
.Lq_α_122_6:            mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1936], 5
                        mov              qword ptr [rsp + 1944], rax
.Lq_α_122_7:                                                                  jmp   n9_lit_integer_α
.Lq_α_122_0:            mov              rdi, qword ptr [rsp + 1968]
                        mov              rsi, qword ptr [rsp + 1976]
                        mov              rdx, qword ptr [rsp + 1952]
                        mov              rcx, qword ptr [rsp + 1960]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n15_lit_integer_α
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx;         jmp   n9_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:       mov              r11, 10
                        mov              qword ptr [rsp + 2000], 3            # result
                        mov              rax, qword ptr [rip + .Lq_α_123_0]
                        mov              qword ptr [rsp + 2008], rax;         jmp   n10_coerce_numeric_α
.Lq_α_123_0:            .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n10_coerce_numeric_α:   mov              r11, 11
                        mov              eax, dword ptr [rsp + 1936]
                        cmp              al, 5;                               je    .Lq_α_125_1
                        cmp              al, 3;                               jne   .Lq_α_125_0
                        mov              eax, dword ptr [rsp + 2000]
                        cmp              al, 3;                               jne   .Lq_α_125_0
.Lq_α_125_1:            mov              rax, qword ptr [rsp + 1936]
                        mov              qword ptr [rsp + 1920], rax
                        mov              rax, qword ptr [rsp + 1944]
                        mov              qword ptr [rsp + 1928], rax;         jmp   n11_binop_α
.Lq_α_125_0:            lea              rdi, [rsp + 1936]
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
n11_binop_α:            mov              r11, 12
                        mov              eax, dword ptr [rsp + 1920]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lq_α_126_2
                        mov              rax, qword ptr [rsp + 1928]
                        mov              rdx, 1
                        sub              rax, rdx
                        mov              qword ptr [rsp + 1904], 3
                        mov              qword ptr [rsp + 1912], rax;         jmp   .Lq_α_126_7
.Lq_α_126_2:            and              edx, 1;                              jz    .Lq_α_126_0
                        mov              rsi, qword ptr [rsp + 1928]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lq_α_126_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lq_α_126_4
.Lq_α_126_3:            movq             xmm0, rsi
.Lq_α_126_4:            cmp              cl, 5;                               je    .Lq_α_126_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lq_α_126_6
.Lq_α_126_5:            movq             xmm1, rdi
.Lq_α_126_6:            subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1904], 5
                        mov              qword ptr [rsp + 1912], rax
.Lq_α_126_7:                                                                  jmp   n12_lit_integer_α
.Lq_α_126_0:            mov              rdi, qword ptr [rsp + 1920]
                        mov              rsi, qword ptr [rsp + 1928]
                        mov              rdx, qword ptr [rsp + 2000]
                        mov              rcx, qword ptr [rsp + 2008]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n15_lit_integer_α
                        mov              qword ptr [rsp + 1904], rax
                        mov              qword ptr [rsp + 1912], rdx;         jmp   n12_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:      mov              r11, 13
                        mov              qword ptr [rsp + 2016], 3            # result
                        mov              rax, qword ptr [rip + .Lq_α_127_0]
                        mov              qword ptr [rsp + 2024], rax;         jmp   n13_call_icon_α
.Lq_α_127_0:            .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n13_call_icon_α:        mov              r11, 14
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
                        mov              ecx, 262276
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1840], rax
                        mov              qword ptr [rsp + 1848], rdx
                        cmp              al, 104;                             je    n15_lit_integer_α
                                                                              jmp   n14_assign_α
n13_call_icon_β:        mov              r11, 14;                             jmp   n15_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n14_assign_α:           mov              r11, 15
                        mov              rax, qword ptr [rsp + 1840]
                        mov              rdx, qword ptr [rsp + 1848]
                        mov              qword ptr [r9 + 80], rax             # q__STATIC__up
                        mov              qword ptr [r9 + 88], rdx;            jmp   n15_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_integer_α:      mov              r11, 16
                        mov              qword ptr [rsp + 1776], 3            # result
                        mov              rax, qword ptr [rip + .Lq_α_131_0]
                        mov              qword ptr [rsp + 1784], rax;         jmp   n16_var_α
.Lq_α_131_0:            .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n16_var_α:              mov              r11, 17
                        mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 1792], rax          # result
                        mov              qword ptr [rsp + 1800], rdx;         jmp   n17_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n17_coerce_numeric_α:   mov              r11, 18
                        mov              eax, dword ptr [rsp + 1792]
                        cmp              al, 5;                               je    .Lq_α_134_1
                        cmp              al, 3;                               jne   .Lq_α_134_0
                        mov              eax, dword ptr [rsp + 1776]
                        cmp              al, 3;                               jne   .Lq_α_134_0
.Lq_α_134_1:            mov              rax, qword ptr [rsp + 1792]
                        mov              qword ptr [rsp + 1760], rax
                        mov              rax, qword ptr [rsp + 1800]
                        mov              qword ptr [rsp + 1768], rax;         jmp   n18_binop_α
.Lq_α_134_0:            lea              rdi, [rsp + 1792]
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
n18_binop_α:            mov              r11, 19
                        mov              eax, 3
                        mov              ecx, dword ptr [rsp + 1760]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lq_α_135_2
                        mov              rax, 2
                        mov              rdx, qword ptr [rsp + 1768]
                        imul             rax, rdx
                        mov              qword ptr [rsp + 1744], 3
                        mov              qword ptr [rsp + 1752], rax;         jmp   .Lq_α_135_7
.Lq_α_135_2:            and              edx, 1;                              jz    .Lq_α_135_0
                        mov              rsi, 2
                        mov              rdi, qword ptr [rsp + 1768]
                        cmp              al, 5;                               je    .Lq_α_135_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lq_α_135_4
.Lq_α_135_3:            movq             xmm0, rsi
.Lq_α_135_4:            cmp              cl, 5;                               je    .Lq_α_135_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lq_α_135_6
.Lq_α_135_5:            movq             xmm1, rdi
.Lq_α_135_6:            mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1744], 5
                        mov              qword ptr [rsp + 1752], rax
.Lq_α_135_7:                                                                  jmp   n19_lit_integer_α
.Lq_α_135_0:            mov              rdi, qword ptr [rsp + 1776]
                        mov              rsi, qword ptr [rsp + 1784]
                        mov              rdx, qword ptr [rsp + 1760]
                        mov              rcx, qword ptr [rsp + 1768]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n25_var_α
                        mov              qword ptr [rsp + 1744], rax
                        mov              qword ptr [rsp + 1752], rdx;         jmp   n19_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_integer_α:      mov              r11, 20
                        mov              qword ptr [rsp + 1808], 3            # result
                        mov              rax, qword ptr [rip + .Lq_α_136_0]
                        mov              qword ptr [rsp + 1816], rax;         jmp   n20_coerce_numeric_α
.Lq_α_136_0:            .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n20_coerce_numeric_α:   mov              r11, 21
                        mov              eax, dword ptr [rsp + 1744]
                        cmp              al, 5;                               je    .Lq_α_138_1
                        cmp              al, 3;                               jne   .Lq_α_138_0
                        mov              eax, dword ptr [rsp + 1808]
                        cmp              al, 3;                               jne   .Lq_α_138_0
.Lq_α_138_1:            mov              rax, qword ptr [rsp + 1744]
                        mov              qword ptr [rsp + 1728], rax
                        mov              rax, qword ptr [rsp + 1752]
                        mov              qword ptr [rsp + 1736], rax;         jmp   n21_binop_α
.Lq_α_138_0:            lea              rdi, [rsp + 1744]
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
n21_binop_α:            mov              r11, 22
                        mov              eax, dword ptr [rsp + 1728]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lq_α_139_2
                        mov              rax, qword ptr [rsp + 1736]
                        mov              rdx, 1
                        sub              rax, rdx
                        mov              qword ptr [rsp + 1712], 3
                        mov              qword ptr [rsp + 1720], rax;         jmp   .Lq_α_139_7
.Lq_α_139_2:            and              edx, 1;                              jz    .Lq_α_139_0
                        mov              rsi, qword ptr [rsp + 1736]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lq_α_139_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lq_α_139_4
.Lq_α_139_3:            movq             xmm0, rsi
.Lq_α_139_4:            cmp              cl, 5;                               je    .Lq_α_139_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lq_α_139_6
.Lq_α_139_5:            movq             xmm1, rdi
.Lq_α_139_6:            subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1712], 5
                        mov              qword ptr [rsp + 1720], rax
.Lq_α_139_7:                                                                  jmp   n22_lit_integer_α
.Lq_α_139_0:            mov              rdi, qword ptr [rsp + 1728]
                        mov              rsi, qword ptr [rsp + 1736]
                        mov              rdx, qword ptr [rsp + 1808]
                        mov              rcx, qword ptr [rsp + 1816]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n25_var_α
                        mov              qword ptr [rsp + 1712], rax
                        mov              qword ptr [rsp + 1720], rdx;         jmp   n22_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_integer_α:      mov              r11, 23
                        mov              qword ptr [rsp + 1824], 3            # result
                        mov              rax, qword ptr [rip + .Lq_α_140_0]
                        mov              qword ptr [rsp + 1832], rax;         jmp   n23_call_icon_α
.Lq_α_140_0:            .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n23_call_icon_α:        mov              r11, 24
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
                        mov              ecx, 262276
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1648], rax
                        mov              qword ptr [rsp + 1656], rdx
                        cmp              al, 104;                             je    n25_var_α
                                                                              jmp   n24_assign_α
n23_call_icon_β:        mov              r11, 24;                             jmp   n25_var_α
#-----------------------------------------------------------------------------------------------------------------------
n24_assign_α:           mov              r11, 25
                        mov              rax, qword ptr [rsp + 1648]
                        mov              rdx, qword ptr [rsp + 1656]
                        mov              qword ptr [r9 + 96], rax             # q__STATIC__down
                        mov              qword ptr [r9 + 104], rdx;           jmp   n25_var_α
#-----------------------------------------------------------------------------------------------------------------------
n25_var_α:              mov              r11, 26
                        mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 1600], rax          # result
                        mov              qword ptr [rsp + 1608], rdx;         jmp   n26_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_integer_α:      mov              r11, 27
                        mov              qword ptr [rsp + 1616], 3            # result
                        mov              rax, qword ptr [rip + .Lq_α_145_0]
                        mov              qword ptr [rsp + 1624], rax;         jmp   n27_call_icon_α
.Lq_α_145_0:            .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n27_call_icon_α:        mov              r11, 28
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
                        mov              ecx, 262276
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx
                        cmp              al, 104;                             je    n30_lit_integer_α
                                                                              jmp   n28_assign_α
n27_call_icon_β:        mov              r11, 28;                             jmp   n30_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n28_assign_α:           mov              r11, 29
                        mov              rax, qword ptr [rsp + 1536]
                        mov              rdx, qword ptr [rsp + 1544]
                        mov              qword ptr [r9 + 112], rax            # q__STATIC__rows
                        mov              qword ptr [r9 + 120], rdx
                        mov              qword ptr [rsp + 1520], rax
                        mov              qword ptr [rsp + 1528], rdx;         jmp   n29_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n29_conjunction_α:      mov              r11, 30
                        mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 1504], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1512], rax;         jmp   n0_disjunction_as
n29_conjunction_β:      mov              r11, 30;                             jmp   n30_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:      mov              r11, 31
                        mov              qword ptr [rsp + 592], 3             # result
                        mov              rax, qword ptr [rip + .Lq_α_150_0]
                        mov              qword ptr [rsp + 600], rax;          jmp   n31_var_ref_α
.Lq_α_150_0:            .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n31_var_ref_α:          mov              r11, 32
                        mov              rax, 4294967336
                        mov              rdx, 1879052400                      # q__STATIC__rows
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx;          jmp   n32_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_integer_α:      mov              r11, 33
                        mov              qword ptr [rsp + 672], 3             # result
                        mov              rax, qword ptr [rip + .Lq_α_153_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n33_var_α
.Lq_α_153_0:            .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n33_var_α:              mov              r11, 34
                        mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 688], rax           # result
                        mov              qword ptr [rsp + 696], rdx;          jmp   n34_to_α
#-----------------------------------------------------------------------------------------------------------------------
n34_to_α:               mov              r11, 35
                        mov              rdi, qword ptr [rsp + 672]
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
.Lq_α_156_0:            mov              rax, qword ptr [rsp + 656]
                        mov              rcx, qword ptr [rsp + 696]
                        cmp              rax, rcx;                            jg    q_ω
                        mov              qword ptr [rsp + 640], 3
                        mov              qword ptr [rsp + 648], rax;          jmp   n35_assign_α
n34_to_β:               mov              r11, 35
                        inc              qword ptr [rsp + 656];               jmp   .Lq_α_156_0
#-----------------------------------------------------------------------------------------------------------------------
n35_assign_α:           mov              r11, 36
                        mov              rax, qword ptr [rsp + 640]
                        mov              rdx, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 2096], rax
                        mov              qword ptr [rsp + 2104], rdx
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx;          jmp   n36_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n36_subscript_α:        mov              r11, 37
                        mov              rdi, qword ptr [rsp + 608]
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
                        cmp              al, 104;                             je    n34_to_β
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx;          jmp   n37_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n37_deref_α:            mov              r11, 38
                        mov              rdi, qword ptr [rsp + 704]
                        mov              rsi, qword ptr [rsp + 712]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n34_to_β
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx;          jmp   n38_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n38_binop_test_α:       mov              r11, 39
                        mov              eax, dword ptr [rsp + 592]
                        cmp              al, 112;                             je    .Lq_α_160_0
                        mov              eax, dword ptr [rsp + 720]
                        cmp              al, 112;                             je    .Lq_α_160_0
                        mov              eax, dword ptr [rsp + 592]
                        cmp              al, 3;                               jne   .Lq_α_160_2
                        mov              eax, dword ptr [rsp + 720]
                        cmp              al, 3;                               jne   .Lq_α_160_2
.Lq_α_160_1:            mov              rax, qword ptr [rsp + 600]
                        mov              rcx, qword ptr [rsp + 728]
                        cmp              rax, rcx;                            jne   n34_to_β
                        mov              rcx, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 576], rcx
                        mov              rcx, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 584], rcx;          jmp   n39_var_ref_α
.Lq_α_160_0:            mov              rdi, qword ptr [rsp + 592]
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
                        test             eax, eax;                            je    .Lq_α_160_1
                        cmp              eax, 1;                              je    n34_to_β
                                                                              jmp   n39_var_ref_α
.Lq_α_160_2:            mov              rdi, qword ptr [rsp + 592]
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
n39_var_ref_α:          mov              r11, 40
                        mov              rax, 4294967336
                        mov              rdx, 1879052368                      # q__STATIC__up
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx;          jmp   n40_var_α
#-----------------------------------------------------------------------------------------------------------------------
n40_var_α:              mov              r11, 41
                        mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 848], rax           # result
                        mov              qword ptr [rsp + 856], rdx;          jmp   n41_var_α
#-----------------------------------------------------------------------------------------------------------------------
n41_var_α:              mov              r11, 42
                        mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 872], rax;          jmp   n42_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n42_coerce_numeric_α:   mov              r11, 43
                        mov              eax, dword ptr [rsp + 848]
                        cmp              al, 5;                               je    .Lq_α_167_1
                        cmp              al, 3;                               jne   .Lq_α_167_0
                        mov              eax, dword ptr [rsp + 2096]
                        cmp              al, 3;                               jne   .Lq_α_167_0
.Lq_α_167_1:            mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 840], rax;          jmp   n43_coerce_numeric_α
.Lq_α_167_0:            lea              rdi, [rsp + 848]
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
n43_coerce_numeric_α:   mov              r11, 44
                        mov              eax, dword ptr [rsp + 2096]
                        cmp              al, 5;                               je    .Lq_α_169_1
                        cmp              al, 3;                               jne   .Lq_α_169_0
                        mov              eax, dword ptr [rsp + 848]
                        cmp              al, 3;                               jne   .Lq_α_169_0
.Lq_α_169_1:            mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 824], rax;          jmp   n44_binop_α
.Lq_α_169_0:            lea              rdi, [rsp + 2096]
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
n44_binop_α:            mov              r11, 45
                        mov              eax, dword ptr [rsp + 832]
                        mov              ecx, dword ptr [rsp + 816]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lq_α_170_2
                        mov              rax, qword ptr [rsp + 840]
                        mov              rdx, qword ptr [rsp + 824]
                        add              rax, rdx
                        mov              qword ptr [rsp + 800], 3
                        mov              qword ptr [rsp + 808], rax;          jmp   .Lq_α_170_7
.Lq_α_170_2:            and              edx, 1;                              jz    .Lq_α_170_0
                        mov              rsi, qword ptr [rsp + 840]
                        mov              rdi, qword ptr [rsp + 824]
                        cmp              al, 5;                               je    .Lq_α_170_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lq_α_170_4
.Lq_α_170_3:            movq             xmm0, rsi
.Lq_α_170_4:            cmp              cl, 5;                               je    .Lq_α_170_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lq_α_170_6
.Lq_α_170_5:            movq             xmm1, rdi
.Lq_α_170_6:            addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 800], 5
                        mov              qword ptr [rsp + 808], rax
.Lq_α_170_7:                                                                  jmp   n45_var_α
.Lq_α_170_0:            mov              rdi, qword ptr [rsp + 832]
                        mov              rsi, qword ptr [rsp + 840]
                        mov              rdx, qword ptr [rsp + 816]
                        mov              rcx, qword ptr [rsp + 824]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n34_to_β
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx;          jmp   n45_var_α
#-----------------------------------------------------------------------------------------------------------------------
n45_var_α:              mov              r11, 46
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 888], rax;          jmp   n46_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n46_coerce_numeric_α:   mov              r11, 47
                        mov              eax, dword ptr [rsp + 800]
                        cmp              al, 5;                               je    .Lq_α_174_1
                        cmp              al, 3;                               jne   .Lq_α_174_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lq_α_174_0
.Lq_α_174_1:            mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 792], rax;          jmp   n47_coerce_numeric_α
.Lq_α_174_0:            lea              rdi, [rsp + 800]
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
n47_coerce_numeric_α:   mov              r11, 48
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 5;                               je    .Lq_α_176_1
                        cmp              al, 3;                               jne   .Lq_α_176_0
                        mov              eax, dword ptr [rsp + 800]
                        cmp              al, 3;                               jne   .Lq_α_176_0
.Lq_α_176_1:            mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 776], rax;          jmp   n48_binop_α
.Lq_α_176_0:            lea              rdi, [rsp + 16]
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
n48_binop_α:            mov              r11, 49
                        mov              eax, dword ptr [rsp + 784]
                        mov              ecx, dword ptr [rsp + 768]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lq_α_177_2
                        mov              rax, qword ptr [rsp + 792]
                        mov              rdx, qword ptr [rsp + 776]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 752], 3
                        mov              qword ptr [rsp + 760], rax;          jmp   .Lq_α_177_7
.Lq_α_177_2:            and              edx, 1;                              jz    .Lq_α_177_0
                        mov              rsi, qword ptr [rsp + 792]
                        mov              rdi, qword ptr [rsp + 776]
                        cmp              al, 5;                               je    .Lq_α_177_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lq_α_177_4
.Lq_α_177_3:            movq             xmm0, rsi
.Lq_α_177_4:            cmp              cl, 5;                               je    .Lq_α_177_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lq_α_177_6
.Lq_α_177_5:            movq             xmm1, rdi
.Lq_α_177_6:            subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 752], 5
                        mov              qword ptr [rsp + 760], rax
.Lq_α_177_7:                                                                  jmp   n49_subscript_α
.Lq_α_177_0:            mov              rdi, qword ptr [rsp + 784]
                        mov              rsi, qword ptr [rsp + 792]
                        mov              rdx, qword ptr [rsp + 768]
                        mov              rcx, qword ptr [rsp + 776]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n34_to_β
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx;          jmp   n49_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n49_subscript_α:        mov              r11, 50
                        mov              rdi, qword ptr [rsp + 736]
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
                        cmp              al, 104;                             je    n34_to_β
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx;          jmp   n50_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n50_deref_α:            mov              r11, 51
                        mov              rdi, qword ptr [rsp + 896]
                        mov              rsi, qword ptr [rsp + 904]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n34_to_β
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx;          jmp   n51_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n51_binop_test_α:       mov              r11, 52
                        mov              eax, dword ptr [rsp + 576]
                        cmp              al, 112;                             je    .Lq_α_180_0
                        mov              eax, dword ptr [rsp + 912]
                        cmp              al, 112;                             je    .Lq_α_180_0
                        mov              eax, dword ptr [rsp + 576]
                        cmp              al, 3;                               jne   .Lq_α_180_2
                        mov              eax, dword ptr [rsp + 912]
                        cmp              al, 3;                               jne   .Lq_α_180_2
.Lq_α_180_1:            mov              rax, qword ptr [rsp + 584]
                        mov              rcx, qword ptr [rsp + 920]
                        cmp              rax, rcx;                            jne   n34_to_β
                        mov              rcx, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 560], rcx
                        mov              rcx, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 568], rcx;          jmp   n52_var_ref_α
.Lq_α_180_0:            mov              rdi, qword ptr [rsp + 576]
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
                        test             eax, eax;                            je    .Lq_α_180_1
                        cmp              eax, 1;                              je    n34_to_β
                                                                              jmp   n52_var_ref_α
.Lq_α_180_2:            mov              rdi, qword ptr [rsp + 576]
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
n52_var_ref_α:          mov              r11, 53
                        mov              rax, 4294967336
                        mov              rdx, 1879052384                      # q__STATIC__down
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx;          jmp   n53_var_α
#-----------------------------------------------------------------------------------------------------------------------
n53_var_α:              mov              r11, 54
                        mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n54_var_α
#-----------------------------------------------------------------------------------------------------------------------
n54_var_α:              mov              r11, 55
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n55_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n55_coerce_numeric_α:   mov              r11, 56
                        mov              eax, dword ptr [rsp + 2096]
                        cmp              al, 5;                               je    .Lq_α_188_1
                        cmp              al, 3;                               jne   .Lq_α_188_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lq_α_188_0
.Lq_α_188_1:            mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n56_coerce_numeric_α
.Lq_α_188_0:            lea              rdi, [rsp + 2096]
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
n56_coerce_numeric_α:   mov              r11, 57
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 5;                               je    .Lq_α_190_1
                        cmp              al, 3;                               jne   .Lq_α_190_0
                        mov              eax, dword ptr [rsp + 2096]
                        cmp              al, 3;                               jne   .Lq_α_190_0
.Lq_α_190_1:            mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n57_binop_α
.Lq_α_190_0:            lea              rdi, [rsp + 16]
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
n57_binop_α:            mov              r11, 58
                        mov              eax, dword ptr [rsp + 1008]
                        mov              ecx, dword ptr [rsp + 992]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lq_α_191_2
                        mov              rax, qword ptr [rsp + 1016]
                        mov              rdx, qword ptr [rsp + 1000]
                        add              rax, rdx
                        mov              qword ptr [rsp + 976], 3
                        mov              qword ptr [rsp + 984], rax;          jmp   .Lq_α_191_7
.Lq_α_191_2:            and              edx, 1;                              jz    .Lq_α_191_0
                        mov              rsi, qword ptr [rsp + 1016]
                        mov              rdi, qword ptr [rsp + 1000]
                        cmp              al, 5;                               je    .Lq_α_191_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lq_α_191_4
.Lq_α_191_3:            movq             xmm0, rsi
.Lq_α_191_4:            cmp              cl, 5;                               je    .Lq_α_191_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lq_α_191_6
.Lq_α_191_5:            movq             xmm1, rdi
.Lq_α_191_6:            addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 976], 5
                        mov              qword ptr [rsp + 984], rax
.Lq_α_191_7:                                                                  jmp   n58_lit_integer_α
.Lq_α_191_0:            mov              rdi, qword ptr [rsp + 1008]
                        mov              rsi, qword ptr [rsp + 1016]
                        mov              rdx, qword ptr [rsp + 992]
                        mov              rcx, qword ptr [rsp + 1000]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n34_to_β
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx;          jmp   n58_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_integer_α:      mov              r11, 59
                        mov              qword ptr [rsp + 1056], 3            # result
                        mov              rax, qword ptr [rip + .Lq_α_192_0]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n59_coerce_numeric_α
.Lq_α_192_0:            .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n59_coerce_numeric_α:   mov              r11, 60
                        mov              eax, dword ptr [rsp + 976]
                        cmp              al, 5;                               je    .Lq_α_194_1
                        cmp              al, 3;                               jne   .Lq_α_194_0
                        mov              eax, dword ptr [rsp + 1056]
                        cmp              al, 3;                               jne   .Lq_α_194_0
.Lq_α_194_1:            mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 968], rax;          jmp   n60_binop_α
.Lq_α_194_0:            lea              rdi, [rsp + 976]
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
n60_binop_α:            mov              r11, 61
                        mov              eax, dword ptr [rsp + 960]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lq_α_195_2
                        mov              rax, qword ptr [rsp + 968]
                        mov              rdx, 1
                        sub              rax, rdx
                        mov              qword ptr [rsp + 944], 3
                        mov              qword ptr [rsp + 952], rax;          jmp   .Lq_α_195_7
.Lq_α_195_2:            and              edx, 1;                              jz    .Lq_α_195_0
                        mov              rsi, qword ptr [rsp + 968]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lq_α_195_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lq_α_195_4
.Lq_α_195_3:            movq             xmm0, rsi
.Lq_α_195_4:            cmp              cl, 5;                               je    .Lq_α_195_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lq_α_195_6
.Lq_α_195_5:            movq             xmm1, rdi
.Lq_α_195_6:            subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 944], 5
                        mov              qword ptr [rsp + 952], rax
.Lq_α_195_7:                                                                  jmp   n61_subscript_α
.Lq_α_195_0:            mov              rdi, qword ptr [rsp + 960]
                        mov              rsi, qword ptr [rsp + 968]
                        mov              rdx, qword ptr [rsp + 1056]
                        mov              rcx, qword ptr [rsp + 1064]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n34_to_β
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx;          jmp   n61_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n61_subscript_α:        mov              r11, 62
                        mov              rdi, qword ptr [rsp + 928]
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
                        cmp              al, 104;                             je    n34_to_β
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx;         jmp   n62_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n62_deref_α:            mov              r11, 63
                        mov              rdi, qword ptr [rsp + 1072]
                        mov              rsi, qword ptr [rsp + 1080]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n34_to_β
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx;         jmp   n63_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n63_binop_test_α:       mov              r11, 64
                        mov              eax, dword ptr [rsp + 560]
                        cmp              al, 112;                             je    .Lq_α_198_0
                        mov              eax, dword ptr [rsp + 1088]
                        cmp              al, 112;                             je    .Lq_α_198_0
                        mov              eax, dword ptr [rsp + 560]
                        cmp              al, 3;                               jne   .Lq_α_198_2
                        mov              eax, dword ptr [rsp + 1088]
                        cmp              al, 3;                               jne   .Lq_α_198_2
.Lq_α_198_1:            mov              rax, qword ptr [rsp + 568]
                        mov              rcx, qword ptr [rsp + 1096]
                        cmp              rax, rcx;                            jne   n34_to_β
                        mov              rcx, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 544], rcx
                        mov              rcx, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 552], rcx;          jmp   n64_var_ref_α
.Lq_α_198_0:            mov              rdi, qword ptr [rsp + 560]
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
                        test             eax, eax;                            je    .Lq_α_198_1
                        cmp              eax, 1;                              je    n34_to_β
                                                                              jmp   n64_var_ref_α
.Lq_α_198_2:            mov              rdi, qword ptr [rsp + 560]
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
n64_var_ref_α:          mov              r11, 65
                        mov              rax, 4294967336
                        mov              rdx, 1879052400                      # q__STATIC__rows
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx;           jmp   n65_var_α
#-----------------------------------------------------------------------------------------------------------------------
n65_var_α:              mov              r11, 66
                        mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 72], rax;           jmp   n66_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n66_subscript_α:        mov              r11, 67
                        mov              rdi, qword ptr [rsp + 48]
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
                        cmp              al, 104;                             je    n34_to_β
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx;           jmp   n67_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n67_var_ref_α:          mov              r11, 68
                        mov              rax, 4294967336
                        mov              rdx, 1879052368                      # q__STATIC__up
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx;          jmp   n68_var_α
#-----------------------------------------------------------------------------------------------------------------------
n68_var_α:              mov              r11, 69
                        mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 240], rax           # result
                        mov              qword ptr [rsp + 248], rdx;          jmp   n69_var_α
#-----------------------------------------------------------------------------------------------------------------------
n69_var_α:              mov              r11, 70
                        mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 264], rax;          jmp   n70_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n70_coerce_numeric_α:   mov              r11, 71
                        mov              eax, dword ptr [rsp + 240]
                        cmp              al, 5;                               je    .Lq_α_210_1
                        cmp              al, 3;                               jne   .Lq_α_210_0
                        mov              eax, dword ptr [rsp + 2096]
                        cmp              al, 3;                               jne   .Lq_α_210_0
.Lq_α_210_1:            mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 232], rax;          jmp   n71_coerce_numeric_α
.Lq_α_210_0:            lea              rdi, [rsp + 240]
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
n71_coerce_numeric_α:   mov              r11, 72
                        mov              eax, dword ptr [rsp + 2096]
                        cmp              al, 5;                               je    .Lq_α_212_1
                        cmp              al, 3;                               jne   .Lq_α_212_0
                        mov              eax, dword ptr [rsp + 240]
                        cmp              al, 3;                               jne   .Lq_α_212_0
.Lq_α_212_1:            mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 216], rax;          jmp   n72_binop_α
.Lq_α_212_0:            lea              rdi, [rsp + 2096]
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
n72_binop_α:            mov              r11, 73
                        mov              eax, dword ptr [rsp + 224]
                        mov              ecx, dword ptr [rsp + 208]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lq_α_213_2
                        mov              rax, qword ptr [rsp + 232]
                        mov              rdx, qword ptr [rsp + 216]
                        add              rax, rdx
                        mov              qword ptr [rsp + 192], 3
                        mov              qword ptr [rsp + 200], rax;          jmp   .Lq_α_213_7
.Lq_α_213_2:            and              edx, 1;                              jz    .Lq_α_213_0
                        mov              rsi, qword ptr [rsp + 232]
                        mov              rdi, qword ptr [rsp + 216]
                        cmp              al, 5;                               je    .Lq_α_213_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lq_α_213_4
.Lq_α_213_3:            movq             xmm0, rsi
.Lq_α_213_4:            cmp              cl, 5;                               je    .Lq_α_213_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lq_α_213_6
.Lq_α_213_5:            movq             xmm1, rdi
.Lq_α_213_6:            addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 192], 5
                        mov              qword ptr [rsp + 200], rax
.Lq_α_213_7:                                                                  jmp   n73_var_α
.Lq_α_213_0:            mov              rdi, qword ptr [rsp + 224]
                        mov              rsi, qword ptr [rsp + 232]
                        mov              rdx, qword ptr [rsp + 208]
                        mov              rcx, qword ptr [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n34_to_β
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n73_var_α
#-----------------------------------------------------------------------------------------------------------------------
n73_var_α:              mov              r11, 74
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 280], rax;          jmp   n74_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n74_coerce_numeric_α:   mov              r11, 75
                        mov              eax, dword ptr [rsp + 192]
                        cmp              al, 5;                               je    .Lq_α_217_1
                        cmp              al, 3;                               jne   .Lq_α_217_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lq_α_217_0
.Lq_α_217_1:            mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 184], rax;          jmp   n75_coerce_numeric_α
.Lq_α_217_0:            lea              rdi, [rsp + 192]
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
n75_coerce_numeric_α:   mov              r11, 76
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 5;                               je    .Lq_α_219_1
                        cmp              al, 3;                               jne   .Lq_α_219_0
                        mov              eax, dword ptr [rsp + 192]
                        cmp              al, 3;                               jne   .Lq_α_219_0
.Lq_α_219_1:            mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 168], rax;          jmp   n76_binop_α
.Lq_α_219_0:            lea              rdi, [rsp + 16]
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
n76_binop_α:            mov              r11, 77
                        mov              eax, dword ptr [rsp + 176]
                        mov              ecx, dword ptr [rsp + 160]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lq_α_220_2
                        mov              rax, qword ptr [rsp + 184]
                        mov              rdx, qword ptr [rsp + 168]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 144], 3
                        mov              qword ptr [rsp + 152], rax;          jmp   .Lq_α_220_7
.Lq_α_220_2:            and              edx, 1;                              jz    .Lq_α_220_0
                        mov              rsi, qword ptr [rsp + 184]
                        mov              rdi, qword ptr [rsp + 168]
                        cmp              al, 5;                               je    .Lq_α_220_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lq_α_220_4
.Lq_α_220_3:            movq             xmm0, rsi
.Lq_α_220_4:            cmp              cl, 5;                               je    .Lq_α_220_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lq_α_220_6
.Lq_α_220_5:            movq             xmm1, rdi
.Lq_α_220_6:            subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 144], 5
                        mov              qword ptr [rsp + 152], rax
.Lq_α_220_7:                                                                  jmp   n77_subscript_α
.Lq_α_220_0:            mov              rdi, qword ptr [rsp + 176]
                        mov              rsi, qword ptr [rsp + 184]
                        mov              rdx, qword ptr [rsp + 160]
                        mov              rcx, qword ptr [rsp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n34_to_β
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx;          jmp   n77_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n77_subscript_α:        mov              r11, 78
                        mov              rdi, qword ptr [rsp + 128]
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
                        cmp              al, 104;                             je    n34_to_β
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n78_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n78_var_ref_α:          mov              r11, 79
                        mov              rax, 4294967336
                        mov              rdx, 1879052384                      # q__STATIC__down
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx;          jmp   n79_var_α
#-----------------------------------------------------------------------------------------------------------------------
n79_var_α:              mov              r11, 80
                        mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 440], rax;          jmp   n80_var_α
#-----------------------------------------------------------------------------------------------------------------------
n80_var_α:              mov              r11, 81
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 456], rax;          jmp   n81_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n81_coerce_numeric_α:   mov              r11, 82
                        mov              eax, dword ptr [rsp + 2096]
                        cmp              al, 5;                               je    .Lq_α_229_1
                        cmp              al, 3;                               jne   .Lq_α_229_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lq_α_229_0
.Lq_α_229_1:            mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 424], rax;          jmp   n82_coerce_numeric_α
.Lq_α_229_0:            lea              rdi, [rsp + 2096]
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
n82_coerce_numeric_α:   mov              r11, 83
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 5;                               je    .Lq_α_231_1
                        cmp              al, 3;                               jne   .Lq_α_231_0
                        mov              eax, dword ptr [rsp + 2096]
                        cmp              al, 3;                               jne   .Lq_α_231_0
.Lq_α_231_1:            mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 408], rax;          jmp   n83_binop_α
.Lq_α_231_0:            lea              rdi, [rsp + 16]
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
n83_binop_α:            mov              r11, 84
                        mov              eax, dword ptr [rsp + 416]
                        mov              ecx, dword ptr [rsp + 400]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lq_α_232_2
                        mov              rax, qword ptr [rsp + 424]
                        mov              rdx, qword ptr [rsp + 408]
                        add              rax, rdx
                        mov              qword ptr [rsp + 384], 3
                        mov              qword ptr [rsp + 392], rax;          jmp   .Lq_α_232_7
.Lq_α_232_2:            and              edx, 1;                              jz    .Lq_α_232_0
                        mov              rsi, qword ptr [rsp + 424]
                        mov              rdi, qword ptr [rsp + 408]
                        cmp              al, 5;                               je    .Lq_α_232_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lq_α_232_4
.Lq_α_232_3:            movq             xmm0, rsi
.Lq_α_232_4:            cmp              cl, 5;                               je    .Lq_α_232_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lq_α_232_6
.Lq_α_232_5:            movq             xmm1, rdi
.Lq_α_232_6:            addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 384], 5
                        mov              qword ptr [rsp + 392], rax
.Lq_α_232_7:                                                                  jmp   n84_lit_integer_α
.Lq_α_232_0:            mov              rdi, qword ptr [rsp + 416]
                        mov              rsi, qword ptr [rsp + 424]
                        mov              rdx, qword ptr [rsp + 400]
                        mov              rcx, qword ptr [rsp + 408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n34_to_β
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n84_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_integer_α:      mov              r11, 85
                        mov              qword ptr [rsp + 464], 3             # result
                        mov              rax, qword ptr [rip + .Lq_α_233_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n85_coerce_numeric_α
.Lq_α_233_0:            .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n85_coerce_numeric_α:   mov              r11, 86
                        mov              eax, dword ptr [rsp + 384]
                        cmp              al, 5;                               je    .Lq_α_235_1
                        cmp              al, 3;                               jne   .Lq_α_235_0
                        mov              eax, dword ptr [rsp + 464]
                        cmp              al, 3;                               jne   .Lq_α_235_0
.Lq_α_235_1:            mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 376], rax;          jmp   n86_binop_α
.Lq_α_235_0:            lea              rdi, [rsp + 384]
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
n86_binop_α:            mov              r11, 87
                        mov              eax, dword ptr [rsp + 368]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lq_α_236_2
                        mov              rax, qword ptr [rsp + 376]
                        mov              rdx, 1
                        sub              rax, rdx
                        mov              qword ptr [rsp + 352], 3
                        mov              qword ptr [rsp + 360], rax;          jmp   .Lq_α_236_7
.Lq_α_236_2:            and              edx, 1;                              jz    .Lq_α_236_0
                        mov              rsi, qword ptr [rsp + 376]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lq_α_236_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lq_α_236_4
.Lq_α_236_3:            movq             xmm0, rsi
.Lq_α_236_4:            cmp              cl, 5;                               je    .Lq_α_236_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lq_α_236_6
.Lq_α_236_5:            movq             xmm1, rdi
.Lq_α_236_6:            subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 352], 5
                        mov              qword ptr [rsp + 360], rax
.Lq_α_236_7:                                                                  jmp   n87_subscript_α
.Lq_α_236_0:            mov              rdi, qword ptr [rsp + 368]
                        mov              rsi, qword ptr [rsp + 376]
                        mov              rdx, qword ptr [rsp + 464]
                        mov              rcx, qword ptr [rsp + 472]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n34_to_β
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n87_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n87_subscript_α:        mov              r11, 88
                        mov              rdi, qword ptr [rsp + 336]
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
                        cmp              al, 104;                             je    n34_to_β
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx;          jmp   n88_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_integer_α:      mov              r11, 89
                        mov              qword ptr [rsp + 528], 3             # result
                        mov              rax, qword ptr [rip + .Lq_α_238_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n89_rev_assign_var_α
.Lq_α_238_0:            .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n89_rev_assign_var_α:   mov              r11, 90
                        mov              rdi, qword ptr [rsp + 480]
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
                        cmp              al, 104;                             je    n34_to_β
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx;          jmp   n90_rev_assign_var_α
n89_rev_assign_var_β:   mov              r11, 90
                        mov              rdi, qword ptr [rsp + 480]
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
n90_rev_assign_var_α:   mov              r11, 91
                        mov              rdi, qword ptr [rsp + 288]
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
                        cmp              al, 104;                             je    n89_rev_assign_var_β
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n91_rev_assign_var_α
n90_rev_assign_var_β:   mov              r11, 91
                        mov              rdi, qword ptr [rsp + 288]
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
n91_rev_assign_var_α:   mov              r11, 92
                        mov              rdi, qword ptr [rsp + 80]
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
                        cmp              al, 104;                             je    n90_rev_assign_var_β
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx;          jmp   n92_conjunction_α
n91_rev_assign_var_β:   mov              r11, 92
                        mov              rdi, qword ptr [rsp + 80]
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
n92_conjunction_α:      mov              r11, 93
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 40], rax;           jmp   n93_bound_α
n92_conjunction_β:      mov              r11, 93;                             jmp   q_ω
#-----------------------------------------------------------------------------------------------------------------------
n93_bound_α:            mov              r11, 94
                        mov              qword ptr [rsp + 1104], rsp;         jmp   n94_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n94_var_ref_α:          mov              r11, 95
                        mov              rax, 4294967336
                        mov              rdx, 1879052304                      # solution
                        mov              qword ptr [rsp + 1392], rax
                        mov              qword ptr [rsp + 1400], rdx;         jmp   n95_var_α
#-----------------------------------------------------------------------------------------------------------------------
n95_var_α:              mov              r11, 96
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1408], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1416], rax;         jmp   n96_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n96_subscript_α:        mov              r11, 97
                        mov              rdi, qword ptr [rsp + 1392]
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
                        cmp              al, 104;                             je    n99_disjunction_α
                        mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx;         jmp   n97_var_α
#-----------------------------------------------------------------------------------------------------------------------
n97_var_α:              mov              r11, 98
                        mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 1464], rax;         jmp   n98_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n98_assign_var_α:       mov              r11, 99
                        mov              rdi, qword ptr [rsp + 1424]
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
                        cmp              al, 104;                             je    n99_disjunction_α
                        mov              qword ptr [rsp + 1440], rax
                        mov              qword ptr [rsp + 1448], rdx;         jmp   n99_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n99_disjunction_α:      mov              r11, 100
                        mov              qword ptr [rsp + 1168], 0
                        mov              qword ptr [rsp + 1176], 0
                        mov              dword ptr [rsp + 1184], 0;           jmp   n00001_var_α
n99_disjunction_as:     mov              r11, 100
                        mov              eax, dword ptr [rsp + 1184]
                        cmp              eax, 0;                              jne   .Lq_α_254_0
                        mov              rax, qword ptr [rsp + 1200]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 1208]
                        mov              qword ptr [rsp + 1176], rax;         jmp   n00002_conjunction_α
.Lq_α_254_0:            cmp              eax, 1;                              jne   .Lq_α_254_1
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 1176], rax;         jmp   n00002_conjunction_α
.Lq_α_254_1:                                                                  jmp   n00002_conjunction_α
n99_disjunction_β:      mov              r11, 100
                        mov              eax, dword ptr [rsp + 1184]
                        cmp              eax, 0;                              je    n00003_unmark_α
                                                                              jmp   n00003_unmark_α
n99_disjunction_af:     mov              r11, 100
                        add              dword ptr [rsp + 1184], 1
                        mov              eax, dword ptr [rsp + 1184]
                        cmp              eax, 1;                              je    n00004_var_α
                                                                              jmp   n00003_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00002_conjunction_α:     mov              r11, 101
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n00003_unmark_α
n00002_conjunction_β:     mov              r11, 101;                            jmp   n00003_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00004_var_α:             mov              r11, 102
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1360], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1368], rax;         jmp   n00005_lit_integer_α
n00004_var_β:             mov              r11, 102;                            jmp   n00003_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00005_lit_integer_α:     mov              r11, 103
                        mov              qword ptr [rsp + 1376], 3            # result
                        mov              rax, qword ptr [rip + .Lq_α_258_0]
                        mov              qword ptr [rsp + 1384], rax;         jmp   n00006_coerce_numeric_α
.Lq_α_258_0:            .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00006_coerce_numeric_α:  mov              r11, 104
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 5;                               je    .Lq_α_260_1
                        cmp              al, 3;                               jne   .Lq_α_260_0
                        mov              eax, dword ptr [rsp + 1376]
                        cmp              al, 3;                               jne   .Lq_α_260_0
.Lq_α_260_1:            mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n00007_binop_α
.Lq_α_260_0:            lea              rdi, [rsp + 16]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00007_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00007_binop_α:           mov              r11, 105
                        mov              eax, dword ptr [rsp + 1344]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lq_α_261_2
                        mov              rax, qword ptr [rsp + 1352]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 1328], 3
                        mov              qword ptr [rsp + 1336], rax;         jmp   .Lq_α_261_7
.Lq_α_261_2:            and              edx, 1;                              jz    .Lq_α_261_0
                        mov              rsi, qword ptr [rsp + 1352]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lq_α_261_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lq_α_261_4
.Lq_α_261_3:            movq             xmm0, rsi
.Lq_α_261_4:            cmp              cl, 5;                               je    .Lq_α_261_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lq_α_261_6
.Lq_α_261_5:            movq             xmm1, rdi
.Lq_α_261_6:            addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1328], 5
                        mov              qword ptr [rsp + 1336], rax
.Lq_α_261_7:                                                                  jmp   n00008_call_proc_staged_α
.Lq_α_261_0:            mov              rdi, qword ptr [rsp + 1344]
                        mov              rsi, qword ptr [rsp + 1352]
                        mov              rdx, qword ptr [rsp + 1376]
                        mov              rcx, qword ptr [rsp + 1384]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00003_unmark_α
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx;         jmp   n00008_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00008_call_proc_staged_α:
                        mov              r11, 106
                        lea              rsi, [rsp + 1328]
                        call             q_dcα;                               jmp   .Lq_α_263_2
.Lq_α_263_2:            mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lq_α_263_29
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
.Lq_α_263_29:           mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx
                        cmp              al, 104;                             je    n00003_unmark_α
                                                                              jmp   n99_disjunction_as
n00008_call_proc_staged_β:
                        mov              r11, 106;                            jmp   n00003_unmark_α
.Lq_β_263_0:            .quad            .Lq_β_263_0_s
.Lq_β_263_0_s:          .string          "q"
#-----------------------------------------------------------------------------------------------------------------------
n00001_var_α:             mov              r11, 107
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n00009_var_α
n00001_var_β:             mov              r11, 107;                            jmp   n99_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00009_var_α:             mov              r11, 108
                        mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 1264], rax          # result
                        mov              qword ptr [rsp + 1272], rdx;         jmp   n00010_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n00010_binop_test_α:      mov              r11, 109
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 112;                             je    .Lq_α_267_0
                        mov              eax, dword ptr [rsp + 1264]
                        cmp              al, 112;                             je    .Lq_α_267_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lq_α_267_2
                        mov              eax, dword ptr [rsp + 1264]
                        cmp              al, 3;                               jne   .Lq_α_267_2
.Lq_α_267_1:            mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 1272]
                        cmp              rax, rcx;                            jne   n99_disjunction_af
                        mov              rcx, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 1232], rcx
                        mov              rcx, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 1240], rcx;         jmp   n00011_call_proc_staged_α
.Lq_α_267_0:            mov              rdi, qword ptr [rsp + 16]
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
                        test             eax, eax;                            je    .Lq_α_267_1
                        cmp              eax, 1;                              je    n99_disjunction_af
                                                                              jmp   n00011_call_proc_staged_α
.Lq_α_267_2:            mov              rdi, qword ptr [rsp + 16]
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
                        mov              qword ptr [rsp + 1240], rax;         jmp   n00011_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00011_call_proc_staged_α:
                        mov              r11, 110
                        call             show_dcα;                            jmp   .Lq_α_269_2
.Lq_α_269_2:            mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lq_α_269_29
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
.Lq_α_269_29:           mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx
                        cmp              al, 104;                             je    n00003_unmark_α
                                                                              jmp   n99_disjunction_as
n00011_call_proc_staged_β:
                        mov              r11, 110;                            jmp   n00003_unmark_α
.Lq_β_269_0:            .quad            .Lq_β_269_0_s
.Lq_β_269_0_s:          .string          "show"
#-----------------------------------------------------------------------------------------------------------------------
n00003_unmark_α:          mov              r11, 111
                        mov              rsp, qword ptr [rsp + 1104];         jmp   n91_rev_assign_var_β
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
                        add              rsp, 2192;                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
q_ω:
                        add              rsp, 2192;                           jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
q_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        push             r12
                        push             rsi
                        mov              rax, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        lea              rcx, [rip + .Lq_α_272_3]
                        push             rcx
                        lea              rcx, [rip + .Lq_α_272_2]
                        push             rcx;                                 jmp   FN__q
.Lq_α_272_2:            add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lq_α_272_3:            add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__show:
                        sub              rsp, 1280
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
show_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00012_disjunction_α:     mov              r11, 112
                        mov              qword ptr [rsp + 816], 0
                        mov              qword ptr [rsp + 824], 0
                        mov              dword ptr [rsp + 832], 0;            jmp   n00013_var_ref_α
n00012_disjunction_as:    mov              r11, 112
                        mov              eax, dword ptr [rsp + 832]
                        cmp              eax, 0;                              jne   .Lshow_α_329_0
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 824], rax;          jmp   n00014_lit_string_α
.Lshow_α_329_0:                                                               jmp   n00014_lit_string_α
n00012_disjunction_β:     mov              r11, 112
                        mov              eax, dword ptr [rsp + 832];          jmp   n00014_lit_string_α
n00012_disjunction_af:    mov              r11, 112
                        add              dword ptr [rsp + 832], 1
                        mov              eax, dword ptr [rsp + 832];          jmp   n00014_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00013_var_ref_α:         mov              r11, 113
                        mov              rax, 4294967336
                        mov              rdx, 1879052480                      # show__INITFLAG__0
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx;         jmp   n00015_nulltest_var_α
n00013_var_ref_β:         mov              r11, 113;                            jmp   n00012_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00015_nulltest_var_α:    mov              r11, 114
                        mov              eax, dword ptr [rsp + 1168]
                        cmp              al, 104;                             je    n00012_disjunction_af
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
                        cmp              al, 104;                             je    n00012_disjunction_af
                        cmp              eax, 0;                              jne   n00012_disjunction_af
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 1192], rax;         jmp   n00016_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00016_lit_integer_α:     mov              r11, 115
                        mov              qword ptr [rsp + 1216], 3            # result
                        mov              rax, qword ptr [rip + .Lshow_α_333_0]
                        mov              qword ptr [rsp + 1224], rax;         jmp   n00017_assign_var_α
.Lshow_α_333_0:         .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00017_assign_var_α:      mov              r11, 116
                        mov              rdi, qword ptr [rsp + 1184]
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
                        cmp              al, 104;                             je    n00012_disjunction_af
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx;         jmp   n00018_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00018_lit_integer_α:     mov              r11, 117
                        mov              qword ptr [rsp + 1152], 3            # result
                        mov              rax, qword ptr [rip + .Lshow_α_335_0]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n00019_assign_α
.Lshow_α_335_0:         .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00019_assign_α:          mov              r11, 118
                        mov              rax, qword ptr [rsp + 1152]
                        mov              rdx, qword ptr [rsp + 1160]
                        mov              qword ptr [r9 + 144], rax            # show__STATIC__count
                        mov              qword ptr [r9 + 152], rdx;           jmp   n00020_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00020_lit_string_α:      mov              r11, 119
                        mov              qword ptr [rsp + 1104], 2            # result
                        mov              dword ptr [rsp + 1108], 4
                        mov              rax, qword ptr [rip + .Lshow_α_337_0]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n00021_var_α
.Lshow_α_337_0:         .quad            .Lshow_α_337_0_s
.Lshow_α_337_0_s:       .string          "|   "
#-----------------------------------------------------------------------------------------------------------------------
n00021_var_α:             mov              r11, 120
                        mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 1120], rax          # result
                        mov              qword ptr [rsp + 1128], rdx;         jmp   n00022_call_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00022_call_icon_α:       mov              r11, 121
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
                        mov              ecx, 262299
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        cmp              al, 104;                             je    n00023_lit_string_α
                                                                              jmp   n00024_lit_string_α
n00022_call_icon_β:       mov              r11, 121;                            jmp   n00023_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00024_lit_string_α:      mov              r11, 122
                        mov              qword ptr [rsp + 1136], 2            # result
                        mov              dword ptr [rsp + 1140], 1
                        mov              rax, qword ptr [rip + .Lshow_α_341_0]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n00025_binop_α
.Lshow_α_341_0:         .quad            .Lshow_α_341_0_s
.Lshow_α_341_0_s:       .string          "|"
#-----------------------------------------------------------------------------------------------------------------------
n00025_binop_α:           mov              r11, 123
                        mov              rdi, qword ptr [rsp + 1040]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00026_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00026_assign_α:          mov              r11, 124
                        mov              rax, qword ptr [rsp + 1024]
                        mov              rdx, qword ptr [rsp + 1032]
                        mov              qword ptr [r9 + 160], rax            # show__STATIC__line
                        mov              qword ptr [r9 + 168], rdx;           jmp   n00023_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00023_lit_string_α:      mov              r11, 125
                        mov              qword ptr [rsp + 960], 2             # result
                        mov              dword ptr [rsp + 964], 4
                        mov              rax, qword ptr [rip + .Lshow_α_344_0]
                        mov              qword ptr [rsp + 968], rax;          jmp   n00027_var_α
.Lshow_α_344_0:         .quad            .Lshow_α_344_0_s
.Lshow_α_344_0_s:       .string          "----"
#-----------------------------------------------------------------------------------------------------------------------
n00027_var_α:             mov              r11, 126
                        mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 976], rax           # result
                        mov              qword ptr [rsp + 984], rdx;          jmp   n00028_call_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00028_call_icon_α:       mov              r11, 127
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
                        mov              ecx, 262299
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                        cmp              al, 104;                             je    n00014_lit_string_α
                                                                              jmp   n00029_lit_string_α
n00028_call_icon_β:       mov              r11, 127;                            jmp   n00014_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00029_lit_string_α:      mov              r11, 128
                        mov              qword ptr [rsp + 992], 2             # result
                        mov              dword ptr [rsp + 996], 1
                        mov              rax, qword ptr [rip + .Lshow_α_348_0]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n00030_binop_α
.Lshow_α_348_0:         .quad            .Lshow_α_348_0_s
.Lshow_α_348_0_s:       .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00030_binop_α:           mov              r11, 129
                        mov              rdi, qword ptr [rsp + 896]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00031_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00031_assign_α:          mov              r11, 130
                        mov              rax, qword ptr [rsp + 880]
                        mov              rdx, qword ptr [rsp + 888]
                        mov              qword ptr [r9 + 176], rax            # show__STATIC__border
                        mov              qword ptr [r9 + 184], rdx
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx;          jmp   n00032_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00032_conjunction_α:     mov              r11, 131
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 856], rax;          jmp   n00012_disjunction_as
n00032_conjunction_β:     mov              r11, 131;                            jmp   n00014_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00014_lit_string_α:      mov              r11, 132
                        mov              qword ptr [rsp + 720], 2             # result
                        mov              dword ptr [rsp + 724], 10
                        mov              rax, qword ptr [rip + .Lshow_α_352_0]
                        mov              qword ptr [rsp + 728], rax;          jmp   n00033_var_α
.Lshow_α_352_0:         .quad            .Lshow_α_352_0_s
.Lshow_α_352_0_s:       .string          "solution: "
#-----------------------------------------------------------------------------------------------------------------------
n00033_var_α:             mov              r11, 133
                        mov              rax, qword ptr [r9 + 144]            # show__STATIC__count
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 784], rax           # result
                        mov              qword ptr [rsp + 792], rdx;          jmp   n00034_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00034_lit_integer_α:     mov              r11, 134
                        mov              qword ptr [rsp + 800], 3             # result
                        mov              rax, qword ptr [rip + .Lshow_α_354_0]
                        mov              qword ptr [rsp + 808], rax;          jmp   n00035_coerce_numeric_α
.Lshow_α_354_0:         .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00035_coerce_numeric_α:  mov              r11, 135
                        mov              eax, dword ptr [rsp + 784]
                        cmp              al, 5;                               je    .Lshow_α_356_1
                        cmp              al, 3;                               jne   .Lshow_α_356_0
                        mov              eax, dword ptr [rsp + 800]
                        cmp              al, 3;                               jne   .Lshow_α_356_0
.Lshow_α_356_1:         mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 776], rax;          jmp   n00036_binop_α
.Lshow_α_356_0:         lea              rdi, [rsp + 784]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00036_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00036_binop_α:           mov              r11, 136
                        mov              eax, dword ptr [rsp + 768]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lshow_α_357_2
                        mov              rax, qword ptr [rsp + 776]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 752], 3
                        mov              qword ptr [rsp + 760], rax;          jmp   .Lshow_α_357_7
.Lshow_α_357_2:         and              edx, 1;                              jz    .Lshow_α_357_0
                        mov              rsi, qword ptr [rsp + 776]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lshow_α_357_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lshow_α_357_4
.Lshow_α_357_3:         movq             xmm0, rsi
.Lshow_α_357_4:         cmp              cl, 5;                               je    .Lshow_α_357_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lshow_α_357_6
.Lshow_α_357_5:         movq             xmm1, rdi
.Lshow_α_357_6:         addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 752], 5
                        mov              qword ptr [rsp + 760], rax
.Lshow_α_357_7:                                                               jmp   n00037_assign_α
.Lshow_α_357_0:         mov              rdi, qword ptr [rsp + 768]
                        mov              rsi, qword ptr [rsp + 776]
                        mov              rdx, qword ptr [rsp + 800]
                        mov              rcx, qword ptr [rsp + 808]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00038_lit_string_α
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx;          jmp   n00037_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00037_assign_α:          mov              r11, 137
                        mov              rax, qword ptr [rsp + 752]
                        mov              rdx, qword ptr [rsp + 760]
                        mov              qword ptr [r9 + 144], rax            # show__STATIC__count
                        mov              qword ptr [r9 + 152], rdx
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx;          jmp   n00039_call_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00039_call_icon_α:       mov              r11, 138
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
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                        cmp              al, 104;                             je    n00038_lit_string_α
                                                                              jmp   n00038_lit_string_α
n00039_call_icon_β:       mov              r11, 138;                            jmp   n00038_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00038_lit_string_α:      mov              r11, 139
                        mov              qword ptr [rsp + 624], 2             # result
                        mov              dword ptr [rsp + 628], 2
                        mov              rax, qword ptr [rip + .Lshow_α_361_0]
                        mov              qword ptr [rsp + 632], rax;          jmp   n00040_var_α
.Lshow_α_361_0:         .quad            .Lshow_α_361_0_s
.Lshow_α_361_0_s:       .string          "  "
#-----------------------------------------------------------------------------------------------------------------------
n00040_var_α:             mov              r11, 140
                        mov              rax, qword ptr [r9 + 176]            # show__STATIC__border
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 640], rax           # result
                        mov              qword ptr [rsp + 648], rdx;          jmp   n00041_call_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00041_call_icon_α:       mov              r11, 141
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
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        cmp              al, 104;                             je    n00042_var_ref_α
                                                                              jmp   n00042_var_ref_α
n00041_call_icon_β:       mov              r11, 141;                            jmp   n00042_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00042_var_ref_α:         mov              r11, 142
                        mov              rax, 4294967336
                        mov              rdx, 1879052448                      # show__STATIC__line
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx;           jmp   n00043_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00043_lit_integer_α:     mov              r11, 143
                        mov              qword ptr [rsp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Lshow_α_367_0]
                        mov              qword ptr [rsp + 120], rax;          jmp   n00044_var_α
.Lshow_α_367_0:         .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n00044_var_α:             mov              r11, 144
                        mov              rax, qword ptr [r9 + 16]             # solution
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 192], rax           # result
                        mov              qword ptr [rsp + 200], rdx;          jmp   n00045_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n00045_iterate_α:         mov              r11, 145
                        mov              qword ptr [rsp + 176], 0
.Lshow_α_370_0:         mov              rdi, qword ptr [rsp + 192]
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
                        cmp              al, 104;                             je    n00046_call_icon_α
                                                                              jmp   n00047_lit_integer_α
n00045_iterate_β:         mov              r11, 145
                        inc              qword ptr [rsp + 176];               jmp   .Lshow_α_370_0
#-----------------------------------------------------------------------------------------------------------------------
n00047_lit_integer_α:     mov              r11, 146
                        mov              qword ptr [rsp + 208], 3             # result
                        mov              rax, qword ptr [rip + .Lshow_α_371_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n00048_coerce_numeric_α
.Lshow_α_371_0:         .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00048_coerce_numeric_α:  mov              r11, 147
                        mov              eax, dword ptr [rsp + 160]
                        cmp              al, 5;                               je    .Lshow_α_373_1
                        cmp              al, 3;                               jne   .Lshow_α_373_0
                        mov              eax, dword ptr [rsp + 208]
                        cmp              al, 3;                               jne   .Lshow_α_373_0
.Lshow_α_373_1:         mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 152], rax;          jmp   n00049_binop_α
.Lshow_α_373_0:         lea              rdi, [rsp + 160]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00049_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00049_binop_α:           mov              r11, 148
                        mov              eax, dword ptr [rsp + 144]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lshow_α_374_2
                        mov              rax, qword ptr [rsp + 152]
                        mov              rdx, 1
                        sub              rax, rdx
                        mov              qword ptr [rsp + 128], 3
                        mov              qword ptr [rsp + 136], rax;          jmp   .Lshow_α_374_7
.Lshow_α_374_2:         and              edx, 1;                              jz    .Lshow_α_374_0
                        mov              rsi, qword ptr [rsp + 152]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lshow_α_374_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lshow_α_374_4
.Lshow_α_374_3:         movq             xmm0, rsi
.Lshow_α_374_4:         cmp              cl, 5;                               je    .Lshow_α_374_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lshow_α_374_6
.Lshow_α_374_5:         movq             xmm1, rdi
.Lshow_α_374_6:         subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 128], 5
                        mov              qword ptr [rsp + 136], rax
.Lshow_α_374_7:                                                               jmp   n00050_coerce_numeric_α
.Lshow_α_374_0:         mov              rdi, qword ptr [rsp + 144]
                        mov              rsi, qword ptr [rsp + 152]
                        mov              rdx, qword ptr [rsp + 208]
                        mov              rcx, qword ptr [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00046_call_icon_α
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx;          jmp   n00050_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n00050_coerce_numeric_α:  mov              r11, 149
                        mov              eax, dword ptr [rsp + 128]
                        cmp              al, 5;                               je    .Lshow_α_376_1
                        cmp              al, 3;                               jne   .Lshow_α_376_0
                        mov              eax, dword ptr [rsp + 112]
                        cmp              al, 3;                               jne   .Lshow_α_376_0
.Lshow_α_376_1:         mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 104], rax;          jmp   n00051_binop_α
.Lshow_α_376_0:         lea              rdi, [rsp + 128]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00051_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00051_binop_α:           mov              r11, 150
                        mov              eax, 3
                        mov              ecx, dword ptr [rsp + 96]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lshow_α_377_2
                        mov              rax, 4
                        mov              rdx, qword ptr [rsp + 104]
                        imul             rax, rdx
                        mov              qword ptr [rsp + 80], 3
                        mov              qword ptr [rsp + 88], rax;           jmp   .Lshow_α_377_7
.Lshow_α_377_2:         and              edx, 1;                              jz    .Lshow_α_377_0
                        mov              rsi, 4
                        mov              rdi, qword ptr [rsp + 104]
                        cmp              al, 5;                               je    .Lshow_α_377_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lshow_α_377_4
.Lshow_α_377_3:         movq             xmm0, rsi
.Lshow_α_377_4:         cmp              cl, 5;                               je    .Lshow_α_377_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lshow_α_377_6
.Lshow_α_377_5:         movq             xmm1, rdi
.Lshow_α_377_6:         mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 80], 5
                        mov              qword ptr [rsp + 88], rax
.Lshow_α_377_7:                                                               jmp   n00052_lit_integer_α
.Lshow_α_377_0:         mov              rdi, qword ptr [rsp + 112]
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 96]
                        mov              rcx, qword ptr [rsp + 104]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00046_call_icon_α
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx;           jmp   n00052_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00052_lit_integer_α:     mov              r11, 151
                        mov              qword ptr [rsp + 224], 3             # result
                        mov              rax, qword ptr [rip + .Lshow_α_378_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n00053_coerce_numeric_α
.Lshow_α_378_0:         .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n00053_coerce_numeric_α:  mov              r11, 152
                        mov              eax, dword ptr [rsp + 80]
                        cmp              al, 5;                               je    .Lshow_α_380_1
                        cmp              al, 3;                               jne   .Lshow_α_380_0
                        mov              eax, dword ptr [rsp + 224]
                        cmp              al, 3;                               jne   .Lshow_α_380_0
.Lshow_α_380_1:         mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 72], rax;           jmp   n00054_binop_α
.Lshow_α_380_0:         lea              rdi, [rsp + 80]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00054_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00054_binop_α:           mov              r11, 153
                        mov              eax, dword ptr [rsp + 64]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lshow_α_381_2
                        mov              rax, qword ptr [rsp + 72]
                        mov              rdx, 3
                        add              rax, rdx
                        mov              qword ptr [rsp + 48], 3
                        mov              qword ptr [rsp + 56], rax;           jmp   .Lshow_α_381_7
.Lshow_α_381_2:         and              edx, 1;                              jz    .Lshow_α_381_0
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdi, 3
                        cmp              al, 5;                               je    .Lshow_α_381_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lshow_α_381_4
.Lshow_α_381_3:         movq             xmm0, rsi
.Lshow_α_381_4:         cmp              cl, 5;                               je    .Lshow_α_381_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lshow_α_381_6
.Lshow_α_381_5:         movq             xmm1, rdi
.Lshow_α_381_6:         addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 48], 5
                        mov              qword ptr [rsp + 56], rax
.Lshow_α_381_7:                                                               jmp   n00055_subscript_α
.Lshow_α_381_0:         mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 224]
                        mov              rcx, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00046_call_icon_α
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx;           jmp   n00055_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00055_subscript_α:       mov              r11, 154
                        mov              rdi, qword ptr [rsp + 32]
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
                        cmp              al, 104;                             je    n00045_iterate_β
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n00056_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00056_lit_string_α:      mov              r11, 155
                        mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], 1
                        mov              rax, qword ptr [rip + .Lshow_α_383_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n00057_rev_assign_var_α
.Lshow_α_383_0:         .quad            .Lshow_α_383_0_s
.Lshow_α_383_0_s:       .string          "Q"
#-----------------------------------------------------------------------------------------------------------------------
n00057_rev_assign_var_α:  mov              r11, 156
                        mov              rdi, qword ptr [rsp + 240]
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
                        cmp              al, 104;                             je    n00045_iterate_β
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n00058_bound_α
n00057_rev_assign_var_β:  mov              r11, 156
                        mov              rdi, qword ptr [rsp + 240]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00045_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n00058_bound_α:           mov              r11, 157
                        mov              qword ptr [rsp + 304], rsp;          jmp   n00059_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00059_lit_string_α:      mov              r11, 158
                        mov              qword ptr [rsp + 528], 2             # result
                        mov              dword ptr [rsp + 532], 2
                        mov              rax, qword ptr [rip + .Lshow_α_387_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n00060_var_α
.Lshow_α_387_0:         .quad            .Lshow_α_387_0_s
.Lshow_α_387_0_s:       .string          "  "
#-----------------------------------------------------------------------------------------------------------------------
n00060_var_α:             mov              r11, 159
                        mov              rax, qword ptr [r9 + 160]            # show__STATIC__line
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 544], rax           # result
                        mov              qword ptr [rsp + 552], rdx;          jmp   n00061_call_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00061_call_icon_α:       mov              r11, 160
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
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              al, 104;                             je    n00062_lit_string_α
                                                                              jmp   n00062_lit_string_α
n00061_call_icon_β:       mov              r11, 160;                            jmp   n00062_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00062_lit_string_α:      mov              r11, 161
                        mov              qword ptr [rsp + 432], 2             # result
                        mov              dword ptr [rsp + 436], 2
                        mov              rax, qword ptr [rip + .Lshow_α_391_0]
                        mov              qword ptr [rsp + 440], rax;          jmp   n00063_var_α
.Lshow_α_391_0:         .quad            .Lshow_α_391_0_s
.Lshow_α_391_0_s:       .string          "  "
#-----------------------------------------------------------------------------------------------------------------------
n00063_var_α:             mov              r11, 162
                        mov              rax, qword ptr [r9 + 176]            # show__STATIC__border
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 448], rax           # result
                        mov              qword ptr [rsp + 456], rdx;          jmp   n00064_call_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00064_call_icon_α:       mov              r11, 163
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
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              al, 104;                             je    n00065_unmark_α
                                                                              jmp   n00066_conjunction_α
n00064_call_icon_β:       mov              r11, 163;                            jmp   n00065_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00066_conjunction_α:     mov              r11, 164
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 360], rax;          jmp   n00065_unmark_α
n00066_conjunction_β:     mov              r11, 164;                            jmp   n00065_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00065_unmark_α:          mov              r11, 165
                        mov              rsp, qword ptr [rsp + 304];          jmp   n00057_rev_assign_var_β
#-----------------------------------------------------------------------------------------------------------------------
n00046_call_icon_α:       mov              r11, 166
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
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    show_ω
                                                                              jmp   show_γ
n00046_call_icon_β:       mov              r11, 166;                            jmp   show_ω
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
                        add              rsp, 1280;                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
show_ω:
                        add              rsp, 1280;                           jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
show_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .Lshow_α_400_3]
                        push             rcx
                        lea              rcx, [rip + .Lshow_α_400_2]
                        push             rcx;                                 jmp   FN__show
.Lshow_α_400_2:         add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lshow_α_400_3:         add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__options:
                        sub              rsp, 2928
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
n00067_var_ref_α:         mov              r11, 167
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 2496], rax
                        mov              qword ptr [rsp + 2504], rdx;         jmp   n00068_nulltest_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00068_nulltest_var_α:    mov              r11, 168
                        mov              eax, dword ptr [rsp + 2496]
                        cmp              al, 104;                             je    n00069_call_icon_α
                        mov              rdi, qword ptr [rsp + 2496]
                        mov              rsi, qword ptr [rsp + 2504]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00069_call_icon_α
                        cmp              eax, 0;                              jne   n00069_call_icon_α
                        mov              rax, qword ptr [rsp + 2496]
                        mov              qword ptr [rsp + 2512], rax
                        mov              rax, qword ptr [rsp + 2504]
                        mov              qword ptr [rsp + 2520], rax;         jmp   n00070_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n00070_lit_charset_α:     mov              r11, 169
                        mov              qword ptr [rsp + 2592], 2            # result
                        mov              dword ptr [rsp + 2596], -1
                        mov              rax, qword ptr [rip + .Loptions_α_510_0]
                        mov              qword ptr [rsp + 2600], rax;         jmp   n00071_call_icon_α
.Loptions_α_510_0:      .quad            .Loptions_α_510_0_s
.Loptions_α_510_0_s:    .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n00071_call_icon_α:       mov              r11, 170
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393381
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2544], rax
                        mov              qword ptr [rsp + 2552], rdx
                        cmp              al, 104;                             je    n00069_call_icon_α
                                                                              jmp   n00072_assign_var_α
n00071_call_icon_β:       mov              r11, 170;                            jmp   n00069_call_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00072_assign_var_α:      mov              r11, 171
                        mov              rdi, qword ptr [rsp + 2512]
                        mov              rsi, qword ptr [rsp + 2520]
                        mov              rdx, qword ptr [rsp + 2544]
                        mov              rcx, qword ptr [rsp + 2552]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00069_call_icon_α
                        mov              qword ptr [rsp + 2528], rax
                        mov              qword ptr [rsp + 2536], rdx;         jmp   n00069_call_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00069_call_icon_α:       mov              r11, 172
                        .section         .rodata
.Lrkfn515:              .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn515]
                        lea              rsi, [rsp + 2480]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327847
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2464], rax
                        mov              qword ptr [rsp + 2472], rdx
                        cmp              al, 104;                             je    n00073_make_list_α
                                                                              jmp   n00074_assign_α
n00069_call_icon_β:       mov              r11, 172;                            jmp   n00073_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00074_assign_α:          mov              r11, 173
                        mov              rax, qword ptr [rsp + 2464]
                        mov              rdx, qword ptr [rsp + 2472]
                        mov              qword ptr [rsp + 2608], rax
                        mov              qword ptr [rsp + 2616], rdx;         jmp   n00073_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00073_make_list_α:       mov              r11, 174
                        lea              rdi, [rsp + 2464]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2448], rax
                        mov              qword ptr [rsp + 2456], rdx;         jmp   n00075_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00075_assign_α:          mov              r11, 175
                        mov              rax, qword ptr [rsp + 2448]
                        mov              rdx, qword ptr [rsp + 2456]
                        mov              qword ptr [rsp + 2624], rax
                        mov              qword ptr [rsp + 2632], rdx;         jmp   n00076_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00076_var_α:             mov              r11, 176
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 280], rax;          jmp   n00077_call_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00077_call_icon_α:       mov              r11, 177
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196728
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              al, 104;                             je    n00078_var_α
                                                                              jmp   n00079_assign_α
n00077_call_icon_β:       mov              r11, 177;                            jmp   n00078_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00079_assign_α:          mov              r11, 178
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 2640], rax
                        mov              qword ptr [rsp + 2648], rdx;         jmp   n00080_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00080_var_α:             mov              r11, 179
                        mov              rax, qword ptr [rsp + 2640]
                        mov              qword ptr [rsp + 2432], rax
                        mov              rax, qword ptr [rsp + 2648]
                        mov              qword ptr [rsp + 2440], rax;         jmp   n00081_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n00081_scan_enter_α:      mov              r11, 180
                        mov              qword ptr [rsp + 304], r13
                        mov              qword ptr [rsp + 312], r14
                        mov              qword ptr [rsp + 320], r15
                        mov              rdi, qword ptr [rsp + 2432]
                        mov              rsi, qword ptr [rsp + 2440]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n00082_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00082_disjunction_α:     mov              r11, 181
                        mov              qword ptr [rsp + 368], 0
                        mov              qword ptr [rsp + 376], 0
                        mov              dword ptr [rsp + 384], 0;            jmp   n00083_lit_string_α
n00082_disjunction_as:    mov              r11, 181
                        mov              eax, dword ptr [rsp + 384]
                        cmp              eax, 0;                              jne   .Loptions_α_530_0
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 376], rax;          jmp   n00084_scan_α
.Loptions_α_530_0:      cmp              eax, 1;                              jne   .Loptions_α_530_1
                        mov              rax, qword ptr [rsp + 2336]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 2344]
                        mov              qword ptr [rsp + 376], rax;          jmp   n00084_scan_α
.Loptions_α_530_1:                                                            jmp   n00084_scan_α
n00082_disjunction_β:     mov              r11, 181
                        mov              eax, dword ptr [rsp + 384]
                        cmp              eax, 0;                              je    n00085_disjunction_β
                                                                              jmp   n00086_scan_α
n00082_disjunction_af:    mov              r11, 181
                        add              dword ptr [rsp + 384], 1
                        mov              eax, dword ptr [rsp + 384]
                        cmp              eax, 1;                              je    n00087_var_α
                                                                              jmp   n00086_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00084_scan_α:            mov              r11, 182
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 344], rax
                        mov              rdi, qword ptr [rsp + 304]
                        mov              rsi, qword ptr [rsp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 304]
                        mov              r14, qword ptr [rsp + 312]
                        mov              r15, qword ptr [rsp + 320];          jmp   n00076_var_α
n00084_scan_β:            mov              r11, 182
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_reenter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax;                            jmp   n00082_disjunction_β
                                                                              jmp   n00076_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00088_conjunction_α:     mov              r11, 183;                            jmp   n00082_disjunction_as
n00088_conjunction_β:     mov              r11, 183;                            jmp   n00086_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00087_var_α:             mov              r11, 184
                        mov              rax, qword ptr [rsp + 2624]
                        mov              qword ptr [rsp + 2400], rax
                        mov              rax, qword ptr [rsp + 2632]
                        mov              qword ptr [rsp + 2408], rax;         jmp   n00089_var_α
n00087_var_β:             mov              r11, 184;                            jmp   n00086_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00089_var_α:             mov              r11, 185
                        mov              rax, qword ptr [rsp + 2640]
                        mov              qword ptr [rsp + 2416], rax
                        mov              rax, qword ptr [rsp + 2648]
                        mov              qword ptr [rsp + 2424], rax;         jmp   n00090_call_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00090_call_icon_α:       mov              r11, 186
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196758
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2336], rax
                        mov              qword ptr [rsp + 2344], rdx
                        cmp              al, 104;                             je    n00086_scan_α
                                                                              jmp   n00082_disjunction_as
n00090_call_icon_β:       mov              r11, 186;                            jmp   n00086_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00083_lit_string_α:      mov              r11, 187
                        mov              qword ptr [rsp + 2320], 2            # result
                        mov              dword ptr [rsp + 2324], 1
                        mov              rax, qword ptr [rip + .Loptions_α_540_0]
                        mov              qword ptr [rsp + 2328], rax;         jmp   n00091_scan_match_α
n00083_lit_string_β:      mov              r11, 187;                            jmp   n00082_disjunction_af
.Loptions_α_540_0:      .quad            .Loptions_α_540_0_s
.Loptions_α_540_0_s:    .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00091_scan_match_α:      mov              r11, 188
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    n00082_disjunction_af
                        mov              rdi, qword ptr [rip + .Loptions_α_542_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             memcmp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r12
                        test             eax, eax;                            jne   n00082_disjunction_af
                        mov              qword ptr [rsp + 2288], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rsp + 2296], rax;         jmp   n00092_scan_tab_α
.Loptions_α_542_0:      .quad            .Loptions_α_542_0_s
.Loptions_α_542_0_s:    .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00092_scan_tab_α:        mov              r11, 189
                        mov              rax, qword ptr [rsp + 2296]
                        cmp              rax, 1;                              jge   .Loptions_α_544_0
                        add              rax, r15
                        add              rax, 1
.Loptions_α_544_0:      cmp              rax, 1;                              jl    n00082_disjunction_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00082_disjunction_af
                        mov              qword ptr [rsp + 2272], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              qword ptr [rsp + 2256], rax
                        mov              qword ptr [rsp + 2264], rdx;         jmp   n00093_lit_integer_α
n00092_scan_tab_β:        mov              r11, 189
                        mov              r14, qword ptr [rsp + 2272];         jmp   n00082_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00093_lit_integer_α:     mov              r11, 190
                        mov              qword ptr [rsp + 2240], 3            # result
                        mov              rax, qword ptr [rip + .Loptions_α_545_0]
                        mov              qword ptr [rsp + 2248], rax;         jmp   n00094_scan_pos_α
.Loptions_α_545_0:      .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00094_scan_pos_α:        mov              r11, 191
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Loptions_α_547_0
                        add              rax, r15
                        add              rax, 1
.Loptions_α_547_0:      cmp              rax, 1;                              jl    n00095_var_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00095_var_α
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n00095_var_α
                        mov              qword ptr [rsp + 2224], 3
                        mov              qword ptr [rsp + 2232], rax;         jmp   n00092_scan_tab_β
#-----------------------------------------------------------------------------------------------------------------------
n00095_var_α:             mov              r11, 192
                        mov              qword ptr [rsp + 2208], 0
                        mov              qword ptr [rsp + 2216], 0;           jmp   n00096_conjunction_α
n00095_var_β:             mov              r11, 192;                            jmp   n00092_scan_tab_β
#-----------------------------------------------------------------------------------------------------------------------
n00096_conjunction_α:     mov              r11, 193
                        mov              rax, qword ptr [rsp + 2208]
                        mov              qword ptr [rsp + 2192], rax
                        mov              rax, qword ptr [rsp + 2216]
                        mov              qword ptr [rsp + 2200], rax;         jmp   n00097_disjunction_α
n00096_conjunction_β:     mov              r11, 193;                            jmp   n00082_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00097_disjunction_α:     mov              r11, 194
                        mov              qword ptr [rsp + 2032], 0
                        mov              qword ptr [rsp + 2040], 0
                        mov              dword ptr [rsp + 2048], 0;           jmp   n00098_lit_string_α
n00097_disjunction_as:    mov              r11, 194
                        mov              eax, dword ptr [rsp + 2048]
                        cmp              eax, 0;                              jne   .Loptions_α_551_0
                                                                              jmp   n00099_lit_integer_α
.Loptions_α_551_0:                                                            jmp   n00099_lit_integer_α
n00097_disjunction_β:     mov              r11, 194
                        mov              eax, dword ptr [rsp + 2048];         jmp   n00099_lit_integer_α
n00097_disjunction_af:    mov              r11, 194
                        add              dword ptr [rsp + 2048], 1
                        mov              eax, dword ptr [rsp + 2048];         jmp   n00099_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00099_lit_integer_α:     mov              r11, 195
                        mov              qword ptr [rsp + 448], 3             # result
                        mov              rax, qword ptr [rip + .Loptions_α_552_0]
                        mov              qword ptr [rsp + 456], rax;          jmp   n00100_scan_move_α
.Loptions_α_552_0:      .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00100_scan_move_α:       mov              r11, 196
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jl    n00086_scan_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00086_scan_α
                        mov              qword ptr [rsp + 432], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx;          jmp   n00101_assign_α
n00100_scan_move_β:       mov              r11, 196
                        mov              r14, qword ptr [rsp + 432];          jmp   n00086_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00101_assign_α:          mov              r11, 197
                        mov              rax, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 2656], rax
                        mov              qword ptr [rsp + 2664], rdx;         jmp   n00085_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00085_disjunction_α:     mov              r11, 198
                        mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 472], 0
                        mov              dword ptr [rsp + 480], 0;            jmp   n00102_var_α
n00085_disjunction_as:    mov              r11, 198
                        mov              eax, dword ptr [rsp + 480]
                        cmp              eax, 0;                              jne   .Loptions_α_557_0
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 472], rax;          jmp   n00099_lit_integer_α
.Loptions_α_557_0:      cmp              eax, 1;                              jne   .Loptions_α_557_1
                        mov              rax, qword ptr [rsp + 1936]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 1944]
                        mov              qword ptr [rsp + 472], rax;          jmp   n00099_lit_integer_α
.Loptions_α_557_1:                                                            jmp   n00099_lit_integer_α
n00085_disjunction_β:     mov              r11, 198
                        mov              eax, dword ptr [rsp + 480]
                        cmp              eax, 0;                              je    n00103_disjunction_β
                                                                              jmp   n00099_lit_integer_α
n00085_disjunction_af:    mov              r11, 198
                        add              dword ptr [rsp + 480], 1
                        mov              eax, dword ptr [rsp + 480]
                        cmp              eax, 1;                              je    n00104_lit_string_α
                                                                              jmp   n00099_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00104_lit_string_α:      mov              r11, 199
                        mov              qword ptr [rsp + 2000], 2            # result
                        mov              dword ptr [rsp + 2004], 22
                        mov              rax, qword ptr [rip + .Loptions_α_558_0]
                        mov              qword ptr [rsp + 2008], rax;         jmp   n00105_var_α
n00104_lit_string_β:      mov              r11, 199;                            jmp   n00099_lit_integer_α
.Loptions_α_558_0:      .quad            .Loptions_α_558_0_s
.Loptions_α_558_0_s:    .string          "Unrecognized option: -"
#-----------------------------------------------------------------------------------------------------------------------
n00105_var_α:             mov              r11, 200
                        mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 2016], rax
                        mov              rax, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 2024], rax;         jmp   n00106_call_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00106_call_icon_α:       mov              r11, 201
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262308
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx
                        cmp              al, 104;                             je    n00099_lit_integer_α
                                                                              jmp   n00085_disjunction_as
n00106_call_icon_β:       mov              r11, 201;                            jmp   n00099_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00102_var_α:             mov              r11, 202
                        mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 1888], rax
                        mov              rax, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 1896], rax;         jmp   n00107_var_α
n00102_var_β:             mov              r11, 202;                            jmp   n00085_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00107_var_α:             mov              r11, 203
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1904], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1912], rax;         jmp   n00108_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00108_call_builtin_gen_α:
                        mov              r11, 204
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Loptions_α_567_60:     .section         .rodata
.Lbynamegenfn204:       .string          "find"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn204]
                        lea              rsi, [rsp + 1840]
                        mov              edx, 2
                        lea              rcx, [rsp + 1872]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1824], rax
                        mov              qword ptr [rsp + 1832], rdx
                        cmp              al, 104;                             je    n00085_disjunction_af
                                                                              jmp   n00109_lit_integer_α
n00108_call_builtin_gen_β:
                        mov              r11, 204;                            jmp   .Loptions_α_567_60
#-----------------------------------------------------------------------------------------------------------------------
n00109_lit_integer_α:     mov              r11, 205
                        mov              qword ptr [rsp + 1920], 3            # result
                        mov              rax, qword ptr [rip + .Loptions_α_568_0]
                        mov              qword ptr [rsp + 1928], rax;         jmp   n00110_coerce_numeric_α
.Loptions_α_568_0:      .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00110_coerce_numeric_α:  mov              r11, 206
                        mov              eax, dword ptr [rsp + 1824]
                        cmp              al, 5;                               je    .Loptions_α_570_1
                        cmp              al, 3;                               jne   .Loptions_α_570_0
                        mov              eax, dword ptr [rsp + 1920]
                        cmp              al, 3;                               jne   .Loptions_α_570_0
.Loptions_α_570_1:      mov              rax, qword ptr [rsp + 1824]
                        mov              qword ptr [rsp + 1808], rax
                        mov              rax, qword ptr [rsp + 1832]
                        mov              qword ptr [rsp + 1816], rax;         jmp   n00111_binop_α
.Loptions_α_570_0:      lea              rdi, [rsp + 1824]
                        lea              rsi, [rsp + 1920]
                        lea              rdx, [rsp + 1808]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00111_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00111_binop_α:           mov              r11, 207
                        mov              eax, dword ptr [rsp + 1808]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Loptions_α_571_2
                        mov              rax, qword ptr [rsp + 1816]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 1792], 3
                        mov              qword ptr [rsp + 1800], rax;         jmp   .Loptions_α_571_7
.Loptions_α_571_2:      and              edx, 1;                              jz    .Loptions_α_571_0
                        mov              rsi, qword ptr [rsp + 1816]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Loptions_α_571_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Loptions_α_571_4
.Loptions_α_571_3:      movq             xmm0, rsi
.Loptions_α_571_4:      cmp              cl, 5;                               je    .Loptions_α_571_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Loptions_α_571_6
.Loptions_α_571_5:      movq             xmm1, rdi
.Loptions_α_571_6:      addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1792], 5
                        mov              qword ptr [rsp + 1800], rax
.Loptions_α_571_7:                                                            jmp   n00112_assign_α
.Loptions_α_571_0:      mov              rdi, qword ptr [rsp + 1808]
                        mov              rsi, qword ptr [rsp + 1816]
                        mov              rdx, qword ptr [rsp + 1920]
                        mov              rcx, qword ptr [rsp + 1928]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00085_disjunction_af
                        mov              qword ptr [rsp + 1792], rax
                        mov              qword ptr [rsp + 1800], rdx;         jmp   n00112_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00112_assign_α:          mov              r11, 208
                        mov              rax, qword ptr [rsp + 1792]
                        mov              rdx, qword ptr [rsp + 1800]
                        mov              qword ptr [rsp + 2720], rax
                        mov              qword ptr [rsp + 2728], rdx;         jmp   n00113_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00113_var_ref_α:         mov              r11, 209
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2608]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx;          jmp   n00114_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00114_var_α:             mov              r11, 210
                        mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 520], rax;          jmp   n00115_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00115_subscript_α:       mov              r11, 211
                        mov              rdi, qword ptr [rsp + 496]
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
                        cmp              al, 104;                             je    n00099_lit_integer_α
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n00103_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00103_disjunction_α:     mov              r11, 212
                        mov              qword ptr [rsp + 560], 0
                        mov              qword ptr [rsp + 568], 0
                        mov              dword ptr [rsp + 576], 0;            jmp   n00116_lit_charset_α
n00103_disjunction_as:    mov              r11, 212
                        mov              eax, dword ptr [rsp + 576]
                        cmp              eax, 0;                              jne   .Loptions_α_579_0
                        mov              rax, qword ptr [rsp + 2672]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 2680]
                        mov              qword ptr [rsp + 568], rax;          jmp   n00117_assign_var_α
.Loptions_α_579_0:      cmp              eax, 1;                              jne   .Loptions_α_579_1
                        mov              rax, qword ptr [rsp + 1776]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 1784]
                        mov              qword ptr [rsp + 568], rax;          jmp   n00117_assign_var_α
.Loptions_α_579_1:                                                            jmp   n00117_assign_var_α
n00103_disjunction_β:     mov              r11, 212
                        mov              eax, dword ptr [rsp + 576]
                        cmp              eax, 0;                              je    n00099_lit_integer_α
                                                                              jmp   n00099_lit_integer_α
n00103_disjunction_af:    mov              r11, 212
                        add              dword ptr [rsp + 576], 1
                        mov              eax, dword ptr [rsp + 576]
                        cmp              eax, 1;                              je    n00118_lit_integer_α
                                                                              jmp   n00099_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00117_assign_var_α:      mov              r11, 213
                        mov              rdi, qword ptr [rsp + 528]
                        mov              rsi, qword ptr [rsp + 536]
                        mov              rdx, qword ptr [rsp + 560]
                        mov              rcx, qword ptr [rsp + 568]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00099_lit_integer_α
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n00085_disjunction_as
n00117_assign_var_β:      mov              r11, 213;                            jmp   n00099_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00118_lit_integer_α:     mov              r11, 214
                        mov              qword ptr [rsp + 1776], 3            # result
                        mov              rax, qword ptr [rip + .Loptions_α_581_0]
                        mov              qword ptr [rsp + 1784], rax;         jmp   n00103_disjunction_as
n00118_lit_integer_β:     mov              r11, 214;                            jmp   n00099_lit_integer_α
.Loptions_α_581_0:      .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00116_lit_charset_α:     mov              r11, 215
                        mov              qword ptr [rsp + 1680], 2            # result
                        mov              dword ptr [rsp + 1684], -1
                        mov              rax, qword ptr [rip + .Loptions_α_582_0]
                        mov              qword ptr [rsp + 1688], rax;         jmp   n00119_var_ref_α
n00116_lit_charset_β:     mov              r11, 215;                            jmp   n00103_disjunction_af
.Loptions_α_582_0:      .quad            .Loptions_α_582_0_s
.Loptions_α_582_0_s:    .string          "+.:"
#-----------------------------------------------------------------------------------------------------------------------
n00119_var_ref_α:         mov              r11, 216
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1712], rax
                        mov              qword ptr [rsp + 1720], rdx;         jmp   n00120_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00120_var_α:             mov              r11, 217
                        mov              rax, qword ptr [rsp + 2720]
                        mov              qword ptr [rsp + 1728], rax
                        mov              rax, qword ptr [rsp + 2728]
                        mov              qword ptr [rsp + 1736], rax;         jmp   n00121_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00121_subscript_α:       mov              r11, 218
                        mov              rdi, qword ptr [rsp + 1712]
                        mov              rsi, qword ptr [rsp + 1720]
                        mov              rdx, qword ptr [rsp + 1728]
                        mov              rcx, qword ptr [rsp + 1736]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00103_disjunction_af
                        mov              qword ptr [rsp + 1744], rax
                        mov              qword ptr [rsp + 1752], rdx;         jmp   n00122_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00122_deref_α:           mov              r11, 219
                        mov              rdi, qword ptr [rsp + 1744]
                        mov              rsi, qword ptr [rsp + 1752]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00103_disjunction_af
                        mov              qword ptr [rsp + 1760], rax
                        mov              qword ptr [rsp + 1768], rdx;         jmp   n00123_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00123_assign_α:          mov              r11, 220
                        mov              rax, qword ptr [rsp + 1760]
                        mov              rdx, qword ptr [rsp + 1768]
                        mov              qword ptr [rsp + 2688], rax
                        mov              qword ptr [rsp + 2696], rdx
                        mov              qword ptr [rsp + 1696], rax
                        mov              qword ptr [rsp + 1704], rdx;         jmp   n00124_call_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00124_call_icon_α:       mov              r11, 221
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn221:          .string          "any"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn221]
                        lea              rsi, [rsp + 1632]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196712
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1616], rax
                        mov              qword ptr [rsp + 1624], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              al, 104;                             je    n00103_disjunction_af
                                                                              jmp   n00125_disjunction_α
n00124_call_icon_β:       mov              r11, 221;                            jmp   n00103_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00125_disjunction_α:     mov              r11, 222
                        mov              qword ptr [rsp + 1344], 0
                        mov              qword ptr [rsp + 1352], 0
                        mov              dword ptr [rsp + 1360], 0;           jmp   n00126_lit_string_α
n00125_disjunction_as:    mov              r11, 222
                        mov              eax, dword ptr [rsp + 1360]
                        cmp              eax, 0;                              jne   .Loptions_α_592_0
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n00127_assign_α
.Loptions_α_592_0:      cmp              eax, 1;                              jne   .Loptions_α_592_1
                        mov              rax, qword ptr [rsp + 1456]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 1464]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n00127_assign_α
.Loptions_α_592_1:      cmp              eax, 2;                              jne   .Loptions_α_592_2
                        mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n00127_assign_α
.Loptions_α_592_2:                                                            jmp   n00127_assign_α
n00125_disjunction_β:     mov              r11, 222
                        mov              eax, dword ptr [rsp + 1360]
                        cmp              eax, 0;                              je    n00128_scan_tab_β
                        cmp              eax, 1;                              je    n00125_disjunction_af
                                                                              jmp   n00125_disjunction_af
n00125_disjunction_af:    mov              r11, 222
                        add              dword ptr [rsp + 1360], 1
                        mov              eax, dword ptr [rsp + 1360]
                        cmp              eax, 1;                              je    n00129_var_α
                        cmp              eax, 2;                              je    n00130_lit_string_α
                                                                              jmp   n00131_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00127_assign_α:          mov              r11, 223
                        mov              rax, qword ptr [rsp + 1344]
                        mov              rdx, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 2704], rax
                        mov              qword ptr [rsp + 2712], rdx;         jmp   n00131_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00131_var_α:             mov              r11, 224
                        mov              rax, qword ptr [rsp + 2688]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 2696]
                        mov              qword ptr [rsp + 632], rax;          jmp   n00132_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00132_lit_string_α:      mov              r11, 225
                        mov              qword ptr [rsp + 1248], 2            # result
                        mov              dword ptr [rsp + 1252], 1
                        mov              rax, qword ptr [rip + .Loptions_α_596_0]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n00133_call_builtin_α
.Loptions_α_596_0:      .quad            .Loptions_α_596_0_s
.Loptions_α_596_0_s:    .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n00133_call_builtin_α:    mov              r11, 226
                        mov              rax, qword ptr [rsp + 1248]
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 589859
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx
                        cmp              al, 104;                             je    n00134_lit_string_α
                                                                              jmp   n00135_var_α
n00133_call_builtin_β:    mov              r11, 226;                            jmp   n00134_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00135_var_α:             mov              r11, 227
                        mov              rax, qword ptr [rsp + 2704]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 2712]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n00136_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00136_assign_α:          mov              r11, 228
                        mov              rax, qword ptr [rsp + 1264]
                        mov              rdx, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 2672], rax
                        mov              qword ptr [rsp + 2680], rdx;         jmp   n00137_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00134_lit_string_α:      mov              r11, 229
                        mov              qword ptr [rsp + 944], 2             # result
                        mov              dword ptr [rsp + 948], 1
                        mov              rax, qword ptr [rip + .Loptions_α_602_0]
                        mov              qword ptr [rsp + 952], rax;          jmp   n00138_call_builtin_α
.Loptions_α_602_0:      .quad            .Loptions_α_602_0_s
.Loptions_α_602_0_s:    .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n00138_call_builtin_α:    mov              r11, 230
                        mov              rax, qword ptr [rsp + 944]
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 589859
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx
                        cmp              al, 104;                             je    n00139_lit_string_α
                                                                              jmp   n00140_disjunction_α
n00138_call_builtin_β:    mov              r11, 230;                            jmp   n00139_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00140_disjunction_α:     mov              r11, 231
                        mov              qword ptr [rsp + 960], 0
                        mov              qword ptr [rsp + 968], 0
                        mov              dword ptr [rsp + 976], 0;            jmp   n00141_var_α
n00140_disjunction_as:    mov              r11, 231
                        mov              eax, dword ptr [rsp + 976]
                        cmp              eax, 0;                              jne   .Loptions_α_606_0
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 968], rax;          jmp   n00142_assign_α
.Loptions_α_606_0:      cmp              eax, 1;                              jne   .Loptions_α_606_1
                        mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 968], rax;          jmp   n00142_assign_α
.Loptions_α_606_1:                                                            jmp   n00142_assign_α
n00140_disjunction_β:     mov              r11, 231
                        mov              eax, dword ptr [rsp + 976]
                        cmp              eax, 0;                              je    n00140_disjunction_af
                                                                              jmp   n00140_disjunction_af
n00140_disjunction_af:    mov              r11, 231
                        add              dword ptr [rsp + 976], 1
                        mov              eax, dword ptr [rsp + 976]
                        cmp              eax, 1;                              je    n00143_lit_string_α
                                                                              jmp   n00099_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00142_assign_α:          mov              r11, 232
                        mov              rax, qword ptr [rsp + 960]
                        mov              rdx, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 2672], rax
                        mov              qword ptr [rsp + 2680], rdx;         jmp   n00137_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00143_lit_string_α:      mov              r11, 233
                        mov              qword ptr [rsp + 1136], 2            # result
                        mov              dword ptr [rsp + 1140], 1
                        mov              rax, qword ptr [rip + .Loptions_α_608_0]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n00144_var_α
n00143_lit_string_β:      mov              r11, 233;                            jmp   n00140_disjunction_af
.Loptions_α_608_0:      .quad            .Loptions_α_608_0_s
.Loptions_α_608_0_s:    .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00144_var_α:             mov              r11, 234
                        mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n00145_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00145_lit_string_α:      mov              r11, 235
                        mov              qword ptr [rsp + 1168], 2            # result
                        mov              dword ptr [rsp + 1172], 24
                        mov              rax, qword ptr [rip + .Loptions_α_611_0]
                        mov              qword ptr [rsp + 1176], rax;         jmp   n00146_call_icon_α
.Loptions_α_611_0:      .quad            .Loptions_α_611_0_s
.Loptions_α_611_0_s:    .string          " needs numeric parameter"
#-----------------------------------------------------------------------------------------------------------------------
n00146_call_icon_α:       mov              r11, 236
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262308
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        cmp              al, 104;                             je    n00140_disjunction_af
                                                                              jmp   n00140_disjunction_as
n00146_call_icon_β:       mov              r11, 236;                            jmp   n00140_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00141_var_α:             mov              r11, 237
                        mov              rax, qword ptr [rsp + 2704]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 2712]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n00147_call_icon_α
n00141_var_β:             mov              r11, 237;                            jmp   n00140_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00147_call_icon_α:       mov              r11, 238
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 458878
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx
                        cmp              al, 104;                             je    n00140_disjunction_af
                                                                              jmp   n00140_disjunction_as
n00147_call_icon_β:       mov              r11, 238;                            jmp   n00140_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00139_lit_string_α:      mov              r11, 239
                        mov              qword ptr [rsp + 640], 2             # result
                        mov              dword ptr [rsp + 644], 1
                        mov              rax, qword ptr [rip + .Loptions_α_618_0]
                        mov              qword ptr [rsp + 648], rax;          jmp   n00148_call_builtin_α
.Loptions_α_618_0:      .quad            .Loptions_α_618_0_s
.Loptions_α_618_0_s:    .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n00148_call_builtin_α:    mov              r11, 240
                        mov              rax, qword ptr [rsp + 640]
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 589859
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                        cmp              al, 104;                             je    n00099_lit_integer_α
                                                                              jmp   n00149_disjunction_α
n00148_call_builtin_β:    mov              r11, 240;                            jmp   n00099_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00149_disjunction_α:     mov              r11, 241
                        mov              qword ptr [rsp + 656], 0
                        mov              qword ptr [rsp + 664], 0
                        mov              dword ptr [rsp + 672], 0;            jmp   n00150_var_α
n00149_disjunction_as:    mov              r11, 241
                        mov              eax, dword ptr [rsp + 672]
                        cmp              eax, 0;                              jne   .Loptions_α_622_0
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 664], rax;          jmp   n00151_assign_α
.Loptions_α_622_0:      cmp              eax, 1;                              jne   .Loptions_α_622_1
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 664], rax;          jmp   n00151_assign_α
.Loptions_α_622_1:                                                            jmp   n00151_assign_α
n00149_disjunction_β:     mov              r11, 241
                        mov              eax, dword ptr [rsp + 672]
                        cmp              eax, 0;                              je    n00149_disjunction_af
                                                                              jmp   n00149_disjunction_af
n00149_disjunction_af:    mov              r11, 241
                        add              dword ptr [rsp + 672], 1
                        mov              eax, dword ptr [rsp + 672]
                        cmp              eax, 1;                              je    n00152_lit_string_α
                                                                              jmp   n00099_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00151_assign_α:          mov              r11, 242
                        mov              rax, qword ptr [rsp + 656]
                        mov              rdx, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 2672], rax
                        mov              qword ptr [rsp + 2680], rdx;         jmp   n00137_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00137_var_α:             mov              r11, 243
                        mov              rax, qword ptr [rsp + 2672]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 2680]
                        mov              qword ptr [rsp + 616], rax;          jmp   n00153_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00153_conjunction_α:     mov              r11, 244
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 600], rax;          jmp   n00103_disjunction_as
n00153_conjunction_β:     mov              r11, 244;                            jmp   n00099_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00152_lit_string_α:      mov              r11, 245
                        mov              qword ptr [rsp + 832], 2             # result
                        mov              dword ptr [rsp + 836], 1
                        mov              rax, qword ptr [rip + .Loptions_α_627_0]
                        mov              qword ptr [rsp + 840], rax;          jmp   n00154_var_α
n00152_lit_string_β:      mov              r11, 245;                            jmp   n00149_disjunction_af
.Loptions_α_627_0:      .quad            .Loptions_α_627_0_s
.Loptions_α_627_0_s:    .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00154_var_α:             mov              r11, 246
                        mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 856], rax;          jmp   n00155_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00155_lit_string_α:      mov              r11, 247
                        mov              qword ptr [rsp + 864], 2             # result
                        mov              dword ptr [rsp + 868], 24
                        mov              rax, qword ptr [rip + .Loptions_α_630_0]
                        mov              qword ptr [rsp + 872], rax;          jmp   n00156_call_icon_α
.Loptions_α_630_0:      .quad            .Loptions_α_630_0_s
.Loptions_α_630_0_s:    .string          " needs numeric parameter"
#-----------------------------------------------------------------------------------------------------------------------
n00156_call_icon_α:       mov              r11, 248
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262308
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                        cmp              al, 104;                             je    n00149_disjunction_af
                                                                              jmp   n00149_disjunction_as
n00156_call_icon_β:       mov              r11, 248;                            jmp   n00149_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00150_var_α:             mov              r11, 249
                        mov              rax, qword ptr [rsp + 2704]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 2712]
                        mov              qword ptr [rsp + 744], rax;          jmp   n00157_call_icon_α
n00150_var_β:             mov              r11, 249;                            jmp   n00149_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00157_call_icon_α:       mov              r11, 250
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262297
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              al, 104;                             je    n00149_disjunction_af
                                                                              jmp   n00149_disjunction_as
n00157_call_icon_β:       mov              r11, 250;                            jmp   n00149_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00130_lit_string_α:      mov              r11, 251
                        mov              qword ptr [rsp + 1584], 2            # result
                        mov              dword ptr [rsp + 1588], 24
                        mov              rax, qword ptr [rip + .Loptions_α_637_0]
                        mov              qword ptr [rsp + 1592], rax;         jmp   n00158_var_α
n00130_lit_string_β:      mov              r11, 251;                            jmp   n00125_disjunction_af
.Loptions_α_637_0:      .quad            .Loptions_α_637_0_s
.Loptions_α_637_0_s:    .string          "No parameter following -"
#-----------------------------------------------------------------------------------------------------------------------
n00158_var_α:             mov              r11, 252
                        mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 1600], rax
                        mov              rax, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 1608], rax;         jmp   n00159_call_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00159_call_icon_α:       mov              r11, 253
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262308
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1520], rax
                        mov              qword ptr [rsp + 1528], rdx
                        cmp              al, 104;                             je    n00125_disjunction_af
                                                                              jmp   n00125_disjunction_as
n00159_call_icon_β:       mov              r11, 253;                            jmp   n00125_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00129_var_α:             mov              r11, 254
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1504], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1512], rax;         jmp   n00160_call_icon_α
n00129_var_β:             mov              r11, 254;                            jmp   n00125_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00160_call_icon_α:       mov              r11, 255
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196728
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx
                        cmp              al, 104;                             je    n00125_disjunction_af
                                                                              jmp   n00125_disjunction_as
n00160_call_icon_β:       mov              r11, 255;                            jmp   n00125_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00126_lit_string_α:      mov              r11, 256
                        mov              qword ptr [rsp + 1392], 2            # result
                        mov              dword ptr [rsp + 1396], 0
                        mov              rax, qword ptr [rip + .Loptions_α_646_0]
                        mov              qword ptr [rsp + 1400], rax;         jmp   n00161_lit_integer_α
n00126_lit_string_β:      mov              r11, 256;                            jmp   n00125_disjunction_af
.Loptions_α_646_0:      .quad            .Loptions_α_646_0_s
.Loptions_α_646_0_s:    .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n00161_lit_integer_α:     mov              r11, 257
                        mov              qword ptr [rsp + 1440], 3            # result
                        mov              rax, qword ptr [rip + .Loptions_α_647_0]
                        mov              qword ptr [rsp + 1448], rax;         jmp   n00128_scan_tab_α
.Loptions_α_647_0:      .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00128_scan_tab_α:        mov              r11, 258
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Loptions_α_649_0
                        add              rax, r15
                        add              rax, 1
.Loptions_α_649_0:      cmp              rax, 1;                              jl    n00125_disjunction_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00125_disjunction_af
                        mov              qword ptr [rsp + 1424], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx;         jmp   n00162_binop_test_α
n00128_scan_tab_β:        mov              r11, 258
                        mov              r14, qword ptr [rsp + 1424];         jmp   n00125_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00162_binop_test_α:      mov              r11, 259
                        mov              rdi, qword ptr [rsp + 1392]
                        mov              rsi, qword ptr [rsp + 1400]
                        mov              rdx, qword ptr [rsp + 1408]
                        mov              rcx, qword ptr [rsp + 1416]
                        mov              r8d, 17
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n00128_scan_tab_β
                        mov              rdi, qword ptr [rsp + 1408]
                        mov              rsi, qword ptr [rsp + 1416]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00125_disjunction_as
n00162_binop_test_β:      mov              r11, 259;                            jmp   n00128_scan_tab_β
#-----------------------------------------------------------------------------------------------------------------------
n00086_scan_α:            mov              r11, 260
                        mov              rdi, qword ptr [rsp + 304]
                        mov              rsi, qword ptr [rsp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 304]
                        mov              r14, qword ptr [rsp + 312]
                        mov              r15, qword ptr [rsp + 320];          jmp   n00076_var_α
n00086_scan_β:            mov              r11, 260;                            jmp   n00076_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00098_lit_string_α:      mov              r11, 261
                        mov              qword ptr [rsp + 2176], 2            # result
                        mov              dword ptr [rsp + 2180], 1
                        mov              rax, qword ptr [rip + .Loptions_α_653_0]
                        mov              qword ptr [rsp + 2184], rax;         jmp   n00163_scan_match_α
n00098_lit_string_β:      mov              r11, 261;                            jmp   n00097_disjunction_af
.Loptions_α_653_0:      .quad            .Loptions_α_653_0_s
.Loptions_α_653_0_s:    .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00163_scan_match_α:      mov              r11, 262
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    n00097_disjunction_af
                        mov              rdi, qword ptr [rip + .Loptions_α_655_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             memcmp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r12
                        test             eax, eax;                            jne   n00097_disjunction_af
                        mov              qword ptr [rsp + 2144], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rsp + 2152], rax;         jmp   n00164_scan_tab_α
.Loptions_α_655_0:      .quad            .Loptions_α_655_0_s
.Loptions_α_655_0_s:    .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00164_scan_tab_α:        mov              r11, 263
                        mov              rax, qword ptr [rsp + 2152]
                        cmp              rax, 1;                              jge   .Loptions_α_657_0
                        add              rax, r15
                        add              rax, 1
.Loptions_α_657_0:      cmp              rax, 1;                              jl    n00097_disjunction_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00097_disjunction_af
                        mov              qword ptr [rsp + 2128], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              qword ptr [rsp + 2112], rax
                        mov              qword ptr [rsp + 2120], rdx;         jmp   n00165_lit_integer_α
n00164_scan_tab_β:        mov              r11, 263
                        mov              r14, qword ptr [rsp + 2128];         jmp   n00097_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00165_lit_integer_α:     mov              r11, 264
                        mov              qword ptr [rsp + 2096], 3            # result
                        mov              rax, qword ptr [rip + .Loptions_α_658_0]
                        mov              qword ptr [rsp + 2104], rax;         jmp   n00166_scan_pos_α
.Loptions_α_658_0:      .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00166_scan_pos_α:        mov              r11, 265
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Loptions_α_660_0
                        add              rax, r15
                        add              rax, 1
.Loptions_α_660_0:      cmp              rax, 1;                              jl    n00164_scan_tab_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00164_scan_tab_β
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n00164_scan_tab_β
                        mov              qword ptr [rsp + 2080], 3
                        mov              qword ptr [rsp + 2088], rax;         jmp   n00167_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00167_conjunction_α:     mov              r11, 266
                        mov              rax, qword ptr [rsp + 2080]
                        mov              qword ptr [rsp + 2064], rax
                        mov              rax, qword ptr [rsp + 2088]
                        mov              qword ptr [rsp + 2072], rax;         jmp   n00078_var_α
n00167_conjunction_β:     mov              r11, 266;                            jmp   n00097_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00078_var_α:             mov              r11, 267
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 136], rax;          jmp   n00168_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00168_var_α:             mov              r11, 268
                        mov              rax, qword ptr [rsp + 2624]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 2632]
                        mov              qword ptr [rsp + 200], rax;          jmp   n00169_call_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00169_call_icon_α:       mov              r11, 269
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262292
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n00170_var_α
                                                                              jmp   n00171_call_icon_α
n00169_call_icon_β:       mov              r11, 269;                            jmp   n00170_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00171_call_icon_α:       mov              r11, 270
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262293
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    n00170_var_α
                                                                              jmp   n00078_var_α
n00171_call_icon_β:       mov              r11, 270;                            jmp   n00170_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00170_var_α:             mov              r11, 271
                        mov              rax, qword ptr [rsp + 2608]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 2616]
                        mov              qword ptr [rsp + 56], rax;           jmp   n00172_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00172_return_α:          mov              r11, 272
                        mov              rax, qword ptr [rsp + 48]
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
                        add              rsp, 2928;                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
options_ω:
                        add              rsp, 2928;                           jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
options_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        push             rdx
                        push             rsi
                        mov              rax, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 8]
                        mov              edi, 1
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        lea              rcx, [rip + .Loptions_α_673_3]
                        push             rcx
                        lea              rcx, [rip + .Loptions_α_673_2]
                        push             rcx;                                 jmp   FN__options
.Loptions_α_673_2:      add              rsp, 24
                        pop              r12;                                 jmp   r12
.Loptions_α_673_3:      add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__Init__:
                        sub              rsp, 496
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
n00173_var_α:             mov              r11, 273
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 392], rax;          jmp   n00174_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00174_assign_α:          mov              r11, 274
                        mov              rax, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
                        mov              qword ptr [r9 + 64], rax             # Name__
                        mov              qword ptr [r9 + 72], rdx;            jmp   n00175_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00175_call_proc_staged_α:
                        mov              r11, 275
                        call             Signature___dcα;                     jmp   .LInit___α_698_2
.LInit___α_698_2:       mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .LInit___α_698_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
.LInit___α_698_29:      mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              al, 104;                             je    n00176_call_proc_staged_α
                                                                              jmp   n00176_call_proc_staged_α
n00175_call_proc_staged_β:
                        mov              r11, 275;                            jmp   n00176_call_proc_staged_α
.LInit___β_698_0:       .quad            .LInit___β_698_0_s
.LInit___β_698_0_s:     .string          "Signature__"
#-----------------------------------------------------------------------------------------------------------------------
n00176_call_proc_staged_α:
                        mov              r11, 276
                        call             Regions___dcα;                       jmp   .LInit___α_700_2
.LInit___α_700_2:       mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .LInit___α_700_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
.LInit___α_700_29:      mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              al, 104;                             je    n00177_call_proc_staged_α
                                                                              jmp   n00177_call_proc_staged_α
n00176_call_proc_staged_β:
                        mov              r11, 276;                            jmp   n00177_call_proc_staged_α
.LInit___β_700_0:       .quad            .LInit___β_700_0_s
.LInit___β_700_0_s:     .string          "Regions__"
#-----------------------------------------------------------------------------------------------------------------------
n00177_call_proc_staged_α:
                        mov              r11, 277
                        call             Time___dcα;                          jmp   .LInit___α_702_2
.LInit___α_702_2:       mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .LInit___α_702_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
.LInit___α_702_29:      mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    n00178_disjunction_α
                                                                              jmp   n00178_disjunction_α
n00177_call_proc_staged_β:
                        mov              r11, 277;                            jmp   n00178_disjunction_α
.LInit___β_702_0:       .quad            .LInit___β_702_0_s
.LInit___β_702_0_s:     .string          "Time__"
#-----------------------------------------------------------------------------------------------------------------------
n00178_disjunction_α:     mov              r11, 278
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              dword ptr [rsp + 128], 0;            jmp   n00179_lit_string_α
n00178_disjunction_as:    mov              r11, 278
                        mov              eax, dword ptr [rsp + 128]
                        cmp              eax, 0;                              jne   .LInit___α_704_0
                                                                              jmp   n00180_var_α
.LInit___α_704_0:                                                             jmp   n00180_var_α
n00178_disjunction_β:     mov              r11, 278
                        mov              eax, dword ptr [rsp + 128];          jmp   n00180_var_α
n00178_disjunction_af:    mov              r11, 278
                        add              dword ptr [rsp + 128], 1
                        mov              eax, dword ptr [rsp + 128];          jmp   n00180_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00180_var_α:             mov              r11, 279
                        mov              rdi, qword ptr [rip + .LInit___α_705_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00181_var_α
                        mov              qword ptr [rsp + 96], rax            # result
                        mov              qword ptr [rsp + 104], rdx;          jmp   n00182_assign_α
.LInit___α_705_0:       .quad            .LInit___α_705_0_s
.LInit___α_705_0_s:     .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n00182_assign_α:          mov              r11, 280
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
                        mov              qword ptr [r9 + 32], rax             # Save__
                        mov              qword ptr [r9 + 40], rdx;            jmp   n00181_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00181_var_α:             mov              r11, 281
                        mov              rdi, qword ptr [rip + .LInit___α_707_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00183_lit_integer_α
                        mov              qword ptr [rsp + 80], rax            # result
                        mov              qword ptr [rsp + 88], rdx;           jmp   n00184_assign_α
.LInit___α_707_0:       .quad            .LInit___α_707_0_s
.LInit___α_707_0_s:     .string          "writes"
#-----------------------------------------------------------------------------------------------------------------------
n00184_assign_α:          mov              r11, 282
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
                        mov              qword ptr [r9 + 48], rax             # Saves__
                        mov              qword ptr [r9 + 56], rdx;            jmp   n00183_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00183_lit_integer_α:     mov              r11, 283
                        mov              qword ptr [rsp + 64], 3              # result
                        mov              rax, qword ptr [rip + .LInit___α_709_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n00185_assign_α
.LInit___α_709_0:       .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00185_assign_α:          mov              r11, 284
                        mov              rsi, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        mov              rdi, qword ptr [rip + .LInit___α_710_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00186_assign_α
.LInit___α_710_0:       .quad            .LInit___α_710_0_s
.LInit___α_710_0_s:     .string          "writes"
#-----------------------------------------------------------------------------------------------------------------------
n00186_assign_α:          mov              r11, 285
                        mov              rsi, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              rdi, qword ptr [rip + .LInit___α_711_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00187_return_α
.LInit___α_711_0:       .quad            .LInit___α_711_0_s
.LInit___α_711_0_s:     .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n00187_return_α:          mov              r11, 286
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   Init___γ
#-----------------------------------------------------------------------------------------------------------------------
n00188_conjunction_α:     mov              r11, 287;                            jmp   n00178_disjunction_as
n00188_conjunction_β:     mov              r11, 287;                            jmp   n00180_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00179_lit_string_α:      mov              r11, 288
                        mov              qword ptr [rsp + 272], 2             # result
                        mov              dword ptr [rsp + 276], 6
                        mov              rax, qword ptr [rip + .LInit___α_714_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n00189_call_icon_α
n00179_lit_string_β:      mov              r11, 288;                            jmp   n00178_disjunction_af
.LInit___α_714_0:       .quad            .LInit___α_714_0_s
.LInit___α_714_0_s:     .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n00189_call_icon_α:       mov              r11, 289
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393337
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              al, 104;                             je    n00178_disjunction_af
                                                                              jmp   n00190_lit_string_α
n00189_call_icon_β:       mov              r11, 289;                            jmp   n00178_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00190_lit_string_α:      mov              r11, 290
                        mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 32
                        mov              rax, qword ptr [rip + .LInit___α_717_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n00191_call_icon_α
.LInit___α_717_0:       .quad            .LInit___α_717_0_s
.LInit___α_717_0_s:     .string          "*** Benchmarking with output ***"
#-----------------------------------------------------------------------------------------------------------------------
n00191_call_icon_α:       mov              r11, 291
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    n00192_return_α
                                                                              jmp   n00192_return_α
n00191_call_icon_β:       mov              r11, 291;                            jmp   n00192_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00192_return_α:          mov              r11, 292
                        mov              qword ptr [rsp + 0], 0
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
                        add              rsp, 496;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
Init___ω:
                        add              rsp, 496;                            jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
Init___dcα:
                        pop              r12
                        push             r12
                        push             r12
                        push             r12
                        push             rsi
                        mov              rax, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        lea              rcx, [rip + .LInit___α_721_3]
                        push             rcx
                        lea              rcx, [rip + .LInit___α_721_2]
                        push             rcx;                                 jmp   FN__Init__
.LInit___α_721_2:       add              rsp, 24
                        pop              r12;                                 jmp   r12
.LInit___α_721_3:       add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__Term__:
                        sub              rsp, 528
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
n00193_disjunction_α:     mov              r11, 293
                        mov              qword ptr [rsp + 256], 0
                        mov              qword ptr [rsp + 264], 0
                        mov              dword ptr [rsp + 272], 0;            jmp   n00194_lit_string_α
n00193_disjunction_as:    mov              r11, 293
                        mov              eax, dword ptr [rsp + 272]
                        cmp              eax, 0;                              jne   .LTerm___α_740_0
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 264], rax;          jmp   n00195_var_α
.LTerm___α_740_0:                                                             jmp   n00195_var_α
n00193_disjunction_β:     mov              r11, 293
                        mov              eax, dword ptr [rsp + 272];          jmp   n00195_var_α
n00193_disjunction_af:    mov              r11, 293
                        add              dword ptr [rsp + 272], 1
                        mov              eax, dword ptr [rsp + 272];          jmp   n00195_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00194_lit_string_α:      mov              r11, 294
                        mov              qword ptr [rsp + 432], 2             # result
                        mov              dword ptr [rsp + 436], 6
                        mov              rax, qword ptr [rip + .LTerm___α_741_0]
                        mov              qword ptr [rsp + 440], rax;          jmp   n00196_call_icon_α
n00194_lit_string_β:      mov              r11, 294;                            jmp   n00197_var_α
.LTerm___α_741_0:       .quad            .LTerm___α_741_0_s
.LTerm___α_741_0_s:     .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n00196_call_icon_α:       mov              r11, 295
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393337
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n00197_var_α
                                                                              jmp   n00193_disjunction_af
n00196_call_icon_β:       mov              r11, 295;                            jmp   n00197_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00197_var_α:             mov              r11, 296
                        mov              qword ptr [rsp + 368], 0
                        mov              qword ptr [rsp + 376], 0;            jmp   n00198_var_α
n00197_var_β:             mov              r11, 296;                            jmp   n00193_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00198_var_α:             mov              r11, 297
                        mov              rax, qword ptr [r9 + 32]             # Save__
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 352], rax           # result
                        mov              qword ptr [rsp + 360], rdx;          jmp   n00199_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00199_assign_α:          mov              r11, 298
                        mov              rsi, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
                        mov              rdi, qword ptr [rip + .LTerm___α_746_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00200_var_α
.LTerm___α_746_0:       .quad            .LTerm___α_746_0_s
.LTerm___α_746_0_s:     .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n00200_var_α:             mov              r11, 299
                        mov              rax, qword ptr [r9 + 48]             # Saves__
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 320], rax           # result
                        mov              qword ptr [rsp + 328], rdx;          jmp   n00201_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00201_assign_α:          mov              r11, 300
                        mov              rsi, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
                        mov              rdi, qword ptr [rip + .LTerm___α_748_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00202_conjunction_α
.LTerm___α_748_0:       .quad            .LTerm___α_748_0_s
.LTerm___α_748_0_s:     .string          "writes"
#-----------------------------------------------------------------------------------------------------------------------
n00202_conjunction_α:     mov              r11, 301
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 296], rax;          jmp   n00193_disjunction_as
n00202_conjunction_β:     mov              r11, 301;                            jmp   n00195_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00195_var_α:             mov              r11, 302
                        mov              rax, qword ptr [r9 + 64]             # Name__
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 192], rax           # result
                        mov              qword ptr [rsp + 200], rdx;          jmp   n00203_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00203_lit_string_α:      mov              r11, 303
                        mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 16
                        mov              rax, qword ptr [rip + .LTerm___α_751_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n00204_call_proc_staged_α
.LTerm___α_751_0:       .quad            .LTerm___α_751_0_s
.LTerm___α_751_0_s:     .string          " elapsed time = "
#-----------------------------------------------------------------------------------------------------------------------
n00204_call_proc_staged_α:
                        mov              r11, 304
                        call             Time___dcα;                          jmp   .LTerm___α_753_2
.LTerm___α_753_2:       mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .LTerm___α_753_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
.LTerm___α_753_29:      mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              al, 104;                             je    n00205_call_proc_staged_α
                                                                              jmp   n00206_call_icon_α
n00204_call_proc_staged_β:
                        mov              r11, 304;                            jmp   n00205_call_proc_staged_α
.LTerm___β_753_0:       .quad            .LTerm___β_753_0_s
.LTerm___β_753_0_s:     .string          "Time__"
#-----------------------------------------------------------------------------------------------------------------------
n00206_call_icon_α:       mov              r11, 305
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n00205_call_proc_staged_α
                                                                              jmp   n00205_call_proc_staged_α
n00206_call_icon_β:       mov              r11, 305;                            jmp   n00205_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00205_call_proc_staged_α:
                        mov              r11, 306
                        call             Regions___dcα;                       jmp   .LTerm___α_757_2
.LTerm___α_757_2:       mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .LTerm___α_757_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
.LTerm___α_757_29:      mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n00207_call_proc_staged_α
                                                                              jmp   n00207_call_proc_staged_α
n00205_call_proc_staged_β:
                        mov              r11, 306;                            jmp   n00207_call_proc_staged_α
.LTerm___β_757_0:       .quad            .LTerm___β_757_0_s
.LTerm___β_757_0_s:     .string          "Regions__"
#-----------------------------------------------------------------------------------------------------------------------
n00207_call_proc_staged_α:
                        mov              r11, 307
                        call             Storage___dcα;                       jmp   .LTerm___α_759_2
.LTerm___α_759_2:       mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .LTerm___α_759_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
.LTerm___α_759_29:      mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    n00208_call_proc_staged_α
                                                                              jmp   n00208_call_proc_staged_α
n00207_call_proc_staged_β:
                        mov              r11, 307;                            jmp   n00208_call_proc_staged_α
.LTerm___β_759_0:       .quad            .LTerm___β_759_0_s
.LTerm___β_759_0_s:     .string          "Storage__"
#-----------------------------------------------------------------------------------------------------------------------
n00208_call_proc_staged_α:
                        mov              r11, 308
                        call             Collections___dcα;                   jmp   .LTerm___α_761_2
.LTerm___α_761_2:       mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .LTerm___α_761_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
.LTerm___α_761_29:      mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    n00209_return_α
                                                                              jmp   n00209_return_α
n00208_call_proc_staged_β:
                        mov              r11, 308;                            jmp   n00209_return_α
.LTerm___β_761_0:       .quad            .LTerm___β_761_0_s
.LTerm___β_761_0_s:     .string          "Collections__"
#-----------------------------------------------------------------------------------------------------------------------
n00209_return_α:          mov              r11, 309
                        mov              qword ptr [rsp + 0], 0
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
                        add              rsp, 528;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
Term___ω:
                        add              rsp, 528;                            jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
Term___dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .LTerm___α_763_3]
                        push             rcx
                        lea              rcx, [rip + .LTerm___α_763_2]
                        push             rcx;                                 jmp   FN__Term__
.LTerm___α_763_2:       add              rsp, 24
                        pop              r12;                                 jmp   r12
.LTerm___α_763_3:       add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__Collections__:
                        sub              rsp, 976
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
n00210_disjunction_α:     mov              r11, 310
                        mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 632], 0
                        mov              dword ptr [rsp + 640], 0;            jmp   n00211_var_ref_α
n00210_disjunction_as:    mov              r11, 310
                        mov              eax, dword ptr [rsp + 640]
                        cmp              eax, 0;                              jne   .LCollections___α_802_0
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 632], rax;          jmp   n00212_make_list_α
.LCollections___α_802_0:
                                                                              jmp   n00212_make_list_α
n00210_disjunction_β:     mov              r11, 310
                        mov              eax, dword ptr [rsp + 640];          jmp   n00212_make_list_α
n00210_disjunction_af:    mov              r11, 310
                        add              dword ptr [rsp + 640], 1
                        mov              eax, dword ptr [rsp + 640];          jmp   n00212_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00212_make_list_α:       mov              r11, 311
                        lea              rdi, [rsp + 624]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx;          jmp   n00213_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00213_assign_α:          mov              r11, 312
                        mov              rax, qword ptr [rsp + 608]
                        mov              rdx, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx;          jmp   n00214_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00214_var_α:             mov              r11, 313
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 568], rax;          jmp   n00215_kw_icon_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00215_kw_icon_gen_α:     mov              r11, 314
                        mov              qword ptr [rsp + 592], 0
.LCollections___α_808_1:
                        mov              rdi, qword ptr [rip + .LCollections___α_808_0]
                        mov              rsi, qword ptr [rsp + 592]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00216_lit_string_α
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        mov              rax, qword ptr [rsp + 592]
                        add              rax, 1
                        mov              qword ptr [rsp + 592], rax;          jmp   n00217_call_icon_α
n00215_kw_icon_gen_β:     mov              r11, 314;                            jmp   .LCollections___α_808_1
.LCollections___α_808_0:
                        .quad            .LCollections___α_808_0_s
.LCollections___α_808_0_s:
                        .string          "&collections"
#-----------------------------------------------------------------------------------------------------------------------
n00217_call_icon_α:       mov              r11, 315
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196758
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              al, 104;                             je    n00215_kw_icon_gen_β
                                                                              jmp   n00215_kw_icon_gen_β
n00217_call_icon_β:       mov              r11, 315;                            jmp   n00215_kw_icon_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00216_lit_string_α:      mov              r11, 316
                        mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 11
                        mov              rax, qword ptr [rip + .LCollections___α_811_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n00218_call_icon_α
.LCollections___α_811_0:
                        .quad            .LCollections___α_811_0_s
.LCollections___α_811_0_s:
                        .string          "collections"
#-----------------------------------------------------------------------------------------------------------------------
n00218_call_icon_α:       mov              r11, 317
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              al, 104;                             je    n00219_lit_integer_α
                                                                              jmp   n00219_lit_integer_α
n00218_call_icon_β:       mov              r11, 317;                            jmp   n00219_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00219_lit_integer_α:     mov              r11, 318
                        mov              qword ptr [rsp + 64], 3              # result
                        mov              rax, qword ptr [rip + .LCollections___α_814_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n00220_var_α
.LCollections___α_814_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00220_var_α:             mov              r11, 319
                        mov              rax, qword ptr [r9 + 208]            # Collections____STATIC__labels
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 96], rax            # result
                        mov              qword ptr [rsp + 104], rdx;          jmp   n00221_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n00221_unop_α:            mov              r11, 320
                        mov              rdi, qword ptr [rsp + 96]
                        mov              rsi, qword ptr [rsp + 104]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx;           jmp   n00222_to_α
#-----------------------------------------------------------------------------------------------------------------------
n00222_to_α:              mov              r11, 321
                        mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 64], 3
                        mov              qword ptr [rsp + 72], rax
                        mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 80], 3
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 48], rax
.LCollections___α_818_0:
                        mov              rax, qword ptr [rsp + 48]
                        mov              rcx, qword ptr [rsp + 88]
                        cmp              rax, rcx;                            jg    n00223_return_α
                        mov              qword ptr [rsp + 32], 3
                        mov              qword ptr [rsp + 40], rax;           jmp   n00224_assign_α
n00222_to_β:              mov              r11, 321
                        inc              qword ptr [rsp + 48];                jmp   .LCollections___α_818_0
#-----------------------------------------------------------------------------------------------------------------------
n00224_assign_α:          mov              r11, 322
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n00225_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00225_bound_α:           mov              r11, 323
                        mov              qword ptr [rsp + 112], rsp;          jmp   n00226_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00226_var_ref_α:         mov              r11, 324
                        mov              rax, 4294967336
                        mov              rdx, 1879052496                      # Collections____STATIC__labels
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n00227_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00227_var_α:             mov              r11, 325
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 248], rax;          jmp   n00228_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00228_subscript_α:       mov              r11, 326
                        mov              rdi, qword ptr [rsp + 224]
                        mov              rsi, qword ptr [rsp + 232]
                        mov              rdx, qword ptr [rsp + 240]
                        mov              rcx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00229_unmark_α
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n00230_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00230_deref_α:           mov              r11, 327
                        mov              rdi, qword ptr [rsp + 256]
                        mov              rsi, qword ptr [rsp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00229_unmark_α
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n00231_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00231_var_ref_α:         mov              r11, 328
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 896]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n00232_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00232_var_α:             mov              r11, 329
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 376], rax;          jmp   n00233_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00233_subscript_α:       mov              r11, 330
                        mov              rdi, qword ptr [rsp + 352]
                        mov              rsi, qword ptr [rsp + 360]
                        mov              rdx, qword ptr [rsp + 368]
                        mov              rcx, qword ptr [rsp + 376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00229_unmark_α
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n00234_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00234_deref_α:           mov              r11, 331
                        mov              rdi, qword ptr [rsp + 384]
                        mov              rsi, qword ptr [rsp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00229_unmark_α
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n00235_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00235_lit_integer_α:     mov              r11, 332
                        mov              qword ptr [rsp + 416], 3             # result
                        mov              rax, qword ptr [rip + .LCollections___α_834_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n00236_call_icon_α
.LCollections___α_834_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n00236_call_icon_α:       mov              r11, 333
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327837
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    n00229_unmark_α
                                                                              jmp   n00237_call_icon_α
n00236_call_icon_β:       mov              r11, 333;                            jmp   n00229_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00237_call_icon_α:       mov              r11, 334
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    n00229_unmark_α
                                                                              jmp   n00229_unmark_α
n00237_call_icon_β:       mov              r11, 334;                            jmp   n00229_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00229_unmark_α:          mov              r11, 335
                        mov              rsp, qword ptr [rsp + 112];          jmp   n00222_to_β
#-----------------------------------------------------------------------------------------------------------------------
n00223_return_α:          mov              r11, 336
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   Collections___γ
#-----------------------------------------------------------------------------------------------------------------------
n00211_var_ref_α:         mov              r11, 337
                        mov              rax, 4294967336
                        mov              rdx, 1879052512                      # Collections____INITFLAG__0
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx;          jmp   n00238_nulltest_var_α
n00211_var_ref_β:         mov              r11, 337;                            jmp   n00210_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00238_nulltest_var_α:    mov              r11, 338
                        mov              eax, dword ptr [rsp + 816]
                        cmp              al, 104;                             je    n00210_disjunction_af
                        mov              rdi, qword ptr [rsp + 816]
                        mov              rsi, qword ptr [rsp + 824]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00210_disjunction_af
                        cmp              eax, 0;                              jne   n00210_disjunction_af
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 840], rax;          jmp   n00239_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00239_lit_integer_α:     mov              r11, 339
                        mov              qword ptr [rsp + 864], 3             # result
                        mov              rax, qword ptr [rip + .LCollections___α_845_0]
                        mov              qword ptr [rsp + 872], rax;          jmp   n00240_assign_var_α
.LCollections___α_845_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00240_assign_var_α:      mov              r11, 340
                        mov              rdi, qword ptr [rsp + 832]
                        mov              rsi, qword ptr [rsp + 840]
                        mov              rdx, qword ptr [rsp + 864]
                        mov              rcx, qword ptr [rsp + 872]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00210_disjunction_af
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx;          jmp   n00241_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00241_lit_string_α:      mov              r11, 341
                        mov              qword ptr [rsp + 752], 2             # result
                        mov              dword ptr [rsp + 756], 5
                        mov              rax, qword ptr [rip + .LCollections___α_847_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n00242_lit_string_α
.LCollections___α_847_0:
                        .quad            .LCollections___α_847_0_s
.LCollections___α_847_0_s:
                        .string          "total"
#-----------------------------------------------------------------------------------------------------------------------
n00242_lit_string_α:      mov              r11, 342
                        mov              qword ptr [rsp + 768], 2             # result
                        mov              dword ptr [rsp + 772], 6
                        mov              rax, qword ptr [rip + .LCollections___α_848_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n00243_lit_string_α
.LCollections___α_848_0:
                        .quad            .LCollections___α_848_0_s
.LCollections___α_848_0_s:
                        .string          "static"
#-----------------------------------------------------------------------------------------------------------------------
n00243_lit_string_α:      mov              r11, 343
                        mov              qword ptr [rsp + 784], 2             # result
                        mov              dword ptr [rsp + 788], 6
                        mov              rax, qword ptr [rip + .LCollections___α_849_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n00244_lit_string_α
.LCollections___α_849_0:
                        .quad            .LCollections___α_849_0_s
.LCollections___α_849_0_s:
                        .string          "string"
#-----------------------------------------------------------------------------------------------------------------------
n00244_lit_string_α:      mov              r11, 344
                        mov              qword ptr [rsp + 800], 2             # result
                        mov              dword ptr [rsp + 804], 5
                        mov              rax, qword ptr [rip + .LCollections___α_850_0]
                        mov              qword ptr [rsp + 808], rax;          jmp   n00245_make_list_α
.LCollections___α_850_0:
                        .quad            .LCollections___α_850_0_s
.LCollections___α_850_0_s:
                        .string          "block"
#-----------------------------------------------------------------------------------------------------------------------
n00245_make_list_α:       mov              r11, 345
                        mov              rax, qword ptr [rsp + 752]
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n00246_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00246_assign_α:          mov              r11, 346
                        mov              rax, qword ptr [rsp + 672]
                        mov              rdx, qword ptr [rsp + 680]
                        mov              qword ptr [r9 + 208], rax            # Collections____STATIC__labels
                        mov              qword ptr [r9 + 216], rdx
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n00210_disjunction_as
n00246_assign_β:          mov              r11, 346;                            jmp   n00212_make_list_α
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
                        add              rsp, 976;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
Collections___ω:
                        add              rsp, 976;                            jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
Collections___dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .LCollections___α_854_3]
                        push             rcx
                        lea              rcx, [rip + .LCollections___α_854_2]
                        push             rcx;                                 jmp   FN__Collections__
.LCollections___α_854_2:
                        add              rsp, 24
                        pop              r12;                                 jmp   r12
.LCollections___α_854_3:
                        add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__Regions__:
                        sub              rsp, 944
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
n00247_disjunction_α:     mov              r11, 347
                        mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 632], 0
                        mov              dword ptr [rsp + 640], 0;            jmp   n00248_var_ref_α
n00247_disjunction_as:    mov              r11, 347
                        mov              eax, dword ptr [rsp + 640]
                        cmp              eax, 0;                              jne   .LRegions___α_892_0
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 632], rax;          jmp   n00249_make_list_α
.LRegions___α_892_0:                                                          jmp   n00249_make_list_α
n00247_disjunction_β:     mov              r11, 347
                        mov              eax, dword ptr [rsp + 640];          jmp   n00249_make_list_α
n00247_disjunction_af:    mov              r11, 347
                        add              dword ptr [rsp + 640], 1
                        mov              eax, dword ptr [rsp + 640];          jmp   n00249_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00249_make_list_α:       mov              r11, 348
                        lea              rdi, [rsp + 624]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx;          jmp   n00250_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00250_assign_α:          mov              r11, 349
                        mov              rax, qword ptr [rsp + 608]
                        mov              rdx, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx;          jmp   n00251_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00251_var_α:             mov              r11, 350
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 568], rax;          jmp   n00252_kw_icon_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00252_kw_icon_gen_α:     mov              r11, 351
                        mov              qword ptr [rsp + 592], 0
.LRegions___α_898_1:    mov              rdi, qword ptr [rip + .LRegions___α_898_0]
                        mov              rsi, qword ptr [rsp + 592]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00253_lit_string_α
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        mov              rax, qword ptr [rsp + 592]
                        add              rax, 1
                        mov              qword ptr [rsp + 592], rax;          jmp   n00254_call_icon_α
n00252_kw_icon_gen_β:     mov              r11, 351;                            jmp   .LRegions___α_898_1
.LRegions___α_898_0:    .quad            .LRegions___α_898_0_s
.LRegions___α_898_0_s:  .string          "&regions"
#-----------------------------------------------------------------------------------------------------------------------
n00254_call_icon_α:       mov              r11, 352
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196758
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              al, 104;                             je    n00252_kw_icon_gen_β
                                                                              jmp   n00252_kw_icon_gen_β
n00254_call_icon_β:       mov              r11, 352;                            jmp   n00252_kw_icon_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00253_lit_string_α:      mov              r11, 353
                        mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 7
                        mov              rax, qword ptr [rip + .LRegions___α_901_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n00255_call_icon_α
.LRegions___α_901_0:    .quad            .LRegions___α_901_0_s
.LRegions___α_901_0_s:  .string          "regions"
#-----------------------------------------------------------------------------------------------------------------------
n00255_call_icon_α:       mov              r11, 354
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              al, 104;                             je    n00256_lit_integer_α
                                                                              jmp   n00256_lit_integer_α
n00255_call_icon_β:       mov              r11, 354;                            jmp   n00256_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00256_lit_integer_α:     mov              r11, 355
                        mov              qword ptr [rsp + 64], 3              # result
                        mov              rax, qword ptr [rip + .LRegions___α_904_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n00257_var_α
.LRegions___α_904_0:    .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00257_var_α:             mov              r11, 356
                        mov              rax, qword ptr [r9 + 240]            # Regions____STATIC__labels
                        mov              rdx, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 96], rax            # result
                        mov              qword ptr [rsp + 104], rdx;          jmp   n00258_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n00258_unop_α:            mov              r11, 357
                        mov              rdi, qword ptr [rsp + 96]
                        mov              rsi, qword ptr [rsp + 104]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx;           jmp   n00259_to_α
#-----------------------------------------------------------------------------------------------------------------------
n00259_to_α:              mov              r11, 358
                        mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 64], 3
                        mov              qword ptr [rsp + 72], rax
                        mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 80], 3
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 48], rax
.LRegions___α_908_0:    mov              rax, qword ptr [rsp + 48]
                        mov              rcx, qword ptr [rsp + 88]
                        cmp              rax, rcx;                            jg    n00260_return_α
                        mov              qword ptr [rsp + 32], 3
                        mov              qword ptr [rsp + 40], rax;           jmp   n00261_assign_α
n00259_to_β:              mov              r11, 358
                        inc              qword ptr [rsp + 48];                jmp   .LRegions___α_908_0
#-----------------------------------------------------------------------------------------------------------------------
n00261_assign_α:          mov              r11, 359
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx;          jmp   n00262_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00262_bound_α:           mov              r11, 360
                        mov              qword ptr [rsp + 112], rsp;          jmp   n00263_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00263_var_ref_α:         mov              r11, 361
                        mov              rax, 4294967336
                        mov              rdx, 1879052528                      # Regions____STATIC__labels
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n00264_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00264_var_α:             mov              r11, 362
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 248], rax;          jmp   n00265_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00265_subscript_α:       mov              r11, 363
                        mov              rdi, qword ptr [rsp + 224]
                        mov              rsi, qword ptr [rsp + 232]
                        mov              rdx, qword ptr [rsp + 240]
                        mov              rcx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00266_unmark_α
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n00267_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00267_deref_α:           mov              r11, 364
                        mov              rdi, qword ptr [rsp + 256]
                        mov              rsi, qword ptr [rsp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00266_unmark_α
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n00268_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00268_var_ref_α:         mov              r11, 365
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 864]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n00269_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00269_var_α:             mov              r11, 366
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 376], rax;          jmp   n00270_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00270_subscript_α:       mov              r11, 367
                        mov              rdi, qword ptr [rsp + 352]
                        mov              rsi, qword ptr [rsp + 360]
                        mov              rdx, qword ptr [rsp + 368]
                        mov              rcx, qword ptr [rsp + 376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00266_unmark_α
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n00271_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00271_deref_α:           mov              r11, 368
                        mov              rdi, qword ptr [rsp + 384]
                        mov              rsi, qword ptr [rsp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00266_unmark_α
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n00272_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00272_lit_integer_α:     mov              r11, 369
                        mov              qword ptr [rsp + 416], 3             # result
                        mov              rax, qword ptr [rip + .LRegions___α_924_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n00273_call_icon_α
.LRegions___α_924_0:    .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n00273_call_icon_α:       mov              r11, 370
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327837
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    n00266_unmark_α
                                                                              jmp   n00274_call_icon_α
n00273_call_icon_β:       mov              r11, 370;                            jmp   n00266_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00274_call_icon_α:       mov              r11, 371
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    n00266_unmark_α
                                                                              jmp   n00266_unmark_α
n00274_call_icon_β:       mov              r11, 371;                            jmp   n00266_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00266_unmark_α:          mov              r11, 372
                        mov              rsp, qword ptr [rsp + 112];          jmp   n00259_to_β
#-----------------------------------------------------------------------------------------------------------------------
n00260_return_α:          mov              r11, 373
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   Regions___γ
#-----------------------------------------------------------------------------------------------------------------------
n00248_var_ref_α:         mov              r11, 374
                        mov              rax, 4294967336
                        mov              rdx, 1879052544                      # Regions____INITFLAG__0
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n00275_nulltest_var_α
n00248_var_ref_β:         mov              r11, 374;                            jmp   n00247_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00275_nulltest_var_α:    mov              r11, 375
                        mov              eax, dword ptr [rsp + 784]
                        cmp              al, 104;                             je    n00247_disjunction_af
                        mov              rdi, qword ptr [rsp + 784]
                        mov              rsi, qword ptr [rsp + 792]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00247_disjunction_af
                        cmp              eax, 0;                              jne   n00247_disjunction_af
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 808], rax;          jmp   n00276_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00276_lit_integer_α:     mov              r11, 376
                        mov              qword ptr [rsp + 832], 3             # result
                        mov              rax, qword ptr [rip + .LRegions___α_935_0]
                        mov              qword ptr [rsp + 840], rax;          jmp   n00277_assign_var_α
.LRegions___α_935_0:    .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00277_assign_var_α:      mov              r11, 377
                        mov              rdi, qword ptr [rsp + 800]
                        mov              rsi, qword ptr [rsp + 808]
                        mov              rdx, qword ptr [rsp + 832]
                        mov              rcx, qword ptr [rsp + 840]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00247_disjunction_af
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx;          jmp   n00278_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00278_lit_string_α:      mov              r11, 378
                        mov              qword ptr [rsp + 736], 2             # result
                        mov              dword ptr [rsp + 740], 6
                        mov              rax, qword ptr [rip + .LRegions___α_937_0]
                        mov              qword ptr [rsp + 744], rax;          jmp   n00279_lit_string_α
.LRegions___α_937_0:    .quad            .LRegions___α_937_0_s
.LRegions___α_937_0_s:  .string          "static"
#-----------------------------------------------------------------------------------------------------------------------
n00279_lit_string_α:      mov              r11, 379
                        mov              qword ptr [rsp + 752], 2             # result
                        mov              dword ptr [rsp + 756], 6
                        mov              rax, qword ptr [rip + .LRegions___α_938_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n00280_lit_string_α
.LRegions___α_938_0:    .quad            .LRegions___α_938_0_s
.LRegions___α_938_0_s:  .string          "string"
#-----------------------------------------------------------------------------------------------------------------------
n00280_lit_string_α:      mov              r11, 380
                        mov              qword ptr [rsp + 768], 2             # result
                        mov              dword ptr [rsp + 772], 5
                        mov              rax, qword ptr [rip + .LRegions___α_939_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n00281_make_list_α
.LRegions___α_939_0:    .quad            .LRegions___α_939_0_s
.LRegions___α_939_0_s:  .string          "block"
#-----------------------------------------------------------------------------------------------------------------------
n00281_make_list_α:       mov              r11, 381
                        mov              rax, qword ptr [rsp + 736]
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n00282_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00282_assign_α:          mov              r11, 382
                        mov              rax, qword ptr [rsp + 672]
                        mov              rdx, qword ptr [rsp + 680]
                        mov              qword ptr [r9 + 240], rax            # Regions____STATIC__labels
                        mov              qword ptr [r9 + 248], rdx
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n00247_disjunction_as
n00282_assign_β:          mov              r11, 382;                            jmp   n00249_make_list_α
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
                        add              rsp, 944;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
Regions___ω:
                        add              rsp, 944;                            jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
Regions___dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .LRegions___α_943_3]
                        push             rcx
                        lea              rcx, [rip + .LRegions___α_943_2]
                        push             rcx;                                 jmp   FN__Regions__
.LRegions___α_943_2:    add              rsp, 24
                        pop              r12;                                 jmp   r12
.LRegions___α_943_3:    add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__Signature__:
                        sub              rsp, 304
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
Signature___α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00283_kw_icon_α:         mov              r11, 383
                        mov              rdi, qword ptr [rip + .LSignature___α_951_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00284_kw_icon_α
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n00285_call_icon_α
n00283_kw_icon_β:         mov              r11, 383;                            jmp   n00284_kw_icon_α
.LSignature___α_951_0:  .quad            .LSignature___α_951_0_s
.LSignature___α_951_0_s:
                        .string          "&version"
#-----------------------------------------------------------------------------------------------------------------------
n00285_call_icon_α:       mov              r11, 384
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              al, 104;                             je    n00284_kw_icon_α
                                                                              jmp   n00284_kw_icon_α
n00285_call_icon_β:       mov              r11, 384;                            jmp   n00284_kw_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00284_kw_icon_α:         mov              r11, 385
                        mov              rdi, qword ptr [rip + .LSignature___α_954_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00286_kw_icon_gen_α
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx;          jmp   n00287_call_icon_α
n00284_kw_icon_β:         mov              r11, 385;                            jmp   n00286_kw_icon_gen_α
.LSignature___α_954_0:  .quad            .LSignature___α_954_0_s
.LSignature___α_954_0_s:
                        .string          "&host"
#-----------------------------------------------------------------------------------------------------------------------
n00287_call_icon_α:       mov              r11, 386
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n00286_kw_icon_gen_α
                                                                              jmp   n00286_kw_icon_gen_α
n00287_call_icon_β:       mov              r11, 386;                            jmp   n00286_kw_icon_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00286_kw_icon_gen_α:     mov              r11, 387
                        mov              qword ptr [rsp + 80], 0
.LSignature___α_957_1:  mov              rdi, qword ptr [rip + .LSignature___α_957_0]
                        mov              rsi, qword ptr [rsp + 80]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00288_return_α
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        mov              rax, qword ptr [rsp + 80]
                        add              rax, 1
                        mov              qword ptr [rsp + 80], rax;           jmp   n00289_call_icon_α
n00286_kw_icon_gen_β:     mov              r11, 387;                            jmp   .LSignature___α_957_1
.LSignature___α_957_0:  .quad            .LSignature___α_957_0_s
.LSignature___α_957_0_s:
                        .string          "&features"
#-----------------------------------------------------------------------------------------------------------------------
n00289_call_icon_α:       mov              r11, 388
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    n00286_kw_icon_gen_β
                                                                              jmp   n00286_kw_icon_gen_β
n00289_call_icon_β:       mov              r11, 388;                            jmp   n00286_kw_icon_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00288_return_α:          mov              r11, 389
                        mov              qword ptr [rsp + 0], 0
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
                        add              rsp, 304;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
Signature___ω:
                        add              rsp, 304;                            jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
Signature___dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .LSignature___α_961_3]
                        push             rcx
                        lea              rcx, [rip + .LSignature___α_961_2]
                        push             rcx;                                 jmp   FN__Signature__
.LSignature___α_961_2:  add              rsp, 24
                        pop              r12;                                 jmp   r12
.LSignature___α_961_3:  add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__Storage__:
                        sub              rsp, 944
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
n00290_disjunction_α:     mov              r11, 390
                        mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 632], 0
                        mov              dword ptr [rsp + 640], 0;            jmp   n00291_var_ref_α
n00290_disjunction_as:    mov              r11, 390
                        mov              eax, dword ptr [rsp + 640]
                        cmp              eax, 0;                              jne   .LStorage___α_999_0
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 632], rax;          jmp   n00292_make_list_α
.LStorage___α_999_0:                                                          jmp   n00292_make_list_α
n00290_disjunction_β:     mov              r11, 390
                        mov              eax, dword ptr [rsp + 640];          jmp   n00292_make_list_α
n00290_disjunction_af:    mov              r11, 390
                        add              dword ptr [rsp + 640], 1
                        mov              eax, dword ptr [rsp + 640];          jmp   n00292_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00292_make_list_α:       mov              r11, 391
                        lea              rdi, [rsp + 624]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx;          jmp   n00293_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00293_assign_α:          mov              r11, 392
                        mov              rax, qword ptr [rsp + 608]
                        mov              rdx, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx;          jmp   n00294_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00294_var_α:             mov              r11, 393
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 568], rax;          jmp   n00295_kw_icon_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00295_kw_icon_gen_α:     mov              r11, 394
                        mov              qword ptr [rsp + 592], 0
.LStorage___α_1005_1:   mov              rdi, qword ptr [rip + .LStorage___α_1005_0]
                        mov              rsi, qword ptr [rsp + 592]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00296_lit_string_α
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        mov              rax, qword ptr [rsp + 592]
                        add              rax, 1
                        mov              qword ptr [rsp + 592], rax;          jmp   n00297_call_icon_α
n00295_kw_icon_gen_β:     mov              r11, 394;                            jmp   .LStorage___α_1005_1
.LStorage___α_1005_0:   .quad            .LStorage___α_1005_0_s
.LStorage___α_1005_0_s: .string          "&storage"
#-----------------------------------------------------------------------------------------------------------------------
n00297_call_icon_α:       mov              r11, 395
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196758
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              al, 104;                             je    n00295_kw_icon_gen_β
                                                                              jmp   n00295_kw_icon_gen_β
n00297_call_icon_β:       mov              r11, 395;                            jmp   n00295_kw_icon_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00296_lit_string_α:      mov              r11, 396
                        mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 7
                        mov              rax, qword ptr [rip + .LStorage___α_1008_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n00298_call_icon_α
.LStorage___α_1008_0:   .quad            .LStorage___α_1008_0_s
.LStorage___α_1008_0_s: .string          "storage"
#-----------------------------------------------------------------------------------------------------------------------
n00298_call_icon_α:       mov              r11, 397
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              al, 104;                             je    n00299_lit_integer_α
                                                                              jmp   n00299_lit_integer_α
n00298_call_icon_β:       mov              r11, 397;                            jmp   n00299_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00299_lit_integer_α:     mov              r11, 398
                        mov              qword ptr [rsp + 64], 3              # result
                        mov              rax, qword ptr [rip + .LStorage___α_1011_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n00300_var_α
.LStorage___α_1011_0:   .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00300_var_α:             mov              r11, 399
                        mov              rax, qword ptr [r9 + 272]            # Storage____STATIC__labels
                        mov              rdx, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 96], rax            # result
                        mov              qword ptr [rsp + 104], rdx;          jmp   n00301_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n00301_unop_α:            mov              r11, 400
                        mov              rdi, qword ptr [rsp + 96]
                        mov              rsi, qword ptr [rsp + 104]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx;           jmp   n00302_to_α
#-----------------------------------------------------------------------------------------------------------------------
n00302_to_α:              mov              r11, 401
                        mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 64], 3
                        mov              qword ptr [rsp + 72], rax
                        mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 80], 3
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 48], rax
.LStorage___α_1015_0:   mov              rax, qword ptr [rsp + 48]
                        mov              rcx, qword ptr [rsp + 88]
                        cmp              rax, rcx;                            jg    n00303_return_α
                        mov              qword ptr [rsp + 32], 3
                        mov              qword ptr [rsp + 40], rax;           jmp   n00304_assign_α
n00302_to_β:              mov              r11, 401
                        inc              qword ptr [rsp + 48];                jmp   .LStorage___α_1015_0
#-----------------------------------------------------------------------------------------------------------------------
n00304_assign_α:          mov              r11, 402
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx;          jmp   n00305_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00305_bound_α:           mov              r11, 403
                        mov              qword ptr [rsp + 112], rsp;          jmp   n00306_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00306_var_ref_α:         mov              r11, 404
                        mov              rax, 4294967336
                        mov              rdx, 1879052560                      # Storage____STATIC__labels
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n00307_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00307_var_α:             mov              r11, 405
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 248], rax;          jmp   n00308_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00308_subscript_α:       mov              r11, 406
                        mov              rdi, qword ptr [rsp + 224]
                        mov              rsi, qword ptr [rsp + 232]
                        mov              rdx, qword ptr [rsp + 240]
                        mov              rcx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00309_unmark_α
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n00310_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00310_deref_α:           mov              r11, 407
                        mov              rdi, qword ptr [rsp + 256]
                        mov              rsi, qword ptr [rsp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00309_unmark_α
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n00311_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00311_var_ref_α:         mov              r11, 408
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 864]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n00312_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00312_var_α:             mov              r11, 409
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 376], rax;          jmp   n00313_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00313_subscript_α:       mov              r11, 410
                        mov              rdi, qword ptr [rsp + 352]
                        mov              rsi, qword ptr [rsp + 360]
                        mov              rdx, qword ptr [rsp + 368]
                        mov              rcx, qword ptr [rsp + 376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00309_unmark_α
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n00314_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00314_deref_α:           mov              r11, 411
                        mov              rdi, qword ptr [rsp + 384]
                        mov              rsi, qword ptr [rsp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00309_unmark_α
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n00315_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00315_lit_integer_α:     mov              r11, 412
                        mov              qword ptr [rsp + 416], 3             # result
                        mov              rax, qword ptr [rip + .LStorage___α_1031_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n00316_call_icon_α
.LStorage___α_1031_0:   .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n00316_call_icon_α:       mov              r11, 413
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327837
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    n00309_unmark_α
                                                                              jmp   n00317_call_icon_α
n00316_call_icon_β:       mov              r11, 413;                            jmp   n00309_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00317_call_icon_α:       mov              r11, 414
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    n00309_unmark_α
                                                                              jmp   n00309_unmark_α
n00317_call_icon_β:       mov              r11, 414;                            jmp   n00309_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00309_unmark_α:          mov              r11, 415
                        mov              rsp, qword ptr [rsp + 112];          jmp   n00302_to_β
#-----------------------------------------------------------------------------------------------------------------------
n00303_return_α:          mov              r11, 416
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   Storage___γ
#-----------------------------------------------------------------------------------------------------------------------
n00291_var_ref_α:         mov              r11, 417
                        mov              rax, 4294967336
                        mov              rdx, 1879052576                      # Storage____INITFLAG__0
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n00318_nulltest_var_α
n00291_var_ref_β:         mov              r11, 417;                            jmp   n00290_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00318_nulltest_var_α:    mov              r11, 418
                        mov              eax, dword ptr [rsp + 784]
                        cmp              al, 104;                             je    n00290_disjunction_af
                        mov              rdi, qword ptr [rsp + 784]
                        mov              rsi, qword ptr [rsp + 792]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00290_disjunction_af
                        cmp              eax, 0;                              jne   n00290_disjunction_af
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 808], rax;          jmp   n00319_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00319_lit_integer_α:     mov              r11, 419
                        mov              qword ptr [rsp + 832], 3             # result
                        mov              rax, qword ptr [rip + .LStorage___α_1042_0]
                        mov              qword ptr [rsp + 840], rax;          jmp   n00320_assign_var_α
.LStorage___α_1042_0:   .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00320_assign_var_α:      mov              r11, 420
                        mov              rdi, qword ptr [rsp + 800]
                        mov              rsi, qword ptr [rsp + 808]
                        mov              rdx, qword ptr [rsp + 832]
                        mov              rcx, qword ptr [rsp + 840]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00290_disjunction_af
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx;          jmp   n00321_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00321_lit_string_α:      mov              r11, 421
                        mov              qword ptr [rsp + 736], 2             # result
                        mov              dword ptr [rsp + 740], 6
                        mov              rax, qword ptr [rip + .LStorage___α_1044_0]
                        mov              qword ptr [rsp + 744], rax;          jmp   n00322_lit_string_α
.LStorage___α_1044_0:   .quad            .LStorage___α_1044_0_s
.LStorage___α_1044_0_s: .string          "static"
#-----------------------------------------------------------------------------------------------------------------------
n00322_lit_string_α:      mov              r11, 422
                        mov              qword ptr [rsp + 752], 2             # result
                        mov              dword ptr [rsp + 756], 6
                        mov              rax, qword ptr [rip + .LStorage___α_1045_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n00323_lit_string_α
.LStorage___α_1045_0:   .quad            .LStorage___α_1045_0_s
.LStorage___α_1045_0_s: .string          "string"
#-----------------------------------------------------------------------------------------------------------------------
n00323_lit_string_α:      mov              r11, 423
                        mov              qword ptr [rsp + 768], 2             # result
                        mov              dword ptr [rsp + 772], 5
                        mov              rax, qword ptr [rip + .LStorage___α_1046_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n00324_make_list_α
.LStorage___α_1046_0:   .quad            .LStorage___α_1046_0_s
.LStorage___α_1046_0_s: .string          "block"
#-----------------------------------------------------------------------------------------------------------------------
n00324_make_list_α:       mov              r11, 424
                        mov              rax, qword ptr [rsp + 736]
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n00325_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00325_assign_α:          mov              r11, 425
                        mov              rax, qword ptr [rsp + 672]
                        mov              rdx, qword ptr [rsp + 680]
                        mov              qword ptr [r9 + 272], rax            # Storage____STATIC__labels
                        mov              qword ptr [r9 + 280], rdx
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n00290_disjunction_as
n00325_assign_β:          mov              r11, 425;                            jmp   n00292_make_list_α
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
                        add              rsp, 944;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
Storage___ω:
                        add              rsp, 944;                            jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
Storage___dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .LStorage___α_1050_3]
                        push             rcx
                        lea              rcx, [rip + .LStorage___α_1050_2]
                        push             rcx;                                 jmp   FN__Storage__
.LStorage___α_1050_2:   add              rsp, 24
                        pop              r12;                                 jmp   r12
.LStorage___α_1050_3:   add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__Time__:
                        sub              rsp, 304
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
Time___α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00326_disjunction_α:    mov              r11, 426
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              dword ptr [rsp + 128], 0;            jmp   n00327_var_ref_α
n00326_disjunction_as:   mov              r11, 426
                        mov              eax, dword ptr [rsp + 128]
                        cmp              eax, 0;                              jne   .LTime___α_1065_0
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 120], rax;          jmp   n00328_kw_icon_α
.LTime___α_1065_0:                                                            jmp   n00328_kw_icon_α
n00326_disjunction_β:    mov              r11, 426
                        mov              eax, dword ptr [rsp + 128];          jmp   n00328_kw_icon_α
n00326_disjunction_af:   mov              r11, 426
                        add              dword ptr [rsp + 128], 1
                        mov              eax, dword ptr [rsp + 128];          jmp   n00328_kw_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00328_kw_icon_α:        mov              r11, 427
                        mov              rdi, qword ptr [rip + .LTime___α_1066_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    Time___ω
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx;           jmp   n00329_var_α
n00328_kw_icon_β:        mov              r11, 427;                            jmp   Time___ω
.LTime___α_1066_0:      .quad            .LTime___α_1066_0_s
.LTime___α_1066_0_s:    .string          "&time"
#-----------------------------------------------------------------------------------------------------------------------
n00329_var_α:            mov              r11, 428
                        mov              rax, qword ptr [r9 + 304]            # Time____STATIC__lasttime
                        mov              rdx, qword ptr [r9 + 312]
                        mov              qword ptr [rsp + 96], rax            # result
                        mov              qword ptr [rsp + 104], rdx;          jmp   n00330_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n00330_coerce_numeric_α: mov              r11, 429
                        mov              eax, dword ptr [rsp + 64]
                        cmp              al, 5;                               je    .LTime___α_1069_1
                        cmp              al, 3;                               jne   .LTime___α_1069_0
                        mov              eax, dword ptr [rsp + 96]
                        cmp              al, 3;                               jne   .LTime___α_1069_0
.LTime___α_1069_1:      mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 56], rax;           jmp   n00331_coerce_numeric_α
.LTime___α_1069_0:      lea              rdi, [rsp + 64]
                        lea              rsi, [rsp + 96]
                        lea              rdx, [rsp + 48]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00331_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n00331_coerce_numeric_α: mov              r11, 430
                        mov              eax, dword ptr [rsp + 96]
                        cmp              al, 5;                               je    .LTime___α_1071_1
                        cmp              al, 3;                               jne   .LTime___α_1071_0
                        mov              eax, dword ptr [rsp + 64]
                        cmp              al, 3;                               jne   .LTime___α_1071_0
.LTime___α_1071_1:      mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 40], rax;           jmp   n00332_binop_α
.LTime___α_1071_0:      lea              rdi, [rsp + 96]
                        lea              rsi, [rsp + 64]
                        lea              rdx, [rsp + 32]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00332_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00332_binop_α:          mov              r11, 431
                        mov              eax, dword ptr [rsp + 48]
                        mov              ecx, dword ptr [rsp + 32]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .LTime___α_1072_2
                        mov              rax, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 40]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 16], 3
                        mov              qword ptr [rsp + 24], rax;           jmp   .LTime___α_1072_7
.LTime___α_1072_2:      and              edx, 1;                              jz    .LTime___α_1072_0
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdi, qword ptr [rsp + 40]
                        cmp              al, 5;                               je    .LTime___α_1072_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .LTime___α_1072_4
.LTime___α_1072_3:      movq             xmm0, rsi
.LTime___α_1072_4:      cmp              cl, 5;                               je    .LTime___α_1072_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .LTime___α_1072_6
.LTime___α_1072_5:      movq             xmm1, rdi
.LTime___α_1072_6:      subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 16], 5
                        mov              qword ptr [rsp + 24], rax
.LTime___α_1072_7:                                                            jmp   n00333_return_α
.LTime___α_1072_0:      mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rcx, qword ptr [rsp + 40]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    Time___ω
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx;           jmp   n00333_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00333_return_α:         mov              r11, 432
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   Time___γ
#-----------------------------------------------------------------------------------------------------------------------
n00327_var_ref_α:        mov              r11, 433
                        mov              rax, 4294967336
                        mov              rdx, 1879052608                      # Time____INITFLAG__0
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n00334_nulltest_var_α
n00327_var_ref_β:        mov              r11, 433;                            jmp   n00326_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00334_nulltest_var_α:   mov              r11, 434
                        mov              eax, dword ptr [rsp + 192]
                        cmp              al, 104;                             je    n00326_disjunction_af
                        mov              rdi, qword ptr [rsp + 192]
                        mov              rsi, qword ptr [rsp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00326_disjunction_af
                        cmp              eax, 0;                              jne   n00326_disjunction_af
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 216], rax;          jmp   n00335_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00335_lit_integer_α:    mov              r11, 435
                        mov              qword ptr [rsp + 240], 3             # result
                        mov              rax, qword ptr [rip + .LTime___α_1077_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n00336_assign_var_α
.LTime___α_1077_0:      .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00336_assign_var_α:     mov              r11, 436
                        mov              rdi, qword ptr [rsp + 208]
                        mov              rsi, qword ptr [rsp + 216]
                        mov              rdx, qword ptr [rsp + 240]
                        mov              rcx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00326_disjunction_af
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n00337_kw_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00337_kw_icon_α:        mov              r11, 437
                        mov              rdi, qword ptr [rip + .LTime___α_1079_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00328_kw_icon_α
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx;          jmp   n00338_assign_α
n00337_kw_icon_β:        mov              r11, 437;                            jmp   n00328_kw_icon_α
.LTime___α_1079_0:      .quad            .LTime___α_1079_0_s
.LTime___α_1079_0_s:    .string          "&time"
#-----------------------------------------------------------------------------------------------------------------------
n00338_assign_α:         mov              r11, 438
                        mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              qword ptr [r9 + 304], rax            # Time____STATIC__lasttime
                        mov              qword ptr [r9 + 312], rdx
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx;          jmp   n00326_disjunction_as
n00338_assign_β:         mov              r11, 438;                            jmp   n00328_kw_icon_α
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
                        add              rsp, 304;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
Time___ω:
                        add              rsp, 304;                            jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
Time___dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .LTime___α_1081_3]
                        push             rcx
                        lea              rcx, [rip + .LTime___α_1081_2]
                        push             rcx;                                 jmp   FN__Time__
.LTime___α_1081_2:      add              rsp, 24
                        pop              r12;                                 jmp   r12
.LTime___α_1081_3:      add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
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
n00339_call_proc_staged_α:
                        mov              r11, 439
                        mov              edi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det0@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lmain_α_1111_1
                        lea              rcx, [rip + .Lmain_α_1111_4]
                        push             rcx
                        lea              rcx, [rip + .Lmain_α_1111_3]
                        push             rcx;                                 jmp   rax
.Lmain_α_1111_3:        add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lmain_α_1111_2
.Lmain_α_1111_4:        add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lmain_α_1111_2
.Lmain_α_1111_1:        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_1111_2:        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lmain_α_1111_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 672]
                        mov              rdx, qword ptr [rsp + 680]
.Lmain_α_1111_29:       mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                        cmp              al, 104;                             je    n00340_var_α
                                                                              jmp   n00340_var_α
n00339_call_proc_staged_β:
                        mov              r11, 439;                            jmp   n00340_var_α
.Lmain_β_1111_0:        .quad            .Lmain_β_1111_0_s
.Lmain_β_1111_0_s:      .string          "Init__"
#-----------------------------------------------------------------------------------------------------------------------
n00340_var_α:            mov              r11, 440
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 648], rax;          jmp   n00341_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00341_lit_string_α:     mov              r11, 441
                        mov              qword ptr [rsp + 656], 2             # result
                        mov              dword ptr [rsp + 660], 2
                        mov              rax, qword ptr [rip + .Lmain_α_1114_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n00342_call_proc_staged_α
.Lmain_α_1114_0:        .quad            .Lmain_α_1114_0_s
.Lmain_α_1114_0_s:      .string          "n+"
#-----------------------------------------------------------------------------------------------------------------------
n00342_call_proc_staged_α:
                        mov              r11, 442
                        lea              rsi, [rsp + 640]
                        lea              rdx, [rsp + 656]
                        call             options_dcα;                         jmp   .Lmain_α_1116_2
.Lmain_α_1116_2:        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lmain_α_1116_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 576]
                        mov              rdx, qword ptr [rsp + 584]
.Lmain_α_1116_29:       mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              al, 104;                             je    n00343_disjunction_α
                                                                              jmp   n00344_assign_α
n00342_call_proc_staged_β:
                        mov              r11, 442;                            jmp   n00343_disjunction_α
.Lmain_β_1116_0:        .quad            .Lmain_β_1116_0_s
.Lmain_β_1116_0_s:      .string          "options"
#-----------------------------------------------------------------------------------------------------------------------
n00344_assign_α:         mov              r11, 443
                        mov              rax, qword ptr [rsp + 576]
                        mov              rdx, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx;          jmp   n00343_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00343_disjunction_α:    mov              r11, 444
                        mov              qword ptr [rsp + 448], 0
                        mov              qword ptr [rsp + 456], 0
                        mov              dword ptr [rsp + 464], 0;            jmp   n00345_var_ref_α
n00343_disjunction_as:   mov              r11, 444
                        mov              eax, dword ptr [rsp + 464]
                        cmp              eax, 0;                              jne   .Lmain_α_1119_0
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 456], rax;          jmp   n00346_assign_α
.Lmain_α_1119_0:        cmp              eax, 1;                              jne   .Lmain_α_1119_1
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 456], rax;          jmp   n00346_assign_α
.Lmain_α_1119_1:                                                              jmp   n00346_assign_α
n00343_disjunction_β:    mov              r11, 444
                        mov              eax, dword ptr [rsp + 464]
                        cmp              eax, 0;                              je    n00343_disjunction_af
                                                                              jmp   n00343_disjunction_af
n00343_disjunction_af:   mov              r11, 444
                        add              dword ptr [rsp + 464], 1
                        mov              eax, dword ptr [rsp + 464]
                        cmp              eax, 1;                              je    n00347_lit_integer_α
                                                                              jmp   n00348_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00346_assign_α:         mov              r11, 445
                        mov              rax, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        mov              qword ptr [r9 + 0], rax              # n
                        mov              qword ptr [r9 + 8], rdx;             jmp   n00348_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00348_disjunction_α:    mov              r11, 446
                        mov              qword ptr [rsp + 304], 0
                        mov              qword ptr [rsp + 312], 0
                        mov              dword ptr [rsp + 320], 0;            jmp   n00349_var_α
n00348_disjunction_as:   mov              r11, 446
                        mov              eax, dword ptr [rsp + 320]
                        cmp              eax, 0;                              jne   .Lmain_α_1122_0
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 312], rax;          jmp   n00350_var_α
.Lmain_α_1122_0:                                                              jmp   n00350_var_α
n00348_disjunction_β:    mov              r11, 446
                        mov              eax, dword ptr [rsp + 320];          jmp   n00350_var_α
n00348_disjunction_af:   mov              r11, 446
                        add              dword ptr [rsp + 320], 1
                        mov              eax, dword ptr [rsp + 320];          jmp   n00350_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00349_var_α:            mov              r11, 447
                        mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 416], rax           # result
                        mov              qword ptr [rsp + 424], rdx;          jmp   n00351_lit_integer_α
n00349_var_β:            mov              r11, 447;                            jmp   n00348_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00351_lit_integer_α:    mov              r11, 448
                        mov              qword ptr [rsp + 432], 3             # result
                        mov              rax, qword ptr [rip + .Lmain_α_1124_0]
                        mov              qword ptr [rsp + 440], rax;          jmp   n00352_binop_test_α
.Lmain_α_1124_0:        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00352_binop_test_α:     mov              r11, 449
                        mov              eax, dword ptr [rsp + 416]
                        cmp              al, 112;                             je    .Lmain_α_1125_0
                        mov              eax, dword ptr [rsp + 432]
                        cmp              al, 112;                             je    .Lmain_α_1125_0
                        mov              eax, dword ptr [rsp + 416]
                        cmp              al, 3;                               jne   .Lmain_α_1125_2
                        mov              eax, dword ptr [rsp + 432]
                        cmp              al, 3;                               jne   .Lmain_α_1125_2
.Lmain_α_1125_1:        mov              rax, qword ptr [rsp + 424]
                        mov              rcx, qword ptr [rsp + 440]
                        cmp              rax, rcx;                            jg    n00348_disjunction_af
                        mov              rcx, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 400], rcx
                        mov              rcx, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 408], rcx;          jmp   n00353_lit_string_α
.Lmain_α_1125_0:        mov              rdi, qword ptr [rsp + 416]
                        mov              rsi, qword ptr [rsp + 424]
                        mov              rdx, qword ptr [rsp + 432]
                        mov              rcx, qword ptr [rsp + 440]
                        mov              r8d, 6
                        lea              r9, [rsp + 400]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lmain_α_1125_1
                        cmp              eax, 1;                              je    n00348_disjunction_af
                                                                              jmp   n00353_lit_string_α
.Lmain_α_1125_2:        mov              rdi, qword ptr [rsp + 416]
                        mov              rsi, qword ptr [rsp + 424]
                        mov              rdx, qword ptr [rsp + 432]
                        mov              rcx, qword ptr [rsp + 440]
                        mov              r8d, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n00348_disjunction_af
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 408], rax;          jmp   n00353_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00353_lit_string_α:     mov              r11, 450
                        mov              qword ptr [rsp + 384], 2             # result
                        mov              dword ptr [rsp + 388], 37
                        mov              rax, qword ptr [rip + .Lmain_α_1126_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n00354_call_icon_α
.Lmain_α_1126_0:        .quad            .Lmain_α_1126_0_s
.Lmain_α_1126_0_s:      .string          "-n needs a positive numeric parameter"
#-----------------------------------------------------------------------------------------------------------------------
n00354_call_icon_α:      mov              r11, 451
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262308
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n00350_var_α
                                                                              jmp   n00348_disjunction_as
n00354_call_icon_β:      mov              r11, 451;                            jmp   n00350_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00350_var_α:            mov              r11, 452
                        mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 288], rax           # result
                        mov              qword ptr [rsp + 296], rdx;          jmp   n00355_call_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00355_call_icon_α:      mov              r11, 453
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262276
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n00356_var_α
                                                                              jmp   n00357_assign_α
n00355_call_icon_β:      mov              r11, 453;                            jmp   n00356_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00357_assign_α:         mov              r11, 454
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [r9 + 16], rax             # solution
                        mov              qword ptr [r9 + 24], rdx;            jmp   n00356_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00356_var_α:            mov              r11, 455
                        mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 192], rax           # result
                        mov              qword ptr [rsp + 200], rdx;          jmp   n00358_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00358_lit_string_α:     mov              r11, 456
                        mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 8
                        mov              rax, qword ptr [rip + .Lmain_α_1134_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n00359_call_icon_α
.Lmain_α_1134_0:        .quad            .Lmain_α_1134_0_s
.Lmain_α_1134_0_s:      .string          "-Queens:"
#-----------------------------------------------------------------------------------------------------------------------
n00359_call_icon_α:      mov              r11, 457
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
                        cmp              al, 104;                             je    n00360_lit_integer_α
                                                                              jmp   n00360_lit_integer_α
n00359_call_icon_β:      mov              r11, 457;                            jmp   n00360_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00360_lit_integer_α:    mov              r11, 458
                        mov              qword ptr [rsp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Lmain_α_1137_0]
                        mov              qword ptr [rsp + 120], rax;          jmp   n00361_call_proc_staged_α
.Lmain_α_1137_0:        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00361_call_proc_staged_α:
                        mov              r11, 459
                        lea              rsi, [rsp + 112]
                        call             q_dcα;                               jmp   .Lmain_α_1139_2
.Lmain_α_1139_2:        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lmain_α_1139_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
.Lmain_α_1139_29:       mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    n00362_call_proc_staged_α
                                                                              jmp   n00362_call_proc_staged_α
n00361_call_proc_staged_β:
                        mov              r11, 459;                            jmp   n00362_call_proc_staged_α
.Lmain_β_1139_0:        .quad            .Lmain_β_1139_0_s
.Lmain_β_1139_0_s:      .string          "q"
#-----------------------------------------------------------------------------------------------------------------------
n00362_call_proc_staged_α:
                        mov              r11, 460
                        call             Term___dcα;                          jmp   .Lmain_α_1141_2
.Lmain_α_1141_2:        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lmain_α_1141_29
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
.Lmain_α_1141_29:       mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   main_γ
n00362_call_proc_staged_β:
                        mov              r11, 460;                            jmp   main_ω
.Lmain_β_1141_0:        .quad            .Lmain_β_1141_0_s
.Lmain_β_1141_0_s:      .string          "Term__"
#-----------------------------------------------------------------------------------------------------------------------
n00347_lit_integer_α:    mov              r11, 461
                        mov              qword ptr [rsp + 560], 3             # result
                        mov              rax, qword ptr [rip + .Lmain_α_1142_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n00343_disjunction_as
n00347_lit_integer_β:    mov              r11, 461;                            jmp   n00343_disjunction_af
.Lmain_α_1142_0:        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n00345_var_ref_α:        mov              r11, 462
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 704]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx;          jmp   n00363_lit_string_α
n00345_var_ref_β:        mov              r11, 462;                            jmp   n00343_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00363_lit_string_α:     mov              r11, 463
                        mov              qword ptr [rsp + 512], 2             # result
                        mov              dword ptr [rsp + 516], 1
                        mov              rax, qword ptr [rip + .Lmain_α_1145_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n00364_subscript_α
.Lmain_α_1145_0:        .quad            .Lmain_α_1145_0_s
.Lmain_α_1145_0_s:      .string          "n"
#-----------------------------------------------------------------------------------------------------------------------
n00364_subscript_α:      mov              r11, 464
                        mov              rdi, qword ptr [rsp + 496]
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
                        cmp              al, 104;                             je    n00343_disjunction_af
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n00365_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00365_deref_α:          mov              r11, 465
                        mov              rdi, qword ptr [rsp + 528]
                        mov              rsi, qword ptr [rsp + 536]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00343_disjunction_af
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n00366_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n00366_unop_test_α:      mov              r11, 466
                        mov              eax, dword ptr [rsp + 544]
                        cmp              al, 104;                             je    n00343_disjunction_af
                        cmp              eax, 0;                              je    n00343_disjunction_af
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 488], rax;          jmp   n00343_disjunction_as
n00366_unop_test_β:      mov              r11, 466;                            jmp   n00343_disjunction_af
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
                        xor              edi, edi
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
