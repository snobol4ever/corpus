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
                        .type            n0_disjunction_bx, @function
n0_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:       mov              r11, 1
                        mov              qword ptr [rsp + 1472], 0
                        mov              qword ptr [rsp + 1480], 0
                        mov              dword ptr [rsp + 1488], 0;           jmp   n1_var_ref_α
.Ldisjunction_γ_0_as:   mov              r11, 1
                        mov              eax, dword ptr [rsp + 1488]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_112_0
                        mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1480], rax;         jmp   n30_lit_integer_α
.Ldisjunction_α_112_0:                                                        jmp   n30_lit_integer_α
n0_disjunction_β:       mov              r11, 1
                        mov              eax, dword ptr [rsp + 1488];         jmp   n30_lit_integer_α
.Ldisjunction_γ_0_af:   mov              r11, 1
.Ldisjunction_ω_0_af:   mov              r11, 1
                        add              dword ptr [rsp + 1488], 1
                        mov              eax, dword ptr [rsp + 1488];         jmp   n30_lit_integer_α
                        .size            n0_disjunction_bx, .-n0_disjunction_bx
                        .type            n1_var_ref_bx, @function
n1_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              r11, 2
                        mov              rax, 4294967336
                        mov              rdx, 1879052416                      # q__INITFLAG__0
                        mov              qword ptr [rsp + 2032], rax
                        mov              qword ptr [rsp + 2040], rdx;         jmp   n2_nulltest_var_α
n1_var_ref_β:           mov              r11, 2;                              jmp   .Ldisjunction_ω_0_af
                        .size            n1_var_ref_bx, .-n1_var_ref_bx
                        .type            n2_nulltest_var_bx, @function
n2_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_nulltest_var_α:      mov              r11, 3
                        mov              eax, dword ptr [rsp + 2032]
                        cmp              al, 104;                             je    .Ldisjunction_ω_0_af
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_0_af
                        cmp              eax, 0;                              jne   .Ldisjunction_ω_0_af
                        mov              rax, qword ptr [rsp + 2032]
                        mov              qword ptr [rsp + 2048], rax
                        mov              rax, qword ptr [rsp + 2040]
                        mov              qword ptr [rsp + 2056], rax;         jmp   n3_lit_integer_α
                        .size            n2_nulltest_var_bx, .-n2_nulltest_var_bx
                        .type            n3_lit_integer_bx, @function
n3_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:       mov              r11, 4
                        mov              qword ptr [rsp + 2080], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_116_0]
                        mov              qword ptr [rsp + 2088], rax;         jmp   n4_assign_var_α
.Llit_integer_α_116_0:  .quad            1
                        .size            n3_lit_integer_bx, .-n3_lit_integer_bx
                        .type            n4_assign_var_bx, @function
n4_assign_var_bx:
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_0_af
                        mov              qword ptr [rsp + 2064], rax
                        mov              qword ptr [rsp + 2072], rdx;         jmp   n5_lit_integer_α
                        .size            n4_assign_var_bx, .-n4_assign_var_bx
                        .type            n5_lit_integer_bx, @function
n5_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:       mov              r11, 6
                        mov              qword ptr [rsp + 1968], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_118_0]
                        mov              qword ptr [rsp + 1976], rax;         jmp   n6_var_α
.Llit_integer_α_118_0:  .quad            2
                        .size            n5_lit_integer_bx, .-n5_lit_integer_bx
                        .type            n6_var_bx, @function
n6_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:               mov              r11, 7
                        mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 1984], rax          # result
                        mov              qword ptr [rsp + 1992], rdx;         jmp   n7_coerce_numeric_α
                        .size            n6_var_bx, .-n6_var_bx
                        .type            n7_coerce_numeric_bx, @function
n7_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_coerce_numeric_α:    mov              r11, 8
                        mov              eax, dword ptr [rsp + 1984]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_121_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_121_0
                        mov              eax, dword ptr [rsp + 1968]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_121_0
.Lcoerce_numeric_α_121_1:
                        mov              rax, qword ptr [rsp + 1984]
                        mov              qword ptr [rsp + 1952], rax
                        mov              rax, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 1960], rax;         jmp   n8_binop_α
.Lcoerce_numeric_α_121_0:
                        lea              rdi, [rsp + 1984]
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
                        .size            n7_coerce_numeric_bx, .-n7_coerce_numeric_bx
                        .type            n8_binop_bx, @function
n8_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_binop_α:             mov              r11, 9
                        mov              eax, 3
                        mov              ecx, dword ptr [rsp + 1952]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_122_2
                        mov              rax, 2
                        mov              rdx, qword ptr [rsp + 1960]
                        imul             rax, rdx
                        mov              qword ptr [rsp + 1936], 3
                        mov              qword ptr [rsp + 1944], rax;         jmp   .Lbinop_α_122_7
.Lbinop_α_122_2:        and              edx, 1;                              jz    .Lbinop_α_122_0
                        mov              rsi, 2
                        mov              rdi, qword ptr [rsp + 1960]
                        cmp              al, 5;                               je    .Lbinop_α_122_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_122_4
.Lbinop_α_122_3:        movq             xmm0, rsi
.Lbinop_α_122_4:        cmp              cl, 5;                               je    .Lbinop_α_122_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_122_6
.Lbinop_α_122_5:        movq             xmm1, rdi
.Lbinop_α_122_6:        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1936], 5
                        mov              qword ptr [rsp + 1944], rax
.Lbinop_α_122_7:                                                              jmp   n9_lit_integer_α
.Lbinop_α_122_0:        mov              rdi, qword ptr [rsp + 1968]
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
                        .size            n8_binop_bx, .-n8_binop_bx
                        .type            n9_lit_integer_bx, @function
n9_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:       mov              r11, 10
                        mov              qword ptr [rsp + 2000], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_123_0]
                        mov              qword ptr [rsp + 2008], rax;         jmp   n10_coerce_numeric_α
.Llit_integer_α_123_0:  .quad            1
                        .size            n9_lit_integer_bx, .-n9_lit_integer_bx
                        .type            n10_coerce_numeric_bx, @function
n10_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_coerce_numeric_α:   mov              r11, 11
                        mov              eax, dword ptr [rsp + 1936]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_125_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_125_0
                        mov              eax, dword ptr [rsp + 2000]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_125_0
.Lcoerce_numeric_α_125_1:
                        mov              rax, qword ptr [rsp + 1936]
                        mov              qword ptr [rsp + 1920], rax
                        mov              rax, qword ptr [rsp + 1944]
                        mov              qword ptr [rsp + 1928], rax;         jmp   n11_binop_α
.Lcoerce_numeric_α_125_0:
                        lea              rdi, [rsp + 1936]
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
                        .size            n10_coerce_numeric_bx, .-n10_coerce_numeric_bx
                        .type            n11_binop_bx, @function
n11_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_binop_α:            mov              r11, 12
                        mov              eax, dword ptr [rsp + 1920]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_126_2
                        mov              rax, qword ptr [rsp + 1928]
                        mov              rdx, 1
                        sub              rax, rdx
                        mov              qword ptr [rsp + 1904], 3
                        mov              qword ptr [rsp + 1912], rax;         jmp   .Lbinop_α_126_7
.Lbinop_α_126_2:        and              edx, 1;                              jz    .Lbinop_α_126_0
                        mov              rsi, qword ptr [rsp + 1928]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_126_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_126_4
.Lbinop_α_126_3:        movq             xmm0, rsi
.Lbinop_α_126_4:        cmp              cl, 5;                               je    .Lbinop_α_126_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_126_6
.Lbinop_α_126_5:        movq             xmm1, rdi
.Lbinop_α_126_6:        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1904], 5
                        mov              qword ptr [rsp + 1912], rax
.Lbinop_α_126_7:                                                              jmp   n12_lit_integer_α
.Lbinop_α_126_0:        mov              rdi, qword ptr [rsp + 1920]
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
                        .size            n11_binop_bx, .-n11_binop_bx
                        .type            n12_lit_integer_bx, @function
n12_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:      mov              r11, 13
                        mov              qword ptr [rsp + 2016], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_127_0]
                        mov              qword ptr [rsp + 2024], rax;         jmp   n13_call_icon_α
.Llit_integer_α_127_0:  .quad            0
                        .size            n12_lit_integer_bx, .-n12_lit_integer_bx
                        .type            n13_call_icon_bx, @function
n13_call_icon_bx:
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
.Lcall_icon_α_rkfn129:  .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn129]
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
                        .size            n13_call_icon_bx, .-n13_call_icon_bx
                        .type            n14_assign_bx, @function
n14_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_assign_α:           mov              r11, 15
                        mov              rax, qword ptr [rsp + 1840]
                        mov              rdx, qword ptr [rsp + 1848]
                        mov              qword ptr [r9 + 80], rax             # q__STATIC__up
                        mov              qword ptr [r9 + 88], rdx;            jmp   n15_lit_integer_α
                        .size            n14_assign_bx, .-n14_assign_bx
                        .type            n15_lit_integer_bx, @function
n15_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_integer_α:      mov              r11, 16
                        mov              qword ptr [rsp + 1776], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_131_0]
                        mov              qword ptr [rsp + 1784], rax;         jmp   n16_var_α
.Llit_integer_α_131_0:  .quad            2
                        .size            n15_lit_integer_bx, .-n15_lit_integer_bx
                        .type            n16_var_bx, @function
n16_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_var_α:              mov              r11, 17
                        mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 1792], rax          # result
                        mov              qword ptr [rsp + 1800], rdx;         jmp   n17_coerce_numeric_α
                        .size            n16_var_bx, .-n16_var_bx
                        .type            n17_coerce_numeric_bx, @function
n17_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_coerce_numeric_α:   mov              r11, 18
                        mov              eax, dword ptr [rsp + 1792]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_134_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_134_0
                        mov              eax, dword ptr [rsp + 1776]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_134_0
.Lcoerce_numeric_α_134_1:
                        mov              rax, qword ptr [rsp + 1792]
                        mov              qword ptr [rsp + 1760], rax
                        mov              rax, qword ptr [rsp + 1800]
                        mov              qword ptr [rsp + 1768], rax;         jmp   n18_binop_α
.Lcoerce_numeric_α_134_0:
                        lea              rdi, [rsp + 1792]
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
                        .size            n17_coerce_numeric_bx, .-n17_coerce_numeric_bx
                        .type            n18_binop_bx, @function
n18_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_binop_α:            mov              r11, 19
                        mov              eax, 3
                        mov              ecx, dword ptr [rsp + 1760]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_135_2
                        mov              rax, 2
                        mov              rdx, qword ptr [rsp + 1768]
                        imul             rax, rdx
                        mov              qword ptr [rsp + 1744], 3
                        mov              qword ptr [rsp + 1752], rax;         jmp   .Lbinop_α_135_7
.Lbinop_α_135_2:        and              edx, 1;                              jz    .Lbinop_α_135_0
                        mov              rsi, 2
                        mov              rdi, qword ptr [rsp + 1768]
                        cmp              al, 5;                               je    .Lbinop_α_135_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_135_4
.Lbinop_α_135_3:        movq             xmm0, rsi
.Lbinop_α_135_4:        cmp              cl, 5;                               je    .Lbinop_α_135_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_135_6
.Lbinop_α_135_5:        movq             xmm1, rdi
.Lbinop_α_135_6:        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1744], 5
                        mov              qword ptr [rsp + 1752], rax
.Lbinop_α_135_7:                                                              jmp   n19_lit_integer_α
.Lbinop_α_135_0:        mov              rdi, qword ptr [rsp + 1776]
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
                        .size            n18_binop_bx, .-n18_binop_bx
                        .type            n19_lit_integer_bx, @function
n19_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_integer_α:      mov              r11, 20
                        mov              qword ptr [rsp + 1808], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_136_0]
                        mov              qword ptr [rsp + 1816], rax;         jmp   n20_coerce_numeric_α
.Llit_integer_α_136_0:  .quad            1
                        .size            n19_lit_integer_bx, .-n19_lit_integer_bx
                        .type            n20_coerce_numeric_bx, @function
n20_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_coerce_numeric_α:   mov              r11, 21
                        mov              eax, dword ptr [rsp + 1744]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_138_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_138_0
                        mov              eax, dword ptr [rsp + 1808]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_138_0
.Lcoerce_numeric_α_138_1:
                        mov              rax, qword ptr [rsp + 1744]
                        mov              qword ptr [rsp + 1728], rax
                        mov              rax, qword ptr [rsp + 1752]
                        mov              qword ptr [rsp + 1736], rax;         jmp   n21_binop_α
.Lcoerce_numeric_α_138_0:
                        lea              rdi, [rsp + 1744]
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
                        .size            n20_coerce_numeric_bx, .-n20_coerce_numeric_bx
                        .type            n21_binop_bx, @function
n21_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_binop_α:            mov              r11, 22
                        mov              eax, dword ptr [rsp + 1728]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_139_2
                        mov              rax, qword ptr [rsp + 1736]
                        mov              rdx, 1
                        sub              rax, rdx
                        mov              qword ptr [rsp + 1712], 3
                        mov              qword ptr [rsp + 1720], rax;         jmp   .Lbinop_α_139_7
.Lbinop_α_139_2:        and              edx, 1;                              jz    .Lbinop_α_139_0
                        mov              rsi, qword ptr [rsp + 1736]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_139_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_139_4
.Lbinop_α_139_3:        movq             xmm0, rsi
.Lbinop_α_139_4:        cmp              cl, 5;                               je    .Lbinop_α_139_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_139_6
.Lbinop_α_139_5:        movq             xmm1, rdi
.Lbinop_α_139_6:        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1712], 5
                        mov              qword ptr [rsp + 1720], rax
.Lbinop_α_139_7:                                                              jmp   n22_lit_integer_α
.Lbinop_α_139_0:        mov              rdi, qword ptr [rsp + 1728]
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
                        .size            n21_binop_bx, .-n21_binop_bx
                        .type            n22_lit_integer_bx, @function
n22_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_integer_α:      mov              r11, 23
                        mov              qword ptr [rsp + 1824], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_140_0]
                        mov              qword ptr [rsp + 1832], rax;         jmp   n23_call_icon_α
.Llit_integer_α_140_0:  .quad            0
                        .size            n22_lit_integer_bx, .-n22_lit_integer_bx
                        .type            n23_call_icon_bx, @function
n23_call_icon_bx:
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
.Lcall_icon_α_rkfn142:  .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn142]
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
                        .size            n23_call_icon_bx, .-n23_call_icon_bx
                        .type            n24_assign_bx, @function
n24_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_assign_α:           mov              r11, 25
                        mov              rax, qword ptr [rsp + 1648]
                        mov              rdx, qword ptr [rsp + 1656]
                        mov              qword ptr [r9 + 96], rax             # q__STATIC__down
                        mov              qword ptr [r9 + 104], rdx;           jmp   n25_var_α
                        .size            n24_assign_bx, .-n24_assign_bx
                        .type            n25_var_bx, @function
n25_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_var_α:              mov              r11, 26
                        mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 1600], rax          # result
                        mov              qword ptr [rsp + 1608], rdx;         jmp   n26_lit_integer_α
                        .size            n25_var_bx, .-n25_var_bx
                        .type            n26_lit_integer_bx, @function
n26_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_integer_α:      mov              r11, 27
                        mov              qword ptr [rsp + 1616], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_145_0]
                        mov              qword ptr [rsp + 1624], rax;         jmp   n27_call_icon_α
.Llit_integer_α_145_0:  .quad            0
                        .size            n26_lit_integer_bx, .-n26_lit_integer_bx
                        .type            n27_call_icon_bx, @function
n27_call_icon_bx:
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
.Lcall_icon_α_rkfn147:  .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn147]
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
                        .size            n27_call_icon_bx, .-n27_call_icon_bx
                        .type            n28_assign_bx, @function
n28_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_assign_α:           mov              r11, 29
                        mov              rax, qword ptr [rsp + 1536]
                        mov              rdx, qword ptr [rsp + 1544]
                        mov              qword ptr [r9 + 112], rax            # q__STATIC__rows
                        mov              qword ptr [r9 + 120], rdx
                        mov              qword ptr [rsp + 1520], rax
                        mov              qword ptr [rsp + 1528], rdx;         jmp   n29_conjunction_α
                        .size            n28_assign_bx, .-n28_assign_bx
                        .type            n29_conjunction_bx, @function
n29_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_conjunction_α:      mov              r11, 30
                        mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 1504], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1512], rax;         jmp   .Ldisjunction_γ_0_as
n29_conjunction_β:      mov              r11, 30;                             jmp   n30_lit_integer_α
                        .size            n29_conjunction_bx, .-n29_conjunction_bx
                        .type            n30_lit_integer_bx, @function
n30_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:      mov              r11, 31
                        mov              qword ptr [rsp + 592], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_150_0]
                        mov              qword ptr [rsp + 600], rax;          jmp   n31_var_ref_α
.Llit_integer_α_150_0:  .quad            0
                        .size            n30_lit_integer_bx, .-n30_lit_integer_bx
                        .type            n31_var_ref_bx, @function
n31_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_var_ref_α:          mov              r11, 32
                        mov              rax, 4294967336
                        mov              rdx, 1879052400                      # q__STATIC__rows
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx;          jmp   n32_lit_integer_α
                        .size            n31_var_ref_bx, .-n31_var_ref_bx
                        .type            n32_lit_integer_bx, @function
n32_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_integer_α:      mov              r11, 33
                        mov              qword ptr [rsp + 672], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_153_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n33_var_α
.Llit_integer_α_153_0:  .quad            1
                        .size            n32_lit_integer_bx, .-n32_lit_integer_bx
                        .type            n33_var_bx, @function
n33_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_var_α:              mov              r11, 34
                        mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 688], rax           # result
                        mov              qword ptr [rsp + 696], rdx;          jmp   n34_to_α
                        .size            n33_var_bx, .-n33_var_bx
                        .type            n34_to_bx, @function
n34_to_bx:
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
.Lto_α_156_0:           mov              rax, qword ptr [rsp + 656]
                        mov              rcx, qword ptr [rsp + 696]
                        cmp              rax, rcx;                            jg    q_ω
                        mov              qword ptr [rsp + 640], 3
                        mov              qword ptr [rsp + 648], rax;          jmp   n35_assign_α
n34_to_β:               mov              r11, 35
                        inc              qword ptr [rsp + 656];               jmp   .Lto_α_156_0
                        .size            n34_to_bx, .-n34_to_bx
                        .type            n35_assign_bx, @function
n35_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_assign_α:           mov              r11, 36
                        mov              rax, qword ptr [rsp + 640]
                        mov              rdx, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 2096], rax
                        mov              qword ptr [rsp + 2104], rdx
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx;          jmp   n36_subscript_α
                        .size            n35_assign_bx, .-n35_assign_bx
                        .type            n36_subscript_bx, @function
n36_subscript_bx:
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
                        .size            n36_subscript_bx, .-n36_subscript_bx
                        .type            n37_deref_bx, @function
n37_deref_bx:
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
                        .size            n37_deref_bx, .-n37_deref_bx
                        .type            n38_binop_test_bx, @function
n38_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_binop_test_α:       mov              r11, 39
                        mov              eax, dword ptr [rsp + 592]
                        cmp              al, 112;                             je    .Lbinop_test_α_160_0
                        mov              eax, dword ptr [rsp + 720]
                        cmp              al, 112;                             je    .Lbinop_test_α_160_0
                        mov              eax, dword ptr [rsp + 592]
                        cmp              al, 3;                               jne   .Lbinop_test_α_160_2
                        mov              eax, dword ptr [rsp + 720]
                        cmp              al, 3;                               jne   .Lbinop_test_α_160_2
.Lbinop_test_α_160_1:   mov              rax, qword ptr [rsp + 600]
                        mov              rcx, qword ptr [rsp + 728]
                        cmp              rax, rcx;                            jne   n34_to_β
                        mov              rcx, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 576], rcx
                        mov              rcx, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 584], rcx;          jmp   n39_var_ref_α
.Lbinop_test_α_160_0:   mov              rdi, qword ptr [rsp + 592]
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
                        test             eax, eax;                            je    .Lbinop_test_α_160_1
                        cmp              eax, 1;                              je    n34_to_β
                                                                              jmp   n39_var_ref_α
.Lbinop_test_α_160_2:   mov              rdi, qword ptr [rsp + 592]
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
                        .size            n38_binop_test_bx, .-n38_binop_test_bx
                        .type            n39_var_ref_bx, @function
n39_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_var_ref_α:          mov              r11, 40
                        mov              rax, 4294967336
                        mov              rdx, 1879052368                      # q__STATIC__up
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx;          jmp   n40_var_α
                        .size            n39_var_ref_bx, .-n39_var_ref_bx
                        .type            n40_var_bx, @function
n40_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_var_α:              mov              r11, 41
                        mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 848], rax           # result
                        mov              qword ptr [rsp + 856], rdx;          jmp   n41_var_α
                        .size            n40_var_bx, .-n40_var_bx
                        .type            n41_var_bx, @function
n41_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_var_α:              mov              r11, 42
                        mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 872], rax;          jmp   n42_coerce_numeric_α
                        .size            n41_var_bx, .-n41_var_bx
                        .type            n42_coerce_numeric_bx, @function
n42_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_coerce_numeric_α:   mov              r11, 43
                        mov              eax, dword ptr [rsp + 848]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_167_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_167_0
                        mov              eax, dword ptr [rsp + 2096]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_167_0
.Lcoerce_numeric_α_167_1:
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 840], rax;          jmp   n43_coerce_numeric_α
.Lcoerce_numeric_α_167_0:
                        lea              rdi, [rsp + 848]
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
                        .size            n42_coerce_numeric_bx, .-n42_coerce_numeric_bx
                        .type            n43_coerce_numeric_bx, @function
n43_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_coerce_numeric_α:   mov              r11, 44
                        mov              eax, dword ptr [rsp + 2096]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_169_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_169_0
                        mov              eax, dword ptr [rsp + 848]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_169_0
.Lcoerce_numeric_α_169_1:
                        mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 824], rax;          jmp   n44_binop_α
.Lcoerce_numeric_α_169_0:
                        lea              rdi, [rsp + 2096]
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
                        .size            n43_coerce_numeric_bx, .-n43_coerce_numeric_bx
                        .type            n44_binop_bx, @function
n44_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_binop_α:            mov              r11, 45
                        mov              eax, dword ptr [rsp + 832]
                        mov              ecx, dword ptr [rsp + 816]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_170_2
                        mov              rax, qword ptr [rsp + 840]
                        mov              rdx, qword ptr [rsp + 824]
                        add              rax, rdx
                        mov              qword ptr [rsp + 800], 3
                        mov              qword ptr [rsp + 808], rax;          jmp   .Lbinop_α_170_7
.Lbinop_α_170_2:        and              edx, 1;                              jz    .Lbinop_α_170_0
                        mov              rsi, qword ptr [rsp + 840]
                        mov              rdi, qword ptr [rsp + 824]
                        cmp              al, 5;                               je    .Lbinop_α_170_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_170_4
.Lbinop_α_170_3:        movq             xmm0, rsi
.Lbinop_α_170_4:        cmp              cl, 5;                               je    .Lbinop_α_170_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_170_6
.Lbinop_α_170_5:        movq             xmm1, rdi
.Lbinop_α_170_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 800], 5
                        mov              qword ptr [rsp + 808], rax
.Lbinop_α_170_7:                                                              jmp   n45_var_α
.Lbinop_α_170_0:        mov              rdi, qword ptr [rsp + 832]
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
                        .size            n44_binop_bx, .-n44_binop_bx
                        .type            n45_var_bx, @function
n45_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_var_α:              mov              r11, 46
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 888], rax;          jmp   n46_coerce_numeric_α
                        .size            n45_var_bx, .-n45_var_bx
                        .type            n46_coerce_numeric_bx, @function
n46_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_coerce_numeric_α:   mov              r11, 47
                        mov              eax, dword ptr [rsp + 800]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_174_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_174_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_174_0
.Lcoerce_numeric_α_174_1:
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 792], rax;          jmp   n47_coerce_numeric_α
.Lcoerce_numeric_α_174_0:
                        lea              rdi, [rsp + 800]
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
                        .size            n46_coerce_numeric_bx, .-n46_coerce_numeric_bx
                        .type            n47_coerce_numeric_bx, @function
n47_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_coerce_numeric_α:   mov              r11, 48
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_176_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_176_0
                        mov              eax, dword ptr [rsp + 800]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_176_0
.Lcoerce_numeric_α_176_1:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 776], rax;          jmp   n48_binop_α
.Lcoerce_numeric_α_176_0:
                        lea              rdi, [rsp + 16]
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
                        .size            n47_coerce_numeric_bx, .-n47_coerce_numeric_bx
                        .type            n48_binop_bx, @function
n48_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_binop_α:            mov              r11, 49
                        mov              eax, dword ptr [rsp + 784]
                        mov              ecx, dword ptr [rsp + 768]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_177_2
                        mov              rax, qword ptr [rsp + 792]
                        mov              rdx, qword ptr [rsp + 776]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 752], 3
                        mov              qword ptr [rsp + 760], rax;          jmp   .Lbinop_α_177_7
.Lbinop_α_177_2:        and              edx, 1;                              jz    .Lbinop_α_177_0
                        mov              rsi, qword ptr [rsp + 792]
                        mov              rdi, qword ptr [rsp + 776]
                        cmp              al, 5;                               je    .Lbinop_α_177_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_177_4
.Lbinop_α_177_3:        movq             xmm0, rsi
.Lbinop_α_177_4:        cmp              cl, 5;                               je    .Lbinop_α_177_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_177_6
.Lbinop_α_177_5:        movq             xmm1, rdi
.Lbinop_α_177_6:        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 752], 5
                        mov              qword ptr [rsp + 760], rax
.Lbinop_α_177_7:                                                              jmp   n49_subscript_α
.Lbinop_α_177_0:        mov              rdi, qword ptr [rsp + 784]
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
                        .size            n48_binop_bx, .-n48_binop_bx
                        .type            n49_subscript_bx, @function
n49_subscript_bx:
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
                        .size            n49_subscript_bx, .-n49_subscript_bx
                        .type            n50_deref_bx, @function
n50_deref_bx:
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
                        .size            n50_deref_bx, .-n50_deref_bx
                        .type            n51_binop_test_bx, @function
n51_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_binop_test_α:       mov              r11, 52
                        mov              eax, dword ptr [rsp + 576]
                        cmp              al, 112;                             je    .Lbinop_test_α_180_0
                        mov              eax, dword ptr [rsp + 912]
                        cmp              al, 112;                             je    .Lbinop_test_α_180_0
                        mov              eax, dword ptr [rsp + 576]
                        cmp              al, 3;                               jne   .Lbinop_test_α_180_2
                        mov              eax, dword ptr [rsp + 912]
                        cmp              al, 3;                               jne   .Lbinop_test_α_180_2
.Lbinop_test_α_180_1:   mov              rax, qword ptr [rsp + 584]
                        mov              rcx, qword ptr [rsp + 920]
                        cmp              rax, rcx;                            jne   n34_to_β
                        mov              rcx, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 560], rcx
                        mov              rcx, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 568], rcx;          jmp   n52_var_ref_α
.Lbinop_test_α_180_0:   mov              rdi, qword ptr [rsp + 576]
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
                        test             eax, eax;                            je    .Lbinop_test_α_180_1
                        cmp              eax, 1;                              je    n34_to_β
                                                                              jmp   n52_var_ref_α
.Lbinop_test_α_180_2:   mov              rdi, qword ptr [rsp + 576]
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
                        .size            n51_binop_test_bx, .-n51_binop_test_bx
                        .type            n52_var_ref_bx, @function
n52_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_var_ref_α:          mov              r11, 53
                        mov              rax, 4294967336
                        mov              rdx, 1879052384                      # q__STATIC__down
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx;          jmp   n53_var_α
                        .size            n52_var_ref_bx, .-n52_var_ref_bx
                        .type            n53_var_bx, @function
n53_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_var_α:              mov              r11, 54
                        mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n54_var_α
                        .size            n53_var_bx, .-n53_var_bx
                        .type            n54_var_bx, @function
n54_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_var_α:              mov              r11, 55
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n55_coerce_numeric_α
                        .size            n54_var_bx, .-n54_var_bx
                        .type            n55_coerce_numeric_bx, @function
n55_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_coerce_numeric_α:   mov              r11, 56
                        mov              eax, dword ptr [rsp + 2096]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_188_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_188_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_188_0
.Lcoerce_numeric_α_188_1:
                        mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n56_coerce_numeric_α
.Lcoerce_numeric_α_188_0:
                        lea              rdi, [rsp + 2096]
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
                        .size            n55_coerce_numeric_bx, .-n55_coerce_numeric_bx
                        .type            n56_coerce_numeric_bx, @function
n56_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_coerce_numeric_α:   mov              r11, 57
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_190_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_190_0
                        mov              eax, dword ptr [rsp + 2096]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_190_0
.Lcoerce_numeric_α_190_1:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n57_binop_α
.Lcoerce_numeric_α_190_0:
                        lea              rdi, [rsp + 16]
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
                        .size            n56_coerce_numeric_bx, .-n56_coerce_numeric_bx
                        .type            n57_binop_bx, @function
n57_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_binop_α:            mov              r11, 58
                        mov              eax, dword ptr [rsp + 1008]
                        mov              ecx, dword ptr [rsp + 992]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_191_2
                        mov              rax, qword ptr [rsp + 1016]
                        mov              rdx, qword ptr [rsp + 1000]
                        add              rax, rdx
                        mov              qword ptr [rsp + 976], 3
                        mov              qword ptr [rsp + 984], rax;          jmp   .Lbinop_α_191_7
.Lbinop_α_191_2:        and              edx, 1;                              jz    .Lbinop_α_191_0
                        mov              rsi, qword ptr [rsp + 1016]
                        mov              rdi, qword ptr [rsp + 1000]
                        cmp              al, 5;                               je    .Lbinop_α_191_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_191_4
.Lbinop_α_191_3:        movq             xmm0, rsi
.Lbinop_α_191_4:        cmp              cl, 5;                               je    .Lbinop_α_191_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_191_6
.Lbinop_α_191_5:        movq             xmm1, rdi
.Lbinop_α_191_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 976], 5
                        mov              qword ptr [rsp + 984], rax
.Lbinop_α_191_7:                                                              jmp   n58_lit_integer_α
.Lbinop_α_191_0:        mov              rdi, qword ptr [rsp + 1008]
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
                        .size            n57_binop_bx, .-n57_binop_bx
                        .type            n58_lit_integer_bx, @function
n58_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_integer_α:      mov              r11, 59
                        mov              qword ptr [rsp + 1056], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_192_0]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n59_coerce_numeric_α
.Llit_integer_α_192_0:  .quad            1
                        .size            n58_lit_integer_bx, .-n58_lit_integer_bx
                        .type            n59_coerce_numeric_bx, @function
n59_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_coerce_numeric_α:   mov              r11, 60
                        mov              eax, dword ptr [rsp + 976]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_194_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_194_0
                        mov              eax, dword ptr [rsp + 1056]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_194_0
.Lcoerce_numeric_α_194_1:
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 968], rax;          jmp   n60_binop_α
.Lcoerce_numeric_α_194_0:
                        lea              rdi, [rsp + 976]
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
                        .size            n59_coerce_numeric_bx, .-n59_coerce_numeric_bx
                        .type            n60_binop_bx, @function
n60_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_binop_α:            mov              r11, 61
                        mov              eax, dword ptr [rsp + 960]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_195_2
                        mov              rax, qword ptr [rsp + 968]
                        mov              rdx, 1
                        sub              rax, rdx
                        mov              qword ptr [rsp + 944], 3
                        mov              qword ptr [rsp + 952], rax;          jmp   .Lbinop_α_195_7
.Lbinop_α_195_2:        and              edx, 1;                              jz    .Lbinop_α_195_0
                        mov              rsi, qword ptr [rsp + 968]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_195_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_195_4
.Lbinop_α_195_3:        movq             xmm0, rsi
.Lbinop_α_195_4:        cmp              cl, 5;                               je    .Lbinop_α_195_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_195_6
.Lbinop_α_195_5:        movq             xmm1, rdi
.Lbinop_α_195_6:        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 944], 5
                        mov              qword ptr [rsp + 952], rax
.Lbinop_α_195_7:                                                              jmp   n61_subscript_α
.Lbinop_α_195_0:        mov              rdi, qword ptr [rsp + 960]
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
                        .size            n60_binop_bx, .-n60_binop_bx
                        .type            n61_subscript_bx, @function
n61_subscript_bx:
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
                        .size            n61_subscript_bx, .-n61_subscript_bx
                        .type            n62_deref_bx, @function
n62_deref_bx:
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
                        .size            n62_deref_bx, .-n62_deref_bx
                        .type            n63_binop_test_bx, @function
n63_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_binop_test_α:       mov              r11, 64
                        mov              eax, dword ptr [rsp + 560]
                        cmp              al, 112;                             je    .Lbinop_test_α_198_0
                        mov              eax, dword ptr [rsp + 1088]
                        cmp              al, 112;                             je    .Lbinop_test_α_198_0
                        mov              eax, dword ptr [rsp + 560]
                        cmp              al, 3;                               jne   .Lbinop_test_α_198_2
                        mov              eax, dword ptr [rsp + 1088]
                        cmp              al, 3;                               jne   .Lbinop_test_α_198_2
.Lbinop_test_α_198_1:   mov              rax, qword ptr [rsp + 568]
                        mov              rcx, qword ptr [rsp + 1096]
                        cmp              rax, rcx;                            jne   n34_to_β
                        mov              rcx, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 544], rcx
                        mov              rcx, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 552], rcx;          jmp   n64_var_ref_α
.Lbinop_test_α_198_0:   mov              rdi, qword ptr [rsp + 560]
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
                        test             eax, eax;                            je    .Lbinop_test_α_198_1
                        cmp              eax, 1;                              je    n34_to_β
                                                                              jmp   n64_var_ref_α
.Lbinop_test_α_198_2:   mov              rdi, qword ptr [rsp + 560]
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
                        .size            n63_binop_test_bx, .-n63_binop_test_bx
                        .type            n64_var_ref_bx, @function
n64_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_var_ref_α:          mov              r11, 65
                        mov              rax, 4294967336
                        mov              rdx, 1879052400                      # q__STATIC__rows
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx;           jmp   n65_var_α
                        .size            n64_var_ref_bx, .-n64_var_ref_bx
                        .type            n65_var_bx, @function
n65_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_var_α:              mov              r11, 66
                        mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 72], rax;           jmp   n66_subscript_α
                        .size            n65_var_bx, .-n65_var_bx
                        .type            n66_subscript_bx, @function
n66_subscript_bx:
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
                        .size            n66_subscript_bx, .-n66_subscript_bx
                        .type            n67_var_ref_bx, @function
n67_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_var_ref_α:          mov              r11, 68
                        mov              rax, 4294967336
                        mov              rdx, 1879052368                      # q__STATIC__up
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx;          jmp   n68_var_α
                        .size            n67_var_ref_bx, .-n67_var_ref_bx
                        .type            n68_var_bx, @function
n68_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_var_α:              mov              r11, 69
                        mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 240], rax           # result
                        mov              qword ptr [rsp + 248], rdx;          jmp   n69_var_α
                        .size            n68_var_bx, .-n68_var_bx
                        .type            n69_var_bx, @function
n69_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_var_α:              mov              r11, 70
                        mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 264], rax;          jmp   n70_coerce_numeric_α
                        .size            n69_var_bx, .-n69_var_bx
                        .type            n70_coerce_numeric_bx, @function
n70_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_coerce_numeric_α:   mov              r11, 71
                        mov              eax, dword ptr [rsp + 240]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_210_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_210_0
                        mov              eax, dword ptr [rsp + 2096]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_210_0
.Lcoerce_numeric_α_210_1:
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 232], rax;          jmp   n71_coerce_numeric_α
.Lcoerce_numeric_α_210_0:
                        lea              rdi, [rsp + 240]
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
                        .size            n70_coerce_numeric_bx, .-n70_coerce_numeric_bx
                        .type            n71_coerce_numeric_bx, @function
n71_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_coerce_numeric_α:   mov              r11, 72
                        mov              eax, dword ptr [rsp + 2096]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_212_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_212_0
                        mov              eax, dword ptr [rsp + 240]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_212_0
.Lcoerce_numeric_α_212_1:
                        mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 216], rax;          jmp   n72_binop_α
.Lcoerce_numeric_α_212_0:
                        lea              rdi, [rsp + 2096]
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
                        .size            n71_coerce_numeric_bx, .-n71_coerce_numeric_bx
                        .type            n72_binop_bx, @function
n72_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_binop_α:            mov              r11, 73
                        mov              eax, dword ptr [rsp + 224]
                        mov              ecx, dword ptr [rsp + 208]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_213_2
                        mov              rax, qword ptr [rsp + 232]
                        mov              rdx, qword ptr [rsp + 216]
                        add              rax, rdx
                        mov              qword ptr [rsp + 192], 3
                        mov              qword ptr [rsp + 200], rax;          jmp   .Lbinop_α_213_7
.Lbinop_α_213_2:        and              edx, 1;                              jz    .Lbinop_α_213_0
                        mov              rsi, qword ptr [rsp + 232]
                        mov              rdi, qword ptr [rsp + 216]
                        cmp              al, 5;                               je    .Lbinop_α_213_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_213_4
.Lbinop_α_213_3:        movq             xmm0, rsi
.Lbinop_α_213_4:        cmp              cl, 5;                               je    .Lbinop_α_213_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_213_6
.Lbinop_α_213_5:        movq             xmm1, rdi
.Lbinop_α_213_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 192], 5
                        mov              qword ptr [rsp + 200], rax
.Lbinop_α_213_7:                                                              jmp   n73_var_α
.Lbinop_α_213_0:        mov              rdi, qword ptr [rsp + 224]
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
                        .size            n72_binop_bx, .-n72_binop_bx
                        .type            n73_var_bx, @function
n73_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_var_α:              mov              r11, 74
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 280], rax;          jmp   n74_coerce_numeric_α
                        .size            n73_var_bx, .-n73_var_bx
                        .type            n74_coerce_numeric_bx, @function
n74_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_coerce_numeric_α:   mov              r11, 75
                        mov              eax, dword ptr [rsp + 192]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_217_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_217_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_217_0
.Lcoerce_numeric_α_217_1:
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 184], rax;          jmp   n75_coerce_numeric_α
.Lcoerce_numeric_α_217_0:
                        lea              rdi, [rsp + 192]
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
                        .size            n74_coerce_numeric_bx, .-n74_coerce_numeric_bx
                        .type            n75_coerce_numeric_bx, @function
n75_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_coerce_numeric_α:   mov              r11, 76
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_219_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_219_0
                        mov              eax, dword ptr [rsp + 192]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_219_0
.Lcoerce_numeric_α_219_1:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 168], rax;          jmp   n76_binop_α
.Lcoerce_numeric_α_219_0:
                        lea              rdi, [rsp + 16]
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
                        .size            n75_coerce_numeric_bx, .-n75_coerce_numeric_bx
                        .type            n76_binop_bx, @function
n76_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_binop_α:            mov              r11, 77
                        mov              eax, dword ptr [rsp + 176]
                        mov              ecx, dword ptr [rsp + 160]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_220_2
                        mov              rax, qword ptr [rsp + 184]
                        mov              rdx, qword ptr [rsp + 168]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 144], 3
                        mov              qword ptr [rsp + 152], rax;          jmp   .Lbinop_α_220_7
.Lbinop_α_220_2:        and              edx, 1;                              jz    .Lbinop_α_220_0
                        mov              rsi, qword ptr [rsp + 184]
                        mov              rdi, qword ptr [rsp + 168]
                        cmp              al, 5;                               je    .Lbinop_α_220_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_220_4
.Lbinop_α_220_3:        movq             xmm0, rsi
.Lbinop_α_220_4:        cmp              cl, 5;                               je    .Lbinop_α_220_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_220_6
.Lbinop_α_220_5:        movq             xmm1, rdi
.Lbinop_α_220_6:        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 144], 5
                        mov              qword ptr [rsp + 152], rax
.Lbinop_α_220_7:                                                              jmp   n77_subscript_α
.Lbinop_α_220_0:        mov              rdi, qword ptr [rsp + 176]
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
                        .size            n76_binop_bx, .-n76_binop_bx
                        .type            n77_subscript_bx, @function
n77_subscript_bx:
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
                        .size            n77_subscript_bx, .-n77_subscript_bx
                        .type            n78_var_ref_bx, @function
n78_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_var_ref_α:          mov              r11, 79
                        mov              rax, 4294967336
                        mov              rdx, 1879052384                      # q__STATIC__down
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx;          jmp   n79_var_α
                        .size            n78_var_ref_bx, .-n78_var_ref_bx
                        .type            n79_var_bx, @function
n79_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_var_α:              mov              r11, 80
                        mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 440], rax;          jmp   n80_var_α
                        .size            n79_var_bx, .-n79_var_bx
                        .type            n80_var_bx, @function
n80_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_var_α:              mov              r11, 81
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 456], rax;          jmp   n81_coerce_numeric_α
                        .size            n80_var_bx, .-n80_var_bx
                        .type            n81_coerce_numeric_bx, @function
n81_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_coerce_numeric_α:   mov              r11, 82
                        mov              eax, dword ptr [rsp + 2096]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_229_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_229_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_229_0
.Lcoerce_numeric_α_229_1:
                        mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 424], rax;          jmp   n82_coerce_numeric_α
.Lcoerce_numeric_α_229_0:
                        lea              rdi, [rsp + 2096]
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
                        .size            n81_coerce_numeric_bx, .-n81_coerce_numeric_bx
                        .type            n82_coerce_numeric_bx, @function
n82_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_coerce_numeric_α:   mov              r11, 83
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_231_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_231_0
                        mov              eax, dword ptr [rsp + 2096]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_231_0
.Lcoerce_numeric_α_231_1:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 408], rax;          jmp   n83_binop_α
.Lcoerce_numeric_α_231_0:
                        lea              rdi, [rsp + 16]
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
                        .size            n82_coerce_numeric_bx, .-n82_coerce_numeric_bx
                        .type            n83_binop_bx, @function
n83_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_binop_α:            mov              r11, 84
                        mov              eax, dword ptr [rsp + 416]
                        mov              ecx, dword ptr [rsp + 400]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_232_2
                        mov              rax, qword ptr [rsp + 424]
                        mov              rdx, qword ptr [rsp + 408]
                        add              rax, rdx
                        mov              qword ptr [rsp + 384], 3
                        mov              qword ptr [rsp + 392], rax;          jmp   .Lbinop_α_232_7
.Lbinop_α_232_2:        and              edx, 1;                              jz    .Lbinop_α_232_0
                        mov              rsi, qword ptr [rsp + 424]
                        mov              rdi, qword ptr [rsp + 408]
                        cmp              al, 5;                               je    .Lbinop_α_232_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_232_4
.Lbinop_α_232_3:        movq             xmm0, rsi
.Lbinop_α_232_4:        cmp              cl, 5;                               je    .Lbinop_α_232_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_232_6
.Lbinop_α_232_5:        movq             xmm1, rdi
.Lbinop_α_232_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 384], 5
                        mov              qword ptr [rsp + 392], rax
.Lbinop_α_232_7:                                                              jmp   n84_lit_integer_α
.Lbinop_α_232_0:        mov              rdi, qword ptr [rsp + 416]
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
                        .size            n83_binop_bx, .-n83_binop_bx
                        .type            n84_lit_integer_bx, @function
n84_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_integer_α:      mov              r11, 85
                        mov              qword ptr [rsp + 464], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_233_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n85_coerce_numeric_α
.Llit_integer_α_233_0:  .quad            1
                        .size            n84_lit_integer_bx, .-n84_lit_integer_bx
                        .type            n85_coerce_numeric_bx, @function
n85_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_coerce_numeric_α:   mov              r11, 86
                        mov              eax, dword ptr [rsp + 384]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_235_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_235_0
                        mov              eax, dword ptr [rsp + 464]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_235_0
.Lcoerce_numeric_α_235_1:
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 376], rax;          jmp   n86_binop_α
.Lcoerce_numeric_α_235_0:
                        lea              rdi, [rsp + 384]
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
                        .size            n85_coerce_numeric_bx, .-n85_coerce_numeric_bx
                        .type            n86_binop_bx, @function
n86_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_binop_α:            mov              r11, 87
                        mov              eax, dword ptr [rsp + 368]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_236_2
                        mov              rax, qword ptr [rsp + 376]
                        mov              rdx, 1
                        sub              rax, rdx
                        mov              qword ptr [rsp + 352], 3
                        mov              qword ptr [rsp + 360], rax;          jmp   .Lbinop_α_236_7
.Lbinop_α_236_2:        and              edx, 1;                              jz    .Lbinop_α_236_0
                        mov              rsi, qword ptr [rsp + 376]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_236_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_236_4
.Lbinop_α_236_3:        movq             xmm0, rsi
.Lbinop_α_236_4:        cmp              cl, 5;                               je    .Lbinop_α_236_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_236_6
.Lbinop_α_236_5:        movq             xmm1, rdi
.Lbinop_α_236_6:        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 352], 5
                        mov              qword ptr [rsp + 360], rax
.Lbinop_α_236_7:                                                              jmp   n87_subscript_α
.Lbinop_α_236_0:        mov              rdi, qword ptr [rsp + 368]
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
                        .size            n86_binop_bx, .-n86_binop_bx
                        .type            n87_subscript_bx, @function
n87_subscript_bx:
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
                        .size            n87_subscript_bx, .-n87_subscript_bx
                        .type            n88_lit_integer_bx, @function
n88_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_integer_α:      mov              r11, 89
                        mov              qword ptr [rsp + 528], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_238_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n89_rev_assign_var_α
.Llit_integer_α_238_0:  .quad            1
                        .size            n88_lit_integer_bx, .-n88_lit_integer_bx
                        .type            n89_rev_assign_var_bx, @function
n89_rev_assign_var_bx:
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
                        .size            n89_rev_assign_var_bx, .-n89_rev_assign_var_bx
                        .type            n90_rev_assign_var_bx, @function
n90_rev_assign_var_bx:
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
                        .size            n90_rev_assign_var_bx, .-n90_rev_assign_var_bx
                        .type            n91_rev_assign_var_bx, @function
n91_rev_assign_var_bx:
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
                        .size            n91_rev_assign_var_bx, .-n91_rev_assign_var_bx
                        .type            n92_conjunction_bx, @function
n92_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_conjunction_α:      mov              r11, 93
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 40], rax;           jmp   n93_bound_α
n92_conjunction_β:      mov              r11, 93;                             jmp   q_ω
                        .size            n92_conjunction_bx, .-n92_conjunction_bx
                        .type            n93_bound_bx, @function
n93_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_bound_α:            mov              r11, 94
                        mov              qword ptr [rsp + 1104], rsp;         jmp   n94_var_ref_α
                        .size            n93_bound_bx, .-n93_bound_bx
                        .type            n94_var_ref_bx, @function
n94_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_var_ref_α:          mov              r11, 95
                        mov              rax, 4294967336
                        mov              rdx, 1879052304                      # solution
                        mov              qword ptr [rsp + 1392], rax
                        mov              qword ptr [rsp + 1400], rdx;         jmp   n95_var_α
                        .size            n94_var_ref_bx, .-n94_var_ref_bx
                        .type            n95_var_bx, @function
n95_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_var_α:              mov              r11, 96
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1408], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1416], rax;         jmp   n96_subscript_α
                        .size            n95_var_bx, .-n95_var_bx
                        .type            n96_subscript_bx, @function
n96_subscript_bx:
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
                        .size            n96_subscript_bx, .-n96_subscript_bx
                        .type            n97_var_bx, @function
n97_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_var_α:              mov              r11, 98
                        mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 1464], rax;         jmp   n98_assign_var_α
                        .size            n97_var_bx, .-n97_var_bx
                        .type            n98_assign_var_bx, @function
n98_assign_var_bx:
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
                        .size            n98_assign_var_bx, .-n98_assign_var_bx
                        .type            n99_disjunction_bx, @function
n99_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_disjunction_α:      mov              r11, 100
                        mov              qword ptr [rsp + 1168], 0
                        mov              qword ptr [rsp + 1176], 0
                        mov              dword ptr [rsp + 1184], 0;           jmp   n106_var_α
.Ldisjunction_γ_99_as:  mov              r11, 100
                        mov              eax, dword ptr [rsp + 1184]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_254_0
                        mov              rax, qword ptr [rsp + 1200]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 1208]
                        mov              qword ptr [rsp + 1176], rax;         jmp   n100_conjunction_α
.Ldisjunction_α_254_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_254_1
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 1176], rax;         jmp   n100_conjunction_α
.Ldisjunction_α_254_1:                                                        jmp   n100_conjunction_α
n99_disjunction_β:      mov              r11, 100
                        mov              eax, dword ptr [rsp + 1184]
                        cmp              eax, 0;                              je    n110_unmark_α
                                                                              jmp   n110_unmark_α
.Ldisjunction_γ_99_af:  mov              r11, 100
.Ldisjunction_ω_99_af:  mov              r11, 100
                        add              dword ptr [rsp + 1184], 1
                        mov              eax, dword ptr [rsp + 1184]
                        cmp              eax, 1;                              je    n101_var_α
                                                                              jmp   n110_unmark_α
                        .size            n99_disjunction_bx, .-n99_disjunction_bx
                        .type            n100_conjunction_bx, @function
n100_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n100_conjunction_α:     mov              r11, 101
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n110_unmark_α
n100_conjunction_β:     mov              r11, 101;                            jmp   n110_unmark_α
                        .size            n100_conjunction_bx, .-n100_conjunction_bx
                        .type            n101_var_bx, @function
n101_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_var_α:             mov              r11, 102
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1360], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1368], rax;         jmp   n102_lit_integer_α
n101_var_β:             mov              r11, 102;                            jmp   n110_unmark_α
                        .size            n101_var_bx, .-n101_var_bx
                        .type            n102_lit_integer_bx, @function
n102_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_integer_α:     mov              r11, 103
                        mov              qword ptr [rsp + 1376], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_258_0]
                        mov              qword ptr [rsp + 1384], rax;         jmp   n103_coerce_numeric_α
.Llit_integer_α_258_0:  .quad            1
                        .size            n102_lit_integer_bx, .-n102_lit_integer_bx
                        .type            n103_coerce_numeric_bx, @function
n103_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_coerce_numeric_α:  mov              r11, 104
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_260_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_260_0
                        mov              eax, dword ptr [rsp + 1376]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_260_0
.Lcoerce_numeric_α_260_1:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n104_binop_α
.Lcoerce_numeric_α_260_0:
                        lea              rdi, [rsp + 16]
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
                        .size            n103_coerce_numeric_bx, .-n103_coerce_numeric_bx
                        .type            n104_binop_bx, @function
n104_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_binop_α:           mov              r11, 105
                        mov              eax, dword ptr [rsp + 1344]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_261_2
                        mov              rax, qword ptr [rsp + 1352]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 1328], 3
                        mov              qword ptr [rsp + 1336], rax;         jmp   .Lbinop_α_261_7
.Lbinop_α_261_2:        and              edx, 1;                              jz    .Lbinop_α_261_0
                        mov              rsi, qword ptr [rsp + 1352]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_261_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_261_4
.Lbinop_α_261_3:        movq             xmm0, rsi
.Lbinop_α_261_4:        cmp              cl, 5;                               je    .Lbinop_α_261_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_261_6
.Lbinop_α_261_5:        movq             xmm1, rdi
.Lbinop_α_261_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1328], 5
                        mov              qword ptr [rsp + 1336], rax
.Lbinop_α_261_7:                                                              jmp   n105_call_proc_staged_α
.Lbinop_α_261_0:        mov              rdi, qword ptr [rsp + 1344]
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
                        cmp              al, 104;                             je    n110_unmark_α
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx;         jmp   n105_call_proc_staged_α
                        .size            n104_binop_bx, .-n104_binop_bx
                        .type            n105_call_proc_staged_bx, @function
n105_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n105_call_proc_staged_α:
                        mov              r11, 106
                        lea              rsi, [rsp + 1328]
                        call             q_dcα;                               jmp   .Lcall_proc_staged_α_263_2
.Lcall_proc_staged_α_263_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_263_29
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
.Lcall_proc_staged_α_263_29:
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx
                        cmp              al, 104;                             je    n110_unmark_α
                                                                              jmp   .Ldisjunction_γ_99_as
n105_call_proc_staged_β:
                        mov              r11, 106;                            jmp   n110_unmark_α
.Lcall_proc_staged_β_263_0:
                        .quad            .Lcall_proc_staged_β_263_0_s
.Lcall_proc_staged_β_263_0_s:
                        .string          "q"
                        .size            n105_call_proc_staged_bx, .-n105_call_proc_staged_bx
                        .type            n106_var_bx, @function
n106_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n106_var_α:             mov              r11, 107
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n107_var_α
n106_var_β:             mov              r11, 107;                            jmp   .Ldisjunction_ω_99_af
                        .size            n106_var_bx, .-n106_var_bx
                        .type            n107_var_bx, @function
n107_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n107_var_α:             mov              r11, 108
                        mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 1264], rax          # result
                        mov              qword ptr [rsp + 1272], rdx;         jmp   n108_binop_test_α
                        .size            n107_var_bx, .-n107_var_bx
                        .type            n108_binop_test_bx, @function
n108_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n108_binop_test_α:      mov              r11, 109
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 112;                             je    .Lbinop_test_α_267_0
                        mov              eax, dword ptr [rsp + 1264]
                        cmp              al, 112;                             je    .Lbinop_test_α_267_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lbinop_test_α_267_2
                        mov              eax, dword ptr [rsp + 1264]
                        cmp              al, 3;                               jne   .Lbinop_test_α_267_2
.Lbinop_test_α_267_1:   mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 1272]
                        cmp              rax, rcx;                            jne   .Ldisjunction_ω_99_af
                        mov              rcx, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 1232], rcx
                        mov              rcx, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 1240], rcx;         jmp   n109_call_proc_staged_α
.Lbinop_test_α_267_0:   mov              rdi, qword ptr [rsp + 16]
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
                        test             eax, eax;                            je    .Lbinop_test_α_267_1
                        cmp              eax, 1;                              je    .Ldisjunction_ω_99_af
                                                                              jmp   n109_call_proc_staged_α
.Lbinop_test_α_267_2:   mov              rdi, qword ptr [rsp + 16]
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
                        test             eax, eax;                            jz    .Ldisjunction_ω_99_af
                        mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 1240], rax;         jmp   n109_call_proc_staged_α
                        .size            n108_binop_test_bx, .-n108_binop_test_bx
                        .type            n109_call_proc_staged_bx, @function
n109_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n109_call_proc_staged_α:
                        mov              r11, 110
                        call             show_dcα;                            jmp   .Lcall_proc_staged_α_269_2
.Lcall_proc_staged_α_269_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_269_29
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
.Lcall_proc_staged_α_269_29:
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx
                        cmp              al, 104;                             je    n110_unmark_α
                                                                              jmp   .Ldisjunction_γ_99_as
n109_call_proc_staged_β:
                        mov              r11, 110;                            jmp   n110_unmark_α
.Lcall_proc_staged_β_269_0:
                        .quad            .Lcall_proc_staged_β_269_0_s
.Lcall_proc_staged_β_269_0_s:
                        .string          "show"
                        .size            n109_call_proc_staged_bx, .-n109_call_proc_staged_bx
                        .type            n110_unmark_bx, @function
n110_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n110_unmark_α:          mov              r11, 111
                        mov              rsp, qword ptr [rsp + 1104];         jmp   n91_rev_assign_var_β
                        .size            n110_unmark_bx, .-n110_unmark_bx
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
                        sub              rsp, 1424
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
show_α_body:
                        .type            n273_disjunction_bx, @function
n273_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n273_disjunction_α:     mov              r11, 112
                        mov              qword ptr [rsp + 896], 0
                        mov              qword ptr [rsp + 904], 0
                        mov              dword ptr [rsp + 912], 0;            jmp   n274_var_ref_α
.Ldisjunction_γ_273_as: mov              r11, 112
                        mov              eax, dword ptr [rsp + 912]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_329_0
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 904], rax;          jmp   n293_lit_string_α
.Ldisjunction_α_329_0:                                                        jmp   n293_lit_string_α
n273_disjunction_β:     mov              r11, 112
                        mov              eax, dword ptr [rsp + 912];          jmp   n293_lit_string_α
.Ldisjunction_γ_273_af: mov              r11, 112
.Ldisjunction_ω_273_af: mov              r11, 112
                        add              dword ptr [rsp + 912], 1
                        mov              eax, dword ptr [rsp + 912];          jmp   n293_lit_string_α
                        .size            n273_disjunction_bx, .-n273_disjunction_bx
                        .type            n274_var_ref_bx, @function
n274_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n274_var_ref_α:         mov              r11, 113
                        mov              rax, 4294967336
                        mov              rdx, 1879052480                      # show__INITFLAG__0
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx;         jmp   n275_nulltest_var_α
n274_var_ref_β:         mov              r11, 113;                            jmp   .Ldisjunction_ω_273_af
                        .size            n274_var_ref_bx, .-n274_var_ref_bx
                        .type            n275_nulltest_var_bx, @function
n275_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n275_nulltest_var_α:    mov              r11, 114
                        mov              eax, dword ptr [rsp + 1312]
                        cmp              al, 104;                             je    .Ldisjunction_ω_273_af
                        mov              rdi, qword ptr [rsp + 1312]
                        mov              rsi, qword ptr [rsp + 1320]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_273_af
                        cmp              eax, 0;                              jne   .Ldisjunction_ω_273_af
                        mov              rax, qword ptr [rsp + 1312]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 1320]
                        mov              qword ptr [rsp + 1336], rax;         jmp   n276_lit_integer_α
                        .size            n275_nulltest_var_bx, .-n275_nulltest_var_bx
                        .type            n276_lit_integer_bx, @function
n276_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n276_lit_integer_α:     mov              r11, 115
                        mov              qword ptr [rsp + 1360], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_333_0]
                        mov              qword ptr [rsp + 1368], rax;         jmp   n277_assign_var_α
.Llit_integer_α_333_0:  .quad            1
                        .size            n276_lit_integer_bx, .-n276_lit_integer_bx
                        .type            n277_assign_var_bx, @function
n277_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n277_assign_var_α:      mov              r11, 116
                        mov              rdi, qword ptr [rsp + 1328]
                        mov              rsi, qword ptr [rsp + 1336]
                        mov              rdx, qword ptr [rsp + 1360]
                        mov              rcx, qword ptr [rsp + 1368]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_273_af
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx;         jmp   n278_lit_integer_α
                        .size            n277_assign_var_bx, .-n277_assign_var_bx
                        .type            n278_lit_integer_bx, @function
n278_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n278_lit_integer_α:     mov              r11, 117
                        mov              qword ptr [rsp + 1296], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_335_0]
                        mov              qword ptr [rsp + 1304], rax;         jmp   n279_assign_α
.Llit_integer_α_335_0:  .quad            0
                        .size            n278_lit_integer_bx, .-n278_lit_integer_bx
                        .type            n279_assign_bx, @function
n279_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n279_assign_α:          mov              r11, 118
                        mov              rax, qword ptr [rsp + 1296]
                        mov              rdx, qword ptr [rsp + 1304]
                        mov              qword ptr [r9 + 144], rax            # show__STATIC__count
                        mov              qword ptr [r9 + 152], rdx;           jmp   n280_lit_string_α
                        .size            n279_assign_bx, .-n279_assign_bx
                        .type            n280_lit_string_bx, @function
n280_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n280_lit_string_α:      mov              r11, 119
                        mov              qword ptr [rsp + 1216], 2            # result
                        mov              dword ptr [rsp + 1220], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_337_0]
                        mov              qword ptr [rsp + 1224], rax;         jmp   n281_var_α
.Llit_string_α_337_0:   .quad            .Llit_string_α_337_0_s
.Llit_string_α_337_0_s: .string          "|   "
                        .size            n280_lit_string_bx, .-n280_lit_string_bx
                        .type            n281_var_bx, @function
n281_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n281_var_α:             mov              r11, 120
                        mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 1248], rax          # result
                        mov              qword ptr [rsp + 1256], rdx;         jmp   n282_call_icon_α
                        .size            n281_var_bx, .-n281_var_bx
                        .type            n282_call_icon_bx, @function
n282_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n282_call_icon_α:       mov              r11, 121
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 1192], rax
                        mov              rax, qword ptr [rsp + 1216]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 1176], rax
                        .section         .rodata
.Lcall_icon_α_rkfn340:  .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn340]
                        lea              rsi, [rsp + 1168]
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
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx
                        cmp              al, 104;                             je    n286_lit_string_α
                                                                              jmp   n283_lit_string_α
n282_call_icon_β:       mov              r11, 121;                            jmp   n286_lit_string_α
                        .size            n282_call_icon_bx, .-n282_call_icon_bx
                        .type            n283_lit_string_bx, @function
n283_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n283_lit_string_α:      mov              r11, 122
                        mov              qword ptr [rsp + 1264], 2            # result
                        mov              dword ptr [rsp + 1268], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_341_0]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n284_binop_α
.Llit_string_α_341_0:   .quad            .Llit_string_α_341_0_s
.Llit_string_α_341_0_s: .string          "|"
                        .size            n283_lit_string_bx, .-n283_lit_string_bx
                        .type            n284_binop_bx, @function
n284_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n284_binop_α:           mov              r11, 123
                        mov              rdi, qword ptr [rsp + 1152]
                        mov              rsi, qword ptr [rsp + 1160]
                        mov              rdx, qword ptr [rsp + 1264]
                        mov              rcx, qword ptr [rsp + 1272]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n285_assign_α
                        .size            n284_binop_bx, .-n284_binop_bx
                        .type            n285_assign_bx, @function
n285_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n285_assign_α:          mov              r11, 124
                        mov              rax, qword ptr [rsp + 1136]
                        mov              rdx, qword ptr [rsp + 1144]
                        mov              qword ptr [r9 + 160], rax            # show__STATIC__line
                        mov              qword ptr [r9 + 168], rdx;           jmp   n286_lit_string_α
                        .size            n285_assign_bx, .-n285_assign_bx
                        .type            n286_lit_string_bx, @function
n286_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n286_lit_string_α:      mov              r11, 125
                        mov              qword ptr [rsp + 1040], 2            # result
                        mov              dword ptr [rsp + 1044], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_344_0]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n287_var_α
.Llit_string_α_344_0:   .quad            .Llit_string_α_344_0_s
.Llit_string_α_344_0_s: .string          "----"
                        .size            n286_lit_string_bx, .-n286_lit_string_bx
                        .type            n287_var_bx, @function
n287_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n287_var_α:             mov              r11, 126
                        mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 1072], rax          # result
                        mov              qword ptr [rsp + 1080], rdx;         jmp   n288_call_icon_α
                        .size            n287_var_bx, .-n287_var_bx
                        .type            n288_call_icon_bx, @function
n288_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n288_call_icon_α:       mov              r11, 127
                        mov              rax, qword ptr [rsp + 1072]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 1080]
                        mov              qword ptr [rsp + 1016], rax
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 1000], rax
                        .section         .rodata
.Lcall_icon_α_rkfn347:  .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn347]
                        lea              rsi, [rsp + 992]
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
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        cmp              al, 104;                             je    n293_lit_string_α
                                                                              jmp   n289_lit_string_α
n288_call_icon_β:       mov              r11, 127;                            jmp   n293_lit_string_α
                        .size            n288_call_icon_bx, .-n288_call_icon_bx
                        .type            n289_lit_string_bx, @function
n289_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n289_lit_string_α:      mov              r11, 128
                        mov              qword ptr [rsp + 1088], 2            # result
                        mov              dword ptr [rsp + 1092], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_348_0]
                        mov              qword ptr [rsp + 1096], rax;         jmp   n290_binop_α
.Llit_string_α_348_0:   .quad            .Llit_string_α_348_0_s
.Llit_string_α_348_0_s: .string          "-"
                        .size            n289_lit_string_bx, .-n289_lit_string_bx
                        .type            n290_binop_bx, @function
n290_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n290_binop_α:           mov              r11, 129
                        mov              rdi, qword ptr [rsp + 976]
                        mov              rsi, qword ptr [rsp + 984]
                        mov              rdx, qword ptr [rsp + 1088]
                        mov              rcx, qword ptr [rsp + 1096]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n291_assign_α
                        .size            n290_binop_bx, .-n290_binop_bx
                        .type            n291_assign_bx, @function
n291_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n291_assign_α:          mov              r11, 130
                        mov              rax, qword ptr [rsp + 960]
                        mov              rdx, qword ptr [rsp + 968]
                        mov              qword ptr [r9 + 176], rax            # show__STATIC__border
                        mov              qword ptr [r9 + 184], rdx
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx;          jmp   n292_conjunction_α
                        .size            n291_assign_bx, .-n291_assign_bx
                        .type            n292_conjunction_bx, @function
n292_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n292_conjunction_α:     mov              r11, 131
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 936], rax;          jmp   .Ldisjunction_γ_273_as
n292_conjunction_β:     mov              r11, 131;                            jmp   n293_lit_string_α
                        .size            n292_conjunction_bx, .-n292_conjunction_bx
                        .type            n293_lit_string_bx, @function
n293_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n293_lit_string_α:      mov              r11, 132
                        mov              qword ptr [rsp + 784], 2             # result
                        mov              dword ptr [rsp + 788], 10
                        mov              rax, qword ptr [rip + .Llit_string_α_352_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n294_var_α
.Llit_string_α_352_0:   .quad            .Llit_string_α_352_0_s
.Llit_string_α_352_0_s: .string          "solution: "
                        .size            n293_lit_string_bx, .-n293_lit_string_bx
                        .type            n294_var_bx, @function
n294_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n294_var_α:             mov              r11, 133
                        mov              rax, qword ptr [r9 + 144]            # show__STATIC__count
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 864], rax           # result
                        mov              qword ptr [rsp + 872], rdx;          jmp   n295_lit_integer_α
                        .size            n294_var_bx, .-n294_var_bx
                        .type            n295_lit_integer_bx, @function
n295_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n295_lit_integer_α:     mov              r11, 134
                        mov              qword ptr [rsp + 880], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_354_0]
                        mov              qword ptr [rsp + 888], rax;          jmp   n296_coerce_numeric_α
.Llit_integer_α_354_0:  .quad            1
                        .size            n295_lit_integer_bx, .-n295_lit_integer_bx
                        .type            n296_coerce_numeric_bx, @function
n296_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n296_coerce_numeric_α:  mov              r11, 135
                        mov              eax, dword ptr [rsp + 864]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_356_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_356_0
                        mov              eax, dword ptr [rsp + 880]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_356_0
.Lcoerce_numeric_α_356_1:
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 856], rax;          jmp   n297_binop_α
.Lcoerce_numeric_α_356_0:
                        lea              rdi, [rsp + 864]
                        lea              rsi, [rsp + 880]
                        lea              rdx, [rsp + 848]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n297_binop_α
                        .size            n296_coerce_numeric_bx, .-n296_coerce_numeric_bx
                        .type            n297_binop_bx, @function
n297_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n297_binop_α:           mov              r11, 136
                        mov              eax, dword ptr [rsp + 848]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_357_2
                        mov              rax, qword ptr [rsp + 856]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 832], 3
                        mov              qword ptr [rsp + 840], rax;          jmp   .Lbinop_α_357_7
.Lbinop_α_357_2:        and              edx, 1;                              jz    .Lbinop_α_357_0
                        mov              rsi, qword ptr [rsp + 856]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_357_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_357_4
.Lbinop_α_357_3:        movq             xmm0, rsi
.Lbinop_α_357_4:        cmp              cl, 5;                               je    .Lbinop_α_357_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_357_6
.Lbinop_α_357_5:        movq             xmm1, rdi
.Lbinop_α_357_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 832], 5
                        mov              qword ptr [rsp + 840], rax
.Lbinop_α_357_7:                                                              jmp   n298_assign_α
.Lbinop_α_357_0:        mov              rdi, qword ptr [rsp + 848]
                        mov              rsi, qword ptr [rsp + 856]
                        mov              rdx, qword ptr [rsp + 880]
                        mov              rcx, qword ptr [rsp + 888]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n300_lit_string_α
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx;          jmp   n298_assign_α
                        .size            n297_binop_bx, .-n297_binop_bx
                        .type            n298_assign_bx, @function
n298_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n298_assign_α:          mov              r11, 137
                        mov              rax, qword ptr [rsp + 832]
                        mov              rdx, qword ptr [rsp + 840]
                        mov              qword ptr [r9 + 144], rax            # show__STATIC__count
                        mov              qword ptr [r9 + 152], rdx
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx;          jmp   n299_call_icon_α
                        .size            n298_assign_bx, .-n298_assign_bx
                        .type            n299_call_icon_bx, @function
n299_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n299_call_icon_α:       mov              r11, 138
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 760], rax
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 744], rax
                        .section         .rodata
.Lcall_icon_α_rkfn360:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn360]
                        lea              rsi, [rsp + 736]
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
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx
                        cmp              al, 104;                             je    n300_lit_string_α
                                                                              jmp   n300_lit_string_α
n299_call_icon_β:       mov              r11, 138;                            jmp   n300_lit_string_α
                        .size            n299_call_icon_bx, .-n299_call_icon_bx
                        .type            n300_lit_string_bx, @function
n300_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n300_lit_string_α:      mov              r11, 139
                        mov              qword ptr [rsp + 672], 2             # result
                        mov              dword ptr [rsp + 676], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_361_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n301_var_α
.Llit_string_α_361_0:   .quad            .Llit_string_α_361_0_s
.Llit_string_α_361_0_s: .string          "  "
                        .size            n300_lit_string_bx, .-n300_lit_string_bx
                        .type            n301_var_bx, @function
n301_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n301_var_α:             mov              r11, 140
                        mov              rax, qword ptr [r9 + 176]            # show__STATIC__border
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 704], rax           # result
                        mov              qword ptr [rsp + 712], rdx;          jmp   n302_call_icon_α
                        .size            n301_var_bx, .-n301_var_bx
                        .type            n302_call_icon_bx, @function
n302_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n302_call_icon_α:       mov              r11, 141
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 648], rax
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 632], rax
                        .section         .rodata
.Lcall_icon_α_rkfn364:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn364]
                        lea              rsi, [rsp + 624]
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
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              al, 104;                             je    n303_var_ref_α
                                                                              jmp   n303_var_ref_α
n302_call_icon_β:       mov              r11, 141;                            jmp   n303_var_ref_α
                        .size            n302_call_icon_bx, .-n302_call_icon_bx
                        .type            n303_var_ref_bx, @function
n303_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n303_var_ref_α:         mov              r11, 142
                        mov              rax, 4294967336
                        mov              rdx, 1879052448                      # show__STATIC__line
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx;           jmp   n304_lit_integer_α
                        .size            n303_var_ref_bx, .-n303_var_ref_bx
                        .type            n304_lit_integer_bx, @function
n304_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n304_lit_integer_α:     mov              r11, 143
                        mov              qword ptr [rsp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_367_0]
                        mov              qword ptr [rsp + 120], rax;          jmp   n305_var_α
.Llit_integer_α_367_0:  .quad            4
                        .size            n304_lit_integer_bx, .-n304_lit_integer_bx
                        .type            n305_var_bx, @function
n305_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n305_var_α:             mov              r11, 144
                        mov              rax, qword ptr [r9 + 16]             # solution
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 192], rax           # result
                        mov              qword ptr [rsp + 200], rdx;          jmp   n306_iterate_α
                        .size            n305_var_bx, .-n305_var_bx
                        .type            n306_iterate_bx, @function
n306_iterate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n306_iterate_α:         mov              r11, 145
                        mov              qword ptr [rsp + 176], 0
.Literate_α_370_0:      mov              rdi, qword ptr [rsp + 192]
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
                        cmp              al, 104;                             je    n327_call_icon_α
                                                                              jmp   n307_lit_integer_α
n306_iterate_β:         mov              r11, 145
                        inc              qword ptr [rsp + 176];               jmp   .Literate_α_370_0
                        .size            n306_iterate_bx, .-n306_iterate_bx
                        .type            n307_lit_integer_bx, @function
n307_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n307_lit_integer_α:     mov              r11, 146
                        mov              qword ptr [rsp + 208], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_371_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n308_coerce_numeric_α
.Llit_integer_α_371_0:  .quad            1
                        .size            n307_lit_integer_bx, .-n307_lit_integer_bx
                        .type            n308_coerce_numeric_bx, @function
n308_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n308_coerce_numeric_α:  mov              r11, 147
                        mov              eax, dword ptr [rsp + 160]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_373_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_373_0
                        mov              eax, dword ptr [rsp + 208]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_373_0
.Lcoerce_numeric_α_373_1:
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 152], rax;          jmp   n309_binop_α
.Lcoerce_numeric_α_373_0:
                        lea              rdi, [rsp + 160]
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
                        .size            n308_coerce_numeric_bx, .-n308_coerce_numeric_bx
                        .type            n309_binop_bx, @function
n309_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n309_binop_α:           mov              r11, 148
                        mov              eax, dword ptr [rsp + 144]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_374_2
                        mov              rax, qword ptr [rsp + 152]
                        mov              rdx, 1
                        sub              rax, rdx
                        mov              qword ptr [rsp + 128], 3
                        mov              qword ptr [rsp + 136], rax;          jmp   .Lbinop_α_374_7
.Lbinop_α_374_2:        and              edx, 1;                              jz    .Lbinop_α_374_0
                        mov              rsi, qword ptr [rsp + 152]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_374_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_374_4
.Lbinop_α_374_3:        movq             xmm0, rsi
.Lbinop_α_374_4:        cmp              cl, 5;                               je    .Lbinop_α_374_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_374_6
.Lbinop_α_374_5:        movq             xmm1, rdi
.Lbinop_α_374_6:        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 128], 5
                        mov              qword ptr [rsp + 136], rax
.Lbinop_α_374_7:                                                              jmp   n310_coerce_numeric_α
.Lbinop_α_374_0:        mov              rdi, qword ptr [rsp + 144]
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
                        cmp              al, 104;                             je    n327_call_icon_α
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx;          jmp   n310_coerce_numeric_α
                        .size            n309_binop_bx, .-n309_binop_bx
                        .type            n310_coerce_numeric_bx, @function
n310_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n310_coerce_numeric_α:  mov              r11, 149
                        mov              eax, dword ptr [rsp + 128]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_376_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_376_0
                        mov              eax, dword ptr [rsp + 112]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_376_0
.Lcoerce_numeric_α_376_1:
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 104], rax;          jmp   n311_binop_α
.Lcoerce_numeric_α_376_0:
                        lea              rdi, [rsp + 128]
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
                        .size            n310_coerce_numeric_bx, .-n310_coerce_numeric_bx
                        .type            n311_binop_bx, @function
n311_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n311_binop_α:           mov              r11, 150
                        mov              eax, 3
                        mov              ecx, dword ptr [rsp + 96]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_377_2
                        mov              rax, 4
                        mov              rdx, qword ptr [rsp + 104]
                        imul             rax, rdx
                        mov              qword ptr [rsp + 80], 3
                        mov              qword ptr [rsp + 88], rax;           jmp   .Lbinop_α_377_7
.Lbinop_α_377_2:        and              edx, 1;                              jz    .Lbinop_α_377_0
                        mov              rsi, 4
                        mov              rdi, qword ptr [rsp + 104]
                        cmp              al, 5;                               je    .Lbinop_α_377_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_377_4
.Lbinop_α_377_3:        movq             xmm0, rsi
.Lbinop_α_377_4:        cmp              cl, 5;                               je    .Lbinop_α_377_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_377_6
.Lbinop_α_377_5:        movq             xmm1, rdi
.Lbinop_α_377_6:        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 80], 5
                        mov              qword ptr [rsp + 88], rax
.Lbinop_α_377_7:                                                              jmp   n312_lit_integer_α
.Lbinop_α_377_0:        mov              rdi, qword ptr [rsp + 112]
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
                        cmp              al, 104;                             je    n327_call_icon_α
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx;           jmp   n312_lit_integer_α
                        .size            n311_binop_bx, .-n311_binop_bx
                        .type            n312_lit_integer_bx, @function
n312_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n312_lit_integer_α:     mov              r11, 151
                        mov              qword ptr [rsp + 224], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_378_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n313_coerce_numeric_α
.Llit_integer_α_378_0:  .quad            3
                        .size            n312_lit_integer_bx, .-n312_lit_integer_bx
                        .type            n313_coerce_numeric_bx, @function
n313_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n313_coerce_numeric_α:  mov              r11, 152
                        mov              eax, dword ptr [rsp + 80]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_380_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_380_0
                        mov              eax, dword ptr [rsp + 224]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_380_0
.Lcoerce_numeric_α_380_1:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 72], rax;           jmp   n314_binop_α
.Lcoerce_numeric_α_380_0:
                        lea              rdi, [rsp + 80]
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
                        .size            n313_coerce_numeric_bx, .-n313_coerce_numeric_bx
                        .type            n314_binop_bx, @function
n314_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n314_binop_α:           mov              r11, 153
                        mov              eax, dword ptr [rsp + 64]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_381_2
                        mov              rax, qword ptr [rsp + 72]
                        mov              rdx, 3
                        add              rax, rdx
                        mov              qword ptr [rsp + 48], 3
                        mov              qword ptr [rsp + 56], rax;           jmp   .Lbinop_α_381_7
.Lbinop_α_381_2:        and              edx, 1;                              jz    .Lbinop_α_381_0
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdi, 3
                        cmp              al, 5;                               je    .Lbinop_α_381_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_381_4
.Lbinop_α_381_3:        movq             xmm0, rsi
.Lbinop_α_381_4:        cmp              cl, 5;                               je    .Lbinop_α_381_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_381_6
.Lbinop_α_381_5:        movq             xmm1, rdi
.Lbinop_α_381_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 48], 5
                        mov              qword ptr [rsp + 56], rax
.Lbinop_α_381_7:                                                              jmp   n315_subscript_α
.Lbinop_α_381_0:        mov              rdi, qword ptr [rsp + 64]
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
                        cmp              al, 104;                             je    n327_call_icon_α
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx;           jmp   n315_subscript_α
                        .size            n314_binop_bx, .-n314_binop_bx
                        .type            n315_subscript_bx, @function
n315_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n315_subscript_α:       mov              r11, 154
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
                        cmp              al, 104;                             je    n306_iterate_β
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n316_lit_string_α
                        .size            n315_subscript_bx, .-n315_subscript_bx
                        .type            n316_lit_string_bx, @function
n316_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n316_lit_string_α:      mov              r11, 155
                        mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_383_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n317_rev_assign_var_α
.Llit_string_α_383_0:   .quad            .Llit_string_α_383_0_s
.Llit_string_α_383_0_s: .string          "Q"
                        .size            n316_lit_string_bx, .-n316_lit_string_bx
                        .type            n317_rev_assign_var_bx, @function
n317_rev_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n317_rev_assign_var_α:  mov              r11, 156
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
                        cmp              al, 104;                             je    n306_iterate_β
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n318_bound_α
n317_rev_assign_var_β:  mov              r11, 156
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n306_iterate_β
                        .size            n317_rev_assign_var_bx, .-n317_rev_assign_var_bx
                        .type            n318_bound_bx, @function
n318_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n318_bound_α:           mov              r11, 157
                        mov              qword ptr [rsp + 320], rsp;          jmp   n319_lit_string_α
                        .size            n318_bound_bx, .-n318_bound_bx
                        .type            n319_lit_string_bx, @function
n319_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n319_lit_string_α:      mov              r11, 158
                        mov              qword ptr [rsp + 560], 2             # result
                        mov              dword ptr [rsp + 564], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_387_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n320_var_α
.Llit_string_α_387_0:   .quad            .Llit_string_α_387_0_s
.Llit_string_α_387_0_s: .string          "  "
                        .size            n319_lit_string_bx, .-n319_lit_string_bx
                        .type            n320_var_bx, @function
n320_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n320_var_α:             mov              r11, 159
                        mov              rax, qword ptr [r9 + 160]            # show__STATIC__line
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 592], rax           # result
                        mov              qword ptr [rsp + 600], rdx;          jmp   n321_call_icon_α
                        .size            n320_var_bx, .-n320_var_bx
                        .type            n321_call_icon_bx, @function
n321_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n321_call_icon_α:       mov              r11, 160
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 536], rax
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 520], rax
                        .section         .rodata
.Lcall_icon_α_rkfn390:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn390]
                        lea              rsi, [rsp + 512]
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
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              al, 104;                             je    n322_lit_string_α
                                                                              jmp   n322_lit_string_α
n321_call_icon_β:       mov              r11, 160;                            jmp   n322_lit_string_α
                        .size            n321_call_icon_bx, .-n321_call_icon_bx
                        .type            n322_lit_string_bx, @function
n322_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n322_lit_string_α:      mov              r11, 161
                        mov              qword ptr [rsp + 448], 2             # result
                        mov              dword ptr [rsp + 452], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_391_0]
                        mov              qword ptr [rsp + 456], rax;          jmp   n323_var_α
.Llit_string_α_391_0:   .quad            .Llit_string_α_391_0_s
.Llit_string_α_391_0_s: .string          "  "
                        .size            n322_lit_string_bx, .-n322_lit_string_bx
                        .type            n323_var_bx, @function
n323_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n323_var_α:             mov              r11, 162
                        mov              rax, qword ptr [r9 + 176]            # show__STATIC__border
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 480], rax           # result
                        mov              qword ptr [rsp + 488], rdx;          jmp   n324_call_icon_α
                        .size            n323_var_bx, .-n323_var_bx
                        .type            n324_call_icon_bx, @function
n324_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n324_call_icon_α:       mov              r11, 163
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 424], rax
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 408], rax
                        .section         .rodata
.Lcall_icon_α_rkfn394:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn394]
                        lea              rsi, [rsp + 400]
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
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n326_unmark_α
                                                                              jmp   n325_conjunction_α
n324_call_icon_β:       mov              r11, 163;                            jmp   n326_unmark_α
                        .size            n324_call_icon_bx, .-n324_call_icon_bx
                        .type            n325_conjunction_bx, @function
n325_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n325_conjunction_α:     mov              r11, 164
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 376], rax;          jmp   n326_unmark_α
n325_conjunction_β:     mov              r11, 164;                            jmp   n326_unmark_α
                        .size            n325_conjunction_bx, .-n325_conjunction_bx
                        .type            n326_unmark_bx, @function
n326_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n326_unmark_α:          mov              r11, 165
                        mov              rsp, qword ptr [rsp + 320];          jmp   n317_rev_assign_var_β
                        .size            n326_unmark_bx, .-n326_unmark_bx
                        .type            n327_call_icon_bx, @function
n327_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n327_call_icon_α:       mov              r11, 166
                        .section         .rodata
.Lcall_icon_α_rkfn399:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn399]
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
                                                                              jmp   show_ω
n327_call_icon_β:       mov              r11, 166;                            jmp   show_ω
                        .size            n327_call_icon_bx, .-n327_call_icon_bx
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
                        add              rsp, 1424;                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
show_ω:
                        add              rsp, 1424;                           jmp   qword ptr [rsp + 8]
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
                        sub              rsp, 3216
                        mov              rdi, rsp
                        add              rdi, 2880
                        xor              eax, eax
                        mov              ecx, 144
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 7
                        call             rt_icn_zframe_args_install@PLT
options_α_body:
                        .type            n401_var_ref_bx, @function
n401_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n401_var_ref_α:         mov              r11, 167
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 2752], rax
                        mov              qword ptr [rsp + 2760], rdx;         jmp   n402_nulltest_var_α
                        .size            n401_var_ref_bx, .-n401_var_ref_bx
                        .type            n402_nulltest_var_bx, @function
n402_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n402_nulltest_var_α:    mov              r11, 168
                        mov              eax, dword ptr [rsp + 2752]
                        cmp              al, 104;                             je    n406_call_icon_α
                        mov              rdi, qword ptr [rsp + 2752]
                        mov              rsi, qword ptr [rsp + 2760]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n406_call_icon_α
                        cmp              eax, 0;                              jne   n406_call_icon_α
                        mov              rax, qword ptr [rsp + 2752]
                        mov              qword ptr [rsp + 2768], rax
                        mov              rax, qword ptr [rsp + 2760]
                        mov              qword ptr [rsp + 2776], rax;         jmp   n403_lit_charset_α
                        .size            n402_nulltest_var_bx, .-n402_nulltest_var_bx
                        .type            n403_lit_charset_bx, @function
n403_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n403_lit_charset_α:     mov              r11, 169
                        mov              qword ptr [rsp + 2848], 2            # result
                        mov              dword ptr [rsp + 2852], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_513_0]
                        mov              qword ptr [rsp + 2856], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_513_0]
                        mov              rsi, 52
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_cset_register@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              rdx
                        pop              rax;                                 jmp   n404_call_icon_α
.Llit_charset_α_513_0:  .quad            .Llit_charset_α_513_0_s
.Llit_charset_α_513_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
                        .size            n403_lit_charset_bx, .-n403_lit_charset_bx
                        .type            n404_call_icon_bx, @function
n404_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n404_call_icon_α:       mov              r11, 170
                        mov              rax, qword ptr [rsp + 2848]
                        mov              qword ptr [rsp + 2816], rax
                        mov              rax, qword ptr [rsp + 2856]
                        mov              qword ptr [rsp + 2824], rax
                        .section         .rodata
.Lcall_icon_α_rkfn515:  .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn515]
                        lea              rsi, [rsp + 2816]
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
                        mov              qword ptr [rsp + 2800], rax
                        mov              qword ptr [rsp + 2808], rdx
                        cmp              al, 104;                             je    n406_call_icon_α
                                                                              jmp   n405_assign_var_α
n404_call_icon_β:       mov              r11, 170;                            jmp   n406_call_icon_α
                        .size            n404_call_icon_bx, .-n404_call_icon_bx
                        .type            n405_assign_var_bx, @function
n405_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n405_assign_var_α:      mov              r11, 171
                        mov              rdi, qword ptr [rsp + 2768]
                        mov              rsi, qword ptr [rsp + 2776]
                        mov              rdx, qword ptr [rsp + 2800]
                        mov              rcx, qword ptr [rsp + 2808]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n406_call_icon_α
                        mov              qword ptr [rsp + 2784], rax
                        mov              qword ptr [rsp + 2792], rdx;         jmp   n406_call_icon_α
                        .size            n405_assign_var_bx, .-n405_assign_var_bx
                        .type            n406_call_icon_bx, @function
n406_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n406_call_icon_α:       mov              r11, 172
                        .section         .rodata
.Lcall_icon_α_rkfn518:  .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn518]
                        lea              rsi, [rsp + 2736]
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
                        mov              qword ptr [rsp + 2720], rax
                        mov              qword ptr [rsp + 2728], rdx
                        cmp              al, 104;                             je    n408_make_list_α
                                                                              jmp   n407_assign_α
n406_call_icon_β:       mov              r11, 172;                            jmp   n408_make_list_α
                        .size            n406_call_icon_bx, .-n406_call_icon_bx
                        .type            n407_assign_bx, @function
n407_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n407_assign_α:          mov              r11, 173
                        mov              rax, qword ptr [rsp + 2720]
                        mov              rdx, qword ptr [rsp + 2728]
                        mov              qword ptr [rsp + 2880], rax
                        mov              qword ptr [rsp + 2888], rdx;         jmp   n408_make_list_α
                        .size            n407_assign_bx, .-n407_assign_bx
                        .type            n408_make_list_bx, @function
n408_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n408_make_list_α:       mov              r11, 174
                        lea              rdi, [rsp + 2720]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2704], rax
                        mov              qword ptr [rsp + 2712], rdx;         jmp   n409_assign_α
                        .size            n408_make_list_bx, .-n408_make_list_bx
                        .type            n409_assign_bx, @function
n409_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n409_assign_α:          mov              r11, 175
                        mov              rax, qword ptr [rsp + 2704]
                        mov              rdx, qword ptr [rsp + 2712]
                        mov              qword ptr [rsp + 2896], rax
                        mov              qword ptr [rsp + 2904], rdx;         jmp   n410_var_α
                        .size            n409_assign_bx, .-n409_assign_bx
                        .type            n410_var_bx, @function
n410_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n410_var_α:             mov              r11, 176
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 296], rax;          jmp   n411_call_icon_α
                        .size            n410_var_bx, .-n410_var_bx
                        .type            n411_call_icon_bx, @function
n411_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n411_call_icon_α:       mov              r11, 177
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 264], rax
                        .section         .rodata
.Lcall_icon_α_rkfn526:  .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn526]
                        lea              rsi, [rsp + 256]
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
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n504_var_α
                                                                              jmp   n412_assign_α
n411_call_icon_β:       mov              r11, 177;                            jmp   n504_var_α
                        .size            n411_call_icon_bx, .-n411_call_icon_bx
                        .type            n412_assign_bx, @function
n412_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n412_assign_α:          mov              r11, 178
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 2928], rax
                        mov              qword ptr [rsp + 2936], rdx;         jmp   n413_var_α
                        .size            n412_assign_bx, .-n412_assign_bx
                        .type            n413_var_bx, @function
n413_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n413_var_α:             mov              r11, 179
                        mov              rax, qword ptr [rsp + 2928]
                        mov              qword ptr [rsp + 2688], rax
                        mov              rax, qword ptr [rsp + 2936]
                        mov              qword ptr [rsp + 2696], rax;         jmp   n414_scan_enter_α
                        .size            n413_var_bx, .-n413_var_bx
                        .type            n414_scan_enter_bx, @function
n414_scan_enter_bx:
#-----------------------------------------------------------------------------------------------------------------------
n414_scan_enter_α:      mov              r11, 180
                        mov              qword ptr [rsp + 320], r13
                        mov              qword ptr [rsp + 328], r14
                        mov              qword ptr [rsp + 336], r15
                        mov              rdi, qword ptr [rsp + 2688]
                        mov              rsi, qword ptr [rsp + 2696]
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
                        mov              r14, 0;                              jmp   n415_disjunction_α
                        .size            n414_scan_enter_bx, .-n414_scan_enter_bx
                        .type            n415_disjunction_bx, @function
n415_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n415_disjunction_α:     mov              r11, 181
                        mov              qword ptr [rsp + 384], 0
                        mov              qword ptr [rsp + 392], 0
                        mov              dword ptr [rsp + 400], 0;            jmp   n421_lit_string_α
.Ldisjunction_γ_415_as: mov              r11, 181
                        mov              eax, dword ptr [rsp + 400]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_533_0
                        mov              rax, qword ptr [rsp + 2912]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 2920]
                        mov              qword ptr [rsp + 392], rax;          jmp   n416_scan_α
.Ldisjunction_α_533_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_533_1
                        mov              rax, qword ptr [rsp + 2592]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 2600]
                        mov              qword ptr [rsp + 392], rax;          jmp   n416_scan_α
.Ldisjunction_α_533_1:                                                        jmp   n416_scan_α
n415_disjunction_β:     mov              r11, 181
                        mov              eax, dword ptr [rsp + 400]
                        cmp              eax, 0;                              je    n432_disjunction_β
                                                                              jmp   n494_scan_α
.Ldisjunction_γ_415_af: mov              r11, 181
.Ldisjunction_ω_415_af: mov              r11, 181
                        add              dword ptr [rsp + 400], 1
                        mov              eax, dword ptr [rsp + 400]
                        cmp              eax, 1;                              je    n418_var_α
                                                                              jmp   n494_scan_α
                        .size            n415_disjunction_bx, .-n415_disjunction_bx
                        .type            n416_scan_bx, @function
n416_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n416_scan_α:            mov              r11, 182
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 360], rax
                        mov              rdi, qword ptr [rsp + 320]
                        mov              rsi, qword ptr [rsp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 320]
                        mov              r14, qword ptr [rsp + 328]
                        mov              r15, qword ptr [rsp + 336];          jmp   n410_var_α
n416_scan_β:            mov              r11, 182
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
                        mov              r14, rax;                            jmp   n415_disjunction_β
                                                                              jmp   n410_var_α
                        .size            n416_scan_bx, .-n416_scan_bx
                        .type            n417_conjunction_bx, @function
n417_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n417_conjunction_α:     mov              r11, 183;                            jmp   .Ldisjunction_γ_415_as
n417_conjunction_β:     mov              r11, 183;                            jmp   n494_scan_α
                        .size            n417_conjunction_bx, .-n417_conjunction_bx
                        .type            n418_var_bx, @function
n418_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n418_var_α:             mov              r11, 184
                        mov              rax, qword ptr [rsp + 2896]
                        mov              qword ptr [rsp + 2656], rax
                        mov              rax, qword ptr [rsp + 2904]
                        mov              qword ptr [rsp + 2664], rax;         jmp   n419_var_α
n418_var_β:             mov              r11, 184;                            jmp   n494_scan_α
                        .size            n418_var_bx, .-n418_var_bx
                        .type            n419_var_bx, @function
n419_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n419_var_α:             mov              r11, 185
                        mov              rax, qword ptr [rsp + 2928]
                        mov              qword ptr [rsp + 2672], rax
                        mov              rax, qword ptr [rsp + 2936]
                        mov              qword ptr [rsp + 2680], rax;         jmp   n420_call_icon_α
                        .size            n419_var_bx, .-n419_var_bx
                        .type            n420_call_icon_bx, @function
n420_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n420_call_icon_α:       mov              r11, 186
                        mov              rax, qword ptr [rsp + 2672]
                        mov              qword ptr [rsp + 2624], rax
                        mov              rax, qword ptr [rsp + 2680]
                        mov              qword ptr [rsp + 2632], rax
                        mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 2608], rax
                        mov              rax, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 2616], rax
                        .section         .rodata
.Lcall_icon_α_rkfn542:  .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn542]
                        lea              rsi, [rsp + 2608]
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
                        mov              qword ptr [rsp + 2592], rax
                        mov              qword ptr [rsp + 2600], rdx
                        cmp              al, 104;                             je    n494_scan_α
                                                                              jmp   .Ldisjunction_γ_415_as
n420_call_icon_β:       mov              r11, 186;                            jmp   n494_scan_α
                        .size            n420_call_icon_bx, .-n420_call_icon_bx
                        .type            n421_lit_string_bx, @function
n421_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n421_lit_string_α:      mov              r11, 187
                        mov              qword ptr [rsp + 2560], 2            # result
                        mov              dword ptr [rsp + 2564], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_543_0]
                        mov              qword ptr [rsp + 2568], rax;         jmp   n422_scan_match_α
n421_lit_string_β:      mov              r11, 187;                            jmp   .Ldisjunction_ω_415_af
.Llit_string_α_543_0:   .quad            .Llit_string_α_543_0_s
.Llit_string_α_543_0_s: .string          "-"
                        .size            n421_lit_string_bx, .-n421_lit_string_bx
                        .type            n422_scan_match_bx, @function
n422_scan_match_bx:
#-----------------------------------------------------------------------------------------------------------------------
n422_scan_match_α:      mov              r11, 188
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    .Ldisjunction_ω_415_af
                        mov              rdi, qword ptr [rip + .Lscan_match_α_545_0]
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
                        test             eax, eax;                            jne   .Ldisjunction_ω_415_af
                        mov              qword ptr [rsp + 2528], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rsp + 2536], rax;         jmp   n423_scan_tab_α
.Lscan_match_α_545_0:   .quad            .Lscan_match_α_545_0_s
.Lscan_match_α_545_0_s: .string          "-"
                        .size            n422_scan_match_bx, .-n422_scan_match_bx
                        .type            n423_scan_tab_bx, @function
n423_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n423_scan_tab_α:        mov              r11, 189
                        mov              rax, qword ptr [rsp + 2536]
                        cmp              rax, 1;                              jge   .Lscan_tab_α_547_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_547_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_415_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_415_af
                        mov              qword ptr [rsp + 2512], r14
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
                        mov              qword ptr [rsp + 2496], rax
                        mov              qword ptr [rsp + 2504], rdx;         jmp   n424_lit_integer_α
n423_scan_tab_β:        mov              r11, 189
                        mov              r14, qword ptr [rsp + 2512];         jmp   .Ldisjunction_ω_415_af
                        .size            n423_scan_tab_bx, .-n423_scan_tab_bx
                        .type            n424_lit_integer_bx, @function
n424_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n424_lit_integer_α:     mov              r11, 190
                        mov              qword ptr [rsp + 2480], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_548_0]
                        mov              qword ptr [rsp + 2488], rax;         jmp   n425_scan_pos_α
.Llit_integer_α_548_0:  .quad            0
                        .size            n424_lit_integer_bx, .-n424_lit_integer_bx
                        .type            n425_scan_pos_bx, @function
n425_scan_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n425_scan_pos_α:        mov              r11, 191
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_pos_α_550_0
                        add              rax, r15
                        add              rax, 1
.Lscan_pos_α_550_0:     cmp              rax, 1;                              jl    n426_var_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n426_var_α
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n426_var_α
                        mov              qword ptr [rsp + 2464], 3
                        mov              qword ptr [rsp + 2472], rax;         jmp   n423_scan_tab_β
                        .size            n425_scan_pos_bx, .-n425_scan_pos_bx
                        .type            n426_var_bx, @function
n426_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n426_var_α:             mov              r11, 192
                        mov              qword ptr [rsp + 2448], 0
                        mov              qword ptr [rsp + 2456], 0;           jmp   n427_conjunction_α
n426_var_β:             mov              r11, 192;                            jmp   n423_scan_tab_β
                        .size            n426_var_bx, .-n426_var_bx
                        .type            n427_conjunction_bx, @function
n427_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n427_conjunction_α:     mov              r11, 193
                        mov              rax, qword ptr [rsp + 2448]
                        mov              qword ptr [rsp + 2432], rax
                        mov              rax, qword ptr [rsp + 2456]
                        mov              qword ptr [rsp + 2440], rax;         jmp   n428_disjunction_α
n427_conjunction_β:     mov              r11, 193;                            jmp   .Ldisjunction_ω_415_af
                        .size            n427_conjunction_bx, .-n427_conjunction_bx
                        .type            n428_disjunction_bx, @function
n428_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n428_disjunction_α:     mov              r11, 194
                        mov              qword ptr [rsp + 2240], 0
                        mov              qword ptr [rsp + 2248], 0
                        mov              dword ptr [rsp + 2256], 0;           jmp   n495_lit_string_α
.Ldisjunction_γ_428_as: mov              r11, 194
                        mov              eax, dword ptr [rsp + 2256]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_554_0
                        mov              rax, qword ptr [rsp + 2272]
                        mov              qword ptr [rsp + 2240], rax
                        mov              rax, qword ptr [rsp + 2280]
                        mov              qword ptr [rsp + 2248], rax;         jmp   n429_lit_integer_α
.Ldisjunction_α_554_0:                                                        jmp   n429_lit_integer_α
n428_disjunction_β:     mov              r11, 194
                        mov              eax, dword ptr [rsp + 2256];         jmp   n429_lit_integer_α
.Ldisjunction_γ_428_af: mov              r11, 194
.Ldisjunction_ω_428_af: mov              r11, 194
                        add              dword ptr [rsp + 2256], 1
                        mov              eax, dword ptr [rsp + 2256];         jmp   n429_lit_integer_α
                        .size            n428_disjunction_bx, .-n428_disjunction_bx
                        .type            n429_lit_integer_bx, @function
n429_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n429_lit_integer_α:     mov              r11, 195
                        mov              qword ptr [rsp + 480], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_555_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n430_scan_move_α
.Llit_integer_α_555_0:  .quad            1
                        .size            n429_lit_integer_bx, .-n429_lit_integer_bx
                        .type            n430_scan_move_bx, @function
n430_scan_move_bx:
#-----------------------------------------------------------------------------------------------------------------------
n430_scan_move_α:       mov              r11, 196
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jl    n494_scan_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n494_scan_α
                        mov              qword ptr [rsp + 464], r14
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
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n431_assign_α
n430_scan_move_β:       mov              r11, 196
                        mov              r14, qword ptr [rsp + 464];          jmp   n494_scan_α
                        .size            n430_scan_move_bx, .-n430_scan_move_bx
                        .type            n431_assign_bx, @function
n431_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n431_assign_α:          mov              r11, 197
                        mov              rax, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 2944], rax
                        mov              qword ptr [rsp + 2952], rdx;         jmp   n432_disjunction_α
                        .size            n431_assign_bx, .-n431_assign_bx
                        .type            n432_disjunction_bx, @function
n432_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n432_disjunction_α:     mov              r11, 198
                        mov              qword ptr [rsp + 496], 0
                        mov              qword ptr [rsp + 504], 0
                        mov              dword ptr [rsp + 512], 0;            jmp   n436_var_α
.Ldisjunction_γ_432_as: mov              r11, 198
                        mov              eax, dword ptr [rsp + 512]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_560_0
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 504], rax;          jmp   n429_lit_integer_α
.Ldisjunction_α_560_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_560_1
                        mov              rax, qword ptr [rsp + 2128]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 2136]
                        mov              qword ptr [rsp + 504], rax;          jmp   n429_lit_integer_α
.Ldisjunction_α_560_1:                                                        jmp   n429_lit_integer_α
n432_disjunction_β:     mov              r11, 198
                        mov              eax, dword ptr [rsp + 512]
                        cmp              eax, 0;                              je    n446_disjunction_β
                                                                              jmp   n429_lit_integer_α
.Ldisjunction_γ_432_af: mov              r11, 198
.Ldisjunction_ω_432_af: mov              r11, 198
                        add              dword ptr [rsp + 512], 1
                        mov              eax, dword ptr [rsp + 512]
                        cmp              eax, 1;                              je    n433_lit_string_α
                                                                              jmp   n429_lit_integer_α
                        .size            n432_disjunction_bx, .-n432_disjunction_bx
                        .type            n433_lit_string_bx, @function
n433_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n433_lit_string_α:      mov              r11, 199
                        mov              qword ptr [rsp + 2192], 2            # result
                        mov              dword ptr [rsp + 2196], 22
                        mov              rax, qword ptr [rip + .Llit_string_α_561_0]
                        mov              qword ptr [rsp + 2200], rax;         jmp   n434_var_α
n433_lit_string_β:      mov              r11, 199;                            jmp   n429_lit_integer_α
.Llit_string_α_561_0:   .quad            .Llit_string_α_561_0_s
.Llit_string_α_561_0_s: .string          "Unrecognized option: -"
                        .size            n433_lit_string_bx, .-n433_lit_string_bx
                        .type            n434_var_bx, @function
n434_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n434_var_α:             mov              r11, 200
                        mov              rax, qword ptr [rsp + 2944]
                        mov              qword ptr [rsp + 2224], rax
                        mov              rax, qword ptr [rsp + 2952]
                        mov              qword ptr [rsp + 2232], rax;         jmp   n435_call_icon_α
                        .size            n434_var_bx, .-n434_var_bx
                        .type            n435_call_icon_bx, @function
n435_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n435_call_icon_α:       mov              r11, 201
                        mov              rax, qword ptr [rsp + 2224]
                        mov              qword ptr [rsp + 2160], rax
                        mov              rax, qword ptr [rsp + 2232]
                        mov              qword ptr [rsp + 2168], rax
                        mov              rax, qword ptr [rsp + 2192]
                        mov              qword ptr [rsp + 2144], rax
                        mov              rax, qword ptr [rsp + 2200]
                        mov              qword ptr [rsp + 2152], rax
                        .section         .rodata
.Lcall_icon_α_rkfn565:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn565]
                        lea              rsi, [rsp + 2144]
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
                        mov              qword ptr [rsp + 2128], rax
                        mov              qword ptr [rsp + 2136], rdx
                        cmp              al, 104;                             je    n429_lit_integer_α
                                                                              jmp   .Ldisjunction_γ_432_as
n435_call_icon_β:       mov              r11, 201;                            jmp   n429_lit_integer_α
                        .size            n435_call_icon_bx, .-n435_call_icon_bx
                        .type            n436_var_bx, @function
n436_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n436_var_α:             mov              r11, 202
                        mov              rax, qword ptr [rsp + 2944]
                        mov              qword ptr [rsp + 2080], rax
                        mov              rax, qword ptr [rsp + 2952]
                        mov              qword ptr [rsp + 2088], rax;         jmp   n437_var_α
n436_var_β:             mov              r11, 202;                            jmp   .Ldisjunction_ω_432_af
                        .size            n436_var_bx, .-n436_var_bx
                        .type            n437_var_bx, @function
n437_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n437_var_α:             mov              r11, 203
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 2096], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 2104], rax;         jmp   n438_call_builtin_gen_α
                        .size            n437_var_bx, .-n437_var_bx
                        .type            n438_call_builtin_gen_bx, @function
n438_call_builtin_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n438_call_builtin_gen_α:
                        mov              r11, 204
                        mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 2048], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 2056], rax
                        mov              rax, qword ptr [rsp + 2080]
                        mov              qword ptr [rsp + 2032], rax
                        mov              rax, qword ptr [rsp + 2088]
                        mov              qword ptr [rsp + 2040], rax
                        mov              qword ptr [rsp + 2064], 0
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_builtin_gen_α_570_60:
                        .section         .rodata
.Lcall_builtin_gen_α_bynamegenfn204: .string          "find"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_gen_α_bynamegenfn204]
                        lea              rsi, [rsp + 2032]
                        mov              edx, 2
                        lea              rcx, [rsp + 2064]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2016], rax
                        mov              qword ptr [rsp + 2024], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_432_af
                                                                              jmp   n439_lit_integer_α
n438_call_builtin_gen_β:
                        mov              r11, 204;                            jmp   .Lcall_builtin_gen_α_570_60
                        .size            n438_call_builtin_gen_bx, .-n438_call_builtin_gen_bx
                        .type            n439_lit_integer_bx, @function
n439_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n439_lit_integer_α:     mov              r11, 205
                        mov              qword ptr [rsp + 2112], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_571_0]
                        mov              qword ptr [rsp + 2120], rax;         jmp   n440_coerce_numeric_α
.Llit_integer_α_571_0:  .quad            1
                        .size            n439_lit_integer_bx, .-n439_lit_integer_bx
                        .type            n440_coerce_numeric_bx, @function
n440_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n440_coerce_numeric_α:  mov              r11, 206
                        mov              eax, dword ptr [rsp + 2016]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_573_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_573_0
                        mov              eax, dword ptr [rsp + 2112]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_573_0
.Lcoerce_numeric_α_573_1:
                        mov              rax, qword ptr [rsp + 2016]
                        mov              qword ptr [rsp + 2000], rax
                        mov              rax, qword ptr [rsp + 2024]
                        mov              qword ptr [rsp + 2008], rax;         jmp   n441_binop_α
.Lcoerce_numeric_α_573_0:
                        lea              rdi, [rsp + 2016]
                        lea              rsi, [rsp + 2112]
                        lea              rdx, [rsp + 2000]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n441_binop_α
                        .size            n440_coerce_numeric_bx, .-n440_coerce_numeric_bx
                        .type            n441_binop_bx, @function
n441_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n441_binop_α:           mov              r11, 207
                        mov              eax, dword ptr [rsp + 2000]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_574_2
                        mov              rax, qword ptr [rsp + 2008]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 1984], 3
                        mov              qword ptr [rsp + 1992], rax;         jmp   .Lbinop_α_574_7
.Lbinop_α_574_2:        and              edx, 1;                              jz    .Lbinop_α_574_0
                        mov              rsi, qword ptr [rsp + 2008]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_574_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_574_4
.Lbinop_α_574_3:        movq             xmm0, rsi
.Lbinop_α_574_4:        cmp              cl, 5;                               je    .Lbinop_α_574_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_574_6
.Lbinop_α_574_5:        movq             xmm1, rdi
.Lbinop_α_574_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1984], 5
                        mov              qword ptr [rsp + 1992], rax
.Lbinop_α_574_7:                                                              jmp   n442_assign_α
.Lbinop_α_574_0:        mov              rdi, qword ptr [rsp + 2000]
                        mov              rsi, qword ptr [rsp + 2008]
                        mov              rdx, qword ptr [rsp + 2112]
                        mov              rcx, qword ptr [rsp + 2120]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_432_af
                        mov              qword ptr [rsp + 1984], rax
                        mov              qword ptr [rsp + 1992], rdx;         jmp   n442_assign_α
                        .size            n441_binop_bx, .-n441_binop_bx
                        .type            n442_assign_bx, @function
n442_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n442_assign_α:          mov              r11, 208
                        mov              rax, qword ptr [rsp + 1984]
                        mov              rdx, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 3008], rax
                        mov              qword ptr [rsp + 3016], rdx;         jmp   n443_var_ref_α
                        .size            n442_assign_bx, .-n442_assign_bx
                        .type            n443_var_ref_bx, @function
n443_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n443_var_ref_α:         mov              r11, 209
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2880]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n444_var_α
                        .size            n443_var_ref_bx, .-n443_var_ref_bx
                        .type            n444_var_bx, @function
n444_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n444_var_α:             mov              r11, 210
                        mov              rax, qword ptr [rsp + 2944]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 2952]
                        mov              qword ptr [rsp + 552], rax;          jmp   n445_subscript_α
                        .size            n444_var_bx, .-n444_var_bx
                        .type            n445_subscript_bx, @function
n445_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n445_subscript_α:       mov              r11, 211
                        mov              rdi, qword ptr [rsp + 528]
                        mov              rsi, qword ptr [rsp + 536]
                        mov              rdx, qword ptr [rsp + 544]
                        mov              rcx, qword ptr [rsp + 552]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n429_lit_integer_α
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n446_disjunction_α
                        .size            n445_subscript_bx, .-n445_subscript_bx
                        .type            n446_disjunction_bx, @function
n446_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n446_disjunction_α:     mov              r11, 212
                        mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 600], 0
                        mov              dword ptr [rsp + 608], 0;            jmp   n449_lit_charset_α
.Ldisjunction_γ_446_as: mov              r11, 212
                        mov              eax, dword ptr [rsp + 608]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_582_0
                        mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 600], rax;          jmp   n447_assign_var_α
.Ldisjunction_α_582_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_582_1
                        mov              rax, qword ptr [rsp + 1968]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 1976]
                        mov              qword ptr [rsp + 600], rax;          jmp   n447_assign_var_α
.Ldisjunction_α_582_1:                                                        jmp   n447_assign_var_α
n446_disjunction_β:     mov              r11, 212
                        mov              eax, dword ptr [rsp + 608]
                        cmp              eax, 0;                              je    n429_lit_integer_α
                                                                              jmp   n429_lit_integer_α
.Ldisjunction_γ_446_af: mov              r11, 212
.Ldisjunction_ω_446_af: mov              r11, 212
                        add              dword ptr [rsp + 608], 1
                        mov              eax, dword ptr [rsp + 608]
                        cmp              eax, 1;                              je    n448_lit_integer_α
                                                                              jmp   n429_lit_integer_α
                        .size            n446_disjunction_bx, .-n446_disjunction_bx
                        .type            n447_assign_var_bx, @function
n447_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n447_assign_var_α:      mov              r11, 213
                        mov              rdi, qword ptr [rsp + 560]
                        mov              rsi, qword ptr [rsp + 568]
                        mov              rdx, qword ptr [rsp + 592]
                        mov              rcx, qword ptr [rsp + 600]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n429_lit_integer_α
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx;          jmp   .Ldisjunction_γ_432_as
n447_assign_var_β:      mov              r11, 213;                            jmp   n429_lit_integer_α
                        .size            n447_assign_var_bx, .-n447_assign_var_bx
                        .type            n448_lit_integer_bx, @function
n448_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n448_lit_integer_α:     mov              r11, 214
                        mov              qword ptr [rsp + 1968], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_584_0]
                        mov              qword ptr [rsp + 1976], rax;         jmp   .Ldisjunction_γ_446_as
n448_lit_integer_β:     mov              r11, 214;                            jmp   n429_lit_integer_α
.Llit_integer_α_584_0:  .quad            1
                        .size            n448_lit_integer_bx, .-n448_lit_integer_bx
                        .type            n449_lit_charset_bx, @function
n449_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n449_lit_charset_α:     mov              r11, 215
                        mov              qword ptr [rsp + 1856], 2            # result
                        mov              dword ptr [rsp + 1860], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_585_0]
                        mov              qword ptr [rsp + 1864], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_585_0]
                        mov              rsi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_cset_register@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              rdx
                        pop              rax;                                 jmp   n450_var_ref_α
n449_lit_charset_β:     mov              r11, 215;                            jmp   .Ldisjunction_ω_446_af
.Llit_charset_α_585_0:  .quad            .Llit_charset_α_585_0_s
.Llit_charset_α_585_0_s:
                        .string          "+.:"
                        .size            n449_lit_charset_bx, .-n449_lit_charset_bx
                        .type            n450_var_ref_bx, @function
n450_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n450_var_ref_α:         mov              r11, 216
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1904], rax
                        mov              qword ptr [rsp + 1912], rdx;         jmp   n451_var_α
                        .size            n450_var_ref_bx, .-n450_var_ref_bx
                        .type            n451_var_bx, @function
n451_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n451_var_α:             mov              r11, 217
                        mov              rax, qword ptr [rsp + 3008]
                        mov              qword ptr [rsp + 1920], rax
                        mov              rax, qword ptr [rsp + 3016]
                        mov              qword ptr [rsp + 1928], rax;         jmp   n452_subscript_α
                        .size            n451_var_bx, .-n451_var_bx
                        .type            n452_subscript_bx, @function
n452_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n452_subscript_α:       mov              r11, 218
                        mov              rdi, qword ptr [rsp + 1904]
                        mov              rsi, qword ptr [rsp + 1912]
                        mov              rdx, qword ptr [rsp + 1920]
                        mov              rcx, qword ptr [rsp + 1928]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_446_af
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx;         jmp   n453_deref_α
                        .size            n452_subscript_bx, .-n452_subscript_bx
                        .type            n453_deref_bx, @function
n453_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n453_deref_α:           mov              r11, 219
                        mov              rdi, qword ptr [rsp + 1936]
                        mov              rsi, qword ptr [rsp + 1944]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_446_af
                        mov              qword ptr [rsp + 1952], rax
                        mov              qword ptr [rsp + 1960], rdx;         jmp   n454_assign_α
                        .size            n453_deref_bx, .-n453_deref_bx
                        .type            n454_assign_bx, @function
n454_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n454_assign_α:          mov              r11, 220
                        mov              rax, qword ptr [rsp + 1952]
                        mov              rdx, qword ptr [rsp + 1960]
                        mov              qword ptr [rsp + 2976], rax
                        mov              qword ptr [rsp + 2984], rdx
                        mov              qword ptr [rsp + 1888], rax
                        mov              qword ptr [rsp + 1896], rdx;         jmp   n455_call_icon_α
                        .size            n454_assign_bx, .-n454_assign_bx
                        .type            n455_call_icon_bx, @function
n455_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n455_call_icon_α:       mov              r11, 221
                        mov              rax, qword ptr [rsp + 1888]
                        mov              qword ptr [rsp + 1824], rax
                        mov              rax, qword ptr [rsp + 1896]
                        mov              qword ptr [rsp + 1832], rax
                        mov              rax, qword ptr [rsp + 1856]
                        mov              qword ptr [rsp + 1808], rax
                        mov              rax, qword ptr [rsp + 1864]
                        mov              qword ptr [rsp + 1816], rax
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
.Lcall_icon_α_bynamefn221: .string          "any"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_bynamefn221]
                        lea              rsi, [rsp + 1808]
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
                        mov              qword ptr [rsp + 1792], rax
                        mov              qword ptr [rsp + 1800], rdx
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_446_af
                                                                              jmp   n456_disjunction_α
n455_call_icon_β:       mov              r11, 221;                            jmp   .Ldisjunction_ω_446_af
                        .size            n455_call_icon_bx, .-n455_call_icon_bx
                        .type            n456_disjunction_bx, @function
n456_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n456_disjunction_α:     mov              r11, 222
                        mov              qword ptr [rsp + 1488], 0
                        mov              qword ptr [rsp + 1496], 0
                        mov              dword ptr [rsp + 1504], 0;           jmp   n490_lit_string_α
.Ldisjunction_γ_456_as: mov              r11, 222
                        mov              eax, dword ptr [rsp + 1504]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_595_0
                        mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 1488], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1496], rax;         jmp   n457_assign_α
.Ldisjunction_α_595_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_595_1
                        mov              rax, qword ptr [rsp + 1616]
                        mov              qword ptr [rsp + 1488], rax
                        mov              rax, qword ptr [rsp + 1624]
                        mov              qword ptr [rsp + 1496], rax;         jmp   n457_assign_α
.Ldisjunction_α_595_1:  cmp              eax, 2;                              jne   .Ldisjunction_α_595_2
                        mov              rax, qword ptr [rsp + 1680]
                        mov              qword ptr [rsp + 1488], rax
                        mov              rax, qword ptr [rsp + 1688]
                        mov              qword ptr [rsp + 1496], rax;         jmp   n457_assign_α
.Ldisjunction_α_595_2:                                                        jmp   n457_assign_α
n456_disjunction_β:     mov              r11, 222
                        mov              eax, dword ptr [rsp + 1504]
                        cmp              eax, 0;                              je    n492_scan_tab_β
                        cmp              eax, 1;                              je    .Ldisjunction_ω_456_af
                                                                              jmp   .Ldisjunction_ω_456_af
.Ldisjunction_γ_456_af: mov              r11, 222
.Ldisjunction_ω_456_af: mov              r11, 222
                        add              dword ptr [rsp + 1504], 1
                        mov              eax, dword ptr [rsp + 1504]
                        cmp              eax, 1;                              je    n488_var_α
                        cmp              eax, 2;                              je    n485_lit_string_α
                                                                              jmp   n458_var_α
                        .size            n456_disjunction_bx, .-n456_disjunction_bx
                        .type            n457_assign_bx, @function
n457_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n457_assign_α:          mov              r11, 223
                        mov              rax, qword ptr [rsp + 1488]
                        mov              rdx, qword ptr [rsp + 1496]
                        mov              qword ptr [rsp + 2992], rax
                        mov              qword ptr [rsp + 3000], rdx;         jmp   n458_var_α
                        .size            n457_assign_bx, .-n457_assign_bx
                        .type            n458_var_bx, @function
n458_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n458_var_α:             mov              r11, 224
                        mov              rax, qword ptr [rsp + 2976]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 2984]
                        mov              qword ptr [rsp + 664], rax;          jmp   n459_lit_string_α
                        .size            n458_var_bx, .-n458_var_bx
                        .type            n459_lit_string_bx, @function
n459_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n459_lit_string_α:      mov              r11, 225
                        mov              qword ptr [rsp + 1376], 2            # result
                        mov              dword ptr [rsp + 1380], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_599_0]
                        mov              qword ptr [rsp + 1384], rax;         jmp   n460_call_builtin_α
.Llit_string_α_599_0:   .quad            .Llit_string_α_599_0_s
.Llit_string_α_599_0_s: .string          ":"
                        .size            n459_lit_string_bx, .-n459_lit_string_bx
                        .type            n460_call_builtin_bx, @function
n460_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n460_call_builtin_α:    mov              r11, 226
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 1464], rax
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 1448], rax
                        .section         .rodata
.Lcall_builtin_α_rkfn601: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_α_rkfn601]
                        lea              rsi, [rsp + 1440]
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
                        mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx
                        cmp              al, 104;                             je    n463_lit_string_α
                                                                              jmp   n461_var_α
n460_call_builtin_β:    mov              r11, 226;                            jmp   n463_lit_string_α
                        .size            n460_call_builtin_bx, .-n460_call_builtin_bx
                        .type            n461_var_bx, @function
n461_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n461_var_α:             mov              r11, 227
                        mov              rax, qword ptr [rsp + 2992]
                        mov              qword ptr [rsp + 1408], rax
                        mov              rax, qword ptr [rsp + 3000]
                        mov              qword ptr [rsp + 1416], rax;         jmp   n462_assign_α
                        .size            n461_var_bx, .-n461_var_bx
                        .type            n462_assign_bx, @function
n462_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n462_assign_α:          mov              r11, 228
                        mov              rax, qword ptr [rsp + 1408]
                        mov              rdx, qword ptr [rsp + 1416]
                        mov              qword ptr [rsp + 2960], rax
                        mov              qword ptr [rsp + 2968], rdx;         jmp   n477_var_α
                        .size            n462_assign_bx, .-n462_assign_bx
                        .type            n463_lit_string_bx, @function
n463_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n463_lit_string_α:      mov              r11, 229
                        mov              qword ptr [rsp + 1024], 2            # result
                        mov              dword ptr [rsp + 1028], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_605_0]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n464_call_builtin_α
.Llit_string_α_605_0:   .quad            .Llit_string_α_605_0_s
.Llit_string_α_605_0_s: .string          "+"
                        .size            n463_lit_string_bx, .-n463_lit_string_bx
                        .type            n464_call_builtin_bx, @function
n464_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n464_call_builtin_α:    mov              r11, 230
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 1352], rax
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 1336], rax
                        .section         .rodata
.Lcall_builtin_α_rkfn607: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_α_rkfn607]
                        lea              rsi, [rsp + 1328]
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
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx
                        cmp              al, 104;                             je    n473_lit_string_α
                                                                              jmp   n465_disjunction_α
n464_call_builtin_β:    mov              r11, 230;                            jmp   n473_lit_string_α
                        .size            n464_call_builtin_bx, .-n464_call_builtin_bx
                        .type            n465_disjunction_bx, @function
n465_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n465_disjunction_α:     mov              r11, 231
                        mov              qword ptr [rsp + 1056], 0
                        mov              qword ptr [rsp + 1064], 0
                        mov              dword ptr [rsp + 1072], 0;           jmp   n471_var_α
.Ldisjunction_γ_465_as: mov              r11, 231
                        mov              eax, dword ptr [rsp + 1072]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_609_0
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n466_assign_α
.Ldisjunction_α_609_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_609_1
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n466_assign_α
.Ldisjunction_α_609_1:                                                        jmp   n466_assign_α
n465_disjunction_β:     mov              r11, 231
                        mov              eax, dword ptr [rsp + 1072]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_465_af
                                                                              jmp   .Ldisjunction_ω_465_af
.Ldisjunction_γ_465_af: mov              r11, 231
.Ldisjunction_ω_465_af: mov              r11, 231
                        add              dword ptr [rsp + 1072], 1
                        mov              eax, dword ptr [rsp + 1072]
                        cmp              eax, 1;                              je    n467_lit_string_α
                                                                              jmp   n429_lit_integer_α
                        .size            n465_disjunction_bx, .-n465_disjunction_bx
                        .type            n466_assign_bx, @function
n466_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n466_assign_α:          mov              r11, 232
                        mov              rax, qword ptr [rsp + 1056]
                        mov              rdx, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 2960], rax
                        mov              qword ptr [rsp + 2968], rdx;         jmp   n477_var_α
                        .size            n466_assign_bx, .-n466_assign_bx
                        .type            n467_lit_string_bx, @function
n467_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n467_lit_string_α:      mov              r11, 233
                        mov              qword ptr [rsp + 1232], 2            # result
                        mov              dword ptr [rsp + 1236], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_611_0]
                        mov              qword ptr [rsp + 1240], rax;         jmp   n468_var_α
n467_lit_string_β:      mov              r11, 233;                            jmp   .Ldisjunction_ω_465_af
.Llit_string_α_611_0:   .quad            .Llit_string_α_611_0_s
.Llit_string_α_611_0_s: .string          "-"
                        .size            n467_lit_string_bx, .-n467_lit_string_bx
                        .type            n468_var_bx, @function
n468_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n468_var_α:             mov              r11, 234
                        mov              rax, qword ptr [rsp + 2944]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 2952]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n469_lit_string_α
                        .size            n468_var_bx, .-n468_var_bx
                        .type            n469_lit_string_bx, @function
n469_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n469_lit_string_α:      mov              r11, 235
                        mov              qword ptr [rsp + 1280], 2            # result
                        mov              dword ptr [rsp + 1284], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_614_0]
                        mov              qword ptr [rsp + 1288], rax;         jmp   n470_call_icon_α
.Llit_string_α_614_0:   .quad            .Llit_string_α_614_0_s
.Llit_string_α_614_0_s: .string          " needs numeric parameter"
                        .size            n469_lit_string_bx, .-n469_lit_string_bx
                        .type            n470_call_icon_bx, @function
n470_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n470_call_icon_α:       mov              r11, 236
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 1208], rax
                        mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 1192], rax
                        mov              rax, qword ptr [rsp + 1232]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 1176], rax
                        .section         .rodata
.Lcall_icon_α_rkfn616:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn616]
                        lea              rsi, [rsp + 1168]
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
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_465_af
                                                                              jmp   .Ldisjunction_γ_465_as
n470_call_icon_β:       mov              r11, 236;                            jmp   .Ldisjunction_ω_465_af
                        .size            n470_call_icon_bx, .-n470_call_icon_bx
                        .type            n471_var_bx, @function
n471_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n471_var_α:             mov              r11, 237
                        mov              rax, qword ptr [rsp + 2992]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 3000]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n472_call_icon_α
n471_var_β:             mov              r11, 237;                            jmp   .Ldisjunction_ω_465_af
                        .size            n471_var_bx, .-n471_var_bx
                        .type            n472_call_icon_bx, @function
n472_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n472_call_icon_α:       mov              r11, 238
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1112], rax
                        .section         .rodata
.Lcall_icon_α_rkfn620:  .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn620]
                        lea              rsi, [rsp + 1104]
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
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_465_af
                                                                              jmp   .Ldisjunction_γ_465_as
n472_call_icon_β:       mov              r11, 238;                            jmp   .Ldisjunction_ω_465_af
                        .size            n472_call_icon_bx, .-n472_call_icon_bx
                        .type            n473_lit_string_bx, @function
n473_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n473_lit_string_α:      mov              r11, 239
                        mov              qword ptr [rsp + 672], 2             # result
                        mov              dword ptr [rsp + 676], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_621_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n474_call_builtin_α
.Llit_string_α_621_0:   .quad            .Llit_string_α_621_0_s
.Llit_string_α_621_0_s: .string          "."
                        .size            n473_lit_string_bx, .-n473_lit_string_bx
                        .type            n474_call_builtin_bx, @function
n474_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n474_call_builtin_α:    mov              r11, 240
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 1000], rax
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 984], rax
                        .section         .rodata
.Lcall_builtin_α_rkfn623: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_α_rkfn623]
                        lea              rsi, [rsp + 976]
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
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx
                        cmp              al, 104;                             je    n429_lit_integer_α
                                                                              jmp   n475_disjunction_α
n474_call_builtin_β:    mov              r11, 240;                            jmp   n429_lit_integer_α
                        .size            n474_call_builtin_bx, .-n474_call_builtin_bx
                        .type            n475_disjunction_bx, @function
n475_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n475_disjunction_α:     mov              r11, 241
                        mov              qword ptr [rsp + 704], 0
                        mov              qword ptr [rsp + 712], 0
                        mov              dword ptr [rsp + 720], 0;            jmp   n483_var_α
.Ldisjunction_γ_475_as: mov              r11, 241
                        mov              eax, dword ptr [rsp + 720]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_625_0
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 712], rax;          jmp   n476_assign_α
.Ldisjunction_α_625_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_625_1
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 712], rax;          jmp   n476_assign_α
.Ldisjunction_α_625_1:                                                        jmp   n476_assign_α
n475_disjunction_β:     mov              r11, 241
                        mov              eax, dword ptr [rsp + 720]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_475_af
                                                                              jmp   .Ldisjunction_ω_475_af
.Ldisjunction_γ_475_af: mov              r11, 241
.Ldisjunction_ω_475_af: mov              r11, 241
                        add              dword ptr [rsp + 720], 1
                        mov              eax, dword ptr [rsp + 720]
                        cmp              eax, 1;                              je    n479_lit_string_α
                                                                              jmp   n429_lit_integer_α
                        .size            n475_disjunction_bx, .-n475_disjunction_bx
                        .type            n476_assign_bx, @function
n476_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n476_assign_α:          mov              r11, 242
                        mov              rax, qword ptr [rsp + 704]
                        mov              rdx, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 2960], rax
                        mov              qword ptr [rsp + 2968], rdx;         jmp   n477_var_α
                        .size            n476_assign_bx, .-n476_assign_bx
                        .type            n477_var_bx, @function
n477_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n477_var_α:             mov              r11, 243
                        mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 648], rax;          jmp   n478_conjunction_α
                        .size            n477_var_bx, .-n477_var_bx
                        .type            n478_conjunction_bx, @function
n478_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n478_conjunction_α:     mov              r11, 244
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 632], rax;          jmp   .Ldisjunction_γ_446_as
n478_conjunction_β:     mov              r11, 244;                            jmp   n429_lit_integer_α
                        .size            n478_conjunction_bx, .-n478_conjunction_bx
                        .type            n479_lit_string_bx, @function
n479_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n479_lit_string_α:      mov              r11, 245
                        mov              qword ptr [rsp + 880], 2             # result
                        mov              dword ptr [rsp + 884], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_630_0]
                        mov              qword ptr [rsp + 888], rax;          jmp   n480_var_α
n479_lit_string_β:      mov              r11, 245;                            jmp   .Ldisjunction_ω_475_af
.Llit_string_α_630_0:   .quad            .Llit_string_α_630_0_s
.Llit_string_α_630_0_s: .string          "-"
                        .size            n479_lit_string_bx, .-n479_lit_string_bx
                        .type            n480_var_bx, @function
n480_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n480_var_α:             mov              r11, 246
                        mov              rax, qword ptr [rsp + 2944]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 2952]
                        mov              qword ptr [rsp + 920], rax;          jmp   n481_lit_string_α
                        .size            n480_var_bx, .-n480_var_bx
                        .type            n481_lit_string_bx, @function
n481_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n481_lit_string_α:      mov              r11, 247
                        mov              qword ptr [rsp + 928], 2             # result
                        mov              dword ptr [rsp + 932], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_633_0]
                        mov              qword ptr [rsp + 936], rax;          jmp   n482_call_icon_α
.Llit_string_α_633_0:   .quad            .Llit_string_α_633_0_s
.Llit_string_α_633_0_s: .string          " needs numeric parameter"
                        .size            n481_lit_string_bx, .-n481_lit_string_bx
                        .type            n482_call_icon_bx, @function
n482_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n482_call_icon_α:       mov              r11, 248
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 856], rax
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 840], rax
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 824], rax
                        .section         .rodata
.Lcall_icon_α_rkfn635:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn635]
                        lea              rsi, [rsp + 816]
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
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_475_af
                                                                              jmp   .Ldisjunction_γ_475_as
n482_call_icon_β:       mov              r11, 248;                            jmp   .Ldisjunction_ω_475_af
                        .size            n482_call_icon_bx, .-n482_call_icon_bx
                        .type            n483_var_bx, @function
n483_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n483_var_α:             mov              r11, 249
                        mov              rax, qword ptr [rsp + 2992]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 3000]
                        mov              qword ptr [rsp + 792], rax;          jmp   n484_call_icon_α
n483_var_β:             mov              r11, 249;                            jmp   .Ldisjunction_ω_475_af
                        .size            n483_var_bx, .-n483_var_bx
                        .type            n484_call_icon_bx, @function
n484_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n484_call_icon_α:       mov              r11, 250
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 760], rax
                        .section         .rodata
.Lcall_icon_α_rkfn639:  .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn639]
                        lea              rsi, [rsp + 752]
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
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_475_af
                                                                              jmp   .Ldisjunction_γ_475_as
n484_call_icon_β:       mov              r11, 250;                            jmp   .Ldisjunction_ω_475_af
                        .size            n484_call_icon_bx, .-n484_call_icon_bx
                        .type            n485_lit_string_bx, @function
n485_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n485_lit_string_α:      mov              r11, 251
                        mov              qword ptr [rsp + 1744], 2            # result
                        mov              dword ptr [rsp + 1748], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_640_0]
                        mov              qword ptr [rsp + 1752], rax;         jmp   n486_var_α
n485_lit_string_β:      mov              r11, 251;                            jmp   .Ldisjunction_ω_456_af
.Llit_string_α_640_0:   .quad            .Llit_string_α_640_0_s
.Llit_string_α_640_0_s: .string          "No parameter following -"
                        .size            n485_lit_string_bx, .-n485_lit_string_bx
                        .type            n486_var_bx, @function
n486_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n486_var_α:             mov              r11, 252
                        mov              rax, qword ptr [rsp + 2944]
                        mov              qword ptr [rsp + 1776], rax
                        mov              rax, qword ptr [rsp + 2952]
                        mov              qword ptr [rsp + 1784], rax;         jmp   n487_call_icon_α
                        .size            n486_var_bx, .-n486_var_bx
                        .type            n487_call_icon_bx, @function
n487_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n487_call_icon_α:       mov              r11, 253
                        mov              rax, qword ptr [rsp + 1776]
                        mov              qword ptr [rsp + 1712], rax
                        mov              rax, qword ptr [rsp + 1784]
                        mov              qword ptr [rsp + 1720], rax
                        mov              rax, qword ptr [rsp + 1744]
                        mov              qword ptr [rsp + 1696], rax
                        mov              rax, qword ptr [rsp + 1752]
                        mov              qword ptr [rsp + 1704], rax
                        .section         .rodata
.Lcall_icon_α_rkfn644:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn644]
                        lea              rsi, [rsp + 1696]
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
                        mov              qword ptr [rsp + 1680], rax
                        mov              qword ptr [rsp + 1688], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_456_af
                                                                              jmp   .Ldisjunction_γ_456_as
n487_call_icon_β:       mov              r11, 253;                            jmp   .Ldisjunction_ω_456_af
                        .size            n487_call_icon_bx, .-n487_call_icon_bx
                        .type            n488_var_bx, @function
n488_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n488_var_α:             mov              r11, 254
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1664], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1672], rax;         jmp   n489_call_icon_α
n488_var_β:             mov              r11, 254;                            jmp   .Ldisjunction_ω_456_af
                        .size            n488_var_bx, .-n488_var_bx
                        .type            n489_call_icon_bx, @function
n489_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n489_call_icon_α:       mov              r11, 255
                        mov              rax, qword ptr [rsp + 1664]
                        mov              qword ptr [rsp + 1632], rax
                        mov              rax, qword ptr [rsp + 1672]
                        mov              qword ptr [rsp + 1640], rax
                        .section         .rodata
.Lcall_icon_α_rkfn648:  .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn648]
                        lea              rsi, [rsp + 1632]
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
                        mov              qword ptr [rsp + 1616], rax
                        mov              qword ptr [rsp + 1624], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_456_af
                                                                              jmp   .Ldisjunction_γ_456_as
n489_call_icon_β:       mov              r11, 255;                            jmp   .Ldisjunction_ω_456_af
                        .size            n489_call_icon_bx, .-n489_call_icon_bx
                        .type            n490_lit_string_bx, @function
n490_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n490_lit_string_α:      mov              r11, 256
                        mov              qword ptr [rsp + 1536], 2            # result
                        mov              dword ptr [rsp + 1540], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_649_0]
                        mov              qword ptr [rsp + 1544], rax;         jmp   n491_lit_integer_α
n490_lit_string_β:      mov              r11, 256;                            jmp   .Ldisjunction_ω_456_af
.Llit_string_α_649_0:   .quad            .Llit_string_α_649_0_s
.Llit_string_α_649_0_s: .string          ""
                        .size            n490_lit_string_bx, .-n490_lit_string_bx
                        .type            n491_lit_integer_bx, @function
n491_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n491_lit_integer_α:     mov              r11, 257
                        mov              qword ptr [rsp + 1600], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_650_0]
                        mov              qword ptr [rsp + 1608], rax;         jmp   n492_scan_tab_α
.Llit_integer_α_650_0:  .quad            0
                        .size            n491_lit_integer_bx, .-n491_lit_integer_bx
                        .type            n492_scan_tab_bx, @function
n492_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n492_scan_tab_α:        mov              r11, 258
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_tab_α_652_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_652_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_456_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_456_af
                        mov              qword ptr [rsp + 1584], r14
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
                        mov              qword ptr [rsp + 1568], rax
                        mov              qword ptr [rsp + 1576], rdx;         jmp   n493_binop_test_α
n492_scan_tab_β:        mov              r11, 258
                        mov              r14, qword ptr [rsp + 1584];         jmp   .Ldisjunction_ω_456_af
                        .size            n492_scan_tab_bx, .-n492_scan_tab_bx
                        .type            n493_binop_test_bx, @function
n493_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n493_binop_test_α:      mov              r11, 259
                        mov              rdi, qword ptr [rsp + 1536]
                        mov              rsi, qword ptr [rsp + 1544]
                        mov              rdx, qword ptr [rsp + 1568]
                        mov              rcx, qword ptr [rsp + 1576]
                        mov              r8d, 17
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n492_scan_tab_β
                        mov              rdi, qword ptr [rsp + 1568]
                        mov              rsi, qword ptr [rsp + 1576]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 1520], rax
                        mov              qword ptr [rsp + 1528], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Ldisjunction_γ_456_as
n493_binop_test_β:      mov              r11, 259;                            jmp   n492_scan_tab_β
                        .size            n493_binop_test_bx, .-n493_binop_test_bx
                        .type            n494_scan_bx, @function
n494_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n494_scan_α:            mov              r11, 260
                        mov              rdi, qword ptr [rsp + 320]
                        mov              rsi, qword ptr [rsp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 320]
                        mov              r14, qword ptr [rsp + 328]
                        mov              r15, qword ptr [rsp + 336];          jmp   n410_var_α
n494_scan_β:            mov              r11, 260;                            jmp   n410_var_α
                        .size            n494_scan_bx, .-n494_scan_bx
                        .type            n495_lit_string_bx, @function
n495_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n495_lit_string_α:      mov              r11, 261
                        mov              qword ptr [rsp + 2400], 2            # result
                        mov              dword ptr [rsp + 2404], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_656_0]
                        mov              qword ptr [rsp + 2408], rax;         jmp   n496_scan_match_α
n495_lit_string_β:      mov              r11, 261;                            jmp   .Ldisjunction_ω_428_af
.Llit_string_α_656_0:   .quad            .Llit_string_α_656_0_s
.Llit_string_α_656_0_s: .string          "-"
                        .size            n495_lit_string_bx, .-n495_lit_string_bx
                        .type            n496_scan_match_bx, @function
n496_scan_match_bx:
#-----------------------------------------------------------------------------------------------------------------------
n496_scan_match_α:      mov              r11, 262
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    .Ldisjunction_ω_428_af
                        mov              rdi, qword ptr [rip + .Lscan_match_α_658_0]
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
                        test             eax, eax;                            jne   .Ldisjunction_ω_428_af
                        mov              qword ptr [rsp + 2368], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rsp + 2376], rax;         jmp   n497_scan_tab_α
.Lscan_match_α_658_0:   .quad            .Lscan_match_α_658_0_s
.Lscan_match_α_658_0_s: .string          "-"
                        .size            n496_scan_match_bx, .-n496_scan_match_bx
                        .type            n497_scan_tab_bx, @function
n497_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n497_scan_tab_α:        mov              r11, 263
                        mov              rax, qword ptr [rsp + 2376]
                        cmp              rax, 1;                              jge   .Lscan_tab_α_660_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_660_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_428_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_428_af
                        mov              qword ptr [rsp + 2352], r14
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
                        mov              qword ptr [rsp + 2336], rax
                        mov              qword ptr [rsp + 2344], rdx;         jmp   n498_lit_integer_α
n497_scan_tab_β:        mov              r11, 263
                        mov              r14, qword ptr [rsp + 2352];         jmp   .Ldisjunction_ω_428_af
                        .size            n497_scan_tab_bx, .-n497_scan_tab_bx
                        .type            n498_lit_integer_bx, @function
n498_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n498_lit_integer_α:     mov              r11, 264
                        mov              qword ptr [rsp + 2320], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_661_0]
                        mov              qword ptr [rsp + 2328], rax;         jmp   n499_scan_pos_α
.Llit_integer_α_661_0:  .quad            0
                        .size            n498_lit_integer_bx, .-n498_lit_integer_bx
                        .type            n499_scan_pos_bx, @function
n499_scan_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n499_scan_pos_α:        mov              r11, 265
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_pos_α_663_0
                        add              rax, r15
                        add              rax, 1
.Lscan_pos_α_663_0:     cmp              rax, 1;                              jl    n497_scan_tab_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n497_scan_tab_β
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n497_scan_tab_β
                        mov              qword ptr [rsp + 2304], 3
                        mov              qword ptr [rsp + 2312], rax;         jmp   n500_conjunction_α
                        .size            n499_scan_pos_bx, .-n499_scan_pos_bx
                        .type            n500_conjunction_bx, @function
n500_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n500_conjunction_α:     mov              r11, 266
                        mov              rax, qword ptr [rsp + 2304]
                        mov              qword ptr [rsp + 2288], rax
                        mov              rax, qword ptr [rsp + 2312]
                        mov              qword ptr [rsp + 2296], rax;         jmp   n501_var_α
n500_conjunction_β:     mov              r11, 266;                            jmp   .Ldisjunction_ω_428_af
                        .size            n500_conjunction_bx, .-n500_conjunction_bx
                        .type            n501_var_bx, @function
n501_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n501_var_α:             mov              r11, 267
                        mov              qword ptr [rsp + 2272], 0
                        mov              qword ptr [rsp + 2280], 0;           jmp   n502_assign_α
n501_var_β:             mov              r11, 267;                            jmp   n503_var_α
                        .size            n501_var_bx, .-n501_var_bx
                        .type            n502_assign_bx, @function
n502_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n502_assign_α:          mov              r11, 268
                        mov              rax, qword ptr [rsp + 2272]
                        mov              rdx, qword ptr [rsp + 2280]
                        mov              qword ptr [rsp + 2912], rax
                        mov              qword ptr [rsp + 2920], rdx;         jmp   n503_var_α
                        .size            n502_assign_bx, .-n502_assign_bx
                        .type            n503_var_bx, @function
n503_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n503_var_α:             mov              r11, 269
                        mov              rax, qword ptr [rsp + 2912]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 2920]
                        mov              qword ptr [rsp + 216], rax;          jmp   n504_var_α
                        .size            n503_var_bx, .-n503_var_bx
                        .type            n504_var_bx, @function
n504_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n504_var_α:             mov              r11, 270
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 136], rax;          jmp   n505_var_α
                        .size            n504_var_bx, .-n504_var_bx
                        .type            n505_var_bx, @function
n505_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n505_var_α:             mov              r11, 271
                        mov              rax, qword ptr [rsp + 2896]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 2904]
                        mov              qword ptr [rsp + 200], rax;          jmp   n506_call_icon_α
                        .size            n505_var_bx, .-n505_var_bx
                        .type            n506_call_icon_bx, @function
n506_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n506_call_icon_α:       mov              r11, 272
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lcall_icon_α_rkfn674:  .string          "pull"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn674]
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
                        cmp              al, 104;                             je    n508_var_α
                                                                              jmp   n507_call_icon_α
n506_call_icon_β:       mov              r11, 272;                            jmp   n508_var_α
                        .size            n506_call_icon_bx, .-n506_call_icon_bx
                        .type            n507_call_icon_bx, @function
n507_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n507_call_icon_α:       mov              r11, 273
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 88], rax
                        .section         .rodata
.Lcall_icon_α_rkfn676:  .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn676]
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
                        cmp              al, 104;                             je    n508_var_α
                                                                              jmp   n504_var_α
n507_call_icon_β:       mov              r11, 273;                            jmp   n508_var_α
                        .size            n507_call_icon_bx, .-n507_call_icon_bx
                        .type            n508_var_bx, @function
n508_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n508_var_α:             mov              r11, 274
                        mov              rax, qword ptr [rsp + 2880]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 2888]
                        mov              qword ptr [rsp + 56], rax;           jmp   n509_return_α
                        .size            n508_var_bx, .-n508_var_bx
                        .type            n509_return_bx, @function
n509_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n509_return_α:          mov              r11, 275
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   options_γ
                        .size            n509_return_bx, .-n509_return_bx
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
                        add              rsp, 3216;                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
options_ω:
                        add              rsp, 3216;                           jmp   qword ptr [rsp + 8]
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
                        lea              rcx, [rip + .Loptions_α_680_3]
                        push             rcx
                        lea              rcx, [rip + .Loptions_α_680_2]
                        push             rcx;                                 jmp   FN__options
.Loptions_α_680_2:      add              rsp, 24
                        pop              r12;                                 jmp   r12
.Loptions_α_680_3:      add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__Init__:
                        sub              rsp, 528
                        mov              rdi, rsp
                        add              rdi, 432
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
Init___α_body:
                        .type            n681_var_bx, @function
n681_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n681_var_α:             mov              r11, 276
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 424], rax;          jmp   n682_assign_α
                        .size            n681_var_bx, .-n681_var_bx
                        .type            n682_assign_bx, @function
n682_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n682_assign_α:          mov              r11, 277
                        mov              rax, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        mov              qword ptr [r9 + 64], rax             # Name__
                        mov              qword ptr [r9 + 72], rdx;            jmp   n683_call_proc_staged_α
                        .size            n682_assign_bx, .-n682_assign_bx
                        .type            n683_call_proc_staged_bx, @function
n683_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n683_call_proc_staged_α:
                        mov              r11, 278
                        call             Signature___dcα;                     jmp   .Lcall_proc_staged_α_705_2
.Lcall_proc_staged_α_705_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_705_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
.Lcall_proc_staged_α_705_29:
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n684_call_proc_staged_α
                                                                              jmp   n684_call_proc_staged_α
n683_call_proc_staged_β:
                        mov              r11, 278;                            jmp   n684_call_proc_staged_α
.Lcall_proc_staged_β_705_0:
                        .quad            .Lcall_proc_staged_β_705_0_s
.Lcall_proc_staged_β_705_0_s:
                        .string          "Signature__"
                        .size            n683_call_proc_staged_bx, .-n683_call_proc_staged_bx
                        .type            n684_call_proc_staged_bx, @function
n684_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n684_call_proc_staged_α:
                        mov              r11, 279
                        call             Regions___dcα;                       jmp   .Lcall_proc_staged_α_707_2
.Lcall_proc_staged_α_707_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_707_29
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
.Lcall_proc_staged_α_707_29:
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              al, 104;                             je    n685_call_proc_staged_α
                                                                              jmp   n685_call_proc_staged_α
n684_call_proc_staged_β:
                        mov              r11, 279;                            jmp   n685_call_proc_staged_α
.Lcall_proc_staged_β_707_0:
                        .quad            .Lcall_proc_staged_β_707_0_s
.Lcall_proc_staged_β_707_0_s:
                        .string          "Regions__"
                        .size            n684_call_proc_staged_bx, .-n684_call_proc_staged_bx
                        .type            n685_call_proc_staged_bx, @function
n685_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n685_call_proc_staged_α:
                        mov              r11, 280
                        call             Time___dcα;                          jmp   .Lcall_proc_staged_α_709_2
.Lcall_proc_staged_α_709_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_709_29
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
.Lcall_proc_staged_α_709_29:
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              al, 104;                             je    n686_disjunction_α
                                                                              jmp   n686_disjunction_α
n685_call_proc_staged_β:
                        mov              r11, 280;                            jmp   n686_disjunction_α
.Lcall_proc_staged_β_709_0:
                        .quad            .Lcall_proc_staged_β_709_0_s
.Lcall_proc_staged_β_709_0_s:
                        .string          "Time__"
                        .size            n685_call_proc_staged_bx, .-n685_call_proc_staged_bx
                        .type            n686_disjunction_bx, @function
n686_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n686_disjunction_α:     mov              r11, 281
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              dword ptr [rsp + 128], 0;            jmp   n696_lit_string_α
.Ldisjunction_γ_686_as: mov              r11, 281
                        mov              eax, dword ptr [rsp + 128]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_711_0
                                                                              jmp   n687_var_α
.Ldisjunction_α_711_0:                                                        jmp   n687_var_α
n686_disjunction_β:     mov              r11, 281
                        mov              eax, dword ptr [rsp + 128];          jmp   n687_var_α
.Ldisjunction_γ_686_af: mov              r11, 281
.Ldisjunction_ω_686_af: mov              r11, 281
                        add              dword ptr [rsp + 128], 1
                        mov              eax, dword ptr [rsp + 128];          jmp   n687_var_α
                        .size            n686_disjunction_bx, .-n686_disjunction_bx
                        .type            n687_var_bx, @function
n687_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n687_var_α:             mov              r11, 282
                        mov              rdi, qword ptr [rip + .Lvar_α_712_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n689_var_α
                        mov              qword ptr [rsp + 96], rax            # result
                        mov              qword ptr [rsp + 104], rdx;          jmp   n688_assign_α
.Lvar_α_712_0:          .quad            .Lvar_α_712_0_s
.Lvar_α_712_0_s:        .string          "write"
                        .size            n687_var_bx, .-n687_var_bx
                        .type            n688_assign_bx, @function
n688_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n688_assign_α:          mov              r11, 283
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
                        mov              qword ptr [r9 + 32], rax             # Save__
                        mov              qword ptr [r9 + 40], rdx;            jmp   n689_var_α
                        .size            n688_assign_bx, .-n688_assign_bx
                        .type            n689_var_bx, @function
n689_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n689_var_α:             mov              r11, 284
                        mov              rdi, qword ptr [rip + .Lvar_α_714_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n691_lit_integer_α
                        mov              qword ptr [rsp + 80], rax            # result
                        mov              qword ptr [rsp + 88], rdx;           jmp   n690_assign_α
.Lvar_α_714_0:          .quad            .Lvar_α_714_0_s
.Lvar_α_714_0_s:        .string          "writes"
                        .size            n689_var_bx, .-n689_var_bx
                        .type            n690_assign_bx, @function
n690_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n690_assign_α:          mov              r11, 285
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
                        mov              qword ptr [r9 + 48], rax             # Saves__
                        mov              qword ptr [r9 + 56], rdx;            jmp   n691_lit_integer_α
                        .size            n690_assign_bx, .-n690_assign_bx
                        .type            n691_lit_integer_bx, @function
n691_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n691_lit_integer_α:     mov              r11, 286
                        mov              qword ptr [rsp + 64], 3              # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_716_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n692_assign_α
.Llit_integer_α_716_0:  .quad            1
                        .size            n691_lit_integer_bx, .-n691_lit_integer_bx
                        .type            n692_assign_bx, @function
n692_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n692_assign_α:          mov              r11, 287
                        mov              rsi, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        mov              rdi, qword ptr [rip + .Lassign_α_717_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n693_assign_α
.Lassign_α_717_0:       .quad            .Lassign_α_717_0_s
.Lassign_α_717_0_s:     .string          "writes"
                        .size            n692_assign_bx, .-n692_assign_bx
                        .type            n693_assign_bx, @function
n693_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n693_assign_α:          mov              r11, 288
                        mov              rsi, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              rdi, qword ptr [rip + .Lassign_α_718_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n694_return_α
.Lassign_α_718_0:       .quad            .Lassign_α_718_0_s
.Lassign_α_718_0_s:     .string          "write"
                        .size            n693_assign_bx, .-n693_assign_bx
                        .type            n694_return_bx, @function
n694_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n694_return_α:          mov              r11, 289
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   Init___γ
                        .size            n694_return_bx, .-n694_return_bx
                        .type            n695_conjunction_bx, @function
n695_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n695_conjunction_α:     mov              r11, 290;                            jmp   .Ldisjunction_γ_686_as
n695_conjunction_β:     mov              r11, 290;                            jmp   n687_var_α
                        .size            n695_conjunction_bx, .-n695_conjunction_bx
                        .type            n696_lit_string_bx, @function
n696_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n696_lit_string_α:      mov              r11, 291
                        mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_721_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n697_call_icon_α
n696_lit_string_β:      mov              r11, 291;                            jmp   .Ldisjunction_ω_686_af
.Llit_string_α_721_0:   .quad            .Llit_string_α_721_0_s
.Llit_string_α_721_0_s: .string          "OUTPUT"
                        .size            n696_lit_string_bx, .-n696_lit_string_bx
                        .type            n697_call_icon_bx, @function
n697_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n697_call_icon_α:       mov              r11, 292
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 264], rax
                        .section         .rodata
.Lcall_icon_α_rkfn723:  .string          "getenv"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn723]
                        lea              rsi, [rsp + 256]
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
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_686_af
                                                                              jmp   n698_lit_string_α
n697_call_icon_β:       mov              r11, 292;                            jmp   .Ldisjunction_ω_686_af
                        .size            n697_call_icon_bx, .-n697_call_icon_bx
                        .type            n698_lit_string_bx, @function
n698_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n698_lit_string_α:      mov              r11, 293
                        mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 32
                        mov              rax, qword ptr [rip + .Llit_string_α_724_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n699_call_icon_α
.Llit_string_α_724_0:   .quad            .Llit_string_α_724_0_s
.Llit_string_α_724_0_s: .string          "*** Benchmarking with output ***"
                        .size            n698_lit_string_bx, .-n698_lit_string_bx
                        .type            n699_call_icon_bx, @function
n699_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n699_call_icon_α:       mov              r11, 294
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 184], rax
                        .section         .rodata
.Lcall_icon_α_rkfn726:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn726]
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
                        cmp              al, 104;                             je    n700_return_α
                                                                              jmp   n700_return_α
n699_call_icon_β:       mov              r11, 294;                            jmp   n700_return_α
                        .size            n699_call_icon_bx, .-n699_call_icon_bx
                        .type            n700_return_bx, @function
n700_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n700_return_α:          mov              r11, 295
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   Init___γ
                        .size            n700_return_bx, .-n700_return_bx
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
                        add              rsp, 528;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
Init___ω:
                        add              rsp, 528;                            jmp   qword ptr [rsp + 8]
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
                        lea              rcx, [rip + .LInit___α_728_3]
                        push             rcx
                        lea              rcx, [rip + .LInit___α_728_2]
                        push             rcx;                                 jmp   FN__Init__
.LInit___α_728_2:       add              rsp, 24
                        pop              r12;                                 jmp   r12
.LInit___α_728_3:       add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__Term__:
                        sub              rsp, 560
                        mov              rdi, rsp
                        add              rdi, 480
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
Term___α_body:
                        .type            n729_disjunction_bx, @function
n729_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n729_disjunction_α:     mov              r11, 296
                        mov              qword ptr [rsp + 272], 0
                        mov              qword ptr [rsp + 280], 0
                        mov              dword ptr [rsp + 288], 0;            jmp   n730_lit_string_α
.Ldisjunction_γ_729_as: mov              r11, 296
                        mov              eax, dword ptr [rsp + 288]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_747_0
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 280], rax;          jmp   n738_var_α
.Ldisjunction_α_747_0:                                                        jmp   n738_var_α
n729_disjunction_β:     mov              r11, 296
                        mov              eax, dword ptr [rsp + 288];          jmp   n738_var_α
.Ldisjunction_γ_729_af: mov              r11, 296
.Ldisjunction_ω_729_af: mov              r11, 296
                        add              dword ptr [rsp + 288], 1
                        mov              eax, dword ptr [rsp + 288];          jmp   n738_var_α
                        .size            n729_disjunction_bx, .-n729_disjunction_bx
                        .type            n730_lit_string_bx, @function
n730_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n730_lit_string_α:      mov              r11, 297
                        mov              qword ptr [rsp + 448], 2             # result
                        mov              dword ptr [rsp + 452], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_748_0]
                        mov              qword ptr [rsp + 456], rax;          jmp   n731_call_icon_α
n730_lit_string_β:      mov              r11, 297;                            jmp   n732_var_α
.Llit_string_α_748_0:   .quad            .Llit_string_α_748_0_s
.Llit_string_α_748_0_s: .string          "OUTPUT"
                        .size            n730_lit_string_bx, .-n730_lit_string_bx
                        .type            n731_call_icon_bx, @function
n731_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n731_call_icon_α:       mov              r11, 298
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 424], rax
                        .section         .rodata
.Lcall_icon_α_rkfn750:  .string          "getenv"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn750]
                        lea              rsi, [rsp + 416]
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
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              al, 104;                             je    n732_var_α
                                                                              jmp   .Ldisjunction_γ_729_af
n731_call_icon_β:       mov              r11, 298;                            jmp   n732_var_α
                        .size            n731_call_icon_bx, .-n731_call_icon_bx
                        .type            n732_var_bx, @function
n732_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n732_var_α:             mov              r11, 299
                        mov              qword ptr [rsp + 384], 0
                        mov              qword ptr [rsp + 392], 0;            jmp   n733_var_α
n732_var_β:             mov              r11, 299;                            jmp   .Ldisjunction_ω_729_af
                        .size            n732_var_bx, .-n732_var_bx
                        .type            n733_var_bx, @function
n733_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n733_var_α:             mov              r11, 300
                        mov              rax, qword ptr [r9 + 32]             # Save__
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 368], rax           # result
                        mov              qword ptr [rsp + 376], rdx;          jmp   n734_assign_α
                        .size            n733_var_bx, .-n733_var_bx
                        .type            n734_assign_bx, @function
n734_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n734_assign_α:          mov              r11, 301
                        mov              rsi, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        mov              rdi, qword ptr [rip + .Lassign_α_753_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n735_var_α
.Lassign_α_753_0:       .quad            .Lassign_α_753_0_s
.Lassign_α_753_0_s:     .string          "write"
                        .size            n734_assign_bx, .-n734_assign_bx
                        .type            n735_var_bx, @function
n735_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n735_var_α:             mov              r11, 302
                        mov              rax, qword ptr [r9 + 48]             # Saves__
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 336], rax           # result
                        mov              qword ptr [rsp + 344], rdx;          jmp   n736_assign_α
                        .size            n735_var_bx, .-n735_var_bx
                        .type            n736_assign_bx, @function
n736_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n736_assign_α:          mov              r11, 303
                        mov              rsi, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
                        mov              rdi, qword ptr [rip + .Lassign_α_755_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n737_conjunction_α
.Lassign_α_755_0:       .quad            .Lassign_α_755_0_s
.Lassign_α_755_0_s:     .string          "writes"
                        .size            n736_assign_bx, .-n736_assign_bx
                        .type            n737_conjunction_bx, @function
n737_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n737_conjunction_α:     mov              r11, 304
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 312], rax;          jmp   .Ldisjunction_γ_729_as
n737_conjunction_β:     mov              r11, 304;                            jmp   n738_var_α
                        .size            n737_conjunction_bx, .-n737_conjunction_bx
                        .type            n738_var_bx, @function
n738_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n738_var_α:             mov              r11, 305
                        mov              rax, qword ptr [r9 + 64]             # Name__
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 192], rax           # result
                        mov              qword ptr [rsp + 200], rdx;          jmp   n739_lit_string_α
                        .size            n738_var_bx, .-n738_var_bx
                        .type            n739_lit_string_bx, @function
n739_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n739_lit_string_α:      mov              r11, 306
                        mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 16
                        mov              rax, qword ptr [rip + .Llit_string_α_758_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n740_call_proc_staged_α
.Llit_string_α_758_0:   .quad            .Llit_string_α_758_0_s
.Llit_string_α_758_0_s: .string          " elapsed time = "
                        .size            n739_lit_string_bx, .-n739_lit_string_bx
                        .type            n740_call_proc_staged_bx, @function
n740_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n740_call_proc_staged_α:
                        mov              r11, 307
                        call             Time___dcα;                          jmp   .Lcall_proc_staged_α_760_2
.Lcall_proc_staged_α_760_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_760_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
.Lcall_proc_staged_α_760_29:
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n742_call_proc_staged_α
                                                                              jmp   n741_call_icon_α
n740_call_proc_staged_β:
                        mov              r11, 307;                            jmp   n742_call_proc_staged_α
.Lcall_proc_staged_β_760_0:
                        .quad            .Lcall_proc_staged_β_760_0_s
.Lcall_proc_staged_β_760_0_s:
                        .string          "Time__"
                        .size            n740_call_proc_staged_bx, .-n740_call_proc_staged_bx
                        .type            n741_call_icon_bx, @function
n741_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n741_call_icon_α:       mov              r11, 308
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 248]
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
.Lcall_icon_α_rkfn762:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn762]
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
                        cmp              al, 104;                             je    n742_call_proc_staged_α
                                                                              jmp   n742_call_proc_staged_α
n741_call_icon_β:       mov              r11, 308;                            jmp   n742_call_proc_staged_α
                        .size            n741_call_icon_bx, .-n741_call_icon_bx
                        .type            n742_call_proc_staged_bx, @function
n742_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n742_call_proc_staged_α:
                        mov              r11, 309
                        call             Regions___dcα;                       jmp   .Lcall_proc_staged_α_764_2
.Lcall_proc_staged_α_764_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_764_29
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
.Lcall_proc_staged_α_764_29:
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n743_call_proc_staged_α
                                                                              jmp   n743_call_proc_staged_α
n742_call_proc_staged_β:
                        mov              r11, 309;                            jmp   n743_call_proc_staged_α
.Lcall_proc_staged_β_764_0:
                        .quad            .Lcall_proc_staged_β_764_0_s
.Lcall_proc_staged_β_764_0_s:
                        .string          "Regions__"
                        .size            n742_call_proc_staged_bx, .-n742_call_proc_staged_bx
                        .type            n743_call_proc_staged_bx, @function
n743_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n743_call_proc_staged_α:
                        mov              r11, 310
                        call             Storage___dcα;                       jmp   .Lcall_proc_staged_α_766_2
.Lcall_proc_staged_α_766_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_766_29
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
.Lcall_proc_staged_α_766_29:
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    n744_call_proc_staged_α
                                                                              jmp   n744_call_proc_staged_α
n743_call_proc_staged_β:
                        mov              r11, 310;                            jmp   n744_call_proc_staged_α
.Lcall_proc_staged_β_766_0:
                        .quad            .Lcall_proc_staged_β_766_0_s
.Lcall_proc_staged_β_766_0_s:
                        .string          "Storage__"
                        .size            n743_call_proc_staged_bx, .-n743_call_proc_staged_bx
                        .type            n744_call_proc_staged_bx, @function
n744_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n744_call_proc_staged_α:
                        mov              r11, 311
                        call             Collections___dcα;                   jmp   .Lcall_proc_staged_α_768_2
.Lcall_proc_staged_α_768_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_768_29
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
.Lcall_proc_staged_α_768_29:
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    n745_return_α
                                                                              jmp   n745_return_α
n744_call_proc_staged_β:
                        mov              r11, 311;                            jmp   n745_return_α
.Lcall_proc_staged_β_768_0:
                        .quad            .Lcall_proc_staged_β_768_0_s
.Lcall_proc_staged_β_768_0_s:
                        .string          "Collections__"
                        .size            n744_call_proc_staged_bx, .-n744_call_proc_staged_bx
                        .type            n745_return_bx, @function
n745_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n745_return_α:          mov              r11, 312
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   Term___γ
                        .size            n745_return_bx, .-n745_return_bx
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
                        add              rsp, 560;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
Term___ω:
                        add              rsp, 560;                            jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
Term___dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .LTerm___α_770_3]
                        push             rcx
                        lea              rcx, [rip + .LTerm___α_770_2]
                        push             rcx;                                 jmp   FN__Term__
.LTerm___α_770_2:       add              rsp, 24
                        pop              r12;                                 jmp   r12
.LTerm___α_770_3:       add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__Collections__:
                        sub              rsp, 1056
                        mov              rdi, rsp
                        add              rdi, 960
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
Collections___α_body:
                        .type            n771_disjunction_bx, @function
n771_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n771_disjunction_α:     mov              r11, 313
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              dword ptr [rsp + 656], 0;            jmp   n798_var_ref_α
.Ldisjunction_γ_771_as: mov              r11, 313
                        mov              eax, dword ptr [rsp + 656]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_809_0
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 648], rax;          jmp   n772_make_list_α
.Ldisjunction_α_809_0:                                                        jmp   n772_make_list_α
n771_disjunction_β:     mov              r11, 313
                        mov              eax, dword ptr [rsp + 656];          jmp   n772_make_list_α
.Ldisjunction_γ_771_af: mov              r11, 313
.Ldisjunction_ω_771_af: mov              r11, 313
                        add              dword ptr [rsp + 656], 1
                        mov              eax, dword ptr [rsp + 656];          jmp   n772_make_list_α
                        .size            n771_disjunction_bx, .-n771_disjunction_bx
                        .type            n772_make_list_bx, @function
n772_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n772_make_list_α:       mov              r11, 314
                        lea              rdi, [rsp + 640]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx;          jmp   n773_assign_α
                        .size            n772_make_list_bx, .-n772_make_list_bx
                        .type            n773_assign_bx, @function
n773_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n773_assign_α:          mov              r11, 315
                        mov              rax, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx;          jmp   n774_var_α
                        .size            n773_assign_bx, .-n773_assign_bx
                        .type            n774_var_bx, @function
n774_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n774_var_α:             mov              r11, 316
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 584], rax;          jmp   n775_kw_icon_gen_α
                        .size            n774_var_bx, .-n774_var_bx
                        .type            n775_kw_icon_gen_bx, @function
n775_kw_icon_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n775_kw_icon_gen_α:     mov              r11, 317
                        mov              qword ptr [rsp + 608], 0
.Lkw_icon_gen_α_815_1:  mov              rdi, qword ptr [rip + .Lkw_icon_gen_α_815_0]
                        mov              rsi, qword ptr [rsp + 608]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n777_lit_string_α
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        mov              rax, qword ptr [rsp + 608]
                        add              rax, 1
                        mov              qword ptr [rsp + 608], rax;          jmp   n776_call_icon_α
n775_kw_icon_gen_β:     mov              r11, 317;                            jmp   .Lkw_icon_gen_α_815_1
.Lkw_icon_gen_α_815_0:  .quad            .Lkw_icon_gen_α_815_0_s
.Lkw_icon_gen_α_815_0_s:
                        .string          "&collections"
                        .size            n775_kw_icon_gen_bx, .-n775_kw_icon_gen_bx
                        .type            n776_call_icon_bx, @function
n776_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n776_call_icon_α:       mov              r11, 318
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 552], rax
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 536], rax
                        .section         .rodata
.Lcall_icon_α_rkfn817:  .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn817]
                        lea              rsi, [rsp + 528]
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
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              al, 104;                             je    n775_kw_icon_gen_β
                                                                              jmp   n775_kw_icon_gen_β
n776_call_icon_β:       mov              r11, 318;                            jmp   n775_kw_icon_gen_β
                        .size            n776_call_icon_bx, .-n776_call_icon_bx
                        .type            n777_lit_string_bx, @function
n777_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n777_lit_string_α:      mov              r11, 319
                        mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 11
                        mov              rax, qword ptr [rip + .Llit_string_α_818_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n778_call_icon_α
.Llit_string_α_818_0:   .quad            .Llit_string_α_818_0_s
.Llit_string_α_818_0_s: .string          "collections"
                        .size            n777_lit_string_bx, .-n777_lit_string_bx
                        .type            n778_call_icon_bx, @function
n778_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n778_call_icon_α:       mov              r11, 320
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 456], rax
                        .section         .rodata
.Lcall_icon_α_rkfn820:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn820]
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
                        cmp              al, 104;                             je    n779_lit_integer_α
                                                                              jmp   n779_lit_integer_α
n778_call_icon_β:       mov              r11, 320;                            jmp   n779_lit_integer_α
                        .size            n778_call_icon_bx, .-n778_call_icon_bx
                        .type            n779_lit_integer_bx, @function
n779_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n779_lit_integer_α:     mov              r11, 321
                        mov              qword ptr [rsp + 64], 3              # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_821_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n780_var_α
.Llit_integer_α_821_0:  .quad            1
                        .size            n779_lit_integer_bx, .-n779_lit_integer_bx
                        .type            n780_var_bx, @function
n780_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n780_var_α:             mov              r11, 322
                        mov              rax, qword ptr [r9 + 208]            # Collections____STATIC__labels
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 96], rax            # result
                        mov              qword ptr [rsp + 104], rdx;          jmp   n781_unop_α
                        .size            n780_var_bx, .-n780_var_bx
                        .type            n781_unop_bx, @function
n781_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n781_unop_α:            mov              r11, 323
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
                        mov              qword ptr [rsp + 88], rdx;           jmp   n782_to_α
                        .size            n781_unop_bx, .-n781_unop_bx
                        .type            n782_to_bx, @function
n782_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n782_to_α:              mov              r11, 324
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
.Lto_α_825_0:           mov              rax, qword ptr [rsp + 48]
                        mov              rcx, qword ptr [rsp + 88]
                        cmp              rax, rcx;                            jg    n797_return_α
                        mov              qword ptr [rsp + 32], 3
                        mov              qword ptr [rsp + 40], rax;           jmp   n783_assign_α
n782_to_β:              mov              r11, 324
                        inc              qword ptr [rsp + 48];                jmp   .Lto_α_825_0
                        .size            n782_to_bx, .-n782_to_bx
                        .type            n783_assign_bx, @function
n783_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n783_assign_α:          mov              r11, 325
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx;          jmp   n784_bound_α
                        .size            n783_assign_bx, .-n783_assign_bx
                        .type            n784_bound_bx, @function
n784_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n784_bound_α:           mov              r11, 326
                        mov              qword ptr [rsp + 112], rsp;          jmp   n785_var_ref_α
                        .size            n784_bound_bx, .-n784_bound_bx
                        .type            n785_var_ref_bx, @function
n785_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n785_var_ref_α:         mov              r11, 327
                        mov              rax, 4294967336
                        mov              rdx, 1879052496                      # Collections____STATIC__labels
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n786_var_α
                        .size            n785_var_ref_bx, .-n785_var_ref_bx
                        .type            n786_var_bx, @function
n786_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n786_var_α:             mov              r11, 328
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 248], rax;          jmp   n787_subscript_α
                        .size            n786_var_bx, .-n786_var_bx
                        .type            n787_subscript_bx, @function
n787_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n787_subscript_α:       mov              r11, 329
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
                        cmp              al, 104;                             je    n796_unmark_α
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n788_deref_α
                        .size            n787_subscript_bx, .-n787_subscript_bx
                        .type            n788_deref_bx, @function
n788_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n788_deref_α:           mov              r11, 330
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
                        cmp              al, 104;                             je    n796_unmark_α
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n789_var_ref_α
                        .size            n788_deref_bx, .-n788_deref_bx
                        .type            n789_var_ref_bx, @function
n789_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n789_var_ref_α:         mov              r11, 331
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 976]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n790_var_α
                        .size            n789_var_ref_bx, .-n789_var_ref_bx
                        .type            n790_var_bx, @function
n790_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n790_var_α:             mov              r11, 332
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 376], rax;          jmp   n791_subscript_α
                        .size            n790_var_bx, .-n790_var_bx
                        .type            n791_subscript_bx, @function
n791_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n791_subscript_α:       mov              r11, 333
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
                        cmp              al, 104;                             je    n796_unmark_α
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n792_deref_α
                        .size            n791_subscript_bx, .-n791_subscript_bx
                        .type            n792_deref_bx, @function
n792_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n792_deref_α:           mov              r11, 334
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
                        cmp              al, 104;                             je    n796_unmark_α
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n793_lit_integer_α
                        .size            n792_deref_bx, .-n792_deref_bx
                        .type            n793_lit_integer_bx, @function
n793_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n793_lit_integer_α:     mov              r11, 335
                        mov              qword ptr [rsp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_841_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n794_call_icon_α
.Llit_integer_α_841_0:  .quad            8
                        .size            n793_lit_integer_bx, .-n793_lit_integer_bx
                        .type            n794_call_icon_bx, @function
n794_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n794_call_icon_α:       mov              r11, 336
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 312], rax
                        .section         .rodata
.Lcall_icon_α_rkfn843:  .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn843]
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
                        cmp              al, 104;                             je    n796_unmark_α
                                                                              jmp   n795_call_icon_α
n794_call_icon_β:       mov              r11, 336;                            jmp   n796_unmark_α
                        .size            n794_call_icon_bx, .-n794_call_icon_bx
                        .type            n795_call_icon_bx, @function
n795_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n795_call_icon_α:       mov              r11, 337
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 184], rax
                        .section         .rodata
.Lcall_icon_α_rkfn845:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn845]
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
                        cmp              al, 104;                             je    n796_unmark_α
                                                                              jmp   n796_unmark_α
n795_call_icon_β:       mov              r11, 337;                            jmp   n796_unmark_α
                        .size            n795_call_icon_bx, .-n795_call_icon_bx
                        .type            n796_unmark_bx, @function
n796_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n796_unmark_α:          mov              r11, 338
                        mov              rsp, qword ptr [rsp + 112];          jmp   n782_to_β
                        .size            n796_unmark_bx, .-n796_unmark_bx
                        .type            n797_return_bx, @function
n797_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n797_return_α:          mov              r11, 339
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   Collections___γ
                        .size            n797_return_bx, .-n797_return_bx
                        .type            n798_var_ref_bx, @function
n798_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n798_var_ref_α:         mov              r11, 340
                        mov              rax, 4294967336
                        mov              rdx, 1879052512                      # Collections____INITFLAG__0
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx;          jmp   n799_nulltest_var_α
n798_var_ref_β:         mov              r11, 340;                            jmp   .Ldisjunction_ω_771_af
                        .size            n798_var_ref_bx, .-n798_var_ref_bx
                        .type            n799_nulltest_var_bx, @function
n799_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n799_nulltest_var_α:    mov              r11, 341
                        mov              eax, dword ptr [rsp + 896]
                        cmp              al, 104;                             je    .Ldisjunction_ω_771_af
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_771_af
                        cmp              eax, 0;                              jne   .Ldisjunction_ω_771_af
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 920], rax;          jmp   n800_lit_integer_α
                        .size            n799_nulltest_var_bx, .-n799_nulltest_var_bx
                        .type            n800_lit_integer_bx, @function
n800_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n800_lit_integer_α:     mov              r11, 342
                        mov              qword ptr [rsp + 944], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_852_0]
                        mov              qword ptr [rsp + 952], rax;          jmp   n801_assign_var_α
.Llit_integer_α_852_0:  .quad            1
                        .size            n800_lit_integer_bx, .-n800_lit_integer_bx
                        .type            n801_assign_var_bx, @function
n801_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n801_assign_var_α:      mov              r11, 343
                        mov              rdi, qword ptr [rsp + 912]
                        mov              rsi, qword ptr [rsp + 920]
                        mov              rdx, qword ptr [rsp + 944]
                        mov              rcx, qword ptr [rsp + 952]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_771_af
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx;          jmp   n802_lit_string_α
                        .size            n801_assign_var_bx, .-n801_assign_var_bx
                        .type            n802_lit_string_bx, @function
n802_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n802_lit_string_α:      mov              r11, 344
                        mov              qword ptr [rsp + 768], 2             # result
                        mov              dword ptr [rsp + 772], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_854_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n803_lit_string_α
.Llit_string_α_854_0:   .quad            .Llit_string_α_854_0_s
.Llit_string_α_854_0_s: .string          "total"
                        .size            n802_lit_string_bx, .-n802_lit_string_bx
                        .type            n803_lit_string_bx, @function
n803_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n803_lit_string_α:      mov              r11, 345
                        mov              qword ptr [rsp + 800], 2             # result
                        mov              dword ptr [rsp + 804], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_855_0]
                        mov              qword ptr [rsp + 808], rax;          jmp   n804_lit_string_α
.Llit_string_α_855_0:   .quad            .Llit_string_α_855_0_s
.Llit_string_α_855_0_s: .string          "static"
                        .size            n803_lit_string_bx, .-n803_lit_string_bx
                        .type            n804_lit_string_bx, @function
n804_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n804_lit_string_α:      mov              r11, 346
                        mov              qword ptr [rsp + 832], 2             # result
                        mov              dword ptr [rsp + 836], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_856_0]
                        mov              qword ptr [rsp + 840], rax;          jmp   n805_lit_string_α
.Llit_string_α_856_0:   .quad            .Llit_string_α_856_0_s
.Llit_string_α_856_0_s: .string          "string"
                        .size            n804_lit_string_bx, .-n804_lit_string_bx
                        .type            n805_lit_string_bx, @function
n805_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n805_lit_string_α:      mov              r11, 347
                        mov              qword ptr [rsp + 864], 2             # result
                        mov              dword ptr [rsp + 868], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_857_0]
                        mov              qword ptr [rsp + 872], rax;          jmp   n806_make_list_α
.Llit_string_α_857_0:   .quad            .Llit_string_α_857_0_s
.Llit_string_α_857_0_s: .string          "block"
                        .size            n805_lit_string_bx, .-n805_lit_string_bx
                        .type            n806_make_list_bx, @function
n806_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n806_make_list_α:       mov              r11, 348
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 712], rax
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 728], rax
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 744], rax
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 760], rax
                        lea              rdi, [rsp + 704]
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx;          jmp   n807_assign_α
                        .size            n806_make_list_bx, .-n806_make_list_bx
                        .type            n807_assign_bx, @function
n807_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n807_assign_α:          mov              r11, 349
                        mov              rax, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
                        mov              qword ptr [r9 + 208], rax            # Collections____STATIC__labels
                        mov              qword ptr [r9 + 216], rdx
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   .Ldisjunction_γ_771_as
n807_assign_β:          mov              r11, 349;                            jmp   n772_make_list_α
                        .size            n807_assign_bx, .-n807_assign_bx
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
                        add              rsp, 1056;                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
Collections___ω:
                        add              rsp, 1056;                           jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
Collections___dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .LCollections___α_861_3]
                        push             rcx
                        lea              rcx, [rip + .LCollections___α_861_2]
                        push             rcx;                                 jmp   FN__Collections__
.LCollections___α_861_2:
                        add              rsp, 24
                        pop              r12;                                 jmp   r12
.LCollections___α_861_3:
                        add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__Regions__:
                        sub              rsp, 1008
                        mov              rdi, rsp
                        add              rdi, 912
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
Regions___α_body:
                        .type            n862_disjunction_bx, @function
n862_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n862_disjunction_α:     mov              r11, 350
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              dword ptr [rsp + 656], 0;            jmp   n889_var_ref_α
.Ldisjunction_γ_862_as: mov              r11, 350
                        mov              eax, dword ptr [rsp + 656]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_899_0
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 648], rax;          jmp   n863_make_list_α
.Ldisjunction_α_899_0:                                                        jmp   n863_make_list_α
n862_disjunction_β:     mov              r11, 350
                        mov              eax, dword ptr [rsp + 656];          jmp   n863_make_list_α
.Ldisjunction_γ_862_af: mov              r11, 350
.Ldisjunction_ω_862_af: mov              r11, 350
                        add              dword ptr [rsp + 656], 1
                        mov              eax, dword ptr [rsp + 656];          jmp   n863_make_list_α
                        .size            n862_disjunction_bx, .-n862_disjunction_bx
                        .type            n863_make_list_bx, @function
n863_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n863_make_list_α:       mov              r11, 351
                        lea              rdi, [rsp + 640]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx;          jmp   n864_assign_α
                        .size            n863_make_list_bx, .-n863_make_list_bx
                        .type            n864_assign_bx, @function
n864_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n864_assign_α:          mov              r11, 352
                        mov              rax, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx;          jmp   n865_var_α
                        .size            n864_assign_bx, .-n864_assign_bx
                        .type            n865_var_bx, @function
n865_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n865_var_α:             mov              r11, 353
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 584], rax;          jmp   n866_kw_icon_gen_α
                        .size            n865_var_bx, .-n865_var_bx
                        .type            n866_kw_icon_gen_bx, @function
n866_kw_icon_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n866_kw_icon_gen_α:     mov              r11, 354
                        mov              qword ptr [rsp + 608], 0
.Lkw_icon_gen_α_905_1:  mov              rdi, qword ptr [rip + .Lkw_icon_gen_α_905_0]
                        mov              rsi, qword ptr [rsp + 608]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n868_lit_string_α
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        mov              rax, qword ptr [rsp + 608]
                        add              rax, 1
                        mov              qword ptr [rsp + 608], rax;          jmp   n867_call_icon_α
n866_kw_icon_gen_β:     mov              r11, 354;                            jmp   .Lkw_icon_gen_α_905_1
.Lkw_icon_gen_α_905_0:  .quad            .Lkw_icon_gen_α_905_0_s
.Lkw_icon_gen_α_905_0_s:
                        .string          "&regions"
                        .size            n866_kw_icon_gen_bx, .-n866_kw_icon_gen_bx
                        .type            n867_call_icon_bx, @function
n867_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n867_call_icon_α:       mov              r11, 355
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 552], rax
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 536], rax
                        .section         .rodata
.Lcall_icon_α_rkfn907:  .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn907]
                        lea              rsi, [rsp + 528]
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
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              al, 104;                             je    n866_kw_icon_gen_β
                                                                              jmp   n866_kw_icon_gen_β
n867_call_icon_β:       mov              r11, 355;                            jmp   n866_kw_icon_gen_β
                        .size            n867_call_icon_bx, .-n867_call_icon_bx
                        .type            n868_lit_string_bx, @function
n868_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n868_lit_string_α:      mov              r11, 356
                        mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 7
                        mov              rax, qword ptr [rip + .Llit_string_α_908_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n869_call_icon_α
.Llit_string_α_908_0:   .quad            .Llit_string_α_908_0_s
.Llit_string_α_908_0_s: .string          "regions"
                        .size            n868_lit_string_bx, .-n868_lit_string_bx
                        .type            n869_call_icon_bx, @function
n869_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n869_call_icon_α:       mov              r11, 357
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 456], rax
                        .section         .rodata
.Lcall_icon_α_rkfn910:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn910]
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
                        cmp              al, 104;                             je    n870_lit_integer_α
                                                                              jmp   n870_lit_integer_α
n869_call_icon_β:       mov              r11, 357;                            jmp   n870_lit_integer_α
                        .size            n869_call_icon_bx, .-n869_call_icon_bx
                        .type            n870_lit_integer_bx, @function
n870_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n870_lit_integer_α:     mov              r11, 358
                        mov              qword ptr [rsp + 64], 3              # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_911_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n871_var_α
.Llit_integer_α_911_0:  .quad            1
                        .size            n870_lit_integer_bx, .-n870_lit_integer_bx
                        .type            n871_var_bx, @function
n871_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n871_var_α:             mov              r11, 359
                        mov              rax, qword ptr [r9 + 240]            # Regions____STATIC__labels
                        mov              rdx, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 96], rax            # result
                        mov              qword ptr [rsp + 104], rdx;          jmp   n872_unop_α
                        .size            n871_var_bx, .-n871_var_bx
                        .type            n872_unop_bx, @function
n872_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n872_unop_α:            mov              r11, 360
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
                        mov              qword ptr [rsp + 88], rdx;           jmp   n873_to_α
                        .size            n872_unop_bx, .-n872_unop_bx
                        .type            n873_to_bx, @function
n873_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n873_to_α:              mov              r11, 361
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
.Lto_α_915_0:           mov              rax, qword ptr [rsp + 48]
                        mov              rcx, qword ptr [rsp + 88]
                        cmp              rax, rcx;                            jg    n888_return_α
                        mov              qword ptr [rsp + 32], 3
                        mov              qword ptr [rsp + 40], rax;           jmp   n874_assign_α
n873_to_β:              mov              r11, 361
                        inc              qword ptr [rsp + 48];                jmp   .Lto_α_915_0
                        .size            n873_to_bx, .-n873_to_bx
                        .type            n874_assign_bx, @function
n874_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n874_assign_α:          mov              r11, 362
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx;          jmp   n875_bound_α
                        .size            n874_assign_bx, .-n874_assign_bx
                        .type            n875_bound_bx, @function
n875_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n875_bound_α:           mov              r11, 363
                        mov              qword ptr [rsp + 112], rsp;          jmp   n876_var_ref_α
                        .size            n875_bound_bx, .-n875_bound_bx
                        .type            n876_var_ref_bx, @function
n876_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n876_var_ref_α:         mov              r11, 364
                        mov              rax, 4294967336
                        mov              rdx, 1879052528                      # Regions____STATIC__labels
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n877_var_α
                        .size            n876_var_ref_bx, .-n876_var_ref_bx
                        .type            n877_var_bx, @function
n877_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n877_var_α:             mov              r11, 365
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 248], rax;          jmp   n878_subscript_α
                        .size            n877_var_bx, .-n877_var_bx
                        .type            n878_subscript_bx, @function
n878_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n878_subscript_α:       mov              r11, 366
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
                        cmp              al, 104;                             je    n887_unmark_α
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n879_deref_α
                        .size            n878_subscript_bx, .-n878_subscript_bx
                        .type            n879_deref_bx, @function
n879_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n879_deref_α:           mov              r11, 367
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
                        cmp              al, 104;                             je    n887_unmark_α
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n880_var_ref_α
                        .size            n879_deref_bx, .-n879_deref_bx
                        .type            n880_var_ref_bx, @function
n880_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n880_var_ref_α:         mov              r11, 368
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 928]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n881_var_α
                        .size            n880_var_ref_bx, .-n880_var_ref_bx
                        .type            n881_var_bx, @function
n881_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n881_var_α:             mov              r11, 369
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 376], rax;          jmp   n882_subscript_α
                        .size            n881_var_bx, .-n881_var_bx
                        .type            n882_subscript_bx, @function
n882_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n882_subscript_α:       mov              r11, 370
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
                        cmp              al, 104;                             je    n887_unmark_α
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n883_deref_α
                        .size            n882_subscript_bx, .-n882_subscript_bx
                        .type            n883_deref_bx, @function
n883_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n883_deref_α:           mov              r11, 371
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
                        cmp              al, 104;                             je    n887_unmark_α
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n884_lit_integer_α
                        .size            n883_deref_bx, .-n883_deref_bx
                        .type            n884_lit_integer_bx, @function
n884_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n884_lit_integer_α:     mov              r11, 372
                        mov              qword ptr [rsp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_931_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n885_call_icon_α
.Llit_integer_α_931_0:  .quad            8
                        .size            n884_lit_integer_bx, .-n884_lit_integer_bx
                        .type            n885_call_icon_bx, @function
n885_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n885_call_icon_α:       mov              r11, 373
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 312], rax
                        .section         .rodata
.Lcall_icon_α_rkfn933:  .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn933]
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
                        cmp              al, 104;                             je    n887_unmark_α
                                                                              jmp   n886_call_icon_α
n885_call_icon_β:       mov              r11, 373;                            jmp   n887_unmark_α
                        .size            n885_call_icon_bx, .-n885_call_icon_bx
                        .type            n886_call_icon_bx, @function
n886_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n886_call_icon_α:       mov              r11, 374
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 184], rax
                        .section         .rodata
.Lcall_icon_α_rkfn935:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn935]
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
                        cmp              al, 104;                             je    n887_unmark_α
                                                                              jmp   n887_unmark_α
n886_call_icon_β:       mov              r11, 374;                            jmp   n887_unmark_α
                        .size            n886_call_icon_bx, .-n886_call_icon_bx
                        .type            n887_unmark_bx, @function
n887_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n887_unmark_α:          mov              r11, 375
                        mov              rsp, qword ptr [rsp + 112];          jmp   n873_to_β
                        .size            n887_unmark_bx, .-n887_unmark_bx
                        .type            n888_return_bx, @function
n888_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n888_return_α:          mov              r11, 376
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   Regions___γ
                        .size            n888_return_bx, .-n888_return_bx
                        .type            n889_var_ref_bx, @function
n889_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n889_var_ref_α:         mov              r11, 377
                        mov              rax, 4294967336
                        mov              rdx, 1879052544                      # Regions____INITFLAG__0
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx;          jmp   n890_nulltest_var_α
n889_var_ref_β:         mov              r11, 377;                            jmp   .Ldisjunction_ω_862_af
                        .size            n889_var_ref_bx, .-n889_var_ref_bx
                        .type            n890_nulltest_var_bx, @function
n890_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n890_nulltest_var_α:    mov              r11, 378
                        mov              eax, dword ptr [rsp + 848]
                        cmp              al, 104;                             je    .Ldisjunction_ω_862_af
                        mov              rdi, qword ptr [rsp + 848]
                        mov              rsi, qword ptr [rsp + 856]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_862_af
                        cmp              eax, 0;                              jne   .Ldisjunction_ω_862_af
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 872], rax;          jmp   n891_lit_integer_α
                        .size            n890_nulltest_var_bx, .-n890_nulltest_var_bx
                        .type            n891_lit_integer_bx, @function
n891_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n891_lit_integer_α:     mov              r11, 379
                        mov              qword ptr [rsp + 896], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_942_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n892_assign_var_α
.Llit_integer_α_942_0:  .quad            1
                        .size            n891_lit_integer_bx, .-n891_lit_integer_bx
                        .type            n892_assign_var_bx, @function
n892_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n892_assign_var_α:      mov              r11, 380
                        mov              rdi, qword ptr [rsp + 864]
                        mov              rsi, qword ptr [rsp + 872]
                        mov              rdx, qword ptr [rsp + 896]
                        mov              rcx, qword ptr [rsp + 904]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_862_af
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n893_lit_string_α
                        .size            n892_assign_var_bx, .-n892_assign_var_bx
                        .type            n893_lit_string_bx, @function
n893_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n893_lit_string_α:      mov              r11, 381
                        mov              qword ptr [rsp + 752], 2             # result
                        mov              dword ptr [rsp + 756], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_944_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n894_lit_string_α
.Llit_string_α_944_0:   .quad            .Llit_string_α_944_0_s
.Llit_string_α_944_0_s: .string          "static"
                        .size            n893_lit_string_bx, .-n893_lit_string_bx
                        .type            n894_lit_string_bx, @function
n894_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n894_lit_string_α:      mov              r11, 382
                        mov              qword ptr [rsp + 784], 2             # result
                        mov              dword ptr [rsp + 788], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_945_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n895_lit_string_α
.Llit_string_α_945_0:   .quad            .Llit_string_α_945_0_s
.Llit_string_α_945_0_s: .string          "string"
                        .size            n894_lit_string_bx, .-n894_lit_string_bx
                        .type            n895_lit_string_bx, @function
n895_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n895_lit_string_α:      mov              r11, 383
                        mov              qword ptr [rsp + 816], 2             # result
                        mov              dword ptr [rsp + 820], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_946_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n896_make_list_α
.Llit_string_α_946_0:   .quad            .Llit_string_α_946_0_s
.Llit_string_α_946_0_s: .string          "block"
                        .size            n895_lit_string_bx, .-n895_lit_string_bx
                        .type            n896_make_list_bx, @function
n896_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n896_make_list_α:       mov              r11, 384
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 712], rax
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 728], rax
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 744], rax
                        lea              rdi, [rsp + 704]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx;          jmp   n897_assign_α
                        .size            n896_make_list_bx, .-n896_make_list_bx
                        .type            n897_assign_bx, @function
n897_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n897_assign_α:          mov              r11, 385
                        mov              rax, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
                        mov              qword ptr [r9 + 240], rax            # Regions____STATIC__labels
                        mov              qword ptr [r9 + 248], rdx
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   .Ldisjunction_γ_862_as
n897_assign_β:          mov              r11, 385;                            jmp   n863_make_list_α
                        .size            n897_assign_bx, .-n897_assign_bx
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
                        add              rsp, 1008;                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
Regions___ω:
                        add              rsp, 1008;                           jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
Regions___dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .LRegions___α_950_3]
                        push             rcx
                        lea              rcx, [rip + .LRegions___α_950_2]
                        push             rcx;                                 jmp   FN__Regions__
.LRegions___α_950_2:    add              rsp, 24
                        pop              r12;                                 jmp   r12
.LRegions___α_950_3:    add              rsp, 24
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
                        .type            n951_kw_icon_bx, @function
n951_kw_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n951_kw_icon_α:         mov              r11, 386
                        mov              rdi, qword ptr [rip + .Lkw_icon_α_958_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n953_kw_icon_α
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n952_call_icon_α
n951_kw_icon_β:         mov              r11, 386;                            jmp   n953_kw_icon_α
.Lkw_icon_α_958_0:      .quad            .Lkw_icon_α_958_0_s
.Lkw_icon_α_958_0_s:    .string          "&version"
                        .size            n951_kw_icon_bx, .-n951_kw_icon_bx
                        .type            n952_call_icon_bx, @function
n952_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n952_call_icon_α:       mov              r11, 387
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 200], rax
                        .section         .rodata
.Lcall_icon_α_rkfn960:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn960]
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
                        cmp              al, 104;                             je    n953_kw_icon_α
                                                                              jmp   n953_kw_icon_α
n952_call_icon_β:       mov              r11, 387;                            jmp   n953_kw_icon_α
                        .size            n952_call_icon_bx, .-n952_call_icon_bx
                        .type            n953_kw_icon_bx, @function
n953_kw_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n953_kw_icon_α:         mov              r11, 388
                        mov              rdi, qword ptr [rip + .Lkw_icon_α_961_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n955_kw_icon_gen_α
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx;          jmp   n954_call_icon_α
n953_kw_icon_β:         mov              r11, 388;                            jmp   n955_kw_icon_gen_α
.Lkw_icon_α_961_0:      .quad            .Lkw_icon_α_961_0_s
.Lkw_icon_α_961_0_s:    .string          "&host"
                        .size            n953_kw_icon_bx, .-n953_kw_icon_bx
                        .type            n954_call_icon_bx, @function
n954_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n954_call_icon_α:       mov              r11, 389
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lcall_icon_α_rkfn963:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn963]
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
                        cmp              al, 104;                             je    n955_kw_icon_gen_α
                                                                              jmp   n955_kw_icon_gen_α
n954_call_icon_β:       mov              r11, 389;                            jmp   n955_kw_icon_gen_α
                        .size            n954_call_icon_bx, .-n954_call_icon_bx
                        .type            n955_kw_icon_gen_bx, @function
n955_kw_icon_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n955_kw_icon_gen_α:     mov              r11, 390
                        mov              qword ptr [rsp + 80], 0
.Lkw_icon_gen_α_964_1:  mov              rdi, qword ptr [rip + .Lkw_icon_gen_α_964_0]
                        mov              rsi, qword ptr [rsp + 80]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n957_return_α
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        mov              rax, qword ptr [rsp + 80]
                        add              rax, 1
                        mov              qword ptr [rsp + 80], rax;           jmp   n956_call_icon_α
n955_kw_icon_gen_β:     mov              r11, 390;                            jmp   .Lkw_icon_gen_α_964_1
.Lkw_icon_gen_α_964_0:  .quad            .Lkw_icon_gen_α_964_0_s
.Lkw_icon_gen_α_964_0_s:
                        .string          "&features"
                        .size            n955_kw_icon_gen_bx, .-n955_kw_icon_gen_bx
                        .type            n956_call_icon_bx, @function
n956_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n956_call_icon_α:       mov              r11, 391
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lcall_icon_α_rkfn966:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn966]
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
                        cmp              al, 104;                             je    n955_kw_icon_gen_β
                                                                              jmp   n955_kw_icon_gen_β
n956_call_icon_β:       mov              r11, 391;                            jmp   n955_kw_icon_gen_β
                        .size            n956_call_icon_bx, .-n956_call_icon_bx
                        .type            n957_return_bx, @function
n957_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n957_return_α:          mov              r11, 392
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   Signature___γ
                        .size            n957_return_bx, .-n957_return_bx
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
                        lea              rcx, [rip + .LSignature___α_968_3]
                        push             rcx
                        lea              rcx, [rip + .LSignature___α_968_2]
                        push             rcx;                                 jmp   FN__Signature__
.LSignature___α_968_2:  add              rsp, 24
                        pop              r12;                                 jmp   r12
.LSignature___α_968_3:  add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__Storage__:
                        sub              rsp, 1008
                        mov              rdi, rsp
                        add              rdi, 912
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
Storage___α_body:
                        .type            n969_disjunction_bx, @function
n969_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n969_disjunction_α:     mov              r11, 393
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              dword ptr [rsp + 656], 0;            jmp   n996_var_ref_α
.Ldisjunction_γ_969_as: mov              r11, 393
                        mov              eax, dword ptr [rsp + 656]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_1006_0
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 648], rax;          jmp   n970_make_list_α
.Ldisjunction_α_1006_0:                                                       jmp   n970_make_list_α
n969_disjunction_β:     mov              r11, 393
                        mov              eax, dword ptr [rsp + 656];          jmp   n970_make_list_α
.Ldisjunction_γ_969_af: mov              r11, 393
.Ldisjunction_ω_969_af: mov              r11, 393
                        add              dword ptr [rsp + 656], 1
                        mov              eax, dword ptr [rsp + 656];          jmp   n970_make_list_α
                        .size            n969_disjunction_bx, .-n969_disjunction_bx
                        .type            n970_make_list_bx, @function
n970_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n970_make_list_α:       mov              r11, 394
                        lea              rdi, [rsp + 640]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx;          jmp   n971_assign_α
                        .size            n970_make_list_bx, .-n970_make_list_bx
                        .type            n971_assign_bx, @function
n971_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n971_assign_α:          mov              r11, 395
                        mov              rax, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx;          jmp   n972_var_α
                        .size            n971_assign_bx, .-n971_assign_bx
                        .type            n972_var_bx, @function
n972_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n972_var_α:             mov              r11, 396
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 584], rax;          jmp   n973_kw_icon_gen_α
                        .size            n972_var_bx, .-n972_var_bx
                        .type            n973_kw_icon_gen_bx, @function
n973_kw_icon_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n973_kw_icon_gen_α:     mov              r11, 397
                        mov              qword ptr [rsp + 608], 0
.Lkw_icon_gen_α_1012_1: mov              rdi, qword ptr [rip + .Lkw_icon_gen_α_1012_0]
                        mov              rsi, qword ptr [rsp + 608]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n975_lit_string_α
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        mov              rax, qword ptr [rsp + 608]
                        add              rax, 1
                        mov              qword ptr [rsp + 608], rax;          jmp   n974_call_icon_α
n973_kw_icon_gen_β:     mov              r11, 397;                            jmp   .Lkw_icon_gen_α_1012_1
.Lkw_icon_gen_α_1012_0: .quad            .Lkw_icon_gen_α_1012_0_s
.Lkw_icon_gen_α_1012_0_s:
                        .string          "&storage"
                        .size            n973_kw_icon_gen_bx, .-n973_kw_icon_gen_bx
                        .type            n974_call_icon_bx, @function
n974_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n974_call_icon_α:       mov              r11, 398
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 552], rax
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 536], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1014: .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1014]
                        lea              rsi, [rsp + 528]
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
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              al, 104;                             je    n973_kw_icon_gen_β
                                                                              jmp   n973_kw_icon_gen_β
n974_call_icon_β:       mov              r11, 398;                            jmp   n973_kw_icon_gen_β
                        .size            n974_call_icon_bx, .-n974_call_icon_bx
                        .type            n975_lit_string_bx, @function
n975_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n975_lit_string_α:      mov              r11, 399
                        mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 7
                        mov              rax, qword ptr [rip + .Llit_string_α_1015_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n976_call_icon_α
.Llit_string_α_1015_0:  .quad            .Llit_string_α_1015_0_s
.Llit_string_α_1015_0_s:
                        .string          "storage"
                        .size            n975_lit_string_bx, .-n975_lit_string_bx
                        .type            n976_call_icon_bx, @function
n976_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n976_call_icon_α:       mov              r11, 400
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 456], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1017: .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1017]
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
                        cmp              al, 104;                             je    n977_lit_integer_α
                                                                              jmp   n977_lit_integer_α
n976_call_icon_β:       mov              r11, 400;                            jmp   n977_lit_integer_α
                        .size            n976_call_icon_bx, .-n976_call_icon_bx
                        .type            n977_lit_integer_bx, @function
n977_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n977_lit_integer_α:     mov              r11, 401
                        mov              qword ptr [rsp + 64], 3              # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1018_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n978_var_α
.Llit_integer_α_1018_0: .quad            1
                        .size            n977_lit_integer_bx, .-n977_lit_integer_bx
                        .type            n978_var_bx, @function
n978_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n978_var_α:             mov              r11, 402
                        mov              rax, qword ptr [r9 + 272]            # Storage____STATIC__labels
                        mov              rdx, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 96], rax            # result
                        mov              qword ptr [rsp + 104], rdx;          jmp   n979_unop_α
                        .size            n978_var_bx, .-n978_var_bx
                        .type            n979_unop_bx, @function
n979_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n979_unop_α:            mov              r11, 403
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
                        mov              qword ptr [rsp + 88], rdx;           jmp   n980_to_α
                        .size            n979_unop_bx, .-n979_unop_bx
                        .type            n980_to_bx, @function
n980_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n980_to_α:              mov              r11, 404
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
.Lto_α_1022_0:          mov              rax, qword ptr [rsp + 48]
                        mov              rcx, qword ptr [rsp + 88]
                        cmp              rax, rcx;                            jg    n995_return_α
                        mov              qword ptr [rsp + 32], 3
                        mov              qword ptr [rsp + 40], rax;           jmp   n981_assign_α
n980_to_β:              mov              r11, 404
                        inc              qword ptr [rsp + 48];                jmp   .Lto_α_1022_0
                        .size            n980_to_bx, .-n980_to_bx
                        .type            n981_assign_bx, @function
n981_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n981_assign_α:          mov              r11, 405
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx;          jmp   n982_bound_α
                        .size            n981_assign_bx, .-n981_assign_bx
                        .type            n982_bound_bx, @function
n982_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n982_bound_α:           mov              r11, 406
                        mov              qword ptr [rsp + 112], rsp;          jmp   n983_var_ref_α
                        .size            n982_bound_bx, .-n982_bound_bx
                        .type            n983_var_ref_bx, @function
n983_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n983_var_ref_α:         mov              r11, 407
                        mov              rax, 4294967336
                        mov              rdx, 1879052560                      # Storage____STATIC__labels
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n984_var_α
                        .size            n983_var_ref_bx, .-n983_var_ref_bx
                        .type            n984_var_bx, @function
n984_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n984_var_α:             mov              r11, 408
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 248], rax;          jmp   n985_subscript_α
                        .size            n984_var_bx, .-n984_var_bx
                        .type            n985_subscript_bx, @function
n985_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n985_subscript_α:       mov              r11, 409
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
                        cmp              al, 104;                             je    n994_unmark_α
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n986_deref_α
                        .size            n985_subscript_bx, .-n985_subscript_bx
                        .type            n986_deref_bx, @function
n986_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n986_deref_α:           mov              r11, 410
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
                        cmp              al, 104;                             je    n994_unmark_α
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n987_var_ref_α
                        .size            n986_deref_bx, .-n986_deref_bx
                        .type            n987_var_ref_bx, @function
n987_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n987_var_ref_α:         mov              r11, 411
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 928]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n988_var_α
                        .size            n987_var_ref_bx, .-n987_var_ref_bx
                        .type            n988_var_bx, @function
n988_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n988_var_α:             mov              r11, 412
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 376], rax;          jmp   n989_subscript_α
                        .size            n988_var_bx, .-n988_var_bx
                        .type            n989_subscript_bx, @function
n989_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n989_subscript_α:       mov              r11, 413
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
                        cmp              al, 104;                             je    n994_unmark_α
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n990_deref_α
                        .size            n989_subscript_bx, .-n989_subscript_bx
                        .type            n990_deref_bx, @function
n990_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n990_deref_α:           mov              r11, 414
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
                        cmp              al, 104;                             je    n994_unmark_α
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n991_lit_integer_α
                        .size            n990_deref_bx, .-n990_deref_bx
                        .type            n991_lit_integer_bx, @function
n991_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n991_lit_integer_α:     mov              r11, 415
                        mov              qword ptr [rsp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1038_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n992_call_icon_α
.Llit_integer_α_1038_0: .quad            8
                        .size            n991_lit_integer_bx, .-n991_lit_integer_bx
                        .type            n992_call_icon_bx, @function
n992_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n992_call_icon_α:       mov              r11, 416
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 312], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1040: .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1040]
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
                        cmp              al, 104;                             je    n994_unmark_α
                                                                              jmp   n993_call_icon_α
n992_call_icon_β:       mov              r11, 416;                            jmp   n994_unmark_α
                        .size            n992_call_icon_bx, .-n992_call_icon_bx
                        .type            n993_call_icon_bx, @function
n993_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n993_call_icon_α:       mov              r11, 417
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 184], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1042: .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1042]
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
                        cmp              al, 104;                             je    n994_unmark_α
                                                                              jmp   n994_unmark_α
n993_call_icon_β:       mov              r11, 417;                            jmp   n994_unmark_α
                        .size            n993_call_icon_bx, .-n993_call_icon_bx
                        .type            n994_unmark_bx, @function
n994_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n994_unmark_α:          mov              r11, 418
                        mov              rsp, qword ptr [rsp + 112];          jmp   n980_to_β
                        .size            n994_unmark_bx, .-n994_unmark_bx
                        .type            n995_return_bx, @function
n995_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n995_return_α:          mov              r11, 419
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   Storage___γ
                        .size            n995_return_bx, .-n995_return_bx
                        .type            n996_var_ref_bx, @function
n996_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n996_var_ref_α:         mov              r11, 420
                        mov              rax, 4294967336
                        mov              rdx, 1879052576                      # Storage____INITFLAG__0
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx;          jmp   n997_nulltest_var_α
n996_var_ref_β:         mov              r11, 420;                            jmp   .Ldisjunction_ω_969_af
                        .size            n996_var_ref_bx, .-n996_var_ref_bx
                        .type            n997_nulltest_var_bx, @function
n997_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n997_nulltest_var_α:    mov              r11, 421
                        mov              eax, dword ptr [rsp + 848]
                        cmp              al, 104;                             je    .Ldisjunction_ω_969_af
                        mov              rdi, qword ptr [rsp + 848]
                        mov              rsi, qword ptr [rsp + 856]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_969_af
                        cmp              eax, 0;                              jne   .Ldisjunction_ω_969_af
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 872], rax;          jmp   n998_lit_integer_α
                        .size            n997_nulltest_var_bx, .-n997_nulltest_var_bx
                        .type            n998_lit_integer_bx, @function
n998_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n998_lit_integer_α:     mov              r11, 422
                        mov              qword ptr [rsp + 896], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1049_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n999_assign_var_α
.Llit_integer_α_1049_0: .quad            1
                        .size            n998_lit_integer_bx, .-n998_lit_integer_bx
                        .type            n999_assign_var_bx, @function
n999_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n999_assign_var_α:      mov              r11, 423
                        mov              rdi, qword ptr [rsp + 864]
                        mov              rsi, qword ptr [rsp + 872]
                        mov              rdx, qword ptr [rsp + 896]
                        mov              rcx, qword ptr [rsp + 904]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_969_af
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n1000_lit_string_α
                        .size            n999_assign_var_bx, .-n999_assign_var_bx
                        .type            n1000_lit_string_bx, @function
n1000_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1000_lit_string_α:     mov              r11, 424
                        mov              qword ptr [rsp + 752], 2             # result
                        mov              dword ptr [rsp + 756], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_1051_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n1001_lit_string_α
.Llit_string_α_1051_0:  .quad            .Llit_string_α_1051_0_s
.Llit_string_α_1051_0_s:
                        .string          "static"
                        .size            n1000_lit_string_bx, .-n1000_lit_string_bx
                        .type            n1001_lit_string_bx, @function
n1001_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1001_lit_string_α:     mov              r11, 425
                        mov              qword ptr [rsp + 784], 2             # result
                        mov              dword ptr [rsp + 788], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_1052_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n1002_lit_string_α
.Llit_string_α_1052_0:  .quad            .Llit_string_α_1052_0_s
.Llit_string_α_1052_0_s:
                        .string          "string"
                        .size            n1001_lit_string_bx, .-n1001_lit_string_bx
                        .type            n1002_lit_string_bx, @function
n1002_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1002_lit_string_α:     mov              r11, 426
                        mov              qword ptr [rsp + 816], 2             # result
                        mov              dword ptr [rsp + 820], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_1053_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n1003_make_list_α
.Llit_string_α_1053_0:  .quad            .Llit_string_α_1053_0_s
.Llit_string_α_1053_0_s:
                        .string          "block"
                        .size            n1002_lit_string_bx, .-n1002_lit_string_bx
                        .type            n1003_make_list_bx, @function
n1003_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1003_make_list_α:      mov              r11, 427
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 712], rax
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 728], rax
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 744], rax
                        lea              rdi, [rsp + 704]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx;          jmp   n1004_assign_α
                        .size            n1003_make_list_bx, .-n1003_make_list_bx
                        .type            n1004_assign_bx, @function
n1004_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1004_assign_α:         mov              r11, 428
                        mov              rax, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
                        mov              qword ptr [r9 + 272], rax            # Storage____STATIC__labels
                        mov              qword ptr [r9 + 280], rdx
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   .Ldisjunction_γ_969_as
n1004_assign_β:         mov              r11, 428;                            jmp   n970_make_list_α
                        .size            n1004_assign_bx, .-n1004_assign_bx
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
                        add              rsp, 1008;                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
Storage___ω:
                        add              rsp, 1008;                           jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
Storage___dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .LStorage___α_1057_3]
                        push             rcx
                        lea              rcx, [rip + .LStorage___α_1057_2]
                        push             rcx;                                 jmp   FN__Storage__
.LStorage___α_1057_2:   add              rsp, 24
                        pop              r12;                                 jmp   r12
.LStorage___α_1057_3:   add              rsp, 24
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
                        .type            n1058_disjunction_bx, @function
n1058_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1058_disjunction_α:    mov              r11, 429
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              dword ptr [rsp + 128], 0;            jmp   n1065_var_ref_α
.Ldisjunction_γ_1058_as:
                        mov              r11, 429
                        mov              eax, dword ptr [rsp + 128]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_1072_0
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 120], rax;          jmp   n1059_kw_icon_α
.Ldisjunction_α_1072_0:                                                       jmp   n1059_kw_icon_α
n1058_disjunction_β:    mov              r11, 429
                        mov              eax, dword ptr [rsp + 128];          jmp   n1059_kw_icon_α
.Ldisjunction_γ_1058_af:
                        mov              r11, 429
.Ldisjunction_ω_1058_af:
                        mov              r11, 429
                        add              dword ptr [rsp + 128], 1
                        mov              eax, dword ptr [rsp + 128];          jmp   n1059_kw_icon_α
                        .size            n1058_disjunction_bx, .-n1058_disjunction_bx
                        .type            n1059_kw_icon_bx, @function
n1059_kw_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1059_kw_icon_α:        mov              r11, 430
                        mov              rdi, qword ptr [rip + .Lkw_icon_α_1073_0]
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
                        mov              qword ptr [rsp + 72], rdx;           jmp   n1060_var_α
n1059_kw_icon_β:        mov              r11, 430;                            jmp   Time___ω
.Lkw_icon_α_1073_0:     .quad            .Lkw_icon_α_1073_0_s
.Lkw_icon_α_1073_0_s:   .string          "&time"
                        .size            n1059_kw_icon_bx, .-n1059_kw_icon_bx
                        .type            n1060_var_bx, @function
n1060_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1060_var_α:            mov              r11, 431
                        mov              rax, qword ptr [r9 + 304]            # Time____STATIC__lasttime
                        mov              rdx, qword ptr [r9 + 312]
                        mov              qword ptr [rsp + 96], rax            # result
                        mov              qword ptr [rsp + 104], rdx;          jmp   n1061_coerce_numeric_α
                        .size            n1060_var_bx, .-n1060_var_bx
                        .type            n1061_coerce_numeric_bx, @function
n1061_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1061_coerce_numeric_α: mov              r11, 432
                        mov              eax, dword ptr [rsp + 64]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_1076_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_1076_0
                        mov              eax, dword ptr [rsp + 96]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_1076_0
.Lcoerce_numeric_α_1076_1:
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 56], rax;           jmp   n1062_coerce_numeric_α
.Lcoerce_numeric_α_1076_0:
                        lea              rdi, [rsp + 64]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1062_coerce_numeric_α
                        .size            n1061_coerce_numeric_bx, .-n1061_coerce_numeric_bx
                        .type            n1062_coerce_numeric_bx, @function
n1062_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1062_coerce_numeric_α: mov              r11, 433
                        mov              eax, dword ptr [rsp + 96]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_1078_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_1078_0
                        mov              eax, dword ptr [rsp + 64]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_1078_0
.Lcoerce_numeric_α_1078_1:
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 40], rax;           jmp   n1063_binop_α
.Lcoerce_numeric_α_1078_0:
                        lea              rdi, [rsp + 96]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1063_binop_α
                        .size            n1062_coerce_numeric_bx, .-n1062_coerce_numeric_bx
                        .type            n1063_binop_bx, @function
n1063_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1063_binop_α:          mov              r11, 434
                        mov              eax, dword ptr [rsp + 48]
                        mov              ecx, dword ptr [rsp + 32]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_1079_2
                        mov              rax, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 40]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 16], 3
                        mov              qword ptr [rsp + 24], rax;           jmp   .Lbinop_α_1079_7
.Lbinop_α_1079_2:       and              edx, 1;                              jz    .Lbinop_α_1079_0
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdi, qword ptr [rsp + 40]
                        cmp              al, 5;                               je    .Lbinop_α_1079_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_1079_4
.Lbinop_α_1079_3:       movq             xmm0, rsi
.Lbinop_α_1079_4:       cmp              cl, 5;                               je    .Lbinop_α_1079_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_1079_6
.Lbinop_α_1079_5:       movq             xmm1, rdi
.Lbinop_α_1079_6:       subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 16], 5
                        mov              qword ptr [rsp + 24], rax
.Lbinop_α_1079_7:                                                             jmp   n1064_return_α
.Lbinop_α_1079_0:       mov              rdi, qword ptr [rsp + 48]
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
                        mov              qword ptr [rsp + 24], rdx;           jmp   n1064_return_α
                        .size            n1063_binop_bx, .-n1063_binop_bx
                        .type            n1064_return_bx, @function
n1064_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1064_return_α:         mov              r11, 435
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   Time___γ
                        .size            n1064_return_bx, .-n1064_return_bx
                        .type            n1065_var_ref_bx, @function
n1065_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1065_var_ref_α:        mov              r11, 436
                        mov              rax, 4294967336
                        mov              rdx, 1879052608                      # Time____INITFLAG__0
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n1066_nulltest_var_α
n1065_var_ref_β:        mov              r11, 436;                            jmp   .Ldisjunction_ω_1058_af
                        .size            n1065_var_ref_bx, .-n1065_var_ref_bx
                        .type            n1066_nulltest_var_bx, @function
n1066_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1066_nulltest_var_α:   mov              r11, 437
                        mov              eax, dword ptr [rsp + 192]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1058_af
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_1058_af
                        cmp              eax, 0;                              jne   .Ldisjunction_ω_1058_af
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 216], rax;          jmp   n1067_lit_integer_α
                        .size            n1066_nulltest_var_bx, .-n1066_nulltest_var_bx
                        .type            n1067_lit_integer_bx, @function
n1067_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1067_lit_integer_α:    mov              r11, 438
                        mov              qword ptr [rsp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1084_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n1068_assign_var_α
.Llit_integer_α_1084_0: .quad            1
                        .size            n1067_lit_integer_bx, .-n1067_lit_integer_bx
                        .type            n1068_assign_var_bx, @function
n1068_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1068_assign_var_α:     mov              r11, 439
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_1058_af
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n1069_kw_icon_α
                        .size            n1068_assign_var_bx, .-n1068_assign_var_bx
                        .type            n1069_kw_icon_bx, @function
n1069_kw_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1069_kw_icon_α:        mov              r11, 440
                        mov              rdi, qword ptr [rip + .Lkw_icon_α_1086_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n1059_kw_icon_α
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx;          jmp   n1070_assign_α
n1069_kw_icon_β:        mov              r11, 440;                            jmp   n1059_kw_icon_α
.Lkw_icon_α_1086_0:     .quad            .Lkw_icon_α_1086_0_s
.Lkw_icon_α_1086_0_s:   .string          "&time"
                        .size            n1069_kw_icon_bx, .-n1069_kw_icon_bx
                        .type            n1070_assign_bx, @function
n1070_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1070_assign_α:         mov              r11, 441
                        mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              qword ptr [r9 + 304], rax            # Time____STATIC__lasttime
                        mov              qword ptr [r9 + 312], rdx
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx;          jmp   .Ldisjunction_γ_1058_as
n1070_assign_β:         mov              r11, 441;                            jmp   n1059_kw_icon_α
                        .size            n1070_assign_bx, .-n1070_assign_bx
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
                        lea              rcx, [rip + .LTime___α_1088_3]
                        push             rcx
                        lea              rcx, [rip + .LTime___α_1088_2]
                        push             rcx;                                 jmp   FN__Time__
.LTime___α_1088_2:      add              rsp, 24
                        pop              r12;                                 jmp   r12
.LTime___α_1088_3:      add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
                        .globl           main
main:
                        sub              rsp, 65544
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
                        xor              r14d, r14d
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
                        sub              rsp, 880
                        mov              rdi, rsp
                        add              rdi, 768
                        xor              eax, eax
                        mov              ecx, 16
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 2
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
                        .type            n1089_call_proc_staged_bx, @function
n1089_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1089_call_proc_staged_α:
                        mov              r11, 442
                        mov              edi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det0@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_1118_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_1118_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1118_3]
                        push             rcx;                                 jmp   rax
.Lcall_proc_staged_α_1118_3:
                        add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_1118_2
.Lcall_proc_staged_α_1118_4:
                        add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_1118_2
.Lcall_proc_staged_α_1118_1:
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_1118_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1118_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 736]
                        mov              rdx, qword ptr [rsp + 744]
.Lcall_proc_staged_α_1118_29:
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                        cmp              al, 104;                             je    n1090_var_α
                                                                              jmp   n1090_var_α
n1089_call_proc_staged_β:
                        mov              r11, 442;                            jmp   n1090_var_α
.Lcall_proc_staged_β_1118_0:
                        .quad            .Lcall_proc_staged_β_1118_0_s
.Lcall_proc_staged_β_1118_0_s:
                        .string          "Init__"
                        .size            n1089_call_proc_staged_bx, .-n1089_call_proc_staged_bx
                        .type            n1090_var_bx, @function
n1090_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1090_var_α:            mov              r11, 443
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 696], rax;          jmp   n1091_lit_string_α
                        .size            n1090_var_bx, .-n1090_var_bx
                        .type            n1091_lit_string_bx, @function
n1091_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1091_lit_string_α:     mov              r11, 444
                        mov              qword ptr [rsp + 704], 2             # result
                        mov              dword ptr [rsp + 708], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_1121_0]
                        mov              qword ptr [rsp + 712], rax;          jmp   n1092_call_proc_staged_α
.Llit_string_α_1121_0:  .quad            .Llit_string_α_1121_0_s
.Llit_string_α_1121_0_s:
                        .string          "n+"
                        .size            n1091_lit_string_bx, .-n1091_lit_string_bx
                        .type            n1092_call_proc_staged_bx, @function
n1092_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1092_call_proc_staged_α:
                        mov              r11, 445
                        lea              rsi, [rsp + 688]
                        lea              rdx, [rsp + 704]
                        call             options_dcα;                         jmp   .Lcall_proc_staged_α_1123_2
.Lcall_proc_staged_α_1123_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1123_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
.Lcall_proc_staged_α_1123_29:
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        cmp              al, 104;                             je    n1094_disjunction_α
                                                                              jmp   n1093_assign_α
n1092_call_proc_staged_β:
                        mov              r11, 445;                            jmp   n1094_disjunction_α
.Lcall_proc_staged_β_1123_0:
                        .quad            .Lcall_proc_staged_β_1123_0_s
.Lcall_proc_staged_β_1123_0_s:
                        .string          "options"
                        .size            n1092_call_proc_staged_bx, .-n1092_call_proc_staged_bx
                        .type            n1093_assign_bx, @function
n1093_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1093_assign_α:         mov              r11, 446
                        mov              rax, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx;          jmp   n1094_disjunction_α
                        .size            n1093_assign_bx, .-n1093_assign_bx
                        .type            n1094_disjunction_bx, @function
n1094_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1094_disjunction_α:    mov              r11, 447
                        mov              qword ptr [rsp + 480], 0
                        mov              qword ptr [rsp + 488], 0
                        mov              dword ptr [rsp + 496], 0;            jmp   n1112_var_ref_α
.Ldisjunction_γ_1094_as:
                        mov              r11, 447
                        mov              eax, dword ptr [rsp + 496]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_1126_0
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 488], rax;          jmp   n1095_assign_α
.Ldisjunction_α_1126_0: cmp              eax, 1;                              jne   .Ldisjunction_α_1126_1
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 488], rax;          jmp   n1095_assign_α
.Ldisjunction_α_1126_1:                                                       jmp   n1095_assign_α
n1094_disjunction_β:    mov              r11, 447
                        mov              eax, dword ptr [rsp + 496]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_1094_af
                                                                              jmp   .Ldisjunction_ω_1094_af
.Ldisjunction_γ_1094_af:
                        mov              r11, 447
.Ldisjunction_ω_1094_af:
                        mov              r11, 447
                        add              dword ptr [rsp + 496], 1
                        mov              eax, dword ptr [rsp + 496]
                        cmp              eax, 1;                              je    n1111_lit_integer_α
                                                                              jmp   n1096_disjunction_α
                        .size            n1094_disjunction_bx, .-n1094_disjunction_bx
                        .type            n1095_assign_bx, @function
n1095_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1095_assign_α:         mov              r11, 448
                        mov              rax, qword ptr [rsp + 480]
                        mov              rdx, qword ptr [rsp + 488]
                        mov              qword ptr [r9 + 0], rax              # n
                        mov              qword ptr [r9 + 8], rdx;             jmp   n1096_disjunction_α
                        .size            n1095_assign_bx, .-n1095_assign_bx
                        .type            n1096_disjunction_bx, @function
n1096_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1096_disjunction_α:    mov              r11, 449
                        mov              qword ptr [rsp + 320], 0
                        mov              qword ptr [rsp + 328], 0
                        mov              dword ptr [rsp + 336], 0;            jmp   n1097_var_α
.Ldisjunction_γ_1096_as:
                        mov              r11, 449
                        mov              eax, dword ptr [rsp + 336]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_1129_0
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 328], rax;          jmp   n1102_var_α
.Ldisjunction_α_1129_0:                                                       jmp   n1102_var_α
n1096_disjunction_β:    mov              r11, 449
                        mov              eax, dword ptr [rsp + 336];          jmp   n1102_var_α
.Ldisjunction_γ_1096_af:
                        mov              r11, 449
.Ldisjunction_ω_1096_af:
                        mov              r11, 449
                        add              dword ptr [rsp + 336], 1
                        mov              eax, dword ptr [rsp + 336];          jmp   n1102_var_α
                        .size            n1096_disjunction_bx, .-n1096_disjunction_bx
                        .type            n1097_var_bx, @function
n1097_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1097_var_α:            mov              r11, 450
                        mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 448], rax           # result
                        mov              qword ptr [rsp + 456], rdx;          jmp   n1098_lit_integer_α
n1097_var_β:            mov              r11, 450;                            jmp   .Ldisjunction_ω_1096_af
                        .size            n1097_var_bx, .-n1097_var_bx
                        .type            n1098_lit_integer_bx, @function
n1098_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1098_lit_integer_α:    mov              r11, 451
                        mov              qword ptr [rsp + 464], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1131_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n1099_binop_test_α
.Llit_integer_α_1131_0: .quad            0
                        .size            n1098_lit_integer_bx, .-n1098_lit_integer_bx
                        .type            n1099_binop_test_bx, @function
n1099_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1099_binop_test_α:     mov              r11, 452
                        mov              eax, dword ptr [rsp + 448]
                        cmp              al, 112;                             je    .Lbinop_test_α_1132_0
                        mov              eax, dword ptr [rsp + 464]
                        cmp              al, 112;                             je    .Lbinop_test_α_1132_0
                        mov              eax, dword ptr [rsp + 448]
                        cmp              al, 3;                               jne   .Lbinop_test_α_1132_2
                        mov              eax, dword ptr [rsp + 464]
                        cmp              al, 3;                               jne   .Lbinop_test_α_1132_2
.Lbinop_test_α_1132_1:  mov              rax, qword ptr [rsp + 456]
                        mov              rcx, qword ptr [rsp + 472]
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_1096_af
                        mov              rcx, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 432], rcx
                        mov              rcx, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 440], rcx;          jmp   n1100_lit_string_α
.Lbinop_test_α_1132_0:  mov              rdi, qword ptr [rsp + 448]
                        mov              rsi, qword ptr [rsp + 456]
                        mov              rdx, qword ptr [rsp + 464]
                        mov              rcx, qword ptr [rsp + 472]
                        mov              r8d, 6
                        lea              r9, [rsp + 432]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lbinop_test_α_1132_1
                        cmp              eax, 1;                              je    .Ldisjunction_ω_1096_af
                                                                              jmp   n1100_lit_string_α
.Lbinop_test_α_1132_2:  mov              rdi, qword ptr [rsp + 448]
                        mov              rsi, qword ptr [rsp + 456]
                        mov              rdx, qword ptr [rsp + 464]
                        mov              rcx, qword ptr [rsp + 472]
                        mov              r8d, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    .Ldisjunction_ω_1096_af
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 440], rax;          jmp   n1100_lit_string_α
                        .size            n1099_binop_test_bx, .-n1099_binop_test_bx
                        .type            n1100_lit_string_bx, @function
n1100_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1100_lit_string_α:     mov              r11, 453
                        mov              qword ptr [rsp + 400], 2             # result
                        mov              dword ptr [rsp + 404], 37
                        mov              rax, qword ptr [rip + .Llit_string_α_1133_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n1101_call_icon_α
.Llit_string_α_1133_0:  .quad            .Llit_string_α_1133_0_s
.Llit_string_α_1133_0_s:
                        .string          "-n needs a positive numeric parameter"
                        .size            n1100_lit_string_bx, .-n1100_lit_string_bx
                        .type            n1101_call_icon_bx, @function
n1101_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1101_call_icon_α:      mov              r11, 454
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 376], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1135: .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1135]
                        lea              rsi, [rsp + 368]
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
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              al, 104;                             je    n1102_var_α
                                                                              jmp   .Ldisjunction_γ_1096_as
n1101_call_icon_β:      mov              r11, 454;                            jmp   n1102_var_α
                        .size            n1101_call_icon_bx, .-n1101_call_icon_bx
                        .type            n1102_var_bx, @function
n1102_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1102_var_α:            mov              r11, 455
                        mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 304], rax           # result
                        mov              qword ptr [rsp + 312], rdx;          jmp   n1103_call_icon_α
                        .size            n1102_var_bx, .-n1102_var_bx
                        .type            n1103_call_icon_bx, @function
n1103_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1103_call_icon_α:      mov              r11, 456
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 280], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1138: .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1138]
                        lea              rsi, [rsp + 272]
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
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              al, 104;                             je    n1105_var_α
                                                                              jmp   n1104_assign_α
n1103_call_icon_β:      mov              r11, 456;                            jmp   n1105_var_α
                        .size            n1103_call_icon_bx, .-n1103_call_icon_bx
                        .type            n1104_assign_bx, @function
n1104_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1104_assign_α:         mov              r11, 457
                        mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        mov              qword ptr [r9 + 16], rax             # solution
                        mov              qword ptr [r9 + 24], rdx;            jmp   n1105_var_α
                        .size            n1104_assign_bx, .-n1104_assign_bx
                        .type            n1105_var_bx, @function
n1105_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1105_var_α:            mov              r11, 458
                        mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 192], rax           # result
                        mov              qword ptr [rsp + 200], rdx;          jmp   n1106_lit_string_α
                        .size            n1105_var_bx, .-n1105_var_bx
                        .type            n1106_lit_string_bx, @function
n1106_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1106_lit_string_α:     mov              r11, 459
                        mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_1141_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n1107_call_icon_α
.Llit_string_α_1141_0:  .quad            .Llit_string_α_1141_0_s
.Llit_string_α_1141_0_s:
                        .string          "-Queens:"
                        .size            n1106_lit_string_bx, .-n1106_lit_string_bx
                        .type            n1107_call_icon_bx, @function
n1107_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1107_call_icon_α:      mov              r11, 460
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 168], rax
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 152], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1143: .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1143]
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
                        cmp              al, 104;                             je    n1108_lit_integer_α
                                                                              jmp   n1108_lit_integer_α
n1107_call_icon_β:      mov              r11, 460;                            jmp   n1108_lit_integer_α
                        .size            n1107_call_icon_bx, .-n1107_call_icon_bx
                        .type            n1108_lit_integer_bx, @function
n1108_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1108_lit_integer_α:    mov              r11, 461
                        mov              qword ptr [rsp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1144_0]
                        mov              qword ptr [rsp + 120], rax;          jmp   n1109_call_proc_staged_α
.Llit_integer_α_1144_0: .quad            1
                        .size            n1108_lit_integer_bx, .-n1108_lit_integer_bx
                        .type            n1109_call_proc_staged_bx, @function
n1109_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1109_call_proc_staged_α:
                        mov              r11, 462
                        lea              rsi, [rsp + 112]
                        call             q_dcα;                               jmp   .Lcall_proc_staged_α_1146_2
.Lcall_proc_staged_α_1146_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1146_29
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
.Lcall_proc_staged_α_1146_29:
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    n1110_call_proc_staged_α
                                                                              jmp   n1110_call_proc_staged_α
n1109_call_proc_staged_β:
                        mov              r11, 462;                            jmp   n1110_call_proc_staged_α
.Lcall_proc_staged_β_1146_0:
                        .quad            .Lcall_proc_staged_β_1146_0_s
.Lcall_proc_staged_β_1146_0_s:
                        .string          "q"
                        .size            n1109_call_proc_staged_bx, .-n1109_call_proc_staged_bx
                        .type            n1110_call_proc_staged_bx, @function
n1110_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1110_call_proc_staged_α:
                        mov              r11, 463
                        call             Term___dcα;                          jmp   .Lcall_proc_staged_α_1148_2
.Lcall_proc_staged_α_1148_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1148_29
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
.Lcall_proc_staged_α_1148_29:
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   main_ω
n1110_call_proc_staged_β:
                        mov              r11, 463;                            jmp   main_ω
.Lcall_proc_staged_β_1148_0:
                        .quad            .Lcall_proc_staged_β_1148_0_s
.Lcall_proc_staged_β_1148_0_s:
                        .string          "Term__"
                        .size            n1110_call_proc_staged_bx, .-n1110_call_proc_staged_bx
                        .type            n1111_lit_integer_bx, @function
n1111_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1111_lit_integer_α:    mov              r11, 464
                        mov              qword ptr [rsp + 608], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1149_0]
                        mov              qword ptr [rsp + 616], rax;          jmp   .Ldisjunction_γ_1094_as
n1111_lit_integer_β:    mov              r11, 464;                            jmp   .Ldisjunction_ω_1094_af
.Llit_integer_α_1149_0: .quad            6
                        .size            n1111_lit_integer_bx, .-n1111_lit_integer_bx
                        .type            n1112_var_ref_bx, @function
n1112_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1112_var_ref_α:        mov              r11, 465
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 768]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n1113_lit_string_α
n1112_var_ref_β:        mov              r11, 465;                            jmp   .Ldisjunction_ω_1094_af
                        .size            n1112_var_ref_bx, .-n1112_var_ref_bx
                        .type            n1113_lit_string_bx, @function
n1113_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1113_lit_string_α:     mov              r11, 466
                        mov              qword ptr [rsp + 544], 2             # result
                        mov              dword ptr [rsp + 548], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1152_0]
                        mov              qword ptr [rsp + 552], rax;          jmp   n1114_subscript_α
.Llit_string_α_1152_0:  .quad            .Llit_string_α_1152_0_s
.Llit_string_α_1152_0_s:
                        .string          "n"
                        .size            n1113_lit_string_bx, .-n1113_lit_string_bx
                        .type            n1114_subscript_bx, @function
n1114_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1114_subscript_α:      mov              r11, 467
                        mov              rdi, qword ptr [rsp + 528]
                        mov              rsi, qword ptr [rsp + 536]
                        mov              rdx, qword ptr [rsp + 544]
                        mov              rcx, qword ptr [rsp + 552]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1094_af
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx;          jmp   n1115_deref_α
                        .size            n1114_subscript_bx, .-n1114_subscript_bx
                        .type            n1115_deref_bx, @function
n1115_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1115_deref_α:          mov              r11, 468
                        mov              rdi, qword ptr [rsp + 576]
                        mov              rsi, qword ptr [rsp + 584]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1094_af
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx;          jmp   n1116_unop_test_α
                        .size            n1115_deref_bx, .-n1115_deref_bx
                        .type            n1116_unop_test_bx, @function
n1116_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1116_unop_test_α:      mov              r11, 469
                        mov              eax, dword ptr [rsp + 592]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1094_af
                        cmp              eax, 0;                              je    .Ldisjunction_ω_1094_af
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 520], rax;          jmp   .Ldisjunction_γ_1094_as
n1116_unop_test_β:      mov              r11, 469;                            jmp   .Ldisjunction_ω_1094_af
                        .size            n1116_unop_test_bx, .-n1116_unop_test_bx
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
                        .long            1376
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
                        .long            3024
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
                        .long            464
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
                        .long            512
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
                        .long            992
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
                        .long            944
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
                        .long            944
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
