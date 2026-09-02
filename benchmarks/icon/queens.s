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
                        mov              dword ptr [rsp + 1184], 0;           jmp   n00001_var_α
.Ldisjunction_γ_99_as:  mov              r11, 100
                        mov              eax, dword ptr [rsp + 1184]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_254_0
                        mov              rax, qword ptr [rsp + 1200]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 1208]
                        mov              qword ptr [rsp + 1176], rax;         jmp   n00002_conjunction_α
.Ldisjunction_α_254_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_254_1
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 1176], rax;         jmp   n00002_conjunction_α
.Ldisjunction_α_254_1:                                                        jmp   n00002_conjunction_α
n99_disjunction_β:      mov              r11, 100
                        mov              eax, dword ptr [rsp + 1184]
                        cmp              eax, 0;                              je    n00003_unmark_α
                                                                              jmp   n00003_unmark_α
.Ldisjunction_γ_99_af:  mov              r11, 100
.Ldisjunction_ω_99_af:  mov              r11, 100
                        add              dword ptr [rsp + 1184], 1
                        mov              eax, dword ptr [rsp + 1184]
                        cmp              eax, 1;                              je    n00004_var_α
                                                                              jmp   n00003_unmark_α
                        .size            n99_disjunction_bx, .-n99_disjunction_bx
                        .type            n00002_conjunction_bx, @function
n00002_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00002_conjunction_α:     mov              r11, 101
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n00003_unmark_α
n00002_conjunction_β:     mov              r11, 101;                            jmp   n00003_unmark_α
                        .size            n00002_conjunction_bx, .-n00002_conjunction_bx
                        .type            n00004_var_bx, @function
n00004_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00004_var_α:             mov              r11, 102
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1360], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1368], rax;         jmp   n00005_lit_integer_α
n00004_var_β:             mov              r11, 102;                            jmp   n00003_unmark_α
                        .size            n00004_var_bx, .-n00004_var_bx
                        .type            n00005_lit_integer_bx, @function
n00005_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00005_lit_integer_α:     mov              r11, 103
                        mov              qword ptr [rsp + 1376], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_258_0]
                        mov              qword ptr [rsp + 1384], rax;         jmp   n00006_coerce_numeric_α
.Llit_integer_α_258_0:  .quad            1
                        .size            n00005_lit_integer_bx, .-n00005_lit_integer_bx
                        .type            n00006_coerce_numeric_bx, @function
n00006_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00006_coerce_numeric_α:  mov              r11, 104
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_260_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_260_0
                        mov              eax, dword ptr [rsp + 1376]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_260_0
.Lcoerce_numeric_α_260_1:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n00007_binop_α
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00007_binop_α
                        .size            n00006_coerce_numeric_bx, .-n00006_coerce_numeric_bx
                        .type            n00007_binop_bx, @function
n00007_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00007_binop_α:           mov              r11, 105
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
.Lbinop_α_261_7:                                                              jmp   n00008_call_proc_staged_α
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
                        cmp              al, 104;                             je    n00003_unmark_α
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx;         jmp   n00008_call_proc_staged_α
                        .size            n00007_binop_bx, .-n00007_binop_bx
                        .type            n00008_call_proc_staged_bx, @function
n00008_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00008_call_proc_staged_α:
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
                        cmp              al, 104;                             je    n00003_unmark_α
                                                                              jmp   .Ldisjunction_γ_99_as
n00008_call_proc_staged_β:
                        mov              r11, 106;                            jmp   n00003_unmark_α
.Lcall_proc_staged_β_263_0:
                        .quad            .Lcall_proc_staged_β_263_0_s
.Lcall_proc_staged_β_263_0_s:
                        .string          "q"
                        .size            n00008_call_proc_staged_bx, .-n00008_call_proc_staged_bx
                        .type            n00001_var_bx, @function
n00001_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00001_var_α:             mov              r11, 107
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n00009_var_α
n00001_var_β:             mov              r11, 107;                            jmp   .Ldisjunction_ω_99_af
                        .size            n00001_var_bx, .-n00001_var_bx
                        .type            n00009_var_bx, @function
n00009_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00009_var_α:             mov              r11, 108
                        mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 1264], rax          # result
                        mov              qword ptr [rsp + 1272], rdx;         jmp   n00010_binop_test_α
                        .size            n00009_var_bx, .-n00009_var_bx
                        .type            n00010_binop_test_bx, @function
n00010_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00010_binop_test_α:      mov              r11, 109
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
                        mov              qword ptr [rsp + 1240], rcx;         jmp   n00011_call_proc_staged_α
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
                                                                              jmp   n00011_call_proc_staged_α
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
                        mov              qword ptr [rsp + 1240], rax;         jmp   n00011_call_proc_staged_α
                        .size            n00010_binop_test_bx, .-n00010_binop_test_bx
                        .type            n00011_call_proc_staged_bx, @function
n00011_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00011_call_proc_staged_α:
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
                        cmp              al, 104;                             je    n00003_unmark_α
                                                                              jmp   .Ldisjunction_γ_99_as
n00011_call_proc_staged_β:
                        mov              r11, 110;                            jmp   n00003_unmark_α
.Lcall_proc_staged_β_269_0:
                        .quad            .Lcall_proc_staged_β_269_0_s
.Lcall_proc_staged_β_269_0_s:
                        .string          "show"
                        .size            n00011_call_proc_staged_bx, .-n00011_call_proc_staged_bx
                        .type            n00003_unmark_bx, @function
n00003_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00003_unmark_α:          mov              r11, 111
                        mov              rsp, qword ptr [rsp + 1104];         jmp   n91_rev_assign_var_β
                        .size            n00003_unmark_bx, .-n00003_unmark_bx
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
                        push             rax
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rax
                        add              rsp, 2192;                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
q_ω:
                        push             rax
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rax
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
                        .type            n00012_disjunction_bx, @function
n00012_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00012_disjunction_α:     mov              r11, 112
                        mov              qword ptr [rsp + 896], 0
                        mov              qword ptr [rsp + 904], 0
                        mov              dword ptr [rsp + 912], 0;            jmp   n00013_var_ref_α
.Ldisjunction_γ_273_as: mov              r11, 112
                        mov              eax, dword ptr [rsp + 912]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_329_0
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 904], rax;          jmp   n00014_lit_string_α
.Ldisjunction_α_329_0:                                                        jmp   n00014_lit_string_α
n00012_disjunction_β:     mov              r11, 112
                        mov              eax, dword ptr [rsp + 912];          jmp   n00014_lit_string_α
.Ldisjunction_γ_273_af: mov              r11, 112
.Ldisjunction_ω_273_af: mov              r11, 112
                        add              dword ptr [rsp + 912], 1
                        mov              eax, dword ptr [rsp + 912];          jmp   n00014_lit_string_α
                        .size            n00012_disjunction_bx, .-n00012_disjunction_bx
                        .type            n00013_var_ref_bx, @function
n00013_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00013_var_ref_α:         mov              r11, 113
                        mov              rax, 4294967336
                        mov              rdx, 1879052480                      # show__INITFLAG__0
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx;         jmp   n00015_nulltest_var_α
n00013_var_ref_β:         mov              r11, 113;                            jmp   .Ldisjunction_ω_273_af
                        .size            n00013_var_ref_bx, .-n00013_var_ref_bx
                        .type            n00015_nulltest_var_bx, @function
n00015_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00015_nulltest_var_α:    mov              r11, 114
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
                        mov              qword ptr [rsp + 1336], rax;         jmp   n00016_lit_integer_α
                        .size            n00015_nulltest_var_bx, .-n00015_nulltest_var_bx
                        .type            n00016_lit_integer_bx, @function
n00016_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00016_lit_integer_α:     mov              r11, 115
                        mov              qword ptr [rsp + 1360], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_333_0]
                        mov              qword ptr [rsp + 1368], rax;         jmp   n00017_assign_var_α
.Llit_integer_α_333_0:  .quad            1
                        .size            n00016_lit_integer_bx, .-n00016_lit_integer_bx
                        .type            n00017_assign_var_bx, @function
n00017_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00017_assign_var_α:      mov              r11, 116
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
                        mov              qword ptr [rsp + 1352], rdx;         jmp   n00018_lit_integer_α
                        .size            n00017_assign_var_bx, .-n00017_assign_var_bx
                        .type            n00018_lit_integer_bx, @function
n00018_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00018_lit_integer_α:     mov              r11, 117
                        mov              qword ptr [rsp + 1296], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_335_0]
                        mov              qword ptr [rsp + 1304], rax;         jmp   n00019_assign_α
.Llit_integer_α_335_0:  .quad            0
                        .size            n00018_lit_integer_bx, .-n00018_lit_integer_bx
                        .type            n00019_assign_bx, @function
n00019_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00019_assign_α:          mov              r11, 118
                        mov              rax, qword ptr [rsp + 1296]
                        mov              rdx, qword ptr [rsp + 1304]
                        mov              qword ptr [r9 + 144], rax            # show__STATIC__count
                        mov              qword ptr [r9 + 152], rdx;           jmp   n00020_lit_string_α
                        .size            n00019_assign_bx, .-n00019_assign_bx
                        .type            n00020_lit_string_bx, @function
n00020_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00020_lit_string_α:      mov              r11, 119
                        mov              qword ptr [rsp + 1216], 2            # result
                        mov              dword ptr [rsp + 1220], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_337_0]
                        mov              qword ptr [rsp + 1224], rax;         jmp   n00021_var_α
.Llit_string_α_337_0:   .quad            .Llit_string_α_337_0_s
.Llit_string_α_337_0_s: .string          "|   "
                        .size            n00020_lit_string_bx, .-n00020_lit_string_bx
                        .type            n00021_var_bx, @function
n00021_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00021_var_α:             mov              r11, 120
                        mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 1248], rax          # result
                        mov              qword ptr [rsp + 1256], rdx;         jmp   n00022_call_icon_α
                        .size            n00021_var_bx, .-n00021_var_bx
                        .type            n00022_call_icon_bx, @function
n00022_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00022_call_icon_α:       mov              r11, 121
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
                        cmp              al, 104;                             je    n00023_lit_string_α
                                                                              jmp   n00024_lit_string_α
n00022_call_icon_β:       mov              r11, 121;                            jmp   n00023_lit_string_α
                        .size            n00022_call_icon_bx, .-n00022_call_icon_bx
                        .type            n00024_lit_string_bx, @function
n00024_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00024_lit_string_α:      mov              r11, 122
                        mov              qword ptr [rsp + 1264], 2            # result
                        mov              dword ptr [rsp + 1268], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_341_0]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n00025_binop_α
.Llit_string_α_341_0:   .quad            .Llit_string_α_341_0_s
.Llit_string_α_341_0_s: .string          "|"
                        .size            n00024_lit_string_bx, .-n00024_lit_string_bx
                        .type            n00025_binop_bx, @function
n00025_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00025_binop_α:           mov              r11, 123
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00026_assign_α
                        .size            n00025_binop_bx, .-n00025_binop_bx
                        .type            n00026_assign_bx, @function
n00026_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00026_assign_α:          mov              r11, 124
                        mov              rax, qword ptr [rsp + 1136]
                        mov              rdx, qword ptr [rsp + 1144]
                        mov              qword ptr [r9 + 160], rax            # show__STATIC__line
                        mov              qword ptr [r9 + 168], rdx;           jmp   n00023_lit_string_α
                        .size            n00026_assign_bx, .-n00026_assign_bx
                        .type            n00023_lit_string_bx, @function
n00023_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00023_lit_string_α:      mov              r11, 125
                        mov              qword ptr [rsp + 1040], 2            # result
                        mov              dword ptr [rsp + 1044], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_344_0]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n00027_var_α
.Llit_string_α_344_0:   .quad            .Llit_string_α_344_0_s
.Llit_string_α_344_0_s: .string          "----"
                        .size            n00023_lit_string_bx, .-n00023_lit_string_bx
                        .type            n00027_var_bx, @function
n00027_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00027_var_α:             mov              r11, 126
                        mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 1072], rax          # result
                        mov              qword ptr [rsp + 1080], rdx;         jmp   n00028_call_icon_α
                        .size            n00027_var_bx, .-n00027_var_bx
                        .type            n00028_call_icon_bx, @function
n00028_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00028_call_icon_α:       mov              r11, 127
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
                        cmp              al, 104;                             je    n00014_lit_string_α
                                                                              jmp   n00029_lit_string_α
n00028_call_icon_β:       mov              r11, 127;                            jmp   n00014_lit_string_α
                        .size            n00028_call_icon_bx, .-n00028_call_icon_bx
                        .type            n00029_lit_string_bx, @function
n00029_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00029_lit_string_α:      mov              r11, 128
                        mov              qword ptr [rsp + 1088], 2            # result
                        mov              dword ptr [rsp + 1092], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_348_0]
                        mov              qword ptr [rsp + 1096], rax;         jmp   n00030_binop_α
.Llit_string_α_348_0:   .quad            .Llit_string_α_348_0_s
.Llit_string_α_348_0_s: .string          "-"
                        .size            n00029_lit_string_bx, .-n00029_lit_string_bx
                        .type            n00030_binop_bx, @function
n00030_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00030_binop_α:           mov              r11, 129
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00031_assign_α
                        .size            n00030_binop_bx, .-n00030_binop_bx
                        .type            n00031_assign_bx, @function
n00031_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00031_assign_α:          mov              r11, 130
                        mov              rax, qword ptr [rsp + 960]
                        mov              rdx, qword ptr [rsp + 968]
                        mov              qword ptr [r9 + 176], rax            # show__STATIC__border
                        mov              qword ptr [r9 + 184], rdx
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx;          jmp   n00032_conjunction_α
                        .size            n00031_assign_bx, .-n00031_assign_bx
                        .type            n00032_conjunction_bx, @function
n00032_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00032_conjunction_α:     mov              r11, 131
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 936], rax;          jmp   .Ldisjunction_γ_273_as
n00032_conjunction_β:     mov              r11, 131;                            jmp   n00014_lit_string_α
                        .size            n00032_conjunction_bx, .-n00032_conjunction_bx
                        .type            n00014_lit_string_bx, @function
n00014_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00014_lit_string_α:      mov              r11, 132
                        mov              qword ptr [rsp + 784], 2             # result
                        mov              dword ptr [rsp + 788], 10
                        mov              rax, qword ptr [rip + .Llit_string_α_352_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n00033_var_α
.Llit_string_α_352_0:   .quad            .Llit_string_α_352_0_s
.Llit_string_α_352_0_s: .string          "solution: "
                        .size            n00014_lit_string_bx, .-n00014_lit_string_bx
                        .type            n00033_var_bx, @function
n00033_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00033_var_α:             mov              r11, 133
                        mov              rax, qword ptr [r9 + 144]            # show__STATIC__count
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 864], rax           # result
                        mov              qword ptr [rsp + 872], rdx;          jmp   n00034_lit_integer_α
                        .size            n00033_var_bx, .-n00033_var_bx
                        .type            n00034_lit_integer_bx, @function
n00034_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00034_lit_integer_α:     mov              r11, 134
                        mov              qword ptr [rsp + 880], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_354_0]
                        mov              qword ptr [rsp + 888], rax;          jmp   n00035_coerce_numeric_α
.Llit_integer_α_354_0:  .quad            1
                        .size            n00034_lit_integer_bx, .-n00034_lit_integer_bx
                        .type            n00035_coerce_numeric_bx, @function
n00035_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00035_coerce_numeric_α:  mov              r11, 135
                        mov              eax, dword ptr [rsp + 864]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_356_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_356_0
                        mov              eax, dword ptr [rsp + 880]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_356_0
.Lcoerce_numeric_α_356_1:
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 856], rax;          jmp   n00036_binop_α
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00036_binop_α
                        .size            n00035_coerce_numeric_bx, .-n00035_coerce_numeric_bx
                        .type            n00036_binop_bx, @function
n00036_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00036_binop_α:           mov              r11, 136
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
.Lbinop_α_357_7:                                                              jmp   n00037_assign_α
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
                        cmp              al, 104;                             je    n00038_lit_string_α
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx;          jmp   n00037_assign_α
                        .size            n00036_binop_bx, .-n00036_binop_bx
                        .type            n00037_assign_bx, @function
n00037_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00037_assign_α:          mov              r11, 137
                        mov              rax, qword ptr [rsp + 832]
                        mov              rdx, qword ptr [rsp + 840]
                        mov              qword ptr [r9 + 144], rax            # show__STATIC__count
                        mov              qword ptr [r9 + 152], rdx
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx;          jmp   n00039_call_icon_α
                        .size            n00037_assign_bx, .-n00037_assign_bx
                        .type            n00039_call_icon_bx, @function
n00039_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00039_call_icon_α:       mov              r11, 138
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
                        cmp              al, 104;                             je    n00038_lit_string_α
                                                                              jmp   n00038_lit_string_α
n00039_call_icon_β:       mov              r11, 138;                            jmp   n00038_lit_string_α
                        .size            n00039_call_icon_bx, .-n00039_call_icon_bx
                        .type            n00038_lit_string_bx, @function
n00038_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00038_lit_string_α:      mov              r11, 139
                        mov              qword ptr [rsp + 672], 2             # result
                        mov              dword ptr [rsp + 676], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_361_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n00040_var_α
.Llit_string_α_361_0:   .quad            .Llit_string_α_361_0_s
.Llit_string_α_361_0_s: .string          "  "
                        .size            n00038_lit_string_bx, .-n00038_lit_string_bx
                        .type            n00040_var_bx, @function
n00040_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00040_var_α:             mov              r11, 140
                        mov              rax, qword ptr [r9 + 176]            # show__STATIC__border
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 704], rax           # result
                        mov              qword ptr [rsp + 712], rdx;          jmp   n00041_call_icon_α
                        .size            n00040_var_bx, .-n00040_var_bx
                        .type            n00041_call_icon_bx, @function
n00041_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00041_call_icon_α:       mov              r11, 141
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
                        cmp              al, 104;                             je    n00042_var_ref_α
                                                                              jmp   n00042_var_ref_α
n00041_call_icon_β:       mov              r11, 141;                            jmp   n00042_var_ref_α
                        .size            n00041_call_icon_bx, .-n00041_call_icon_bx
                        .type            n00042_var_ref_bx, @function
n00042_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00042_var_ref_α:         mov              r11, 142
                        mov              rax, 4294967336
                        mov              rdx, 1879052448                      # show__STATIC__line
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx;           jmp   n00043_lit_integer_α
                        .size            n00042_var_ref_bx, .-n00042_var_ref_bx
                        .type            n00043_lit_integer_bx, @function
n00043_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00043_lit_integer_α:     mov              r11, 143
                        mov              qword ptr [rsp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_367_0]
                        mov              qword ptr [rsp + 120], rax;          jmp   n00044_var_α
.Llit_integer_α_367_0:  .quad            4
                        .size            n00043_lit_integer_bx, .-n00043_lit_integer_bx
                        .type            n00044_var_bx, @function
n00044_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00044_var_α:             mov              r11, 144
                        mov              rax, qword ptr [r9 + 16]             # solution
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 192], rax           # result
                        mov              qword ptr [rsp + 200], rdx;          jmp   n00045_iterate_α
                        .size            n00044_var_bx, .-n00044_var_bx
                        .type            n00045_iterate_bx, @function
n00045_iterate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00045_iterate_α:         mov              r11, 145
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
                        cmp              al, 104;                             je    n00046_call_icon_α
                                                                              jmp   n00047_lit_integer_α
n00045_iterate_β:         mov              r11, 145
                        inc              qword ptr [rsp + 176];               jmp   .Literate_α_370_0
                        .size            n00045_iterate_bx, .-n00045_iterate_bx
                        .type            n00047_lit_integer_bx, @function
n00047_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00047_lit_integer_α:     mov              r11, 146
                        mov              qword ptr [rsp + 208], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_371_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n00048_coerce_numeric_α
.Llit_integer_α_371_0:  .quad            1
                        .size            n00047_lit_integer_bx, .-n00047_lit_integer_bx
                        .type            n00048_coerce_numeric_bx, @function
n00048_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00048_coerce_numeric_α:  mov              r11, 147
                        mov              eax, dword ptr [rsp + 160]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_373_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_373_0
                        mov              eax, dword ptr [rsp + 208]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_373_0
.Lcoerce_numeric_α_373_1:
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 152], rax;          jmp   n00049_binop_α
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00049_binop_α
                        .size            n00048_coerce_numeric_bx, .-n00048_coerce_numeric_bx
                        .type            n00049_binop_bx, @function
n00049_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00049_binop_α:           mov              r11, 148
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
.Lbinop_α_374_7:                                                              jmp   n00050_coerce_numeric_α
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
                        cmp              al, 104;                             je    n00046_call_icon_α
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx;          jmp   n00050_coerce_numeric_α
                        .size            n00049_binop_bx, .-n00049_binop_bx
                        .type            n00050_coerce_numeric_bx, @function
n00050_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00050_coerce_numeric_α:  mov              r11, 149
                        mov              eax, dword ptr [rsp + 128]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_376_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_376_0
                        mov              eax, dword ptr [rsp + 112]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_376_0
.Lcoerce_numeric_α_376_1:
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 104], rax;          jmp   n00051_binop_α
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00051_binop_α
                        .size            n00050_coerce_numeric_bx, .-n00050_coerce_numeric_bx
                        .type            n00051_binop_bx, @function
n00051_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00051_binop_α:           mov              r11, 150
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
.Lbinop_α_377_7:                                                              jmp   n00052_lit_integer_α
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
                        cmp              al, 104;                             je    n00046_call_icon_α
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx;           jmp   n00052_lit_integer_α
                        .size            n00051_binop_bx, .-n00051_binop_bx
                        .type            n00052_lit_integer_bx, @function
n00052_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00052_lit_integer_α:     mov              r11, 151
                        mov              qword ptr [rsp + 224], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_378_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n00053_coerce_numeric_α
.Llit_integer_α_378_0:  .quad            3
                        .size            n00052_lit_integer_bx, .-n00052_lit_integer_bx
                        .type            n00053_coerce_numeric_bx, @function
n00053_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00053_coerce_numeric_α:  mov              r11, 152
                        mov              eax, dword ptr [rsp + 80]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_380_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_380_0
                        mov              eax, dword ptr [rsp + 224]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_380_0
.Lcoerce_numeric_α_380_1:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 72], rax;           jmp   n00054_binop_α
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00054_binop_α
                        .size            n00053_coerce_numeric_bx, .-n00053_coerce_numeric_bx
                        .type            n00054_binop_bx, @function
n00054_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00054_binop_α:           mov              r11, 153
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
.Lbinop_α_381_7:                                                              jmp   n00055_subscript_α
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
                        cmp              al, 104;                             je    n00046_call_icon_α
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx;           jmp   n00055_subscript_α
                        .size            n00054_binop_bx, .-n00054_binop_bx
                        .type            n00055_subscript_bx, @function
n00055_subscript_bx:
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
                        .size            n00055_subscript_bx, .-n00055_subscript_bx
                        .type            n00056_lit_string_bx, @function
n00056_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00056_lit_string_α:      mov              r11, 155
                        mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_383_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n00057_rev_assign_var_α
.Llit_string_α_383_0:   .quad            .Llit_string_α_383_0_s
.Llit_string_α_383_0_s: .string          "Q"
                        .size            n00056_lit_string_bx, .-n00056_lit_string_bx
                        .type            n00057_rev_assign_var_bx, @function
n00057_rev_assign_var_bx:
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
                        .size            n00057_rev_assign_var_bx, .-n00057_rev_assign_var_bx
                        .type            n00058_bound_bx, @function
n00058_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00058_bound_α:           mov              r11, 157
                        mov              qword ptr [rsp + 320], rsp;          jmp   n00059_lit_string_α
                        .size            n00058_bound_bx, .-n00058_bound_bx
                        .type            n00059_lit_string_bx, @function
n00059_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00059_lit_string_α:      mov              r11, 158
                        mov              qword ptr [rsp + 560], 2             # result
                        mov              dword ptr [rsp + 564], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_387_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n00060_var_α
.Llit_string_α_387_0:   .quad            .Llit_string_α_387_0_s
.Llit_string_α_387_0_s: .string          "  "
                        .size            n00059_lit_string_bx, .-n00059_lit_string_bx
                        .type            n00060_var_bx, @function
n00060_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00060_var_α:             mov              r11, 159
                        mov              rax, qword ptr [r9 + 160]            # show__STATIC__line
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 592], rax           # result
                        mov              qword ptr [rsp + 600], rdx;          jmp   n00061_call_icon_α
                        .size            n00060_var_bx, .-n00060_var_bx
                        .type            n00061_call_icon_bx, @function
n00061_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00061_call_icon_α:       mov              r11, 160
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
                        cmp              al, 104;                             je    n00062_lit_string_α
                                                                              jmp   n00062_lit_string_α
n00061_call_icon_β:       mov              r11, 160;                            jmp   n00062_lit_string_α
                        .size            n00061_call_icon_bx, .-n00061_call_icon_bx
                        .type            n00062_lit_string_bx, @function
n00062_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00062_lit_string_α:      mov              r11, 161
                        mov              qword ptr [rsp + 448], 2             # result
                        mov              dword ptr [rsp + 452], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_391_0]
                        mov              qword ptr [rsp + 456], rax;          jmp   n00063_var_α
.Llit_string_α_391_0:   .quad            .Llit_string_α_391_0_s
.Llit_string_α_391_0_s: .string          "  "
                        .size            n00062_lit_string_bx, .-n00062_lit_string_bx
                        .type            n00063_var_bx, @function
n00063_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00063_var_α:             mov              r11, 162
                        mov              rax, qword ptr [r9 + 176]            # show__STATIC__border
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 480], rax           # result
                        mov              qword ptr [rsp + 488], rdx;          jmp   n00064_call_icon_α
                        .size            n00063_var_bx, .-n00063_var_bx
                        .type            n00064_call_icon_bx, @function
n00064_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00064_call_icon_α:       mov              r11, 163
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
                        cmp              al, 104;                             je    n00065_unmark_α
                                                                              jmp   n00066_conjunction_α
n00064_call_icon_β:       mov              r11, 163;                            jmp   n00065_unmark_α
                        .size            n00064_call_icon_bx, .-n00064_call_icon_bx
                        .type            n00066_conjunction_bx, @function
n00066_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00066_conjunction_α:     mov              r11, 164
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 376], rax;          jmp   n00065_unmark_α
n00066_conjunction_β:     mov              r11, 164;                            jmp   n00065_unmark_α
                        .size            n00066_conjunction_bx, .-n00066_conjunction_bx
                        .type            n00065_unmark_bx, @function
n00065_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00065_unmark_α:          mov              r11, 165
                        mov              rsp, qword ptr [rsp + 320];          jmp   n00057_rev_assign_var_β
                        .size            n00065_unmark_bx, .-n00065_unmark_bx
                        .type            n00046_call_icon_bx, @function
n00046_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00046_call_icon_α:       mov              r11, 166
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
n00046_call_icon_β:       mov              r11, 166;                            jmp   show_ω
                        .size            n00046_call_icon_bx, .-n00046_call_icon_bx
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
                        push             rax
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rax
                        add              rsp, 1424;                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
show_ω:
                        push             rax
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rax
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
                        sub              rsp, 3344
                        mov              rdi, rsp
                        add              rdi, 2896
                        xor              eax, eax
                        mov              ecx, 144
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 14
                        call             rt_icn_zframe_args_install@PLT
options_α_body:
                        .type            n00067_var_ref_bx, @function
n00067_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00067_var_ref_α:         mov              r11, 167
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 2768], rax
                        mov              qword ptr [rsp + 2776], rdx;         jmp   n00068_nulltest_var_α
                        .size            n00067_var_ref_bx, .-n00067_var_ref_bx
                        .type            n00068_nulltest_var_bx, @function
n00068_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00068_nulltest_var_α:    mov              r11, 168
                        mov              eax, dword ptr [rsp + 2768]
                        cmp              al, 104;                             je    n00069_call_icon_α
                        mov              rdi, qword ptr [rsp + 2768]
                        mov              rsi, qword ptr [rsp + 2776]
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
                        mov              rax, qword ptr [rsp + 2768]
                        mov              qword ptr [rsp + 2784], rax
                        mov              rax, qword ptr [rsp + 2776]
                        mov              qword ptr [rsp + 2792], rax;         jmp   n00070_lit_charset_α
                        .size            n00068_nulltest_var_bx, .-n00068_nulltest_var_bx
                        .type            n00070_lit_charset_bx, @function
n00070_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00070_lit_charset_α:     mov              r11, 169
                        mov              qword ptr [rsp + 2864], 2            # result
                        mov              dword ptr [rsp + 2868], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_514_0]
                        mov              qword ptr [rsp + 2872], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_514_0]
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
                        pop              rax;                                 jmp   n00071_call_icon_α
.Llit_charset_α_514_0:  .quad            .Llit_charset_α_514_0_s
.Llit_charset_α_514_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
                        .size            n00070_lit_charset_bx, .-n00070_lit_charset_bx
                        .type            n00071_call_icon_bx, @function
n00071_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00071_call_icon_α:       mov              r11, 170
                        mov              rax, qword ptr [rsp + 2864]
                        mov              qword ptr [rsp + 2832], rax
                        mov              rax, qword ptr [rsp + 2872]
                        mov              qword ptr [rsp + 2840], rax
                        .section         .rodata
.Lcall_icon_α_rkfn516:  .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn516]
                        lea              rsi, [rsp + 2832]
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
                        mov              qword ptr [rsp + 2816], rax
                        mov              qword ptr [rsp + 2824], rdx
                        cmp              al, 104;                             je    n00069_call_icon_α
                                                                              jmp   n00072_assign_var_α
n00071_call_icon_β:       mov              r11, 170;                            jmp   n00069_call_icon_α
                        .size            n00071_call_icon_bx, .-n00071_call_icon_bx
                        .type            n00072_assign_var_bx, @function
n00072_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00072_assign_var_α:      mov              r11, 171
                        mov              rdi, qword ptr [rsp + 2784]
                        mov              rsi, qword ptr [rsp + 2792]
                        mov              rdx, qword ptr [rsp + 2816]
                        mov              rcx, qword ptr [rsp + 2824]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00069_call_icon_α
                        mov              qword ptr [rsp + 2800], rax
                        mov              qword ptr [rsp + 2808], rdx;         jmp   n00069_call_icon_α
                        .size            n00072_assign_var_bx, .-n00072_assign_var_bx
                        .type            n00069_call_icon_bx, @function
n00069_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00069_call_icon_α:       mov              r11, 172
                        .section         .rodata
.Lcall_icon_α_rkfn519:  .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn519]
                        lea              rsi, [rsp + 2752]
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
                        mov              qword ptr [rsp + 2736], rax
                        mov              qword ptr [rsp + 2744], rdx
                        cmp              al, 104;                             je    n00073_make_list_α
                                                                              jmp   n00074_assign_α
n00069_call_icon_β:       mov              r11, 172;                            jmp   n00073_make_list_α
                        .size            n00069_call_icon_bx, .-n00069_call_icon_bx
                        .type            n00074_assign_bx, @function
n00074_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00074_assign_α:          mov              r11, 173
                        mov              rax, qword ptr [rsp + 2736]
                        mov              rdx, qword ptr [rsp + 2744]
                        mov              qword ptr [rsp + 2896], rax
                        mov              qword ptr [rsp + 2904], rdx;         jmp   n00073_make_list_α
                        .size            n00074_assign_bx, .-n00074_assign_bx
                        .type            n00073_make_list_bx, @function
n00073_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00073_make_list_α:       mov              r11, 174
                        lea              rdi, [rsp + 2736]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2720], rax
                        mov              qword ptr [rsp + 2728], rdx;         jmp   n00075_assign_α
                        .size            n00073_make_list_bx, .-n00073_make_list_bx
                        .type            n00075_assign_bx, @function
n00075_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00075_assign_α:          mov              r11, 175
                        mov              rax, qword ptr [rsp + 2720]
                        mov              rdx, qword ptr [rsp + 2728]
                        mov              qword ptr [rsp + 2912], rax
                        mov              qword ptr [rsp + 2920], rdx;         jmp   n00076_var_α
                        .size            n00075_assign_bx, .-n00075_assign_bx
                        .type            n00076_var_bx, @function
n00076_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00076_var_α:             mov              r11, 176
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 296], rax;          jmp   n00077_call_icon_α
                        .size            n00076_var_bx, .-n00076_var_bx
                        .type            n00077_call_icon_bx, @function
n00077_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00077_call_icon_α:       mov              r11, 177
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 264], rax
                        .section         .rodata
.Lcall_icon_α_rkfn527:  .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn527]
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
                        cmp              al, 104;                             je    n00078_var_α
                                                                              jmp   n00079_assign_α
n00077_call_icon_β:       mov              r11, 177;                            jmp   n00078_var_α
                        .size            n00077_call_icon_bx, .-n00077_call_icon_bx
                        .type            n00079_assign_bx, @function
n00079_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00079_assign_α:          mov              r11, 178
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 2944], rax
                        mov              qword ptr [rsp + 2952], rdx;         jmp   n00080_var_α
                        .size            n00079_assign_bx, .-n00079_assign_bx
                        .type            n00080_var_bx, @function
n00080_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00080_var_α:             mov              r11, 179
                        mov              rax, qword ptr [rsp + 2944]
                        mov              qword ptr [rsp + 2704], rax
                        mov              rax, qword ptr [rsp + 2952]
                        mov              qword ptr [rsp + 2712], rax;         jmp   n00081_scan_enter_α
                        .size            n00080_var_bx, .-n00080_var_bx
                        .type            n00081_scan_enter_bx, @function
n00081_scan_enter_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00081_scan_enter_α:      mov              r11, 180
                        mov              qword ptr [rsp + 320], r13
                        mov              qword ptr [rsp + 328], r14
                        mov              qword ptr [rsp + 336], r15
                        mov              rdi, qword ptr [rsp + 2704]
                        mov              rsi, qword ptr [rsp + 2712]
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
                        .size            n00081_scan_enter_bx, .-n00081_scan_enter_bx
                        .type            n00082_disjunction_bx, @function
n00082_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00082_disjunction_α:     mov              r11, 181
                        mov              qword ptr [rsp + 384], 0
                        mov              qword ptr [rsp + 392], 0
                        mov              dword ptr [rsp + 400], 0;            jmp   n00083_lit_string_α
.Ldisjunction_γ_415_as: mov              r11, 181
                        mov              eax, dword ptr [rsp + 400]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_534_0
                        mov              rax, qword ptr [rsp + 2928]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 2936]
                        mov              qword ptr [rsp + 392], rax;          jmp   n00084_scan_α
.Ldisjunction_α_534_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_534_1
                        mov              rax, qword ptr [rsp + 2608]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 2616]
                        mov              qword ptr [rsp + 392], rax;          jmp   n00084_scan_α
.Ldisjunction_α_534_1:                                                        jmp   n00084_scan_α
n00082_disjunction_β:     mov              r11, 181
                        mov              eax, dword ptr [rsp + 400]
                        cmp              eax, 0;                              je    n00085_disjunction_β
                                                                              jmp   n00086_scan_α
.Ldisjunction_γ_415_af: mov              r11, 181
.Ldisjunction_ω_415_af: mov              r11, 181
                        add              dword ptr [rsp + 400], 1
                        mov              eax, dword ptr [rsp + 400]
                        cmp              eax, 1;                              je    n00087_var_α
                                                                              jmp   n00086_scan_α
                        .size            n00082_disjunction_bx, .-n00082_disjunction_bx
                        .type            n00084_scan_bx, @function
n00084_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00084_scan_α:            mov              r11, 182
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
                        mov              r15, qword ptr [rsp + 336];          jmp   n00076_var_α
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
                        .size            n00084_scan_bx, .-n00084_scan_bx
                        .type            n00088_conjunction_bx, @function
n00088_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00088_conjunction_α:     mov              r11, 183;                            jmp   .Ldisjunction_γ_415_as
n00088_conjunction_β:     mov              r11, 183;                            jmp   n00086_scan_α
                        .size            n00088_conjunction_bx, .-n00088_conjunction_bx
                        .type            n00087_var_bx, @function
n00087_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00087_var_α:             mov              r11, 184
                        mov              rax, qword ptr [rsp + 2912]
                        mov              qword ptr [rsp + 2672], rax
                        mov              rax, qword ptr [rsp + 2920]
                        mov              qword ptr [rsp + 2680], rax;         jmp   n00089_var_α
n00087_var_β:             mov              r11, 184;                            jmp   n00086_scan_α
                        .size            n00087_var_bx, .-n00087_var_bx
                        .type            n00089_var_bx, @function
n00089_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00089_var_α:             mov              r11, 185
                        mov              rax, qword ptr [rsp + 2944]
                        mov              qword ptr [rsp + 2688], rax
                        mov              rax, qword ptr [rsp + 2952]
                        mov              qword ptr [rsp + 2696], rax;         jmp   n00090_call_icon_α
                        .size            n00089_var_bx, .-n00089_var_bx
                        .type            n00090_call_icon_bx, @function
n00090_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00090_call_icon_α:       mov              r11, 186
                        mov              rax, qword ptr [rsp + 2688]
                        mov              qword ptr [rsp + 2640], rax
                        mov              rax, qword ptr [rsp + 2696]
                        mov              qword ptr [rsp + 2648], rax
                        mov              rax, qword ptr [rsp + 2672]
                        mov              qword ptr [rsp + 2624], rax
                        mov              rax, qword ptr [rsp + 2680]
                        mov              qword ptr [rsp + 2632], rax
                        .section         .rodata
.Lcall_icon_α_rkfn543:  .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn543]
                        lea              rsi, [rsp + 2624]
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
                        mov              qword ptr [rsp + 2608], rax
                        mov              qword ptr [rsp + 2616], rdx
                        cmp              al, 104;                             je    n00086_scan_α
                                                                              jmp   .Ldisjunction_γ_415_as
n00090_call_icon_β:       mov              r11, 186;                            jmp   n00086_scan_α
                        .size            n00090_call_icon_bx, .-n00090_call_icon_bx
                        .type            n00083_lit_string_bx, @function
n00083_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00083_lit_string_α:      mov              r11, 187
                        mov              qword ptr [rsp + 2576], 2            # result
                        mov              dword ptr [rsp + 2580], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_544_0]
                        mov              qword ptr [rsp + 2584], rax;         jmp   n00091_scan_match_α
n00083_lit_string_β:      mov              r11, 187;                            jmp   .Ldisjunction_ω_415_af
.Llit_string_α_544_0:   .quad            .Llit_string_α_544_0_s
.Llit_string_α_544_0_s: .string          "-"
                        .size            n00083_lit_string_bx, .-n00083_lit_string_bx
                        .type            n00091_scan_match_bx, @function
n00091_scan_match_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00091_scan_match_α:      mov              r11, 188
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    .Ldisjunction_ω_415_af
                        mov              rdi, qword ptr [rip + .Lscan_match_α_546_0]
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
                        mov              qword ptr [rsp + 2544], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rsp + 2552], rax;         jmp   n00092_scan_tab_α
.Lscan_match_α_546_0:   .quad            .Lscan_match_α_546_0_s
.Lscan_match_α_546_0_s: .string          "-"
                        .size            n00091_scan_match_bx, .-n00091_scan_match_bx
                        .type            n00092_scan_tab_bx, @function
n00092_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00092_scan_tab_α:        mov              r11, 189
                        mov              rax, qword ptr [rsp + 2552]
                        cmp              rax, 1;                              jge   .Lscan_tab_α_548_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_548_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_415_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_415_af
                        mov              qword ptr [rsp + 2528], r14
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
                        mov              qword ptr [rsp + 2512], rax
                        mov              qword ptr [rsp + 2520], rdx;         jmp   n00093_lit_integer_α
n00092_scan_tab_β:        mov              r11, 189
                        mov              r14, qword ptr [rsp + 2528];         jmp   .Ldisjunction_ω_415_af
                        .size            n00092_scan_tab_bx, .-n00092_scan_tab_bx
                        .type            n00093_lit_integer_bx, @function
n00093_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00093_lit_integer_α:     mov              r11, 190
                        mov              qword ptr [rsp + 2496], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_549_0]
                        mov              qword ptr [rsp + 2504], rax;         jmp   n00094_scan_pos_α
.Llit_integer_α_549_0:  .quad            0
                        .size            n00093_lit_integer_bx, .-n00093_lit_integer_bx
                        .type            n00094_scan_pos_bx, @function
n00094_scan_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00094_scan_pos_α:        mov              r11, 191
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_pos_α_551_0
                        add              rax, r15
                        add              rax, 1
.Lscan_pos_α_551_0:     cmp              rax, 1;                              jl    n00095_var_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00095_var_α
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n00095_var_α
                        mov              qword ptr [rsp + 2480], 3
                        mov              qword ptr [rsp + 2488], rax;         jmp   n00092_scan_tab_β
                        .size            n00094_scan_pos_bx, .-n00094_scan_pos_bx
                        .type            n00095_var_bx, @function
n00095_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00095_var_α:             mov              r11, 192
                        mov              qword ptr [rsp + 2464], 0
                        mov              qword ptr [rsp + 2472], 0;           jmp   n00096_conjunction_α
n00095_var_β:             mov              r11, 192;                            jmp   n00092_scan_tab_β
                        .size            n00095_var_bx, .-n00095_var_bx
                        .type            n00096_conjunction_bx, @function
n00096_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00096_conjunction_α:     mov              r11, 193
                        mov              rax, qword ptr [rsp + 2464]
                        mov              qword ptr [rsp + 2448], rax
                        mov              rax, qword ptr [rsp + 2472]
                        mov              qword ptr [rsp + 2456], rax;         jmp   n00097_disjunction_α
n00096_conjunction_β:     mov              r11, 193;                            jmp   .Ldisjunction_ω_415_af
                        .size            n00096_conjunction_bx, .-n00096_conjunction_bx
                        .type            n00097_disjunction_bx, @function
n00097_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00097_disjunction_α:     mov              r11, 194
                        mov              qword ptr [rsp + 2240], 0
                        mov              qword ptr [rsp + 2248], 0
                        mov              dword ptr [rsp + 2256], 0;           jmp   n00098_lit_string_α
.Ldisjunction_γ_428_as: mov              r11, 194
                        mov              eax, dword ptr [rsp + 2256]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_555_0
                        mov              rax, qword ptr [rsp + 2288]
                        mov              qword ptr [rsp + 2240], rax
                        mov              rax, qword ptr [rsp + 2296]
                        mov              qword ptr [rsp + 2248], rax;         jmp   n00099_lit_integer_α
.Ldisjunction_α_555_0:                                                        jmp   n00099_lit_integer_α
n00097_disjunction_β:     mov              r11, 194
                        mov              eax, dword ptr [rsp + 2256];         jmp   n00099_lit_integer_α
.Ldisjunction_γ_428_af: mov              r11, 194
.Ldisjunction_ω_428_af: mov              r11, 194
                        add              dword ptr [rsp + 2256], 1
                        mov              eax, dword ptr [rsp + 2256];         jmp   n00099_lit_integer_α
                        .size            n00097_disjunction_bx, .-n00097_disjunction_bx
                        .type            n00099_lit_integer_bx, @function
n00099_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00099_lit_integer_α:     mov              r11, 195
                        mov              qword ptr [rsp + 480], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_556_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n00100_scan_move_α
.Llit_integer_α_556_0:  .quad            1
                        .size            n00099_lit_integer_bx, .-n00099_lit_integer_bx
                        .type            n00100_scan_move_bx, @function
n00100_scan_move_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00100_scan_move_α:       mov              r11, 196
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jl    n00086_scan_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00086_scan_α
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
                        mov              qword ptr [rsp + 456], rdx;          jmp   n00101_assign_α
n00100_scan_move_β:       mov              r11, 196
                        mov              r14, qword ptr [rsp + 464];          jmp   n00086_scan_α
                        .size            n00100_scan_move_bx, .-n00100_scan_move_bx
                        .type            n00101_assign_bx, @function
n00101_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00101_assign_α:          mov              r11, 197
                        mov              rax, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 2960], rax
                        mov              qword ptr [rsp + 2968], rdx;         jmp   n00085_disjunction_α
                        .size            n00101_assign_bx, .-n00101_assign_bx
                        .type            n00085_disjunction_bx, @function
n00085_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00085_disjunction_α:     mov              r11, 198
                        mov              qword ptr [rsp + 496], 0
                        mov              qword ptr [rsp + 504], 0
                        mov              dword ptr [rsp + 512], 0;            jmp   n00102_var_α
.Ldisjunction_γ_432_as: mov              r11, 198
                        mov              eax, dword ptr [rsp + 512]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_561_0
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 504], rax;          jmp   n00099_lit_integer_α
.Ldisjunction_α_561_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_561_1
                        mov              rax, qword ptr [rsp + 2128]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 2136]
                        mov              qword ptr [rsp + 504], rax;          jmp   n00099_lit_integer_α
.Ldisjunction_α_561_1:                                                        jmp   n00099_lit_integer_α
n00085_disjunction_β:     mov              r11, 198
                        mov              eax, dword ptr [rsp + 512]
                        cmp              eax, 0;                              je    n00103_disjunction_β
                                                                              jmp   n00099_lit_integer_α
.Ldisjunction_γ_432_af: mov              r11, 198
.Ldisjunction_ω_432_af: mov              r11, 198
                        add              dword ptr [rsp + 512], 1
                        mov              eax, dword ptr [rsp + 512]
                        cmp              eax, 1;                              je    n00104_lit_string_α
                                                                              jmp   n00099_lit_integer_α
                        .size            n00085_disjunction_bx, .-n00085_disjunction_bx
                        .type            n00104_lit_string_bx, @function
n00104_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00104_lit_string_α:      mov              r11, 199
                        mov              qword ptr [rsp + 2192], 2            # result
                        mov              dword ptr [rsp + 2196], 22
                        mov              rax, qword ptr [rip + .Llit_string_α_562_0]
                        mov              qword ptr [rsp + 2200], rax;         jmp   n00105_var_α
n00104_lit_string_β:      mov              r11, 199;                            jmp   n00099_lit_integer_α
.Llit_string_α_562_0:   .quad            .Llit_string_α_562_0_s
.Llit_string_α_562_0_s: .string          "Unrecognized option: -"
                        .size            n00104_lit_string_bx, .-n00104_lit_string_bx
                        .type            n00105_var_bx, @function
n00105_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00105_var_α:             mov              r11, 200
                        mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 2224], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 2232], rax;         jmp   n00106_call_icon_α
                        .size            n00105_var_bx, .-n00105_var_bx
                        .type            n00106_call_icon_bx, @function
n00106_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00106_call_icon_α:       mov              r11, 201
                        mov              rax, qword ptr [rsp + 2224]
                        mov              qword ptr [rsp + 2160], rax
                        mov              rax, qword ptr [rsp + 2232]
                        mov              qword ptr [rsp + 2168], rax
                        mov              rax, qword ptr [rsp + 2192]
                        mov              qword ptr [rsp + 2144], rax
                        mov              rax, qword ptr [rsp + 2200]
                        mov              qword ptr [rsp + 2152], rax
                        .section         .rodata
.Lcall_icon_α_rkfn566:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn566]
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
                        cmp              al, 104;                             je    n00099_lit_integer_α
                                                                              jmp   .Ldisjunction_γ_432_as
n00106_call_icon_β:       mov              r11, 201;                            jmp   n00099_lit_integer_α
                        .size            n00106_call_icon_bx, .-n00106_call_icon_bx
                        .type            n00102_var_bx, @function
n00102_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00102_var_α:             mov              r11, 202
                        mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 2080], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 2088], rax;         jmp   n00107_var_α
n00102_var_β:             mov              r11, 202;                            jmp   .Ldisjunction_ω_432_af
                        .size            n00102_var_bx, .-n00102_var_bx
                        .type            n00107_var_bx, @function
n00107_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00107_var_α:             mov              r11, 203
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 2096], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 2104], rax;         jmp   n00108_call_builtin_gen_α
                        .size            n00107_var_bx, .-n00107_var_bx
                        .type            n00108_call_builtin_gen_bx, @function
n00108_call_builtin_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00108_call_builtin_gen_α:
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
.Lcall_builtin_gen_α_571_60:
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
                                                                              jmp   n00109_lit_integer_α
n00108_call_builtin_gen_β:
                        mov              r11, 204;                            jmp   .Lcall_builtin_gen_α_571_60
                        .size            n00108_call_builtin_gen_bx, .-n00108_call_builtin_gen_bx
                        .type            n00109_lit_integer_bx, @function
n00109_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00109_lit_integer_α:     mov              r11, 205
                        mov              qword ptr [rsp + 2112], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_572_0]
                        mov              qword ptr [rsp + 2120], rax;         jmp   n00110_coerce_numeric_α
.Llit_integer_α_572_0:  .quad            1
                        .size            n00109_lit_integer_bx, .-n00109_lit_integer_bx
                        .type            n00110_coerce_numeric_bx, @function
n00110_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00110_coerce_numeric_α:  mov              r11, 206
                        mov              eax, dword ptr [rsp + 2016]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_574_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_574_0
                        mov              eax, dword ptr [rsp + 2112]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_574_0
.Lcoerce_numeric_α_574_1:
                        mov              rax, qword ptr [rsp + 2016]
                        mov              qword ptr [rsp + 2000], rax
                        mov              rax, qword ptr [rsp + 2024]
                        mov              qword ptr [rsp + 2008], rax;         jmp   n00111_binop_α
.Lcoerce_numeric_α_574_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00111_binop_α
                        .size            n00110_coerce_numeric_bx, .-n00110_coerce_numeric_bx
                        .type            n00111_binop_bx, @function
n00111_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00111_binop_α:           mov              r11, 207
                        mov              eax, dword ptr [rsp + 2000]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_575_2
                        mov              rax, qword ptr [rsp + 2008]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 1984], 3
                        mov              qword ptr [rsp + 1992], rax;         jmp   .Lbinop_α_575_7
.Lbinop_α_575_2:        and              edx, 1;                              jz    .Lbinop_α_575_0
                        mov              rsi, qword ptr [rsp + 2008]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_575_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_575_4
.Lbinop_α_575_3:        movq             xmm0, rsi
.Lbinop_α_575_4:        cmp              cl, 5;                               je    .Lbinop_α_575_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_575_6
.Lbinop_α_575_5:        movq             xmm1, rdi
.Lbinop_α_575_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1984], 5
                        mov              qword ptr [rsp + 1992], rax
.Lbinop_α_575_7:                                                              jmp   n00112_assign_α
.Lbinop_α_575_0:        mov              rdi, qword ptr [rsp + 2000]
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
                        mov              qword ptr [rsp + 1992], rdx;         jmp   n00112_assign_α
                        .size            n00111_binop_bx, .-n00111_binop_bx
                        .type            n00112_assign_bx, @function
n00112_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00112_assign_α:          mov              r11, 208
                        mov              rax, qword ptr [rsp + 1984]
                        mov              rdx, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 3024], rax
                        mov              qword ptr [rsp + 3032], rdx;         jmp   n00113_var_ref_α
                        .size            n00112_assign_bx, .-n00112_assign_bx
                        .type            n00113_var_ref_bx, @function
n00113_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00113_var_ref_α:         mov              r11, 209
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2896]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n00114_var_α
                        .size            n00113_var_ref_bx, .-n00113_var_ref_bx
                        .type            n00114_var_bx, @function
n00114_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00114_var_α:             mov              r11, 210
                        mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 552], rax;          jmp   n00115_subscript_α
                        .size            n00114_var_bx, .-n00114_var_bx
                        .type            n00115_subscript_bx, @function
n00115_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00115_subscript_α:       mov              r11, 211
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
                        cmp              al, 104;                             je    n00099_lit_integer_α
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n00103_disjunction_α
                        .size            n00115_subscript_bx, .-n00115_subscript_bx
                        .type            n00103_disjunction_bx, @function
n00103_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00103_disjunction_α:     mov              r11, 212
                        mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 600], 0
                        mov              dword ptr [rsp + 608], 0;            jmp   n00116_lit_charset_α
.Ldisjunction_γ_446_as: mov              r11, 212
                        mov              eax, dword ptr [rsp + 608]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_583_0
                        mov              rax, qword ptr [rsp + 2976]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 2984]
                        mov              qword ptr [rsp + 600], rax;          jmp   n00117_assign_var_α
.Ldisjunction_α_583_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_583_1
                        mov              rax, qword ptr [rsp + 1968]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 1976]
                        mov              qword ptr [rsp + 600], rax;          jmp   n00117_assign_var_α
.Ldisjunction_α_583_1:                                                        jmp   n00117_assign_var_α
n00103_disjunction_β:     mov              r11, 212
                        mov              eax, dword ptr [rsp + 608]
                        cmp              eax, 0;                              je    n00099_lit_integer_α
                                                                              jmp   n00099_lit_integer_α
.Ldisjunction_γ_446_af: mov              r11, 212
.Ldisjunction_ω_446_af: mov              r11, 212
                        add              dword ptr [rsp + 608], 1
                        mov              eax, dword ptr [rsp + 608]
                        cmp              eax, 1;                              je    n00118_lit_integer_α
                                                                              jmp   n00099_lit_integer_α
                        .size            n00103_disjunction_bx, .-n00103_disjunction_bx
                        .type            n00117_assign_var_bx, @function
n00117_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00117_assign_var_α:      mov              r11, 213
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
                        cmp              al, 104;                             je    n00099_lit_integer_α
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx;          jmp   .Ldisjunction_γ_432_as
n00117_assign_var_β:      mov              r11, 213;                            jmp   n00099_lit_integer_α
                        .size            n00117_assign_var_bx, .-n00117_assign_var_bx
                        .type            n00118_lit_integer_bx, @function
n00118_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00118_lit_integer_α:     mov              r11, 214
                        mov              qword ptr [rsp + 1968], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_585_0]
                        mov              qword ptr [rsp + 1976], rax;         jmp   .Ldisjunction_γ_446_as
n00118_lit_integer_β:     mov              r11, 214;                            jmp   n00099_lit_integer_α
.Llit_integer_α_585_0:  .quad            1
                        .size            n00118_lit_integer_bx, .-n00118_lit_integer_bx
                        .type            n00116_lit_charset_bx, @function
n00116_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00116_lit_charset_α:     mov              r11, 215
                        mov              qword ptr [rsp + 1856], 2            # result
                        mov              dword ptr [rsp + 1860], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_586_0]
                        mov              qword ptr [rsp + 1864], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_586_0]
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
                        pop              rax;                                 jmp   n00119_var_ref_α
n00116_lit_charset_β:     mov              r11, 215;                            jmp   .Ldisjunction_ω_446_af
.Llit_charset_α_586_0:  .quad            .Llit_charset_α_586_0_s
.Llit_charset_α_586_0_s:
                        .string          "+.:"
                        .size            n00116_lit_charset_bx, .-n00116_lit_charset_bx
                        .type            n00119_var_ref_bx, @function
n00119_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00119_var_ref_α:         mov              r11, 216
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1904], rax
                        mov              qword ptr [rsp + 1912], rdx;         jmp   n00120_var_α
                        .size            n00119_var_ref_bx, .-n00119_var_ref_bx
                        .type            n00120_var_bx, @function
n00120_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00120_var_α:             mov              r11, 217
                        mov              rax, qword ptr [rsp + 3024]
                        mov              qword ptr [rsp + 1920], rax
                        mov              rax, qword ptr [rsp + 3032]
                        mov              qword ptr [rsp + 1928], rax;         jmp   n00121_subscript_α
                        .size            n00120_var_bx, .-n00120_var_bx
                        .type            n00121_subscript_bx, @function
n00121_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00121_subscript_α:       mov              r11, 218
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
                        mov              qword ptr [rsp + 1944], rdx;         jmp   n00122_deref_α
                        .size            n00121_subscript_bx, .-n00121_subscript_bx
                        .type            n00122_deref_bx, @function
n00122_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00122_deref_α:           mov              r11, 219
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
                        mov              qword ptr [rsp + 1960], rdx;         jmp   n00123_assign_α
                        .size            n00122_deref_bx, .-n00122_deref_bx
                        .type            n00123_assign_bx, @function
n00123_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00123_assign_α:          mov              r11, 220
                        mov              rax, qword ptr [rsp + 1952]
                        mov              rdx, qword ptr [rsp + 1960]
                        mov              qword ptr [rsp + 2992], rax
                        mov              qword ptr [rsp + 3000], rdx
                        mov              qword ptr [rsp + 1888], rax
                        mov              qword ptr [rsp + 1896], rdx;         jmp   n00124_call_icon_α
                        .size            n00123_assign_bx, .-n00123_assign_bx
                        .type            n00124_call_icon_bx, @function
n00124_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00124_call_icon_α:       mov              r11, 221
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
                                                                              jmp   n00125_disjunction_α
n00124_call_icon_β:       mov              r11, 221;                            jmp   .Ldisjunction_ω_446_af
                        .size            n00124_call_icon_bx, .-n00124_call_icon_bx
                        .type            n00125_disjunction_bx, @function
n00125_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00125_disjunction_α:     mov              r11, 222
                        mov              qword ptr [rsp + 1488], 0
                        mov              qword ptr [rsp + 1496], 0
                        mov              dword ptr [rsp + 1504], 0;           jmp   n00126_lit_string_α
.Ldisjunction_γ_456_as: mov              r11, 222
                        mov              eax, dword ptr [rsp + 1504]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_596_0
                        mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 1488], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1496], rax;         jmp   n00127_assign_α
.Ldisjunction_α_596_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_596_1
                        mov              rax, qword ptr [rsp + 1616]
                        mov              qword ptr [rsp + 1488], rax
                        mov              rax, qword ptr [rsp + 1624]
                        mov              qword ptr [rsp + 1496], rax;         jmp   n00127_assign_α
.Ldisjunction_α_596_1:  cmp              eax, 2;                              jne   .Ldisjunction_α_596_2
                        mov              rax, qword ptr [rsp + 1680]
                        mov              qword ptr [rsp + 1488], rax
                        mov              rax, qword ptr [rsp + 1688]
                        mov              qword ptr [rsp + 1496], rax;         jmp   n00127_assign_α
.Ldisjunction_α_596_2:                                                        jmp   n00127_assign_α
n00125_disjunction_β:     mov              r11, 222
                        mov              eax, dword ptr [rsp + 1504]
                        cmp              eax, 0;                              je    n00128_scan_tab_β
                        cmp              eax, 1;                              je    .Ldisjunction_ω_456_af
                                                                              jmp   .Ldisjunction_ω_456_af
.Ldisjunction_γ_456_af: mov              r11, 222
.Ldisjunction_ω_456_af: mov              r11, 222
                        add              dword ptr [rsp + 1504], 1
                        mov              eax, dword ptr [rsp + 1504]
                        cmp              eax, 1;                              je    n00129_var_α
                        cmp              eax, 2;                              je    n00130_lit_string_α
                                                                              jmp   n00131_var_α
                        .size            n00125_disjunction_bx, .-n00125_disjunction_bx
                        .type            n00127_assign_bx, @function
n00127_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00127_assign_α:          mov              r11, 223
                        mov              rax, qword ptr [rsp + 1488]
                        mov              rdx, qword ptr [rsp + 1496]
                        mov              qword ptr [rsp + 3008], rax
                        mov              qword ptr [rsp + 3016], rdx;         jmp   n00131_var_α
                        .size            n00127_assign_bx, .-n00127_assign_bx
                        .type            n00131_var_bx, @function
n00131_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00131_var_α:             mov              r11, 224
                        mov              rax, qword ptr [rsp + 2992]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 3000]
                        mov              qword ptr [rsp + 664], rax;          jmp   n00132_lit_string_α
                        .size            n00131_var_bx, .-n00131_var_bx
                        .type            n00132_lit_string_bx, @function
n00132_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00132_lit_string_α:      mov              r11, 225
                        mov              qword ptr [rsp + 1376], 2            # result
                        mov              dword ptr [rsp + 1380], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_600_0]
                        mov              qword ptr [rsp + 1384], rax;         jmp   n00133_call_builtin_α
.Llit_string_α_600_0:   .quad            .Llit_string_α_600_0_s
.Llit_string_α_600_0_s: .string          ":"
                        .size            n00132_lit_string_bx, .-n00132_lit_string_bx
                        .type            n00133_call_builtin_bx, @function
n00133_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00133_call_builtin_α:    mov              r11, 226
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 1464], rax
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 1448], rax
                        .section         .rodata
.Lcall_builtin_α_rkfn602: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_α_rkfn602]
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
                        cmp              al, 104;                             je    n00134_lit_string_α
                                                                              jmp   n00135_var_α
n00133_call_builtin_β:    mov              r11, 226;                            jmp   n00134_lit_string_α
                        .size            n00133_call_builtin_bx, .-n00133_call_builtin_bx
                        .type            n00135_var_bx, @function
n00135_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00135_var_α:             mov              r11, 227
                        mov              rax, qword ptr [rsp + 3008]
                        mov              qword ptr [rsp + 1408], rax
                        mov              rax, qword ptr [rsp + 3016]
                        mov              qword ptr [rsp + 1416], rax;         jmp   n00136_assign_α
                        .size            n00135_var_bx, .-n00135_var_bx
                        .type            n00136_assign_bx, @function
n00136_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00136_assign_α:          mov              r11, 228
                        mov              rax, qword ptr [rsp + 1408]
                        mov              rdx, qword ptr [rsp + 1416]
                        mov              qword ptr [rsp + 2976], rax
                        mov              qword ptr [rsp + 2984], rdx;         jmp   n00137_var_α
                        .size            n00136_assign_bx, .-n00136_assign_bx
                        .type            n00134_lit_string_bx, @function
n00134_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00134_lit_string_α:      mov              r11, 229
                        mov              qword ptr [rsp + 1024], 2            # result
                        mov              dword ptr [rsp + 1028], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_606_0]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n00138_call_builtin_α
.Llit_string_α_606_0:   .quad            .Llit_string_α_606_0_s
.Llit_string_α_606_0_s: .string          "+"
                        .size            n00134_lit_string_bx, .-n00134_lit_string_bx
                        .type            n00138_call_builtin_bx, @function
n00138_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00138_call_builtin_α:    mov              r11, 230
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 1352], rax
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 1336], rax
                        .section         .rodata
.Lcall_builtin_α_rkfn608: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_α_rkfn608]
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
                        cmp              al, 104;                             je    n00139_lit_string_α
                                                                              jmp   n00140_disjunction_α
n00138_call_builtin_β:    mov              r11, 230;                            jmp   n00139_lit_string_α
                        .size            n00138_call_builtin_bx, .-n00138_call_builtin_bx
                        .type            n00140_disjunction_bx, @function
n00140_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00140_disjunction_α:     mov              r11, 231
                        mov              qword ptr [rsp + 1056], 0
                        mov              qword ptr [rsp + 1064], 0
                        mov              dword ptr [rsp + 1072], 0;           jmp   n00141_var_α
.Ldisjunction_γ_465_as: mov              r11, 231
                        mov              eax, dword ptr [rsp + 1072]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_610_0
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n00142_assign_α
.Ldisjunction_α_610_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_610_1
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n00142_assign_α
.Ldisjunction_α_610_1:                                                        jmp   n00142_assign_α
n00140_disjunction_β:     mov              r11, 231
                        mov              eax, dword ptr [rsp + 1072]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_465_af
                                                                              jmp   .Ldisjunction_ω_465_af
.Ldisjunction_γ_465_af: mov              r11, 231
.Ldisjunction_ω_465_af: mov              r11, 231
                        add              dword ptr [rsp + 1072], 1
                        mov              eax, dword ptr [rsp + 1072]
                        cmp              eax, 1;                              je    n00143_lit_string_α
                                                                              jmp   n00099_lit_integer_α
                        .size            n00140_disjunction_bx, .-n00140_disjunction_bx
                        .type            n00142_assign_bx, @function
n00142_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00142_assign_α:          mov              r11, 232
                        mov              rax, qword ptr [rsp + 1056]
                        mov              rdx, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 2976], rax
                        mov              qword ptr [rsp + 2984], rdx;         jmp   n00137_var_α
                        .size            n00142_assign_bx, .-n00142_assign_bx
                        .type            n00143_lit_string_bx, @function
n00143_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00143_lit_string_α:      mov              r11, 233
                        mov              qword ptr [rsp + 1232], 2            # result
                        mov              dword ptr [rsp + 1236], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_612_0]
                        mov              qword ptr [rsp + 1240], rax;         jmp   n00144_var_α
n00143_lit_string_β:      mov              r11, 233;                            jmp   .Ldisjunction_ω_465_af
.Llit_string_α_612_0:   .quad            .Llit_string_α_612_0_s
.Llit_string_α_612_0_s: .string          "-"
                        .size            n00143_lit_string_bx, .-n00143_lit_string_bx
                        .type            n00144_var_bx, @function
n00144_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00144_var_α:             mov              r11, 234
                        mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n00145_lit_string_α
                        .size            n00144_var_bx, .-n00144_var_bx
                        .type            n00145_lit_string_bx, @function
n00145_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00145_lit_string_α:      mov              r11, 235
                        mov              qword ptr [rsp + 1280], 2            # result
                        mov              dword ptr [rsp + 1284], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_615_0]
                        mov              qword ptr [rsp + 1288], rax;         jmp   n00146_call_icon_α
.Llit_string_α_615_0:   .quad            .Llit_string_α_615_0_s
.Llit_string_α_615_0_s: .string          " needs numeric parameter"
                        .size            n00145_lit_string_bx, .-n00145_lit_string_bx
                        .type            n00146_call_icon_bx, @function
n00146_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00146_call_icon_α:       mov              r11, 236
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
.Lcall_icon_α_rkfn617:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn617]
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
n00146_call_icon_β:       mov              r11, 236;                            jmp   .Ldisjunction_ω_465_af
                        .size            n00146_call_icon_bx, .-n00146_call_icon_bx
                        .type            n00141_var_bx, @function
n00141_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00141_var_α:             mov              r11, 237
                        mov              rax, qword ptr [rsp + 3008]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 3016]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n00147_call_icon_α
n00141_var_β:             mov              r11, 237;                            jmp   .Ldisjunction_ω_465_af
                        .size            n00141_var_bx, .-n00141_var_bx
                        .type            n00147_call_icon_bx, @function
n00147_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00147_call_icon_α:       mov              r11, 238
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1112], rax
                        .section         .rodata
.Lcall_icon_α_rkfn621:  .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn621]
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
n00147_call_icon_β:       mov              r11, 238;                            jmp   .Ldisjunction_ω_465_af
                        .size            n00147_call_icon_bx, .-n00147_call_icon_bx
                        .type            n00139_lit_string_bx, @function
n00139_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00139_lit_string_α:      mov              r11, 239
                        mov              qword ptr [rsp + 672], 2             # result
                        mov              dword ptr [rsp + 676], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_622_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n00148_call_builtin_α
.Llit_string_α_622_0:   .quad            .Llit_string_α_622_0_s
.Llit_string_α_622_0_s: .string          "."
                        .size            n00139_lit_string_bx, .-n00139_lit_string_bx
                        .type            n00148_call_builtin_bx, @function
n00148_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00148_call_builtin_α:    mov              r11, 240
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 1000], rax
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 984], rax
                        .section         .rodata
.Lcall_builtin_α_rkfn624: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_α_rkfn624]
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
                        cmp              al, 104;                             je    n00099_lit_integer_α
                                                                              jmp   n00149_disjunction_α
n00148_call_builtin_β:    mov              r11, 240;                            jmp   n00099_lit_integer_α
                        .size            n00148_call_builtin_bx, .-n00148_call_builtin_bx
                        .type            n00149_disjunction_bx, @function
n00149_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00149_disjunction_α:     mov              r11, 241
                        mov              qword ptr [rsp + 704], 0
                        mov              qword ptr [rsp + 712], 0
                        mov              dword ptr [rsp + 720], 0;            jmp   n00150_var_α
.Ldisjunction_γ_475_as: mov              r11, 241
                        mov              eax, dword ptr [rsp + 720]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_626_0
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 712], rax;          jmp   n00151_assign_α
.Ldisjunction_α_626_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_626_1
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 712], rax;          jmp   n00151_assign_α
.Ldisjunction_α_626_1:                                                        jmp   n00151_assign_α
n00149_disjunction_β:     mov              r11, 241
                        mov              eax, dword ptr [rsp + 720]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_475_af
                                                                              jmp   .Ldisjunction_ω_475_af
.Ldisjunction_γ_475_af: mov              r11, 241
.Ldisjunction_ω_475_af: mov              r11, 241
                        add              dword ptr [rsp + 720], 1
                        mov              eax, dword ptr [rsp + 720]
                        cmp              eax, 1;                              je    n00152_lit_string_α
                                                                              jmp   n00099_lit_integer_α
                        .size            n00149_disjunction_bx, .-n00149_disjunction_bx
                        .type            n00151_assign_bx, @function
n00151_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00151_assign_α:          mov              r11, 242
                        mov              rax, qword ptr [rsp + 704]
                        mov              rdx, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 2976], rax
                        mov              qword ptr [rsp + 2984], rdx;         jmp   n00137_var_α
                        .size            n00151_assign_bx, .-n00151_assign_bx
                        .type            n00137_var_bx, @function
n00137_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00137_var_α:             mov              r11, 243
                        mov              rax, qword ptr [rsp + 2976]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 2984]
                        mov              qword ptr [rsp + 648], rax;          jmp   n00153_conjunction_α
                        .size            n00137_var_bx, .-n00137_var_bx
                        .type            n00153_conjunction_bx, @function
n00153_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00153_conjunction_α:     mov              r11, 244
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 632], rax;          jmp   .Ldisjunction_γ_446_as
n00153_conjunction_β:     mov              r11, 244;                            jmp   n00099_lit_integer_α
                        .size            n00153_conjunction_bx, .-n00153_conjunction_bx
                        .type            n00152_lit_string_bx, @function
n00152_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00152_lit_string_α:      mov              r11, 245
                        mov              qword ptr [rsp + 880], 2             # result
                        mov              dword ptr [rsp + 884], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_631_0]
                        mov              qword ptr [rsp + 888], rax;          jmp   n00154_var_α
n00152_lit_string_β:      mov              r11, 245;                            jmp   .Ldisjunction_ω_475_af
.Llit_string_α_631_0:   .quad            .Llit_string_α_631_0_s
.Llit_string_α_631_0_s: .string          "-"
                        .size            n00152_lit_string_bx, .-n00152_lit_string_bx
                        .type            n00154_var_bx, @function
n00154_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00154_var_α:             mov              r11, 246
                        mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 920], rax;          jmp   n00155_lit_string_α
                        .size            n00154_var_bx, .-n00154_var_bx
                        .type            n00155_lit_string_bx, @function
n00155_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00155_lit_string_α:      mov              r11, 247
                        mov              qword ptr [rsp + 928], 2             # result
                        mov              dword ptr [rsp + 932], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_634_0]
                        mov              qword ptr [rsp + 936], rax;          jmp   n00156_call_icon_α
.Llit_string_α_634_0:   .quad            .Llit_string_α_634_0_s
.Llit_string_α_634_0_s: .string          " needs numeric parameter"
                        .size            n00155_lit_string_bx, .-n00155_lit_string_bx
                        .type            n00156_call_icon_bx, @function
n00156_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00156_call_icon_α:       mov              r11, 248
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
.Lcall_icon_α_rkfn636:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn636]
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
n00156_call_icon_β:       mov              r11, 248;                            jmp   .Ldisjunction_ω_475_af
                        .size            n00156_call_icon_bx, .-n00156_call_icon_bx
                        .type            n00150_var_bx, @function
n00150_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00150_var_α:             mov              r11, 249
                        mov              rax, qword ptr [rsp + 3008]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 3016]
                        mov              qword ptr [rsp + 792], rax;          jmp   n00157_call_icon_α
n00150_var_β:             mov              r11, 249;                            jmp   .Ldisjunction_ω_475_af
                        .size            n00150_var_bx, .-n00150_var_bx
                        .type            n00157_call_icon_bx, @function
n00157_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00157_call_icon_α:       mov              r11, 250
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 760], rax
                        .section         .rodata
.Lcall_icon_α_rkfn640:  .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn640]
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
n00157_call_icon_β:       mov              r11, 250;                            jmp   .Ldisjunction_ω_475_af
                        .size            n00157_call_icon_bx, .-n00157_call_icon_bx
                        .type            n00130_lit_string_bx, @function
n00130_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00130_lit_string_α:      mov              r11, 251
                        mov              qword ptr [rsp + 1744], 2            # result
                        mov              dword ptr [rsp + 1748], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_641_0]
                        mov              qword ptr [rsp + 1752], rax;         jmp   n00158_var_α
n00130_lit_string_β:      mov              r11, 251;                            jmp   .Ldisjunction_ω_456_af
.Llit_string_α_641_0:   .quad            .Llit_string_α_641_0_s
.Llit_string_α_641_0_s: .string          "No parameter following -"
                        .size            n00130_lit_string_bx, .-n00130_lit_string_bx
                        .type            n00158_var_bx, @function
n00158_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00158_var_α:             mov              r11, 252
                        mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 1776], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 1784], rax;         jmp   n00159_call_icon_α
                        .size            n00158_var_bx, .-n00158_var_bx
                        .type            n00159_call_icon_bx, @function
n00159_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00159_call_icon_α:       mov              r11, 253
                        mov              rax, qword ptr [rsp + 1776]
                        mov              qword ptr [rsp + 1712], rax
                        mov              rax, qword ptr [rsp + 1784]
                        mov              qword ptr [rsp + 1720], rax
                        mov              rax, qword ptr [rsp + 1744]
                        mov              qword ptr [rsp + 1696], rax
                        mov              rax, qword ptr [rsp + 1752]
                        mov              qword ptr [rsp + 1704], rax
                        .section         .rodata
.Lcall_icon_α_rkfn645:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn645]
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
n00159_call_icon_β:       mov              r11, 253;                            jmp   .Ldisjunction_ω_456_af
                        .size            n00159_call_icon_bx, .-n00159_call_icon_bx
                        .type            n00129_var_bx, @function
n00129_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00129_var_α:             mov              r11, 254
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1664], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1672], rax;         jmp   n00160_call_icon_α
n00129_var_β:             mov              r11, 254;                            jmp   .Ldisjunction_ω_456_af
                        .size            n00129_var_bx, .-n00129_var_bx
                        .type            n00160_call_icon_bx, @function
n00160_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00160_call_icon_α:       mov              r11, 255
                        mov              rax, qword ptr [rsp + 1664]
                        mov              qword ptr [rsp + 1632], rax
                        mov              rax, qword ptr [rsp + 1672]
                        mov              qword ptr [rsp + 1640], rax
                        .section         .rodata
.Lcall_icon_α_rkfn649:  .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn649]
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
n00160_call_icon_β:       mov              r11, 255;                            jmp   .Ldisjunction_ω_456_af
                        .size            n00160_call_icon_bx, .-n00160_call_icon_bx
                        .type            n00126_lit_string_bx, @function
n00126_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00126_lit_string_α:      mov              r11, 256
                        mov              qword ptr [rsp + 1536], 2            # result
                        mov              dword ptr [rsp + 1540], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_650_0]
                        mov              qword ptr [rsp + 1544], rax;         jmp   n00161_lit_integer_α
n00126_lit_string_β:      mov              r11, 256;                            jmp   .Ldisjunction_ω_456_af
.Llit_string_α_650_0:   .quad            .Llit_string_α_650_0_s
.Llit_string_α_650_0_s: .string          ""
                        .size            n00126_lit_string_bx, .-n00126_lit_string_bx
                        .type            n00161_lit_integer_bx, @function
n00161_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00161_lit_integer_α:     mov              r11, 257
                        mov              qword ptr [rsp + 1600], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_651_0]
                        mov              qword ptr [rsp + 1608], rax;         jmp   n00128_scan_tab_α
.Llit_integer_α_651_0:  .quad            0
                        .size            n00161_lit_integer_bx, .-n00161_lit_integer_bx
                        .type            n00128_scan_tab_bx, @function
n00128_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00128_scan_tab_α:        mov              r11, 258
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_tab_α_653_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_653_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_456_af
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
                        mov              qword ptr [rsp + 1576], rdx;         jmp   n00162_binop_test_α
n00128_scan_tab_β:        mov              r11, 258
                        mov              r14, qword ptr [rsp + 1584];         jmp   .Ldisjunction_ω_456_af
                        .size            n00128_scan_tab_bx, .-n00128_scan_tab_bx
                        .type            n00162_binop_test_bx, @function
n00162_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00162_binop_test_α:      mov              r11, 259
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
                        test             eax, eax;                            jz    n00128_scan_tab_β
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
n00162_binop_test_β:      mov              r11, 259;                            jmp   n00128_scan_tab_β
                        .size            n00162_binop_test_bx, .-n00162_binop_test_bx
                        .type            n00086_scan_bx, @function
n00086_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00086_scan_α:            mov              r11, 260
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
                        mov              r15, qword ptr [rsp + 336];          jmp   n00076_var_α
n00086_scan_β:            mov              r11, 260;                            jmp   n00076_var_α
                        .size            n00086_scan_bx, .-n00086_scan_bx
                        .type            n00098_lit_string_bx, @function
n00098_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00098_lit_string_α:      mov              r11, 261
                        mov              qword ptr [rsp + 2416], 2            # result
                        mov              dword ptr [rsp + 2420], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_657_0]
                        mov              qword ptr [rsp + 2424], rax;         jmp   n00163_scan_match_α
n00098_lit_string_β:      mov              r11, 261;                            jmp   .Ldisjunction_ω_428_af
.Llit_string_α_657_0:   .quad            .Llit_string_α_657_0_s
.Llit_string_α_657_0_s: .string          "-"
                        .size            n00098_lit_string_bx, .-n00098_lit_string_bx
                        .type            n00163_scan_match_bx, @function
n00163_scan_match_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00163_scan_match_α:      mov              r11, 262
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    .Ldisjunction_ω_428_af
                        mov              rdi, qword ptr [rip + .Lscan_match_α_659_0]
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
                        mov              qword ptr [rsp + 2384], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rsp + 2392], rax;         jmp   n00164_scan_tab_α
.Lscan_match_α_659_0:   .quad            .Lscan_match_α_659_0_s
.Lscan_match_α_659_0_s: .string          "-"
                        .size            n00163_scan_match_bx, .-n00163_scan_match_bx
                        .type            n00164_scan_tab_bx, @function
n00164_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00164_scan_tab_α:        mov              r11, 263
                        mov              rax, qword ptr [rsp + 2392]
                        cmp              rax, 1;                              jge   .Lscan_tab_α_661_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_661_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_428_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_428_af
                        mov              qword ptr [rsp + 2368], r14
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
                        mov              qword ptr [rsp + 2352], rax
                        mov              qword ptr [rsp + 2360], rdx;         jmp   n00165_lit_integer_α
n00164_scan_tab_β:        mov              r11, 263
                        mov              r14, qword ptr [rsp + 2368];         jmp   .Ldisjunction_ω_428_af
                        .size            n00164_scan_tab_bx, .-n00164_scan_tab_bx
                        .type            n00165_lit_integer_bx, @function
n00165_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00165_lit_integer_α:     mov              r11, 264
                        mov              qword ptr [rsp + 2336], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_662_0]
                        mov              qword ptr [rsp + 2344], rax;         jmp   n00166_scan_pos_α
.Llit_integer_α_662_0:  .quad            0
                        .size            n00165_lit_integer_bx, .-n00165_lit_integer_bx
                        .type            n00166_scan_pos_bx, @function
n00166_scan_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00166_scan_pos_α:        mov              r11, 265
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_pos_α_664_0
                        add              rax, r15
                        add              rax, 1
.Lscan_pos_α_664_0:     cmp              rax, 1;                              jl    n00164_scan_tab_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00164_scan_tab_β
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n00164_scan_tab_β
                        mov              qword ptr [rsp + 2320], 3
                        mov              qword ptr [rsp + 2328], rax;         jmp   n00167_conjunction_α
                        .size            n00166_scan_pos_bx, .-n00166_scan_pos_bx
                        .type            n00167_conjunction_bx, @function
n00167_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00167_conjunction_α:     mov              r11, 266
                        mov              rax, qword ptr [rsp + 2320]
                        mov              qword ptr [rsp + 2304], rax
                        mov              rax, qword ptr [rsp + 2328]
                        mov              qword ptr [rsp + 2312], rax;         jmp   n00168_scan_α
n00167_conjunction_β:     mov              r11, 266;                            jmp   .Ldisjunction_ω_428_af
                        .size            n00167_conjunction_bx, .-n00167_conjunction_bx
                        .type            n00168_scan_bx, @function
n00168_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00168_scan_α:            mov              r11, 267
                        mov              rdi, qword ptr [rsp + 320]
                        mov              rsi, qword ptr [rsp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave_ns@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 320]
                        mov              r14, qword ptr [rsp + 328]
                        mov              r15, qword ptr [rsp + 336];          jmp   n00169_var_α
n00168_scan_β:            mov              r11, 267;                            jmp   n00169_var_α
                        .size            n00168_scan_bx, .-n00168_scan_bx
                        .type            n00169_var_bx, @function
n00169_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00169_var_α:             mov              r11, 268
                        mov              qword ptr [rsp + 2272], 0
                        mov              qword ptr [rsp + 2280], 0;           jmp   n00170_assign_α
n00169_var_β:             mov              r11, 268;                            jmp   n00171_var_α
                        .size            n00169_var_bx, .-n00169_var_bx
                        .type            n00170_assign_bx, @function
n00170_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00170_assign_α:          mov              r11, 269
                        mov              rax, qword ptr [rsp + 2272]
                        mov              rdx, qword ptr [rsp + 2280]
                        mov              qword ptr [rsp + 2928], rax
                        mov              qword ptr [rsp + 2936], rdx;         jmp   n00171_var_α
                        .size            n00170_assign_bx, .-n00170_assign_bx
                        .type            n00171_var_bx, @function
n00171_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00171_var_α:             mov              r11, 270
                        mov              rax, qword ptr [rsp + 2928]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 2936]
                        mov              qword ptr [rsp + 216], rax;          jmp   n00078_var_α
                        .size            n00171_var_bx, .-n00171_var_bx
                        .type            n00078_var_bx, @function
n00078_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00078_var_α:             mov              r11, 271
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 136], rax;          jmp   n00172_var_α
                        .size            n00078_var_bx, .-n00078_var_bx
                        .type            n00172_var_bx, @function
n00172_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00172_var_α:             mov              r11, 272
                        mov              rax, qword ptr [rsp + 2912]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 2920]
                        mov              qword ptr [rsp + 200], rax;          jmp   n00173_call_icon_α
                        .size            n00172_var_bx, .-n00172_var_bx
                        .type            n00173_call_icon_bx, @function
n00173_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00173_call_icon_α:       mov              r11, 273
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lcall_icon_α_rkfn677:  .string          "pull"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn677]
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
                        cmp              al, 104;                             je    n00174_var_α
                                                                              jmp   n00175_call_icon_α
n00173_call_icon_β:       mov              r11, 273;                            jmp   n00174_var_α
                        .size            n00173_call_icon_bx, .-n00173_call_icon_bx
                        .type            n00175_call_icon_bx, @function
n00175_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00175_call_icon_α:       mov              r11, 274
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 88], rax
                        .section         .rodata
.Lcall_icon_α_rkfn679:  .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn679]
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
                        cmp              al, 104;                             je    n00174_var_α
                                                                              jmp   n00078_var_α
n00175_call_icon_β:       mov              r11, 274;                            jmp   n00174_var_α
                        .size            n00175_call_icon_bx, .-n00175_call_icon_bx
                        .type            n00174_var_bx, @function
n00174_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00174_var_α:             mov              r11, 275
                        mov              rax, qword ptr [rsp + 2896]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 2904]
                        mov              qword ptr [rsp + 56], rax;           jmp   n00176_return_α
                        .size            n00174_var_bx, .-n00174_var_bx
                        .type            n00176_return_bx, @function
n00176_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00176_return_α:          mov              r11, 276
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   options_γ
                        .size            n00176_return_bx, .-n00176_return_bx
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
                        push             rax
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rax
                        add              rsp, 3344;                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
options_ω:
                        push             rax
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rax
                        add              rsp, 3344;                           jmp   qword ptr [rsp + 8]
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
                        lea              rcx, [rip + .Loptions_α_683_3]
                        push             rcx
                        lea              rcx, [rip + .Loptions_α_683_2]
                        push             rcx;                                 jmp   FN__options
.Loptions_α_683_2:      add              rsp, 24
                        pop              r12;                                 jmp   r12
.Loptions_α_683_3:      add              rsp, 24
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
                        .type            n00177_var_bx, @function
n00177_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00177_var_α:             mov              r11, 277
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 424], rax;          jmp   n00178_assign_α
                        .size            n00177_var_bx, .-n00177_var_bx
                        .type            n00178_assign_bx, @function
n00178_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00178_assign_α:          mov              r11, 278
                        mov              rax, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        mov              qword ptr [r9 + 64], rax             # Name__
                        mov              qword ptr [r9 + 72], rdx;            jmp   n00179_call_proc_staged_α
                        .size            n00178_assign_bx, .-n00178_assign_bx
                        .type            n00179_call_proc_staged_bx, @function
n00179_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00179_call_proc_staged_α:
                        mov              r11, 279
                        call             Signature___dcα;                     jmp   .Lcall_proc_staged_α_708_2
.Lcall_proc_staged_α_708_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_708_29
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
.Lcall_proc_staged_α_708_29:
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n00180_call_proc_staged_α
                                                                              jmp   n00180_call_proc_staged_α
n00179_call_proc_staged_β:
                        mov              r11, 279;                            jmp   n00180_call_proc_staged_α
.Lcall_proc_staged_β_708_0:
                        .quad            .Lcall_proc_staged_β_708_0_s
.Lcall_proc_staged_β_708_0_s:
                        .string          "Signature__"
                        .size            n00179_call_proc_staged_bx, .-n00179_call_proc_staged_bx
                        .type            n00180_call_proc_staged_bx, @function
n00180_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00180_call_proc_staged_α:
                        mov              r11, 280
                        call             Regions___dcα;                       jmp   .Lcall_proc_staged_α_710_2
.Lcall_proc_staged_α_710_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_710_29
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
.Lcall_proc_staged_α_710_29:
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              al, 104;                             je    n00181_call_proc_staged_α
                                                                              jmp   n00181_call_proc_staged_α
n00180_call_proc_staged_β:
                        mov              r11, 280;                            jmp   n00181_call_proc_staged_α
.Lcall_proc_staged_β_710_0:
                        .quad            .Lcall_proc_staged_β_710_0_s
.Lcall_proc_staged_β_710_0_s:
                        .string          "Regions__"
                        .size            n00180_call_proc_staged_bx, .-n00180_call_proc_staged_bx
                        .type            n00181_call_proc_staged_bx, @function
n00181_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00181_call_proc_staged_α:
                        mov              r11, 281
                        call             Time___dcα;                          jmp   .Lcall_proc_staged_α_712_2
.Lcall_proc_staged_α_712_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_712_29
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
.Lcall_proc_staged_α_712_29:
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              al, 104;                             je    n00182_disjunction_α
                                                                              jmp   n00182_disjunction_α
n00181_call_proc_staged_β:
                        mov              r11, 281;                            jmp   n00182_disjunction_α
.Lcall_proc_staged_β_712_0:
                        .quad            .Lcall_proc_staged_β_712_0_s
.Lcall_proc_staged_β_712_0_s:
                        .string          "Time__"
                        .size            n00181_call_proc_staged_bx, .-n00181_call_proc_staged_bx
                        .type            n00182_disjunction_bx, @function
n00182_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00182_disjunction_α:     mov              r11, 282
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              dword ptr [rsp + 128], 0;            jmp   n00183_lit_string_α
.Ldisjunction_γ_689_as: mov              r11, 282
                        mov              eax, dword ptr [rsp + 128]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_714_0
                                                                              jmp   n00184_var_α
.Ldisjunction_α_714_0:                                                        jmp   n00184_var_α
n00182_disjunction_β:     mov              r11, 282
                        mov              eax, dword ptr [rsp + 128];          jmp   n00184_var_α
.Ldisjunction_γ_689_af: mov              r11, 282
.Ldisjunction_ω_689_af: mov              r11, 282
                        add              dword ptr [rsp + 128], 1
                        mov              eax, dword ptr [rsp + 128];          jmp   n00184_var_α
                        .size            n00182_disjunction_bx, .-n00182_disjunction_bx
                        .type            n00184_var_bx, @function
n00184_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00184_var_α:             mov              r11, 283
                        mov              rdi, qword ptr [rip + .Lvar_α_715_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00185_var_α
                        mov              qword ptr [rsp + 96], rax            # result
                        mov              qword ptr [rsp + 104], rdx;          jmp   n00186_assign_α
.Lvar_α_715_0:          .quad            .Lvar_α_715_0_s
.Lvar_α_715_0_s:        .string          "write"
                        .size            n00184_var_bx, .-n00184_var_bx
                        .type            n00186_assign_bx, @function
n00186_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00186_assign_α:          mov              r11, 284
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
                        mov              qword ptr [r9 + 32], rax             # Save__
                        mov              qword ptr [r9 + 40], rdx;            jmp   n00185_var_α
                        .size            n00186_assign_bx, .-n00186_assign_bx
                        .type            n00185_var_bx, @function
n00185_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00185_var_α:             mov              r11, 285
                        mov              rdi, qword ptr [rip + .Lvar_α_717_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00187_lit_integer_α
                        mov              qword ptr [rsp + 80], rax            # result
                        mov              qword ptr [rsp + 88], rdx;           jmp   n00188_assign_α
.Lvar_α_717_0:          .quad            .Lvar_α_717_0_s
.Lvar_α_717_0_s:        .string          "writes"
                        .size            n00185_var_bx, .-n00185_var_bx
                        .type            n00188_assign_bx, @function
n00188_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00188_assign_α:          mov              r11, 286
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
                        mov              qword ptr [r9 + 48], rax             # Saves__
                        mov              qword ptr [r9 + 56], rdx;            jmp   n00187_lit_integer_α
                        .size            n00188_assign_bx, .-n00188_assign_bx
                        .type            n00187_lit_integer_bx, @function
n00187_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00187_lit_integer_α:     mov              r11, 287
                        mov              qword ptr [rsp + 64], 3              # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_719_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n00189_assign_α
.Llit_integer_α_719_0:  .quad            1
                        .size            n00187_lit_integer_bx, .-n00187_lit_integer_bx
                        .type            n00189_assign_bx, @function
n00189_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00189_assign_α:          mov              r11, 288
                        mov              rsi, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        mov              rdi, qword ptr [rip + .Lassign_α_720_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00190_assign_α
.Lassign_α_720_0:       .quad            .Lassign_α_720_0_s
.Lassign_α_720_0_s:     .string          "writes"
                        .size            n00189_assign_bx, .-n00189_assign_bx
                        .type            n00190_assign_bx, @function
n00190_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00190_assign_α:          mov              r11, 289
                        mov              rsi, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              rdi, qword ptr [rip + .Lassign_α_721_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00191_return_α
.Lassign_α_721_0:       .quad            .Lassign_α_721_0_s
.Lassign_α_721_0_s:     .string          "write"
                        .size            n00190_assign_bx, .-n00190_assign_bx
                        .type            n00191_return_bx, @function
n00191_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00191_return_α:          mov              r11, 290
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8];            jmp   Init___γ
                        .size            n00191_return_bx, .-n00191_return_bx
                        .type            n00192_conjunction_bx, @function
n00192_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00192_conjunction_α:     mov              r11, 291;                            jmp   .Ldisjunction_γ_689_as
n00192_conjunction_β:     mov              r11, 291;                            jmp   n00184_var_α
                        .size            n00192_conjunction_bx, .-n00192_conjunction_bx
                        .type            n00183_lit_string_bx, @function
n00183_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00183_lit_string_α:      mov              r11, 292
                        mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_724_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n00193_call_icon_α
n00183_lit_string_β:      mov              r11, 292;                            jmp   .Ldisjunction_ω_689_af
.Llit_string_α_724_0:   .quad            .Llit_string_α_724_0_s
.Llit_string_α_724_0_s: .string          "OUTPUT"
                        .size            n00183_lit_string_bx, .-n00183_lit_string_bx
                        .type            n00193_call_icon_bx, @function
n00193_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00193_call_icon_α:       mov              r11, 293
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 264], rax
                        .section         .rodata
.Lcall_icon_α_rkfn726:  .string          "getenv"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn726]
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_689_af
                                                                              jmp   n00194_lit_string_α
n00193_call_icon_β:       mov              r11, 293;                            jmp   .Ldisjunction_ω_689_af
                        .size            n00193_call_icon_bx, .-n00193_call_icon_bx
                        .type            n00194_lit_string_bx, @function
n00194_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00194_lit_string_α:      mov              r11, 294
                        mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 32
                        mov              rax, qword ptr [rip + .Llit_string_α_727_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n00195_call_icon_α
.Llit_string_α_727_0:   .quad            .Llit_string_α_727_0_s
.Llit_string_α_727_0_s: .string          "*** Benchmarking with output ***"
                        .size            n00194_lit_string_bx, .-n00194_lit_string_bx
                        .type            n00195_call_icon_bx, @function
n00195_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00195_call_icon_α:       mov              r11, 295
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 184], rax
                        .section         .rodata
.Lcall_icon_α_rkfn729:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn729]
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
                        cmp              al, 104;                             je    n00196_return_α
                                                                              jmp   n00196_return_α
n00195_call_icon_β:       mov              r11, 295;                            jmp   n00196_return_α
                        .size            n00195_call_icon_bx, .-n00195_call_icon_bx
                        .type            n00196_return_bx, @function
n00196_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00196_return_α:          mov              r11, 296
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8];            jmp   Init___γ
                        .size            n00196_return_bx, .-n00196_return_bx
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
                        push             rax
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rax
                        add              rsp, 528;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
Init___ω:
                        push             rax
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rax
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
                        lea              rcx, [rip + .LInit___α_731_3]
                        push             rcx
                        lea              rcx, [rip + .LInit___α_731_2]
                        push             rcx;                                 jmp   FN__Init__
.LInit___α_731_2:       add              rsp, 24
                        pop              r12;                                 jmp   r12
.LInit___α_731_3:       add              rsp, 24
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
                        .type            n00197_disjunction_bx, @function
n00197_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00197_disjunction_α:     mov              r11, 297
                        mov              qword ptr [rsp + 272], 0
                        mov              qword ptr [rsp + 280], 0
                        mov              dword ptr [rsp + 288], 0;            jmp   n00198_lit_string_α
.Ldisjunction_γ_732_as: mov              r11, 297
                        mov              eax, dword ptr [rsp + 288]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_750_0
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 280], rax;          jmp   n00199_var_α
.Ldisjunction_α_750_0:                                                        jmp   n00199_var_α
n00197_disjunction_β:     mov              r11, 297
                        mov              eax, dword ptr [rsp + 288];          jmp   n00199_var_α
.Ldisjunction_γ_732_af: mov              r11, 297
.Ldisjunction_ω_732_af: mov              r11, 297
                        add              dword ptr [rsp + 288], 1
                        mov              eax, dword ptr [rsp + 288];          jmp   n00199_var_α
                        .size            n00197_disjunction_bx, .-n00197_disjunction_bx
                        .type            n00198_lit_string_bx, @function
n00198_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00198_lit_string_α:      mov              r11, 298
                        mov              qword ptr [rsp + 448], 2             # result
                        mov              dword ptr [rsp + 452], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_751_0]
                        mov              qword ptr [rsp + 456], rax;          jmp   n00200_call_icon_α
n00198_lit_string_β:      mov              r11, 298;                            jmp   n00201_var_α
.Llit_string_α_751_0:   .quad            .Llit_string_α_751_0_s
.Llit_string_α_751_0_s: .string          "OUTPUT"
                        .size            n00198_lit_string_bx, .-n00198_lit_string_bx
                        .type            n00200_call_icon_bx, @function
n00200_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00200_call_icon_α:       mov              r11, 299
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 424], rax
                        .section         .rodata
.Lcall_icon_α_rkfn753:  .string          "getenv"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn753]
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
                        cmp              al, 104;                             je    n00201_var_α
                                                                              jmp   .Ldisjunction_γ_732_af
n00200_call_icon_β:       mov              r11, 299;                            jmp   n00201_var_α
                        .size            n00200_call_icon_bx, .-n00200_call_icon_bx
                        .type            n00201_var_bx, @function
n00201_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00201_var_α:             mov              r11, 300
                        mov              qword ptr [rsp + 384], 0
                        mov              qword ptr [rsp + 392], 0;            jmp   n00202_var_α
n00201_var_β:             mov              r11, 300;                            jmp   .Ldisjunction_ω_732_af
                        .size            n00201_var_bx, .-n00201_var_bx
                        .type            n00202_var_bx, @function
n00202_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00202_var_α:             mov              r11, 301
                        mov              rax, qword ptr [r9 + 32]             # Save__
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 368], rax           # result
                        mov              qword ptr [rsp + 376], rdx;          jmp   n00203_assign_α
                        .size            n00202_var_bx, .-n00202_var_bx
                        .type            n00203_assign_bx, @function
n00203_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00203_assign_α:          mov              r11, 302
                        mov              rsi, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        mov              rdi, qword ptr [rip + .Lassign_α_756_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00204_var_α
.Lassign_α_756_0:       .quad            .Lassign_α_756_0_s
.Lassign_α_756_0_s:     .string          "write"
                        .size            n00203_assign_bx, .-n00203_assign_bx
                        .type            n00204_var_bx, @function
n00204_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00204_var_α:             mov              r11, 303
                        mov              rax, qword ptr [r9 + 48]             # Saves__
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 336], rax           # result
                        mov              qword ptr [rsp + 344], rdx;          jmp   n00205_assign_α
                        .size            n00204_var_bx, .-n00204_var_bx
                        .type            n00205_assign_bx, @function
n00205_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00205_assign_α:          mov              r11, 304
                        mov              rsi, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
                        mov              rdi, qword ptr [rip + .Lassign_α_758_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00206_conjunction_α
.Lassign_α_758_0:       .quad            .Lassign_α_758_0_s
.Lassign_α_758_0_s:     .string          "writes"
                        .size            n00205_assign_bx, .-n00205_assign_bx
                        .type            n00206_conjunction_bx, @function
n00206_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00206_conjunction_α:     mov              r11, 305
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 312], rax;          jmp   .Ldisjunction_γ_732_as
n00206_conjunction_β:     mov              r11, 305;                            jmp   n00199_var_α
                        .size            n00206_conjunction_bx, .-n00206_conjunction_bx
                        .type            n00199_var_bx, @function
n00199_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00199_var_α:             mov              r11, 306
                        mov              rax, qword ptr [r9 + 64]             # Name__
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 192], rax           # result
                        mov              qword ptr [rsp + 200], rdx;          jmp   n00207_lit_string_α
                        .size            n00199_var_bx, .-n00199_var_bx
                        .type            n00207_lit_string_bx, @function
n00207_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00207_lit_string_α:      mov              r11, 307
                        mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 16
                        mov              rax, qword ptr [rip + .Llit_string_α_761_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n00208_call_proc_staged_α
.Llit_string_α_761_0:   .quad            .Llit_string_α_761_0_s
.Llit_string_α_761_0_s: .string          " elapsed time = "
                        .size            n00207_lit_string_bx, .-n00207_lit_string_bx
                        .type            n00208_call_proc_staged_bx, @function
n00208_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00208_call_proc_staged_α:
                        mov              r11, 308
                        call             Time___dcα;                          jmp   .Lcall_proc_staged_α_763_2
.Lcall_proc_staged_α_763_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_763_29
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
.Lcall_proc_staged_α_763_29:
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n00209_call_proc_staged_α
                                                                              jmp   n00210_call_icon_α
n00208_call_proc_staged_β:
                        mov              r11, 308;                            jmp   n00209_call_proc_staged_α
.Lcall_proc_staged_β_763_0:
                        .quad            .Lcall_proc_staged_β_763_0_s
.Lcall_proc_staged_β_763_0_s:
                        .string          "Time__"
                        .size            n00208_call_proc_staged_bx, .-n00208_call_proc_staged_bx
                        .type            n00210_call_icon_bx, @function
n00210_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00210_call_icon_α:       mov              r11, 309
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
.Lcall_icon_α_rkfn765:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn765]
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
                        cmp              al, 104;                             je    n00209_call_proc_staged_α
                                                                              jmp   n00209_call_proc_staged_α
n00210_call_icon_β:       mov              r11, 309;                            jmp   n00209_call_proc_staged_α
                        .size            n00210_call_icon_bx, .-n00210_call_icon_bx
                        .type            n00209_call_proc_staged_bx, @function
n00209_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00209_call_proc_staged_α:
                        mov              r11, 310
                        call             Regions___dcα;                       jmp   .Lcall_proc_staged_α_767_2
.Lcall_proc_staged_α_767_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_767_29
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
.Lcall_proc_staged_α_767_29:
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n00211_call_proc_staged_α
                                                                              jmp   n00211_call_proc_staged_α
n00209_call_proc_staged_β:
                        mov              r11, 310;                            jmp   n00211_call_proc_staged_α
.Lcall_proc_staged_β_767_0:
                        .quad            .Lcall_proc_staged_β_767_0_s
.Lcall_proc_staged_β_767_0_s:
                        .string          "Regions__"
                        .size            n00209_call_proc_staged_bx, .-n00209_call_proc_staged_bx
                        .type            n00211_call_proc_staged_bx, @function
n00211_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00211_call_proc_staged_α:
                        mov              r11, 311
                        call             Storage___dcα;                       jmp   .Lcall_proc_staged_α_769_2
.Lcall_proc_staged_α_769_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_769_29
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
.Lcall_proc_staged_α_769_29:
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    n00212_call_proc_staged_α
                                                                              jmp   n00212_call_proc_staged_α
n00211_call_proc_staged_β:
                        mov              r11, 311;                            jmp   n00212_call_proc_staged_α
.Lcall_proc_staged_β_769_0:
                        .quad            .Lcall_proc_staged_β_769_0_s
.Lcall_proc_staged_β_769_0_s:
                        .string          "Storage__"
                        .size            n00211_call_proc_staged_bx, .-n00211_call_proc_staged_bx
                        .type            n00212_call_proc_staged_bx, @function
n00212_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00212_call_proc_staged_α:
                        mov              r11, 312
                        call             Collections___dcα;                   jmp   .Lcall_proc_staged_α_771_2
.Lcall_proc_staged_α_771_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_771_29
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
.Lcall_proc_staged_α_771_29:
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    n00213_return_α
                                                                              jmp   n00213_return_α
n00212_call_proc_staged_β:
                        mov              r11, 312;                            jmp   n00213_return_α
.Lcall_proc_staged_β_771_0:
                        .quad            .Lcall_proc_staged_β_771_0_s
.Lcall_proc_staged_β_771_0_s:
                        .string          "Collections__"
                        .size            n00212_call_proc_staged_bx, .-n00212_call_proc_staged_bx
                        .type            n00213_return_bx, @function
n00213_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00213_return_α:          mov              r11, 313
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8];            jmp   Term___γ
                        .size            n00213_return_bx, .-n00213_return_bx
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
                        push             rax
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rax
                        add              rsp, 560;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
Term___ω:
                        push             rax
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rax
                        add              rsp, 560;                            jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
Term___dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .LTerm___α_773_3]
                        push             rcx
                        lea              rcx, [rip + .LTerm___α_773_2]
                        push             rcx;                                 jmp   FN__Term__
.LTerm___α_773_2:       add              rsp, 24
                        pop              r12;                                 jmp   r12
.LTerm___α_773_3:       add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__Collections__:
                        sub              rsp, 1088
                        mov              rdi, rsp
                        add              rdi, 960
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 3
                        call             rt_icn_zframe_args_install@PLT
Collections___α_body:
                        .type            n00214_disjunction_bx, @function
n00214_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00214_disjunction_α:     mov              r11, 314
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              dword ptr [rsp + 656], 0;            jmp   n00215_var_ref_α
.Ldisjunction_γ_774_as: mov              r11, 314
                        mov              eax, dword ptr [rsp + 656]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_812_0
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 648], rax;          jmp   n00216_make_list_α
.Ldisjunction_α_812_0:                                                        jmp   n00216_make_list_α
n00214_disjunction_β:     mov              r11, 314
                        mov              eax, dword ptr [rsp + 656];          jmp   n00216_make_list_α
.Ldisjunction_γ_774_af: mov              r11, 314
.Ldisjunction_ω_774_af: mov              r11, 314
                        add              dword ptr [rsp + 656], 1
                        mov              eax, dword ptr [rsp + 656];          jmp   n00216_make_list_α
                        .size            n00214_disjunction_bx, .-n00214_disjunction_bx
                        .type            n00216_make_list_bx, @function
n00216_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00216_make_list_α:       mov              r11, 315
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
                        mov              qword ptr [rsp + 632], rdx;          jmp   n00217_assign_α
                        .size            n00216_make_list_bx, .-n00216_make_list_bx
                        .type            n00217_assign_bx, @function
n00217_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00217_assign_α:          mov              r11, 316
                        mov              rax, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx;          jmp   n00218_var_α
                        .size            n00217_assign_bx, .-n00217_assign_bx
                        .type            n00218_var_bx, @function
n00218_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00218_var_α:             mov              r11, 317
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 584], rax;          jmp   n00219_kw_icon_gen_α
                        .size            n00218_var_bx, .-n00218_var_bx
                        .type            n00219_kw_icon_gen_bx, @function
n00219_kw_icon_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00219_kw_icon_gen_α:     mov              r11, 318
                        mov              qword ptr [rsp + 608], 0
.Lkw_icon_gen_α_818_1:  mov              rdi, qword ptr [rip + .Lkw_icon_gen_α_818_0]
                        mov              rsi, qword ptr [rsp + 608]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00220_lit_string_α
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        mov              rax, qword ptr [rsp + 608]
                        add              rax, 1
                        mov              qword ptr [rsp + 608], rax;          jmp   n00221_call_icon_α
n00219_kw_icon_gen_β:     mov              r11, 318;                            jmp   .Lkw_icon_gen_α_818_1
.Lkw_icon_gen_α_818_0:  .quad            .Lkw_icon_gen_α_818_0_s
.Lkw_icon_gen_α_818_0_s:
                        .string          "&collections"
                        .size            n00219_kw_icon_gen_bx, .-n00219_kw_icon_gen_bx
                        .type            n00221_call_icon_bx, @function
n00221_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00221_call_icon_α:       mov              r11, 319
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 552], rax
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 536], rax
                        .section         .rodata
.Lcall_icon_α_rkfn820:  .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn820]
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
                        cmp              al, 104;                             je    n00219_kw_icon_gen_β
                                                                              jmp   n00219_kw_icon_gen_β
n00221_call_icon_β:       mov              r11, 319;                            jmp   n00219_kw_icon_gen_β
                        .size            n00221_call_icon_bx, .-n00221_call_icon_bx
                        .type            n00220_lit_string_bx, @function
n00220_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00220_lit_string_α:      mov              r11, 320
                        mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 11
                        mov              rax, qword ptr [rip + .Llit_string_α_821_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n00222_call_icon_α
.Llit_string_α_821_0:   .quad            .Llit_string_α_821_0_s
.Llit_string_α_821_0_s: .string          "collections"
                        .size            n00220_lit_string_bx, .-n00220_lit_string_bx
                        .type            n00222_call_icon_bx, @function
n00222_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00222_call_icon_α:       mov              r11, 321
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 456], rax
                        .section         .rodata
.Lcall_icon_α_rkfn823:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn823]
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
                        cmp              al, 104;                             je    n00223_lit_integer_α
                                                                              jmp   n00223_lit_integer_α
n00222_call_icon_β:       mov              r11, 321;                            jmp   n00223_lit_integer_α
                        .size            n00222_call_icon_bx, .-n00222_call_icon_bx
                        .type            n00223_lit_integer_bx, @function
n00223_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00223_lit_integer_α:     mov              r11, 322
                        mov              qword ptr [rsp + 64], 3              # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_824_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n00224_var_α
.Llit_integer_α_824_0:  .quad            1
                        .size            n00223_lit_integer_bx, .-n00223_lit_integer_bx
                        .type            n00224_var_bx, @function
n00224_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00224_var_α:             mov              r11, 323
                        mov              rax, qword ptr [r9 + 208]            # Collections____STATIC__labels
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 96], rax            # result
                        mov              qword ptr [rsp + 104], rdx;          jmp   n00225_unop_α
                        .size            n00224_var_bx, .-n00224_var_bx
                        .type            n00225_unop_bx, @function
n00225_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00225_unop_α:            mov              r11, 324
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
                        mov              qword ptr [rsp + 88], rdx;           jmp   n00226_to_α
                        .size            n00225_unop_bx, .-n00225_unop_bx
                        .type            n00226_to_bx, @function
n00226_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00226_to_α:              mov              r11, 325
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
.Lto_α_828_0:           mov              rax, qword ptr [rsp + 48]
                        mov              rcx, qword ptr [rsp + 88]
                        cmp              rax, rcx;                            jg    n00227_return_α
                        mov              qword ptr [rsp + 32], 3
                        mov              qword ptr [rsp + 40], rax;           jmp   n00228_assign_α
n00226_to_β:              mov              r11, 325
                        inc              qword ptr [rsp + 48];                jmp   .Lto_α_828_0
                        .size            n00226_to_bx, .-n00226_to_bx
                        .type            n00228_assign_bx, @function
n00228_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00228_assign_α:          mov              r11, 326
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx;          jmp   n00229_bound_α
                        .size            n00228_assign_bx, .-n00228_assign_bx
                        .type            n00229_bound_bx, @function
n00229_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00229_bound_α:           mov              r11, 327
                        mov              qword ptr [rsp + 112], rsp;          jmp   n00230_var_ref_α
                        .size            n00229_bound_bx, .-n00229_bound_bx
                        .type            n00230_var_ref_bx, @function
n00230_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00230_var_ref_α:         mov              r11, 328
                        mov              rax, 4294967336
                        mov              rdx, 1879052496                      # Collections____STATIC__labels
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n00231_var_α
                        .size            n00230_var_ref_bx, .-n00230_var_ref_bx
                        .type            n00231_var_bx, @function
n00231_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00231_var_α:             mov              r11, 329
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 248], rax;          jmp   n00232_subscript_α
                        .size            n00231_var_bx, .-n00231_var_bx
                        .type            n00232_subscript_bx, @function
n00232_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00232_subscript_α:       mov              r11, 330
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
                        cmp              al, 104;                             je    n00233_unmark_α
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n00234_deref_α
                        .size            n00232_subscript_bx, .-n00232_subscript_bx
                        .type            n00234_deref_bx, @function
n00234_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00234_deref_α:           mov              r11, 331
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
                        cmp              al, 104;                             je    n00233_unmark_α
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n00235_var_ref_α
                        .size            n00234_deref_bx, .-n00234_deref_bx
                        .type            n00235_var_ref_bx, @function
n00235_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00235_var_ref_α:         mov              r11, 332
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 976]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n00236_var_α
                        .size            n00235_var_ref_bx, .-n00235_var_ref_bx
                        .type            n00236_var_bx, @function
n00236_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00236_var_α:             mov              r11, 333
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 376], rax;          jmp   n00237_subscript_α
                        .size            n00236_var_bx, .-n00236_var_bx
                        .type            n00237_subscript_bx, @function
n00237_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00237_subscript_α:       mov              r11, 334
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
                        cmp              al, 104;                             je    n00233_unmark_α
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n00238_deref_α
                        .size            n00237_subscript_bx, .-n00237_subscript_bx
                        .type            n00238_deref_bx, @function
n00238_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00238_deref_α:           mov              r11, 335
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
                        cmp              al, 104;                             je    n00233_unmark_α
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n00239_lit_integer_α
                        .size            n00238_deref_bx, .-n00238_deref_bx
                        .type            n00239_lit_integer_bx, @function
n00239_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00239_lit_integer_α:     mov              r11, 336
                        mov              qword ptr [rsp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_844_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n00240_call_icon_α
.Llit_integer_α_844_0:  .quad            8
                        .size            n00239_lit_integer_bx, .-n00239_lit_integer_bx
                        .type            n00240_call_icon_bx, @function
n00240_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00240_call_icon_α:       mov              r11, 337
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 312], rax
                        .section         .rodata
.Lcall_icon_α_rkfn846:  .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn846]
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
                        cmp              al, 104;                             je    n00233_unmark_α
                                                                              jmp   n00241_call_icon_α
n00240_call_icon_β:       mov              r11, 337;                            jmp   n00233_unmark_α
                        .size            n00240_call_icon_bx, .-n00240_call_icon_bx
                        .type            n00241_call_icon_bx, @function
n00241_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00241_call_icon_α:       mov              r11, 338
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 184], rax
                        .section         .rodata
.Lcall_icon_α_rkfn848:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn848]
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
                        cmp              al, 104;                             je    n00233_unmark_α
                                                                              jmp   n00233_unmark_α
n00241_call_icon_β:       mov              r11, 338;                            jmp   n00233_unmark_α
                        .size            n00241_call_icon_bx, .-n00241_call_icon_bx
                        .type            n00233_unmark_bx, @function
n00233_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00233_unmark_α:          mov              r11, 339
                        mov              rsp, qword ptr [rsp + 112];          jmp   n00226_to_β
                        .size            n00233_unmark_bx, .-n00233_unmark_bx
                        .type            n00227_return_bx, @function
n00227_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00227_return_α:          mov              r11, 340
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8];            jmp   Collections___γ
                        .size            n00227_return_bx, .-n00227_return_bx
                        .type            n00215_var_ref_bx, @function
n00215_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00215_var_ref_α:         mov              r11, 341
                        mov              rax, 4294967336
                        mov              rdx, 1879052512                      # Collections____INITFLAG__0
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx;          jmp   n00242_nulltest_var_α
n00215_var_ref_β:         mov              r11, 341;                            jmp   .Ldisjunction_ω_774_af
                        .size            n00215_var_ref_bx, .-n00215_var_ref_bx
                        .type            n00242_nulltest_var_bx, @function
n00242_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00242_nulltest_var_α:    mov              r11, 342
                        mov              eax, dword ptr [rsp + 896]
                        cmp              al, 104;                             je    .Ldisjunction_ω_774_af
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_774_af
                        cmp              eax, 0;                              jne   .Ldisjunction_ω_774_af
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 920], rax;          jmp   n00243_lit_integer_α
                        .size            n00242_nulltest_var_bx, .-n00242_nulltest_var_bx
                        .type            n00243_lit_integer_bx, @function
n00243_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00243_lit_integer_α:     mov              r11, 343
                        mov              qword ptr [rsp + 944], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_855_0]
                        mov              qword ptr [rsp + 952], rax;          jmp   n00244_assign_var_α
.Llit_integer_α_855_0:  .quad            1
                        .size            n00243_lit_integer_bx, .-n00243_lit_integer_bx
                        .type            n00244_assign_var_bx, @function
n00244_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00244_assign_var_α:      mov              r11, 344
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_774_af
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx;          jmp   n00245_lit_string_α
                        .size            n00244_assign_var_bx, .-n00244_assign_var_bx
                        .type            n00245_lit_string_bx, @function
n00245_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00245_lit_string_α:      mov              r11, 345
                        mov              qword ptr [rsp + 768], 2             # result
                        mov              dword ptr [rsp + 772], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_857_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n00246_lit_string_α
.Llit_string_α_857_0:   .quad            .Llit_string_α_857_0_s
.Llit_string_α_857_0_s: .string          "total"
                        .size            n00245_lit_string_bx, .-n00245_lit_string_bx
                        .type            n00246_lit_string_bx, @function
n00246_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00246_lit_string_α:      mov              r11, 346
                        mov              qword ptr [rsp + 800], 2             # result
                        mov              dword ptr [rsp + 804], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_858_0]
                        mov              qword ptr [rsp + 808], rax;          jmp   n00247_lit_string_α
.Llit_string_α_858_0:   .quad            .Llit_string_α_858_0_s
.Llit_string_α_858_0_s: .string          "static"
                        .size            n00246_lit_string_bx, .-n00246_lit_string_bx
                        .type            n00247_lit_string_bx, @function
n00247_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00247_lit_string_α:      mov              r11, 347
                        mov              qword ptr [rsp + 832], 2             # result
                        mov              dword ptr [rsp + 836], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_859_0]
                        mov              qword ptr [rsp + 840], rax;          jmp   n00248_lit_string_α
.Llit_string_α_859_0:   .quad            .Llit_string_α_859_0_s
.Llit_string_α_859_0_s: .string          "string"
                        .size            n00247_lit_string_bx, .-n00247_lit_string_bx
                        .type            n00248_lit_string_bx, @function
n00248_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00248_lit_string_α:      mov              r11, 348
                        mov              qword ptr [rsp + 864], 2             # result
                        mov              dword ptr [rsp + 868], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_860_0]
                        mov              qword ptr [rsp + 872], rax;          jmp   n00249_make_list_α
.Llit_string_α_860_0:   .quad            .Llit_string_α_860_0_s
.Llit_string_α_860_0_s: .string          "block"
                        .size            n00248_lit_string_bx, .-n00248_lit_string_bx
                        .type            n00249_make_list_bx, @function
n00249_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00249_make_list_α:       mov              r11, 349
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
                        mov              qword ptr [rsp + 696], rdx;          jmp   n00250_assign_α
                        .size            n00249_make_list_bx, .-n00249_make_list_bx
                        .type            n00250_assign_bx, @function
n00250_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00250_assign_α:          mov              r11, 350
                        mov              rax, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
                        mov              qword ptr [r9 + 208], rax            # Collections____STATIC__labels
                        mov              qword ptr [r9 + 216], rdx
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   .Ldisjunction_γ_774_as
n00250_assign_β:          mov              r11, 350;                            jmp   n00216_make_list_α
                        .size            n00250_assign_bx, .-n00250_assign_bx
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
                        push             rax
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rax
                        add              rsp, 1088;                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
Collections___ω:
                        push             rax
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rax
                        add              rsp, 1088;                           jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
Collections___dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .LCollections___α_864_3]
                        push             rcx
                        lea              rcx, [rip + .LCollections___α_864_2]
                        push             rcx;                                 jmp   FN__Collections__
.LCollections___α_864_2:
                        add              rsp, 24
                        pop              r12;                                 jmp   r12
.LCollections___α_864_3:
                        add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__Regions__:
                        sub              rsp, 1040
                        mov              rdi, rsp
                        add              rdi, 912
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 3
                        call             rt_icn_zframe_args_install@PLT
Regions___α_body:
                        .type            n00251_disjunction_bx, @function
n00251_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00251_disjunction_α:     mov              r11, 351
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              dword ptr [rsp + 656], 0;            jmp   n00252_var_ref_α
.Ldisjunction_γ_865_as: mov              r11, 351
                        mov              eax, dword ptr [rsp + 656]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_902_0
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 648], rax;          jmp   n00253_make_list_α
.Ldisjunction_α_902_0:                                                        jmp   n00253_make_list_α
n00251_disjunction_β:     mov              r11, 351
                        mov              eax, dword ptr [rsp + 656];          jmp   n00253_make_list_α
.Ldisjunction_γ_865_af: mov              r11, 351
.Ldisjunction_ω_865_af: mov              r11, 351
                        add              dword ptr [rsp + 656], 1
                        mov              eax, dword ptr [rsp + 656];          jmp   n00253_make_list_α
                        .size            n00251_disjunction_bx, .-n00251_disjunction_bx
                        .type            n00253_make_list_bx, @function
n00253_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00253_make_list_α:       mov              r11, 352
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
                        mov              qword ptr [rsp + 632], rdx;          jmp   n00254_assign_α
                        .size            n00253_make_list_bx, .-n00253_make_list_bx
                        .type            n00254_assign_bx, @function
n00254_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00254_assign_α:          mov              r11, 353
                        mov              rax, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx;          jmp   n00255_var_α
                        .size            n00254_assign_bx, .-n00254_assign_bx
                        .type            n00255_var_bx, @function
n00255_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00255_var_α:             mov              r11, 354
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 584], rax;          jmp   n00256_kw_icon_gen_α
                        .size            n00255_var_bx, .-n00255_var_bx
                        .type            n00256_kw_icon_gen_bx, @function
n00256_kw_icon_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00256_kw_icon_gen_α:     mov              r11, 355
                        mov              qword ptr [rsp + 608], 0
.Lkw_icon_gen_α_908_1:  mov              rdi, qword ptr [rip + .Lkw_icon_gen_α_908_0]
                        mov              rsi, qword ptr [rsp + 608]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00257_lit_string_α
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        mov              rax, qword ptr [rsp + 608]
                        add              rax, 1
                        mov              qword ptr [rsp + 608], rax;          jmp   n00258_call_icon_α
n00256_kw_icon_gen_β:     mov              r11, 355;                            jmp   .Lkw_icon_gen_α_908_1
.Lkw_icon_gen_α_908_0:  .quad            .Lkw_icon_gen_α_908_0_s
.Lkw_icon_gen_α_908_0_s:
                        .string          "&regions"
                        .size            n00256_kw_icon_gen_bx, .-n00256_kw_icon_gen_bx
                        .type            n00258_call_icon_bx, @function
n00258_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00258_call_icon_α:       mov              r11, 356
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 552], rax
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 536], rax
                        .section         .rodata
.Lcall_icon_α_rkfn910:  .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn910]
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
                        cmp              al, 104;                             je    n00256_kw_icon_gen_β
                                                                              jmp   n00256_kw_icon_gen_β
n00258_call_icon_β:       mov              r11, 356;                            jmp   n00256_kw_icon_gen_β
                        .size            n00258_call_icon_bx, .-n00258_call_icon_bx
                        .type            n00257_lit_string_bx, @function
n00257_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00257_lit_string_α:      mov              r11, 357
                        mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 7
                        mov              rax, qword ptr [rip + .Llit_string_α_911_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n00259_call_icon_α
.Llit_string_α_911_0:   .quad            .Llit_string_α_911_0_s
.Llit_string_α_911_0_s: .string          "regions"
                        .size            n00257_lit_string_bx, .-n00257_lit_string_bx
                        .type            n00259_call_icon_bx, @function
n00259_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00259_call_icon_α:       mov              r11, 358
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 456], rax
                        .section         .rodata
.Lcall_icon_α_rkfn913:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn913]
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
                        cmp              al, 104;                             je    n00260_lit_integer_α
                                                                              jmp   n00260_lit_integer_α
n00259_call_icon_β:       mov              r11, 358;                            jmp   n00260_lit_integer_α
                        .size            n00259_call_icon_bx, .-n00259_call_icon_bx
                        .type            n00260_lit_integer_bx, @function
n00260_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00260_lit_integer_α:     mov              r11, 359
                        mov              qword ptr [rsp + 64], 3              # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_914_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n00261_var_α
.Llit_integer_α_914_0:  .quad            1
                        .size            n00260_lit_integer_bx, .-n00260_lit_integer_bx
                        .type            n00261_var_bx, @function
n00261_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00261_var_α:             mov              r11, 360
                        mov              rax, qword ptr [r9 + 240]            # Regions____STATIC__labels
                        mov              rdx, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 96], rax            # result
                        mov              qword ptr [rsp + 104], rdx;          jmp   n00262_unop_α
                        .size            n00261_var_bx, .-n00261_var_bx
                        .type            n00262_unop_bx, @function
n00262_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00262_unop_α:            mov              r11, 361
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
                        mov              qword ptr [rsp + 88], rdx;           jmp   n00263_to_α
                        .size            n00262_unop_bx, .-n00262_unop_bx
                        .type            n00263_to_bx, @function
n00263_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00263_to_α:              mov              r11, 362
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
.Lto_α_918_0:           mov              rax, qword ptr [rsp + 48]
                        mov              rcx, qword ptr [rsp + 88]
                        cmp              rax, rcx;                            jg    n00264_return_α
                        mov              qword ptr [rsp + 32], 3
                        mov              qword ptr [rsp + 40], rax;           jmp   n00265_assign_α
n00263_to_β:              mov              r11, 362
                        inc              qword ptr [rsp + 48];                jmp   .Lto_α_918_0
                        .size            n00263_to_bx, .-n00263_to_bx
                        .type            n00265_assign_bx, @function
n00265_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00265_assign_α:          mov              r11, 363
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx;          jmp   n00266_bound_α
                        .size            n00265_assign_bx, .-n00265_assign_bx
                        .type            n00266_bound_bx, @function
n00266_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00266_bound_α:           mov              r11, 364
                        mov              qword ptr [rsp + 112], rsp;          jmp   n00267_var_ref_α
                        .size            n00266_bound_bx, .-n00266_bound_bx
                        .type            n00267_var_ref_bx, @function
n00267_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00267_var_ref_α:         mov              r11, 365
                        mov              rax, 4294967336
                        mov              rdx, 1879052528                      # Regions____STATIC__labels
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n00268_var_α
                        .size            n00267_var_ref_bx, .-n00267_var_ref_bx
                        .type            n00268_var_bx, @function
n00268_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00268_var_α:             mov              r11, 366
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 248], rax;          jmp   n00269_subscript_α
                        .size            n00268_var_bx, .-n00268_var_bx
                        .type            n00269_subscript_bx, @function
n00269_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00269_subscript_α:       mov              r11, 367
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
                        cmp              al, 104;                             je    n00270_unmark_α
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n00271_deref_α
                        .size            n00269_subscript_bx, .-n00269_subscript_bx
                        .type            n00271_deref_bx, @function
n00271_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00271_deref_α:           mov              r11, 368
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
                        cmp              al, 104;                             je    n00270_unmark_α
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n00272_var_ref_α
                        .size            n00271_deref_bx, .-n00271_deref_bx
                        .type            n00272_var_ref_bx, @function
n00272_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00272_var_ref_α:         mov              r11, 369
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 928]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n00273_var_α
                        .size            n00272_var_ref_bx, .-n00272_var_ref_bx
                        .type            n00273_var_bx, @function
n00273_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00273_var_α:             mov              r11, 370
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 376], rax;          jmp   n00274_subscript_α
                        .size            n00273_var_bx, .-n00273_var_bx
                        .type            n00274_subscript_bx, @function
n00274_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00274_subscript_α:       mov              r11, 371
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
                        cmp              al, 104;                             je    n00270_unmark_α
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n00275_deref_α
                        .size            n00274_subscript_bx, .-n00274_subscript_bx
                        .type            n00275_deref_bx, @function
n00275_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00275_deref_α:           mov              r11, 372
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
                        cmp              al, 104;                             je    n00270_unmark_α
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n00276_lit_integer_α
                        .size            n00275_deref_bx, .-n00275_deref_bx
                        .type            n00276_lit_integer_bx, @function
n00276_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00276_lit_integer_α:     mov              r11, 373
                        mov              qword ptr [rsp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_934_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n00277_call_icon_α
.Llit_integer_α_934_0:  .quad            8
                        .size            n00276_lit_integer_bx, .-n00276_lit_integer_bx
                        .type            n00277_call_icon_bx, @function
n00277_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00277_call_icon_α:       mov              r11, 374
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 312], rax
                        .section         .rodata
.Lcall_icon_α_rkfn936:  .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn936]
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
                        cmp              al, 104;                             je    n00270_unmark_α
                                                                              jmp   n00278_call_icon_α
n00277_call_icon_β:       mov              r11, 374;                            jmp   n00270_unmark_α
                        .size            n00277_call_icon_bx, .-n00277_call_icon_bx
                        .type            n00278_call_icon_bx, @function
n00278_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00278_call_icon_α:       mov              r11, 375
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 184], rax
                        .section         .rodata
.Lcall_icon_α_rkfn938:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn938]
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
                        cmp              al, 104;                             je    n00270_unmark_α
                                                                              jmp   n00270_unmark_α
n00278_call_icon_β:       mov              r11, 375;                            jmp   n00270_unmark_α
                        .size            n00278_call_icon_bx, .-n00278_call_icon_bx
                        .type            n00270_unmark_bx, @function
n00270_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00270_unmark_α:          mov              r11, 376
                        mov              rsp, qword ptr [rsp + 112];          jmp   n00263_to_β
                        .size            n00270_unmark_bx, .-n00270_unmark_bx
                        .type            n00264_return_bx, @function
n00264_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00264_return_α:          mov              r11, 377
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8];            jmp   Regions___γ
                        .size            n00264_return_bx, .-n00264_return_bx
                        .type            n00252_var_ref_bx, @function
n00252_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00252_var_ref_α:         mov              r11, 378
                        mov              rax, 4294967336
                        mov              rdx, 1879052544                      # Regions____INITFLAG__0
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx;          jmp   n00279_nulltest_var_α
n00252_var_ref_β:         mov              r11, 378;                            jmp   .Ldisjunction_ω_865_af
                        .size            n00252_var_ref_bx, .-n00252_var_ref_bx
                        .type            n00279_nulltest_var_bx, @function
n00279_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00279_nulltest_var_α:    mov              r11, 379
                        mov              eax, dword ptr [rsp + 848]
                        cmp              al, 104;                             je    .Ldisjunction_ω_865_af
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_865_af
                        cmp              eax, 0;                              jne   .Ldisjunction_ω_865_af
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 872], rax;          jmp   n00280_lit_integer_α
                        .size            n00279_nulltest_var_bx, .-n00279_nulltest_var_bx
                        .type            n00280_lit_integer_bx, @function
n00280_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00280_lit_integer_α:     mov              r11, 380
                        mov              qword ptr [rsp + 896], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_945_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n00281_assign_var_α
.Llit_integer_α_945_0:  .quad            1
                        .size            n00280_lit_integer_bx, .-n00280_lit_integer_bx
                        .type            n00281_assign_var_bx, @function
n00281_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00281_assign_var_α:      mov              r11, 381
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_865_af
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n00282_lit_string_α
                        .size            n00281_assign_var_bx, .-n00281_assign_var_bx
                        .type            n00282_lit_string_bx, @function
n00282_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00282_lit_string_α:      mov              r11, 382
                        mov              qword ptr [rsp + 752], 2             # result
                        mov              dword ptr [rsp + 756], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_947_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n00283_lit_string_α
.Llit_string_α_947_0:   .quad            .Llit_string_α_947_0_s
.Llit_string_α_947_0_s: .string          "static"
                        .size            n00282_lit_string_bx, .-n00282_lit_string_bx
                        .type            n00283_lit_string_bx, @function
n00283_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00283_lit_string_α:      mov              r11, 383
                        mov              qword ptr [rsp + 784], 2             # result
                        mov              dword ptr [rsp + 788], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_948_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n00284_lit_string_α
.Llit_string_α_948_0:   .quad            .Llit_string_α_948_0_s
.Llit_string_α_948_0_s: .string          "string"
                        .size            n00283_lit_string_bx, .-n00283_lit_string_bx
                        .type            n00284_lit_string_bx, @function
n00284_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00284_lit_string_α:      mov              r11, 384
                        mov              qword ptr [rsp + 816], 2             # result
                        mov              dword ptr [rsp + 820], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_949_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n00285_make_list_α
.Llit_string_α_949_0:   .quad            .Llit_string_α_949_0_s
.Llit_string_α_949_0_s: .string          "block"
                        .size            n00284_lit_string_bx, .-n00284_lit_string_bx
                        .type            n00285_make_list_bx, @function
n00285_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00285_make_list_α:       mov              r11, 385
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
                        mov              qword ptr [rsp + 696], rdx;          jmp   n00286_assign_α
                        .size            n00285_make_list_bx, .-n00285_make_list_bx
                        .type            n00286_assign_bx, @function
n00286_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00286_assign_α:          mov              r11, 386
                        mov              rax, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
                        mov              qword ptr [r9 + 240], rax            # Regions____STATIC__labels
                        mov              qword ptr [r9 + 248], rdx
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   .Ldisjunction_γ_865_as
n00286_assign_β:          mov              r11, 386;                            jmp   n00253_make_list_α
                        .size            n00286_assign_bx, .-n00286_assign_bx
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
                        push             rax
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rax
                        add              rsp, 1040;                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
Regions___ω:
                        push             rax
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rax
                        add              rsp, 1040;                           jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
Regions___dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .LRegions___α_953_3]
                        push             rcx
                        lea              rcx, [rip + .LRegions___α_953_2]
                        push             rcx;                                 jmp   FN__Regions__
.LRegions___α_953_2:    add              rsp, 24
                        pop              r12;                                 jmp   r12
.LRegions___α_953_3:    add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__Signature__:
                        sub              rsp, 352
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 3
                        call             rt_icn_zframe_args_install@PLT
Signature___α_body:
                        .type            n00287_kw_icon_bx, @function
n00287_kw_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00287_kw_icon_α:         mov              r11, 387
                        mov              rdi, qword ptr [rip + .Lkw_icon_α_961_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00288_kw_icon_α
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n00289_call_icon_α
n00287_kw_icon_β:         mov              r11, 387;                            jmp   n00288_kw_icon_α
.Lkw_icon_α_961_0:      .quad            .Lkw_icon_α_961_0_s
.Lkw_icon_α_961_0_s:    .string          "&version"
                        .size            n00287_kw_icon_bx, .-n00287_kw_icon_bx
                        .type            n00289_call_icon_bx, @function
n00289_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00289_call_icon_α:       mov              r11, 388
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 200], rax
                        .section         .rodata
.Lcall_icon_α_rkfn963:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn963]
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
                        cmp              al, 104;                             je    n00288_kw_icon_α
                                                                              jmp   n00288_kw_icon_α
n00289_call_icon_β:       mov              r11, 388;                            jmp   n00288_kw_icon_α
                        .size            n00289_call_icon_bx, .-n00289_call_icon_bx
                        .type            n00288_kw_icon_bx, @function
n00288_kw_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00288_kw_icon_α:         mov              r11, 389
                        mov              rdi, qword ptr [rip + .Lkw_icon_α_964_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00290_kw_icon_gen_α
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx;          jmp   n00291_call_icon_α
n00288_kw_icon_β:         mov              r11, 389;                            jmp   n00290_kw_icon_gen_α
.Lkw_icon_α_964_0:      .quad            .Lkw_icon_α_964_0_s
.Lkw_icon_α_964_0_s:    .string          "&host"
                        .size            n00288_kw_icon_bx, .-n00288_kw_icon_bx
                        .type            n00291_call_icon_bx, @function
n00291_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00291_call_icon_α:       mov              r11, 390
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lcall_icon_α_rkfn966:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn966]
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
                        cmp              al, 104;                             je    n00290_kw_icon_gen_α
                                                                              jmp   n00290_kw_icon_gen_α
n00291_call_icon_β:       mov              r11, 390;                            jmp   n00290_kw_icon_gen_α
                        .size            n00291_call_icon_bx, .-n00291_call_icon_bx
                        .type            n00290_kw_icon_gen_bx, @function
n00290_kw_icon_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00290_kw_icon_gen_α:     mov              r11, 391
                        mov              qword ptr [rsp + 80], 0
.Lkw_icon_gen_α_967_1:  mov              rdi, qword ptr [rip + .Lkw_icon_gen_α_967_0]
                        mov              rsi, qword ptr [rsp + 80]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00292_return_α
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        mov              rax, qword ptr [rsp + 80]
                        add              rax, 1
                        mov              qword ptr [rsp + 80], rax;           jmp   n00293_call_icon_α
n00290_kw_icon_gen_β:     mov              r11, 391;                            jmp   .Lkw_icon_gen_α_967_1
.Lkw_icon_gen_α_967_0:  .quad            .Lkw_icon_gen_α_967_0_s
.Lkw_icon_gen_α_967_0_s:
                        .string          "&features"
                        .size            n00290_kw_icon_gen_bx, .-n00290_kw_icon_gen_bx
                        .type            n00293_call_icon_bx, @function
n00293_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00293_call_icon_α:       mov              r11, 392
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lcall_icon_α_rkfn969:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn969]
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
                        cmp              al, 104;                             je    n00290_kw_icon_gen_β
                                                                              jmp   n00290_kw_icon_gen_β
n00293_call_icon_β:       mov              r11, 392;                            jmp   n00290_kw_icon_gen_β
                        .size            n00293_call_icon_bx, .-n00293_call_icon_bx
                        .type            n00292_return_bx, @function
n00292_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00292_return_α:          mov              r11, 393
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8];            jmp   Signature___γ
                        .size            n00292_return_bx, .-n00292_return_bx
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
                        push             rax
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rax
                        add              rsp, 352;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
Signature___ω:
                        push             rax
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rax
                        add              rsp, 352;                            jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
Signature___dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .LSignature___α_971_3]
                        push             rcx
                        lea              rcx, [rip + .LSignature___α_971_2]
                        push             rcx;                                 jmp   FN__Signature__
.LSignature___α_971_2:  add              rsp, 24
                        pop              r12;                                 jmp   r12
.LSignature___α_971_3:  add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__Storage__:
                        sub              rsp, 1040
                        mov              rdi, rsp
                        add              rdi, 912
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 3
                        call             rt_icn_zframe_args_install@PLT
Storage___α_body:
                        .type            n00294_disjunction_bx, @function
n00294_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00294_disjunction_α:     mov              r11, 394
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              dword ptr [rsp + 656], 0;            jmp   n00295_var_ref_α
.Ldisjunction_γ_972_as: mov              r11, 394
                        mov              eax, dword ptr [rsp + 656]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_1009_0
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 648], rax;          jmp   n00296_make_list_α
.Ldisjunction_α_1009_0:                                                       jmp   n00296_make_list_α
n00294_disjunction_β:     mov              r11, 394
                        mov              eax, dword ptr [rsp + 656];          jmp   n00296_make_list_α
.Ldisjunction_γ_972_af: mov              r11, 394
.Ldisjunction_ω_972_af: mov              r11, 394
                        add              dword ptr [rsp + 656], 1
                        mov              eax, dword ptr [rsp + 656];          jmp   n00296_make_list_α
                        .size            n00294_disjunction_bx, .-n00294_disjunction_bx
                        .type            n00296_make_list_bx, @function
n00296_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00296_make_list_α:       mov              r11, 395
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
                        mov              qword ptr [rsp + 632], rdx;          jmp   n00297_assign_α
                        .size            n00296_make_list_bx, .-n00296_make_list_bx
                        .type            n00297_assign_bx, @function
n00297_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00297_assign_α:          mov              r11, 396
                        mov              rax, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx;          jmp   n00298_var_α
                        .size            n00297_assign_bx, .-n00297_assign_bx
                        .type            n00298_var_bx, @function
n00298_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00298_var_α:             mov              r11, 397
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 584], rax;          jmp   n00299_kw_icon_gen_α
                        .size            n00298_var_bx, .-n00298_var_bx
                        .type            n00299_kw_icon_gen_bx, @function
n00299_kw_icon_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00299_kw_icon_gen_α:     mov              r11, 398
                        mov              qword ptr [rsp + 608], 0
.Lkw_icon_gen_α_1015_1: mov              rdi, qword ptr [rip + .Lkw_icon_gen_α_1015_0]
                        mov              rsi, qword ptr [rsp + 608]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00300_lit_string_α
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        mov              rax, qword ptr [rsp + 608]
                        add              rax, 1
                        mov              qword ptr [rsp + 608], rax;          jmp   n00301_call_icon_α
n00299_kw_icon_gen_β:     mov              r11, 398;                            jmp   .Lkw_icon_gen_α_1015_1
.Lkw_icon_gen_α_1015_0: .quad            .Lkw_icon_gen_α_1015_0_s
.Lkw_icon_gen_α_1015_0_s:
                        .string          "&storage"
                        .size            n00299_kw_icon_gen_bx, .-n00299_kw_icon_gen_bx
                        .type            n00301_call_icon_bx, @function
n00301_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00301_call_icon_α:       mov              r11, 399
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 552], rax
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 536], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1017: .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1017]
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
                        cmp              al, 104;                             je    n00299_kw_icon_gen_β
                                                                              jmp   n00299_kw_icon_gen_β
n00301_call_icon_β:       mov              r11, 399;                            jmp   n00299_kw_icon_gen_β
                        .size            n00301_call_icon_bx, .-n00301_call_icon_bx
                        .type            n00300_lit_string_bx, @function
n00300_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00300_lit_string_α:      mov              r11, 400
                        mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 7
                        mov              rax, qword ptr [rip + .Llit_string_α_1018_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n00302_call_icon_α
.Llit_string_α_1018_0:  .quad            .Llit_string_α_1018_0_s
.Llit_string_α_1018_0_s:
                        .string          "storage"
                        .size            n00300_lit_string_bx, .-n00300_lit_string_bx
                        .type            n00302_call_icon_bx, @function
n00302_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00302_call_icon_α:       mov              r11, 401
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 456], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1020: .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1020]
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
                        cmp              al, 104;                             je    n00303_lit_integer_α
                                                                              jmp   n00303_lit_integer_α
n00302_call_icon_β:       mov              r11, 401;                            jmp   n00303_lit_integer_α
                        .size            n00302_call_icon_bx, .-n00302_call_icon_bx
                        .type            n00303_lit_integer_bx, @function
n00303_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00303_lit_integer_α:     mov              r11, 402
                        mov              qword ptr [rsp + 64], 3              # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1021_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n00304_var_α
.Llit_integer_α_1021_0: .quad            1
                        .size            n00303_lit_integer_bx, .-n00303_lit_integer_bx
                        .type            n00304_var_bx, @function
n00304_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00304_var_α:             mov              r11, 403
                        mov              rax, qword ptr [r9 + 272]            # Storage____STATIC__labels
                        mov              rdx, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 96], rax            # result
                        mov              qword ptr [rsp + 104], rdx;          jmp   n00305_unop_α
                        .size            n00304_var_bx, .-n00304_var_bx
                        .type            n00305_unop_bx, @function
n00305_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00305_unop_α:            mov              r11, 404
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
                        mov              qword ptr [rsp + 88], rdx;           jmp   n00306_to_α
                        .size            n00305_unop_bx, .-n00305_unop_bx
                        .type            n00306_to_bx, @function
n00306_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00306_to_α:              mov              r11, 405
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
.Lto_α_1025_0:          mov              rax, qword ptr [rsp + 48]
                        mov              rcx, qword ptr [rsp + 88]
                        cmp              rax, rcx;                            jg    n00307_return_α
                        mov              qword ptr [rsp + 32], 3
                        mov              qword ptr [rsp + 40], rax;           jmp   n00308_assign_α
n00306_to_β:              mov              r11, 405
                        inc              qword ptr [rsp + 48];                jmp   .Lto_α_1025_0
                        .size            n00306_to_bx, .-n00306_to_bx
                        .type            n00308_assign_bx, @function
n00308_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00308_assign_α:          mov              r11, 406
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx;          jmp   n00309_bound_α
                        .size            n00308_assign_bx, .-n00308_assign_bx
                        .type            n00309_bound_bx, @function
n00309_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00309_bound_α:           mov              r11, 407
                        mov              qword ptr [rsp + 112], rsp;          jmp   n00310_var_ref_α
                        .size            n00309_bound_bx, .-n00309_bound_bx
                        .type            n00310_var_ref_bx, @function
n00310_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00310_var_ref_α:         mov              r11, 408
                        mov              rax, 4294967336
                        mov              rdx, 1879052560                      # Storage____STATIC__labels
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n00311_var_α
                        .size            n00310_var_ref_bx, .-n00310_var_ref_bx
                        .type            n00311_var_bx, @function
n00311_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00311_var_α:             mov              r11, 409
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 248], rax;          jmp   n00312_subscript_α
                        .size            n00311_var_bx, .-n00311_var_bx
                        .type            n00312_subscript_bx, @function
n00312_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00312_subscript_α:       mov              r11, 410
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
                        cmp              al, 104;                             je    n00313_unmark_α
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n00314_deref_α
                        .size            n00312_subscript_bx, .-n00312_subscript_bx
                        .type            n00314_deref_bx, @function
n00314_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00314_deref_α:           mov              r11, 411
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
                        cmp              al, 104;                             je    n00313_unmark_α
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n00315_var_ref_α
                        .size            n00314_deref_bx, .-n00314_deref_bx
                        .type            n00315_var_ref_bx, @function
n00315_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00315_var_ref_α:         mov              r11, 412
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 928]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n00316_var_α
                        .size            n00315_var_ref_bx, .-n00315_var_ref_bx
                        .type            n00316_var_bx, @function
n00316_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00316_var_α:             mov              r11, 413
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 376], rax;          jmp   n00317_subscript_α
                        .size            n00316_var_bx, .-n00316_var_bx
                        .type            n00317_subscript_bx, @function
n00317_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00317_subscript_α:       mov              r11, 414
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
                        cmp              al, 104;                             je    n00313_unmark_α
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n00318_deref_α
                        .size            n00317_subscript_bx, .-n00317_subscript_bx
                        .type            n00318_deref_bx, @function
n00318_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00318_deref_α:           mov              r11, 415
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
                        cmp              al, 104;                             je    n00313_unmark_α
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n00319_lit_integer_α
                        .size            n00318_deref_bx, .-n00318_deref_bx
                        .type            n00319_lit_integer_bx, @function
n00319_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00319_lit_integer_α:     mov              r11, 416
                        mov              qword ptr [rsp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1041_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n00320_call_icon_α
.Llit_integer_α_1041_0: .quad            8
                        .size            n00319_lit_integer_bx, .-n00319_lit_integer_bx
                        .type            n00320_call_icon_bx, @function
n00320_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00320_call_icon_α:       mov              r11, 417
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 312], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1043: .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1043]
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
                        cmp              al, 104;                             je    n00313_unmark_α
                                                                              jmp   n00321_call_icon_α
n00320_call_icon_β:       mov              r11, 417;                            jmp   n00313_unmark_α
                        .size            n00320_call_icon_bx, .-n00320_call_icon_bx
                        .type            n00321_call_icon_bx, @function
n00321_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00321_call_icon_α:       mov              r11, 418
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 184], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1045: .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1045]
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
                        cmp              al, 104;                             je    n00313_unmark_α
                                                                              jmp   n00313_unmark_α
n00321_call_icon_β:       mov              r11, 418;                            jmp   n00313_unmark_α
                        .size            n00321_call_icon_bx, .-n00321_call_icon_bx
                        .type            n00313_unmark_bx, @function
n00313_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00313_unmark_α:          mov              r11, 419
                        mov              rsp, qword ptr [rsp + 112];          jmp   n00306_to_β
                        .size            n00313_unmark_bx, .-n00313_unmark_bx
                        .type            n00307_return_bx, @function
n00307_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00307_return_α:          mov              r11, 420
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8];            jmp   Storage___γ
                        .size            n00307_return_bx, .-n00307_return_bx
                        .type            n00295_var_ref_bx, @function
n00295_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00295_var_ref_α:         mov              r11, 421
                        mov              rax, 4294967336
                        mov              rdx, 1879052576                      # Storage____INITFLAG__0
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx;          jmp   n00322_nulltest_var_α
n00295_var_ref_β:         mov              r11, 421;                            jmp   .Ldisjunction_ω_972_af
                        .size            n00295_var_ref_bx, .-n00295_var_ref_bx
                        .type            n00322_nulltest_var_bx, @function
n00322_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00322_nulltest_var_α:   mov              r11, 422
                        mov              eax, dword ptr [rsp + 848]
                        cmp              al, 104;                             je    .Ldisjunction_ω_972_af
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_972_af
                        cmp              eax, 0;                              jne   .Ldisjunction_ω_972_af
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 872], rax;          jmp   n00323_lit_integer_α
                        .size            n00322_nulltest_var_bx, .-n00322_nulltest_var_bx
                        .type            n00323_lit_integer_bx, @function
n00323_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00323_lit_integer_α:    mov              r11, 423
                        mov              qword ptr [rsp + 896], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1052_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n00324_assign_var_α
.Llit_integer_α_1052_0: .quad            1
                        .size            n00323_lit_integer_bx, .-n00323_lit_integer_bx
                        .type            n00324_assign_var_bx, @function
n00324_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00324_assign_var_α:     mov              r11, 424
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_972_af
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n00325_lit_string_α
                        .size            n00324_assign_var_bx, .-n00324_assign_var_bx
                        .type            n00325_lit_string_bx, @function
n00325_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00325_lit_string_α:     mov              r11, 425
                        mov              qword ptr [rsp + 752], 2             # result
                        mov              dword ptr [rsp + 756], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_1054_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n00326_lit_string_α
.Llit_string_α_1054_0:  .quad            .Llit_string_α_1054_0_s
.Llit_string_α_1054_0_s:
                        .string          "static"
                        .size            n00325_lit_string_bx, .-n00325_lit_string_bx
                        .type            n00326_lit_string_bx, @function
n00326_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00326_lit_string_α:     mov              r11, 426
                        mov              qword ptr [rsp + 784], 2             # result
                        mov              dword ptr [rsp + 788], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_1055_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n00327_lit_string_α
.Llit_string_α_1055_0:  .quad            .Llit_string_α_1055_0_s
.Llit_string_α_1055_0_s:
                        .string          "string"
                        .size            n00326_lit_string_bx, .-n00326_lit_string_bx
                        .type            n00327_lit_string_bx, @function
n00327_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00327_lit_string_α:     mov              r11, 427
                        mov              qword ptr [rsp + 816], 2             # result
                        mov              dword ptr [rsp + 820], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_1056_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n00328_make_list_α
.Llit_string_α_1056_0:  .quad            .Llit_string_α_1056_0_s
.Llit_string_α_1056_0_s:
                        .string          "block"
                        .size            n00327_lit_string_bx, .-n00327_lit_string_bx
                        .type            n00328_make_list_bx, @function
n00328_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00328_make_list_α:      mov              r11, 428
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
                        mov              qword ptr [rsp + 696], rdx;          jmp   n00329_assign_α
                        .size            n00328_make_list_bx, .-n00328_make_list_bx
                        .type            n00329_assign_bx, @function
n00329_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00329_assign_α:         mov              r11, 429
                        mov              rax, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
                        mov              qword ptr [r9 + 272], rax            # Storage____STATIC__labels
                        mov              qword ptr [r9 + 280], rdx
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   .Ldisjunction_γ_972_as
n00329_assign_β:         mov              r11, 429;                            jmp   n00296_make_list_α
                        .size            n00329_assign_bx, .-n00329_assign_bx
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
                        push             rax
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rax
                        add              rsp, 1040;                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
Storage___ω:
                        push             rax
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rax
                        add              rsp, 1040;                           jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
Storage___dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .LStorage___α_1060_3]
                        push             rcx
                        lea              rcx, [rip + .LStorage___α_1060_2]
                        push             rcx;                                 jmp   FN__Storage__
.LStorage___α_1060_2:   add              rsp, 24
                        pop              r12;                                 jmp   r12
.LStorage___α_1060_3:   add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__Time__:
                        sub              rsp, 320
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
Time___α_body:
                        .type            n00330_disjunction_bx, @function
n00330_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00330_disjunction_α:    mov              r11, 430
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              dword ptr [rsp + 128], 0;            jmp   n00331_var_ref_α
.Ldisjunction_γ_1061_as:
                        mov              r11, 430
                        mov              eax, dword ptr [rsp + 128]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_1075_0
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 120], rax;          jmp   n00332_kw_icon_α
.Ldisjunction_α_1075_0:                                                       jmp   n00332_kw_icon_α
n00330_disjunction_β:    mov              r11, 430
                        mov              eax, dword ptr [rsp + 128];          jmp   n00332_kw_icon_α
.Ldisjunction_γ_1061_af:
                        mov              r11, 430
.Ldisjunction_ω_1061_af:
                        mov              r11, 430
                        add              dword ptr [rsp + 128], 1
                        mov              eax, dword ptr [rsp + 128];          jmp   n00332_kw_icon_α
                        .size            n00330_disjunction_bx, .-n00330_disjunction_bx
                        .type            n00332_kw_icon_bx, @function
n00332_kw_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00332_kw_icon_α:        mov              r11, 431
                        mov              rdi, qword ptr [rip + .Lkw_icon_α_1076_0]
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
                        mov              qword ptr [rsp + 72], rdx;           jmp   n00333_var_α
n00332_kw_icon_β:        mov              r11, 431;                            jmp   Time___ω
.Lkw_icon_α_1076_0:     .quad            .Lkw_icon_α_1076_0_s
.Lkw_icon_α_1076_0_s:   .string          "&time"
                        .size            n00332_kw_icon_bx, .-n00332_kw_icon_bx
                        .type            n00333_var_bx, @function
n00333_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00333_var_α:            mov              r11, 432
                        mov              rax, qword ptr [r9 + 304]            # Time____STATIC__lasttime
                        mov              rdx, qword ptr [r9 + 312]
                        mov              qword ptr [rsp + 96], rax            # result
                        mov              qword ptr [rsp + 104], rdx;          jmp   n00334_coerce_numeric_α
                        .size            n00333_var_bx, .-n00333_var_bx
                        .type            n00334_coerce_numeric_bx, @function
n00334_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00334_coerce_numeric_α: mov              r11, 433
                        mov              eax, dword ptr [rsp + 64]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_1079_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_1079_0
                        mov              eax, dword ptr [rsp + 96]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_1079_0
.Lcoerce_numeric_α_1079_1:
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 56], rax;           jmp   n00335_coerce_numeric_α
.Lcoerce_numeric_α_1079_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00335_coerce_numeric_α
                        .size            n00334_coerce_numeric_bx, .-n00334_coerce_numeric_bx
                        .type            n00335_coerce_numeric_bx, @function
n00335_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00335_coerce_numeric_α: mov              r11, 434
                        mov              eax, dword ptr [rsp + 96]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_1081_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_1081_0
                        mov              eax, dword ptr [rsp + 64]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_1081_0
.Lcoerce_numeric_α_1081_1:
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 40], rax;           jmp   n00336_binop_α
.Lcoerce_numeric_α_1081_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00336_binop_α
                        .size            n00335_coerce_numeric_bx, .-n00335_coerce_numeric_bx
                        .type            n00336_binop_bx, @function
n00336_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00336_binop_α:          mov              r11, 435
                        mov              eax, dword ptr [rsp + 48]
                        mov              ecx, dword ptr [rsp + 32]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_1082_2
                        mov              rax, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 40]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 16], 3
                        mov              qword ptr [rsp + 24], rax;           jmp   .Lbinop_α_1082_7
.Lbinop_α_1082_2:       and              edx, 1;                              jz    .Lbinop_α_1082_0
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdi, qword ptr [rsp + 40]
                        cmp              al, 5;                               je    .Lbinop_α_1082_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_1082_4
.Lbinop_α_1082_3:       movq             xmm0, rsi
.Lbinop_α_1082_4:       cmp              cl, 5;                               je    .Lbinop_α_1082_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_1082_6
.Lbinop_α_1082_5:       movq             xmm1, rdi
.Lbinop_α_1082_6:       subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 16], 5
                        mov              qword ptr [rsp + 24], rax
.Lbinop_α_1082_7:                                                             jmp   n00337_return_α
.Lbinop_α_1082_0:       mov              rdi, qword ptr [rsp + 48]
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
                        mov              qword ptr [rsp + 24], rdx;           jmp   n00337_return_α
                        .size            n00336_binop_bx, .-n00336_binop_bx
                        .type            n00337_return_bx, @function
n00337_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00337_return_α:         mov              r11, 436
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   Time___γ
                        .size            n00337_return_bx, .-n00337_return_bx
                        .type            n00331_var_ref_bx, @function
n00331_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00331_var_ref_α:        mov              r11, 437
                        mov              rax, 4294967336
                        mov              rdx, 1879052608                      # Time____INITFLAG__0
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n00338_nulltest_var_α
n00331_var_ref_β:        mov              r11, 437;                            jmp   .Ldisjunction_ω_1061_af
                        .size            n00331_var_ref_bx, .-n00331_var_ref_bx
                        .type            n00338_nulltest_var_bx, @function
n00338_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00338_nulltest_var_α:   mov              r11, 438
                        mov              eax, dword ptr [rsp + 192]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1061_af
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_1061_af
                        cmp              eax, 0;                              jne   .Ldisjunction_ω_1061_af
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 216], rax;          jmp   n00339_lit_integer_α
                        .size            n00338_nulltest_var_bx, .-n00338_nulltest_var_bx
                        .type            n00339_lit_integer_bx, @function
n00339_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00339_lit_integer_α:    mov              r11, 439
                        mov              qword ptr [rsp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1087_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n00340_assign_var_α
.Llit_integer_α_1087_0: .quad            1
                        .size            n00339_lit_integer_bx, .-n00339_lit_integer_bx
                        .type            n00340_assign_var_bx, @function
n00340_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00340_assign_var_α:     mov              r11, 440
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_1061_af
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n00341_kw_icon_α
                        .size            n00340_assign_var_bx, .-n00340_assign_var_bx
                        .type            n00341_kw_icon_bx, @function
n00341_kw_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00341_kw_icon_α:        mov              r11, 441
                        mov              rdi, qword ptr [rip + .Lkw_icon_α_1089_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00332_kw_icon_α
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx;          jmp   n00342_assign_α
n00341_kw_icon_β:        mov              r11, 441;                            jmp   n00332_kw_icon_α
.Lkw_icon_α_1089_0:     .quad            .Lkw_icon_α_1089_0_s
.Lkw_icon_α_1089_0_s:   .string          "&time"
                        .size            n00341_kw_icon_bx, .-n00341_kw_icon_bx
                        .type            n00342_assign_bx, @function
n00342_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00342_assign_α:         mov              r11, 442
                        mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              qword ptr [r9 + 304], rax            # Time____STATIC__lasttime
                        mov              qword ptr [r9 + 312], rdx
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx;          jmp   .Ldisjunction_γ_1061_as
n00342_assign_β:         mov              r11, 442;                            jmp   n00332_kw_icon_α
                        .size            n00342_assign_bx, .-n00342_assign_bx
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
                        push             rax
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rax
                        add              rsp, 320;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
Time___ω:
                        push             rax
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rax
                        add              rsp, 320;                            jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
Time___dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .LTime___α_1091_3]
                        push             rcx
                        lea              rcx, [rip + .LTime___α_1091_2]
                        push             rcx;                                 jmp   FN__Time__
.LTime___α_1091_2:      add              rsp, 24
                        pop              r12;                                 jmp   r12
.LTime___α_1091_3:      add              rsp, 24
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
                        .type            n00343_call_proc_staged_bx, @function
n00343_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00343_call_proc_staged_α:
                        mov              r11, 443
                        mov              edi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det0@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_1121_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_1121_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1121_3]
                        push             rcx;                                 jmp   rax
.Lcall_proc_staged_α_1121_3:
                        add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_1121_2
.Lcall_proc_staged_α_1121_4:
                        add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_1121_2
.Lcall_proc_staged_α_1121_1:
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_1121_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1121_29
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
.Lcall_proc_staged_α_1121_29:
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                        cmp              al, 104;                             je    n00344_var_α
                                                                              jmp   n00344_var_α
n00343_call_proc_staged_β:
                        mov              r11, 443;                            jmp   n00344_var_α
.Lcall_proc_staged_β_1121_0:
                        .quad            .Lcall_proc_staged_β_1121_0_s
.Lcall_proc_staged_β_1121_0_s:
                        .string          "Init__"
                        .size            n00343_call_proc_staged_bx, .-n00343_call_proc_staged_bx
                        .type            n00344_var_bx, @function
n00344_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00344_var_α:            mov              r11, 444
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 696], rax;          jmp   n00345_lit_string_α
                        .size            n00344_var_bx, .-n00344_var_bx
                        .type            n00345_lit_string_bx, @function
n00345_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00345_lit_string_α:     mov              r11, 445
                        mov              qword ptr [rsp + 704], 2             # result
                        mov              dword ptr [rsp + 708], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_1124_0]
                        mov              qword ptr [rsp + 712], rax;          jmp   n00346_call_proc_staged_α
.Llit_string_α_1124_0:  .quad            .Llit_string_α_1124_0_s
.Llit_string_α_1124_0_s:
                        .string          "n+"
                        .size            n00345_lit_string_bx, .-n00345_lit_string_bx
                        .type            n00346_call_proc_staged_bx, @function
n00346_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00346_call_proc_staged_α:
                        mov              r11, 446
                        lea              rsi, [rsp + 688]
                        lea              rdx, [rsp + 704]
                        call             options_dcα;                         jmp   .Lcall_proc_staged_α_1126_2
.Lcall_proc_staged_α_1126_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1126_29
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
.Lcall_proc_staged_α_1126_29:
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        cmp              al, 104;                             je    n00347_disjunction_α
                                                                              jmp   n00348_assign_α
n00346_call_proc_staged_β:
                        mov              r11, 446;                            jmp   n00347_disjunction_α
.Lcall_proc_staged_β_1126_0:
                        .quad            .Lcall_proc_staged_β_1126_0_s
.Lcall_proc_staged_β_1126_0_s:
                        .string          "options"
                        .size            n00346_call_proc_staged_bx, .-n00346_call_proc_staged_bx
                        .type            n00348_assign_bx, @function
n00348_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00348_assign_α:         mov              r11, 447
                        mov              rax, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx;          jmp   n00347_disjunction_α
                        .size            n00348_assign_bx, .-n00348_assign_bx
                        .type            n00347_disjunction_bx, @function
n00347_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00347_disjunction_α:    mov              r11, 448
                        mov              qword ptr [rsp + 480], 0
                        mov              qword ptr [rsp + 488], 0
                        mov              dword ptr [rsp + 496], 0;            jmp   n00349_var_ref_α
.Ldisjunction_γ_1097_as:
                        mov              r11, 448
                        mov              eax, dword ptr [rsp + 496]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_1129_0
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 488], rax;          jmp   n00350_assign_α
.Ldisjunction_α_1129_0: cmp              eax, 1;                              jne   .Ldisjunction_α_1129_1
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 488], rax;          jmp   n00350_assign_α
.Ldisjunction_α_1129_1:                                                       jmp   n00350_assign_α
n00347_disjunction_β:    mov              r11, 448
                        mov              eax, dword ptr [rsp + 496]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_1097_af
                                                                              jmp   .Ldisjunction_ω_1097_af
.Ldisjunction_γ_1097_af:
                        mov              r11, 448
.Ldisjunction_ω_1097_af:
                        mov              r11, 448
                        add              dword ptr [rsp + 496], 1
                        mov              eax, dword ptr [rsp + 496]
                        cmp              eax, 1;                              je    n00351_lit_integer_α
                                                                              jmp   n00352_disjunction_α
                        .size            n00347_disjunction_bx, .-n00347_disjunction_bx
                        .type            n00350_assign_bx, @function
n00350_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00350_assign_α:         mov              r11, 449
                        mov              rax, qword ptr [rsp + 480]
                        mov              rdx, qword ptr [rsp + 488]
                        mov              qword ptr [r9 + 0], rax              # n
                        mov              qword ptr [r9 + 8], rdx;             jmp   n00352_disjunction_α
                        .size            n00350_assign_bx, .-n00350_assign_bx
                        .type            n00352_disjunction_bx, @function
n00352_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00352_disjunction_α:    mov              r11, 450
                        mov              qword ptr [rsp + 320], 0
                        mov              qword ptr [rsp + 328], 0
                        mov              dword ptr [rsp + 336], 0;            jmp   n00353_var_α
.Ldisjunction_γ_1099_as:
                        mov              r11, 450
                        mov              eax, dword ptr [rsp + 336]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_1132_0
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 328], rax;          jmp   n00354_var_α
.Ldisjunction_α_1132_0:                                                       jmp   n00354_var_α
n00352_disjunction_β:    mov              r11, 450
                        mov              eax, dword ptr [rsp + 336];          jmp   n00354_var_α
.Ldisjunction_γ_1099_af:
                        mov              r11, 450
.Ldisjunction_ω_1099_af:
                        mov              r11, 450
                        add              dword ptr [rsp + 336], 1
                        mov              eax, dword ptr [rsp + 336];          jmp   n00354_var_α
                        .size            n00352_disjunction_bx, .-n00352_disjunction_bx
                        .type            n00353_var_bx, @function
n00353_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00353_var_α:            mov              r11, 451
                        mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 448], rax           # result
                        mov              qword ptr [rsp + 456], rdx;          jmp   n00355_lit_integer_α
n00353_var_β:            mov              r11, 451;                            jmp   .Ldisjunction_ω_1099_af
                        .size            n00353_var_bx, .-n00353_var_bx
                        .type            n00355_lit_integer_bx, @function
n00355_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00355_lit_integer_α:    mov              r11, 452
                        mov              qword ptr [rsp + 464], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1134_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n00356_binop_test_α
.Llit_integer_α_1134_0: .quad            0
                        .size            n00355_lit_integer_bx, .-n00355_lit_integer_bx
                        .type            n00356_binop_test_bx, @function
n00356_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00356_binop_test_α:     mov              r11, 453
                        mov              eax, dword ptr [rsp + 448]
                        cmp              al, 112;                             je    .Lbinop_test_α_1135_0
                        mov              eax, dword ptr [rsp + 464]
                        cmp              al, 112;                             je    .Lbinop_test_α_1135_0
                        mov              eax, dword ptr [rsp + 448]
                        cmp              al, 3;                               jne   .Lbinop_test_α_1135_2
                        mov              eax, dword ptr [rsp + 464]
                        cmp              al, 3;                               jne   .Lbinop_test_α_1135_2
.Lbinop_test_α_1135_1:  mov              rax, qword ptr [rsp + 456]
                        mov              rcx, qword ptr [rsp + 472]
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_1099_af
                        mov              rcx, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 432], rcx
                        mov              rcx, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 440], rcx;          jmp   n00357_lit_string_α
.Lbinop_test_α_1135_0:  mov              rdi, qword ptr [rsp + 448]
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
                        test             eax, eax;                            je    .Lbinop_test_α_1135_1
                        cmp              eax, 1;                              je    .Ldisjunction_ω_1099_af
                                                                              jmp   n00357_lit_string_α
.Lbinop_test_α_1135_2:  mov              rdi, qword ptr [rsp + 448]
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
                        test             eax, eax;                            jz    .Ldisjunction_ω_1099_af
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 440], rax;          jmp   n00357_lit_string_α
                        .size            n00356_binop_test_bx, .-n00356_binop_test_bx
                        .type            n00357_lit_string_bx, @function
n00357_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00357_lit_string_α:     mov              r11, 454
                        mov              qword ptr [rsp + 400], 2             # result
                        mov              dword ptr [rsp + 404], 37
                        mov              rax, qword ptr [rip + .Llit_string_α_1136_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n00358_call_icon_α
.Llit_string_α_1136_0:  .quad            .Llit_string_α_1136_0_s
.Llit_string_α_1136_0_s:
                        .string          "-n needs a positive numeric parameter"
                        .size            n00357_lit_string_bx, .-n00357_lit_string_bx
                        .type            n00358_call_icon_bx, @function
n00358_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00358_call_icon_α:      mov              r11, 455
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 376], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1138: .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1138]
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
                        cmp              al, 104;                             je    n00354_var_α
                                                                              jmp   .Ldisjunction_γ_1099_as
n00358_call_icon_β:      mov              r11, 455;                            jmp   n00354_var_α
                        .size            n00358_call_icon_bx, .-n00358_call_icon_bx
                        .type            n00354_var_bx, @function
n00354_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00354_var_α:            mov              r11, 456
                        mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 304], rax           # result
                        mov              qword ptr [rsp + 312], rdx;          jmp   n00359_call_icon_α
                        .size            n00354_var_bx, .-n00354_var_bx
                        .type            n00359_call_icon_bx, @function
n00359_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00359_call_icon_α:      mov              r11, 457
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 280], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1141: .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1141]
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
                        cmp              al, 104;                             je    n00360_var_α
                                                                              jmp   n00361_assign_α
n00359_call_icon_β:      mov              r11, 457;                            jmp   n00360_var_α
                        .size            n00359_call_icon_bx, .-n00359_call_icon_bx
                        .type            n00361_assign_bx, @function
n00361_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00361_assign_α:         mov              r11, 458
                        mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        mov              qword ptr [r9 + 16], rax             # solution
                        mov              qword ptr [r9 + 24], rdx;            jmp   n00360_var_α
                        .size            n00361_assign_bx, .-n00361_assign_bx
                        .type            n00360_var_bx, @function
n00360_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00360_var_α:            mov              r11, 459
                        mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 192], rax           # result
                        mov              qword ptr [rsp + 200], rdx;          jmp   n00362_lit_string_α
                        .size            n00360_var_bx, .-n00360_var_bx
                        .type            n00362_lit_string_bx, @function
n00362_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00362_lit_string_α:     mov              r11, 460
                        mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_1144_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n00363_call_icon_α
.Llit_string_α_1144_0:  .quad            .Llit_string_α_1144_0_s
.Llit_string_α_1144_0_s:
                        .string          "-Queens:"
                        .size            n00362_lit_string_bx, .-n00362_lit_string_bx
                        .type            n00363_call_icon_bx, @function
n00363_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00363_call_icon_α:      mov              r11, 461
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 168], rax
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 152], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1146: .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1146]
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
                        cmp              al, 104;                             je    n00364_lit_integer_α
                                                                              jmp   n00364_lit_integer_α
n00363_call_icon_β:      mov              r11, 461;                            jmp   n00364_lit_integer_α
                        .size            n00363_call_icon_bx, .-n00363_call_icon_bx
                        .type            n00364_lit_integer_bx, @function
n00364_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00364_lit_integer_α:    mov              r11, 462
                        mov              qword ptr [rsp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1147_0]
                        mov              qword ptr [rsp + 120], rax;          jmp   n00365_call_proc_staged_α
.Llit_integer_α_1147_0: .quad            1
                        .size            n00364_lit_integer_bx, .-n00364_lit_integer_bx
                        .type            n00365_call_proc_staged_bx, @function
n00365_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00365_call_proc_staged_α:
                        mov              r11, 463
                        lea              rsi, [rsp + 112]
                        call             q_dcα;                               jmp   .Lcall_proc_staged_α_1149_2
.Lcall_proc_staged_α_1149_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1149_29
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
.Lcall_proc_staged_α_1149_29:
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    n00366_call_proc_staged_α
                                                                              jmp   n00366_call_proc_staged_α
n00365_call_proc_staged_β:
                        mov              r11, 463;                            jmp   n00366_call_proc_staged_α
.Lcall_proc_staged_β_1149_0:
                        .quad            .Lcall_proc_staged_β_1149_0_s
.Lcall_proc_staged_β_1149_0_s:
                        .string          "q"
                        .size            n00365_call_proc_staged_bx, .-n00365_call_proc_staged_bx
                        .type            n00366_call_proc_staged_bx, @function
n00366_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00366_call_proc_staged_α:
                        mov              r11, 464
                        call             Term___dcα;                          jmp   .Lcall_proc_staged_α_1151_2
.Lcall_proc_staged_α_1151_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1151_29
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
.Lcall_proc_staged_α_1151_29:
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   main_ω
n00366_call_proc_staged_β:
                        mov              r11, 464;                            jmp   main_ω
.Lcall_proc_staged_β_1151_0:
                        .quad            .Lcall_proc_staged_β_1151_0_s
.Lcall_proc_staged_β_1151_0_s:
                        .string          "Term__"
                        .size            n00366_call_proc_staged_bx, .-n00366_call_proc_staged_bx
                        .type            n00351_lit_integer_bx, @function
n00351_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00351_lit_integer_α:    mov              r11, 465
                        mov              qword ptr [rsp + 608], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1152_0]
                        mov              qword ptr [rsp + 616], rax;          jmp   .Ldisjunction_γ_1097_as
n00351_lit_integer_β:    mov              r11, 465;                            jmp   .Ldisjunction_ω_1097_af
.Llit_integer_α_1152_0: .quad            6
                        .size            n00351_lit_integer_bx, .-n00351_lit_integer_bx
                        .type            n00349_var_ref_bx, @function
n00349_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00349_var_ref_α:        mov              r11, 466
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 768]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n00367_lit_string_α
n00349_var_ref_β:        mov              r11, 466;                            jmp   .Ldisjunction_ω_1097_af
                        .size            n00349_var_ref_bx, .-n00349_var_ref_bx
                        .type            n00367_lit_string_bx, @function
n00367_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00367_lit_string_α:     mov              r11, 467
                        mov              qword ptr [rsp + 544], 2             # result
                        mov              dword ptr [rsp + 548], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1155_0]
                        mov              qword ptr [rsp + 552], rax;          jmp   n00368_subscript_α
.Llit_string_α_1155_0:  .quad            .Llit_string_α_1155_0_s
.Llit_string_α_1155_0_s:
                        .string          "n"
                        .size            n00367_lit_string_bx, .-n00367_lit_string_bx
                        .type            n00368_subscript_bx, @function
n00368_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00368_subscript_α:      mov              r11, 468
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_1097_af
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx;          jmp   n00369_deref_α
                        .size            n00368_subscript_bx, .-n00368_subscript_bx
                        .type            n00369_deref_bx, @function
n00369_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00369_deref_α:          mov              r11, 469
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_1097_af
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx;          jmp   n00370_unop_test_α
                        .size            n00369_deref_bx, .-n00369_deref_bx
                        .type            n00370_unop_test_bx, @function
n00370_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00370_unop_test_α:      mov              r11, 470
                        mov              eax, dword ptr [rsp + 592]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1097_af
                        cmp              eax, 0;                              je    .Ldisjunction_ω_1097_af
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 520], rax;          jmp   .Ldisjunction_γ_1097_as
n00370_unop_test_β:      mov              r11, 470;                            jmp   .Ldisjunction_ω_1097_af
                        .size            n00370_unop_test_bx, .-n00370_unop_test_bx
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
                        .long            3040
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
